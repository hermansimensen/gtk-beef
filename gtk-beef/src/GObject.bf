namespace GObject;

using System;
using System.Interop;
using GLib;

class GObject
{
	public typealias SignalCMarshaller = ClosureMarshal;
	public typealias SignalCVaMarshaller = VaClosureMarshal;
	public typealias Type = c_ulong;
	public function void BaseFinalizeFunc(TypeClass g_class);
	public function void BaseInitFunc(TypeClass g_class);
	[CRepr]
	public struct Binding;
	[LinkName("g_binding_dup_source")]
	public static extern Object* BindindupSource(Binding* binding);
	[LinkName("g_binding_dup_target")]
	public static extern Object* BindindupTarget(Binding* binding);
	[LinkName("g_binding_get_flags")]
	public static extern BindingFlags BindingetFlags(Binding* binding);
	[LinkName("g_binding_get_source")]
	public static extern Object* BindingetSource(Binding* binding);
	[LinkName("g_binding_get_source_property")]
	public static extern char8* BindingetSourceProperty(Binding* binding);
	[LinkName("g_binding_get_target")]
	public static extern Object* BindingetTarget(Binding* binding);
	[LinkName("g_binding_get_target_property")]
	public static extern char8* BindingetTargetProperty(Binding* binding);
	[LinkName("g_binding_unbind")]
	public static extern void Bindinunbind(Binding* binding);
	[CRepr]
	public enum BindingFlags : int
	{
		default_ = 0,
		bidirectional = 1,
		sync_create = 2,
		invert_boolean = 4
	}
	[CRepr]
	public struct BindingGroup;
	[LinkName("g_binding_group_new")]
	public static extern BindingGroup* BindingroupNew();
	[LinkName("g_binding_group_bind")]
	public static extern void BindingroupBind(BindingGroup* self, char8* source_property, Object target, char8* target_property, BindingFlags flags);
	[LinkName("g_binding_group_bind_full")]
	public static extern void BindingroupBindFull(BindingGroup* self, char8* source_property, Object target, char8* target_property, BindingFlags flags, BindingTransformFunc transform_to, BindingTransformFunc transform_from, void* user_data, GLib.DestroyNotify user_data_destroy);
	[LinkName("g_binding_group_bind_with_closures")]
	public static extern void BindingroupBindWithClosures(BindingGroup* self, char8* source_property, Object target, char8* target_property, BindingFlags flags, Closure* transform_to, Closure* transform_from);
	[LinkName("g_binding_group_dup_source")]
	public static extern Object BindingroupDupSource(BindingGroup* self);
	[LinkName("g_binding_group_set_source")]
	public static extern void BindingroupSetSource(BindingGroup* self, Object source);
	public function c_int BindingTransformFunc(Binding binding, Value from_value, Value to_value, void* user_data);
	public function void* BoxedCopyFunc(void* boxed);
	public function void BoxedFreeFunc(void* boxed);
	[CRepr]
	public struct CClosure
	{
		Closure closure;
		void* callback;
	}
	public function void Callback();
	public function void ClassFinalizeFunc(TypeClass g_class, void* class_data);
	public function void ClassInitFunc(TypeClass g_class, void* class_data);
	[CRepr]
	public struct Closure
	{
		c_uint ref_count;
		c_uint meta_marshal_nouse;
		c_uint n_guards;
		c_uint n_fnotifiers;
		c_uint n_inotifiers;
		c_uint in_inotify;
		c_uint floating;
		c_uint derivative_flag;
		c_uint in_marshal;
		c_uint is_invalid;
		void* data;
		ClosureNotifyData notifiers;
	}
	public function void ClosureMarshal(Closure closure, Value return_value, c_uint n_param_values, void* invocation_hint, void* marshal_data);
	public function void ClosureNotify(void* data, Closure closure);
	[CRepr]
	public struct ClosureNotifyData
	{
		void* data;
		ClosureNotify notify;
	}
	[CRepr]
	public enum ConnectFlags : int
	{
		default_ = 0,
		after = 1,
		swapped = 2
	}
	[CRepr]
	public struct EnumClass
	{
		TypeClass g_type_class;
		c_int minimum;
		c_int maximum;
		c_uint n_values;
		EnumValue values;
	}
	[CRepr]
	public struct EnumValue
	{
		c_int value;
		char8* value_name;
		char8* value_nick;
	}
	[CRepr]
	public struct FlagsClass
	{
		TypeClass g_type_class;
		c_uint mask;
		c_uint n_values;
		FlagsValue values;
	}
	[CRepr]
	public struct FlagsValue
	{
		c_uint value;
		char8* value_name;
		char8* value_nick;
	}
	[CRepr]
	public struct InitiallyUnowned;
	[CRepr]
	public struct InitiallyUnownedClass
	{
		TypeClass g_type_class;
		GLib.SList construct_properties;
		c_ulong flags;
		c_ulong n_construct_properties;
		void* pspecs;
		c_ulong n_pspecs;
	}
	public function void InstanceInitFunc(TypeInstance instance, TypeClass g_class);
	public function void InterfaceFinalizeFunc(TypeInterface g_iface, void* iface_data);
	[CRepr]
	public struct InterfaceInfo
	{
		InterfaceInitFunc interface_init;
		InterfaceFinalizeFunc interface_finalize;
		void* interface_data;
	}
	public function void InterfaceInitFunc(TypeInterface g_iface, void* iface_data);
	[CRepr]
	public struct Object;
	[LinkName("g_object_newv")]
	public static extern Object ObjectNewv(GLib.Type object_type, c_uint n_parameters);
	[LinkName("g_object_compat_control")]
	public static extern c_ulong ObjectCompatControl(c_ulong what, void* data);
	[LinkName("g_object_interface_find_property")]
	public static extern ParamSpec* ObjectInterfaceFindProperty(TypeInterface g_iface, char8* property_name);
	[LinkName("g_object_interface_install_property")]
	public static extern void ObjectInterfaceInstallProperty(TypeInterface g_iface, ParamSpec* pspec);
	[LinkName("g_object_interface_list_properties")]
	public static extern ParamSpec ObjectInterfaceListProperties(TypeInterface g_iface, c_uint* n_properties_p);
	[LinkName("g_object_bind_property")]
	public static extern Binding* ObjectBindProperty(Object source, char8* source_property, Object target, char8* target_property, BindingFlags flags);
	[LinkName("g_object_bind_property_full")]
	public static extern Binding* ObjectBindPropertyFull(Object source, char8* source_property, Object target, char8* target_property, BindingFlags flags, BindingTransformFunc transform_to, BindingTransformFunc transform_from, void* user_data, GLib.DestroyNotify notify);
	[LinkName("g_object_bind_property_with_closures")]
	public static extern Binding* ObjectBindPropertyWithClosures(Object source, char8* source_property, Object target, char8* target_property, BindingFlags flags, Closure* transform_to, Closure* transform_from);
	[LinkName("g_object_force_floating")]
	public static extern void ObjectForceFloating(Object* object);
	[LinkName("g_object_freeze_notify")]
	public static extern void ObjectFreezeNotify(Object* object);
	[LinkName("g_object_get_data")]
	public static extern void* ObjectGetData(Object* object, char8* key);
	[LinkName("g_object_get_property")]
	public static extern void ObjectGetProperty(Object* object, char8* property_name, Value* value);
	[LinkName("g_object_get_qdata")]
	public static extern void* ObjectGetQdata(Object* object, GLib.Quark quark);
	[LinkName("g_object_getv")]
	public static extern void ObjectGetv(Object* object, c_uint n_properties);
	[LinkName("g_object_is_floating")]
	public static extern c_int ObjectIsFloating(Object object);
	[LinkName("g_object_notify")]
	public static extern void ObjectNotify(Object* object, char8* property_name);
	[LinkName("g_object_notify_by_pspec")]
	public static extern void ObjectNotifyByPspec(Object* object, ParamSpec* pspec);
	[LinkName("g_object_ref")]
	public static extern Object ObjectRef(Object object);
	[LinkName("g_object_ref_sink")]
	public static extern Object ObjectRefSink(Object object);
	[LinkName("g_object_run_dispose")]
	public static extern void ObjectRunDispose(Object* object);
	[LinkName("g_object_set_data")]
	public static extern void ObjectSetData(Object* object, char8* key, void* data);
	[LinkName("g_object_set_property")]
	public static extern void ObjectSetProperty(Object* object, char8* property_name, Value* value);
	[LinkName("g_object_steal_data")]
	public static extern void* ObjectStealData(Object* object, char8* key);
	[LinkName("g_object_steal_qdata")]
	public static extern void* ObjectStealQdata(Object* object, GLib.Quark quark);
	[LinkName("g_object_thaw_notify")]
	public static extern void ObjectThawNotify(Object* object);
	[LinkName("g_object_unref")]
	public static extern void ObjectUnref(Object object);
	[LinkName("g_object_watch_closure")]
	public static extern void ObjectWatchClosure(Object* object, Closure* closure);
	[CRepr]
	public struct ObjectClass
	{
		TypeClass g_type_class;
		GLib.SList construct_properties;
		c_ulong flags;
		c_ulong n_construct_properties;
		void* pspecs;
		c_ulong n_pspecs;
	}
	[CRepr]
	public struct ObjectConstructParam
	{
		ParamSpec pspec;
		Value value;
	}
	public function void ObjectFinalizeFunc(Object object);
	public function void ObjectGetPropertyFunc(Object object, c_uint property_id, Value value, ParamSpec pspec);
	public function void ObjectSetPropertyFunc(Object object, c_uint property_id, Value value, ParamSpec pspec);
	[CRepr, AllowDuplicates]
	public enum ParamFlags : int
	{
		readable = 1,
		writable = 2,
		readwrite = 3,
		construct = 4,
		construct_only = 8,
		lax_validation = 16,
		static_name = 32,
		private_ = 32,
		static_nick = 64,
		static_blurb = 128,
		explicit_notify = 1073741824,
		deprecated = 2147483648
	}
	[CRepr]
	public struct ParamSpec;
	[LinkName("g_param_spec_is_valid_name")]
	public static extern c_int ParamSpecIsValidName(char8* name);
	[LinkName("g_param_spec_get_blurb")]
	public static extern char8* ParamSpecGetBlurb(ParamSpec* pspec);
	[LinkName("g_param_spec_get_default_value")]
	public static extern Value* ParamSpecGetDefaultValue(ParamSpec* pspec);
	[LinkName("g_param_spec_get_name")]
	public static extern char8* ParamSpecGetName(ParamSpec* pspec);
	[LinkName("g_param_spec_get_name_quark")]
	public static extern GLib.Quark ParamSpecGetNameQuark(ParamSpec* pspec);
	[LinkName("g_param_spec_get_nick")]
	public static extern char8* ParamSpecGetNick(ParamSpec* pspec);
	[LinkName("g_param_spec_get_qdata")]
	public static extern void* ParamSpecGetQdata(ParamSpec* pspec, GLib.Quark quark);
	[LinkName("g_param_spec_get_redirect_target")]
	public static extern ParamSpec* ParamSpecGetRedirectTarget(ParamSpec* pspec);
	[LinkName("g_param_spec_set_qdata")]
	public static extern void ParamSpecSetQdata(ParamSpec* pspec, GLib.Quark quark, void* data);
	[LinkName("g_param_spec_sink")]
	public static extern void ParamSpecSink(ParamSpec* pspec);
	[LinkName("g_param_spec_steal_qdata")]
	public static extern void* ParamSpecStealQdata(ParamSpec* pspec, GLib.Quark quark);
	[CRepr]
	public struct ParamSpecBoolean;
	[CRepr]
	public struct ParamSpecBoxed;
	[CRepr]
	public struct ParamSpecChar;
	[CRepr]
	public struct ParamSpecClass
	{
		TypeClass g_type_class;
		GLib.Type value_type;
	}
	[CRepr]
	public struct ParamSpecDouble;
	[CRepr]
	public struct ParamSpecEnum;
	[CRepr]
	public struct ParamSpecFlags;
	[CRepr]
	public struct ParamSpecFloat;
	[CRepr]
	public struct ParamSpecGType;
	[CRepr]
	public struct ParamSpecInt;
	[CRepr]
	public struct ParamSpecInt64;
	[CRepr]
	public struct ParamSpecLong;
	[CRepr]
	public struct ParamSpecObject;
	[CRepr]
	public struct ParamSpecOverride;
	[CRepr]
	public struct ParamSpecParam;
	[CRepr]
	public struct ParamSpecPointer;
	[CRepr]
	public struct ParamSpecPool
	{
	}
	[CRepr]
	public struct ParamSpecString;
	[CRepr]
	public struct ParamSpecTypeInfo
	{
		c_ushort instance_size;
		c_ushort n_preallocs;
		GLib.Type value_type;
	}
	[CRepr]
	public struct ParamSpecUChar;
	[CRepr]
	public struct ParamSpecUInt;
	[CRepr]
	public struct ParamSpecUInt64;
	[CRepr]
	public struct ParamSpecULong;
	[CRepr]
	public struct ParamSpecUnichar;
	[CRepr]
	public struct ParamSpecValueArray;
	[CRepr]
	public struct ParamSpecVariant;
	[CRepr]
	public struct Parameter
	{
		char8* name;
		Value value;
	}
	public function c_int SignalAccumulator(SignalInvocationHint ihint, Value return_accu, Value handler_return, void* data);
	public function c_int SignalEmissionHook(SignalInvocationHint ihint, c_uint n_param_values, void* data);
	[CRepr]
	public enum SignalFlags : int
	{
		run_first = 1,
		run_last = 2,
		run_cleanup = 4,
		no_recurse = 8,
		detailed = 16,
		action = 32,
		no_hooks = 64,
		must_collect = 128,
		deprecated = 256,
		accumulator_first_run = 131072
	}
	[CRepr]
	public struct SignalGroup;
	[LinkName("g_signal_group_new")]
	public static extern SignalGroup* SignalGroupNew(GLib.Type target_type);
	[LinkName("g_signal_group_block")]
	public static extern void SignalGroupBlock(SignalGroup* self);
	[LinkName("g_signal_group_connect_closure")]
	public static extern void SignalGroupConnectClosure(SignalGroup* self, char8* detailed_signal, Closure* closure, c_int after);
	[LinkName("g_signal_group_connect_data")]
	public static extern void SignalGroupConnectData(SignalGroup* self, char8* detailed_signal, Callback c_handler, void* data, ClosureNotify notify, ConnectFlags flags);
	[LinkName("g_signal_group_connect_swapped")]
	public static extern void SignalGroupConnectSwapped(SignalGroup* self, char8* detailed_signal, Callback c_handler, void* data);
	[LinkName("g_signal_group_dup_target")]
	public static extern Object SignalGroupDupTarget(SignalGroup* self);
	[LinkName("g_signal_group_set_target")]
	public static extern void SignalGroupSetTarget(SignalGroup* self, Object target);
	[LinkName("g_signal_group_unblock")]
	public static extern void SignalGroupUnblock(SignalGroup* self);
	[CRepr]
	public struct SignalInvocationHint
	{
		c_uint signal_id;
		GLib.Quark detail;
		SignalFlags run_type;
	}
	[CRepr]
	public enum SignalMatchType : int
	{
		id = 1,
		detail = 2,
		closure = 4,
		func = 8,
		data = 16,
		unblocked = 32
	}
	[CRepr]
	public struct SignalQuery
	{
		c_uint signal_id;
		char8* signal_name;
		GLib.Type itype;
		SignalFlags signal_flags;
		GLib.Type return_type;
		c_uint n_params;
	}
	public function void ToggleNotify(void* data, Object object, c_int is_last_ref);
	[Union]
	public struct TypeCValue
	{
	}
	[CRepr]
	public struct TypeClass
	{
		GLib.Type g_type;
	}
	public function c_int TypeClassCacheFunc(void* cache_data, TypeClass g_class);
	[CRepr]
	public enum TypeDebugFlags : int
	{
		none = 0,
		objects = 1,
		signals = 2,
		instance_count = 4,
		mask = 7
	}
	[CRepr]
	public enum TypeFlags : int
	{
		none = 0,
		abstract_ = 16,
		value_abstract = 32,
		final = 64,
		deprecated = 128
	}
	[CRepr]
	public enum TypeFundamentalFlags : int
	{
		classed = 1,
		instantiatable = 2,
		derivable = 4,
		deep_derivable = 8
	}
	[CRepr]
	public struct TypeFundamentalInfo
	{
		TypeFundamentalFlags type_flags;
	}
	[CRepr]
	public struct TypeInfo
	{
		c_ushort class_size;
		BaseInitFunc base_init;
		BaseFinalizeFunc base_finalize;
		ClassInitFunc class_init;
		ClassFinalizeFunc class_finalize;
		void* class_data;
		c_ushort instance_size;
		c_ushort n_preallocs;
		InstanceInitFunc instance_init;
		TypeValueTable value_table;
	}
	[CRepr]
	public struct TypeInstance
	{
		TypeClass g_class;
	}
	[CRepr]
	public struct TypeInterface
	{
		GLib.Type g_type;
		GLib.Type g_instance_type;
	}
	public function void TypeInterfaceCheckFunc(void* check_data, TypeInterface g_iface);
	[CRepr]
	public struct TypeModule;
	[LinkName("g_type_module_add_interface")]
	public static extern void TypeModuleAddInterface(TypeModule* module, GLib.Type instance_type, GLib.Type interface_type, InterfaceInfo* interface_info);
	[LinkName("g_type_module_register_enum")]
	public static extern GLib.Type TypeModuleRegisterEnum(TypeModule* module, char8* name, EnumValue* const_static_values);
	[LinkName("g_type_module_register_flags")]
	public static extern GLib.Type TypeModuleRegisterFlags(TypeModule* module, char8* name, FlagsValue* const_static_values);
	[LinkName("g_type_module_register_type")]
	public static extern GLib.Type TypeModuleRegisterType(TypeModule* module, GLib.Type parent_type, char8* type_name, TypeInfo* type_info, TypeFlags flags);
	[LinkName("g_type_module_set_name")]
	public static extern void TypeModuleSetName(TypeModule* module, char8* name);
	[LinkName("g_type_module_unuse")]
	public static extern void TypeModuleUnuse(TypeModule* module);
	[LinkName("g_type_module_use")]
	public static extern c_int TypeModuleUse(TypeModule* module);
	[CRepr]
	public struct TypeModuleClass
	{
		ObjectClass parent_class;
	}
	[CRepr]
	public struct TypePlugin
	{	}
	[CRepr]
	public struct TypePluginClass
	{
		TypeInterface base_iface;
		TypePluginUse use_plugin;
		TypePluginUnuse unuse_plugin;
		TypePluginCompleteTypeInfo complete_type_info;
		TypePluginCompleteInterfaceInfo complete_interface_info;
	}
	public function void TypePluginCompleteInterfaceInfo(TypePlugin plugin, GLib.Type instance_type, GLib.Type interface_type, InterfaceInfo info);
	public function void TypePluginCompleteTypeInfo(TypePlugin plugin, GLib.Type g_type, TypeInfo info, TypeValueTable value_table);
	public function void TypePluginUnuse(TypePlugin plugin);
	public function void TypePluginUse(TypePlugin plugin);
	[CRepr]
	public struct TypeQuery
	{
		GLib.Type type;
		char8* type_name;
		c_uint class_size;
		c_uint instance_size;
	}
	[CRepr]
	public struct TypeValueTable
	{
		char8* collect_format;
		char8* lcopy_format;
	}
	public function void VaClosureMarshal(Closure closure, Value return_value, TypeInstance instance, VarArgs args, void* marshal_data, c_int n_params);
	[CRepr]
	public struct Value
	{
		GLib.Type g_type;
	}
	[CRepr]
	public struct ValueArray
	{
		c_uint n_values;
		Value values;
		c_uint n_prealloced;
	}
	public function void ValueTransform(Value src_value, Value dest_value);
	public function void WeakNotify(void* data, Object where_the_object_was);
	[CRepr]
	public struct WeakRef
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
	public static extern void ClearSignalHandler(c_ulong* handler_id_ptr, Object instance);
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
	public static extern void SignalChainFromOverridden(Value* return_value);
	[LinkName("g_signal_connect_closure")]
	public static extern c_ulong SignalConnectClosure(Object instance, char8* detailed_signal, Closure* closure, c_int after);
	[LinkName("g_signal_connect_closure_by_id")]
	public static extern c_ulong SignalConnectClosureById(Object instance, c_uint signal_id, GLib.Quark detail, Closure* closure, c_int after);
	[LinkName("g_signal_emitv")]
	public static extern void SignalEmitv(c_uint signal_id, GLib.Quark detail, Value* return_value);
	[LinkName("g_signal_get_invocation_hint")]
	public static extern SignalInvocationHint* SignalGetInvocationHint(Object instance);
	[LinkName("g_signal_handler_block")]
	public static extern void SignalHandlerBlock(Object instance, c_ulong handler_id);
	[LinkName("g_signal_handler_disconnect")]
	public static extern void SignalHandlerDisconnect(Object instance, c_ulong handler_id);
	[LinkName("g_signal_handler_find")]
	public static extern c_ulong SignalHandlerFind(Object instance, SignalMatchType mask, c_uint signal_id, GLib.Quark detail, Closure* closure, void* func, void* data);
	[LinkName("g_signal_handler_is_connected")]
	public static extern c_int SignalHandlerIsConnected(Object instance, c_ulong handler_id);
	[LinkName("g_signal_handler_unblock")]
	public static extern void SignalHandlerUnblock(Object instance, c_ulong handler_id);
	[LinkName("g_signal_handlers_block_matched")]
	public static extern c_uint SignalHandlersBlockMatched(Object instance, SignalMatchType mask, c_uint signal_id, GLib.Quark detail, Closure* closure, void* func, void* data);
	[LinkName("g_signal_handlers_destroy")]
	public static extern void SignalHandlersDestroy(Object instance);
	[LinkName("g_signal_handlers_disconnect_matched")]
	public static extern c_uint SignalHandlersDisconnectMatched(Object instance, SignalMatchType mask, c_uint signal_id, GLib.Quark detail, Closure* closure, void* func, void* data);
	[LinkName("g_signal_handlers_unblock_matched")]
	public static extern c_uint SignalHandlersUnblockMatched(Object instance, SignalMatchType mask, c_uint signal_id, GLib.Quark detail, Closure* closure, void* func, void* data);
	[LinkName("g_signal_has_handler_pending")]
	public static extern c_int SignalHasHandlerPending(Object instance, c_uint signal_id, GLib.Quark detail, c_int may_be_blocked);
	[LinkName("g_signal_is_valid_name")]
	public static extern c_int SignalIsValidName(char8* name);
	[LinkName("g_signal_list_ids")]
	public static extern c_uint SignalListIds(GLib.Type itype, c_uint* n_ids);
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
	public static extern void SignalStopEmission(Object instance, c_uint signal_id, GLib.Quark detail);
	[LinkName("g_signal_stop_emission_by_name")]
	public static extern void SignalStopEmissionByName(Object instance, char8* detailed_signal);
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
	public static extern GLib.Type TypeChildren(GLib.Type type, c_uint* n_children);
	[LinkName("g_type_class_adjust_private_offset")]
	public static extern void TypeClassAdjustPrivateOffset(void* g_class, c_int* private_size_or_offset);
	[LinkName("g_type_class_peek")]
	public static extern TypeClass TypeClassPeek(GLib.Type type);
	[LinkName("g_type_class_peek_static")]
	public static extern TypeClass TypeClassPeekStatic(GLib.Type type);
	[LinkName("g_type_class_ref")]
	public static extern TypeClass TypeClassRef(GLib.Type type);
	[LinkName("g_type_default_interface_peek")]
	public static extern TypeInterface TypeDefaultInterfacePeek(GLib.Type g_type);
	[LinkName("g_type_default_interface_ref")]
	public static extern TypeInterface TypeDefaultInterfaceRef(GLib.Type g_type);
	[LinkName("g_type_default_interface_unref")]
	public static extern void TypeDefaultInterfaceUnref(TypeInterface g_iface);
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
	public static extern void TypeInitWithDebuflags(TypeDebugFlags debug_flags);
	[LinkName("g_type_interface_add_prerequisite")]
	public static extern void TypeInterfaceAddPrerequisite(GLib.Type interface_type, GLib.Type prerequisite_type);
	[LinkName("g_type_interface_get_plugin")]
	public static extern TypePlugin* TypeInterfaceGetPlugin(GLib.Type instance_type, GLib.Type interface_type);
	[LinkName("g_type_interface_instantiatable_prerequisite")]
	public static extern GLib.Type TypeInterfaceInstantiatablePrerequisite(GLib.Type interface_type);
	[LinkName("g_type_interface_peek")]
	public static extern TypeInterface TypeInterfacePeek(TypeClass instance_class, GLib.Type iface_type);
	[LinkName("g_type_interface_prerequisites")]
	public static extern GLib.Type TypeInterfacePrerequisites(GLib.Type interface_type, c_uint* n_prerequisites);
	[LinkName("g_type_interfaces")]
	public static extern GLib.Type TypeInterfaces(GLib.Type type, c_uint* n_interfaces);
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
}