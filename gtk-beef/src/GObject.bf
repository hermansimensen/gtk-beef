namespace Gtk;

using System;
using System.Interop;

class GObject
{
	public typealias SignalCMarshaller = ClosureMarshal;
	public typealias SignalCVaMarshaller = VaClosureMarshal;
	public typealias Type = c_ulong;

	const c_int PARAM_MASK = (.)255;
	const c_int PARAM_STATIC_STRINGS = (.)224;
	const c_int PARAM_USER_SHIFT = (.)8;
	const c_int SIGNAL_FLAGS_MASK = (.)511;
	const c_int SIGNAL_MATCH_MASK = (.)63;
	const GLib.Type TYPE_FLAG_RESERVED_ID_BIT = (.)1;
	const c_int TYPE_FUNDAMENTAL_MAX = (.)255;
	const c_int TYPE_FUNDAMENTAL_SHIFT = (.)2;
	const c_int TYPE_RESERVED_BSE_FIRST = (.)32;
	const c_int TYPE_RESERVED_BSE_LAST = (.)48;
	const c_int TYPE_RESERVED_GLIB_FIRST = (.)22;
	const c_int TYPE_RESERVED_GLIB_LAST = (.)31;
	const c_int TYPE_RESERVED_USER_FIRST = (.)49;
	const c_int VALUE_INTERNED_STRING = (.)268435456;
	const c_int VALUE_NOCOPY_CONTENTS = (.)134217728;
	[CRepr]
	public struct Binding : Object
	{
		[LinkName("g_binding_dup_source")]
		public static extern Object* DupSource(Binding* binding);
		[LinkName("g_binding_dup_target")]
		public static extern Object* DupTarget(Binding* binding);
		[LinkName("g_binding_get_flags")]
		public static extern BindingFlags GetFlags(Binding* binding);
		[LinkName("g_binding_get_source")]
		public static extern Object* GetSource(Binding* binding);
		[LinkName("g_binding_get_source_property")]
		public static extern char8* GetSourceProperty(Binding* binding);
		[LinkName("g_binding_get_target")]
		public static extern Object* GetTarget(Binding* binding);
		[LinkName("g_binding_get_target_property")]
		public static extern char8* GetTargetProperty(Binding* binding);
		[LinkName("g_binding_unbind")]
		public static extern void Unbind(Binding* binding);
	}
	[CRepr]
	public struct BindingGroup : Object
	{
		[LinkName("g_binding_group_new")]
		public static extern BindingGroup* New();
		[LinkName("g_binding_group_bind")]
		public static extern void Bind(BindingGroup* self, char8* source_property, Object* target, char8* target_property, BindingFlags flags);
		[LinkName("g_binding_group_bind_full")]
		public static extern void BindFull(BindingGroup* self, char8* source_property, Object* target, char8* target_property, BindingFlags flags, BindingTransformFunc transform_to, BindingTransformFunc transform_from, void* user_data, GLib.DestroyNotify user_data_destroy);
		[LinkName("g_binding_group_bind_with_closures")]
		public static extern void BindWithClosures(BindingGroup* self, char8* source_property, Object* target, char8* target_property, BindingFlags flags, Closure* transform_to, Closure* transform_from);
		[LinkName("g_binding_group_dup_source")]
		public static extern Object* DupSource(BindingGroup* self);
		[LinkName("g_binding_group_set_source")]
		public static extern void SetSource(BindingGroup* self, Object* source);
	}
	[CRepr]
	public struct InitiallyUnowned : Object
	{
	}
	[CRepr]
	public struct Object
	{
		[LinkName("g_object_newv")]
		public static extern Object* Newv(GLib.Type object_type, c_uint n_parameters, Parameter* parameters);
		[LinkName("g_object_bind_property")]
		public static extern Binding* BindProperty(Object* source, char8* source_property, Object* target, char8* target_property, BindingFlags flags);
		[LinkName("g_object_bind_property_full")]
		public static extern Binding* BindPropertyFull(Object* source, char8* source_property, Object* target, char8* target_property, BindingFlags flags, BindingTransformFunc transform_to, BindingTransformFunc transform_from, void* user_data, GLib.DestroyNotify notify);
		[LinkName("g_object_bind_property_with_closures")]
		public static extern Binding* BindPropertyWithClosures(Object* source, char8* source_property, Object* target, char8* target_property, BindingFlags flags, Closure* transform_to, Closure* transform_from);
		[LinkName("g_object_force_floating")]
		public static extern void ForceFloating(Object* object);
		[LinkName("g_object_freeze_notify")]
		public static extern void FreezeNotify(Object* object);
		[LinkName("g_object_get_data")]
		public static extern void* GetData(Object* object, char8* key);
		[LinkName("g_object_get_property")]
		public static extern void GetProperty(Object* object, char8* property_name, Value* value);
		[LinkName("g_object_get_qdata")]
		public static extern void* GetQdata(Object* object, GLib.Quark quark);
		[LinkName("g_object_getv")]
		public static extern void Getv(Object* object, c_uint n_properties, char8** names, Value* values);
		[LinkName("g_object_is_floating")]
		public static extern c_int IsFloating(Object* object);
		[LinkName("g_object_notify")]
		public static extern void Notify(Object* object, char8* property_name);
		[LinkName("g_object_notify_by_pspec")]
		public static extern void NotifyByPspec(Object* object, ParamSpec* pspec);
		[LinkName("g_object_ref")]
		public static extern Object* Ref(Object* object);
		[LinkName("g_object_ref_sink")]
		public static extern Object* RefSink(Object* object);
		[LinkName("g_object_run_dispose")]
		public static extern void RunDispose(Object* object);
		[LinkName("g_object_set_data")]
		public static extern void SetData(Object* object, char8* key, void* data);
		[LinkName("g_object_set_property")]
		public static extern void SetProperty(Object* object, char8* property_name, Value* value);
		[LinkName("g_object_steal_data")]
		public static extern void* StealData(Object* object, char8* key);
		[LinkName("g_object_steal_qdata")]
		public static extern void* StealQdata(Object* object, GLib.Quark quark);
		[LinkName("g_object_thaw_notify")]
		public static extern void ThawNotify(Object* object);
		[LinkName("g_object_unref")]
		public static extern void Unref(Object* object);
		[LinkName("g_object_watch_closure")]
		public static extern void WatchClosure(Object* object, Closure* closure);
		public function void NotifyFunc(Object* self, ParamSpec pspec, void* user_data);
	}
	[CRepr]
	public struct ParamSpec
	{
		[LinkName("g_param_spec_get_blurb")]
		public static extern char8* GetBlurb(ParamSpec* pspec);
		[LinkName("g_param_spec_get_default_value")]
		public static extern Value* GetDefaultValue(ParamSpec* pspec);
		[LinkName("g_param_spec_get_name")]
		public static extern char8* GetName(ParamSpec* pspec);
		[LinkName("g_param_spec_get_name_quark")]
		public static extern GLib.Quark GetNameQuark(ParamSpec* pspec);
		[LinkName("g_param_spec_get_nick")]
		public static extern char8* GetNick(ParamSpec* pspec);
		[LinkName("g_param_spec_get_qdata")]
		public static extern void* GetQdata(ParamSpec* pspec, GLib.Quark quark);
		[LinkName("g_param_spec_get_redirect_target")]
		public static extern ParamSpec* GetRedirectTarget(ParamSpec* pspec);
		[LinkName("g_param_spec_set_qdata")]
		public static extern void SetQdata(ParamSpec* pspec, GLib.Quark quark, void* data);
		[LinkName("g_param_spec_sink")]
		public static extern void Sink(ParamSpec* pspec);
		[LinkName("g_param_spec_steal_qdata")]
		public static extern void* StealQdata(ParamSpec* pspec, GLib.Quark quark);
	}
	[CRepr]
	public struct ParamSpecBoolean : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecBoxed : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecChar : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecDouble : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecEnum : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecFlags : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecFloat : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecGType : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecInt : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecInt64 : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecLong : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecObject : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecOverride : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecParam : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecPointer : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecString : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecUChar : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecUInt : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecUInt64 : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecULong : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecUnichar : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecValueArray : ParamSpec
	{
	}
	[CRepr]
	public struct ParamSpecVariant : ParamSpec
	{
	}
	[CRepr]
	public struct SignalGroup : Object
	{
		[LinkName("g_signal_group_new")]
		public static extern SignalGroup* New(GLib.Type target_type);
		[LinkName("g_signal_group_block")]
		public static extern void Block(SignalGroup* self);
		[LinkName("g_signal_group_connect_closure")]
		public static extern void ConnectClosure(SignalGroup* self, char8* detailed_signal, Closure* closure, c_int after);
		[LinkName("g_signal_group_connect_data")]
		public static extern void ConnectData(SignalGroup* self, char8* detailed_signal, Callback c_handler, void* data, ClosureNotify notify, ConnectFlags flags);
		[LinkName("g_signal_group_connect_swapped")]
		public static extern void ConnectSwapped(SignalGroup* self, char8* detailed_signal, Callback c_handler, void* data);
		[LinkName("g_signal_group_dup_target")]
		public static extern Object* DupTarget(SignalGroup* self);
		[LinkName("g_signal_group_set_target")]
		public static extern void SetTarget(SignalGroup* self, Object* target);
		[LinkName("g_signal_group_unblock")]
		public static extern void Unblock(SignalGroup* self);
		public function void BindFunc(SignalGroup* self, Object instance, void* user_data);
		public function void UnbindFunc(SignalGroup* self, void* user_data);
	}
	[CRepr]
	public struct TypeModule : Object
	{
		[LinkName("g_type_module_add_interface")]
		public static extern void AddInterface(TypeModule* module, GLib.Type instance_type, GLib.Type interface_type, InterfaceInfo* interface_info);
		[LinkName("g_type_module_register_enum")]
		public static extern GLib.Type RegisterEnum(TypeModule* module, char8* name, EnumValue* const_static_values);
		[LinkName("g_type_module_register_flags")]
		public static extern GLib.Type RegisterFlags(TypeModule* module, char8* name, FlagsValue* const_static_values);
		[LinkName("g_type_module_register_type")]
		public static extern GLib.Type RegisterType(TypeModule* module, GLib.Type parent_type, char8* type_name, TypeInfo* type_info, TypeFlags flags);
		[LinkName("g_type_module_set_name")]
		public static extern void SetName(TypeModule* module, char8* name);
		[LinkName("g_type_module_unuse")]
		public static extern void Unuse(TypeModule* module);
		[LinkName("g_type_module_use")]
		public static extern c_int Use(TypeModule* module);
	}
		[LinkName("g_boxed_copy")]
		public static extern void* BoxedCopy(GLib.Type boxed_type, void* src_boxed);
		[LinkName("g_boxed_free")]
		public static extern void BoxedFree(GLib.Type boxed_type, void* boxed);
		[LinkName("g_cclosure_marshal_BOOLEAN__BOXED_BOXED")]
		public static extern void CclosureMarshalBOOLEANBOXEDBOXED(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_BOOLEAN__FLAGS")]
		public static extern void CclosureMarshalBOOLEANFLAGS(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_STRING__OBJECT_POINTER")]
		public static extern void CclosureMarshalSTRINGOBJECTPOINTER(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__BOOLEAN")]
		public static extern void CclosureMarshalVOIDBOOLEAN(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__BOXED")]
		public static extern void CclosureMarshalVOIDBOXED(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__CHAR")]
		public static extern void CclosureMarshalVOIDCHAR(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__DOUBLE")]
		public static extern void CclosureMarshalVOIDDOUBLE(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__ENUM")]
		public static extern void CclosureMarshalVOIDENUM(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__FLAGS")]
		public static extern void CclosureMarshalVOIDFLAGS(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__FLOAT")]
		public static extern void CclosureMarshalVOIDFLOAT(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__INT")]
		public static extern void CclosureMarshalVOIDINT(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__LONG")]
		public static extern void CclosureMarshalVOIDLONG(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__OBJECT")]
		public static extern void CclosureMarshalVOIDOBJECT(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__PARAM")]
		public static extern void CclosureMarshalVOIDPARAM(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__POINTER")]
		public static extern void CclosureMarshalVOIDPOINTER(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__STRING")]
		public static extern void CclosureMarshalVOIDSTRING(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__UCHAR")]
		public static extern void CclosureMarshalVOIDUCHAR(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__UINT")]
		public static extern void CclosureMarshalVOIDUINT(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__UINT_POINTER")]
		public static extern void CclosureMarshalVOIDUINTPOINTER(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__ULONG")]
		public static extern void CclosureMarshalVOIDULONG(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__VARIANT")]
		public static extern void CclosureMarshalVOIDVARIANT(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_VOID__VOID")]
		public static extern void CclosureMarshalVOIDVOID(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_cclosure_marshal_generic")]
		public static extern void CclosureMarshalGeneric(Closure* closure, Value* return_gvalue, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
		[LinkName("g_clear_signal_handler")]
		public static extern void ClearSignalHandler(c_ulong* handler_id_ptr, Object* instance);
		[LinkName("g_enum_complete_type_info")]
		public static extern void EnumCompleteTypeInfo(GLib.Type g_enum_type, TypeInfo* info, EnumValue* const_values);
		[LinkName("g_enum_get_value")]
		public static extern EnumValue* EnumGetValue(EnumClass* enum_class, c_int value);
		[LinkName("g_enum_get_value_by_name")]
		public static extern EnumValue* EnumGetValueByName(EnumClass* enum_class, char8* name);
		[LinkName("g_enum_get_value_by_nick")]
		public static extern EnumValue* EnumGetValueByNick(EnumClass* enum_class, char8* nick);
		[LinkName("g_enum_register_static")]
		public static extern GLib.Type EnumRegisterStatic(char8* name, EnumValue* const_static_values);
		[LinkName("g_enum_to_string")]
		public static extern char8* EnumToString(GLib.Type g_enum_type, c_int value);
		[LinkName("g_flags_complete_type_info")]
		public static extern void FlagsCompleteTypeInfo(GLib.Type g_flags_type, TypeInfo* info, FlagsValue* const_values);
		[LinkName("g_flags_get_first_value")]
		public static extern FlagsValue* FlagsGetFirstValue(FlagsClass* flags_class, c_uint value);
		[LinkName("g_flags_get_value_by_name")]
		public static extern FlagsValue* FlagsGetValueByName(FlagsClass* flags_class, char8* name);
		[LinkName("g_flags_get_value_by_nick")]
		public static extern FlagsValue* FlagsGetValueByNick(FlagsClass* flags_class, char8* nick);
		[LinkName("g_flags_register_static")]
		public static extern GLib.Type FlagsRegisterStatic(char8* name, FlagsValue* const_static_values);
		[LinkName("g_flags_to_string")]
		public static extern char8* FlagsToString(GLib.Type flags_type, c_uint value);
		[LinkName("g_gtype_get_type")]
		public static extern GLib.Type GtypeGetType();
		[LinkName("g_param_spec_boolean")]
		public static extern ParamSpec* ParamSpecBoolean(char8* name, char8* nick, char8* blurb, c_int default_value, ParamFlags flags);
		[LinkName("g_param_spec_boxed")]
		public static extern ParamSpec* ParamSpecBoxed(char8* name, char8* nick, char8* blurb, GLib.Type boxed_type, ParamFlags flags);
		[LinkName("g_param_spec_char")]
		public static extern ParamSpec* ParamSpecChar(char8* name, char8* nick, char8* blurb, c_char minimum, c_char maximum, c_char default_value, ParamFlags flags);
		[LinkName("g_param_spec_double")]
		public static extern ParamSpec* ParamSpecDouble(char8* name, char8* nick, char8* blurb, double minimum, double maximum, double default_value, ParamFlags flags);
		[LinkName("g_param_spec_enum")]
		public static extern ParamSpec* ParamSpecEnum(char8* name, char8* nick, char8* blurb, GLib.Type enum_type, c_int default_value, ParamFlags flags);
		[LinkName("g_param_spec_flags")]
		public static extern ParamSpec* ParamSpecFlags(char8* name, char8* nick, char8* blurb, GLib.Type flags_type, c_uint default_value, ParamFlags flags);
		[LinkName("g_param_spec_float")]
		public static extern ParamSpec* ParamSpecFloat(char8* name, char8* nick, char8* blurb, float minimum, float maximum, float default_value, ParamFlags flags);
		[LinkName("g_param_spec_gtype")]
		public static extern ParamSpec* ParamSpecGtype(char8* name, char8* nick, char8* blurb, GLib.Type is_a_type, ParamFlags flags);
		[LinkName("g_param_spec_int")]
		public static extern ParamSpec* ParamSpecInt(char8* name, char8* nick, char8* blurb, c_int minimum, c_int maximum, c_int default_value, ParamFlags flags);
		[LinkName("g_param_spec_int64")]
		public static extern ParamSpec* ParamSpecInt64(char8* name, char8* nick, char8* blurb, c_longlong minimum, c_longlong maximum, c_longlong default_value, ParamFlags flags);
		[LinkName("g_param_spec_long")]
		public static extern ParamSpec* ParamSpecLong(char8* name, char8* nick, char8* blurb, c_long minimum, c_long maximum, c_long default_value, ParamFlags flags);
		[LinkName("g_param_spec_object")]
		public static extern ParamSpec* ParamSpecObject(char8* name, char8* nick, char8* blurb, GLib.Type object_type, ParamFlags flags);
		[LinkName("g_param_spec_param")]
		public static extern ParamSpec* ParamSpecParam(char8* name, char8* nick, char8* blurb, GLib.Type param_type, ParamFlags flags);
		[LinkName("g_param_spec_pointer")]
		public static extern ParamSpec* ParamSpecPointer(char8* name, char8* nick, char8* blurb, ParamFlags flags);
		[LinkName("g_param_spec_string")]
		public static extern ParamSpec* ParamSpecString(char8* name, char8* nick, char8* blurb, char8* default_value, ParamFlags flags);
		[LinkName("g_param_spec_uchar")]
		public static extern ParamSpec* ParamSpecUchar(char8* name, char8* nick, char8* blurb, c_uchar minimum, c_uchar maximum, c_uchar default_value, ParamFlags flags);
		[LinkName("g_param_spec_uint")]
		public static extern ParamSpec* ParamSpecUint(char8* name, char8* nick, char8* blurb, c_uint minimum, c_uint maximum, c_uint default_value, ParamFlags flags);
		[LinkName("g_param_spec_uint64")]
		public static extern ParamSpec* ParamSpecUint64(char8* name, char8* nick, char8* blurb, c_ulonglong minimum, c_ulonglong maximum, c_ulonglong default_value, ParamFlags flags);
		[LinkName("g_param_spec_ulong")]
		public static extern ParamSpec* ParamSpecUlong(char8* name, char8* nick, char8* blurb, c_ulong minimum, c_ulong maximum, c_ulong default_value, ParamFlags flags);
		[LinkName("g_param_spec_unichar")]
		public static extern ParamSpec* ParamSpecUnichar(char8* name, char8* nick, char8* blurb, c_uint default_value, ParamFlags flags);
		[LinkName("g_param_spec_variant")]
		public static extern ParamSpec* ParamSpecVariant(char8* name, char8* nick, char8* blurb, GLib.VariantType* type, GLib.Variant* default_value, ParamFlags flags);
		[LinkName("g_param_type_register_static")]
		public static extern GLib.Type ParamTypeRegisterStatic(char8* name, ParamSpecTypeInfo* pspec_info);
		[LinkName("g_param_value_convert")]
		public static extern c_int ParamValueConvert(ParamSpec* pspec, Value* src_value, Value* dest_value, c_int strict_validation);
		[LinkName("g_param_value_defaults")]
		public static extern c_int ParamValueDefaults(ParamSpec* pspec, Value* value);
		[LinkName("g_param_value_is_valid")]
		public static extern c_int ParamValueIsValid(ParamSpec* pspec, Value* value);
		[LinkName("g_param_value_set_default")]
		public static extern void ParamValueSetDefault(ParamSpec* pspec, Value* value);
		[LinkName("g_param_value_validate")]
		public static extern c_int ParamValueValidate(ParamSpec* pspec, Value* value);
		[LinkName("g_param_values_cmp")]
		public static extern c_int ParamValuesCmp(ParamSpec* pspec, Value* value1, Value* value2);
		[LinkName("g_pointer_type_register_static")]
		public static extern GLib.Type PointerTypeRegisterStatic(char8* name);
		[LinkName("g_signal_accumulator_first_wins")]
		public static extern c_int SignalAccumulatorFirstWins(SignalInvocationHint* ihint, Value* return_accu, Value* handler_return, void* dummy);
		[LinkName("g_signal_accumulator_true_handled")]
		public static extern c_int SignalAccumulatorTrueHandled(SignalInvocationHint* ihint, Value* return_accu, Value* handler_return, void* dummy);
		[LinkName("g_signal_add_emission_hook")]
		public static extern c_ulong SignalAddEmissionHook(c_uint signal_id, GLib.Quark detail, SignalEmissionHook hook_func, void* hook_data, GLib.DestroyNotify data_destroy);
		[LinkName("g_signal_chain_from_overridden")]
		public static extern void SignalChainFromOverridden(Value* instance_and_params, Value* return_value);
		[LinkName("g_signal_connect_closure")]
		public static extern c_ulong SignalConnectClosure(Object* instance, char8* detailed_signal, Closure* closure, c_int after);
		[LinkName("g_signal_connect_closure_by_id")]
		public static extern c_ulong SignalConnectClosureById(Object* instance, c_uint signal_id, GLib.Quark detail, Closure* closure, c_int after);
		[LinkName("g_signal_emitv")]
		public static extern void SignalEmitv(Value* instance_and_params, c_uint signal_id, GLib.Quark detail, Value* return_value);
		[LinkName("g_signal_get_invocation_hint")]
		public static extern SignalInvocationHint* SignalGetInvocationHint(Object* instance);
		[LinkName("g_signal_handler_block")]
		public static extern void SignalHandlerBlock(Object* instance, c_ulong handler_id);
		[LinkName("g_signal_handler_disconnect")]
		public static extern void SignalHandlerDisconnect(Object* instance, c_ulong handler_id);
		[LinkName("g_signal_handler_find")]
		public static extern c_ulong SignalHandlerFind(Object* instance, SignalMatchType mask, c_uint signal_id, GLib.Quark detail, Closure* closure, void* func, void* data);
		[LinkName("g_signal_handler_is_connected")]
		public static extern c_int SignalHandlerIsConnected(Object* instance, c_ulong handler_id);
		[LinkName("g_signal_handler_unblock")]
		public static extern void SignalHandlerUnblock(Object* instance, c_ulong handler_id);
		[LinkName("g_signal_handlers_block_matched")]
		public static extern c_uint SignalHandlersBlockMatched(Object* instance, SignalMatchType mask, c_uint signal_id, GLib.Quark detail, Closure* closure, void* func, void* data);
		[LinkName("g_signal_handlers_destroy")]
		public static extern void SignalHandlersDestroy(Object* instance);
		[LinkName("g_signal_handlers_disconnect_matched")]
		public static extern c_uint SignalHandlersDisconnectMatched(Object* instance, SignalMatchType mask, c_uint signal_id, GLib.Quark detail, Closure* closure, void* func, void* data);
		[LinkName("g_signal_handlers_unblock_matched")]
		public static extern c_uint SignalHandlersUnblockMatched(Object* instance, SignalMatchType mask, c_uint signal_id, GLib.Quark detail, Closure* closure, void* func, void* data);
		[LinkName("g_signal_has_handler_pending")]
		public static extern c_int SignalHasHandlerPending(Object* instance, c_uint signal_id, GLib.Quark detail, c_int may_be_blocked);
		[LinkName("g_signal_is_valid_name")]
		public static extern c_int SignalIsValidName(char8* name);
		[LinkName("g_signal_list_ids")]
		public static extern c_uint* SignalListIds(GLib.Type itype, c_uint* n_ids);
		[LinkName("g_signal_lookup")]
		public static extern c_uint SignalLookup(char8* name, GLib.Type itype);
		[LinkName("g_signal_name")]
		public static extern char8* SignalName(c_uint signal_id);
		[LinkName("g_signal_override_class_closure")]
		public static extern void SignalOverrideClassClosure(c_uint signal_id, GLib.Type instance_type, Closure* class_closure);
		[LinkName("g_signal_parse_name")]
		public static extern c_int SignalParseName(char8* detailed_signal, GLib.Type itype, c_uint* signal_id_p, GLib.Quark* detail_p, c_int force_detail_quark);
		[LinkName("g_signal_query")]
		public static extern void SignalQuery(c_uint signal_id, SignalQuery* query);
		[LinkName("g_signal_remove_emission_hook")]
		public static extern void SignalRemoveEmissionHook(c_uint signal_id, c_ulong hook_id);
		[LinkName("g_signal_set_va_marshaller")]
		public static extern void SignalSetVaMarshaller(c_uint signal_id, GLib.Type instance_type, SignalCVaMarshaller va_marshaller);
		[LinkName("g_signal_stop_emission")]
		public static extern void SignalStopEmission(Object* instance, c_uint signal_id, GLib.Quark detail);
		[LinkName("g_signal_stop_emission_by_name")]
		public static extern void SignalStopEmissionByName(Object* instance, char8* detailed_signal);
		[LinkName("g_signal_type_cclosure_new")]
		public static extern Closure* SignalTypeCclosureNew(GLib.Type itype, c_uint struct_offset);
		[LinkName("g_source_set_closure")]
		public static extern void SourceSetClosure(GLib.Source* source, Closure* closure);
		[LinkName("g_source_set_dummy_callback")]
		public static extern void SourceSetDummyCallback(GLib.Source* source);
		[LinkName("g_strdup_value_contents")]
		public static extern char8* StrdupValueContents(Value* value);
		[LinkName("g_type_add_class_private")]
		public static extern void TypeAddClassPrivate(GLib.Type class_type, c_ulong private_size);
		[LinkName("g_type_add_instance_private")]
		public static extern c_int TypeAddInstancePrivate(GLib.Type class_type, c_ulong private_size);
		[LinkName("g_type_add_interface_dynamic")]
		public static extern void TypeAddInterfaceDynamic(GLib.Type instance_type, GLib.Type interface_type, TypePlugin* plugin);
		[LinkName("g_type_add_interface_static")]
		public static extern void TypeAddInterfaceStatic(GLib.Type instance_type, GLib.Type interface_type, InterfaceInfo* info);
		[LinkName("g_type_check_class_is_a")]
		public static extern c_int TypeCheckClassIsA(TypeClass* g_class, GLib.Type is_a_type);
		[LinkName("g_type_check_instance")]
		public static extern c_int TypeCheckInstance(TypeInstance* instance);
		[LinkName("g_type_check_instance_is_a")]
		public static extern c_int TypeCheckInstanceIsA(TypeInstance* instance, GLib.Type iface_type);
		[LinkName("g_type_check_instance_is_fundamentally_a")]
		public static extern c_int TypeCheckInstanceIsFundamentallyA(TypeInstance* instance, GLib.Type fundamental_type);
		[LinkName("g_type_check_is_value_type")]
		public static extern c_int TypeCheckIsValueType(GLib.Type type);
		[LinkName("g_type_check_value")]
		public static extern c_int TypeCheckValue(Value* value);
		[LinkName("g_type_check_value_holds")]
		public static extern c_int TypeCheckValueHolds(Value* value, GLib.Type type);
		[LinkName("g_type_children")]
		public static extern GLib.Type* TypeChildren(GLib.Type type, c_uint* n_children);
		[LinkName("g_type_class_adjust_private_offset")]
		public static extern void TypeClassAdjustPrivateOffset(void* g_class, c_int* private_size_or_offset);
		[LinkName("g_type_class_peek")]
		public static extern TypeClass* TypeClassPeek(GLib.Type type);
		[LinkName("g_type_class_peek_static")]
		public static extern TypeClass* TypeClassPeekStatic(GLib.Type type);
		[LinkName("g_type_class_ref")]
		public static extern TypeClass* TypeClassRef(GLib.Type type);
		[LinkName("g_type_default_interface_peek")]
		public static extern TypeInterface* TypeDefaultInterfacePeek(GLib.Type g_type);
		[LinkName("g_type_default_interface_ref")]
		public static extern TypeInterface* TypeDefaultInterfaceRef(GLib.Type g_type);
		[LinkName("g_type_default_interface_unref")]
		public static extern void TypeDefaultInterfaceUnref(TypeInterface* g_iface);
		[LinkName("g_type_depth")]
		public static extern c_uint TypeDepth(GLib.Type type);
		[LinkName("g_type_ensure")]
		public static extern void TypeEnsure(GLib.Type type);
		[LinkName("g_type_free_instance")]
		public static extern void TypeFreeInstance(TypeInstance* instance);
		[LinkName("g_type_from_name")]
		public static extern GLib.Type TypeFromName(char8* name);
		[LinkName("g_type_fundamental")]
		public static extern GLib.Type TypeFundamental(GLib.Type type_id);
		[LinkName("g_type_fundamental_next")]
		public static extern GLib.Type TypeFundamentalNext();
		[LinkName("g_type_get_instance_count")]
		public static extern c_int TypeGetInstanceCount(GLib.Type type);
		[LinkName("g_type_get_plugin")]
		public static extern TypePlugin* TypeGetPlugin(GLib.Type type);
		[LinkName("g_type_get_qdata")]
		public static extern void* TypeGetQdata(GLib.Type type, GLib.Quark quark);
		[LinkName("g_type_get_type_registration_serial")]
		public static extern c_uint TypeGetTypeRegistrationSerial();
		[LinkName("g_type_init")]
		public static extern void TypeInit();
		[LinkName("g_type_init_with_debug_flags")]
		public static extern void TypeInitWithDebugFlags(TypeDebugFlags debug_flags);
		[LinkName("g_type_interface_add_prerequisite")]
		public static extern void TypeInterfaceAddPrerequisite(GLib.Type interface_type, GLib.Type prerequisite_type);
		[LinkName("g_type_interface_get_plugin")]
		public static extern TypePlugin* TypeInterfaceGetPlugin(GLib.Type instance_type, GLib.Type interface_type);
		[LinkName("g_type_interface_instantiatable_prerequisite")]
		public static extern GLib.Type TypeInterfaceInstantiatablePrerequisite(GLib.Type interface_type);
		[LinkName("g_type_interface_peek")]
		public static extern TypeInterface* TypeInterfacePeek(TypeClass* instance_class, GLib.Type iface_type);
		[LinkName("g_type_interface_prerequisites")]
		public static extern GLib.Type* TypeInterfacePrerequisites(GLib.Type interface_type, c_uint* n_prerequisites);
		[LinkName("g_type_interfaces")]
		public static extern GLib.Type* TypeInterfaces(GLib.Type type, c_uint* n_interfaces);
		[LinkName("g_type_is_a")]
		public static extern c_int TypeIsA(GLib.Type type, GLib.Type is_a_type);
		[LinkName("g_type_name")]
		public static extern char8* TypeName(GLib.Type type);
		[LinkName("g_type_name_from_class")]
		public static extern char8* TypeNameFromClass(TypeClass* g_class);
		[LinkName("g_type_name_from_instance")]
		public static extern char8* TypeNameFromInstance(TypeInstance* instance);
		[LinkName("g_type_next_base")]
		public static extern GLib.Type TypeNextBase(GLib.Type leaf_type, GLib.Type root_type);
		[LinkName("g_type_parent")]
		public static extern GLib.Type TypeParent(GLib.Type type);
		[LinkName("g_type_qname")]
		public static extern GLib.Quark TypeQname(GLib.Type type);
		[LinkName("g_type_query")]
		public static extern void TypeQuery(GLib.Type type, TypeQuery* query);
		[LinkName("g_type_register_dynamic")]
		public static extern GLib.Type TypeRegisterDynamic(GLib.Type parent_type, char8* type_name, TypePlugin* plugin, TypeFlags flags);
		[LinkName("g_type_register_fundamental")]
		public static extern GLib.Type TypeRegisterFundamental(GLib.Type type_id, char8* type_name, TypeInfo* info, TypeFundamentalInfo* finfo, TypeFlags flags);
		[LinkName("g_type_register_static")]
		public static extern GLib.Type TypeRegisterStatic(GLib.Type parent_type, char8* type_name, TypeInfo* info, TypeFlags flags);
		[LinkName("g_type_set_qdata")]
		public static extern void TypeSetQdata(GLib.Type type, GLib.Quark quark, void* data);
		[LinkName("g_type_test_flags")]
		public static extern c_int TypeTestFlags(GLib.Type type, c_uint flags);
		[LinkName("g_value_type_compatible")]
		public static extern c_int ValueTypeCompatible(GLib.Type src_type, GLib.Type dest_type);
		[LinkName("g_value_type_transformable")]
		public static extern c_int ValueTypeTransformable(GLib.Type src_type, GLib.Type dest_type);
	[CRepr]
	public struct CClosure
	{
		public Closure closure;
		public void* callback;
	}
	[CRepr]
	public struct Closure
	{
		[Bitfield<c_uint>(.Private, .Bits(15), "ref_count")]
		[Bitfield<c_uint>(.Private, .Bits(1), "meta_marshal_nouse")]
		[Bitfield<c_uint>(.Private, .Bits(1), "n_guards")]
		[Bitfield<c_uint>(.Private, .Bits(2), "n_fnotifiers")]
		[Bitfield<c_uint>(.Private, .Bits(8), "n_inotifiers")]
		[Bitfield<c_uint>(.Private, .Bits(1), "in_inotify")]
		[Bitfield<c_uint>(.Private, .Bits(1), "floating")]
		[Bitfield<c_uint>(.Private, .Bits(1), "derivative_flag")]
		[Bitfield<c_uint>(.Private, .Bits(1), "in_marshal")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_invalid")]
		private c_uint mBitfield;
		public function void(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data) marshal;
		public void* data;
		public ClosureNotifyData* notifiers;
		[LinkName("g_closure_new_object")]
		public static extern Closure* NewObject(c_uint sizeof_closure, Object* object);
		[LinkName("g_closure_new_simple")]
		public static extern Closure* NewSimple(c_uint sizeof_closure, void* data);
		[LinkName("g_closure_invalidate")]
		public static extern void Invalidate(Closure* closure);
		[LinkName("g_closure_invoke")]
		public static extern void Invoke(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint);
		[LinkName("g_closure_ref")]
		public static extern Closure* Ref(Closure* closure);
		[LinkName("g_closure_sink")]
		public static extern void Sink(Closure* closure);
		[LinkName("g_closure_unref")]
		public static extern void Unref(Closure* closure);
	}
	[CRepr]
	public struct ClosureNotifyData
	{
		public void* data;
		public ClosureNotify notify;
	}
	[CRepr]
	public struct EnumClass
	{
		public TypeClass g_type_class;
		public c_int minimum;
		public c_int maximum;
		public c_uint n_values;
		public EnumValue* values;
	}
	[CRepr]
	public struct EnumValue
	{
		public c_int value;
		public char8* value_name;
		public char8* value_nick;
	}
	[CRepr]
	public struct FlagsClass
	{
		public TypeClass g_type_class;
		public c_uint mask;
		public c_uint n_values;
		public FlagsValue* values;
	}
	[CRepr]
	public struct FlagsValue
	{
		public c_uint value;
		public char8* value_name;
		public char8* value_nick;
	}
	[CRepr]
	public struct InitiallyUnownedClass
	{
		public TypeClass g_type_class;
		public GLib.SList* construct_properties;
		public function Object*(GLib.Type type, c_uint n_construct_properties, ObjectConstructParam* construct_properties) constructor;
		public function void(Object* object, c_uint property_id, Value* value, ParamSpec* pspec) set_property;
		public function void(Object* object, c_uint property_id, Value* value, ParamSpec* pspec) get_property;
		public function void(Object* object) dispose;
		public function void(Object* object) finalize;
		public function void(Object* object, c_uint n_pspecs, ParamSpec** pspecs) dispatch_properties_changed;
		public function void(Object* object, ParamSpec* pspec) notify;
		public function void(Object* object) constructed;
		public c_ulong flags;
		public c_ulong n_construct_properties;
		public void* pspecs;
		public c_ulong n_pspecs;
		public void* pdummy;
	}
	[CRepr]
	public struct InterfaceInfo
	{
		public InterfaceInitFunc interface_init;
		public InterfaceFinalizeFunc interface_finalize;
		public void* interface_data;
	}
	[CRepr]
	public struct ObjectClass
	{
		public TypeClass g_type_class;
		public GLib.SList* construct_properties;
		public function Object*(GLib.Type type, c_uint n_construct_properties, ObjectConstructParam* construct_properties) constructor;
		public function void(Object* object, c_uint property_id, Value* value, ParamSpec* pspec) set_property;
		public function void(Object* object, c_uint property_id, Value* value, ParamSpec* pspec) get_property;
		public function void(Object* object) dispose;
		public function void(Object* object) finalize;
		public function void(Object* object, c_uint n_pspecs, ParamSpec** pspecs) dispatch_properties_changed;
		public function void(Object* object, ParamSpec* pspec) notify;
		public function void(Object* object) constructed;
		public c_ulong flags;
		public c_ulong n_construct_properties;
		public void* pspecs;
		public c_ulong n_pspecs;
		public void* pdummy;
		[LinkName("g_object_class_find_property")]
		public static extern ParamSpec* FindProperty(ObjectClass* oclass, char8* property_name);
		[LinkName("g_object_class_install_properties")]
		public static extern void InstallProperties(ObjectClass* oclass, c_uint n_pspecs, ParamSpec** pspecs);
		[LinkName("g_object_class_install_property")]
		public static extern void InstallProperty(ObjectClass* oclass, c_uint property_id, ParamSpec* pspec);
		[LinkName("g_object_class_list_properties")]
		public static extern ParamSpec** ListProperties(ObjectClass* oclass, c_uint* n_properties);
		[LinkName("g_object_class_override_property")]
		public static extern void OverrideProperty(ObjectClass* oclass, c_uint property_id, char8* name);
	}
	[CRepr]
	public struct ObjectConstructParam
	{
		public ParamSpec* pspec;
		public Value* value;
	}
	[CRepr]
	public struct ParamSpecClass
	{
		public TypeClass g_type_class;
		public GLib.Type value_type;
		public function void(ParamSpec* pspec) finalize;
		public function void(ParamSpec* pspec, Value* value) value_set_default;
		public function c_int(ParamSpec* pspec, Value* value) value_validate;
		public function c_int(ParamSpec* pspec, Value* value1, Value* value2) values_cmp;
		public function c_int(ParamSpec* pspec, Value* value) value_is_valid;
		public void* dummy;
	}
	[CRepr]
	public struct ParamSpecPool : int
	{
		[LinkName("g_param_spec_pool_insert")]
		public static extern void Insert(ParamSpecPool* pool, ParamSpec* pspec, GLib.Type owner_type);
		[LinkName("g_param_spec_pool_list")]
		public static extern ParamSpec** List(ParamSpecPool* pool, GLib.Type owner_type, c_uint* n_pspecs_p);
		[LinkName("g_param_spec_pool_list_owned")]
		public static extern GLib.List* ListOwned(ParamSpecPool* pool, GLib.Type owner_type);
		[LinkName("g_param_spec_pool_lookup")]
		public static extern ParamSpec* Lookup(ParamSpecPool* pool, char8* param_name, GLib.Type owner_type, c_int walk_ancestors);
		[LinkName("g_param_spec_pool_remove")]
		public static extern void Remove(ParamSpecPool* pool, ParamSpec* pspec);
	}
	[CRepr]
	public struct ParamSpecTypeInfo
	{
		public c_ushort instance_size;
		public c_ushort n_preallocs;
		public function void(ParamSpec* pspec) instance_init;
		public GLib.Type value_type;
		public function void(ParamSpec* pspec) finalize;
		public function void(ParamSpec* pspec, Value* value) value_set_default;
		public function c_int(ParamSpec* pspec, Value* value) value_validate;
		public function c_int(ParamSpec* pspec, Value* value1, Value* value2) values_cmp;
	}
	[CRepr]
	public struct Parameter
	{
		public char8* name;
		public Value value;
	}
	[CRepr]
	public struct SignalInvocationHint
	{
		public c_uint signal_id;
		public GLib.Quark detail;
		public SignalFlags run_type;
	}
	[CRepr]
	public struct SignalQuery
	{
		public c_uint signal_id;
		public char8* signal_name;
		public GLib.Type itype;
		public SignalFlags signal_flags;
		public GLib.Type return_type;
		public c_uint n_params;
		public GLib.Type* param_types;
	}
	[CRepr]
	public struct TypeClass
	{
		public GLib.Type g_type;
		[LinkName("g_type_class_add_private")]
		public static extern void AddPrivate(TypeClass* g_class, c_ulong private_size);
		[LinkName("g_type_class_get_private")]
		public static extern void* GetPrivate(TypeClass* klass, GLib.Type private_type);
		[LinkName("g_type_class_peek_parent")]
		public static extern TypeClass* PeekParent(TypeClass* g_class);
		[LinkName("g_type_class_unref")]
		public static extern void Unref(TypeClass* g_class);
	}
	[CRepr]
	public struct TypeFundamentalInfo
	{
		public TypeFundamentalFlags type_flags;
	}
	[CRepr]
	public struct TypeInfo
	{
		public c_ushort class_size;
		public BaseInitFunc base_init;
		public BaseFinalizeFunc base_finalize;
		public ClassInitFunc class_init;
		public ClassFinalizeFunc class_finalize;
		public void* class_data;
		public c_ushort instance_size;
		public c_ushort n_preallocs;
		public InstanceInitFunc instance_init;
		public TypeValueTable* value_table;
	}
	[CRepr]
	public struct TypeInstance
	{
		public TypeClass* g_class;
		[LinkName("g_type_instance_get_private")]
		public static extern void* GetPrivate(TypeInstance* instance, GLib.Type private_type);
	}
	[CRepr]
	public struct TypeInterface
	{
		public GLib.Type g_type;
		public GLib.Type g_instance_type;
		[LinkName("g_type_interface_peek_parent")]
		public static extern TypeInterface* PeekParent(TypeInterface* g_iface);
	}
	[CRepr]
	public struct TypeModuleClass
	{
		public ObjectClass parent_class;
		public function c_int(TypeModule* module) load;
		public function void(TypeModule* module) unload;
		public function void() reserved1;
		public function void() reserved2;
		public function void() reserved3;
		public function void() reserved4;
	}
	[CRepr]
	public struct TypePluginClass
	{
		public TypeInterface base_iface;
		public TypePluginUse use_plugin;
		public TypePluginUnuse unuse_plugin;
		public TypePluginCompleteTypeInfo complete_type_info;
		public TypePluginCompleteInterfaceInfo complete_interface_info;
	}
	[CRepr]
	public struct TypeQuery
	{
		public GLib.Type type;
		public char8* type_name;
		public c_uint class_size;
		public c_uint instance_size;
	}
	[CRepr]
	public struct TypeValueTable
	{
		public function void(Value* value) value_init;
		public function void(Value* value) value_free;
		public function void(Value* src_value, Value* dest_value) value_copy;
		public function void*(Value* value) value_peek_pointer;
		public char8* collect_format;
		public function char8*(Value* value, c_uint n_collect_values, TypeCValue* collect_values, c_uint collect_flags) collect_value;
		public char8* lcopy_format;
		public function char8*(Value* value, c_uint n_collect_values, TypeCValue* collect_values, c_uint collect_flags) lcopy_value;
	}
	[CRepr]
	public struct Value
	{
		public GLib.Type g_type;
		public _Value__data__union data;
		[LinkName("g_value_copy")]
		public static extern void Copy(Value* src_value, Value* dest_value);
		[LinkName("g_value_dup_object")]
		public static extern Object* DupObject(Value* value);
		[LinkName("g_value_dup_string")]
		public static extern char8* DupString(Value* value);
		[LinkName("g_value_dup_variant")]
		public static extern GLib.Variant* DupVariant(Value* value);
		[LinkName("g_value_fits_pointer")]
		public static extern c_int FitsPointer(Value* value);
		[LinkName("g_value_get_boolean")]
		public static extern c_int GetBoolean(Value* value);
		[LinkName("g_value_get_boxed")]
		public static extern void* GetBoxed(Value* value);
		[LinkName("g_value_get_char")]
		public static extern c_char GetChar(Value* value);
		[LinkName("g_value_get_double")]
		public static extern double GetDouble(Value* value);
		[LinkName("g_value_get_enum")]
		public static extern c_int GetEnum(Value* value);
		[LinkName("g_value_get_flags")]
		public static extern c_uint GetFlags(Value* value);
		[LinkName("g_value_get_float")]
		public static extern float GetFloat(Value* value);
		[LinkName("g_value_get_gtype")]
		public static extern GLib.Type GetGtype(Value* value);
		[LinkName("g_value_get_int")]
		public static extern c_int GetInt(Value* value);
		[LinkName("g_value_get_int64")]
		public static extern c_longlong GetInt64(Value* value);
		[LinkName("g_value_get_long")]
		public static extern c_long GetLong(Value* value);
		[LinkName("g_value_get_object")]
		public static extern Object* GetObject(Value* value);
		[LinkName("g_value_get_param")]
		public static extern ParamSpec* GetParam(Value* value);
		[LinkName("g_value_get_pointer")]
		public static extern void* GetPointer(Value* value);
		[LinkName("g_value_get_schar")]
		public static extern c_char GetSchar(Value* value);
		[LinkName("g_value_get_string")]
		public static extern char8* GetString(Value* value);
		[LinkName("g_value_get_uchar")]
		public static extern c_uchar GetUchar(Value* value);
		[LinkName("g_value_get_uint")]
		public static extern c_uint GetUint(Value* value);
		[LinkName("g_value_get_uint64")]
		public static extern c_ulonglong GetUint64(Value* value);
		[LinkName("g_value_get_ulong")]
		public static extern c_ulong GetUlong(Value* value);
		[LinkName("g_value_get_variant")]
		public static extern GLib.Variant* GetVariant(Value* value);
		[LinkName("g_value_init")]
		public static extern Value* Init(Value* value, GLib.Type g_type);
		[LinkName("g_value_init_from_instance")]
		public static extern void InitFromInstance(Value* value, TypeInstance* instance);
		[LinkName("g_value_peek_pointer")]
		public static extern void* PeekPointer(Value* value);
		[LinkName("g_value_reset")]
		public static extern Value* Reset(Value* value);
		[LinkName("g_value_set_boolean")]
		public static extern void SetBoolean(Value* value, c_int v_boolean);
		[LinkName("g_value_set_boxed")]
		public static extern void SetBoxed(Value* value, void* v_boxed);
		[LinkName("g_value_set_boxed_take_ownership")]
		public static extern void SetBoxedTakeOwnership(Value* value, void* v_boxed);
		[LinkName("g_value_set_char")]
		public static extern void SetChar(Value* value, c_char v_char);
		[LinkName("g_value_set_double")]
		public static extern void SetDouble(Value* value, double v_double);
		[LinkName("g_value_set_enum")]
		public static extern void SetEnum(Value* value, c_int v_enum);
		[LinkName("g_value_set_flags")]
		public static extern void SetFlags(Value* value, c_uint v_flags);
		[LinkName("g_value_set_float")]
		public static extern void SetFloat(Value* value, float v_float);
		[LinkName("g_value_set_gtype")]
		public static extern void SetGtype(Value* value, GLib.Type v_gtype);
		[LinkName("g_value_set_instance")]
		public static extern void SetInstance(Value* value, void* instance);
		[LinkName("g_value_set_int")]
		public static extern void SetInt(Value* value, c_int v_int);
		[LinkName("g_value_set_int64")]
		public static extern void SetInt64(Value* value, c_longlong v_int64);
		[LinkName("g_value_set_interned_string")]
		public static extern void SetInternedString(Value* value, char8* v_string);
		[LinkName("g_value_set_long")]
		public static extern void SetLong(Value* value, c_long v_long);
		[LinkName("g_value_set_object")]
		public static extern void SetObject(Value* value, Object* v_object);
		[LinkName("g_value_set_param")]
		public static extern void SetParam(Value* value, ParamSpec* param);
		[LinkName("g_value_set_pointer")]
		public static extern void SetPointer(Value* value, void* v_pointer);
		[LinkName("g_value_set_schar")]
		public static extern void SetSchar(Value* value, c_char v_char);
		[LinkName("g_value_set_static_boxed")]
		public static extern void SetStaticBoxed(Value* value, void* v_boxed);
		[LinkName("g_value_set_static_string")]
		public static extern void SetStaticString(Value* value, char8* v_string);
		[LinkName("g_value_set_string")]
		public static extern void SetString(Value* value, char8* v_string);
		[LinkName("g_value_set_string_take_ownership")]
		public static extern void SetStringTakeOwnership(Value* value, char8* v_string);
		[LinkName("g_value_set_uchar")]
		public static extern void SetUchar(Value* value, c_uchar v_uchar);
		[LinkName("g_value_set_uint")]
		public static extern void SetUint(Value* value, c_uint v_uint);
		[LinkName("g_value_set_uint64")]
		public static extern void SetUint64(Value* value, c_ulonglong v_uint64);
		[LinkName("g_value_set_ulong")]
		public static extern void SetUlong(Value* value, c_ulong v_ulong);
		[LinkName("g_value_set_variant")]
		public static extern void SetVariant(Value* value, GLib.Variant* variant);
		[LinkName("g_value_take_boxed")]
		public static extern void TakeBoxed(Value* value, void* v_boxed);
		[LinkName("g_value_take_string")]
		public static extern void TakeString(Value* value, char8* v_string);
		[LinkName("g_value_take_variant")]
		public static extern void TakeVariant(Value* value, GLib.Variant* variant);
		[LinkName("g_value_transform")]
		public static extern c_int Transform(Value* src_value, Value* dest_value);
		[LinkName("g_value_unset")]
		public static extern void Unset(Value* value);
	}
	[CRepr]
	public struct ValueArray
	{
		public c_uint n_values;
		public Value* values;
		public c_uint n_prealloced;
		[LinkName("g_value_array_new")]
		public static extern ValueArray* New(c_uint n_prealloced);
		[LinkName("g_value_array_append")]
		public static extern ValueArray* Append(ValueArray* value_array, Value* value);
		[LinkName("g_value_array_copy")]
		public static extern ValueArray* Copy(ValueArray* value_array);
		[LinkName("g_value_array_get_nth")]
		public static extern Value* GetNth(ValueArray* value_array, c_uint index_);
		[LinkName("g_value_array_insert")]
		public static extern ValueArray* Insert(ValueArray* value_array, c_uint index_, Value* value);
		[LinkName("g_value_array_prepend")]
		public static extern ValueArray* Prepend(ValueArray* value_array, Value* value);
		[LinkName("g_value_array_remove")]
		public static extern ValueArray* Remove(ValueArray* value_array, c_uint index_);
		[LinkName("g_value_array_sort")]
		public static extern ValueArray* Sort(ValueArray* value_array, GLib.CompareFunc compare_func);
		[LinkName("g_value_array_sort_with_data")]
		public static extern ValueArray* SortWithData(ValueArray* value_array, GLib.CompareDataFunc compare_func, void* user_data);
	}
	[CRepr]
	public struct WeakRef
	{
	}
	[CRepr, AllowDuplicates]
	public enum BindingFlags
	{
		Default = 0,
		Bidirectional = 1,
		SyncCreate = 2,
		InvertBoolean = 4
	}
	[CRepr, AllowDuplicates]
	public enum ConnectFlags
	{
		Default = 0,
		After = 1,
		Swapped = 2
	}
	[CRepr, AllowDuplicates]
	public enum ParamFlags
	{
		Readable = 1,
		Writable = 2,
		Readwrite = 3,
		Construct = 4,
		ConstructOnly = 8,
		LaxValidation = 16,
		StaticName = 32,
		Private = 32,
		StaticNick = 64,
		StaticBlurb = 128,
		ExplicitNotify = 1073741824,
		Deprecated = 2147483648
	}
	[CRepr, AllowDuplicates]
	public enum SignalFlags
	{
		RunFirst = 1,
		RunLast = 2,
		RunCleanup = 4,
		NoRecurse = 8,
		Detailed = 16,
		Action = 32,
		NoHooks = 64,
		MustCollect = 128,
		Deprecated = 256,
		AccumulatorFirstRun = 131072
	}
	[CRepr, AllowDuplicates]
	public enum SignalMatchType
	{
		Id = 1,
		Detail = 2,
		Closure = 4,
		Func = 8,
		Data = 16,
		Unblocked = 32
	}
	[CRepr, AllowDuplicates]
	public enum TypeDebugFlags
	{
		None = 0,
		Objects = 1,
		Signals = 2,
		InstanceCount = 4,
		Mask = 7
	}
	[CRepr, AllowDuplicates]
	public enum TypeFlags
	{
		None = 0,
		Abstract = 16,
		ValueAbstract = 32,
		Final = 64,
		Deprecated = 128
	}
	[CRepr, AllowDuplicates]
	public enum TypeFundamentalFlags
	{
		Classed = 1,
		Instantiatable = 2,
		Derivable = 4,
		DeepDerivable = 8
	}
	public struct TypePlugin;
	public function void BaseFinalizeFunc(TypeClass* g_class);
	public function void BaseInitFunc(TypeClass* g_class);
	public function c_int BindingTransformFunc(Binding* binding, Value* from_value, Value* to_value, void* user_data);
	public function void* BoxedCopyFunc(void* boxed);
	public function void BoxedFreeFunc(void* boxed);
	public function void Callback();
	public function void ClassFinalizeFunc(TypeClass* g_class, void* class_data);
	public function void ClassInitFunc(TypeClass* g_class, void* class_data);
	public function void ClosureMarshal(Closure* closure, Value* return_value, c_uint n_param_values, Value* param_values, void* invocation_hint, void* marshal_data);
	public function void ClosureNotify(void* data, Closure* closure);
	public function void InstanceInitFunc(TypeInstance* instance, TypeClass* g_class);
	public function void InterfaceFinalizeFunc(TypeInterface* g_iface, void* iface_data);
	public function void InterfaceInitFunc(TypeInterface* g_iface, void* iface_data);
	public function void ObjectFinalizeFunc(Object* object);
	public function void ObjectGetPropertyFunc(Object* object, c_uint property_id, Value* value, ParamSpec* pspec);
	public function void ObjectSetPropertyFunc(Object* object, c_uint property_id, Value* value, ParamSpec* pspec);
	public function c_int SignalAccumulator(SignalInvocationHint* ihint, Value* return_accu, Value* handler_return, void* data);
	public function c_int SignalEmissionHook(SignalInvocationHint* ihint, c_uint n_param_values, Value* param_values, void* data);
	public function void ToggleNotify(void* data, Object* object, c_int is_last_ref);
	public function c_int TypeClassCacheFunc(void* cache_data, TypeClass* g_class);
	public function void TypeInterfaceCheckFunc(void* check_data, TypeInterface* g_iface);
	public function void TypePluginCompleteInterfaceInfo(TypePlugin* plugin, GLib.Type instance_type, GLib.Type interface_type, InterfaceInfo* info);
	public function void TypePluginCompleteTypeInfo(TypePlugin* plugin, GLib.Type g_type, TypeInfo* info, TypeValueTable* value_table);
	public function void TypePluginUnuse(TypePlugin* plugin);
	public function void TypePluginUse(TypePlugin* plugin);
	public function void VaClosureMarshal(Closure* closure, Value* return_value, TypeInstance* instance, VarArgs args, void* marshal_data, c_int n_params, GLib.Type* param_types);
	public function void ValueTransform(Value* src_value, Value* dest_value);
	public function void WeakNotify(void* data, Object* where_the_object_was);
	[Union]
	public struct TypeCValue
	{
	}
	[Union]
	public struct _Value__data__union
	{
	public c_int v_int;
	public c_uint v_uint;
	public c_long v_long;
	public c_ulong v_ulong;
	public c_longlong v_int64;
	public c_ulonglong v_uint64;
	public float v_float;
	public double v_double;
	public void* v_pointer;
	}
}
