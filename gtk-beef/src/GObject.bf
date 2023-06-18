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
	public static extern Object BindindupSource(Binding binding);
	[LinkName("g_binding_dup_target")]
	public static extern Object BindindupTarget(Binding binding);
	[LinkName("g_binding_get_flags")]
	public static extern BindingFlags BindingetFlags(Binding binding);
	[LinkName("g_binding_get_source")]
	public static extern Object BindingetSource(Binding binding);
	[LinkName("g_binding_get_source_property")]
	public static extern char8* BindingetSourceProperty(Binding binding);
	[LinkName("g_binding_get_target")]
	public static extern Object BindingetTarget(Binding binding);
	[LinkName("g_binding_get_target_property")]
	public static extern char8* BindingetTargetProperty(Binding binding);
	[LinkName("g_binding_unbind")]
	public static extern void Bindinunbind(Binding binding);
	[CRepr]
	public struct BindingFlags
	{
		public const int G_BINDING_DEFAULT = 0;
		public const int G_BINDING_BIDIRECTIONAL = 1;
		public const int G_BINDING_SYNC_CREATE = 2;
		public const int G_BINDING_INVERT_BOOLEAN = 4;
	}
	[CRepr]
	public struct BindingGroup;
	[LinkName("g_binding_group_new")]
	public static extern BindingGroup BindingroupNew();
	[LinkName("g_binding_group_bind")]
	public static extern void BindingroupBind(BindingGroup self, char8* source_property, Object target, char8* target_property, BindingFlags flags);
	[LinkName("g_binding_group_bind_full")]
	public static extern void BindingroupBindFull(BindingGroup self, char8* source_property, Object target, char8* target_property, BindingFlags flags, BindingTransformFunc transform_to, BindingTransformFunc transform_from, void* user_data, GLib.DestroyNotify user_data_destroy);
	[LinkName("g_binding_group_bind_with_closures")]
	public static extern void BindingroupBindWithClosures(BindingGroup self, char8* source_property, Object target, char8* target_property, BindingFlags flags, Closure transform_to, Closure transform_from);
	[LinkName("g_binding_group_dup_source")]
	public static extern Object BindingroupDupSource(BindingGroup self);
	[LinkName("g_binding_group_set_source")]
	public static extern void BindingroupSetSource(BindingGroup self, Object source);
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
	public struct ConnectFlags
	{
		public const int G_CONNECT_DEFAULT = 0;
		public const int G_CONNECT_AFTER = 1;
		public const int G_CONNECT_SWAPPED = 2;
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
	[LinkName("g_object_new")]
	public static extern Object ObjectNew(GLib.Type object_type, char8* first_property_name);
	[LinkName("g_object_new_valist")]
	public static extern Object ObjectNewValist(GLib.Type object_type, char8* first_property_name, VarArgs var_args);
	[LinkName("g_object_new_with_properties")]
	public static extern Object ObjectNewWithProperties(GLib.Type object_type, c_uint n_properties);
	[LinkName("g_object_newv")]
	public static extern Object ObjectNewv(GLib.Type object_type, c_uint n_parameters);
	[LinkName("g_object_add_toggle_ref")]
	public static extern void ObjectAddToggleRef(Object object, ToggleNotify notify, void* data);
	[LinkName("g_object_add_weak_pointer")]
	public static extern void ObjectAddWeakPointer(Object object, void* weak_pointer_location);
	[LinkName("g_object_bind_property")]
	public static extern Binding ObjectBindProperty(Object source, char8* source_property, Object target, char8* target_property, BindingFlags flags);
	[LinkName("g_object_bind_property_full")]
	public static extern Binding ObjectBindPropertyFull(Object source, char8* source_property, Object target, char8* target_property, BindingFlags flags, BindingTransformFunc transform_to, BindingTransformFunc transform_from, void* user_data, GLib.DestroyNotify notify);
	[LinkName("g_object_bind_property_with_closures")]
	public static extern Binding ObjectBindPropertyWithClosures(Object source, char8* source_property, Object target, char8* target_property, BindingFlags flags, Closure transform_to, Closure transform_from);
	[LinkName("g_object_connect")]
	public static extern Object ObjectConnect(Object object, char8* signal_spec);
	[LinkName("g_object_disconnect")]
	public static extern void ObjectDisconnect(Object object, char8* signal_spec);
	[LinkName("g_object_dup_data")]
	public static extern void* ObjectDupData(Object object, char8* key, GLib.DuplicateFunc dup_func, void* user_data);
	[LinkName("g_object_dup_qdata")]
	public static extern void* ObjectDupQdata(Object object, GLib.Quark quark, GLib.DuplicateFunc dup_func, void* user_data);
	[LinkName("g_object_force_floating")]
	public static extern void ObjectForceFloating(Object object);
	[LinkName("g_object_freeze_notify")]
	public static extern void ObjectFreezeNotify(Object object);
	[LinkName("g_object_get")]
	public static extern void ObjectGet(Object object, char8* first_property_name);
	[LinkName("g_object_get_data")]
	public static extern void* ObjectGetData(Object object, char8* key);
	[LinkName("g_object_get_property")]
	public static extern void ObjectGetProperty(Object object, char8* property_name, Value value);
	[LinkName("g_object_get_qdata")]
	public static extern void* ObjectGetQdata(Object object, GLib.Quark quark);
	[LinkName("g_object_get_valist")]
	public static extern void ObjectGetValist(Object object, char8* first_property_name, VarArgs var_args);
	[LinkName("g_object_getv")]
	public static extern void ObjectGetv(Object object, c_uint n_properties);
	[LinkName("g_object_is_floating")]
	public static extern c_int ObjectIsFloating(Object object);
	[LinkName("g_object_notify")]
	public static extern void ObjectNotify(Object object, char8* property_name);
	[LinkName("g_object_notify_by_pspec")]
	public static extern void ObjectNotifyByPspec(Object object, ParamSpec pspec);
	[LinkName("g_object_ref")]
	public static extern Object ObjectRef(Object object);
	[LinkName("g_object_ref_sink")]
	public static extern Object ObjectRefSink(Object object);
	[LinkName("g_object_remove_toggle_ref")]
	public static extern void ObjectRemoveToggleRef(Object object, ToggleNotify notify, void* data);
	[LinkName("g_object_remove_weak_pointer")]
	public static extern void ObjectRemoveWeakPointer(Object object, void* weak_pointer_location);
	[LinkName("g_object_replace_data")]
	public static extern c_int ObjectReplaceData(Object object, char8* key, void* oldval, void* newval, GLib.DestroyNotify destroy, GLib.DestroyNotify old_destroy);
	[LinkName("g_object_replace_qdata")]
	public static extern c_int ObjectReplaceQdata(Object object, GLib.Quark quark, void* oldval, void* newval, GLib.DestroyNotify destroy, GLib.DestroyNotify old_destroy);
	[LinkName("g_object_run_dispose")]
	public static extern void ObjectRunDispose(Object object);
	[LinkName("g_object_set")]
	public static extern void ObjectSet(Object object, char8* first_property_name);
	[LinkName("g_object_set_data")]
	public static extern void ObjectSetData(Object object, char8* key, void* data);
	[LinkName("g_object_set_data_full")]
	public static extern void ObjectSetDataFull(Object object, char8* key, void* data, GLib.DestroyNotify destroy);
	[LinkName("g_object_set_property")]
	public static extern void ObjectSetProperty(Object object, char8* property_name, Value value);
	[LinkName("g_object_set_qdata")]
	public static extern void ObjectSetQdata(Object object, GLib.Quark quark, void* data);
	[LinkName("g_object_set_qdata_full")]
	public static extern void ObjectSetQdataFull(Object object, GLib.Quark quark, void* data, GLib.DestroyNotify destroy);
	[LinkName("g_object_set_valist")]
	public static extern void ObjectSetValist(Object object, char8* first_property_name, VarArgs var_args);
	[LinkName("g_object_setv")]
	public static extern void ObjectSetv(Object object, c_uint n_properties);
	[LinkName("g_object_steal_data")]
	public static extern void* ObjectStealData(Object object, char8* key);
	[LinkName("g_object_steal_qdata")]
	public static extern void* ObjectStealQdata(Object object, GLib.Quark quark);
	[LinkName("g_object_take_ref")]
	public static extern Object ObjectTakeRef(Object object);
	[LinkName("g_object_thaw_notify")]
	public static extern void ObjectThawNotify(Object object);
	[LinkName("g_object_unref")]
	public static extern void ObjectUnref(Object object);
	[LinkName("g_object_watch_closure")]
	public static extern void ObjectWatchClosure(Object object, Closure closure);
	[LinkName("g_object_weak_ref")]
	public static extern void ObjectWeakRef(Object object, WeakNotify notify, void* data);
	[LinkName("g_object_weak_unref")]
	public static extern void ObjectWeakUnref(Object object, WeakNotify notify, void* data);
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
	[CRepr]
	public struct ParamFlags
	{
		public const int G_PARAM_READABLE = 1;
		public const int G_PARAM_WRITABLE = 2;
		public const int G_PARAM_READWRITE = 3;
		public const int G_PARAM_CONSTRUCT = 4;
		public const int G_PARAM_CONSTRUCT_ONLY = 8;
		public const int G_PARAM_LAX_VALIDATION = 16;
		public const int G_PARAM_STATIC_NAME = 32;
		public const int G_PARAM_PRIVATE = 32;
		public const int G_PARAM_STATIC_NICK = 64;
		public const int G_PARAM_STATIC_BLURB = 128;
		public const int G_PARAM_EXPLICIT_NOTIFY = 1073741824;
		public const int G_PARAM_DEPRECATED = 2147483648;
	}
	[CRepr]
	public struct ParamSpec;
	[LinkName("g_param_spec_get_blurb")]
	public static extern char8* ParamSpecGetBlurb(ParamSpec pspec);
	[LinkName("g_param_spec_get_default_value")]
	public static extern Value ParamSpecGetDefaultValue(ParamSpec pspec);
	[LinkName("g_param_spec_get_name")]
	public static extern char8* ParamSpecGetName(ParamSpec pspec);
	[LinkName("g_param_spec_get_name_quark")]
	public static extern GLib.Quark ParamSpecGetNameQuark(ParamSpec pspec);
	[LinkName("g_param_spec_get_nick")]
	public static extern char8* ParamSpecGetNick(ParamSpec pspec);
	[LinkName("g_param_spec_get_qdata")]
	public static extern void* ParamSpecGetQdata(ParamSpec pspec, GLib.Quark quark);
	[LinkName("g_param_spec_get_redirect_target")]
	public static extern ParamSpec ParamSpecGetRedirectTarget(ParamSpec pspec);
	[LinkName("g_param_spec_ref")]
	public static extern ParamSpec ParamSpecRef(ParamSpec pspec);
	[LinkName("g_param_spec_ref_sink")]
	public static extern ParamSpec ParamSpecRefSink(ParamSpec pspec);
	[LinkName("g_param_spec_set_qdata")]
	public static extern void ParamSpecSetQdata(ParamSpec pspec, GLib.Quark quark, void* data);
	[LinkName("g_param_spec_set_qdata_full")]
	public static extern void ParamSpecSetQdataFull(ParamSpec pspec, GLib.Quark quark, void* data, GLib.DestroyNotify destroy);
	[LinkName("g_param_spec_sink")]
	public static extern void ParamSpecSink(ParamSpec pspec);
	[LinkName("g_param_spec_steal_qdata")]
	public static extern void* ParamSpecStealQdata(ParamSpec pspec, GLib.Quark quark);
	[LinkName("g_param_spec_unref")]
	public static extern void ParamSpecUnref(ParamSpec pspec);
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
	public struct SignalFlags
	{
		public const int G_SIGNAL_RUN_FIRST = 1;
		public const int G_SIGNAL_RUN_LAST = 2;
		public const int G_SIGNAL_RUN_CLEANUP = 4;
		public const int G_SIGNAL_NO_RECURSE = 8;
		public const int G_SIGNAL_DETAILED = 16;
		public const int G_SIGNAL_ACTION = 32;
		public const int G_SIGNAL_NO_HOOKS = 64;
		public const int G_SIGNAL_MUST_COLLECT = 128;
		public const int G_SIGNAL_DEPRECATED = 256;
		public const int G_SIGNAL_ACCUMULATOR_FIRST_RUN = 131072;
	}
	[CRepr]
	public struct SignalGroup;
	[LinkName("g_signal_group_new")]
	public static extern SignalGroup SignalGroupNew(GLib.Type target_type);
	[LinkName("g_signal_group_block")]
	public static extern void SignalGroupBlock(SignalGroup self);
	[LinkName("g_signal_group_connect")]
	public static extern void SignalGroupConnect(SignalGroup self, char8* detailed_signal, Callback c_handler, void* data);
	[LinkName("g_signal_group_connect_after")]
	public static extern void SignalGroupConnectAfter(SignalGroup self, char8* detailed_signal, Callback c_handler, void* data);
	[LinkName("g_signal_group_connect_closure")]
	public static extern void SignalGroupConnectClosure(SignalGroup self, char8* detailed_signal, Closure closure, c_int after);
	[LinkName("g_signal_group_connect_data")]
	public static extern void SignalGroupConnectData(SignalGroup self, char8* detailed_signal, Callback c_handler, void* data, ClosureNotify notify, ConnectFlags flags);
	[LinkName("g_signal_group_connect_object")]
	public static extern void SignalGroupConnectObject(SignalGroup self, char8* detailed_signal, Callback c_handler, void* object, ConnectFlags flags);
	[LinkName("g_signal_group_connect_swapped")]
	public static extern void SignalGroupConnectSwapped(SignalGroup self, char8* detailed_signal, Callback c_handler, void* data);
	[LinkName("g_signal_group_dup_target")]
	public static extern Object SignalGroupDupTarget(SignalGroup self);
	[LinkName("g_signal_group_set_target")]
	public static extern void SignalGroupSetTarget(SignalGroup self, Object target);
	[LinkName("g_signal_group_unblock")]
	public static extern void SignalGroupUnblock(SignalGroup self);
	[CRepr]
	public struct SignalInvocationHint
	{
		c_uint signal_id;
		GLib.Quark detail;
		SignalFlags run_type;
	}
	[CRepr]
	public struct SignalMatchType
	{
		public const int G_SIGNAL_MATCH_ID = 1;
		public const int G_SIGNAL_MATCH_DETAIL = 2;
		public const int G_SIGNAL_MATCH_CLOSURE = 4;
		public const int G_SIGNAL_MATCH_FUNC = 8;
		public const int G_SIGNAL_MATCH_DATA = 16;
		public const int G_SIGNAL_MATCH_UNBLOCKED = 32;
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
	public struct TypeDebugFlags
	{
		public const int G_TYPE_DEBUG_NONE = 0;
		public const int G_TYPE_DEBUG_OBJECTS = 1;
		public const int G_TYPE_DEBUG_SIGNALS = 2;
		public const int G_TYPE_DEBUG_INSTANCE_COUNT = 4;
		public const int G_TYPE_DEBUG_MASK = 7;
	}
	[CRepr]
	public struct TypeFlags
	{
		public const int G_TYPE_FLAG_NONE = 0;
		public const int G_TYPE_FLAG_ABSTRACT = 16;
		public const int G_TYPE_FLAG_VALUE_ABSTRACT = 32;
		public const int G_TYPE_FLAG_FINAL = 64;
		public const int G_TYPE_FLAG_DEPRECATED = 128;
	}
	[CRepr]
	public struct TypeFundamentalFlags
	{
		public const int G_TYPE_FLAG_CLASSED = 1;
		public const int G_TYPE_FLAG_INSTANTIATABLE = 2;
		public const int G_TYPE_FLAG_DERIVABLE = 4;
		public const int G_TYPE_FLAG_DEEP_DERIVABLE = 8;
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
	public static extern void TypeModuleAddInterface(TypeModule module, GLib.Type instance_type, GLib.Type interface_type, InterfaceInfo interface_info);
	[LinkName("g_type_module_register_enum")]
	public static extern GLib.Type TypeModuleRegisterEnum(TypeModule module, char8* name, EnumValue const_static_values);
	[LinkName("g_type_module_register_flags")]
	public static extern GLib.Type TypeModuleRegisterFlags(TypeModule module, char8* name, FlagsValue const_static_values);
	[LinkName("g_type_module_register_type")]
	public static extern GLib.Type TypeModuleRegisterType(TypeModule module, GLib.Type parent_type, char8* type_name, TypeInfo type_info, TypeFlags flags);
	[LinkName("g_type_module_set_name")]
	public static extern void TypeModuleSetName(TypeModule module, char8* name);
	[LinkName("g_type_module_unuse")]
	public static extern void TypeModuleUnuse(TypeModule module);
	[LinkName("g_type_module_use")]
	public static extern c_int TypeModuleUse(TypeModule module);
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
}