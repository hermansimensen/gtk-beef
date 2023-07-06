namespace Gtk;

using System;
using System.Interop;
using System.Collections;

extension GObject
{
	static List<void*> gClosureList = new .() ~ 
	{
		for(var c in gClosureList)
		{
			int closurePtr = (int) (void*)&c;
        	void* addr = (void*)(closurePtr -= 0x20);
			delete addr;
		}
		delete gClosureList;
	}
	
	public static int SignalConnect<T>(GObject.Object* instance, char8 *detailed_signal, T callback, GObject.ConnectFlags connectFlags) where T : Delegate
    {
        int32 after = (connectFlags & .After) != 0 ? 1 : 0;

        BeefCClosure<T>* c = (.) Closure.NewSimple(sizeof(BeefCClosure<T>), null);

        c.marshal = => MarshallFunct<T>;
        Closure.Ref(c);
        Closure.Sink(c);
        c.mCallbackPtr = (.) callback;
        c.mCallback = (.) c.mCallbackPtr;

        int closurePtr = (int) (void*)&c;
        void* addr = (void*)(closurePtr -= 0x20);
        Internal.MemCpy(addr, &c.marshal, sizeof(void*));

        gClosureList.Add(c);

        GObject.SignalConnectClosure(instance, detailed_signal, c, after);

        return 0;
    }

    public static void MarshallFunct<T>(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) where T : Delegate
    {
        T funcType;
        BeefCClosure<T>* cs = (BeefCClosure<T>*) closure;

        for(int i = 0; i < n_param_values; i++)
        {
            cs.SetArgument(i, param_values[i].data.v_pointer);
        }

        cs.InvokeFunction();
    }


    [CRepr, ClosureGen]
    public struct BeefCClosure<T> : Closure where T : Delegate
    {
        T funcType;
    }

	struct ClosureGen : Attribute, IComptimeTypeApply
	{
		[Comptime]
		public void ApplyToType(System.Type type)
		{
			System.Reflection.FieldInfo info = type.GetField("funcType");
			System.Type proto = info.FieldType;

			int argCount = 0;

			if (proto == null)
			{
				Compiler.EmitTypeBody(type, "public function void() mCallback;");
				Compiler.EmitTypeBody(type, "\npublic void* mCallbackPtr;");
				Compiler.EmitTypeBody(type, "\npublic void InvokeFunction(){}\n");
				Compiler.EmitTypeBody(type, "public void SetArgument(int arg, void* data) mut\n{}\n");
				return;
			}

			for (var pt in proto.GetMethods())
			{
				argCount = pt.ParamCount;
				for (int i = 0; i < pt.ParamCount; i++)
				{
					System.Type dt = pt.GetParamType(i);
					var dtype = scope String();
					dt.GetFullName(dtype);
					StringView name = pt.GetParamName(i);

					String outStr = scope .();
					outStr.AppendF("{} {}{} = (.)(void*)null;\n", dtype, "arg", i);
					Compiler.EmitTypeBody(type, outStr);
				}
				break;
			}

			for (var pt in proto.GetMethods())
			{
				System.Type ret = pt.ReturnType;
				String retStr = scope .();
				ret.GetFullName(retStr);
				String functionStr = scope .()..AppendF("public function {}(", retStr);
				Compiler.EmitTypeBody(type, functionStr);
				for (int i = 0; i < pt.ParamCount; i++)
				{
					System.Type dt = pt.GetParamType(i);
					var dtype = scope String();
					dt.GetFullName(dtype);
					StringView name = pt.GetParamName(i);

					String outStr = scope .();
					outStr.AppendF("{} {}", dtype, name);
					Compiler.EmitTypeBody(type, outStr);
					var str = (i == pt.ParamCount - 1) ? ")" : ", ";
					Compiler.EmitTypeBody(type, str);
				}
				break;
			}
			Compiler.EmitTypeBody(type, " mCallback;");
			Compiler.EmitTypeBody(type, "\npublic void* mCallbackPtr;");

			Compiler.EmitTypeBody(type,"public void InvokeFunction()\n{\n\tmCallback(");
			for(var pt in proto.GetMethods())
			{
				for (int i = 0; i < pt.ParamCount; i++)
				{
					String outStr = scope .();
					outStr.AppendF("{}{}", "arg", i);
					Compiler.EmitTypeBody(type, outStr);
					var str = (i == pt.ParamCount - 1) ? ")" : ", ";
					Compiler.EmitTypeBody(type, str);
				}
				break;
			}
			Compiler.EmitTypeBody(type, ";\n}\n");


			Compiler.EmitTypeBody(type, "public void SetArgument(int arg, void* data) mut\n{\n");
			Compiler.EmitTypeBody(type, "\tswitch(arg) {\n");
			for(int arg = 0; arg < argCount; arg++)
			{
				String outStr = scope .();
				outStr.AppendF("\tcase {}:", arg);
				outStr.AppendF("\n\t\t{}{} = (.)data;\n", "arg", arg);
				Compiler.EmitTypeBody(type, outStr);
			}
			Compiler.EmitTypeBody(type, "\t}\n");
			Compiler.EmitTypeBody(type, "}\n");
		}
	}
}