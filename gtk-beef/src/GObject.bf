namespace GObject;

using System;
using System.Interop;
using static GLib.GLib;

class GObject
{
	public typealias GSignalCMarshaller = GClosureMarshal;
	public typealias GSignalCVaMarshaller = GVaClosureMarshal;
	public typealias GType = c_ulong;
	public function void GBaseFinalizeFunc(void* g_class);
	public function void GBaseInitFunc(void* g_class);
	[CRepr]
	public struct GBinding;
	[LinkName("g_binding_dup_source")]
	public static extern GObject* bindindup_source(GBinding* binding);
	[LinkName("g_binding_dup_target")]
	public static extern GObject* bindindup_target(GBinding* binding);
	[LinkName("g_binding_get_flags")]
	public static extern GBindingFlags bindinget_flags(GBinding* binding);
	[LinkName("g_binding_get_source")]
	public static extern GObject* bindinget_source(GBinding* binding);
	[LinkName("g_binding_get_source_property")]
	public static extern  c_char* bindinget_source_property(GBinding* binding);
	[LinkName("g_binding_get_target")]
	public static extern GObject* bindinget_target(GBinding* binding);
	[LinkName("g_binding_get_target_property")]
	public static extern  c_char* bindinget_target_property(GBinding* binding);
	[LinkName("g_binding_unbind")]
	public static extern void bindinunbind(GBinding* binding);
	[CRepr]
	public struct GBindingFlags
	{
		public const int G_BINDING_DEFAULT = 0;
		public const int G_BINDING_BIDIRECTIONAL = 1;
		public const int G_BINDING_SYNC_CREATE = 2;
		public const int G_BINDING_INVERT_BOOLEAN = 4;
	}
	[CRepr]
	public struct GBindingGroup;
	[LinkName("g_binding_group_new")]
	public static extern GBindingGroup* bindingroup_new();
	[LinkName("g_binding_group_bind")]
	public static extern void bindingroup_bind(GBindingGroup* self,  c_char* source_property, void* target,  c_char* target_property, GBindingFlags flags);
	[LinkName("g_binding_group_bind_full")]
	public static extern void bindingroup_bind_full(GBindingGroup* self,  c_char* source_property, void* target,  c_char* target_property, GBindingFlags flags, GBindingTransformFunc transform_to, GBindingTransformFunc transform_from, void* user_data, GDestroyNotify user_data_destroy);
	[LinkName("g_binding_group_bind_with_closures")]
	public static extern void bindingroup_bind_with_closures(GBindingGroup* self,  c_char* source_property, void* target,  c_char* target_property, GBindingFlags flags, GClosure* transform_to, GClosure* transform_from);
	[LinkName("g_binding_group_dup_source")]
	public static extern void* bindingroup_dup_source(GBindingGroup* self);
	[LinkName("g_binding_group_set_source")]
	public static extern void bindingroup_set_source(GBindingGroup* self, void* source);
	public function c_int GBindingTransformFunc(GBinding* binding,  GValue* from_value, GValue* to_value, void* user_data);
	public function void* GBoxedCopyFunc(void* boxed);
	public function void GBoxedFreeFunc(void* boxed);
	[CRepr]
	public struct GCClosure
	{
		GClosure closure;
		void* callback;
	}
	public function void GCallback();
	public function void GClassFinalizeFunc(void* g_class, void* class_data);
	public function void GClassInitFunc(void* g_class, void* class_data);
	[CRepr]
	public struct GClosure
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
		GClosureNotifyData* notifiers;
	}
	public function void GClosureMarshal(GClosure* closure, GValue* return_value, c_uint n_param_values, void* invocation_hint, void* marshal_data);
	public function void GClosureNotify(void* data, GClosure* closure);
	[CRepr]
	public struct GClosureNotifyData
	{
		void* data;
		GClosureNotify notify;
	}
	[CRepr]
	public struct GConnectFlags
	{
		public const int G_CONNECT_DEFAULT = 0;
		public const int G_CONNECT_AFTER = 1;
		public const int G_CONNECT_SWAPPED = 2;
	}
	[CRepr]
	public struct GEnumClass
	{
		GTypeClass g_type_class;
		c_int minimum;
		c_int maximum;
		c_uint n_values;
		GEnumValue* values;
	}
	[CRepr]
	public struct GEnumValue
	{
		c_int value;
		 c_char* value_name;
		 c_char* value_nick;
	}
	[CRepr]
	public struct GFlagsClass
	{
		GTypeClass g_type_class;
		c_uint mask;
		c_uint n_values;
		GFlagsValue* values;
	}
	[CRepr]
	public struct GFlagsValue
	{
		c_uint value;
		 c_char* value_name;
		 c_char* value_nick;
	}
	[CRepr]
	public struct GInitiallyUnowned;
	[CRepr]
	public struct GInitiallyUnownedClass
	{
		GTypeClass g_type_class;
		GSList* construct_properties;
		c_ulong flags;
		c_ulong n_construct_properties;
		void* pspecs;
		c_ulong n_pspecs;
	}
	public function void GInstanceInitFunc(GTypeInstance* instance, void* g_class);
	public function void GInterfaceFinalizeFunc(void* g_iface, void* iface_data);
	[CRepr]
	public struct GInterfaceInfo
	{
		GInterfaceInitFunc interface_init;
		GInterfaceFinalizeFunc interface_finalize;
		void* interface_data;
	}
	public function void GInterfaceInitFunc(void* g_iface, void* iface_data);
	[CRepr]
	public struct GObject;
	[LinkName("g_object_new")]
	public static extern void* object_new(GType object_type,  c_char* first_property_name);
	[LinkName("g_object_new_valist")]
	public static extern GObject* object_new_valist(GType object_type,  c_char* first_property_name, VarArgs var_args);
	[LinkName("g_object_new_with_properties")]
	public static extern GObject* object_new_with_properties(GType object_type, c_uint n_properties);
	[LinkName("g_object_newv")]
	public static extern void* object_newv(GType object_type, c_uint n_parameters);
	[LinkName("g_object_add_toggle_ref")]
	public static extern void object_add_toggle_ref(GObject* object, GToggleNotify notify, void* data);
	[LinkName("g_object_add_weak_pointer")]
	public static extern void object_add_weak_pointer(GObject* object, void** weak_pointer_location);
	[LinkName("g_object_bind_property")]
	public static extern GBinding* object_bind_property(void* source,  c_char* source_property, void* target,  c_char* target_property, GBindingFlags flags);
	[LinkName("g_object_bind_property_full")]
	public static extern GBinding* object_bind_property_full(void* source,  c_char* source_property, void* target,  c_char* target_property, GBindingFlags flags, GBindingTransformFunc transform_to, GBindingTransformFunc transform_from, void* user_data, GDestroyNotify notify);
	[LinkName("g_object_bind_property_with_closures")]
	public static extern GBinding* object_bind_property_with_closures(void* source,  c_char* source_property, void* target,  c_char* target_property, GBindingFlags flags, GClosure* transform_to, GClosure* transform_from);
	[LinkName("g_object_connect")]
	public static extern void* object_connect(void* object,  c_char* signal_spec);
	[LinkName("g_object_disconnect")]
	public static extern void object_disconnect(void* object,  c_char* signal_spec);
	[LinkName("g_object_dup_data")]
	public static extern void* object_dup_data(GObject* object,  c_char* key, GDuplicateFunc dup_func, void* user_data);
	[LinkName("g_object_dup_qdata")]
	public static extern void* object_dup_qdata(GObject* object, GQuark quark, GDuplicateFunc dup_func, void* user_data);
	[LinkName("g_object_force_floating")]
	public static extern void object_force_floating(GObject* object);
	[LinkName("g_object_freeze_notify")]
	public static extern void object_freeze_notify(GObject* object);
	[LinkName("g_object_get")]
	public static extern void object_get(void* object,  c_char* first_property_name);
	[LinkName("g_object_get_data")]
	public static extern void* object_get_data(GObject* object,  c_char* key);
	[LinkName("g_object_get_property")]
	public static extern void object_get_property(GObject* object,  c_char* property_name, GValue* value);
	[LinkName("g_object_get_qdata")]
	public static extern void* object_get_qdata(GObject* object, GQuark quark);
	[LinkName("g_object_get_valist")]
	public static extern void object_get_valist(GObject* object,  c_char* first_property_name, VarArgs var_args);
	[LinkName("g_object_getv")]
	public static extern void object_getv(GObject* object, c_uint n_properties);
	[LinkName("g_object_is_floating")]
	public static extern c_int object_is_floating(void* object);
	[LinkName("g_object_notify")]
	public static extern void object_notify(GObject* object,  c_char* property_name);
	[LinkName("g_object_notify_by_pspec")]
	public static extern void object_notify_by_pspec(GObject* object, GParamSpec* pspec);
	[LinkName("g_object_ref")]
	public static extern void* object_ref(void* object);
	[LinkName("g_object_ref_sink")]
	public static extern void* object_ref_sink(void* object);
	[LinkName("g_object_remove_toggle_ref")]
	public static extern void object_remove_toggle_ref(GObject* object, GToggleNotify notify, void* data);
	[LinkName("g_object_remove_weak_pointer")]
	public static extern void object_remove_weak_pointer(GObject* object, void** weak_pointer_location);
	[LinkName("g_object_replace_data")]
	public static extern c_int object_replace_data(GObject* object,  c_char* key, void* oldval, void* newval, GDestroyNotify destroy, GDestroyNotify* old_destroy);
	[LinkName("g_object_replace_qdata")]
	public static extern c_int object_replace_qdata(GObject* object, GQuark quark, void* oldval, void* newval, GDestroyNotify destroy, GDestroyNotify* old_destroy);
	[LinkName("g_object_run_dispose")]
	public static extern void object_run_dispose(GObject* object);
	[LinkName("g_object_set")]
	public static extern void object_set(void* object,  c_char* first_property_name);
	[LinkName("g_object_set_data")]
	public static extern void object_set_data(GObject* object,  c_char* key, void* data);
	[LinkName("g_object_set_data_full")]
	public static extern void object_set_data_full(GObject* object,  c_char* key, void* data, GDestroyNotify destroy);
	[LinkName("g_object_set_property")]
	public static extern void object_set_property(GObject* object,  c_char* property_name,  GValue* value);
	[LinkName("g_object_set_qdata")]
	public static extern void object_set_qdata(GObject* object, GQuark quark, void* data);
	[LinkName("g_object_set_qdata_full")]
	public static extern void object_set_qdata_full(GObject* object, GQuark quark, void* data, GDestroyNotify destroy);
	[LinkName("g_object_set_valist")]
	public static extern void object_set_valist(GObject* object,  c_char* first_property_name, VarArgs var_args);
	[LinkName("g_object_setv")]
	public static extern void object_setv(GObject* object, c_uint n_properties);
	[LinkName("g_object_steal_data")]
	public static extern void* object_steal_data(GObject* object,  c_char* key);
	[LinkName("g_object_steal_qdata")]
	public static extern void* object_steal_qdata(GObject* object, GQuark quark);
	[LinkName("g_object_take_ref")]
	public static extern void* object_take_ref(void* object);
	[LinkName("g_object_thaw_notify")]
	public static extern void object_thaw_notify(GObject* object);
	[LinkName("g_object_unref")]
	public static extern void object_unref(void* object);
	[LinkName("g_object_watch_closure")]
	public static extern void object_watch_closure(GObject* object, GClosure* closure);
	[LinkName("g_object_weak_ref")]
	public static extern void object_weak_ref(GObject* object, GWeakNotify notify, void* data);
	[LinkName("g_object_weak_unref")]
	public static extern void object_weak_unref(GObject* object, GWeakNotify notify, void* data);
	[CRepr]
	public struct GObjectClass
	{
		GTypeClass g_type_class;
		GSList* construct_properties;
		c_ulong flags;
		c_ulong n_construct_properties;
		void* pspecs;
		c_ulong n_pspecs;
	}
	[CRepr]
	public struct GObjectConstructParam
	{
		GParamSpec* pspec;
		GValue* value;
	}
	public function void GObjectFinalizeFunc(GObject* object);
	public function void GObjectGetPropertyFunc(GObject* object, c_uint property_id, GValue* value, GParamSpec* pspec);
	public function void GObjectSetPropertyFunc(GObject* object, c_uint property_id,  GValue* value, GParamSpec* pspec);
	[CRepr]
	public struct GParamFlags
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
	public struct GParamSpec;
	[LinkName("g_param_spec_get_blurb")]
	public static extern  c_char* param_spec_get_blurb(GParamSpec* pspec);
	[LinkName("g_param_spec_get_default_value")]
	public static extern  GValue* param_spec_get_default_value(GParamSpec* pspec);
	[LinkName("g_param_spec_get_name")]
	public static extern  c_char* param_spec_get_name(GParamSpec* pspec);
	[LinkName("g_param_spec_get_name_quark")]
	public static extern GQuark param_spec_get_name_quark(GParamSpec* pspec);
	[LinkName("g_param_spec_get_nick")]
	public static extern  c_char* param_spec_get_nick(GParamSpec* pspec);
	[LinkName("g_param_spec_get_qdata")]
	public static extern void* param_spec_get_qdata(GParamSpec* pspec, GQuark quark);
	[LinkName("g_param_spec_get_redirect_target")]
	public static extern GParamSpec* param_spec_get_redirect_target(GParamSpec* pspec);
	[LinkName("g_param_spec_ref")]
	public static extern GParamSpec* param_spec_ref(GParamSpec* pspec);
	[LinkName("g_param_spec_ref_sink")]
	public static extern GParamSpec* param_spec_ref_sink(GParamSpec* pspec);
	[LinkName("g_param_spec_set_qdata")]
	public static extern void param_spec_set_qdata(GParamSpec* pspec, GQuark quark, void* data);
	[LinkName("g_param_spec_set_qdata_full")]
	public static extern void param_spec_set_qdata_full(GParamSpec* pspec, GQuark quark, void* data, GDestroyNotify destroy);
	[LinkName("g_param_spec_sink")]
	public static extern void param_spec_sink(GParamSpec* pspec);
	[LinkName("g_param_spec_steal_qdata")]
	public static extern void* param_spec_steal_qdata(GParamSpec* pspec, GQuark quark);
	[LinkName("g_param_spec_unref")]
	public static extern void param_spec_unref(GParamSpec* pspec);
	[CRepr]
	public struct GParamSpecBoolean;
	[CRepr]
	public struct GParamSpecBoxed;
	[CRepr]
	public struct GParamSpecChar;
	[CRepr]
	public struct GParamSpecClass
	{
		GTypeClass g_type_class;
		GType value_type;
	}
	[CRepr]
	public struct GParamSpecDouble;
	[CRepr]
	public struct GParamSpecEnum;
	[CRepr]
	public struct GParamSpecFlags;
	[CRepr]
	public struct GParamSpecFloat;
	[CRepr]
	public struct GParamSpecGType;
	[CRepr]
	public struct GParamSpecInt;
	[CRepr]
	public struct GParamSpecInt64;
	[CRepr]
	public struct GParamSpecLong;
	[CRepr]
	public struct GParamSpecObject;
	[CRepr]
	public struct GParamSpecOverride;
	[CRepr]
	public struct GParamSpecParam;
	[CRepr]
	public struct GParamSpecPointer;
	[CRepr]
	public struct GParamSpecPool
	{
	}
	[CRepr]
	public struct GParamSpecString;
	[CRepr]
	public struct GParamSpecTypeInfo
	{
		c_ushort instance_size;
		c_ushort n_preallocs;
		GType value_type;
	}
	[CRepr]
	public struct GParamSpecUChar;
	[CRepr]
	public struct GParamSpecUInt;
	[CRepr]
	public struct GParamSpecUInt64;
	[CRepr]
	public struct GParamSpecULong;
	[CRepr]
	public struct GParamSpecUnichar;
	[CRepr]
	public struct GParamSpecValueArray;
	[CRepr]
	public struct GParamSpecVariant;
	[CRepr]
	public struct GParameter
	{
		 c_char* name;
		GValue value;
	}
	public function c_int GSignalAccumulator(GSignalInvocationHint* ihint, GValue* return_accu,  GValue* handler_return, void* data);
	public function c_int GSignalEmissionHook(GSignalInvocationHint* ihint, c_uint n_param_values, void* data);
	[CRepr]
	public struct GSignalFlags
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
	public struct GSignalGroup;
	[LinkName("g_signal_group_new")]
	public static extern GSignalGroup* signal_group_new(GType target_type);
	[LinkName("g_signal_group_block")]
	public static extern void signal_group_block(GSignalGroup* self);
	[LinkName("g_signal_group_connect")]
	public static extern void signal_group_connect(GSignalGroup* self,  c_char* detailed_signal, GCallback c_handler, void* data);
	[LinkName("g_signal_group_connect_after")]
	public static extern void signal_group_connect_after(GSignalGroup* self,  c_char* detailed_signal, GCallback c_handler, void* data);
	[LinkName("g_signal_group_connect_closure")]
	public static extern void signal_group_connect_closure(GSignalGroup* self,  c_char* detailed_signal, GClosure* closure, c_int after);
	[LinkName("g_signal_group_connect_data")]
	public static extern void signal_group_connect_data(GSignalGroup* self,  c_char* detailed_signal, GCallback c_handler, void* data, GClosureNotify notify, GConnectFlags flags);
	[LinkName("g_signal_group_connect_object")]
	public static extern void signal_group_connect_object(GSignalGroup* self,  c_char* detailed_signal, GCallback c_handler, void* object, GConnectFlags flags);
	[LinkName("g_signal_group_connect_swapped")]
	public static extern void signal_group_connect_swapped(GSignalGroup* self,  c_char* detailed_signal, GCallback c_handler, void* data);
	[LinkName("g_signal_group_dup_target")]
	public static extern void* signal_group_dup_target(GSignalGroup* self);
	[LinkName("g_signal_group_set_target")]
	public static extern void signal_group_set_target(GSignalGroup* self, void* target);
	[LinkName("g_signal_group_unblock")]
	public static extern void signal_group_unblock(GSignalGroup* self);
	[CRepr]
	public struct GSignalInvocationHint
	{
		c_uint signal_id;
		GQuark detail;
		GSignalFlags run_type;
	}
	[CRepr]
	public struct GSignalMatchType
	{
		public const int G_SIGNAL_MATCH_ID = 1;
		public const int G_SIGNAL_MATCH_DETAIL = 2;
		public const int G_SIGNAL_MATCH_CLOSURE = 4;
		public const int G_SIGNAL_MATCH_FUNC = 8;
		public const int G_SIGNAL_MATCH_DATA = 16;
		public const int G_SIGNAL_MATCH_UNBLOCKED = 32;
	}
	[CRepr]
	public struct GSignalQuery
	{
		c_uint signal_id;
		 c_char* signal_name;
		GType itype;
		GSignalFlags signal_flags;
		GType return_type;
		c_uint n_params;
	}
	public function void GToggleNotify(void* data, GObject* object, c_int is_last_ref);
	[Union]
	public struct GTypeCValue
	{
	}
	[CRepr]
	public struct GTypeClass
	{
		GType g_type;
	}
	public function c_int GTypeClassCacheFunc(void* cache_data, GTypeClass* g_class);
	[CRepr]
	public struct GTypeDebugFlags
	{
		public const int G_TYPE_DEBUG_NONE = 0;
		public const int G_TYPE_DEBUG_OBJECTS = 1;
		public const int G_TYPE_DEBUG_SIGNALS = 2;
		public const int G_TYPE_DEBUG_INSTANCE_COUNT = 4;
		public const int G_TYPE_DEBUG_MASK = 7;
	}
	[CRepr]
	public struct GTypeFlags
	{
		public const int G_TYPE_FLAG_NONE = 0;
		public const int G_TYPE_FLAG_ABSTRACT = 16;
		public const int G_TYPE_FLAG_VALUE_ABSTRACT = 32;
		public const int G_TYPE_FLAG_FINAL = 64;
		public const int G_TYPE_FLAG_DEPRECATED = 128;
	}
	[CRepr]
	public struct GTypeFundamentalFlags
	{
		public const int G_TYPE_FLAG_CLASSED = 1;
		public const int G_TYPE_FLAG_INSTANTIATABLE = 2;
		public const int G_TYPE_FLAG_DERIVABLE = 4;
		public const int G_TYPE_FLAG_DEEP_DERIVABLE = 8;
	}
	[CRepr]
	public struct GTypeFundamentalInfo
	{
		GTypeFundamentalFlags type_flags;
	}
	[CRepr]
	public struct GTypeInfo
	{
		c_ushort class_size;
		GBaseInitFunc base_init;
		GBaseFinalizeFunc base_finalize;
		GClassInitFunc class_init;
		GClassFinalizeFunc class_finalize;
		void* class_data;
		c_ushort instance_size;
		c_ushort n_preallocs;
		GInstanceInitFunc instance_init;
		 GTypeValueTable* value_table;
	}
	[CRepr]
	public struct GTypeInstance
	{
		GTypeClass* g_class;
	}
	[CRepr]
	public struct GTypeInterface
	{
		GType g_type;
		GType g_instance_type;
	}
	public function void GTypeInterfaceCheckFunc(void* check_data, void* g_iface);
	[CRepr]
	public struct GTypeModule;
	[LinkName("g_type_module_add_interface")]
	public static extern void type_module_add_interface(GTypeModule* module, GType instance_type, GType interface_type,  GInterfaceInfo* interface_info);
	[LinkName("g_type_module_register_enum")]
	public static extern GType type_module_register_enum(GTypeModule* module,  c_char* name,  GEnumValue* const_static_values);
	[LinkName("g_type_module_register_flags")]
	public static extern GType type_module_register_flags(GTypeModule* module,  c_char* name,  GFlagsValue* const_static_values);
	[LinkName("g_type_module_register_type")]
	public static extern GType type_module_register_type(GTypeModule* module, GType parent_type,  c_char* type_name,  GTypeInfo* type_info, GTypeFlags flags);
	[LinkName("g_type_module_set_name")]
	public static extern void type_module_set_name(GTypeModule* module,  c_char* name);
	[LinkName("g_type_module_unuse")]
	public static extern void type_module_unuse(GTypeModule* module);
	[LinkName("g_type_module_use")]
	public static extern c_int type_module_use(GTypeModule* module);
	[CRepr]
	public struct GTypeModuleClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GTypePlugin
	{	}
	[CRepr]
	public struct GTypePluginClass
	{
		GTypeInterface base_iface;
		GTypePluginUse use_plugin;
		GTypePluginUnuse unuse_plugin;
		GTypePluginCompleteTypeInfo complete_type_info;
		GTypePluginCompleteInterfaceInfo complete_interface_info;
	}
	public function void GTypePluginCompleteInterfaceInfo(GTypePlugin* plugin, GType instance_type, GType interface_type, GInterfaceInfo* info);
	public function void GTypePluginCompleteTypeInfo(GTypePlugin* plugin, GType g_type, GTypeInfo* info, GTypeValueTable* value_table);
	public function void GTypePluginUnuse(GTypePlugin* plugin);
	public function void GTypePluginUse(GTypePlugin* plugin);
	[CRepr]
	public struct GTypeQuery
	{
		GType type;
		 c_char* type_name;
		c_uint class_size;
		c_uint instance_size;
	}
	[CRepr]
	public struct GTypeValueTable
	{
		 c_char* collect_format;
		 c_char* lcopy_format;
	}
	public function void GVaClosureMarshal(GClosure* closure, GValue* return_value, void* instance, VarArgs args, void* marshal_data, c_int n_params);
	[CRepr]
	public struct GValue
	{
		GType g_type;
	}
	[CRepr]
	public struct GValueArray
	{
		c_uint n_values;
		GValue* values;
		c_uint n_prealloced;
	}
	public function void GValueTransform( GValue* src_value, GValue* dest_value);
	public function void GWeakNotify(void* data, GObject* where_the_object_was);
	[CRepr]
	public struct GWeakRef
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