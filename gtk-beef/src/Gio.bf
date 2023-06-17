namespace Gio;

using System;
using System.Interop;

using static GLib.GLib;
using static GObject.GObject;

class Gio
{
	[CRepr]
	public struct GAction
	{
		public function void(GAction* action, GVariant* parameter) activate;

		public function void(GAction* action, GVariant* value) change_state;

		public function c_int(GAction* action) get_enabled;

		public function  c_char*(GAction* action) get_name;

		public function  GVariantType*(GAction* action) get_parameter_type;

		public function GVariant*(GAction* action) get_state;

		public function GVariant*(GAction* action) get_state_hint;

		public function  GVariantType*(GAction* action) get_state_type;
	}
	[CRepr]
	public struct GActionEntry
	{
		 c_char* name;
		 c_char* parameter_type;
		 c_char* state;
	}
	[CRepr]
	public struct GActionGroup
	{
		public function void(GActionGroup* action_group,  c_char* action_name) action_added;

		public function void(GActionGroup* action_group,  c_char* action_name, c_int enabled) action_enabled_changed;

		public function void(GActionGroup* action_group,  c_char* action_name) action_removed;

		public function void(GActionGroup* action_group,  c_char* action_name, GVariant* state) action_state_changed;

		public function void(GActionGroup* action_group,  c_char* action_name, GVariant* parameter) activate_action;

		public function void(GActionGroup* action_group,  c_char* action_name, GVariant* value) change_action_state;

		public function c_int(GActionGroup* action_group,  c_char* action_name) get_action_enabled;

		public function  GVariantType*(GActionGroup* action_group,  c_char* action_name) get_action_parameter_type;

		public function GVariant*(GActionGroup* action_group,  c_char* action_name) get_action_state;

		public function GVariant*(GActionGroup* action_group,  c_char* action_name) get_action_state_hint;

		public function  GVariantType*(GActionGroup* action_group,  c_char* action_name) get_action_state_type;

		public function c_int(GActionGroup* action_group,  c_char* action_name) has_action;

		public function c_int(GActionGroup* action_group) list_actions;

		public function c_int(GActionGroup* action_group,  c_char* action_name, c_int* enabled,  GVariantType** parameter_type,  GVariantType** state_type, GVariant** state_hint, GVariant** state) query_action;
	}
	[CRepr]
	public struct GActionGroupInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GActionInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GActionMap
	{
		public function void(GActionMap* action_map, GAction* action) add_action;

		public function GAction*(GActionMap* action_map,  c_char* action_name) lookup_action;

		public function void(GActionMap* action_map,  c_char* action_name) remove_action;
	}
	[CRepr]
	public struct GActionMapInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GAppInfo
	{
		public function c_int(GAppInfo* appinfo,  c_char* content_type) add_supports_type;

		public function c_int(GAppInfo* appinfo) can_delete;

		public function c_int(GAppInfo* appinfo) can_remove_supports_type;

		public function c_int(GAppInfo* appinfo) do_delete;

		public function GAppInfo*(GAppInfo* appinfo) dup;

		public function c_int(GAppInfo* appinfo1, GAppInfo* appinfo2) equal;

		public function  c_char*(GAppInfo* appinfo) get_commandline;

		public function  c_char*(GAppInfo* appinfo) get_description;

		public function  c_char*(GAppInfo* appinfo) get_display_name;

		public function  c_char*(GAppInfo* appinfo) get_executable;

		public function GIcon*(GAppInfo* appinfo) get_icon;

		public function  c_char*(GAppInfo* appinfo) get_id;

		public function  c_char*(GAppInfo* appinfo) get_name;

		public function  c_char*(GAppInfo* appinfo) get_supported_types;

		public function c_int(GAppInfo* appinfo, GList* files, GAppLaunchContext* context) launch;

		public function c_int(GAppInfo* appinfo, GList* uris, GAppLaunchContext* context) launch_uris;

		public function void(GAppInfo* appinfo, GList* uris, GAppLaunchContext* context, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) launch_uris_async;

		public function c_int(GAppInfo* appinfo, GAsyncResult* result) launch_uris_finish;

		public function c_int(GAppInfo* appinfo,  c_char* content_type) remove_supports_type;

		public function c_int(GAppInfo* appinfo,  c_char* extension_) set_as_default_for_extension;

		public function c_int(GAppInfo* appinfo,  c_char* content_type) set_as_default_for_type;

		public function c_int(GAppInfo* appinfo,  c_char* content_type) set_as_last_used_for_type;

		public function c_int(GAppInfo* appinfo) should_show;

		public function c_int(GAppInfo* appinfo) supports_files;

		public function c_int(GAppInfo* appinfo) supports_uris;
	}
	[CRepr]
	public struct GAppInfoCreateFlags
	{
		public const int G_APP_INFO_CREATE_NONE = 0;
		public const int G_APP_INFO_CREATE_NEEDS_TERMINAL = 1;
		public const int G_APP_INFO_CREATE_SUPPORTS_URIS = 2;
		public const int G_APP_INFO_CREATE_SUPPORTS_STARTUP_NOTIFICATION = 4;
	}
	[CRepr]
	public struct GAppInfoIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GAppInfoMonitor;
	[CRepr]
	public struct GAppLaunchContext;
	[LinkName("g_app_launch_context_new")]
	public static extern GAppLaunchContext* app_launch_context_new();
	[LinkName("g_app_launch_context_get_display")]
	public static extern c_char* app_launch_context_get_display(GAppLaunchContext* context, GAppInfo* info, GList* files);
	[LinkName("g_app_launch_context_get_environment")]
	public static extern c_char** app_launch_context_get_environment(GAppLaunchContext* context);
	[LinkName("g_app_launch_context_get_startup_notify_id")]
	public static extern c_char* app_launch_context_get_startup_notify_id(GAppLaunchContext* context, GAppInfo* info, GList* files);
	[LinkName("g_app_launch_context_launch_failed")]
	public static extern void app_launch_context_launch_failed(GAppLaunchContext* context,  c_char* startup_notify_id);
	[LinkName("g_app_launch_context_setenv")]
	public static extern void app_launch_context_setenv(GAppLaunchContext* context,  c_char* variable,  c_char* value);
	[LinkName("g_app_launch_context_unsetenv")]
	public static extern void app_launch_context_unsetenv(GAppLaunchContext* context,  c_char* variable);
	[CRepr]
	public struct GAppLaunchContextClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GAppLaunchContextPrivate
	{
	}
	[CRepr]
	public struct GApplication;
	[LinkName("g_application_new")]
	public static extern GApplication* application_new( c_char* application_id, GApplicationFlags flags);
	[LinkName("g_application_activate")]
	public static extern void application_activate(GApplication* application);
	[LinkName("g_application_add_main_option")]
	public static extern void application_add_main_option(GApplication* application,  c_char* long_name, c_char short_name, GOptionFlags flags, GOptionArg arg,  c_char* description,  c_char* arg_description);
	[LinkName("g_application_add_main_option_entries")]
	public static extern void application_add_main_option_entries(GApplication* application);
	[LinkName("g_application_add_option_group")]
	public static extern void application_add_option_group(GApplication* application, GOptionGroup* group);
	[LinkName("g_application_bind_busy_property")]
	public static extern void application_bind_busy_property(GApplication* application, void* object,  c_char* property);
	[LinkName("g_application_get_application_id")]
	public static extern  c_char* application_get_application_id(GApplication* application);
	[LinkName("g_application_get_dbus_connection")]
	public static extern GDBusConnection* application_get_dbus_connection(GApplication* application);
	[LinkName("g_application_get_dbus_object_path")]
	public static extern  c_char* application_get_dbus_object_path(GApplication* application);
	[LinkName("g_application_get_flags")]
	public static extern GApplicationFlags application_get_flags(GApplication* application);
	[LinkName("g_application_get_inactivity_timeout")]
	public static extern c_uint application_get_inactivity_timeout(GApplication* application);
	[LinkName("g_application_get_is_busy")]
	public static extern c_int application_get_is_busy(GApplication* application);
	[LinkName("g_application_get_is_registered")]
	public static extern c_int application_get_is_registered(GApplication* application);
	[LinkName("g_application_get_is_remote")]
	public static extern c_int application_get_is_remote(GApplication* application);
	[LinkName("g_application_get_resource_base_path")]
	public static extern  c_char* application_get_resource_base_path(GApplication* application);
	[LinkName("g_application_hold")]
	public static extern void application_hold(GApplication* application);
	[LinkName("g_application_mark_busy")]
	public static extern void application_mark_busy(GApplication* application);
	[LinkName("g_application_open")]
	public static extern void application_open(GApplication* application, c_int n_files,  c_char* hint);
	[LinkName("g_application_quit")]
	public static extern void application_quit(GApplication* application);
	[LinkName("g_application_register")]
	public static extern c_int application_register(GApplication* application, GCancellable* cancellable);
	[LinkName("g_application_release")]
	public static extern void application_release(GApplication* application);
	[LinkName("g_application_run")]
	public static extern c_int application_run(GApplication* application, c_int argc);
	[LinkName("g_application_send_notification")]
	public static extern void application_send_notification(GApplication* application,  c_char* id, GNotification* notification);
	[LinkName("g_application_set_action_group")]
	public static extern void application_set_action_group(GApplication* application, GActionGroup* action_group);
	[LinkName("g_application_set_application_id")]
	public static extern void application_set_application_id(GApplication* application,  c_char* application_id);
	[LinkName("g_application_set_default")]
	public static extern void application_set_default(GApplication* application);
	[LinkName("g_application_set_flags")]
	public static extern void application_set_flags(GApplication* application, GApplicationFlags flags);
	[LinkName("g_application_set_inactivity_timeout")]
	public static extern void application_set_inactivity_timeout(GApplication* application, c_uint inactivity_timeout);
	[LinkName("g_application_set_option_context_description")]
	public static extern void application_set_option_context_description(GApplication* application,  c_char* description);
	[LinkName("g_application_set_option_context_parameter_string")]
	public static extern void application_set_option_context_parameter_string(GApplication* application,  c_char* parameter_string);
	[LinkName("g_application_set_option_context_summary")]
	public static extern void application_set_option_context_summary(GApplication* application,  c_char* summary);
	[LinkName("g_application_set_resource_base_path")]
	public static extern void application_set_resource_base_path(GApplication* application,  c_char* resource_path);
	[LinkName("g_application_unbind_busy_property")]
	public static extern void application_unbind_busy_property(GApplication* application, void* object,  c_char* property);
	[LinkName("g_application_unmark_busy")]
	public static extern void application_unmark_busy(GApplication* application);
	[LinkName("g_application_withdraw_notification")]
	public static extern void application_withdraw_notification(GApplication* application,  c_char* id);
	[CRepr]
	public struct GApplicationClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GApplicationCommandLine;
	[LinkName("g_application_command_line_create_file_for_arg")]
	public static extern GFile* application_command_line_create_file_for_arg(GApplicationCommandLine* cmdline,  c_char* arg);
	[LinkName("g_application_command_line_get_arguments")]
	public static extern c_char** application_command_line_get_arguments(GApplicationCommandLine* cmdline, c_int* argc);
	[LinkName("g_application_command_line_get_cwd")]
	public static extern  c_char* application_command_line_get_cwd(GApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_get_environ")]
	public static extern  c_char* * application_command_line_get_environ(GApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_get_exit_status")]
	public static extern c_int application_command_line_get_exit_status(GApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_get_is_remote")]
	public static extern c_int application_command_line_get_is_remote(GApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_get_options_dict")]
	public static extern GVariantDict* application_command_line_get_options_dict(GApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_get_platform_data")]
	public static extern GVariant* application_command_line_get_platform_data(GApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_get_stdin")]
	public static extern GInputStream* application_command_line_get_stdin(GApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_getenv")]
	public static extern  c_char* application_command_line_getenv(GApplicationCommandLine* cmdline,  c_char* name);
	[LinkName("g_application_command_line_print")]
	public static extern void application_command_line_print(GApplicationCommandLine* cmdline,  c_char* format);
	[LinkName("g_application_command_line_printerr")]
	public static extern void application_command_line_printerr(GApplicationCommandLine* cmdline,  c_char* format);
	[LinkName("g_application_command_line_set_exit_status")]
	public static extern void application_command_line_set_exit_status(GApplicationCommandLine* cmdline, c_int exit_status);
	[CRepr]
	public struct GApplicationCommandLineClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GApplicationCommandLinePrivate
	{
	}
	[CRepr]
	public struct GApplicationFlags
	{
		public const int G_APPLICATION_FLAGS_NONE = 0;
		public const int G_APPLICATION_DEFAULT_FLAGS = 0;
		public const int G_APPLICATION_IS_SERVICE = 1;
		public const int G_APPLICATION_IS_LAUNCHER = 2;
		public const int G_APPLICATION_HANDLES_OPEN = 4;
		public const int G_APPLICATION_HANDLES_COMMAND_LINE = 8;
		public const int G_APPLICATION_SEND_ENVIRONMENT = 16;
		public const int G_APPLICATION_NON_UNIQUE = 32;
		public const int G_APPLICATION_CAN_OVERRIDE_APP_ID = 64;
		public const int G_APPLICATION_ALLOW_REPLACEMENT = 128;
		public const int G_APPLICATION_REPLACE = 256;
	}
	[CRepr]
	public struct GApplicationPrivate
	{
	}
	[CRepr]
	public struct GAskPasswordFlags
	{
		public const int G_ASK_PASSWORD_NEED_PASSWORD = 1;
		public const int G_ASK_PASSWORD_NEED_USERNAME = 2;
		public const int G_ASK_PASSWORD_NEED_DOMAIN = 4;
		public const int G_ASK_PASSWORD_SAVING_SUPPORTED = 8;
		public const int G_ASK_PASSWORD_ANONYMOUS_SUPPORTED = 16;
		public const int G_ASK_PASSWORD_TCRYPT = 32;
	}
	[CRepr]
	public struct GAsyncInitable
	{
		public function void(GAsyncInitable* initable, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) init_async;

		public function c_int(GAsyncInitable* initable, GAsyncResult* res) init_finish;
	}
	[CRepr]
	public struct GAsyncInitableIface
	{
		GTypeInterface g_iface;
	}
	public function void GAsyncReadyCallback(GObject* source_object, GAsyncResult* res, void* data);
	[CRepr]
	public struct GAsyncResult
	{
		public function GObject*(GAsyncResult* res) get_source_object;

		public function void*(GAsyncResult* res) get_user_data;

		public function c_int(GAsyncResult* res, void* source_tag) is_tagged;
	}
	[CRepr]
	public struct GAsyncResultIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GBufferedInputStream;
	[LinkName("g_buffered_input_stream_new")]
	public static extern GInputStream* buffered_input_stream_new(GInputStream* base_stream);
	[LinkName("g_buffered_input_stream_new_sized")]
	public static extern GInputStream* buffered_input_stream_new_sized(GInputStream* base_stream, c_ulong size);
	[LinkName("g_buffered_input_stream_fill")]
	public static extern c_long buffered_input_stream_fill(GBufferedInputStream* stream, c_long count, GCancellable* cancellable);
	[LinkName("g_buffered_input_stream_fill_async")]
	public static extern void buffered_input_stream_fill_async(GBufferedInputStream* stream, c_long count, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_buffered_input_stream_fill_finish")]
	public static extern c_long buffered_input_stream_fill_finish(GBufferedInputStream* stream, GAsyncResult* result);
	[LinkName("g_buffered_input_stream_get_available")]
	public static extern c_ulong buffered_input_stream_get_available(GBufferedInputStream* stream);
	[LinkName("g_buffered_input_stream_get_buffer_size")]
	public static extern c_ulong buffered_input_stream_get_buffer_size(GBufferedInputStream* stream);
	[LinkName("g_buffered_input_stream_peek")]
	public static extern c_ulong buffered_input_stream_peek(GBufferedInputStream* stream, c_ulong offset, c_ulong count);
	[LinkName("g_buffered_input_stream_peek_buffer")]
	public static extern void* buffered_input_stream_peek_buffer(GBufferedInputStream* stream, c_ulong* count);
	[LinkName("g_buffered_input_stream_read_byte")]
	public static extern c_int buffered_input_stream_read_byte(GBufferedInputStream* stream, GCancellable* cancellable);
	[LinkName("g_buffered_input_stream_set_buffer_size")]
	public static extern void buffered_input_stream_set_buffer_size(GBufferedInputStream* stream, c_ulong size);
	[CRepr]
	public struct GBufferedInputStreamClass
	{
		GFilterInputStreamClass parent_class;
	}
	[CRepr]
	public struct GBufferedInputStreamPrivate
	{
	}
	[CRepr]
	public struct GBufferedOutputStream;
	[LinkName("g_buffered_output_stream_new")]
	public static extern GOutputStream* buffered_output_stream_new(GOutputStream* base_stream);
	[LinkName("g_buffered_output_stream_new_sized")]
	public static extern GOutputStream* buffered_output_stream_new_sized(GOutputStream* base_stream, c_ulong size);
	[LinkName("g_buffered_output_stream_get_auto_grow")]
	public static extern c_int buffered_output_stream_get_auto_grow(GBufferedOutputStream* stream);
	[LinkName("g_buffered_output_stream_get_buffer_size")]
	public static extern c_ulong buffered_output_stream_get_buffer_size(GBufferedOutputStream* stream);
	[LinkName("g_buffered_output_stream_set_auto_grow")]
	public static extern void buffered_output_stream_set_auto_grow(GBufferedOutputStream* stream, c_int auto_grow);
	[LinkName("g_buffered_output_stream_set_buffer_size")]
	public static extern void buffered_output_stream_set_buffer_size(GBufferedOutputStream* stream, c_ulong size);
	[CRepr]
	public struct GBufferedOutputStreamClass
	{
		GFilterOutputStreamClass parent_class;
	}
	[CRepr]
	public struct GBufferedOutputStreamPrivate
	{
	}
	public function void GBusAcquiredCallback(GDBusConnection* connection,  c_char* name, void* user_data);
	public function void GBusNameAcquiredCallback(GDBusConnection* connection,  c_char* name, void* user_data);
	public function void GBusNameAppearedCallback(GDBusConnection* connection,  c_char* name,  c_char* name_owner, void* user_data);
	public function void GBusNameLostCallback(GDBusConnection* connection,  c_char* name, void* user_data);
	[CRepr]
	public struct GBusNameOwnerFlags
	{
		public const int G_BUS_NAME_OWNER_FLAGS_NONE = 0;
		public const int G_BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT = 1;
		public const int G_BUS_NAME_OWNER_FLAGS_REPLACE = 2;
		public const int G_BUS_NAME_OWNER_FLAGS_DO_NOT_QUEUE = 4;
	}
	public function void GBusNameVanishedCallback(GDBusConnection* connection,  c_char* name, void* user_data);
	[CRepr]
	public struct GBusNameWatcherFlags
	{
		public const int G_BUS_NAME_WATCHER_FLAGS_NONE = 0;
		public const int G_BUS_NAME_WATCHER_FLAGS_AUTO_START = 1;
	}
	public enum GBusType : c_int
	{
		G_BUS_TYPE_STARTER,
		G_BUS_TYPE_NONE,
		G_BUS_TYPE_SYSTEM,
		G_BUS_TYPE_SESSION
	}
	[CRepr]
	public struct GBytesIcon;
	[LinkName("g_bytes_icon_new")]
	public static extern GIcon* bytes_icon_new(GBytes* bytes);
	[LinkName("g_bytes_icon_get_bytes")]
	public static extern GBytes* bytes_icon_get_bytes(GBytesIcon* icon);
	[CRepr]
	public struct GCancellable;
	[LinkName("g_cancellable_new")]
	public static extern GCancellable* cancellable_new();
	[LinkName("g_cancellable_cancel")]
	public static extern void cancellable_cancel(GCancellable* cancellable);
	[LinkName("g_cancellable_connect")]
	public static extern c_ulong cancellable_connect(GCancellable* cancellable, GCallback callback, void* data, GDestroyNotify data_destroy_func);
	[LinkName("g_cancellable_disconnect")]
	public static extern void cancellable_disconnect(GCancellable* cancellable, c_ulong handler_id);
	[LinkName("g_cancellable_get_fd")]
	public static extern c_int cancellable_get_fd(GCancellable* cancellable);
	[LinkName("g_cancellable_is_cancelled")]
	public static extern c_int cancellable_is_cancelled(GCancellable* cancellable);
	[LinkName("g_cancellable_make_pollfd")]
	public static extern c_int cancellable_make_pollfd(GCancellable* cancellable, GPollFD* pollfd);
	[LinkName("g_cancellable_pop_current")]
	public static extern void cancellable_pop_current(GCancellable* cancellable);
	[LinkName("g_cancellable_push_current")]
	public static extern void cancellable_push_current(GCancellable* cancellable);
	[LinkName("g_cancellable_release_fd")]
	public static extern void cancellable_release_fd(GCancellable* cancellable);
	[LinkName("g_cancellable_reset")]
	public static extern void cancellable_reset(GCancellable* cancellable);
	[LinkName("g_cancellable_set_error_if_cancelled")]
	public static extern c_int cancellable_set_error_if_cancelled(GCancellable* cancellable);
	[LinkName("g_cancellable_source_new")]
	public static extern GSource* cancellable_source_new(GCancellable* cancellable);
	[CRepr]
	public struct GCancellableClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GCancellablePrivate
	{
	}
	public function c_int GCancellableSourceFunc(GCancellable* cancellable, void* data);
	[CRepr]
	public struct GCharsetConverter;
	[LinkName("g_charset_converter_new")]
	public static extern GCharsetConverter* charset_converter_new( c_char* to_charset,  c_char* from_charset);
	[LinkName("g_charset_converter_get_num_fallbacks")]
	public static extern c_uint charset_converter_get_num_fallbacks(GCharsetConverter* converter);
	[LinkName("g_charset_converter_get_use_fallback")]
	public static extern c_int charset_converter_get_use_fallback(GCharsetConverter* converter);
	[LinkName("g_charset_converter_set_use_fallback")]
	public static extern void charset_converter_set_use_fallback(GCharsetConverter* converter, c_int use_fallback);
	[CRepr]
	public struct GCharsetConverterClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GConverter
	{
		public function GConverterResult(GConverter* converter, c_ulong inbuf_size, c_ulong outbuf_size, GConverterFlags flags, c_ulong* bytes_read, c_ulong* bytes_written) convert;

		public function void(GConverter* converter) reset;
	}
	[CRepr]
	public struct GConverterFlags
	{
		public const int G_CONVERTER_NO_FLAGS = 0;
		public const int G_CONVERTER_INPUT_AT_END = 1;
		public const int G_CONVERTER_FLUSH = 2;
	}
	[CRepr]
	public struct GConverterIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GConverterInputStream;
	[LinkName("g_converter_input_stream_new")]
	public static extern GInputStream* converter_input_stream_new(GInputStream* base_stream, GConverter* converter);
	[LinkName("g_converter_input_stream_get_converter")]
	public static extern GConverter* converter_input_stream_get_converter(GConverterInputStream* converter_stream);
	[CRepr]
	public struct GConverterInputStreamClass
	{
		GFilterInputStreamClass parent_class;
	}
	[CRepr]
	public struct GConverterInputStreamPrivate
	{
	}
	[CRepr]
	public struct GConverterOutputStream;
	[LinkName("g_converter_output_stream_new")]
	public static extern GOutputStream* converter_output_stream_new(GOutputStream* base_stream, GConverter* converter);
	[LinkName("g_converter_output_stream_get_converter")]
	public static extern GConverter* converter_output_stream_get_converter(GConverterOutputStream* converter_stream);
	[CRepr]
	public struct GConverterOutputStreamClass
	{
		GFilterOutputStreamClass parent_class;
	}
	[CRepr]
	public struct GConverterOutputStreamPrivate
	{
	}
	public enum GConverterResult : c_int
	{
		G_CONVERTER_ERROR,
		G_CONVERTER_CONVERTED,
		G_CONVERTER_FINISHED,
		G_CONVERTER_FLUSHED
	}
	[CRepr]
	public struct GCredentials;
	[LinkName("g_credentials_new")]
	public static extern GCredentials* credentials_new();
	[LinkName("g_credentials_get_native")]
	public static extern void* credentials_get_native(GCredentials* credentials, GCredentialsType native_type);
	[LinkName("g_credentials_get_unix_pid")]
	public static extern c_int credentials_get_unix_pid(GCredentials* credentials);
	[LinkName("g_credentials_get_unix_user")]
	public static extern c_uint credentials_get_unix_user(GCredentials* credentials);
	[LinkName("g_credentials_is_same_user")]
	public static extern c_int credentials_is_same_user(GCredentials* credentials, GCredentials* other_credentials);
	[LinkName("g_credentials_set_native")]
	public static extern void credentials_set_native(GCredentials* credentials, GCredentialsType native_type, void* native);
	[LinkName("g_credentials_set_unix_user")]
	public static extern c_int credentials_set_unix_user(GCredentials* credentials, c_uint uid);
	[LinkName("g_credentials_to_string")]
	public static extern c_char* credentials_to_string(GCredentials* credentials);
	[CRepr]
	public struct GCredentialsClass
	{
	}
	public enum GCredentialsType : c_int
	{
		G_CREDENTIALS_TYPE_INVALID,
		G_CREDENTIALS_TYPE_LINUX_UCRED,
		G_CREDENTIALS_TYPE_FREEBSD_CMSGCRED,
		G_CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED,
		G_CREDENTIALS_TYPE_SOLARIS_UCRED,
		G_CREDENTIALS_TYPE_NETBSD_UNPCBID,
		G_CREDENTIALS_TYPE_APPLE_XUCRED,
		G_CREDENTIALS_TYPE_WIN32_PID
	}
	[CRepr]
	public struct GDBusActionGroup;
	[CRepr]
	public struct GDBusAnnotationInfo
	{
		c_int ref_count;
		c_char* key;
		c_char* value;
	}
	[CRepr]
	public struct GDBusArgInfo
	{
		c_int ref_count;
		c_char* name;
		c_char* signature;
	}
	[CRepr]
	public struct GDBusAuthObserver;
	[LinkName("g_dbus_auth_observer_new")]
	public static extern GDBusAuthObserver* dbus_auth_observer_new();
	[LinkName("g_dbus_auth_observer_allow_mechanism")]
	public static extern c_int dbus_auth_observer_allow_mechanism(GDBusAuthObserver* observer,  c_char* mechanism);
	[LinkName("g_dbus_auth_observer_authorize_authenticated_peer")]
	public static extern c_int dbus_auth_observer_authorize_authenticated_peer(GDBusAuthObserver* observer, GIOStream* stream, GCredentials* credentials);
	[CRepr]
	public struct GDBusCallFlags
	{
		public const int G_DBUS_CALL_FLAGS_NONE = 0;
		public const int G_DBUS_CALL_FLAGS_NO_AUTO_START = 1;
		public const int G_DBUS_CALL_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION = 2;
	}
	[CRepr]
	public struct GDBusCapabilityFlags
	{
		public const int G_DBUS_CAPABILITY_FLAGS_NONE = 0;
		public const int G_DBUS_CAPABILITY_FLAGS_UNIX_FD_PASSING = 1;
	}
	[CRepr]
	public struct GDBusConnection;
	[LinkName("g_dbus_connection_new_finish")]
	public static extern GDBusConnection* dbus_connection_new_finish(GAsyncResult* res);
	[LinkName("g_dbus_connection_new_for_address_finish")]
	public static extern GDBusConnection* dbus_connection_new_for_address_finish(GAsyncResult* res);
	[LinkName("g_dbus_connection_new_for_address_sync")]
	public static extern GDBusConnection* dbus_connection_new_for_address_sync( c_char* address, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable);
	[LinkName("g_dbus_connection_new_sync")]
	public static extern GDBusConnection* dbus_connection_new_sync(GIOStream* stream,  c_char* guid, GDBusConnectionFlags flags, GDBusAuthObserver* observer, GCancellable* cancellable);
	[LinkName("g_dbus_connection_add_filter")]
	public static extern c_uint dbus_connection_add_filter(GDBusConnection* connection, GDBusMessageFilterFunction filter_function, void* user_data, GDestroyNotify user_data_free_func);
	[LinkName("g_dbus_connection_call")]
	public static extern void dbus_connection_call(GDBusConnection* connection,  c_char* bus_name,  c_char* object_path,  c_char* interface_name,  c_char* method_name, GVariant* parameters,  GVariantType* reply_type, GDBusCallFlags flags, c_int timeout_msec, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_call_finish")]
	public static extern GVariant* dbus_connection_call_finish(GDBusConnection* connection, GAsyncResult* res);
	[LinkName("g_dbus_connection_call_sync")]
	public static extern GVariant* dbus_connection_call_sync(GDBusConnection* connection,  c_char* bus_name,  c_char* object_path,  c_char* interface_name,  c_char* method_name, GVariant* parameters,  GVariantType* reply_type, GDBusCallFlags flags, c_int timeout_msec, GCancellable* cancellable);
	[LinkName("g_dbus_connection_call_with_unix_fd_list")]
	public static extern void dbus_connection_call_with_unix_fd_list(GDBusConnection* connection,  c_char* bus_name,  c_char* object_path,  c_char* interface_name,  c_char* method_name, GVariant* parameters,  GVariantType* reply_type, GDBusCallFlags flags, c_int timeout_msec, GUnixFDList* fd_list, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_call_with_unix_fd_list_finish")]
	public static extern GVariant* dbus_connection_call_with_unix_fd_list_finish(GDBusConnection* connection, GUnixFDList** out_fd_list, GAsyncResult* res);
	[LinkName("g_dbus_connection_call_with_unix_fd_list_sync")]
	public static extern GVariant* dbus_connection_call_with_unix_fd_list_sync(GDBusConnection* connection,  c_char* bus_name,  c_char* object_path,  c_char* interface_name,  c_char* method_name, GVariant* parameters,  GVariantType* reply_type, GDBusCallFlags flags, c_int timeout_msec, GUnixFDList* fd_list, GUnixFDList** out_fd_list, GCancellable* cancellable);
	[LinkName("g_dbus_connection_close")]
	public static extern void dbus_connection_close(GDBusConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_close_finish")]
	public static extern c_int dbus_connection_close_finish(GDBusConnection* connection, GAsyncResult* res);
	[LinkName("g_dbus_connection_close_sync")]
	public static extern c_int dbus_connection_close_sync(GDBusConnection* connection, GCancellable* cancellable);
	[LinkName("g_dbus_connection_emit_signal")]
	public static extern c_int dbus_connection_emit_signal(GDBusConnection* connection,  c_char* destination_bus_name,  c_char* object_path,  c_char* interface_name,  c_char* signal_name, GVariant* parameters);
	[LinkName("g_dbus_connection_export_action_group")]
	public static extern c_uint dbus_connection_export_action_group(GDBusConnection* connection,  c_char* object_path, GActionGroup* action_group);
	[LinkName("g_dbus_connection_export_menu_model")]
	public static extern c_uint dbus_connection_export_menu_model(GDBusConnection* connection,  c_char* object_path, GMenuModel* menu);
	[LinkName("g_dbus_connection_flush")]
	public static extern void dbus_connection_flush(GDBusConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_flush_finish")]
	public static extern c_int dbus_connection_flush_finish(GDBusConnection* connection, GAsyncResult* res);
	[LinkName("g_dbus_connection_flush_sync")]
	public static extern c_int dbus_connection_flush_sync(GDBusConnection* connection, GCancellable* cancellable);
	[LinkName("g_dbus_connection_get_capabilities")]
	public static extern GDBusCapabilityFlags dbus_connection_get_capabilities(GDBusConnection* connection);
	[LinkName("g_dbus_connection_get_exit_on_close")]
	public static extern c_int dbus_connection_get_exit_on_close(GDBusConnection* connection);
	[LinkName("g_dbus_connection_get_flags")]
	public static extern GDBusConnectionFlags dbus_connection_get_flags(GDBusConnection* connection);
	[LinkName("g_dbus_connection_get_guid")]
	public static extern  c_char* dbus_connection_get_guid(GDBusConnection* connection);
	[LinkName("g_dbus_connection_get_last_serial")]
	public static extern c_uint dbus_connection_get_last_serial(GDBusConnection* connection);
	[LinkName("g_dbus_connection_get_peer_credentials")]
	public static extern GCredentials* dbus_connection_get_peer_credentials(GDBusConnection* connection);
	[LinkName("g_dbus_connection_get_stream")]
	public static extern GIOStream* dbus_connection_get_stream(GDBusConnection* connection);
	[LinkName("g_dbus_connection_get_unique_name")]
	public static extern  c_char* dbus_connection_get_unique_name(GDBusConnection* connection);
	[LinkName("g_dbus_connection_is_closed")]
	public static extern c_int dbus_connection_is_closed(GDBusConnection* connection);
	[LinkName("g_dbus_connection_register_object")]
	public static extern c_uint dbus_connection_register_object(GDBusConnection* connection,  c_char* object_path, GDBusInterfaceInfo* interface_info,  GDBusInterfaceVTable* vtable, void* user_data, GDestroyNotify user_data_free_func);
	[LinkName("g_dbus_connection_register_object_with_closures")]
	public static extern c_uint dbus_connection_register_object_with_closures(GDBusConnection* connection,  c_char* object_path, GDBusInterfaceInfo* interface_info, GClosure* method_call_closure, GClosure* get_property_closure, GClosure* set_property_closure);
	[LinkName("g_dbus_connection_register_subtree")]
	public static extern c_uint dbus_connection_register_subtree(GDBusConnection* connection,  c_char* object_path,  GDBusSubtreeVTable* vtable, GDBusSubtreeFlags flags, void* user_data, GDestroyNotify user_data_free_func);
	[LinkName("g_dbus_connection_remove_filter")]
	public static extern void dbus_connection_remove_filter(GDBusConnection* connection, c_uint filter_id);
	[LinkName("g_dbus_connection_send_message")]
	public static extern c_int dbus_connection_send_message(GDBusConnection* connection, GDBusMessage* message, GDBusSendMessageFlags flags,  c_uint* out_serial);
	[LinkName("g_dbus_connection_send_message_with_reply")]
	public static extern void dbus_connection_send_message_with_reply(GDBusConnection* connection, GDBusMessage* message, GDBusSendMessageFlags flags, c_int timeout_msec,  c_uint* out_serial, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_send_message_with_reply_finish")]
	public static extern GDBusMessage* dbus_connection_send_message_with_reply_finish(GDBusConnection* connection, GAsyncResult* res);
	[LinkName("g_dbus_connection_send_message_with_reply_sync")]
	public static extern GDBusMessage* dbus_connection_send_message_with_reply_sync(GDBusConnection* connection, GDBusMessage* message, GDBusSendMessageFlags flags, c_int timeout_msec,  c_uint* out_serial, GCancellable* cancellable);
	[LinkName("g_dbus_connection_set_exit_on_close")]
	public static extern void dbus_connection_set_exit_on_close(GDBusConnection* connection, c_int exit_on_close);
	[LinkName("g_dbus_connection_signal_subscribe")]
	public static extern c_uint dbus_connection_signal_subscribe(GDBusConnection* connection,  c_char* sender,  c_char* interface_name,  c_char* member,  c_char* object_path,  c_char* arg0, GDBusSignalFlags flags, GDBusSignalCallback callback, void* user_data, GDestroyNotify user_data_free_func);
	[LinkName("g_dbus_connection_signal_unsubscribe")]
	public static extern void dbus_connection_signal_unsubscribe(GDBusConnection* connection, c_uint subscription_id);
	[LinkName("g_dbus_connection_start_message_processing")]
	public static extern void dbus_connection_start_message_processing(GDBusConnection* connection);
	[LinkName("g_dbus_connection_unexport_action_group")]
	public static extern void dbus_connection_unexport_action_group(GDBusConnection* connection, c_uint export_id);
	[LinkName("g_dbus_connection_unexport_menu_model")]
	public static extern void dbus_connection_unexport_menu_model(GDBusConnection* connection, c_uint export_id);
	[LinkName("g_dbus_connection_unregister_object")]
	public static extern c_int dbus_connection_unregister_object(GDBusConnection* connection, c_uint registration_id);
	[LinkName("g_dbus_connection_unregister_subtree")]
	public static extern c_int dbus_connection_unregister_subtree(GDBusConnection* connection, c_uint registration_id);
	[CRepr]
	public struct GDBusConnectionFlags
	{
		public const int G_DBUS_CONNECTION_FLAGS_NONE = 0;
		public const int G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_CLIENT = 1;
		public const int G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER = 2;
		public const int G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS = 4;
		public const int G_DBUS_CONNECTION_FLAGS_MESSAGE_BUS_CONNECTION = 8;
		public const int G_DBUS_CONNECTION_FLAGS_DELAY_MESSAGE_PROCESSING = 16;
		public const int G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_REQUIRE_SAME_USER = 32;
		public const int G_DBUS_CONNECTION_FLAGS_CROSS_NAMESPACE = 64;
	}
	public enum GDBusError : c_int
	{
		G_DBUS_ERROR_FAILED,
		G_DBUS_ERROR_NO_MEMORY,
		G_DBUS_ERROR_SERVICE_UNKNOWN,
		G_DBUS_ERROR_NAME_HAS_NO_OWNER,
		G_DBUS_ERROR_NO_REPLY,
		G_DBUS_ERROR_IO_ERROR,
		G_DBUS_ERROR_BAD_ADDRESS,
		G_DBUS_ERROR_NOT_SUPPORTED,
		G_DBUS_ERROR_LIMITS_EXCEEDED,
		G_DBUS_ERROR_ACCESS_DENIED,
		G_DBUS_ERROR_AUTH_FAILED,
		G_DBUS_ERROR_NO_SERVER,
		G_DBUS_ERROR_TIMEOUT,
		G_DBUS_ERROR_NO_NETWORK,
		G_DBUS_ERROR_ADDRESS_IN_USE,
		G_DBUS_ERROR_DISCONNECTED,
		G_DBUS_ERROR_INVALID_ARGS,
		G_DBUS_ERROR_FILE_NOT_FOUND,
		G_DBUS_ERROR_FILE_EXISTS,
		G_DBUS_ERROR_UNKNOWN_METHOD,
		G_DBUS_ERROR_TIMED_OUT,
		G_DBUS_ERROR_MATCH_RULE_NOT_FOUND,
		G_DBUS_ERROR_MATCH_RULE_INVALID,
		G_DBUS_ERROR_SPAWN_EXEC_FAILED,
		G_DBUS_ERROR_SPAWN_FORK_FAILED,
		G_DBUS_ERROR_SPAWN_CHILD_EXITED,
		G_DBUS_ERROR_SPAWN_CHILD_SIGNALED,
		G_DBUS_ERROR_SPAWN_FAILED,
		G_DBUS_ERROR_SPAWN_SETUP_FAILED,
		G_DBUS_ERROR_SPAWN_CONFIG_INVALID,
		G_DBUS_ERROR_SPAWN_SERVICE_INVALID,
		G_DBUS_ERROR_SPAWN_SERVICE_NOT_FOUND,
		G_DBUS_ERROR_SPAWN_PERMISSIONS_INVALID,
		G_DBUS_ERROR_SPAWN_FILE_INVALID,
		G_DBUS_ERROR_SPAWN_NO_MEMORY,
		G_DBUS_ERROR_UNIX_PROCESS_ID_UNKNOWN,
		G_DBUS_ERROR_INVALID_SIGNATURE,
		G_DBUS_ERROR_INVALID_FILE_CONTENT,
		G_DBUS_ERROR_SELINUX_SECURITY_CONTEXT_UNKNOWN,
		G_DBUS_ERROR_ADT_AUDIT_DATA_UNKNOWN,
		G_DBUS_ERROR_OBJECT_PATH_IN_USE,
		G_DBUS_ERROR_UNKNOWN_OBJECT,
		G_DBUS_ERROR_UNKNOWN_INTERFACE,
		G_DBUS_ERROR_UNKNOWN_PROPERTY,
		G_DBUS_ERROR_PROPERTY_READ_ONLY
	}
	[CRepr]
	public struct GDBusErrorEntry
	{
		c_int error_code;
		 c_char* dbus_error_name;
	}
	[CRepr]
	public struct GDBusInterface
	{
		public function GDBusObject*(GDBusInterface* interface_) dup_object;

		public function GDBusInterfaceInfo*(GDBusInterface* interface_) get_info;

		public function GDBusObject*(GDBusInterface* interface_) get_object;

		public function void(GDBusInterface* interface_, GDBusObject* object) set_object;
	}
	public function GVariant* GDBusInterfaceGetPropertyFunc(GDBusConnection* connection,  c_char* sender,  c_char* object_path,  c_char* interface_name,  c_char* property_name, GError** error, void* user_data);
	[CRepr]
	public struct GDBusInterfaceIface
	{
		GTypeInterface parent_iface;
	}
	[CRepr]
	public struct GDBusInterfaceInfo
	{
		c_int ref_count;
		c_char* name;
	}
	public function void GDBusInterfaceMethodCallFunc(GDBusConnection* connection,  c_char* sender,  c_char* object_path,  c_char* interface_name,  c_char* method_name, GVariant* parameters, GDBusMethodInvocation* invocation, void* user_data);
	public function c_int GDBusInterfaceSetPropertyFunc(GDBusConnection* connection,  c_char* sender,  c_char* object_path,  c_char* interface_name,  c_char* property_name, GVariant* value, GError** error, void* user_data);
	[CRepr]
	public struct GDBusInterfaceSkeleton;
	[LinkName("g_dbus_interface_skeleton_export")]
	public static extern c_int dbus_interface_skeleton_export(GDBusInterfaceSkeleton* interface_, GDBusConnection* connection,  c_char* object_path);
	[LinkName("g_dbus_interface_skeleton_flush")]
	public static extern void dbus_interface_skeleton_flush(GDBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_get_connection")]
	public static extern GDBusConnection* dbus_interface_skeleton_get_connection(GDBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_get_connections")]
	public static extern GList* dbus_interface_skeleton_get_connections(GDBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_get_flags")]
	public static extern GDBusInterfaceSkeletonFlags dbus_interface_skeleton_get_flags(GDBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_get_info")]
	public static extern GDBusInterfaceInfo* dbus_interface_skeleton_get_info(GDBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_get_object_path")]
	public static extern  c_char* dbus_interface_skeleton_get_object_path(GDBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_get_properties")]
	public static extern GVariant* dbus_interface_skeleton_get_properties(GDBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_get_vtable")]
	public static extern GDBusInterfaceVTable* dbus_interface_skeleton_get_vtable(GDBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_has_connection")]
	public static extern c_int dbus_interface_skeleton_has_connection(GDBusInterfaceSkeleton* interface_, GDBusConnection* connection);
	[LinkName("g_dbus_interface_skeleton_set_flags")]
	public static extern void dbus_interface_skeleton_set_flags(GDBusInterfaceSkeleton* interface_, GDBusInterfaceSkeletonFlags flags);
	[LinkName("g_dbus_interface_skeleton_unexport")]
	public static extern void dbus_interface_skeleton_unexport(GDBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_unexport_from_connection")]
	public static extern void dbus_interface_skeleton_unexport_from_connection(GDBusInterfaceSkeleton* interface_, GDBusConnection* connection);
	[CRepr]
	public struct GDBusInterfaceSkeletonClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GDBusInterfaceSkeletonFlags
	{
		public const int G_DBUS_INTERFACE_SKELETON_FLAGS_NONE = 0;
		public const int G_DBUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD = 1;
	}
	[CRepr]
	public struct GDBusInterfaceSkeletonPrivate
	{
	}
	[CRepr]
	public struct GDBusInterfaceVTable
	{
		GDBusInterfaceMethodCallFunc method_call;
		GDBusInterfaceGetPropertyFunc get_property;
		GDBusInterfaceSetPropertyFunc set_property;
	}
	[CRepr]
	public struct GDBusMenuModel;
	[CRepr]
	public struct GDBusMessage;
	[LinkName("g_dbus_message_new")]
	public static extern GDBusMessage* dbus_message_new();
	[LinkName("g_dbus_message_new_from_blob")]
	public static extern GDBusMessage* dbus_message_new_from_blob(c_ulong blob_len, GDBusCapabilityFlags capabilities);
	[LinkName("g_dbus_message_new_method_call")]
	public static extern GDBusMessage* dbus_message_new_method_call( c_char* name,  c_char* path,  c_char* interface_,  c_char* method);
	[LinkName("g_dbus_message_new_signal")]
	public static extern GDBusMessage* dbus_message_new_signal( c_char* path,  c_char* interface_,  c_char* signal);
	[LinkName("g_dbus_message_copy")]
	public static extern GDBusMessage* dbus_message_copy(GDBusMessage* message);
	[LinkName("g_dbus_message_get_arg0")]
	public static extern  c_char* dbus_message_get_arg0(GDBusMessage* message);
	[LinkName("g_dbus_message_get_body")]
	public static extern GVariant* dbus_message_get_body(GDBusMessage* message);
	[LinkName("g_dbus_message_get_byte_order")]
	public static extern GDBusMessageByteOrder dbus_message_get_byte_order(GDBusMessage* message);
	[LinkName("g_dbus_message_get_destination")]
	public static extern  c_char* dbus_message_get_destination(GDBusMessage* message);
	[LinkName("g_dbus_message_get_error_name")]
	public static extern  c_char* dbus_message_get_error_name(GDBusMessage* message);
	[LinkName("g_dbus_message_get_flags")]
	public static extern GDBusMessageFlags dbus_message_get_flags(GDBusMessage* message);
	[LinkName("g_dbus_message_get_header")]
	public static extern GVariant* dbus_message_get_header(GDBusMessage* message, GDBusMessageHeaderField header_field);
	[LinkName("g_dbus_message_get_header_fields")]
	public static extern c_uchar* dbus_message_get_header_fields(GDBusMessage* message);
	[LinkName("g_dbus_message_get_interface")]
	public static extern  c_char* dbus_message_get_interface(GDBusMessage* message);
	[LinkName("g_dbus_message_get_locked")]
	public static extern c_int dbus_message_get_locked(GDBusMessage* message);
	[LinkName("g_dbus_message_get_member")]
	public static extern  c_char* dbus_message_get_member(GDBusMessage* message);
	[LinkName("g_dbus_message_get_message_type")]
	public static extern GDBusMessageType dbus_message_get_message_type(GDBusMessage* message);
	[LinkName("g_dbus_message_get_num_unix_fds")]
	public static extern c_uint dbus_message_get_num_unix_fds(GDBusMessage* message);
	[LinkName("g_dbus_message_get_path")]
	public static extern  c_char* dbus_message_get_path(GDBusMessage* message);
	[LinkName("g_dbus_message_get_reply_serial")]
	public static extern c_uint dbus_message_get_reply_serial(GDBusMessage* message);
	[LinkName("g_dbus_message_get_sender")]
	public static extern  c_char* dbus_message_get_sender(GDBusMessage* message);
	[LinkName("g_dbus_message_get_serial")]
	public static extern c_uint dbus_message_get_serial(GDBusMessage* message);
	[LinkName("g_dbus_message_get_signature")]
	public static extern  c_char* dbus_message_get_signature(GDBusMessage* message);
	[LinkName("g_dbus_message_get_unix_fd_list")]
	public static extern GUnixFDList* dbus_message_get_unix_fd_list(GDBusMessage* message);
	[LinkName("g_dbus_message_lock")]
	public static extern void dbus_message_lock(GDBusMessage* message);
	[LinkName("g_dbus_message_new_method_error")]
	public static extern GDBusMessage* dbus_message_new_method_error(GDBusMessage* method_call_message,  c_char* error_name,  c_char* error_message_format);
	[LinkName("g_dbus_message_new_method_error_literal")]
	public static extern GDBusMessage* dbus_message_new_method_error_literal(GDBusMessage* method_call_message,  c_char* error_name,  c_char* error_message);
	[LinkName("g_dbus_message_new_method_error_valist")]
	public static extern GDBusMessage* dbus_message_new_method_error_valist(GDBusMessage* method_call_message,  c_char* error_name,  c_char* error_message_format, VarArgs var_args);
	[LinkName("g_dbus_message_new_method_reply")]
	public static extern GDBusMessage* dbus_message_new_method_reply(GDBusMessage* method_call_message);
	[LinkName("g_dbus_message_print")]
	public static extern c_char* dbus_message_print(GDBusMessage* message, c_uint indent);
	[LinkName("g_dbus_message_set_body")]
	public static extern void dbus_message_set_body(GDBusMessage* message, GVariant* body);
	[LinkName("g_dbus_message_set_byte_order")]
	public static extern void dbus_message_set_byte_order(GDBusMessage* message, GDBusMessageByteOrder byte_order);
	[LinkName("g_dbus_message_set_destination")]
	public static extern void dbus_message_set_destination(GDBusMessage* message,  c_char* value);
	[LinkName("g_dbus_message_set_error_name")]
	public static extern void dbus_message_set_error_name(GDBusMessage* message,  c_char* value);
	[LinkName("g_dbus_message_set_flags")]
	public static extern void dbus_message_set_flags(GDBusMessage* message, GDBusMessageFlags flags);
	[LinkName("g_dbus_message_set_header")]
	public static extern void dbus_message_set_header(GDBusMessage* message, GDBusMessageHeaderField header_field, GVariant* value);
	[LinkName("g_dbus_message_set_interface")]
	public static extern void dbus_message_set_interface(GDBusMessage* message,  c_char* value);
	[LinkName("g_dbus_message_set_member")]
	public static extern void dbus_message_set_member(GDBusMessage* message,  c_char* value);
	[LinkName("g_dbus_message_set_message_type")]
	public static extern void dbus_message_set_message_type(GDBusMessage* message, GDBusMessageType type);
	[LinkName("g_dbus_message_set_num_unix_fds")]
	public static extern void dbus_message_set_num_unix_fds(GDBusMessage* message, c_uint value);
	[LinkName("g_dbus_message_set_path")]
	public static extern void dbus_message_set_path(GDBusMessage* message,  c_char* value);
	[LinkName("g_dbus_message_set_reply_serial")]
	public static extern void dbus_message_set_reply_serial(GDBusMessage* message, c_uint value);
	[LinkName("g_dbus_message_set_sender")]
	public static extern void dbus_message_set_sender(GDBusMessage* message,  c_char* value);
	[LinkName("g_dbus_message_set_serial")]
	public static extern void dbus_message_set_serial(GDBusMessage* message, c_uint serial);
	[LinkName("g_dbus_message_set_signature")]
	public static extern void dbus_message_set_signature(GDBusMessage* message,  c_char* value);
	[LinkName("g_dbus_message_set_unix_fd_list")]
	public static extern void dbus_message_set_unix_fd_list(GDBusMessage* message, GUnixFDList* fd_list);
	[LinkName("g_dbus_message_to_blob")]
	public static extern c_uchar* dbus_message_to_blob(GDBusMessage* message, c_ulong* out_size, GDBusCapabilityFlags capabilities);
	[LinkName("g_dbus_message_to_gerror")]
	public static extern c_int dbus_message_to_gerror(GDBusMessage* message);
	public enum GDBusMessageByteOrder : c_int
	{
		G_DBUS_MESSAGE_BYTE_ORDER_BIG_ENDIAN,
		G_DBUS_MESSAGE_BYTE_ORDER_LITTLE_ENDIAN
	}
	public function GDBusMessage* GDBusMessageFilterFunction(GDBusConnection* connection, GDBusMessage* message, c_int incoming, void* user_data);
	[CRepr]
	public struct GDBusMessageFlags
	{
		public const int G_DBUS_MESSAGE_FLAGS_NONE = 0;
		public const int G_DBUS_MESSAGE_FLAGS_NO_REPLY_EXPECTED = 1;
		public const int G_DBUS_MESSAGE_FLAGS_NO_AUTO_START = 2;
		public const int G_DBUS_MESSAGE_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION = 4;
	}
	public enum GDBusMessageHeaderField : c_int
	{
		G_DBUS_MESSAGE_HEADER_FIELD_INVALID,
		G_DBUS_MESSAGE_HEADER_FIELD_PATH,
		G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE,
		G_DBUS_MESSAGE_HEADER_FIELD_MEMBER,
		G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME,
		G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL,
		G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION,
		G_DBUS_MESSAGE_HEADER_FIELD_SENDER,
		G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE,
		G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS
	}
	public enum GDBusMessageType : c_int
	{
		G_DBUS_MESSAGE_TYPE_INVALID,
		G_DBUS_MESSAGE_TYPE_METHOD_CALL,
		G_DBUS_MESSAGE_TYPE_METHOD_RETURN,
		G_DBUS_MESSAGE_TYPE_ERROR,
		G_DBUS_MESSAGE_TYPE_SIGNAL
	}
	[CRepr]
	public struct GDBusMethodInfo
	{
		c_int ref_count;
		c_char* name;
	}
	[CRepr]
	public struct GDBusMethodInvocation;
	[LinkName("g_dbus_method_invocation_get_connection")]
	public static extern GDBusConnection* dbus_method_invocation_get_connection(GDBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_interface_name")]
	public static extern  c_char* dbus_method_invocation_get_interface_name(GDBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_message")]
	public static extern GDBusMessage* dbus_method_invocation_get_message(GDBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_method_info")]
	public static extern  GDBusMethodInfo* dbus_method_invocation_get_method_info(GDBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_method_name")]
	public static extern  c_char* dbus_method_invocation_get_method_name(GDBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_object_path")]
	public static extern  c_char* dbus_method_invocation_get_object_path(GDBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_parameters")]
	public static extern GVariant* dbus_method_invocation_get_parameters(GDBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_property_info")]
	public static extern  GDBusPropertyInfo* dbus_method_invocation_get_property_info(GDBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_sender")]
	public static extern  c_char* dbus_method_invocation_get_sender(GDBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_user_data")]
	public static extern void* dbus_method_invocation_get_user_data(GDBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_return_dbus_error")]
	public static extern void dbus_method_invocation_return_dbus_error(GDBusMethodInvocation* invocation,  c_char* error_name,  c_char* error_message);
	[LinkName("g_dbus_method_invocation_return_error")]
	public static extern void dbus_method_invocation_return_error(GDBusMethodInvocation* invocation, GQuark domain, c_int code,  c_char* format);
	[LinkName("g_dbus_method_invocation_return_error_literal")]
	public static extern void dbus_method_invocation_return_error_literal(GDBusMethodInvocation* invocation, GQuark domain, c_int code,  c_char* message);
	[LinkName("g_dbus_method_invocation_return_error_valist")]
	public static extern void dbus_method_invocation_return_error_valist(GDBusMethodInvocation* invocation, GQuark domain, c_int code,  c_char* format, VarArgs var_args);
	[LinkName("g_dbus_method_invocation_return_gerror")]
	public static extern void dbus_method_invocation_return_gerror(GDBusMethodInvocation* invocation,  GError* error);
	[LinkName("g_dbus_method_invocation_return_value")]
	public static extern void dbus_method_invocation_return_value(GDBusMethodInvocation* invocation, GVariant* parameters);
	[LinkName("g_dbus_method_invocation_return_value_with_unix_fd_list")]
	public static extern void dbus_method_invocation_return_value_with_unix_fd_list(GDBusMethodInvocation* invocation, GVariant* parameters, GUnixFDList* fd_list);
	[LinkName("g_dbus_method_invocation_take_error")]
	public static extern void dbus_method_invocation_take_error(GDBusMethodInvocation* invocation, GError* error);
	[CRepr]
	public struct GDBusNodeInfo
	{
		c_int ref_count;
		c_char* path;
	}
	[CRepr]
	public struct GDBusObject
	{
		public function GDBusInterface*(GDBusObject* object,  c_char* interface_name) get_interface;

		public function GList*(GDBusObject* object) get_interfaces;

		public function  c_char*(GDBusObject* object) get_object_path;

		public function void(GDBusObject* object, GDBusInterface* interface_) interface_added;

		public function void(GDBusObject* object, GDBusInterface* interface_) interface_removed;
	}
	[CRepr]
	public struct GDBusObjectIface
	{
		GTypeInterface parent_iface;
	}
	[CRepr]
	public struct GDBusObjectManager
	{
		public function GDBusInterface*(GDBusObjectManager* manager,  c_char* object_path,  c_char* interface_name) get_interface;

		public function GDBusObject*(GDBusObjectManager* manager,  c_char* object_path) get_object;

		public function  c_char*(GDBusObjectManager* manager) get_object_path;

		public function GList*(GDBusObjectManager* manager) get_objects;

		public function void(GDBusObjectManager* manager, GDBusObject* object, GDBusInterface* interface_) interface_added;

		public function void(GDBusObjectManager* manager, GDBusObject* object, GDBusInterface* interface_) interface_removed;

		public function void(GDBusObjectManager* manager, GDBusObject* object) object_added;

		public function void(GDBusObjectManager* manager, GDBusObject* object) object_removed;
	}
	[CRepr]
	public struct GDBusObjectManagerClient;
	[LinkName("g_dbus_object_manager_client_new_finish")]
	public static extern GDBusObjectManager* dbus_object_manager_client_new_finish(GAsyncResult* res);
	[LinkName("g_dbus_object_manager_client_new_for_bus_finish")]
	public static extern GDBusObjectManager* dbus_object_manager_client_new_for_bus_finish(GAsyncResult* res);
	[LinkName("g_dbus_object_manager_client_new_for_bus_sync")]
	public static extern GDBusObjectManager* dbus_object_manager_client_new_for_bus_sync(GBusType bus_type, GDBusObjectManagerClientFlags flags,  c_char* name,  c_char* object_path, GDBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, GDestroyNotify get_proxy_type_destroy_notify, GCancellable* cancellable);
	[LinkName("g_dbus_object_manager_client_new_sync")]
	public static extern GDBusObjectManager* dbus_object_manager_client_new_sync(GDBusConnection* connection, GDBusObjectManagerClientFlags flags,  c_char* name,  c_char* object_path, GDBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, GDestroyNotify get_proxy_type_destroy_notify, GCancellable* cancellable);
	[LinkName("g_dbus_object_manager_client_get_connection")]
	public static extern GDBusConnection* dbus_object_manager_client_get_connection(GDBusObjectManagerClient* manager);
	[LinkName("g_dbus_object_manager_client_get_flags")]
	public static extern GDBusObjectManagerClientFlags dbus_object_manager_client_get_flags(GDBusObjectManagerClient* manager);
	[LinkName("g_dbus_object_manager_client_get_name")]
	public static extern  c_char* dbus_object_manager_client_get_name(GDBusObjectManagerClient* manager);
	[LinkName("g_dbus_object_manager_client_get_name_owner")]
	public static extern c_char* dbus_object_manager_client_get_name_owner(GDBusObjectManagerClient* manager);
	[CRepr]
	public struct GDBusObjectManagerClientClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GDBusObjectManagerClientFlags
	{
		public const int G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_NONE = 0;
		public const int G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START = 1;
	}
	[CRepr]
	public struct GDBusObjectManagerClientPrivate
	{
	}
	[CRepr]
	public struct GDBusObjectManagerIface
	{
		GTypeInterface parent_iface;
	}
	[CRepr]
	public struct GDBusObjectManagerServer;
	[LinkName("g_dbus_object_manager_server_new")]
	public static extern GDBusObjectManagerServer* dbus_object_manager_server_new( c_char* object_path);
	[LinkName("g_dbus_object_manager_server_export")]
	public static extern void dbus_object_manager_server_export(GDBusObjectManagerServer* manager, GDBusObjectSkeleton* object);
	[LinkName("g_dbus_object_manager_server_export_uniquely")]
	public static extern void dbus_object_manager_server_export_uniquely(GDBusObjectManagerServer* manager, GDBusObjectSkeleton* object);
	[LinkName("g_dbus_object_manager_server_get_connection")]
	public static extern GDBusConnection* dbus_object_manager_server_get_connection(GDBusObjectManagerServer* manager);
	[LinkName("g_dbus_object_manager_server_is_exported")]
	public static extern c_int dbus_object_manager_server_is_exported(GDBusObjectManagerServer* manager, GDBusObjectSkeleton* object);
	[LinkName("g_dbus_object_manager_server_set_connection")]
	public static extern void dbus_object_manager_server_set_connection(GDBusObjectManagerServer* manager, GDBusConnection* connection);
	[LinkName("g_dbus_object_manager_server_unexport")]
	public static extern c_int dbus_object_manager_server_unexport(GDBusObjectManagerServer* manager,  c_char* object_path);
	[CRepr]
	public struct GDBusObjectManagerServerClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GDBusObjectManagerServerPrivate
	{
	}
	[CRepr]
	public struct GDBusObjectProxy;
	[LinkName("g_dbus_object_proxy_new")]
	public static extern GDBusObjectProxy* dbus_object_proxy_new(GDBusConnection* connection,  c_char* object_path);
	[LinkName("g_dbus_object_proxy_get_connection")]
	public static extern GDBusConnection* dbus_object_proxy_get_connection(GDBusObjectProxy* proxy);
	[CRepr]
	public struct GDBusObjectProxyClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GDBusObjectProxyPrivate
	{
	}
	[CRepr]
	public struct GDBusObjectSkeleton;
	[LinkName("g_dbus_object_skeleton_new")]
	public static extern GDBusObjectSkeleton* dbus_object_skeleton_new( c_char* object_path);
	[LinkName("g_dbus_object_skeleton_add_interface")]
	public static extern void dbus_object_skeleton_add_interface(GDBusObjectSkeleton* object, GDBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_object_skeleton_flush")]
	public static extern void dbus_object_skeleton_flush(GDBusObjectSkeleton* object);
	[LinkName("g_dbus_object_skeleton_remove_interface")]
	public static extern void dbus_object_skeleton_remove_interface(GDBusObjectSkeleton* object, GDBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_object_skeleton_remove_interface_by_name")]
	public static extern void dbus_object_skeleton_remove_interface_by_name(GDBusObjectSkeleton* object,  c_char* interface_name);
	[LinkName("g_dbus_object_skeleton_set_object_path")]
	public static extern void dbus_object_skeleton_set_object_path(GDBusObjectSkeleton* object,  c_char* object_path);
	[CRepr]
	public struct GDBusObjectSkeletonClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GDBusObjectSkeletonPrivate
	{
	}
	[CRepr]
	public struct GDBusPropertyInfo
	{
		c_int ref_count;
		c_char* name;
		c_char* signature;
		GDBusPropertyInfoFlags flags;
	}
	[CRepr]
	public struct GDBusPropertyInfoFlags
	{
		public const int G_DBUS_PROPERTY_INFO_FLAGS_NONE = 0;
		public const int G_DBUS_PROPERTY_INFO_FLAGS_READABLE = 1;
		public const int G_DBUS_PROPERTY_INFO_FLAGS_WRITABLE = 2;
	}
	[CRepr]
	public struct GDBusProxy;
	[LinkName("g_dbus_proxy_new_finish")]
	public static extern GDBusProxy* dbus_proxy_new_finish(GAsyncResult* res);
	[LinkName("g_dbus_proxy_new_for_bus_finish")]
	public static extern GDBusProxy* dbus_proxy_new_for_bus_finish(GAsyncResult* res);
	[LinkName("g_dbus_proxy_new_for_bus_sync")]
	public static extern GDBusProxy* dbus_proxy_new_for_bus_sync(GBusType bus_type, GDBusProxyFlags flags, GDBusInterfaceInfo* info,  c_char* name,  c_char* object_path,  c_char* interface_name, GCancellable* cancellable);
	[LinkName("g_dbus_proxy_new_sync")]
	public static extern GDBusProxy* dbus_proxy_new_sync(GDBusConnection* connection, GDBusProxyFlags flags, GDBusInterfaceInfo* info,  c_char* name,  c_char* object_path,  c_char* interface_name, GCancellable* cancellable);
	[LinkName("g_dbus_proxy_call")]
	public static extern void dbus_proxy_call(GDBusProxy* proxy,  c_char* method_name, GVariant* parameters, GDBusCallFlags flags, c_int timeout_msec, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_proxy_call_finish")]
	public static extern GVariant* dbus_proxy_call_finish(GDBusProxy* proxy, GAsyncResult* res);
	[LinkName("g_dbus_proxy_call_sync")]
	public static extern GVariant* dbus_proxy_call_sync(GDBusProxy* proxy,  c_char* method_name, GVariant* parameters, GDBusCallFlags flags, c_int timeout_msec, GCancellable* cancellable);
	[LinkName("g_dbus_proxy_call_with_unix_fd_list")]
	public static extern void dbus_proxy_call_with_unix_fd_list(GDBusProxy* proxy,  c_char* method_name, GVariant* parameters, GDBusCallFlags flags, c_int timeout_msec, GUnixFDList* fd_list, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_proxy_call_with_unix_fd_list_finish")]
	public static extern GVariant* dbus_proxy_call_with_unix_fd_list_finish(GDBusProxy* proxy, GUnixFDList** out_fd_list, GAsyncResult* res);
	[LinkName("g_dbus_proxy_call_with_unix_fd_list_sync")]
	public static extern GVariant* dbus_proxy_call_with_unix_fd_list_sync(GDBusProxy* proxy,  c_char* method_name, GVariant* parameters, GDBusCallFlags flags, c_int timeout_msec, GUnixFDList* fd_list, GUnixFDList** out_fd_list, GCancellable* cancellable);
	[LinkName("g_dbus_proxy_get_cached_property")]
	public static extern GVariant* dbus_proxy_get_cached_property(GDBusProxy* proxy,  c_char* property_name);
	[LinkName("g_dbus_proxy_get_cached_property_names")]
	public static extern c_char** dbus_proxy_get_cached_property_names(GDBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_connection")]
	public static extern GDBusConnection* dbus_proxy_get_connection(GDBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_default_timeout")]
	public static extern c_int dbus_proxy_get_default_timeout(GDBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_flags")]
	public static extern GDBusProxyFlags dbus_proxy_get_flags(GDBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_interface_info")]
	public static extern GDBusInterfaceInfo* dbus_proxy_get_interface_info(GDBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_interface_name")]
	public static extern  c_char* dbus_proxy_get_interface_name(GDBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_name")]
	public static extern  c_char* dbus_proxy_get_name(GDBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_name_owner")]
	public static extern c_char* dbus_proxy_get_name_owner(GDBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_object_path")]
	public static extern  c_char* dbus_proxy_get_object_path(GDBusProxy* proxy);
	[LinkName("g_dbus_proxy_set_cached_property")]
	public static extern void dbus_proxy_set_cached_property(GDBusProxy* proxy,  c_char* property_name, GVariant* value);
	[LinkName("g_dbus_proxy_set_default_timeout")]
	public static extern void dbus_proxy_set_default_timeout(GDBusProxy* proxy, c_int timeout_msec);
	[LinkName("g_dbus_proxy_set_interface_info")]
	public static extern void dbus_proxy_set_interface_info(GDBusProxy* proxy, GDBusInterfaceInfo* info);
	[CRepr]
	public struct GDBusProxyClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GDBusProxyFlags
	{
		public const int G_DBUS_PROXY_FLAGS_NONE = 0;
		public const int G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES = 1;
		public const int G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS = 2;
		public const int G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START = 4;
		public const int G_DBUS_PROXY_FLAGS_GET_INVALIDATED_PROPERTIES = 8;
		public const int G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START_AT_CONSTRUCTION = 16;
		public const int G_DBUS_PROXY_FLAGS_NO_MATCH_RULE = 32;
	}
	[CRepr]
	public struct GDBusProxyPrivate
	{
	}
	public function GType GDBusProxyTypeFunc(GDBusObjectManagerClient* manager,  c_char* object_path,  c_char* interface_name, void* data);
	[CRepr]
	public struct GDBusSendMessageFlags
	{
		public const int G_DBUS_SEND_MESSAGE_FLAGS_NONE = 0;
		public const int G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL = 1;
	}
	[CRepr]
	public struct GDBusServer;
	[LinkName("g_dbus_server_new_sync")]
	public static extern GDBusServer* dbus_server_new_sync( c_char* address, GDBusServerFlags flags,  c_char* guid, GDBusAuthObserver* observer, GCancellable* cancellable);
	[LinkName("g_dbus_server_get_client_address")]
	public static extern  c_char* dbus_server_get_client_address(GDBusServer* server);
	[LinkName("g_dbus_server_get_flags")]
	public static extern GDBusServerFlags dbus_server_get_flags(GDBusServer* server);
	[LinkName("g_dbus_server_get_guid")]
	public static extern  c_char* dbus_server_get_guid(GDBusServer* server);
	[LinkName("g_dbus_server_is_active")]
	public static extern c_int dbus_server_is_active(GDBusServer* server);
	[LinkName("g_dbus_server_start")]
	public static extern void dbus_server_start(GDBusServer* server);
	[LinkName("g_dbus_server_stop")]
	public static extern void dbus_server_stop(GDBusServer* server);
	[CRepr]
	public struct GDBusServerFlags
	{
		public const int G_DBUS_SERVER_FLAGS_NONE = 0;
		public const int G_DBUS_SERVER_FLAGS_RUN_IN_THREAD = 1;
		public const int G_DBUS_SERVER_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS = 2;
		public const int G_DBUS_SERVER_FLAGS_AUTHENTICATION_REQUIRE_SAME_USER = 4;
	}
	public function void GDBusSignalCallback(GDBusConnection* connection,  c_char* sender_name,  c_char* object_path,  c_char* interface_name,  c_char* signal_name, GVariant* parameters, void* user_data);
	[CRepr]
	public struct GDBusSignalFlags
	{
		public const int G_DBUS_SIGNAL_FLAGS_NONE = 0;
		public const int G_DBUS_SIGNAL_FLAGS_NO_MATCH_RULE = 1;
		public const int G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_NAMESPACE = 2;
		public const int G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_PATH = 4;
	}
	[CRepr]
	public struct GDBusSignalInfo
	{
		c_int ref_count;
		c_char* name;
	}
	public function  GDBusInterfaceVTable* GDBusSubtreeDispatchFunc(GDBusConnection* connection,  c_char* sender,  c_char* object_path,  c_char* interface_name,  c_char* node, void** out_user_data, void* user_data);
	public function c_char** GDBusSubtreeEnumerateFunc(GDBusConnection* connection,  c_char* sender,  c_char* object_path, void* user_data);
	[CRepr]
	public struct GDBusSubtreeFlags
	{
		public const int G_DBUS_SUBTREE_FLAGS_NONE = 0;
		public const int G_DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES = 1;
	}
	public function GDBusInterfaceInfo** GDBusSubtreeIntrospectFunc(GDBusConnection* connection,  c_char* sender,  c_char* object_path,  c_char* node, void* user_data);
	[CRepr]
	public struct GDBusSubtreeVTable
	{
		GDBusSubtreeEnumerateFunc enumerate;
		GDBusSubtreeIntrospectFunc introspect;
		GDBusSubtreeDispatchFunc dispatch;
	}
	[CRepr]
	public struct GDataInputStream;
	[LinkName("g_data_input_stream_new")]
	public static extern GDataInputStream* data_input_stream_new(GInputStream* base_stream);
	[LinkName("g_data_input_stream_get_byte_order")]
	public static extern GDataStreamByteOrder data_input_stream_get_byte_order(GDataInputStream* stream);
	[LinkName("g_data_input_stream_get_newline_type")]
	public static extern GDataStreamNewlineType data_input_stream_get_newline_type(GDataInputStream* stream);
	[LinkName("g_data_input_stream_read_byte")]
	public static extern c_uchar data_input_stream_read_byte(GDataInputStream* stream, GCancellable* cancellable);
	[LinkName("g_data_input_stream_read_int16")]
	public static extern c_short data_input_stream_read_int16(GDataInputStream* stream, GCancellable* cancellable);
	[LinkName("g_data_input_stream_read_int32")]
	public static extern c_int data_input_stream_read_int32(GDataInputStream* stream, GCancellable* cancellable);
	[LinkName("g_data_input_stream_read_int64")]
	public static extern c_longlong data_input_stream_read_int64(GDataInputStream* stream, GCancellable* cancellable);
	[LinkName("g_data_input_stream_read_line")]
	public static extern c_char* data_input_stream_read_line(GDataInputStream* stream, c_ulong* length, GCancellable* cancellable);
	[LinkName("g_data_input_stream_read_line_async")]
	public static extern void data_input_stream_read_line_async(GDataInputStream* stream, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_data_input_stream_read_line_finish")]
	public static extern c_char* data_input_stream_read_line_finish(GDataInputStream* stream, GAsyncResult* result, c_ulong* length);
	[LinkName("g_data_input_stream_read_line_finish_utf8")]
	public static extern c_char* data_input_stream_read_line_finish_utf8(GDataInputStream* stream, GAsyncResult* result, c_ulong* length);
	[LinkName("g_data_input_stream_read_line_utf8")]
	public static extern c_char* data_input_stream_read_line_utf8(GDataInputStream* stream, c_ulong* length, GCancellable* cancellable);
	[LinkName("g_data_input_stream_read_uint16")]
	public static extern c_ushort data_input_stream_read_uint16(GDataInputStream* stream, GCancellable* cancellable);
	[LinkName("g_data_input_stream_read_uint32")]
	public static extern c_uint data_input_stream_read_uint32(GDataInputStream* stream, GCancellable* cancellable);
	[LinkName("g_data_input_stream_read_uint64")]
	public static extern c_ulonglong data_input_stream_read_uint64(GDataInputStream* stream, GCancellable* cancellable);
	[LinkName("g_data_input_stream_read_until")]
	public static extern c_char* data_input_stream_read_until(GDataInputStream* stream,  c_char* stop_chars, c_ulong* length, GCancellable* cancellable);
	[LinkName("g_data_input_stream_read_until_async")]
	public static extern void data_input_stream_read_until_async(GDataInputStream* stream,  c_char* stop_chars, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_data_input_stream_read_until_finish")]
	public static extern c_char* data_input_stream_read_until_finish(GDataInputStream* stream, GAsyncResult* result, c_ulong* length);
	[LinkName("g_data_input_stream_read_upto")]
	public static extern c_char* data_input_stream_read_upto(GDataInputStream* stream,  c_char* stop_chars, c_long stop_chars_len, c_ulong* length, GCancellable* cancellable);
	[LinkName("g_data_input_stream_read_upto_async")]
	public static extern void data_input_stream_read_upto_async(GDataInputStream* stream,  c_char* stop_chars, c_long stop_chars_len, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_data_input_stream_read_upto_finish")]
	public static extern c_char* data_input_stream_read_upto_finish(GDataInputStream* stream, GAsyncResult* result, c_ulong* length);
	[LinkName("g_data_input_stream_set_byte_order")]
	public static extern void data_input_stream_set_byte_order(GDataInputStream* stream, GDataStreamByteOrder order);
	[LinkName("g_data_input_stream_set_newline_type")]
	public static extern void data_input_stream_set_newline_type(GDataInputStream* stream, GDataStreamNewlineType type);
	[CRepr]
	public struct GDataInputStreamClass
	{
		GBufferedInputStreamClass parent_class;
	}
	[CRepr]
	public struct GDataInputStreamPrivate
	{
	}
	[CRepr]
	public struct GDataOutputStream;
	[LinkName("g_data_output_stream_new")]
	public static extern GDataOutputStream* data_output_stream_new(GOutputStream* base_stream);
	[LinkName("g_data_output_stream_get_byte_order")]
	public static extern GDataStreamByteOrder data_output_stream_get_byte_order(GDataOutputStream* stream);
	[LinkName("g_data_output_stream_put_byte")]
	public static extern c_int data_output_stream_put_byte(GDataOutputStream* stream, c_uchar data, GCancellable* cancellable);
	[LinkName("g_data_output_stream_put_int16")]
	public static extern c_int data_output_stream_put_int16(GDataOutputStream* stream, c_short data, GCancellable* cancellable);
	[LinkName("g_data_output_stream_put_int32")]
	public static extern c_int data_output_stream_put_int32(GDataOutputStream* stream, c_int data, GCancellable* cancellable);
	[LinkName("g_data_output_stream_put_int64")]
	public static extern c_int data_output_stream_put_int64(GDataOutputStream* stream, c_longlong data, GCancellable* cancellable);
	[LinkName("g_data_output_stream_put_string")]
	public static extern c_int data_output_stream_put_string(GDataOutputStream* stream,  c_char* str, GCancellable* cancellable);
	[LinkName("g_data_output_stream_put_uint16")]
	public static extern c_int data_output_stream_put_uint16(GDataOutputStream* stream, c_ushort data, GCancellable* cancellable);
	[LinkName("g_data_output_stream_put_uint32")]
	public static extern c_int data_output_stream_put_uint32(GDataOutputStream* stream, c_uint data, GCancellable* cancellable);
	[LinkName("g_data_output_stream_put_uint64")]
	public static extern c_int data_output_stream_put_uint64(GDataOutputStream* stream, c_ulonglong data, GCancellable* cancellable);
	[LinkName("g_data_output_stream_set_byte_order")]
	public static extern void data_output_stream_set_byte_order(GDataOutputStream* stream, GDataStreamByteOrder order);
	[CRepr]
	public struct GDataOutputStreamClass
	{
		GFilterOutputStreamClass parent_class;
	}
	[CRepr]
	public struct GDataOutputStreamPrivate
	{
	}
	public enum GDataStreamByteOrder : c_int
	{
		G_DATA_STREAM_BYTE_ORDER_BIG_ENDIAN,
		G_DATA_STREAM_BYTE_ORDER_LITTLE_ENDIAN,
		G_DATA_STREAM_BYTE_ORDER_HOST_ENDIAN
	}
	public enum GDataStreamNewlineType : c_int
	{
		G_DATA_STREAM_NEWLINE_TYPE_LF,
		G_DATA_STREAM_NEWLINE_TYPE_CR,
		G_DATA_STREAM_NEWLINE_TYPE_CR_LF,
		G_DATA_STREAM_NEWLINE_TYPE_ANY
	}
	[CRepr]
	public struct GDatagramBased
	{
		public function GIOCondition(GDatagramBased* datagram_based, GIOCondition condition) condition_check;

		public function c_int(GDatagramBased* datagram_based, GIOCondition condition, c_longlong timeout, GCancellable* cancellable) condition_wait;

		public function GSource*(GDatagramBased* datagram_based, GIOCondition condition, GCancellable* cancellable) create_source;

		public function c_int(GDatagramBased* datagram_based, c_uint num_messages, c_int flags, c_longlong timeout, GCancellable* cancellable) receive_messages;

		public function c_int(GDatagramBased* datagram_based, c_uint num_messages, c_int flags, c_longlong timeout, GCancellable* cancellable) send_messages;
	}
	[CRepr]
	public struct GDatagramBasedInterface
	{
		GTypeInterface g_iface;
	}
	public function c_int GDatagramBasedSourceFunc(GDatagramBased* datagram_based, GIOCondition condition, void* data);
	[CRepr]
	public struct GDebugController
	{	}
	[CRepr]
	public struct GDebugControllerDBus;
	[LinkName("g_debug_controller_dbus_new")]
	public static extern GDebugControllerDBus* debucontroller_dbus_new(GDBusConnection* connection, GCancellable* cancellable);
	[LinkName("g_debug_controller_dbus_stop")]
	public static extern void debucontroller_dbus_stop(GDebugControllerDBus* self);
	[CRepr]
	public struct GDebugControllerDBusClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GDebugControllerInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GDesktopAppInfo;
	[LinkName("g_desktop_app_info_new")]
	public static extern GDesktopAppInfo* desktop_app_info_new( c_char* desktop_id);
	[LinkName("g_desktop_app_info_new_from_filename")]
	public static extern GDesktopAppInfo* desktop_app_info_new_from_filename( c_char* filename);
	[LinkName("g_desktop_app_info_new_from_keyfile")]
	public static extern GDesktopAppInfo* desktop_app_info_new_from_keyfile(GKeyFile* key_file);
	[LinkName("g_desktop_app_info_get_action_name")]
	public static extern c_char* desktop_app_info_get_action_name(GDesktopAppInfo* info,  c_char* action_name);
	[LinkName("g_desktop_app_info_get_boolean")]
	public static extern c_int desktop_app_info_get_boolean(GDesktopAppInfo* info,  c_char* key);
	[LinkName("g_desktop_app_info_get_categories")]
	public static extern  c_char* desktop_app_info_get_categories(GDesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_filename")]
	public static extern  c_char* desktop_app_info_get_filename(GDesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_generic_name")]
	public static extern  c_char* desktop_app_info_get_generic_name(GDesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_is_hidden")]
	public static extern c_int desktop_app_info_get_is_hidden(GDesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_keywords")]
	public static extern  c_char* * desktop_app_info_get_keywords(GDesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_locale_string")]
	public static extern c_char* desktop_app_info_get_locale_string(GDesktopAppInfo* info,  c_char* key);
	[LinkName("g_desktop_app_info_get_nodisplay")]
	public static extern c_int desktop_app_info_get_nodisplay(GDesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_show_in")]
	public static extern c_int desktop_app_info_get_show_in(GDesktopAppInfo* info,  c_char* desktop_env);
	[LinkName("g_desktop_app_info_get_startup_wm_class")]
	public static extern  c_char* desktop_app_info_get_startup_wm_class(GDesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_string")]
	public static extern c_char* desktop_app_info_get_string(GDesktopAppInfo* info,  c_char* key);
	[LinkName("g_desktop_app_info_get_string_list")]
	public static extern c_char** desktop_app_info_get_strinlist(GDesktopAppInfo* info,  c_char* key, c_ulong* length);
	[LinkName("g_desktop_app_info_has_key")]
	public static extern c_int desktop_app_info_has_key(GDesktopAppInfo* info,  c_char* key);
	[LinkName("g_desktop_app_info_launch_action")]
	public static extern void desktop_app_info_launch_action(GDesktopAppInfo* info,  c_char* action_name, GAppLaunchContext* launch_context);
	[LinkName("g_desktop_app_info_launch_uris_as_manager")]
	public static extern c_int desktop_app_info_launch_uris_as_manager(GDesktopAppInfo* appinfo, GList* uris, GAppLaunchContext* launch_context, GSpawnFlags spawn_flags, GSpawnChildSetupFunc user_setup, void* user_setup_data, GDesktopAppLaunchCallback pid_callback, void* pid_callback_data);
	[LinkName("g_desktop_app_info_launch_uris_as_manager_with_fds")]
	public static extern c_int desktop_app_info_launch_uris_as_manager_with_fds(GDesktopAppInfo* appinfo, GList* uris, GAppLaunchContext* launch_context, GSpawnFlags spawn_flags, GSpawnChildSetupFunc user_setup, void* user_setup_data, GDesktopAppLaunchCallback pid_callback, void* pid_callback_data, c_int stdin_fd, c_int stdout_fd, c_int stderr_fd);
	[LinkName("g_desktop_app_info_list_actions")]
	public static extern  c_char* * desktop_app_info_list_actions(GDesktopAppInfo* info);
	[CRepr]
	public struct GDesktopAppInfoClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GDesktopAppInfoLookup
	{
		public function GAppInfo*(GDesktopAppInfoLookup* lookup,  c_char* uri_scheme) get_default_for_uri_scheme;
	}
	[CRepr]
	public struct GDesktopAppInfoLookupIface
	{
		GTypeInterface g_iface;
	}
	public function void GDesktopAppLaunchCallback(GDesktopAppInfo* appinfo, GPid pid, void* user_data);
	[CRepr]
	public struct GDrive
	{
		public function c_int(GDrive* drive) can_eject;

		public function c_int(GDrive* drive) can_poll_for_media;

		public function c_int(GDrive* drive) can_start;

		public function c_int(GDrive* drive) can_start_degraded;

		public function c_int(GDrive* drive) can_stop;

		public function void(GDrive* drive) changed;

		public function void(GDrive* drive) disconnected;

		public function void(GDrive* drive, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) eject;

		public function void(GDrive* drive) eject_button;

		public function c_int(GDrive* drive, GAsyncResult* result) eject_finish;

		public function void(GDrive* drive, GMountUnmountFlags flags, GMountOperation* mount_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) eject_with_operation;

		public function c_int(GDrive* drive, GAsyncResult* result) eject_with_operation_finish;

		public function c_int(GDrive* drive) enumerate_identifiers;

		public function GIcon*(GDrive* drive) get_icon;

		public function c_char*(GDrive* drive,  c_char* kind) get_identifier;

		public function c_char*(GDrive* drive) get_name;

		public function  c_char*(GDrive* drive) get_sort_key;

		public function GDriveStartStopType(GDrive* drive) get_start_stop_type;

		public function GIcon*(GDrive* drive) get_symbolic_icon;

		public function GList*(GDrive* drive) get_volumes;

		public function c_int(GDrive* drive) has_media;

		public function c_int(GDrive* drive) has_volumes;

		public function c_int(GDrive* drive) is_media_check_automatic;

		public function c_int(GDrive* drive) is_media_removable;

		public function c_int(GDrive* drive) is_removable;

		public function void(GDrive* drive, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) poll_for_media;

		public function c_int(GDrive* drive, GAsyncResult* result) poll_for_media_finish;

		public function void(GDrive* drive, GDriveStartFlags flags, GMountOperation* mount_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) start;

		public function c_int(GDrive* drive, GAsyncResult* result) start_finish;

		public function void(GDrive* drive, GMountUnmountFlags flags, GMountOperation* mount_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) stop;

		public function void(GDrive* drive) stop_button;

		public function c_int(GDrive* drive, GAsyncResult* result) stop_finish;
	}
	[CRepr]
	public struct GDriveIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GDriveStartFlags
	{
		public const int G_DRIVE_START_NONE = 0;
	}
	public enum GDriveStartStopType : c_int
	{
		G_DRIVE_START_STOP_TYPE_UNKNOWN,
		G_DRIVE_START_STOP_TYPE_SHUTDOWN,
		G_DRIVE_START_STOP_TYPE_NETWORK,
		G_DRIVE_START_STOP_TYPE_MULTIDISK,
		G_DRIVE_START_STOP_TYPE_PASSWORD
	}
	[CRepr]
	public struct GDtlsClientConnection
	{	}
	[CRepr]
	public struct GDtlsClientConnectionInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GDtlsConnection
	{
		public function c_int(GDtlsConnection* connection, GTlsCertificate* peer_cert, GTlsCertificateFlags errors) accept_certificate;

		public function c_int(GDtlsConnection* conn, GTlsChannelBindingType type) get_binding_data;

		public function  c_char*(GDtlsConnection* conn) get_negotiated_protocol;

		public function c_int(GDtlsConnection* conn, GCancellable* cancellable) handshake;

		public function void(GDtlsConnection* conn, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) handshake_async;

		public function c_int(GDtlsConnection* conn, GAsyncResult* result) handshake_finish;

		public function void(GDtlsConnection* conn) set_advertised_protocols;

		public function c_int(GDtlsConnection* conn, c_int shutdown_read, c_int shutdown_write, GCancellable* cancellable) shutdown;

		public function void(GDtlsConnection* conn, c_int shutdown_read, c_int shutdown_write, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) shutdown_async;

		public function c_int(GDtlsConnection* conn, GAsyncResult* result) shutdown_finish;
	}
	[CRepr]
	public struct GDtlsConnectionInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GDtlsServerConnection
	{	}
	[CRepr]
	public struct GDtlsServerConnectionInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GEmblem;
	[LinkName("g_emblem_new")]
	public static extern GEmblem* emblem_new(GIcon* icon);
	[LinkName("g_emblem_new_with_origin")]
	public static extern GEmblem* emblem_new_with_origin(GIcon* icon, GEmblemOrigin origin);
	[LinkName("g_emblem_get_icon")]
	public static extern GIcon* emblem_get_icon(GEmblem* emblem);
	[LinkName("g_emblem_get_origin")]
	public static extern GEmblemOrigin emblem_get_origin(GEmblem* emblem);
	[CRepr]
	public struct GEmblemClass
	{
	}
	public enum GEmblemOrigin : c_int
	{
		G_EMBLEM_ORIGIN_UNKNOWN,
		G_EMBLEM_ORIGIN_DEVICE,
		G_EMBLEM_ORIGIN_LIVEMETADATA,
		G_EMBLEM_ORIGIN_TAG
	}
	[CRepr]
	public struct GEmblemedIcon;
	[LinkName("g_emblemed_icon_new")]
	public static extern GIcon* emblemed_icon_new(GIcon* icon, GEmblem* emblem);
	[LinkName("g_emblemed_icon_add_emblem")]
	public static extern void emblemed_icon_add_emblem(GEmblemedIcon* emblemed, GEmblem* emblem);
	[LinkName("g_emblemed_icon_clear_emblems")]
	public static extern void emblemed_icon_clear_emblems(GEmblemedIcon* emblemed);
	[LinkName("g_emblemed_icon_get_emblems")]
	public static extern GList* emblemed_icon_get_emblems(GEmblemedIcon* emblemed);
	[LinkName("g_emblemed_icon_get_icon")]
	public static extern GIcon* emblemed_icon_get_icon(GEmblemedIcon* emblemed);
	[CRepr]
	public struct GEmblemedIconClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GEmblemedIconPrivate
	{
	}
	[CRepr]
	public struct GFile
	{
		public function GFileOutputStream*(GFile* file, GFileCreateFlags flags, GCancellable* cancellable) append_to;

		public function void(GFile* file, GFileCreateFlags flags, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) append_to_async;

		public function GFileOutputStream*(GFile* file, GAsyncResult* res) append_to_finish;

		public function c_int(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progress_callback, void* progress_callback_data) copy;

		public function void(GFile* source, GFile* destination, GFileCopyFlags flags, c_int io_priority, GCancellable* cancellable, GFileProgressCallback progress_callback, void* progress_callback_data, GAsyncReadyCallback callback, void* user_data) copy_async;

		public function c_int(GFile* file, GAsyncResult* res) copy_finish;

		public function GFileOutputStream*(GFile* file, GFileCreateFlags flags, GCancellable* cancellable) create;

		public function void(GFile* file, GFileCreateFlags flags, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) create_async;

		public function GFileOutputStream*(GFile* file, GAsyncResult* res) create_finish;

		public function GFileIOStream*(GFile* file, GFileCreateFlags flags, GCancellable* cancellable) create_readwrite;

		public function void(GFile* file, GFileCreateFlags flags, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) create_readwrite_async;

		public function GFileIOStream*(GFile* file, GAsyncResult* res) create_readwrite_finish;

		public function c_int(GFile* file, GCancellable* cancellable) delete_file;

		public function void(GFile* file, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) delete_file_async;

		public function c_int(GFile* file, GAsyncResult* result) delete_file_finish;

		public function GFile*(GFile* file) dup;

		public function void(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) eject_mountable;

		public function c_int(GFile* file, GAsyncResult* result) eject_mountable_finish;

		public function void(GFile* file, GMountUnmountFlags flags, GMountOperation* mount_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) eject_mountable_with_operation;

		public function c_int(GFile* file, GAsyncResult* result) eject_mountable_with_operation_finish;

		public function GFileEnumerator*(GFile* file,  c_char* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable) enumerate_children;

		public function void(GFile* file,  c_char* attributes, GFileQueryInfoFlags flags, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) enumerate_children_async;

		public function GFileEnumerator*(GFile* file, GAsyncResult* res) enumerate_children_finish;

		public function c_int(GFile* file1, GFile* file2) equal;

		public function GMount*(GFile* file, GCancellable* cancellable) find_enclosing_mount;

		public function void(GFile* file, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) find_enclosing_mount_async;

		public function GMount*(GFile* file, GAsyncResult* res) find_enclosing_mount_finish;

		public function c_char*(GFile* file) get_basename;

		public function GFile*(GFile* file,  c_char* display_name) get_child_for_display_name;

		public function GFile*(GFile* file) get_parent;

		public function c_char*(GFile* file) get_parse_name;

		public function c_char*(GFile* file) get_path;

		public function c_char*(GFile* parent, GFile* descendant) get_relative_path;

		public function c_char*(GFile* file) get_uri;

		public function c_char*(GFile* file) get_uri_scheme;

		public function c_int(GFile* file,  c_char* uri_scheme) has_uri_scheme;

		public function c_uint(GFile* file) hash;

		public function c_int(GFile* file) is_native;

		public function c_int(GFile* file, GCancellable* cancellable) make_directory;

		public function void(GFile* file, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) make_directory_async;

		public function c_int(GFile* file, GAsyncResult* result) make_directory_finish;

		public function c_int(GFile* file,  c_char* symlink_value, GCancellable* cancellable) make_symbolic_link;

		public function void(GFile* file,  c_char* symlink_value, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) make_symbolic_link_async;

		public function c_int(GFile* file, GAsyncResult* result) make_symbolic_link_finish;

		public function c_int(GFile* file, GFileMeasureFlags flags, GCancellable* cancellable, GFileMeasureProgressCallback progress_callback, void* progress_data, c_ulonglong* disk_usage, c_ulonglong* num_dirs, c_ulonglong* num_files) measure_disk_usage;

		public function void(GFile* file, GFileMeasureFlags flags, c_int io_priority, GCancellable* cancellable, GFileMeasureProgressCallback progress_callback, void* progress_data, GAsyncReadyCallback callback, void* user_data) measure_disk_usage_async;

		public function c_int(GFile* file, GAsyncResult* result, c_ulonglong* disk_usage, c_ulonglong* num_dirs, c_ulonglong* num_files) measure_disk_usage_finish;

		public function GFileMonitor*(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable) monitor_dir;

		public function GFileMonitor*(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable) monitor_file;

		public function void(GFile* location, GMountMountFlags flags, GMountOperation* mount_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) mount_enclosing_volume;

		public function c_int(GFile* location, GAsyncResult* result) mount_enclosing_volume_finish;

		public function void(GFile* file, GMountMountFlags flags, GMountOperation* mount_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) mount_mountable;

		public function GFile*(GFile* file, GAsyncResult* result) mount_mountable_finish;

		public function c_int(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progress_callback, void* progress_callback_data) move;

		public function void(GFile* source, GFile* destination, GFileCopyFlags flags, c_int io_priority, GCancellable* cancellable, GFileProgressCallback progress_callback, void* progress_callback_data, GAsyncReadyCallback callback, void* user_data) move_async;

		public function c_int(GFile* file, GAsyncResult* result) move_finish;

		public function GFileIOStream*(GFile* file, GCancellable* cancellable) open_readwrite;

		public function void(GFile* file, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) open_readwrite_async;

		public function GFileIOStream*(GFile* file, GAsyncResult* res) open_readwrite_finish;

		public function void(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) poll_mountable;

		public function c_int(GFile* file, GAsyncResult* result) poll_mountable_finish;

		public function c_int(GFile* prefix, GFile* file) prefix_matches;

		public function GFileInfo*(GFile* file,  c_char* attributes, GCancellable* cancellable) query_filesystem_info;

		public function void(GFile* file,  c_char* attributes, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) query_filesystem_info_async;

		public function GFileInfo*(GFile* file, GAsyncResult* res) query_filesystem_info_finish;

		public function GFileInfo*(GFile* file,  c_char* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable) query_info;

		public function void(GFile* file,  c_char* attributes, GFileQueryInfoFlags flags, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) query_info_async;

		public function GFileInfo*(GFile* file, GAsyncResult* res) query_info_finish;

		public function GFileAttributeInfoList*(GFile* file, GCancellable* cancellable) query_settable_attributes;

		public function GFileAttributeInfoList*(GFile* file, GCancellable* cancellable) query_writable_namespaces;

		public function void(GFile* file, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) read_async;

		public function GFileInputStream*(GFile* file, GAsyncResult* res) read_finish;

		public function GFileInputStream*(GFile* file, GCancellable* cancellable) read_fn;

		public function GFileOutputStream*(GFile* file,  c_char* etag, c_int make_backup, GFileCreateFlags flags, GCancellable* cancellable) replace;

		public function void(GFile* file,  c_char* etag, c_int make_backup, GFileCreateFlags flags, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) replace_async;

		public function GFileOutputStream*(GFile* file, GAsyncResult* res) replace_finish;

		public function GFileIOStream*(GFile* file,  c_char* etag, c_int make_backup, GFileCreateFlags flags, GCancellable* cancellable) replace_readwrite;

		public function void(GFile* file,  c_char* etag, c_int make_backup, GFileCreateFlags flags, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) replace_readwrite_async;

		public function GFileIOStream*(GFile* file, GAsyncResult* res) replace_readwrite_finish;

		public function GFile*(GFile* file,  c_char* relative_path) resolve_relative_path;

		public function c_int(GFile* file,  c_char* attribute, GFileAttributeType type, void* value_p, GFileQueryInfoFlags flags, GCancellable* cancellable) set_attribute;

		public function void(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) set_attributes_async;

		public function c_int(GFile* file, GAsyncResult* result, GFileInfo** info) set_attributes_finish;

		public function c_int(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, GCancellable* cancellable) set_attributes_from_info;

		public function GFile*(GFile* file,  c_char* display_name, GCancellable* cancellable) set_display_name;

		public function void(GFile* file,  c_char* display_name, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) set_display_name_async;

		public function GFile*(GFile* file, GAsyncResult* res) set_display_name_finish;

		public function void(GFile* file, GDriveStartFlags flags, GMountOperation* start_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) start_mountable;

		public function c_int(GFile* file, GAsyncResult* result) start_mountable_finish;

		public function void(GFile* file, GMountUnmountFlags flags, GMountOperation* mount_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) stop_mountable;

		public function c_int(GFile* file, GAsyncResult* result) stop_mountable_finish;

		public function c_int(GFile* file, GCancellable* cancellable) trash;

		public function void(GFile* file, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) trash_async;

		public function c_int(GFile* file, GAsyncResult* result) trash_finish;

		public function void(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) unmount_mountable;

		public function c_int(GFile* file, GAsyncResult* result) unmount_mountable_finish;

		public function void(GFile* file, GMountUnmountFlags flags, GMountOperation* mount_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) unmount_mountable_with_operation;

		public function c_int(GFile* file, GAsyncResult* result) unmount_mountable_with_operation_finish;
	}
	[CRepr]
	public struct GFileAttributeInfo
	{
		c_char* name;
		GFileAttributeType type;
		GFileAttributeInfoFlags flags;
	}
	[CRepr]
	public struct GFileAttributeInfoFlags
	{
		public const int G_FILE_ATTRIBUTE_INFO_NONE = 0;
		public const int G_FILE_ATTRIBUTE_INFO_COPY_WITH_FILE = 1;
		public const int G_FILE_ATTRIBUTE_INFO_COPY_WHEN_MOVED = 2;
	}
	[CRepr]
	public struct GFileAttributeInfoList
	{
		GFileAttributeInfo* infos;
		c_int n_infos;
	}
	[CRepr]
	public struct GFileAttributeMatcher
	{
	}
	public enum GFileAttributeStatus : c_int
	{
		G_FILE_ATTRIBUTE_STATUS_UNSET,
		G_FILE_ATTRIBUTE_STATUS_SET,
		G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING
	}
	public enum GFileAttributeType : c_int
	{
		G_FILE_ATTRIBUTE_TYPE_INVALID,
		G_FILE_ATTRIBUTE_TYPE_STRING,
		G_FILE_ATTRIBUTE_TYPE_BYTE_STRING,
		G_FILE_ATTRIBUTE_TYPE_BOOLEAN,
		G_FILE_ATTRIBUTE_TYPE_UINT32,
		G_FILE_ATTRIBUTE_TYPE_INT32,
		G_FILE_ATTRIBUTE_TYPE_UINT64,
		G_FILE_ATTRIBUTE_TYPE_INT64,
		G_FILE_ATTRIBUTE_TYPE_OBJECT,
		G_FILE_ATTRIBUTE_TYPE_STRINGV
	}
	[CRepr]
	public struct GFileCopyFlags
	{
		public const int G_FILE_COPY_NONE = 0;
		public const int G_FILE_COPY_OVERWRITE = 1;
		public const int G_FILE_COPY_BACKUP = 2;
		public const int G_FILE_COPY_NOFOLLOW_SYMLINKS = 4;
		public const int G_FILE_COPY_ALL_METADATA = 8;
		public const int G_FILE_COPY_NO_FALLBACK_FOR_MOVE = 16;
		public const int G_FILE_COPY_TARGET_DEFAULT_PERMS = 32;
	}
	[CRepr]
	public struct GFileCreateFlags
	{
		public const int G_FILE_CREATE_NONE = 0;
		public const int G_FILE_CREATE_PRIVATE = 1;
		public const int G_FILE_CREATE_REPLACE_DESTINATION = 2;
	}
	[CRepr]
	public struct GFileDescriptorBased
	{
		public function c_int(GFileDescriptorBased* fd_based) get_fd;
	}
	[CRepr]
	public struct GFileDescriptorBasedIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GFileEnumerator;
	[LinkName("g_file_enumerator_close")]
	public static extern c_int file_enumerator_close(GFileEnumerator* enumerator, GCancellable* cancellable);
	[LinkName("g_file_enumerator_close_async")]
	public static extern void file_enumerator_close_async(GFileEnumerator* enumerator, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_enumerator_close_finish")]
	public static extern c_int file_enumerator_close_finish(GFileEnumerator* enumerator, GAsyncResult* result);
	[LinkName("g_file_enumerator_get_child")]
	public static extern GFile* file_enumerator_get_child(GFileEnumerator* enumerator, GFileInfo* info);
	[LinkName("g_file_enumerator_get_container")]
	public static extern GFile* file_enumerator_get_container(GFileEnumerator* enumerator);
	[LinkName("g_file_enumerator_has_pending")]
	public static extern c_int file_enumerator_has_pending(GFileEnumerator* enumerator);
	[LinkName("g_file_enumerator_is_closed")]
	public static extern c_int file_enumerator_is_closed(GFileEnumerator* enumerator);
	[LinkName("g_file_enumerator_iterate")]
	public static extern c_int file_enumerator_iterate(GFileEnumerator* direnum, GFileInfo** out_info, GFile** out_child, GCancellable* cancellable);
	[LinkName("g_file_enumerator_next_file")]
	public static extern GFileInfo* file_enumerator_next_file(GFileEnumerator* enumerator, GCancellable* cancellable);
	[LinkName("g_file_enumerator_next_files_async")]
	public static extern void file_enumerator_next_files_async(GFileEnumerator* enumerator, c_int num_files, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_enumerator_next_files_finish")]
	public static extern GList* file_enumerator_next_files_finish(GFileEnumerator* enumerator, GAsyncResult* result);
	[LinkName("g_file_enumerator_set_pending")]
	public static extern void file_enumerator_set_pending(GFileEnumerator* enumerator, c_int pending);
	[CRepr]
	public struct GFileEnumeratorClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GFileEnumeratorPrivate
	{
	}
	[CRepr]
	public struct GFileIOStream;
	[LinkName("g_file_io_stream_get_etag")]
	public static extern c_char* file_io_stream_get_etag(GFileIOStream* stream);
	[LinkName("g_file_io_stream_query_info")]
	public static extern GFileInfo* file_io_stream_query_info(GFileIOStream* stream,  c_char* attributes, GCancellable* cancellable);
	[LinkName("g_file_io_stream_query_info_async")]
	public static extern void file_io_stream_query_info_async(GFileIOStream* stream,  c_char* attributes, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_io_stream_query_info_finish")]
	public static extern GFileInfo* file_io_stream_query_info_finish(GFileIOStream* stream, GAsyncResult* result);
	[CRepr]
	public struct GFileIOStreamClass
	{
		GIOStreamClass parent_class;
	}
	[CRepr]
	public struct GFileIOStreamPrivate
	{
	}
	[CRepr]
	public struct GFileIcon;
	[LinkName("g_file_icon_new")]
	public static extern GIcon* file_icon_new(GFile* file);
	[LinkName("g_file_icon_get_file")]
	public static extern GFile* file_icon_get_file(GFileIcon* icon);
	[CRepr]
	public struct GFileIconClass
	{
	}
	[CRepr]
	public struct GFileIface
	{
		GTypeInterface g_iface;
		c_int supports_thread_contexts;
	}
	[CRepr]
	public struct GFileInfo;
	[LinkName("g_file_info_new")]
	public static extern GFileInfo* file_info_new();
	[LinkName("g_file_info_clear_status")]
	public static extern void file_info_clear_status(GFileInfo* info);
	[LinkName("g_file_info_copy_into")]
	public static extern void file_info_copy_into(GFileInfo* src_info, GFileInfo* dest_info);
	[LinkName("g_file_info_dup")]
	public static extern GFileInfo* file_info_dup(GFileInfo* other);
	[LinkName("g_file_info_get_access_date_time")]
	public static extern GDateTime* file_info_get_access_date_time(GFileInfo* info);
	[LinkName("g_file_info_get_attribute_as_string")]
	public static extern c_char* file_info_get_attribute_as_string(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_get_attribute_boolean")]
	public static extern c_int file_info_get_attribute_boolean(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_get_attribute_byte_string")]
	public static extern  c_char* file_info_get_attribute_byte_string(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_get_attribute_data")]
	public static extern c_int file_info_get_attribute_data(GFileInfo* info,  c_char* attribute, GFileAttributeType* type, void** value_pp, GFileAttributeStatus* status);
	[LinkName("g_file_info_get_attribute_int32")]
	public static extern c_int file_info_get_attribute_int32(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_get_attribute_int64")]
	public static extern c_longlong file_info_get_attribute_int64(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_get_attribute_object")]
	public static extern GObject* file_info_get_attribute_object(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_get_attribute_status")]
	public static extern GFileAttributeStatus file_info_get_attribute_status(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_get_attribute_string")]
	public static extern  c_char* file_info_get_attribute_string(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_get_attribute_stringv")]
	public static extern c_char** file_info_get_attribute_stringv(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_get_attribute_type")]
	public static extern GFileAttributeType file_info_get_attribute_type(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_get_attribute_uint32")]
	public static extern c_uint file_info_get_attribute_uint32(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_get_attribute_uint64")]
	public static extern c_ulonglong file_info_get_attribute_uint64(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_get_content_type")]
	public static extern  c_char* file_info_get_content_type(GFileInfo* info);
	[LinkName("g_file_info_get_creation_date_time")]
	public static extern GDateTime* file_info_get_creation_date_time(GFileInfo* info);
	[LinkName("g_file_info_get_deletion_date")]
	public static extern GDateTime* file_info_get_deletion_date(GFileInfo* info);
	[LinkName("g_file_info_get_display_name")]
	public static extern  c_char* file_info_get_display_name(GFileInfo* info);
	[LinkName("g_file_info_get_edit_name")]
	public static extern  c_char* file_info_get_edit_name(GFileInfo* info);
	[LinkName("g_file_info_get_etag")]
	public static extern  c_char* file_info_get_etag(GFileInfo* info);
	[LinkName("g_file_info_get_file_type")]
	public static extern GFileType file_info_get_file_type(GFileInfo* info);
	[LinkName("g_file_info_get_icon")]
	public static extern GIcon* file_info_get_icon(GFileInfo* info);
	[LinkName("g_file_info_get_is_backup")]
	public static extern c_int file_info_get_is_backup(GFileInfo* info);
	[LinkName("g_file_info_get_is_hidden")]
	public static extern c_int file_info_get_is_hidden(GFileInfo* info);
	[LinkName("g_file_info_get_is_symlink")]
	public static extern c_int file_info_get_is_symlink(GFileInfo* info);
	[LinkName("g_file_info_get_modification_date_time")]
	public static extern GDateTime* file_info_get_modification_date_time(GFileInfo* info);
	[LinkName("g_file_info_get_modification_time")]
	public static extern void file_info_get_modification_time(GFileInfo* info, GTimeVal* result);
	[LinkName("g_file_info_get_name")]
	public static extern  c_char* file_info_get_name(GFileInfo* info);
	[LinkName("g_file_info_get_size")]
	public static extern int64 file_info_get_size(GFileInfo* info);
	[LinkName("g_file_info_get_sort_order")]
	public static extern c_int file_info_get_sort_order(GFileInfo* info);
	[LinkName("g_file_info_get_symbolic_icon")]
	public static extern GIcon* file_info_get_symbolic_icon(GFileInfo* info);
	[LinkName("g_file_info_get_symlink_target")]
	public static extern  c_char* file_info_get_symlink_target(GFileInfo* info);
	[LinkName("g_file_info_has_attribute")]
	public static extern c_int file_info_has_attribute(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_has_namespace")]
	public static extern c_int file_info_has_namespace(GFileInfo* info,  c_char* name_space);
	[LinkName("g_file_info_list_attributes")]
	public static extern c_char** file_info_list_attributes(GFileInfo* info,  c_char* name_space);
	[LinkName("g_file_info_remove_attribute")]
	public static extern void file_info_remove_attribute(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_set_access_date_time")]
	public static extern void file_info_set_access_date_time(GFileInfo* info, GDateTime* atime);
	[LinkName("g_file_info_set_attribute")]
	public static extern void file_info_set_attribute(GFileInfo* info,  c_char* attribute, GFileAttributeType type, void* value_p);
	[LinkName("g_file_info_set_attribute_boolean")]
	public static extern void file_info_set_attribute_boolean(GFileInfo* info,  c_char* attribute, c_int attr_value);
	[LinkName("g_file_info_set_attribute_byte_string")]
	public static extern void file_info_set_attribute_byte_string(GFileInfo* info,  c_char* attribute,  c_char* attr_value);
	[LinkName("g_file_info_set_attribute_int32")]
	public static extern void file_info_set_attribute_int32(GFileInfo* info,  c_char* attribute, c_int attr_value);
	[LinkName("g_file_info_set_attribute_int64")]
	public static extern void file_info_set_attribute_int64(GFileInfo* info,  c_char* attribute, c_longlong attr_value);
	[LinkName("g_file_info_set_attribute_mask")]
	public static extern void file_info_set_attribute_mask(GFileInfo* info, GFileAttributeMatcher* mask);
	[LinkName("g_file_info_set_attribute_object")]
	public static extern void file_info_set_attribute_object(GFileInfo* info,  c_char* attribute, GObject* attr_value);
	[LinkName("g_file_info_set_attribute_status")]
	public static extern c_int file_info_set_attribute_status(GFileInfo* info,  c_char* attribute, GFileAttributeStatus status);
	[LinkName("g_file_info_set_attribute_string")]
	public static extern void file_info_set_attribute_string(GFileInfo* info,  c_char* attribute,  c_char* attr_value);
	[LinkName("g_file_info_set_attribute_stringv")]
	public static extern void file_info_set_attribute_stringv(GFileInfo* info,  c_char* attribute);
	[LinkName("g_file_info_set_attribute_uint32")]
	public static extern void file_info_set_attribute_uint32(GFileInfo* info,  c_char* attribute, c_uint attr_value);
	[LinkName("g_file_info_set_attribute_uint64")]
	public static extern void file_info_set_attribute_uint64(GFileInfo* info,  c_char* attribute, c_ulonglong attr_value);
	[LinkName("g_file_info_set_content_type")]
	public static extern void file_info_set_content_type(GFileInfo* info,  c_char* content_type);
	[LinkName("g_file_info_set_creation_date_time")]
	public static extern void file_info_set_creation_date_time(GFileInfo* info, GDateTime* creation_time);
	[LinkName("g_file_info_set_display_name")]
	public static extern void file_info_set_display_name(GFileInfo* info,  c_char* display_name);
	[LinkName("g_file_info_set_edit_name")]
	public static extern void file_info_set_edit_name(GFileInfo* info,  c_char* edit_name);
	[LinkName("g_file_info_set_file_type")]
	public static extern void file_info_set_file_type(GFileInfo* info, GFileType type);
	[LinkName("g_file_info_set_icon")]
	public static extern void file_info_set_icon(GFileInfo* info, GIcon* icon);
	[LinkName("g_file_info_set_is_hidden")]
	public static extern void file_info_set_is_hidden(GFileInfo* info, c_int is_hidden);
	[LinkName("g_file_info_set_is_symlink")]
	public static extern void file_info_set_is_symlink(GFileInfo* info, c_int is_symlink);
	[LinkName("g_file_info_set_modification_date_time")]
	public static extern void file_info_set_modification_date_time(GFileInfo* info, GDateTime* mtime);
	[LinkName("g_file_info_set_modification_time")]
	public static extern void file_info_set_modification_time(GFileInfo* info, GTimeVal* mtime);
	[LinkName("g_file_info_set_name")]
	public static extern void file_info_set_name(GFileInfo* info,  c_char* name);
	[LinkName("g_file_info_set_size")]
	public static extern void file_info_set_size(GFileInfo* info, int64 size);
	[LinkName("g_file_info_set_sort_order")]
	public static extern void file_info_set_sort_order(GFileInfo* info, c_int sort_order);
	[LinkName("g_file_info_set_symbolic_icon")]
	public static extern void file_info_set_symbolic_icon(GFileInfo* info, GIcon* icon);
	[LinkName("g_file_info_set_symlink_target")]
	public static extern void file_info_set_symlink_target(GFileInfo* info,  c_char* symlink_target);
	[LinkName("g_file_info_unset_attribute_mask")]
	public static extern void file_info_unset_attribute_mask(GFileInfo* info);
	[CRepr]
	public struct GFileInfoClass
	{
	}
	[CRepr]
	public struct GFileInputStream;
	[LinkName("g_file_input_stream_query_info")]
	public static extern GFileInfo* file_input_stream_query_info(GFileInputStream* stream,  c_char* attributes, GCancellable* cancellable);
	[LinkName("g_file_input_stream_query_info_async")]
	public static extern void file_input_stream_query_info_async(GFileInputStream* stream,  c_char* attributes, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_input_stream_query_info_finish")]
	public static extern GFileInfo* file_input_stream_query_info_finish(GFileInputStream* stream, GAsyncResult* result);
	[CRepr]
	public struct GFileInputStreamClass
	{
		GInputStreamClass parent_class;
	}
	[CRepr]
	public struct GFileInputStreamPrivate
	{
	}
	[CRepr]
	public struct GFileMeasureFlags
	{
		public const int G_FILE_MEASURE_NONE = 0;
		public const int G_FILE_MEASURE_REPORT_ANY_ERROR = 2;
		public const int G_FILE_MEASURE_APPARENT_SIZE = 4;
		public const int G_FILE_MEASURE_NO_XDEV = 8;
	}
	public function void GFileMeasureProgressCallback(c_int reporting, c_ulonglong current_size, c_ulonglong num_dirs, c_ulonglong num_files, void* data);
	[CRepr]
	public struct GFileMonitor;
	[LinkName("g_file_monitor_cancel")]
	public static extern c_int file_monitor_cancel(GFileMonitor* monitor);
	[LinkName("g_file_monitor_emit_event")]
	public static extern void file_monitor_emit_event(GFileMonitor* monitor, GFile* child, GFile* other_file, GFileMonitorEvent event_type);
	[LinkName("g_file_monitor_is_cancelled")]
	public static extern c_int file_monitor_is_cancelled(GFileMonitor* monitor);
	[LinkName("g_file_monitor_set_rate_limit")]
	public static extern void file_monitor_set_rate_limit(GFileMonitor* monitor, c_int limit_msecs);
	[CRepr]
	public struct GFileMonitorClass
	{
		GObjectClass parent_class;
	}
	public enum GFileMonitorEvent : c_int
	{
		G_FILE_MONITOR_EVENT_CHANGED,
		G_FILE_MONITOR_EVENT_CHANGES_DONE_HINT,
		G_FILE_MONITOR_EVENT_DELETED,
		G_FILE_MONITOR_EVENT_CREATED,
		G_FILE_MONITOR_EVENT_ATTRIBUTE_CHANGED,
		G_FILE_MONITOR_EVENT_PRE_UNMOUNT,
		G_FILE_MONITOR_EVENT_UNMOUNTED,
		G_FILE_MONITOR_EVENT_MOVED,
		G_FILE_MONITOR_EVENT_RENAMED,
		G_FILE_MONITOR_EVENT_MOVED_IN,
		G_FILE_MONITOR_EVENT_MOVED_OUT
	}
	[CRepr]
	public struct GFileMonitorFlags
	{
		public const int G_FILE_MONITOR_NONE = 0;
		public const int G_FILE_MONITOR_WATCH_MOUNTS = 1;
		public const int G_FILE_MONITOR_SEND_MOVED = 2;
		public const int G_FILE_MONITOR_WATCH_HARD_LINKS = 4;
		public const int G_FILE_MONITOR_WATCH_MOVES = 8;
	}
	[CRepr]
	public struct GFileMonitorPrivate
	{
	}
	[CRepr]
	public struct GFileOutputStream;
	[LinkName("g_file_output_stream_get_etag")]
	public static extern c_char* file_output_stream_get_etag(GFileOutputStream* stream);
	[LinkName("g_file_output_stream_query_info")]
	public static extern GFileInfo* file_output_stream_query_info(GFileOutputStream* stream,  c_char* attributes, GCancellable* cancellable);
	[LinkName("g_file_output_stream_query_info_async")]
	public static extern void file_output_stream_query_info_async(GFileOutputStream* stream,  c_char* attributes, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_output_stream_query_info_finish")]
	public static extern GFileInfo* file_output_stream_query_info_finish(GFileOutputStream* stream, GAsyncResult* result);
	[CRepr]
	public struct GFileOutputStreamClass
	{
		GOutputStreamClass parent_class;
	}
	[CRepr]
	public struct GFileOutputStreamPrivate
	{
	}
	public function void GFileProgressCallback(int64 current_num_bytes, int64 total_num_bytes, void* data);
	[CRepr]
	public struct GFileQueryInfoFlags
	{
		public const int G_FILE_QUERY_INFO_NONE = 0;
		public const int G_FILE_QUERY_INFO_NOFOLLOW_SYMLINKS = 1;
	}
	public function c_int GFileReadMoreCallback( c_char* file_contents, int64 file_size, void* callback_data);
	public enum GFileType : c_int
	{
		G_FILE_TYPE_UNKNOWN,
		G_FILE_TYPE_REGULAR,
		G_FILE_TYPE_DIRECTORY,
		G_FILE_TYPE_SYMBOLIC_LINK,
		G_FILE_TYPE_SPECIAL,
		G_FILE_TYPE_SHORTCUT,
		G_FILE_TYPE_MOUNTABLE
	}
	[CRepr]
	public struct GFilenameCompleter;
	[LinkName("g_filename_completer_new")]
	public static extern GFilenameCompleter* filename_completer_new();
	[LinkName("g_filename_completer_get_completion_suffix")]
	public static extern c_char* filename_completer_get_completion_suffix(GFilenameCompleter* completer,  c_char* initial_text);
	[LinkName("g_filename_completer_get_completions")]
	public static extern c_char** filename_completer_get_completions(GFilenameCompleter* completer,  c_char* initial_text);
	[LinkName("g_filename_completer_set_dirs_only")]
	public static extern void filename_completer_set_dirs_only(GFilenameCompleter* completer, c_int dirs_only);
	[CRepr]
	public struct GFilenameCompleterClass
	{
		GObjectClass parent_class;
	}
	public enum GFilesystemPreviewType : c_int
	{
		G_FILESYSTEM_PREVIEW_TYPE_IF_ALWAYS,
		G_FILESYSTEM_PREVIEW_TYPE_IF_LOCAL,
		G_FILESYSTEM_PREVIEW_TYPE_NEVER
	}
	[CRepr]
	public struct GFilterInputStream;
	[LinkName("g_filter_input_stream_get_base_stream")]
	public static extern GInputStream* filter_input_stream_get_base_stream(GFilterInputStream* stream);
	[LinkName("g_filter_input_stream_get_close_base_stream")]
	public static extern c_int filter_input_stream_get_close_base_stream(GFilterInputStream* stream);
	[LinkName("g_filter_input_stream_set_close_base_stream")]
	public static extern void filter_input_stream_set_close_base_stream(GFilterInputStream* stream, c_int close_base);
	[CRepr]
	public struct GFilterInputStreamClass
	{
		GInputStreamClass parent_class;
	}
	[CRepr]
	public struct GFilterOutputStream;
	[LinkName("g_filter_output_stream_get_base_stream")]
	public static extern GOutputStream* filter_output_stream_get_base_stream(GFilterOutputStream* stream);
	[LinkName("g_filter_output_stream_get_close_base_stream")]
	public static extern c_int filter_output_stream_get_close_base_stream(GFilterOutputStream* stream);
	[LinkName("g_filter_output_stream_set_close_base_stream")]
	public static extern void filter_output_stream_set_close_base_stream(GFilterOutputStream* stream, c_int close_base);
	[CRepr]
	public struct GFilterOutputStreamClass
	{
		GOutputStreamClass parent_class;
	}
	public enum GIOErrorEnum : c_int
	{
		G_IO_ERROR_FAILED,
		G_IO_ERROR_NOT_FOUND,
		G_IO_ERROR_EXISTS,
		G_IO_ERROR_IS_DIRECTORY,
		G_IO_ERROR_NOT_DIRECTORY,
		G_IO_ERROR_NOT_EMPTY,
		G_IO_ERROR_NOT_REGULAR_FILE,
		G_IO_ERROR_NOT_SYMBOLIC_LINK,
		G_IO_ERROR_NOT_MOUNTABLE_FILE,
		G_IO_ERROR_FILENAME_TOO_LONG,
		G_IO_ERROR_INVALID_FILENAME,
		G_IO_ERROR_TOO_MANY_LINKS,
		G_IO_ERROR_NO_SPACE,
		G_IO_ERROR_INVALID_ARGUMENT,
		G_IO_ERROR_PERMISSION_DENIED,
		G_IO_ERROR_NOT_SUPPORTED,
		G_IO_ERROR_NOT_MOUNTED,
		G_IO_ERROR_ALREADY_MOUNTED,
		G_IO_ERROR_CLOSED,
		G_IO_ERROR_CANCELLED,
		G_IO_ERROR_PENDING,
		G_IO_ERROR_READ_ONLY,
		G_IO_ERROR_CANT_CREATE_BACKUP,
		G_IO_ERROR_WRONG_ETAG,
		G_IO_ERROR_TIMED_OUT,
		G_IO_ERROR_WOULD_RECURSE,
		G_IO_ERROR_BUSY,
		G_IO_ERROR_WOULD_BLOCK,
		G_IO_ERROR_HOST_NOT_FOUND,
		G_IO_ERROR_WOULD_MERGE,
		G_IO_ERROR_FAILED_HANDLED,
		G_IO_ERROR_TOO_MANY_OPEN_FILES,
		G_IO_ERROR_NOT_INITIALIZED,
		G_IO_ERROR_ADDRESS_IN_USE,
		G_IO_ERROR_PARTIAL_INPUT,
		G_IO_ERROR_INVALID_DATA,
		G_IO_ERROR_DBUS_ERROR,
		G_IO_ERROR_HOST_UNREACHABLE,
		G_IO_ERROR_NETWORK_UNREACHABLE,
		G_IO_ERROR_CONNECTION_REFUSED,
		G_IO_ERROR_PROXY_FAILED,
		G_IO_ERROR_PROXY_AUTH_FAILED,
		G_IO_ERROR_PROXY_NEED_AUTH,
		G_IO_ERROR_PROXY_NOT_ALLOWED,
		G_IO_ERROR_BROKEN_PIPE,
		G_IO_ERROR_CONNECTION_CLOSED,
		G_IO_ERROR_NOT_CONNECTED,
		G_IO_ERROR_MESSAGE_TOO_LARGE,
		G_IO_ERROR_NO_SUCH_DEVICE
	}
	[CRepr]
	public struct GIOExtension
	{
	}
	[CRepr]
	public struct GIOExtensionPoint
	{
	}
	[CRepr]
	public struct GIOModule;
	[LinkName("g_io_module_new")]
	public static extern GIOModule* io_module_new( c_char* filename);
	[LinkName("g_io_module_load")]
	public static extern void io_module_load(GIOModule* module);
	[LinkName("g_io_module_unload")]
	public static extern void io_module_unload(GIOModule* module);
	[CRepr]
	public struct GIOModuleClass
	{
	}
	[CRepr]
	public struct GIOModuleScope
	{
	}
	public enum GIOModuleScopeFlags : c_int
	{
		G_IO_MODULE_SCOPE_NONE,
		G_IO_MODULE_SCOPE_BLOCK_DUPLICATES
	}
	[CRepr]
	public struct GIOSchedulerJob
	{
	}
	public function c_int GIOSchedulerJobFunc(GIOSchedulerJob* job, GCancellable* cancellable, void* data);
	[CRepr]
	public struct GIOStream;
	[LinkName("g_io_stream_clear_pending")]
	public static extern void io_stream_clear_pending(GIOStream* stream);
	[LinkName("g_io_stream_close")]
	public static extern c_int io_stream_close(GIOStream* stream, GCancellable* cancellable);
	[LinkName("g_io_stream_close_async")]
	public static extern void io_stream_close_async(GIOStream* stream, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_io_stream_close_finish")]
	public static extern c_int io_stream_close_finish(GIOStream* stream, GAsyncResult* result);
	[LinkName("g_io_stream_get_input_stream")]
	public static extern GInputStream* io_stream_get_input_stream(GIOStream* stream);
	[LinkName("g_io_stream_get_output_stream")]
	public static extern GOutputStream* io_stream_get_output_stream(GIOStream* stream);
	[LinkName("g_io_stream_has_pending")]
	public static extern c_int io_stream_has_pending(GIOStream* stream);
	[LinkName("g_io_stream_is_closed")]
	public static extern c_int io_stream_is_closed(GIOStream* stream);
	[LinkName("g_io_stream_set_pending")]
	public static extern c_int io_stream_set_pending(GIOStream* stream);
	[LinkName("g_io_stream_splice_async")]
	public static extern void io_stream_splice_async(GIOStream* stream1, GIOStream* stream2, GIOStreamSpliceFlags flags, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[CRepr]
	public struct GIOStreamAdapter
	{
	}
	[CRepr]
	public struct GIOStreamClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GIOStreamPrivate
	{
	}
	[CRepr]
	public struct GIOStreamSpliceFlags
	{
		public const int G_IO_STREAM_SPLICE_NONE = 0;
		public const int G_IO_STREAM_SPLICE_CLOSE_STREAM1 = 1;
		public const int G_IO_STREAM_SPLICE_CLOSE_STREAM2 = 2;
		public const int G_IO_STREAM_SPLICE_WAIT_FOR_BOTH = 4;
	}
	[CRepr]
	public struct GIcon
	{
		public function c_int(GIcon* icon1, GIcon* icon2) equal;

		public function c_uint(GIcon* icon) hash;

		public function GVariant*(GIcon* icon) serialize;

		public function c_int(GIcon* icon, c_int* out_version) to_tokens;
	}
	[CRepr]
	public struct GIconIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GInetAddress;
	[LinkName("g_inet_address_new_any")]
	public static extern GInetAddress* inet_address_new_any(GSocketFamily family);
	[LinkName("g_inet_address_new_from_bytes")]
	public static extern GInetAddress* inet_address_new_from_bytes(GSocketFamily family);
	[LinkName("g_inet_address_new_from_string")]
	public static extern GInetAddress* inet_address_new_from_string( c_char* string);
	[LinkName("g_inet_address_new_loopback")]
	public static extern GInetAddress* inet_address_new_loopback(GSocketFamily family);
	[LinkName("g_inet_address_equal")]
	public static extern c_int inet_address_equal(GInetAddress* address, GInetAddress* other_address);
	[LinkName("g_inet_address_get_family")]
	public static extern GSocketFamily inet_address_get_family(GInetAddress* address);
	[LinkName("g_inet_address_get_is_any")]
	public static extern c_int inet_address_get_is_any(GInetAddress* address);
	[LinkName("g_inet_address_get_is_link_local")]
	public static extern c_int inet_address_get_is_link_local(GInetAddress* address);
	[LinkName("g_inet_address_get_is_loopback")]
	public static extern c_int inet_address_get_is_loopback(GInetAddress* address);
	[LinkName("g_inet_address_get_is_mc_global")]
	public static extern c_int inet_address_get_is_mc_global(GInetAddress* address);
	[LinkName("g_inet_address_get_is_mc_link_local")]
	public static extern c_int inet_address_get_is_mc_link_local(GInetAddress* address);
	[LinkName("g_inet_address_get_is_mc_node_local")]
	public static extern c_int inet_address_get_is_mc_node_local(GInetAddress* address);
	[LinkName("g_inet_address_get_is_mc_org_local")]
	public static extern c_int inet_address_get_is_mc_orlocal(GInetAddress* address);
	[LinkName("g_inet_address_get_is_mc_site_local")]
	public static extern c_int inet_address_get_is_mc_site_local(GInetAddress* address);
	[LinkName("g_inet_address_get_is_multicast")]
	public static extern c_int inet_address_get_is_multicast(GInetAddress* address);
	[LinkName("g_inet_address_get_is_site_local")]
	public static extern c_int inet_address_get_is_site_local(GInetAddress* address);
	[LinkName("g_inet_address_get_native_size")]
	public static extern c_ulong inet_address_get_native_size(GInetAddress* address);
	[LinkName("g_inet_address_to_bytes")]
	public static extern  c_uchar* inet_address_to_bytes(GInetAddress* address);
	[LinkName("g_inet_address_to_string")]
	public static extern c_char* inet_address_to_string(GInetAddress* address);
	[CRepr]
	public struct GInetAddressClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GInetAddressMask;
	[LinkName("g_inet_address_mask_new")]
	public static extern GInetAddressMask* inet_address_mask_new(GInetAddress* addr, c_uint length);
	[LinkName("g_inet_address_mask_new_from_string")]
	public static extern GInetAddressMask* inet_address_mask_new_from_string( c_char* mask_string);
	[LinkName("g_inet_address_mask_equal")]
	public static extern c_int inet_address_mask_equal(GInetAddressMask* mask, GInetAddressMask* mask2);
	[LinkName("g_inet_address_mask_get_address")]
	public static extern GInetAddress* inet_address_mask_get_address(GInetAddressMask* mask);
	[LinkName("g_inet_address_mask_get_family")]
	public static extern GSocketFamily inet_address_mask_get_family(GInetAddressMask* mask);
	[LinkName("g_inet_address_mask_get_length")]
	public static extern c_uint inet_address_mask_get_length(GInetAddressMask* mask);
	[LinkName("g_inet_address_mask_matches")]
	public static extern c_int inet_address_mask_matches(GInetAddressMask* mask, GInetAddress* address);
	[LinkName("g_inet_address_mask_to_string")]
	public static extern c_char* inet_address_mask_to_string(GInetAddressMask* mask);
	[CRepr]
	public struct GInetAddressMaskClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GInetAddressMaskPrivate
	{
	}
	[CRepr]
	public struct GInetAddressPrivate
	{
	}
	[CRepr]
	public struct GInetSocketAddress;
	[LinkName("g_inet_socket_address_new")]
	public static extern GSocketAddress* inet_socket_address_new(GInetAddress* address, c_ushort port);
	[LinkName("g_inet_socket_address_new_from_string")]
	public static extern GSocketAddress* inet_socket_address_new_from_string( c_char* address, c_uint port);
	[LinkName("g_inet_socket_address_get_address")]
	public static extern GInetAddress* inet_socket_address_get_address(GInetSocketAddress* address);
	[LinkName("g_inet_socket_address_get_flowinfo")]
	public static extern c_uint inet_socket_address_get_flowinfo(GInetSocketAddress* address);
	[LinkName("g_inet_socket_address_get_port")]
	public static extern c_ushort inet_socket_address_get_port(GInetSocketAddress* address);
	[LinkName("g_inet_socket_address_get_scope_id")]
	public static extern c_uint inet_socket_address_get_scope_id(GInetSocketAddress* address);
	[CRepr]
	public struct GInetSocketAddressClass
	{
		GSocketAddressClass parent_class;
	}
	[CRepr]
	public struct GInetSocketAddressPrivate
	{
	}
	[CRepr]
	public struct GInitable
	{
		public function c_int(GInitable* initable, GCancellable* cancellable) init;
	}
	[CRepr]
	public struct GInitableIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GInputMessage
	{
		GSocketAddress** address;
		c_uint num_vectors;
		c_ulong bytes_received;
		c_int flags;
		c_uint* num_control_messages;
	}
	[CRepr]
	public struct GInputStream;
	[LinkName("g_input_stream_clear_pending")]
	public static extern void input_stream_clear_pending(GInputStream* stream);
	[LinkName("g_input_stream_close")]
	public static extern c_int input_stream_close(GInputStream* stream, GCancellable* cancellable);
	[LinkName("g_input_stream_close_async")]
	public static extern void input_stream_close_async(GInputStream* stream, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_close_finish")]
	public static extern c_int input_stream_close_finish(GInputStream* stream, GAsyncResult* result);
	[LinkName("g_input_stream_has_pending")]
	public static extern c_int input_stream_has_pending(GInputStream* stream);
	[LinkName("g_input_stream_is_closed")]
	public static extern c_int input_stream_is_closed(GInputStream* stream);
	[LinkName("g_input_stream_read")]
	public static extern c_long input_stream_read(GInputStream* stream, c_ulong count, GCancellable* cancellable);
	[LinkName("g_input_stream_read_all")]
	public static extern c_int input_stream_read_all(GInputStream* stream, c_ulong count, c_ulong* bytes_read, GCancellable* cancellable);
	[LinkName("g_input_stream_read_all_async")]
	public static extern void input_stream_read_all_async(GInputStream* stream, c_ulong count, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_read_all_finish")]
	public static extern c_int input_stream_read_all_finish(GInputStream* stream, GAsyncResult* result, c_ulong* bytes_read);
	[LinkName("g_input_stream_read_async")]
	public static extern void input_stream_read_async(GInputStream* stream, c_ulong count, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_read_bytes")]
	public static extern GBytes* input_stream_read_bytes(GInputStream* stream, c_ulong count, GCancellable* cancellable);
	[LinkName("g_input_stream_read_bytes_async")]
	public static extern void input_stream_read_bytes_async(GInputStream* stream, c_ulong count, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_read_bytes_finish")]
	public static extern GBytes* input_stream_read_bytes_finish(GInputStream* stream, GAsyncResult* result);
	[LinkName("g_input_stream_read_finish")]
	public static extern c_long input_stream_read_finish(GInputStream* stream, GAsyncResult* result);
	[LinkName("g_input_stream_set_pending")]
	public static extern c_int input_stream_set_pending(GInputStream* stream);
	[LinkName("g_input_stream_skip")]
	public static extern c_long input_stream_skip(GInputStream* stream, c_ulong count, GCancellable* cancellable);
	[LinkName("g_input_stream_skip_async")]
	public static extern void input_stream_skip_async(GInputStream* stream, c_ulong count, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_skip_finish")]
	public static extern c_long input_stream_skip_finish(GInputStream* stream, GAsyncResult* result);
	[CRepr]
	public struct GInputStreamClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GInputStreamPrivate
	{
	}
	[CRepr]
	public struct GInputVector
	{
		void* buffer;
		c_ulong size;
	}
	[CRepr]
	public struct GListModel
	{
		public function void*(GListModel* list, c_uint position) get_item;

		public function GType(GListModel* list) get_item_type;

		public function c_uint(GListModel* list) get_n_items;
	}
	[CRepr]
	public struct GListModelInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GListStore;
	[LinkName("g_list_store_new")]
	public static extern GListStore* list_store_new(GType item_type);
	[LinkName("g_list_store_append")]
	public static extern void list_store_append(GListStore* store, void* item);
	[LinkName("g_list_store_find")]
	public static extern c_int list_store_find(GListStore* store, void* item, c_uint* position);
	[LinkName("g_list_store_find_with_equal_func")]
	public static extern c_int list_store_find_with_equal_func(GListStore* store, void* item, GEqualFunc equal_func, c_uint* position);
	[LinkName("g_list_store_find_with_equal_func_full")]
	public static extern c_int list_store_find_with_equal_func_full(GListStore* store, void* item, GEqualFuncFull equal_func, void* user_data, c_uint* position);
	[LinkName("g_list_store_insert")]
	public static extern void list_store_insert(GListStore* store, c_uint position, void* item);
	[LinkName("g_list_store_insert_sorted")]
	public static extern c_uint list_store_insert_sorted(GListStore* store, void* item, GCompareDataFunc compare_func, void* user_data);
	[LinkName("g_list_store_remove")]
	public static extern void list_store_remove(GListStore* store, c_uint position);
	[LinkName("g_list_store_remove_all")]
	public static extern void list_store_remove_all(GListStore* store);
	[LinkName("g_list_store_sort")]
	public static extern void list_store_sort(GListStore* store, GCompareDataFunc compare_func, void* user_data);
	[LinkName("g_list_store_splice")]
	public static extern void list_store_splice(GListStore* store, c_uint position, c_uint n_removals, c_uint n_additions);
	[CRepr]
	public struct GListStoreClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GLoadableIcon
	{
		public function GInputStream*(GLoadableIcon* icon, c_int size, c_char** type, GCancellable* cancellable) load;

		public function void(GLoadableIcon* icon, c_int size, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) load_async;

		public function GInputStream*(GLoadableIcon* icon, GAsyncResult* res, c_char** type) load_finish;
	}
	[CRepr]
	public struct GLoadableIconIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GMemoryInputStream;
	[LinkName("g_memory_input_stream_new")]
	public static extern GInputStream* memory_input_stream_new();
	[LinkName("g_memory_input_stream_new_from_bytes")]
	public static extern GInputStream* memory_input_stream_new_from_bytes(GBytes* bytes);
	[LinkName("g_memory_input_stream_new_from_data")]
	public static extern GInputStream* memory_input_stream_new_from_data(c_long len, GDestroyNotify destroy);
	[LinkName("g_memory_input_stream_add_bytes")]
	public static extern void memory_input_stream_add_bytes(GMemoryInputStream* stream, GBytes* bytes);
	[LinkName("g_memory_input_stream_add_data")]
	public static extern void memory_input_stream_add_data(GMemoryInputStream* stream, c_long len, GDestroyNotify destroy);
	[CRepr]
	public struct GMemoryInputStreamClass
	{
		GInputStreamClass parent_class;
	}
	[CRepr]
	public struct GMemoryInputStreamPrivate
	{
	}
	[CRepr]
	public struct GMemoryMonitor
	{
		public function void(GMemoryMonitor* monitor, GMemoryMonitorWarningLevel level) low_memory_warning;
	}
	[CRepr]
	public struct GMemoryMonitorInterface
	{
		GTypeInterface g_iface;
	}
	public enum GMemoryMonitorWarningLevel : c_int
	{
		G_MEMORY_MONITOR_WARNING_LEVEL_LOW,
		G_MEMORY_MONITOR_WARNING_LEVEL_MEDIUM,
		G_MEMORY_MONITOR_WARNING_LEVEL_CRITICAL
	}
	[CRepr]
	public struct GMemoryOutputStream;
	[LinkName("g_memory_output_stream_new")]
	public static extern GOutputStream* memory_output_stream_new(void* data, c_ulong size, GReallocFunc realloc_function, GDestroyNotify destroy_function);
	[LinkName("g_memory_output_stream_new_resizable")]
	public static extern GOutputStream* memory_output_stream_new_resizable();
	[LinkName("g_memory_output_stream_get_data")]
	public static extern void* memory_output_stream_get_data(GMemoryOutputStream* ostream);
	[LinkName("g_memory_output_stream_get_data_size")]
	public static extern c_ulong memory_output_stream_get_data_size(GMemoryOutputStream* ostream);
	[LinkName("g_memory_output_stream_get_size")]
	public static extern c_ulong memory_output_stream_get_size(GMemoryOutputStream* ostream);
	[LinkName("g_memory_output_stream_steal_as_bytes")]
	public static extern GBytes* memory_output_stream_steal_as_bytes(GMemoryOutputStream* ostream);
	[LinkName("g_memory_output_stream_steal_data")]
	public static extern void* memory_output_stream_steal_data(GMemoryOutputStream* ostream);
	[CRepr]
	public struct GMemoryOutputStreamClass
	{
		GOutputStreamClass parent_class;
	}
	[CRepr]
	public struct GMemoryOutputStreamPrivate
	{
	}
	[CRepr]
	public struct GMenu;
	[LinkName("g_menu_new")]
	public static extern GMenu* menu_new();
	[LinkName("g_menu_append")]
	public static extern void menu_append(GMenu* menu,  c_char* label,  c_char* detailed_action);
	[LinkName("g_menu_append_item")]
	public static extern void menu_append_item(GMenu* menu, GMenuItem* item);
	[LinkName("g_menu_append_section")]
	public static extern void menu_append_section(GMenu* menu,  c_char* label, GMenuModel* section);
	[LinkName("g_menu_append_submenu")]
	public static extern void menu_append_submenu(GMenu* menu,  c_char* label, GMenuModel* submenu);
	[LinkName("g_menu_freeze")]
	public static extern void menu_freeze(GMenu* menu);
	[LinkName("g_menu_insert")]
	public static extern void menu_insert(GMenu* menu, c_int position,  c_char* label,  c_char* detailed_action);
	[LinkName("g_menu_insert_item")]
	public static extern void menu_insert_item(GMenu* menu, c_int position, GMenuItem* item);
	[LinkName("g_menu_insert_section")]
	public static extern void menu_insert_section(GMenu* menu, c_int position,  c_char* label, GMenuModel* section);
	[LinkName("g_menu_insert_submenu")]
	public static extern void menu_insert_submenu(GMenu* menu, c_int position,  c_char* label, GMenuModel* submenu);
	[LinkName("g_menu_prepend")]
	public static extern void menu_prepend(GMenu* menu,  c_char* label,  c_char* detailed_action);
	[LinkName("g_menu_prepend_item")]
	public static extern void menu_prepend_item(GMenu* menu, GMenuItem* item);
	[LinkName("g_menu_prepend_section")]
	public static extern void menu_prepend_section(GMenu* menu,  c_char* label, GMenuModel* section);
	[LinkName("g_menu_prepend_submenu")]
	public static extern void menu_prepend_submenu(GMenu* menu,  c_char* label, GMenuModel* submenu);
	[LinkName("g_menu_remove")]
	public static extern void menu_remove(GMenu* menu, c_int position);
	[LinkName("g_menu_remove_all")]
	public static extern void menu_remove_all(GMenu* menu);
	[CRepr]
	public struct GMenuAttributeIter;
	[LinkName("g_menu_attribute_iter_get_name")]
	public static extern  c_char* menu_attribute_iter_get_name(GMenuAttributeIter* iter);
	[LinkName("g_menu_attribute_iter_get_next")]
	public static extern c_int menu_attribute_iter_get_next(GMenuAttributeIter* iter,  c_char** out_name, GVariant** value);
	[LinkName("g_menu_attribute_iter_get_value")]
	public static extern GVariant* menu_attribute_iter_get_value(GMenuAttributeIter* iter);
	[LinkName("g_menu_attribute_iter_next")]
	public static extern c_int menu_attribute_iter_next(GMenuAttributeIter* iter);
	[CRepr]
	public struct GMenuAttributeIterClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GMenuAttributeIterPrivate
	{
	}
	[CRepr]
	public struct GMenuItem;
	[LinkName("g_menu_item_new")]
	public static extern GMenuItem* menu_item_new( c_char* label,  c_char* detailed_action);
	[LinkName("g_menu_item_new_from_model")]
	public static extern GMenuItem* menu_item_new_from_model(GMenuModel* model, c_int item_index);
	[LinkName("g_menu_item_new_section")]
	public static extern GMenuItem* menu_item_new_section( c_char* label, GMenuModel* section);
	[LinkName("g_menu_item_new_submenu")]
	public static extern GMenuItem* menu_item_new_submenu( c_char* label, GMenuModel* submenu);
	[LinkName("g_menu_item_get_attribute")]
	public static extern c_int menu_item_get_attribute(GMenuItem* menu_item,  c_char* attribute,  c_char* format_string);
	[LinkName("g_menu_item_get_attribute_value")]
	public static extern GVariant* menu_item_get_attribute_value(GMenuItem* menu_item,  c_char* attribute,  GVariantType* expected_type);
	[LinkName("g_menu_item_get_link")]
	public static extern GMenuModel* menu_item_get_link(GMenuItem* menu_item,  c_char* link);
	[LinkName("g_menu_item_set_action_and_target")]
	public static extern void menu_item_set_action_and_target(GMenuItem* menu_item,  c_char* action,  c_char* format_string);
	[LinkName("g_menu_item_set_action_and_target_value")]
	public static extern void menu_item_set_action_and_target_value(GMenuItem* menu_item,  c_char* action, GVariant* target_value);
	[LinkName("g_menu_item_set_attribute")]
	public static extern void menu_item_set_attribute(GMenuItem* menu_item,  c_char* attribute,  c_char* format_string);
	[LinkName("g_menu_item_set_attribute_value")]
	public static extern void menu_item_set_attribute_value(GMenuItem* menu_item,  c_char* attribute, GVariant* value);
	[LinkName("g_menu_item_set_detailed_action")]
	public static extern void menu_item_set_detailed_action(GMenuItem* menu_item,  c_char* detailed_action);
	[LinkName("g_menu_item_set_icon")]
	public static extern void menu_item_set_icon(GMenuItem* menu_item, GIcon* icon);
	[LinkName("g_menu_item_set_label")]
	public static extern void menu_item_set_label(GMenuItem* menu_item,  c_char* label);
	[LinkName("g_menu_item_set_link")]
	public static extern void menu_item_set_link(GMenuItem* menu_item,  c_char* link, GMenuModel* model);
	[LinkName("g_menu_item_set_section")]
	public static extern void menu_item_set_section(GMenuItem* menu_item, GMenuModel* section);
	[LinkName("g_menu_item_set_submenu")]
	public static extern void menu_item_set_submenu(GMenuItem* menu_item, GMenuModel* submenu);
	[CRepr]
	public struct GMenuLinkIter;
	[LinkName("g_menu_link_iter_get_name")]
	public static extern  c_char* menu_link_iter_get_name(GMenuLinkIter* iter);
	[LinkName("g_menu_link_iter_get_next")]
	public static extern c_int menu_link_iter_get_next(GMenuLinkIter* iter,  c_char** out_link, GMenuModel** value);
	[LinkName("g_menu_link_iter_get_value")]
	public static extern GMenuModel* menu_link_iter_get_value(GMenuLinkIter* iter);
	[LinkName("g_menu_link_iter_next")]
	public static extern c_int menu_link_iter_next(GMenuLinkIter* iter);
	[CRepr]
	public struct GMenuLinkIterClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GMenuLinkIterPrivate
	{
	}
	[CRepr]
	public struct GMenuModel;
	[LinkName("g_menu_model_get_item_attribute")]
	public static extern c_int menu_model_get_item_attribute(GMenuModel* model, c_int item_index,  c_char* attribute,  c_char* format_string);
	[LinkName("g_menu_model_get_item_attribute_value")]
	public static extern GVariant* menu_model_get_item_attribute_value(GMenuModel* model, c_int item_index,  c_char* attribute,  GVariantType* expected_type);
	[LinkName("g_menu_model_get_item_link")]
	public static extern GMenuModel* menu_model_get_item_link(GMenuModel* model, c_int item_index,  c_char* link);
	[LinkName("g_menu_model_get_n_items")]
	public static extern c_int menu_model_get_n_items(GMenuModel* model);
	[LinkName("g_menu_model_is_mutable")]
	public static extern c_int menu_model_is_mutable(GMenuModel* model);
	[LinkName("g_menu_model_items_changed")]
	public static extern void menu_model_items_changed(GMenuModel* model, c_int position, c_int removed, c_int added);
	[LinkName("g_menu_model_iterate_item_attributes")]
	public static extern GMenuAttributeIter* menu_model_iterate_item_attributes(GMenuModel* model, c_int item_index);
	[LinkName("g_menu_model_iterate_item_links")]
	public static extern GMenuLinkIter* menu_model_iterate_item_links(GMenuModel* model, c_int item_index);
	[CRepr]
	public struct GMenuModelClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GMenuModelPrivate
	{
	}
	[CRepr]
	public struct GMount
	{
		public function c_int(GMount* mount) can_eject;

		public function c_int(GMount* mount) can_unmount;

		public function void(GMount* mount) changed;

		public function void(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) eject;

		public function c_int(GMount* mount, GAsyncResult* result) eject_finish;

		public function void(GMount* mount, GMountUnmountFlags flags, GMountOperation* mount_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) eject_with_operation;

		public function c_int(GMount* mount, GAsyncResult* result) eject_with_operation_finish;

		public function GFile*(GMount* mount) get_default_location;

		public function GDrive*(GMount* mount) get_drive;

		public function GIcon*(GMount* mount) get_icon;

		public function c_char*(GMount* mount) get_name;

		public function GFile*(GMount* mount) get_root;

		public function  c_char*(GMount* mount) get_sort_key;

		public function GIcon*(GMount* mount) get_symbolic_icon;

		public function c_char*(GMount* mount) get_uuid;

		public function GVolume*(GMount* mount) get_volume;

		public function void(GMount* mount, c_int force_rescan, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) guess_content_type;

		public function void(GMount* mount, GAsyncResult* result) guess_content_type_finish;

		public function void(GMount* mount, c_int force_rescan, GCancellable* cancellable) guess_content_type_sync;

		public function void(GMount* mount) pre_unmount;

		public function void(GMount* mount, GMountMountFlags flags, GMountOperation* mount_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) remount;

		public function c_int(GMount* mount, GAsyncResult* result) remount_finish;

		public function void(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) unmount;

		public function c_int(GMount* mount, GAsyncResult* result) unmount_finish;

		public function void(GMount* mount, GMountUnmountFlags flags, GMountOperation* mount_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) unmount_with_operation;

		public function c_int(GMount* mount, GAsyncResult* result) unmount_with_operation_finish;

		public function void(GMount* mount) unmounted;
	}
	[CRepr]
	public struct GMountIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GMountMountFlags
	{
		public const int G_MOUNT_MOUNT_NONE = 0;
	}
	[CRepr]
	public struct GMountOperation;
	[LinkName("g_mount_operation_new")]
	public static extern GMountOperation* mount_operation_new();
	[LinkName("g_mount_operation_get_anonymous")]
	public static extern c_int mount_operation_get_anonymous(GMountOperation* op);
	[LinkName("g_mount_operation_get_choice")]
	public static extern c_int mount_operation_get_choice(GMountOperation* op);
	[LinkName("g_mount_operation_get_domain")]
	public static extern  c_char* mount_operation_get_domain(GMountOperation* op);
	[LinkName("g_mount_operation_get_is_tcrypt_hidden_volume")]
	public static extern c_int mount_operation_get_is_tcrypt_hidden_volume(GMountOperation* op);
	[LinkName("g_mount_operation_get_is_tcrypt_system_volume")]
	public static extern c_int mount_operation_get_is_tcrypt_system_volume(GMountOperation* op);
	[LinkName("g_mount_operation_get_password")]
	public static extern  c_char* mount_operation_get_password(GMountOperation* op);
	[LinkName("g_mount_operation_get_password_save")]
	public static extern GPasswordSave mount_operation_get_password_save(GMountOperation* op);
	[LinkName("g_mount_operation_get_pim")]
	public static extern c_uint mount_operation_get_pim(GMountOperation* op);
	[LinkName("g_mount_operation_get_username")]
	public static extern  c_char* mount_operation_get_username(GMountOperation* op);
	[LinkName("g_mount_operation_reply")]
	public static extern void mount_operation_reply(GMountOperation* op, GMountOperationResult result);
	[LinkName("g_mount_operation_set_anonymous")]
	public static extern void mount_operation_set_anonymous(GMountOperation* op, c_int anonymous);
	[LinkName("g_mount_operation_set_choice")]
	public static extern void mount_operation_set_choice(GMountOperation* op, c_int choice);
	[LinkName("g_mount_operation_set_domain")]
	public static extern void mount_operation_set_domain(GMountOperation* op,  c_char* domain);
	[LinkName("g_mount_operation_set_is_tcrypt_hidden_volume")]
	public static extern void mount_operation_set_is_tcrypt_hidden_volume(GMountOperation* op, c_int hidden_volume);
	[LinkName("g_mount_operation_set_is_tcrypt_system_volume")]
	public static extern void mount_operation_set_is_tcrypt_system_volume(GMountOperation* op, c_int system_volume);
	[LinkName("g_mount_operation_set_password")]
	public static extern void mount_operation_set_password(GMountOperation* op,  c_char* password);
	[LinkName("g_mount_operation_set_password_save")]
	public static extern void mount_operation_set_password_save(GMountOperation* op, GPasswordSave save);
	[LinkName("g_mount_operation_set_pim")]
	public static extern void mount_operation_set_pim(GMountOperation* op, c_uint pim);
	[LinkName("g_mount_operation_set_username")]
	public static extern void mount_operation_set_username(GMountOperation* op,  c_char* username);
	[CRepr]
	public struct GMountOperationClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GMountOperationPrivate
	{
	}
	public enum GMountOperationResult : c_int
	{
		G_MOUNT_OPERATION_HANDLED,
		G_MOUNT_OPERATION_ABORTED,
		G_MOUNT_OPERATION_UNHANDLED
	}
	[CRepr]
	public struct GMountUnmountFlags
	{
		public const int G_MOUNT_UNMOUNT_NONE = 0;
		public const int G_MOUNT_UNMOUNT_FORCE = 1;
	}
	[CRepr]
	public struct GNativeSocketAddress;
	[LinkName("g_native_socket_address_new")]
	public static extern GSocketAddress* native_socket_address_new(void* native, c_ulong len);
	[CRepr]
	public struct GNativeSocketAddressClass
	{
		GSocketAddressClass parent_class;
	}
	[CRepr]
	public struct GNativeSocketAddressPrivate
	{
	}
	[CRepr]
	public struct GNativeVolumeMonitor;
	[CRepr]
	public struct GNativeVolumeMonitorClass
	{
		GVolumeMonitorClass parent_class;
	}
	[CRepr]
	public struct GNetworkAddress;
	[LinkName("g_network_address_new")]
	public static extern GSocketConnectable* network_address_new( c_char* hostname, c_ushort port);
	[LinkName("g_network_address_new_loopback")]
	public static extern GSocketConnectable* network_address_new_loopback(c_ushort port);
	[LinkName("g_network_address_get_hostname")]
	public static extern  c_char* network_address_get_hostname(GNetworkAddress* addr);
	[LinkName("g_network_address_get_port")]
	public static extern c_ushort network_address_get_port(GNetworkAddress* addr);
	[LinkName("g_network_address_get_scheme")]
	public static extern  c_char* network_address_get_scheme(GNetworkAddress* addr);
	[CRepr]
	public struct GNetworkAddressClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GNetworkAddressPrivate
	{
	}
	public enum GNetworkConnectivity : c_int
	{
		G_NETWORK_CONNECTIVITY_LOCAL,
		G_NETWORK_CONNECTIVITY_LIMITED,
		G_NETWORK_CONNECTIVITY_PORTAL,
		G_NETWORK_CONNECTIVITY_FULL
	}
	[CRepr]
	public struct GNetworkMonitor
	{
		public function c_int(GNetworkMonitor* monitor, GSocketConnectable* connectable, GCancellable* cancellable) can_reach;

		public function void(GNetworkMonitor* monitor, GSocketConnectable* connectable, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) can_reach_async;

		public function c_int(GNetworkMonitor* monitor, GAsyncResult* result) can_reach_finish;

		public function void(GNetworkMonitor* monitor, c_int network_available) network_changed;
	}
	[CRepr]
	public struct GNetworkMonitorInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GNetworkService;
	[LinkName("g_network_service_new")]
	public static extern GSocketConnectable* network_service_new( c_char* service,  c_char* protocol,  c_char* domain);
	[LinkName("g_network_service_get_domain")]
	public static extern  c_char* network_service_get_domain(GNetworkService* srv);
	[LinkName("g_network_service_get_protocol")]
	public static extern  c_char* network_service_get_protocol(GNetworkService* srv);
	[LinkName("g_network_service_get_scheme")]
	public static extern  c_char* network_service_get_scheme(GNetworkService* srv);
	[LinkName("g_network_service_get_service")]
	public static extern  c_char* network_service_get_service(GNetworkService* srv);
	[LinkName("g_network_service_set_scheme")]
	public static extern void network_service_set_scheme(GNetworkService* srv,  c_char* scheme);
	[CRepr]
	public struct GNetworkServiceClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GNetworkServicePrivate
	{
	}
	[CRepr]
	public struct GNotification;
	[LinkName("g_notification_new")]
	public static extern GNotification* notification_new( c_char* title);
	[LinkName("g_notification_add_button")]
	public static extern void notification_add_button(GNotification* notification,  c_char* label,  c_char* detailed_action);
	[LinkName("g_notification_add_button_with_target")]
	public static extern void notification_add_button_with_target(GNotification* notification,  c_char* label,  c_char* action,  c_char* target_format);
	[LinkName("g_notification_add_button_with_target_value")]
	public static extern void notification_add_button_with_target_value(GNotification* notification,  c_char* label,  c_char* action, GVariant* target);
	[LinkName("g_notification_set_body")]
	public static extern void notification_set_body(GNotification* notification,  c_char* body);
	[LinkName("g_notification_set_category")]
	public static extern void notification_set_category(GNotification* notification,  c_char* category);
	[LinkName("g_notification_set_default_action")]
	public static extern void notification_set_default_action(GNotification* notification,  c_char* detailed_action);
	[LinkName("g_notification_set_default_action_and_target")]
	public static extern void notification_set_default_action_and_target(GNotification* notification,  c_char* action,  c_char* target_format);
	[LinkName("g_notification_set_default_action_and_target_value")]
	public static extern void notification_set_default_action_and_target_value(GNotification* notification,  c_char* action, GVariant* target);
	[LinkName("g_notification_set_icon")]
	public static extern void notification_set_icon(GNotification* notification, GIcon* icon);
	[LinkName("g_notification_set_priority")]
	public static extern void notification_set_priority(GNotification* notification, GNotificationPriority priority);
	[LinkName("g_notification_set_title")]
	public static extern void notification_set_title(GNotification* notification,  c_char* title);
	[LinkName("g_notification_set_urgent")]
	public static extern void notification_set_urgent(GNotification* notification, c_int urgent);
	public enum GNotificationPriority : c_int
	{
		G_NOTIFICATION_PRIORITY_NORMAL,
		G_NOTIFICATION_PRIORITY_LOW,
		G_NOTIFICATION_PRIORITY_HIGH,
		G_NOTIFICATION_PRIORITY_URGENT
	}
	[CRepr]
	public struct GOutputMessage
	{
		GSocketAddress* address;
		GOutputVector* vectors;
		c_uint num_vectors;
		c_uint bytes_sent;
		c_uint num_control_messages;
	}
	[CRepr]
	public struct GOutputStream;
	[LinkName("g_output_stream_clear_pending")]
	public static extern void output_stream_clear_pending(GOutputStream* stream);
	[LinkName("g_output_stream_close")]
	public static extern c_int output_stream_close(GOutputStream* stream, GCancellable* cancellable);
	[LinkName("g_output_stream_close_async")]
	public static extern void output_stream_close_async(GOutputStream* stream, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_close_finish")]
	public static extern c_int output_stream_close_finish(GOutputStream* stream, GAsyncResult* result);
	[LinkName("g_output_stream_flush")]
	public static extern c_int output_stream_flush(GOutputStream* stream, GCancellable* cancellable);
	[LinkName("g_output_stream_flush_async")]
	public static extern void output_stream_flush_async(GOutputStream* stream, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_flush_finish")]
	public static extern c_int output_stream_flush_finish(GOutputStream* stream, GAsyncResult* result);
	[LinkName("g_output_stream_has_pending")]
	public static extern c_int output_stream_has_pending(GOutputStream* stream);
	[LinkName("g_output_stream_is_closed")]
	public static extern c_int output_stream_is_closed(GOutputStream* stream);
	[LinkName("g_output_stream_is_closing")]
	public static extern c_int output_stream_is_closing(GOutputStream* stream);
	[LinkName("g_output_stream_printf")]
	public static extern c_int output_stream_printf(GOutputStream* stream, c_ulong* bytes_written, GCancellable* cancellable, GError** error,  c_char* format);
	[LinkName("g_output_stream_set_pending")]
	public static extern c_int output_stream_set_pending(GOutputStream* stream);
	[LinkName("g_output_stream_splice")]
	public static extern c_long output_stream_splice(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, GCancellable* cancellable);
	[LinkName("g_output_stream_splice_async")]
	public static extern void output_stream_splice_async(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_splice_finish")]
	public static extern c_long output_stream_splice_finish(GOutputStream* stream, GAsyncResult* result);
	[LinkName("g_output_stream_vprintf")]
	public static extern c_int output_stream_vprintf(GOutputStream* stream, c_ulong* bytes_written, GCancellable* cancellable, GError** error,  c_char* format, VarArgs args);
	[LinkName("g_output_stream_write")]
	public static extern c_long output_stream_write(GOutputStream* stream, c_ulong count, GCancellable* cancellable);
	[LinkName("g_output_stream_write_all")]
	public static extern c_int output_stream_write_all(GOutputStream* stream, c_ulong count, c_ulong* bytes_written, GCancellable* cancellable);
	[LinkName("g_output_stream_write_all_async")]
	public static extern void output_stream_write_all_async(GOutputStream* stream, c_ulong count, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_write_all_finish")]
	public static extern c_int output_stream_write_all_finish(GOutputStream* stream, GAsyncResult* result, c_ulong* bytes_written);
	[LinkName("g_output_stream_write_async")]
	public static extern void output_stream_write_async(GOutputStream* stream, c_ulong count, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_write_bytes")]
	public static extern c_long output_stream_write_bytes(GOutputStream* stream, GBytes* bytes, GCancellable* cancellable);
	[LinkName("g_output_stream_write_bytes_async")]
	public static extern void output_stream_write_bytes_async(GOutputStream* stream, GBytes* bytes, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_write_bytes_finish")]
	public static extern c_long output_stream_write_bytes_finish(GOutputStream* stream, GAsyncResult* result);
	[LinkName("g_output_stream_write_finish")]
	public static extern c_long output_stream_write_finish(GOutputStream* stream, GAsyncResult* result);
	[LinkName("g_output_stream_writev")]
	public static extern c_int output_stream_writev(GOutputStream* stream, c_ulong n_vectors, c_ulong* bytes_written, GCancellable* cancellable);
	[LinkName("g_output_stream_writev_all")]
	public static extern c_int output_stream_writev_all(GOutputStream* stream, c_ulong n_vectors, c_ulong* bytes_written, GCancellable* cancellable);
	[LinkName("g_output_stream_writev_all_async")]
	public static extern void output_stream_writev_all_async(GOutputStream* stream, c_ulong n_vectors, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_writev_all_finish")]
	public static extern c_int output_stream_writev_all_finish(GOutputStream* stream, GAsyncResult* result, c_ulong* bytes_written);
	[LinkName("g_output_stream_writev_async")]
	public static extern void output_stream_writev_async(GOutputStream* stream, c_ulong n_vectors, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_writev_finish")]
	public static extern c_int output_stream_writev_finish(GOutputStream* stream, GAsyncResult* result, c_ulong* bytes_written);
	[CRepr]
	public struct GOutputStreamClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GOutputStreamPrivate
	{
	}
	[CRepr]
	public struct GOutputStreamSpliceFlags
	{
		public const int G_OUTPUT_STREAM_SPLICE_NONE = 0;
		public const int G_OUTPUT_STREAM_SPLICE_CLOSE_SOURCE = 1;
		public const int G_OUTPUT_STREAM_SPLICE_CLOSE_TARGET = 2;
	}
	[CRepr]
	public struct GOutputVector
	{
		void* buffer;
		c_ulong size;
	}
	public enum GPasswordSave : c_int
	{
		G_PASSWORD_SAVE_NEVER,
		G_PASSWORD_SAVE_FOR_SESSION,
		G_PASSWORD_SAVE_PERMANENTLY
	}
	[CRepr]
	public struct GPermission;
	[LinkName("g_permission_acquire")]
	public static extern c_int permission_acquire(GPermission* permission, GCancellable* cancellable);
	[LinkName("g_permission_acquire_async")]
	public static extern void permission_acquire_async(GPermission* permission, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_permission_acquire_finish")]
	public static extern c_int permission_acquire_finish(GPermission* permission, GAsyncResult* result);
	[LinkName("g_permission_get_allowed")]
	public static extern c_int permission_get_allowed(GPermission* permission);
	[LinkName("g_permission_get_can_acquire")]
	public static extern c_int permission_get_can_acquire(GPermission* permission);
	[LinkName("g_permission_get_can_release")]
	public static extern c_int permission_get_can_release(GPermission* permission);
	[LinkName("g_permission_impl_update")]
	public static extern void permission_impl_update(GPermission* permission, c_int allowed, c_int can_acquire, c_int can_release);
	[LinkName("g_permission_release")]
	public static extern c_int permission_release(GPermission* permission, GCancellable* cancellable);
	[LinkName("g_permission_release_async")]
	public static extern void permission_release_async(GPermission* permission, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_permission_release_finish")]
	public static extern c_int permission_release_finish(GPermission* permission, GAsyncResult* result);
	[CRepr]
	public struct GPermissionClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GPermissionPrivate
	{
	}
	[CRepr]
	public struct GPollableInputStream
	{
		public function c_int(GPollableInputStream* stream) can_poll;

		public function GSource*(GPollableInputStream* stream, GCancellable* cancellable) create_source;

		public function c_int(GPollableInputStream* stream) is_readable;

		public function c_long(GPollableInputStream* stream, c_ulong count) read_nonblocking;
	}
	[CRepr]
	public struct GPollableInputStreamInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GPollableOutputStream
	{
		public function c_int(GPollableOutputStream* stream) can_poll;

		public function GSource*(GPollableOutputStream* stream, GCancellable* cancellable) create_source;

		public function c_int(GPollableOutputStream* stream) is_writable;

		public function c_long(GPollableOutputStream* stream, c_ulong count) write_nonblocking;

		public function GPollableReturn(GPollableOutputStream* stream, c_ulong n_vectors, c_ulong* bytes_written) writev_nonblocking;
	}
	[CRepr]
	public struct GPollableOutputStreamInterface
	{
		GTypeInterface g_iface;
	}
	public enum GPollableReturn : c_int
	{
		G_POLLABLE_RETURN_FAILED,
		G_POLLABLE_RETURN_OK,
		G_POLLABLE_RETURN_WOULD_BLOCK
	}
	public function c_int GPollableSourceFunc(GObject* pollable_stream, void* data);
	[CRepr]
	public struct GPowerProfileMonitor
	{	}
	[CRepr]
	public struct GPowerProfileMonitorInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GPropertyAction;
	[LinkName("g_property_action_new")]
	public static extern GPropertyAction* property_action_new( c_char* name, void* object,  c_char* property_name);
	[CRepr]
	public struct GProxy
	{
		public function GIOStream*(GProxy* proxy, GIOStream* connection, GProxyAddress* proxy_address, GCancellable* cancellable) connect;

		public function void(GProxy* proxy, GIOStream* connection, GProxyAddress* proxy_address, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) connect_async;

		public function GIOStream*(GProxy* proxy, GAsyncResult* result) connect_finish;

		public function c_int(GProxy* proxy) supports_hostname;
	}
	[CRepr]
	public struct GProxyAddress;
	[LinkName("g_proxy_address_new")]
	public static extern GSocketAddress* proxy_address_new(GInetAddress* inetaddr, c_ushort port,  c_char* protocol,  c_char* dest_hostname, c_ushort dest_port,  c_char* username,  c_char* password);
	[LinkName("g_proxy_address_get_destination_hostname")]
	public static extern  c_char* proxy_address_get_destination_hostname(GProxyAddress* proxy);
	[LinkName("g_proxy_address_get_destination_port")]
	public static extern c_ushort proxy_address_get_destination_port(GProxyAddress* proxy);
	[LinkName("g_proxy_address_get_destination_protocol")]
	public static extern  c_char* proxy_address_get_destination_protocol(GProxyAddress* proxy);
	[LinkName("g_proxy_address_get_password")]
	public static extern  c_char* proxy_address_get_password(GProxyAddress* proxy);
	[LinkName("g_proxy_address_get_protocol")]
	public static extern  c_char* proxy_address_get_protocol(GProxyAddress* proxy);
	[LinkName("g_proxy_address_get_uri")]
	public static extern  c_char* proxy_address_get_uri(GProxyAddress* proxy);
	[LinkName("g_proxy_address_get_username")]
	public static extern  c_char* proxy_address_get_username(GProxyAddress* proxy);
	[CRepr]
	public struct GProxyAddressClass
	{
		GInetSocketAddressClass parent_class;
	}
	[CRepr]
	public struct GProxyAddressEnumerator;
	[CRepr]
	public struct GProxyAddressEnumeratorClass
	{
		GSocketAddressEnumeratorClass parent_class;
	}
	[CRepr]
	public struct GProxyAddressEnumeratorPrivate
	{
	}
	[CRepr]
	public struct GProxyAddressPrivate
	{
	}
	[CRepr]
	public struct GProxyInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GProxyResolver
	{
		public function c_int(GProxyResolver* resolver) is_supported;

		public function c_int(GProxyResolver* resolver,  c_char* uri, GCancellable* cancellable) lookup;

		public function void(GProxyResolver* resolver,  c_char* uri, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) lookup_async;

		public function void(GProxyResolver* resolver, GAsyncResult* result) lookup_finish;
	}
	[CRepr]
	public struct GProxyResolverInterface
	{
		GTypeInterface g_iface;
	}
	public function void* GReallocFunc(void* data, c_ulong size);
	[CRepr]
	public struct GRemoteActionGroup
	{
		public function void(GRemoteActionGroup* remote,  c_char* action_name, GVariant* parameter, GVariant* platform_data) activate_action_full;

		public function void(GRemoteActionGroup* remote,  c_char* action_name, GVariant* value, GVariant* platform_data) change_action_state_full;
	}
	[CRepr]
	public struct GRemoteActionGroupInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GResolver;
	[LinkName("g_resolver_lookup_by_address")]
	public static extern c_char* resolver_lookup_by_address(GResolver* resolver, GInetAddress* address, GCancellable* cancellable);
	[LinkName("g_resolver_lookup_by_address_async")]
	public static extern void resolver_lookup_by_address_async(GResolver* resolver, GInetAddress* address, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_by_address_finish")]
	public static extern c_char* resolver_lookup_by_address_finish(GResolver* resolver, GAsyncResult* result);
	[LinkName("g_resolver_lookup_by_name")]
	public static extern GList* resolver_lookup_by_name(GResolver* resolver,  c_char* hostname, GCancellable* cancellable);
	[LinkName("g_resolver_lookup_by_name_async")]
	public static extern void resolver_lookup_by_name_async(GResolver* resolver,  c_char* hostname, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_by_name_finish")]
	public static extern GList* resolver_lookup_by_name_finish(GResolver* resolver, GAsyncResult* result);
	[LinkName("g_resolver_lookup_by_name_with_flags")]
	public static extern GList* resolver_lookup_by_name_with_flags(GResolver* resolver,  c_char* hostname, GResolverNameLookupFlags flags, GCancellable* cancellable);
	[LinkName("g_resolver_lookup_by_name_with_flags_async")]
	public static extern void resolver_lookup_by_name_with_flags_async(GResolver* resolver,  c_char* hostname, GResolverNameLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_by_name_with_flags_finish")]
	public static extern GList* resolver_lookup_by_name_with_flags_finish(GResolver* resolver, GAsyncResult* result);
	[LinkName("g_resolver_lookup_records")]
	public static extern GList* resolver_lookup_records(GResolver* resolver,  c_char* rrname, GResolverRecordType record_type, GCancellable* cancellable);
	[LinkName("g_resolver_lookup_records_async")]
	public static extern void resolver_lookup_records_async(GResolver* resolver,  c_char* rrname, GResolverRecordType record_type, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_records_finish")]
	public static extern GList* resolver_lookup_records_finish(GResolver* resolver, GAsyncResult* result);
	[LinkName("g_resolver_lookup_service")]
	public static extern GList* resolver_lookup_service(GResolver* resolver,  c_char* service,  c_char* protocol,  c_char* domain, GCancellable* cancellable);
	[LinkName("g_resolver_lookup_service_async")]
	public static extern void resolver_lookup_service_async(GResolver* resolver,  c_char* service,  c_char* protocol,  c_char* domain, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_service_finish")]
	public static extern GList* resolver_lookup_service_finish(GResolver* resolver, GAsyncResult* result);
	[LinkName("g_resolver_set_default")]
	public static extern void resolver_set_default(GResolver* resolver);
	[CRepr]
	public struct GResolverClass
	{
		GObjectClass parent_class;
	}
	public enum GResolverError : c_int
	{
		G_RESOLVER_ERROR_NOT_FOUND,
		G_RESOLVER_ERROR_TEMPORARY_FAILURE,
		G_RESOLVER_ERROR_INTERNAL
	}
	[CRepr]
	public struct GResolverNameLookupFlags
	{
		public const int G_RESOLVER_NAME_LOOKUP_FLAGS_DEFAULT = 0;
		public const int G_RESOLVER_NAME_LOOKUP_FLAGS_IPV4_ONLY = 1;
		public const int G_RESOLVER_NAME_LOOKUP_FLAGS_IPV6_ONLY = 2;
	}
	[CRepr]
	public struct GResolverPrivate
	{
	}
	public enum GResolverRecordType : c_int
	{
		G_RESOLVER_RECORD_SRV,
		G_RESOLVER_RECORD_MX,
		G_RESOLVER_RECORD_TXT,
		G_RESOLVER_RECORD_SOA,
		G_RESOLVER_RECORD_NS
	}
	[CRepr]
	public struct GResource
	{
	}
	public enum GResourceError : c_int
	{
		G_RESOURCE_ERROR_NOT_FOUND,
		G_RESOURCE_ERROR_INTERNAL
	}
	[CRepr]
	public struct GResourceFlags
	{
		public const int G_RESOURCE_FLAGS_NONE = 0;
		public const int G_RESOURCE_FLAGS_COMPRESSED = 1;
	}
	[CRepr]
	public struct GResourceLookupFlags
	{
		public const int G_RESOURCE_LOOKUP_FLAGS_NONE = 0;
	}
	[CRepr]
	public struct GSeekable
	{
		public function c_int(GSeekable* seekable) can_seek;

		public function c_int(GSeekable* seekable) can_truncate;

		public function c_int(GSeekable* seekable, int64 offset, GSeekType type, GCancellable* cancellable) seek;

		public function int64(GSeekable* seekable) tell;

		public function c_int(GSeekable* seekable, int64 offset, GCancellable* cancellable) truncate_fn;
	}
	[CRepr]
	public struct GSeekableIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GSettings;
	[LinkName("g_settings_new")]
	public static extern GSettings* settings_new( c_char* schema_id);
	[LinkName("g_settings_new_full")]
	public static extern GSettings* settings_new_full(GSettingsSchema* schema, GSettingsBackend* backend,  c_char* path);
	[LinkName("g_settings_new_with_backend")]
	public static extern GSettings* settings_new_with_backend( c_char* schema_id, GSettingsBackend* backend);
	[LinkName("g_settings_new_with_backend_and_path")]
	public static extern GSettings* settings_new_with_backend_and_path( c_char* schema_id, GSettingsBackend* backend,  c_char* path);
	[LinkName("g_settings_new_with_path")]
	public static extern GSettings* settings_new_with_path( c_char* schema_id,  c_char* path);
	[LinkName("g_settings_apply")]
	public static extern void settings_apply(GSettings* settings);
	[LinkName("g_settings_bind")]
	public static extern void settings_bind(GSettings* settings,  c_char* key, void* object,  c_char* property, GSettingsBindFlags flags);
	[LinkName("g_settings_bind_with_mapping")]
	public static extern void settings_bind_with_mapping(GSettings* settings,  c_char* key, void* object,  c_char* property, GSettingsBindFlags flags, GSettingsBindGetMapping get_mapping, GSettingsBindSetMapping set_mapping, void* user_data, GDestroyNotify destroy);
	[LinkName("g_settings_bind_writable")]
	public static extern void settings_bind_writable(GSettings* settings,  c_char* key, void* object,  c_char* property, c_int inverted);
	[LinkName("g_settings_create_action")]
	public static extern GAction* settings_create_action(GSettings* settings,  c_char* key);
	[LinkName("g_settings_delay")]
	public static extern void settings_delay(GSettings* settings);
	[LinkName("g_settings_get")]
	public static extern void settings_get(GSettings* settings,  c_char* key,  c_char* format);
	[LinkName("g_settings_get_boolean")]
	public static extern c_int settings_get_boolean(GSettings* settings,  c_char* key);
	[LinkName("g_settings_get_child")]
	public static extern GSettings* settings_get_child(GSettings* settings,  c_char* name);
	[LinkName("g_settings_get_default_value")]
	public static extern GVariant* settings_get_default_value(GSettings* settings,  c_char* key);
	[LinkName("g_settings_get_double")]
	public static extern double settings_get_double(GSettings* settings,  c_char* key);
	[LinkName("g_settings_get_enum")]
	public static extern c_int settings_get_enum(GSettings* settings,  c_char* key);
	[LinkName("g_settings_get_flags")]
	public static extern c_uint settings_get_flags(GSettings* settings,  c_char* key);
	[LinkName("g_settings_get_has_unapplied")]
	public static extern c_int settings_get_has_unapplied(GSettings* settings);
	[LinkName("g_settings_get_int")]
	public static extern c_int settings_get_int(GSettings* settings,  c_char* key);
	[LinkName("g_settings_get_int64")]
	public static extern c_longlong settings_get_int64(GSettings* settings,  c_char* key);
	[LinkName("g_settings_get_mapped")]
	public static extern void* settings_get_mapped(GSettings* settings,  c_char* key, GSettingsGetMapping mapping, void* user_data);
	[LinkName("g_settings_get_range")]
	public static extern GVariant* settings_get_range(GSettings* settings,  c_char* key);
	[LinkName("g_settings_get_string")]
	public static extern c_char* settings_get_string(GSettings* settings,  c_char* key);
	[LinkName("g_settings_get_strv")]
	public static extern c_char** settings_get_strv(GSettings* settings,  c_char* key);
	[LinkName("g_settings_get_uint")]
	public static extern c_uint settings_get_uint(GSettings* settings,  c_char* key);
	[LinkName("g_settings_get_uint64")]
	public static extern c_ulonglong settings_get_uint64(GSettings* settings,  c_char* key);
	[LinkName("g_settings_get_user_value")]
	public static extern GVariant* settings_get_user_value(GSettings* settings,  c_char* key);
	[LinkName("g_settings_get_value")]
	public static extern GVariant* settings_get_value(GSettings* settings,  c_char* key);
	[LinkName("g_settings_is_writable")]
	public static extern c_int settings_is_writable(GSettings* settings,  c_char* name);
	[LinkName("g_settings_list_children")]
	public static extern c_char** settings_list_children(GSettings* settings);
	[LinkName("g_settings_list_keys")]
	public static extern c_char** settings_list_keys(GSettings* settings);
	[LinkName("g_settings_range_check")]
	public static extern c_int settings_range_check(GSettings* settings,  c_char* key, GVariant* value);
	[LinkName("g_settings_reset")]
	public static extern void settings_reset(GSettings* settings,  c_char* key);
	[LinkName("g_settings_revert")]
	public static extern void settings_revert(GSettings* settings);
	[LinkName("g_settings_set")]
	public static extern c_int settings_set(GSettings* settings,  c_char* key,  c_char* format);
	[LinkName("g_settings_set_boolean")]
	public static extern c_int settings_set_boolean(GSettings* settings,  c_char* key, c_int value);
	[LinkName("g_settings_set_double")]
	public static extern c_int settings_set_double(GSettings* settings,  c_char* key, double value);
	[LinkName("g_settings_set_enum")]
	public static extern c_int settings_set_enum(GSettings* settings,  c_char* key, c_int value);
	[LinkName("g_settings_set_flags")]
	public static extern c_int settings_set_flags(GSettings* settings,  c_char* key, c_uint value);
	[LinkName("g_settings_set_int")]
	public static extern c_int settings_set_int(GSettings* settings,  c_char* key, c_int value);
	[LinkName("g_settings_set_int64")]
	public static extern c_int settings_set_int64(GSettings* settings,  c_char* key, c_longlong value);
	[LinkName("g_settings_set_string")]
	public static extern c_int settings_set_string(GSettings* settings,  c_char* key,  c_char* value);
	[LinkName("g_settings_set_strv")]
	public static extern c_int settings_set_strv(GSettings* settings,  c_char* key);
	[LinkName("g_settings_set_uint")]
	public static extern c_int settings_set_uint(GSettings* settings,  c_char* key, c_uint value);
	[LinkName("g_settings_set_uint64")]
	public static extern c_int settings_set_uint64(GSettings* settings,  c_char* key, c_ulonglong value);
	[LinkName("g_settings_set_value")]
	public static extern c_int settings_set_value(GSettings* settings,  c_char* key, GVariant* value);
	[CRepr]
	public struct GSettingsBackend;
	[LinkName("g_settings_backend_changed")]
	public static extern void settings_backend_changed(GSettingsBackend* backend,  c_char* key, void* origin_tag);
	[LinkName("g_settings_backend_changed_tree")]
	public static extern void settings_backend_changed_tree(GSettingsBackend* backend, GTree* tree, void* origin_tag);
	[LinkName("g_settings_backend_keys_changed")]
	public static extern void settings_backend_keys_changed(GSettingsBackend* backend,  c_char* path, void* origin_tag);
	[LinkName("g_settings_backend_path_changed")]
	public static extern void settings_backend_path_changed(GSettingsBackend* backend,  c_char* path, void* origin_tag);
	[LinkName("g_settings_backend_path_writable_changed")]
	public static extern void settings_backend_path_writable_changed(GSettingsBackend* backend,  c_char* path);
	[LinkName("g_settings_backend_writable_changed")]
	public static extern void settings_backend_writable_changed(GSettingsBackend* backend,  c_char* key);
	[CRepr]
	public struct GSettingsBackendClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GSettingsBackendPrivate
	{
	}
	[CRepr]
	public struct GSettingsBindFlags
	{
		public const int G_SETTINGS_BIND_DEFAULT = 0;
		public const int G_SETTINGS_BIND_GET = 1;
		public const int G_SETTINGS_BIND_SET = 2;
		public const int G_SETTINGS_BIND_NO_SENSITIVITY = 4;
		public const int G_SETTINGS_BIND_GET_NO_CHANGES = 8;
		public const int G_SETTINGS_BIND_INVERT_BOOLEAN = 16;
	}
	public function c_int GSettingsBindGetMapping(GValue* value, GVariant* variant, void* user_data);
	public function GVariant* GSettingsBindSetMapping( GValue* value,  GVariantType* expected_type, void* user_data);
	[CRepr]
	public struct GSettingsClass
	{
		GObjectClass parent_class;
	}
	public function c_int GSettingsGetMapping(GVariant* value, void** result, void* user_data);
	[CRepr]
	public struct GSettingsPrivate
	{
	}
	[CRepr]
	public struct GSettingsSchema
	{
	}
	[CRepr]
	public struct GSettingsSchemaKey
	{
	}
	[CRepr]
	public struct GSettingsSchemaSource
	{
	}
	[CRepr]
	public struct GSimpleAction;
	[LinkName("g_simple_action_new")]
	public static extern GSimpleAction* simple_action_new( c_char* name,  GVariantType* parameter_type);
	[LinkName("g_simple_action_new_stateful")]
	public static extern GSimpleAction* simple_action_new_stateful( c_char* name,  GVariantType* parameter_type, GVariant* state);
	[LinkName("g_simple_action_set_enabled")]
	public static extern void simple_action_set_enabled(GSimpleAction* simple, c_int enabled);
	[LinkName("g_simple_action_set_state")]
	public static extern void simple_action_set_state(GSimpleAction* simple, GVariant* value);
	[LinkName("g_simple_action_set_state_hint")]
	public static extern void simple_action_set_state_hint(GSimpleAction* simple, GVariant* state_hint);
	[CRepr]
	public struct GSimpleActionGroup;
	[LinkName("g_simple_action_group_new")]
	public static extern GSimpleActionGroup* simple_action_group_new();
	[LinkName("g_simple_action_group_add_entries")]
	public static extern void simple_action_group_add_entries(GSimpleActionGroup* simple, c_int n_entries, void* user_data);
	[LinkName("g_simple_action_group_insert")]
	public static extern void simple_action_group_insert(GSimpleActionGroup* simple, GAction* action);
	[LinkName("g_simple_action_group_lookup")]
	public static extern GAction* simple_action_group_lookup(GSimpleActionGroup* simple,  c_char* action_name);
	[LinkName("g_simple_action_group_remove")]
	public static extern void simple_action_group_remove(GSimpleActionGroup* simple,  c_char* action_name);
	[CRepr]
	public struct GSimpleActionGroupClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GSimpleActionGroupPrivate
	{
	}
	[CRepr]
	public struct GSimpleAsyncResult;
	[LinkName("g_simple_async_result_new")]
	public static extern GSimpleAsyncResult* simple_async_result_new(GObject* source_object, GAsyncReadyCallback callback, void* user_data, void* source_tag);
	[LinkName("g_simple_async_result_new_error")]
	public static extern GSimpleAsyncResult* simple_async_result_new_error(GObject* source_object, GAsyncReadyCallback callback, void* user_data, GQuark domain, c_int code,  c_char* format);
	[LinkName("g_simple_async_result_new_from_error")]
	public static extern GSimpleAsyncResult* simple_async_result_new_from_error(GObject* source_object, GAsyncReadyCallback callback, void* user_data,  GError* error);
	[LinkName("g_simple_async_result_new_take_error")]
	public static extern GSimpleAsyncResult* simple_async_result_new_take_error(GObject* source_object, GAsyncReadyCallback callback, void* user_data, GError* error);
	[LinkName("g_simple_async_result_complete")]
	public static extern void simple_async_result_complete(GSimpleAsyncResult* simple);
	[LinkName("g_simple_async_result_complete_in_idle")]
	public static extern void simple_async_result_complete_in_idle(GSimpleAsyncResult* simple);
	[LinkName("g_simple_async_result_get_op_res_gboolean")]
	public static extern c_int simple_async_result_get_op_res_gboolean(GSimpleAsyncResult* simple);
	[LinkName("g_simple_async_result_get_op_res_gpointer")]
	public static extern void* simple_async_result_get_op_res_gpointer(GSimpleAsyncResult* simple);
	[LinkName("g_simple_async_result_get_op_res_gssize")]
	public static extern c_long simple_async_result_get_op_res_gssize(GSimpleAsyncResult* simple);
	[LinkName("g_simple_async_result_get_source_tag")]
	public static extern void* simple_async_result_get_source_tag(GSimpleAsyncResult* simple);
	[LinkName("g_simple_async_result_propagate_error")]
	public static extern c_int simple_async_result_propagate_error(GSimpleAsyncResult* simple);
	[LinkName("g_simple_async_result_run_in_thread")]
	public static extern void simple_async_result_run_in_thread(GSimpleAsyncResult* simple, GSimpleAsyncThreadFunc func, c_int io_priority, GCancellable* cancellable);
	[LinkName("g_simple_async_result_set_check_cancellable")]
	public static extern void simple_async_result_set_check_cancellable(GSimpleAsyncResult* simple, GCancellable* check_cancellable);
	[LinkName("g_simple_async_result_set_error")]
	public static extern void simple_async_result_set_error(GSimpleAsyncResult* simple, GQuark domain, c_int code,  c_char* format);
	[LinkName("g_simple_async_result_set_error_va")]
	public static extern void simple_async_result_set_error_va(GSimpleAsyncResult* simple, GQuark domain, c_int code,  c_char* format, VarArgs args);
	[LinkName("g_simple_async_result_set_from_error")]
	public static extern void simple_async_result_set_from_error(GSimpleAsyncResult* simple,  GError* error);
	[LinkName("g_simple_async_result_set_handle_cancellation")]
	public static extern void simple_async_result_set_handle_cancellation(GSimpleAsyncResult* simple, c_int handle_cancellation);
	[LinkName("g_simple_async_result_set_op_res_gboolean")]
	public static extern void simple_async_result_set_op_res_gboolean(GSimpleAsyncResult* simple, c_int op_res);
	[LinkName("g_simple_async_result_set_op_res_gpointer")]
	public static extern void simple_async_result_set_op_res_gpointer(GSimpleAsyncResult* simple, void* op_res, GDestroyNotify destroy_op_res);
	[LinkName("g_simple_async_result_set_op_res_gssize")]
	public static extern void simple_async_result_set_op_res_gssize(GSimpleAsyncResult* simple, c_long op_res);
	[LinkName("g_simple_async_result_take_error")]
	public static extern void simple_async_result_take_error(GSimpleAsyncResult* simple, GError* error);
	[CRepr]
	public struct GSimpleAsyncResultClass
	{
	}
	public function void GSimpleAsyncThreadFunc(GSimpleAsyncResult* res, GObject* object, GCancellable* cancellable);
	[CRepr]
	public struct GSimpleIOStream;
	[LinkName("g_simple_io_stream_new")]
	public static extern GIOStream* simple_io_stream_new(GInputStream* input_stream, GOutputStream* output_stream);
	[CRepr]
	public struct GSimplePermission;
	[LinkName("g_simple_permission_new")]
	public static extern GPermission* simple_permission_new(c_int allowed);
	[CRepr]
	public struct GSimpleProxyResolver;
	[LinkName("g_simple_proxy_resolver_set_default_proxy")]
	public static extern void simple_proxy_resolver_set_default_proxy(GSimpleProxyResolver* resolver,  c_char* default_proxy);
	[LinkName("g_simple_proxy_resolver_set_ignore_hosts")]
	public static extern void simple_proxy_resolver_set_ignore_hosts(GSimpleProxyResolver* resolver);
	[LinkName("g_simple_proxy_resolver_set_uri_proxy")]
	public static extern void simple_proxy_resolver_set_uri_proxy(GSimpleProxyResolver* resolver,  c_char* uri_scheme,  c_char* proxy);
	[CRepr]
	public struct GSimpleProxyResolverClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GSimpleProxyResolverPrivate
	{
	}
	[CRepr]
	public struct GSocket;
	[LinkName("g_socket_new")]
	public static extern GSocket* socket_new(GSocketFamily family, GSocketType type, GSocketProtocol protocol);
	[LinkName("g_socket_new_from_fd")]
	public static extern GSocket* socket_new_from_fd(c_int fd);
	[LinkName("g_socket_accept")]
	public static extern GSocket* socket_accept(GSocket* socket, GCancellable* cancellable);
	[LinkName("g_socket_bind")]
	public static extern c_int socket_bind(GSocket* socket, GSocketAddress* address, c_int allow_reuse);
	[LinkName("g_socket_check_connect_result")]
	public static extern c_int socket_check_connect_result(GSocket* socket);
	[LinkName("g_socket_close")]
	public static extern c_int socket_close(GSocket* socket);
	[LinkName("g_socket_condition_check")]
	public static extern GIOCondition socket_condition_check(GSocket* socket, GIOCondition condition);
	[LinkName("g_socket_condition_timed_wait")]
	public static extern c_int socket_condition_timed_wait(GSocket* socket, GIOCondition condition, c_longlong timeout_us, GCancellable* cancellable);
	[LinkName("g_socket_condition_wait")]
	public static extern c_int socket_condition_wait(GSocket* socket, GIOCondition condition, GCancellable* cancellable);
	[LinkName("g_socket_connect")]
	public static extern c_int socket_connect(GSocket* socket, GSocketAddress* address, GCancellable* cancellable);
	[LinkName("g_socket_connection_factory_create_connection")]
	public static extern GSocketConnection* socket_connection_factory_create_connection(GSocket* socket);
	[LinkName("g_socket_create_source")]
	public static extern GSource* socket_create_source(GSocket* socket, GIOCondition condition, GCancellable* cancellable);
	[LinkName("g_socket_get_available_bytes")]
	public static extern c_long socket_get_available_bytes(GSocket* socket);
	[LinkName("g_socket_get_blocking")]
	public static extern c_int socket_get_blocking(GSocket* socket);
	[LinkName("g_socket_get_broadcast")]
	public static extern c_int socket_get_broadcast(GSocket* socket);
	[LinkName("g_socket_get_credentials")]
	public static extern GCredentials* socket_get_credentials(GSocket* socket);
	[LinkName("g_socket_get_family")]
	public static extern GSocketFamily socket_get_family(GSocket* socket);
	[LinkName("g_socket_get_fd")]
	public static extern c_int socket_get_fd(GSocket* socket);
	[LinkName("g_socket_get_keepalive")]
	public static extern c_int socket_get_keepalive(GSocket* socket);
	[LinkName("g_socket_get_listen_backlog")]
	public static extern c_int socket_get_listen_backlog(GSocket* socket);
	[LinkName("g_socket_get_local_address")]
	public static extern GSocketAddress* socket_get_local_address(GSocket* socket);
	[LinkName("g_socket_get_multicast_loopback")]
	public static extern c_int socket_get_multicast_loopback(GSocket* socket);
	[LinkName("g_socket_get_multicast_ttl")]
	public static extern c_uint socket_get_multicast_ttl(GSocket* socket);
	[LinkName("g_socket_get_option")]
	public static extern c_int socket_get_option(GSocket* socket, c_int level, c_int optname, c_int* value);
	[LinkName("g_socket_get_protocol")]
	public static extern GSocketProtocol socket_get_protocol(GSocket* socket);
	[LinkName("g_socket_get_remote_address")]
	public static extern GSocketAddress* socket_get_remote_address(GSocket* socket);
	[LinkName("g_socket_get_socket_type")]
	public static extern GSocketType socket_get_socket_type(GSocket* socket);
	[LinkName("g_socket_get_timeout")]
	public static extern c_uint socket_get_timeout(GSocket* socket);
	[LinkName("g_socket_get_ttl")]
	public static extern c_uint socket_get_ttl(GSocket* socket);
	[LinkName("g_socket_is_closed")]
	public static extern c_int socket_is_closed(GSocket* socket);
	[LinkName("g_socket_is_connected")]
	public static extern c_int socket_is_connected(GSocket* socket);
	[LinkName("g_socket_join_multicast_group")]
	public static extern c_int socket_join_multicast_group(GSocket* socket, GInetAddress* group, c_int source_specific,  c_char* iface);
	[LinkName("g_socket_join_multicast_group_ssm")]
	public static extern c_int socket_join_multicast_group_ssm(GSocket* socket, GInetAddress* group, GInetAddress* source_specific,  c_char* iface);
	[LinkName("g_socket_leave_multicast_group")]
	public static extern c_int socket_leave_multicast_group(GSocket* socket, GInetAddress* group, c_int source_specific,  c_char* iface);
	[LinkName("g_socket_leave_multicast_group_ssm")]
	public static extern c_int socket_leave_multicast_group_ssm(GSocket* socket, GInetAddress* group, GInetAddress* source_specific,  c_char* iface);
	[LinkName("g_socket_listen")]
	public static extern c_int socket_listen(GSocket* socket);
	[LinkName("g_socket_receive")]
	public static extern c_long socket_receive(GSocket* socket, c_ulong size, GCancellable* cancellable);
	[LinkName("g_socket_receive_from")]
	public static extern c_long socket_receive_from(GSocket* socket, GSocketAddress** address, c_ulong size, GCancellable* cancellable);
	[LinkName("g_socket_receive_message")]
	public static extern c_long socket_receive_message(GSocket* socket, GSocketAddress** address, c_int num_vectors, c_int* num_messages, c_int* flags, GCancellable* cancellable);
	[LinkName("g_socket_receive_messages")]
	public static extern c_int socket_receive_messages(GSocket* socket, c_uint num_messages, c_int flags, GCancellable* cancellable);
	[LinkName("g_socket_receive_with_blocking")]
	public static extern c_long socket_receive_with_blocking(GSocket* socket, c_ulong size, c_int blocking, GCancellable* cancellable);
	[LinkName("g_socket_send")]
	public static extern c_long socket_send(GSocket* socket, c_ulong size, GCancellable* cancellable);
	[LinkName("g_socket_send_message")]
	public static extern c_long socket_send_message(GSocket* socket, GSocketAddress* address, c_int num_vectors, c_int num_messages, c_int flags, GCancellable* cancellable);
	[LinkName("g_socket_send_message_with_timeout")]
	public static extern GPollableReturn socket_send_message_with_timeout(GSocket* socket, GSocketAddress* address, c_int num_vectors, c_int num_messages, c_int flags, c_longlong timeout_us, c_ulong* bytes_written, GCancellable* cancellable);
	[LinkName("g_socket_send_messages")]
	public static extern c_int socket_send_messages(GSocket* socket, c_uint num_messages, c_int flags, GCancellable* cancellable);
	[LinkName("g_socket_send_to")]
	public static extern c_long socket_send_to(GSocket* socket, GSocketAddress* address, c_ulong size, GCancellable* cancellable);
	[LinkName("g_socket_send_with_blocking")]
	public static extern c_long socket_send_with_blocking(GSocket* socket, c_ulong size, c_int blocking, GCancellable* cancellable);
	[LinkName("g_socket_set_blocking")]
	public static extern void socket_set_blocking(GSocket* socket, c_int blocking);
	[LinkName("g_socket_set_broadcast")]
	public static extern void socket_set_broadcast(GSocket* socket, c_int broadcast);
	[LinkName("g_socket_set_keepalive")]
	public static extern void socket_set_keepalive(GSocket* socket, c_int keepalive);
	[LinkName("g_socket_set_listen_backlog")]
	public static extern void socket_set_listen_backlog(GSocket* socket, c_int backlog);
	[LinkName("g_socket_set_multicast_loopback")]
	public static extern void socket_set_multicast_loopback(GSocket* socket, c_int loopback);
	[LinkName("g_socket_set_multicast_ttl")]
	public static extern void socket_set_multicast_ttl(GSocket* socket, c_uint ttl);
	[LinkName("g_socket_set_option")]
	public static extern c_int socket_set_option(GSocket* socket, c_int level, c_int optname, c_int value);
	[LinkName("g_socket_set_timeout")]
	public static extern void socket_set_timeout(GSocket* socket, c_uint timeout);
	[LinkName("g_socket_set_ttl")]
	public static extern void socket_set_ttl(GSocket* socket, c_uint ttl);
	[LinkName("g_socket_shutdown")]
	public static extern c_int socket_shutdown(GSocket* socket, c_int shutdown_read, c_int shutdown_write);
	[LinkName("g_socket_speaks_ipv4")]
	public static extern c_int socket_speaks_ipv4(GSocket* socket);
	[CRepr]
	public struct GSocketAddress;
	[LinkName("g_socket_address_new_from_native")]
	public static extern GSocketAddress* socket_address_new_from_native(void* native, c_ulong len);
	[LinkName("g_socket_address_get_family")]
	public static extern GSocketFamily socket_address_get_family(GSocketAddress* address);
	[LinkName("g_socket_address_get_native_size")]
	public static extern c_long socket_address_get_native_size(GSocketAddress* address);
	[LinkName("g_socket_address_to_native")]
	public static extern c_int socket_address_to_native(GSocketAddress* address, void* dest, c_ulong destlen);
	[CRepr]
	public struct GSocketAddressClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GSocketAddressEnumerator;
	[LinkName("g_socket_address_enumerator_next")]
	public static extern GSocketAddress* socket_address_enumerator_next(GSocketAddressEnumerator* enumerator, GCancellable* cancellable);
	[LinkName("g_socket_address_enumerator_next_async")]
	public static extern void socket_address_enumerator_next_async(GSocketAddressEnumerator* enumerator, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_address_enumerator_next_finish")]
	public static extern GSocketAddress* socket_address_enumerator_next_finish(GSocketAddressEnumerator* enumerator, GAsyncResult* result);
	[CRepr]
	public struct GSocketAddressEnumeratorClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GSocketClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GSocketClient;
	[LinkName("g_socket_client_new")]
	public static extern GSocketClient* socket_client_new();
	[LinkName("g_socket_client_add_application_proxy")]
	public static extern void socket_client_add_application_proxy(GSocketClient* client,  c_char* protocol);
	[LinkName("g_socket_client_connect")]
	public static extern GSocketConnection* socket_client_connect(GSocketClient* client, GSocketConnectable* connectable, GCancellable* cancellable);
	[LinkName("g_socket_client_connect_async")]
	public static extern void socket_client_connect_async(GSocketClient* client, GSocketConnectable* connectable, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_client_connect_finish")]
	public static extern GSocketConnection* socket_client_connect_finish(GSocketClient* client, GAsyncResult* result);
	[LinkName("g_socket_client_connect_to_host")]
	public static extern GSocketConnection* socket_client_connect_to_host(GSocketClient* client,  c_char* host_and_port, c_ushort default_port, GCancellable* cancellable);
	[LinkName("g_socket_client_connect_to_host_async")]
	public static extern void socket_client_connect_to_host_async(GSocketClient* client,  c_char* host_and_port, c_ushort default_port, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_client_connect_to_host_finish")]
	public static extern GSocketConnection* socket_client_connect_to_host_finish(GSocketClient* client, GAsyncResult* result);
	[LinkName("g_socket_client_connect_to_service")]
	public static extern GSocketConnection* socket_client_connect_to_service(GSocketClient* client,  c_char* domain,  c_char* service, GCancellable* cancellable);
	[LinkName("g_socket_client_connect_to_service_async")]
	public static extern void socket_client_connect_to_service_async(GSocketClient* client,  c_char* domain,  c_char* service, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_client_connect_to_service_finish")]
	public static extern GSocketConnection* socket_client_connect_to_service_finish(GSocketClient* client, GAsyncResult* result);
	[LinkName("g_socket_client_connect_to_uri")]
	public static extern GSocketConnection* socket_client_connect_to_uri(GSocketClient* client,  c_char* uri, c_ushort default_port, GCancellable* cancellable);
	[LinkName("g_socket_client_connect_to_uri_async")]
	public static extern void socket_client_connect_to_uri_async(GSocketClient* client,  c_char* uri, c_ushort default_port, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_client_connect_to_uri_finish")]
	public static extern GSocketConnection* socket_client_connect_to_uri_finish(GSocketClient* client, GAsyncResult* result);
	[LinkName("g_socket_client_get_enable_proxy")]
	public static extern c_int socket_client_get_enable_proxy(GSocketClient* client);
	[LinkName("g_socket_client_get_family")]
	public static extern GSocketFamily socket_client_get_family(GSocketClient* client);
	[LinkName("g_socket_client_get_local_address")]
	public static extern GSocketAddress* socket_client_get_local_address(GSocketClient* client);
	[LinkName("g_socket_client_get_protocol")]
	public static extern GSocketProtocol socket_client_get_protocol(GSocketClient* client);
	[LinkName("g_socket_client_get_proxy_resolver")]
	public static extern GProxyResolver* socket_client_get_proxy_resolver(GSocketClient* client);
	[LinkName("g_socket_client_get_socket_type")]
	public static extern GSocketType socket_client_get_socket_type(GSocketClient* client);
	[LinkName("g_socket_client_get_timeout")]
	public static extern c_uint socket_client_get_timeout(GSocketClient* client);
	[LinkName("g_socket_client_get_tls")]
	public static extern c_int socket_client_get_tls(GSocketClient* client);
	[LinkName("g_socket_client_get_tls_validation_flags")]
	public static extern GTlsCertificateFlags socket_client_get_tls_validation_flags(GSocketClient* client);
	[LinkName("g_socket_client_set_enable_proxy")]
	public static extern void socket_client_set_enable_proxy(GSocketClient* client, c_int enable);
	[LinkName("g_socket_client_set_family")]
	public static extern void socket_client_set_family(GSocketClient* client, GSocketFamily family);
	[LinkName("g_socket_client_set_local_address")]
	public static extern void socket_client_set_local_address(GSocketClient* client, GSocketAddress* address);
	[LinkName("g_socket_client_set_protocol")]
	public static extern void socket_client_set_protocol(GSocketClient* client, GSocketProtocol protocol);
	[LinkName("g_socket_client_set_proxy_resolver")]
	public static extern void socket_client_set_proxy_resolver(GSocketClient* client, GProxyResolver* proxy_resolver);
	[LinkName("g_socket_client_set_socket_type")]
	public static extern void socket_client_set_socket_type(GSocketClient* client, GSocketType type);
	[LinkName("g_socket_client_set_timeout")]
	public static extern void socket_client_set_timeout(GSocketClient* client, c_uint timeout);
	[LinkName("g_socket_client_set_tls")]
	public static extern void socket_client_set_tls(GSocketClient* client, c_int tls);
	[LinkName("g_socket_client_set_tls_validation_flags")]
	public static extern void socket_client_set_tls_validation_flags(GSocketClient* client, GTlsCertificateFlags flags);
	[CRepr]
	public struct GSocketClientClass
	{
		GObjectClass parent_class;
	}
	public enum GSocketClientEvent : c_int
	{
		G_SOCKET_CLIENT_RESOLVING,
		G_SOCKET_CLIENT_RESOLVED,
		G_SOCKET_CLIENT_CONNECTING,
		G_SOCKET_CLIENT_CONNECTED,
		G_SOCKET_CLIENT_PROXY_NEGOTIATING,
		G_SOCKET_CLIENT_PROXY_NEGOTIATED,
		G_SOCKET_CLIENT_TLS_HANDSHAKING,
		G_SOCKET_CLIENT_TLS_HANDSHAKED,
		G_SOCKET_CLIENT_COMPLETE
	}
	[CRepr]
	public struct GSocketClientPrivate
	{
	}
	[CRepr]
	public struct GSocketConnectable
	{
		public function GSocketAddressEnumerator*(GSocketConnectable* connectable) enumerate;

		public function GSocketAddressEnumerator*(GSocketConnectable* connectable) proxy_enumerate;

		public function c_char*(GSocketConnectable* connectable) to_string;
	}
	[CRepr]
	public struct GSocketConnectableIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GSocketConnection;
	[LinkName("g_socket_connection_connect")]
	public static extern c_int socket_connection_connect(GSocketConnection* connection, GSocketAddress* address, GCancellable* cancellable);
	[LinkName("g_socket_connection_connect_async")]
	public static extern void socket_connection_connect_async(GSocketConnection* connection, GSocketAddress* address, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_connection_connect_finish")]
	public static extern c_int socket_connection_connect_finish(GSocketConnection* connection, GAsyncResult* result);
	[LinkName("g_socket_connection_get_local_address")]
	public static extern GSocketAddress* socket_connection_get_local_address(GSocketConnection* connection);
	[LinkName("g_socket_connection_get_remote_address")]
	public static extern GSocketAddress* socket_connection_get_remote_address(GSocketConnection* connection);
	[LinkName("g_socket_connection_get_socket")]
	public static extern GSocket* socket_connection_get_socket(GSocketConnection* connection);
	[LinkName("g_socket_connection_is_connected")]
	public static extern c_int socket_connection_is_connected(GSocketConnection* connection);
	[CRepr]
	public struct GSocketConnectionClass
	{
		GIOStreamClass parent_class;
	}
	[CRepr]
	public struct GSocketConnectionPrivate
	{
	}
	[CRepr]
	public struct GSocketControlMessage;
	[LinkName("g_socket_control_message_get_level")]
	public static extern c_int socket_control_message_get_level(GSocketControlMessage* message);
	[LinkName("g_socket_control_message_get_msg_type")]
	public static extern c_int socket_control_message_get_mstype(GSocketControlMessage* message);
	[LinkName("g_socket_control_message_get_size")]
	public static extern c_ulong socket_control_message_get_size(GSocketControlMessage* message);
	[LinkName("g_socket_control_message_serialize")]
	public static extern void socket_control_message_serialize(GSocketControlMessage* message, void* data);
	[CRepr]
	public struct GSocketControlMessageClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GSocketControlMessagePrivate
	{
	}
	public enum GSocketFamily : c_int
	{
		G_SOCKET_FAMILY_INVALID,
		G_SOCKET_FAMILY_UNIX,
		G_SOCKET_FAMILY_IPV4,
		G_SOCKET_FAMILY_IPV6
	}
	[CRepr]
	public struct GSocketListener;
	[LinkName("g_socket_listener_new")]
	public static extern GSocketListener* socket_listener_new();
	[LinkName("g_socket_listener_accept")]
	public static extern GSocketConnection* socket_listener_accept(GSocketListener* listener, GObject** source_object, GCancellable* cancellable);
	[LinkName("g_socket_listener_accept_async")]
	public static extern void socket_listener_accept_async(GSocketListener* listener, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_listener_accept_finish")]
	public static extern GSocketConnection* socket_listener_accept_finish(GSocketListener* listener, GAsyncResult* result, GObject** source_object);
	[LinkName("g_socket_listener_accept_socket")]
	public static extern GSocket* socket_listener_accept_socket(GSocketListener* listener, GObject** source_object, GCancellable* cancellable);
	[LinkName("g_socket_listener_accept_socket_async")]
	public static extern void socket_listener_accept_socket_async(GSocketListener* listener, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_listener_accept_socket_finish")]
	public static extern GSocket* socket_listener_accept_socket_finish(GSocketListener* listener, GAsyncResult* result, GObject** source_object);
	[LinkName("g_socket_listener_add_address")]
	public static extern c_int socket_listener_add_address(GSocketListener* listener, GSocketAddress* address, GSocketType type, GSocketProtocol protocol, GObject* source_object, GSocketAddress** effective_address);
	[LinkName("g_socket_listener_add_any_inet_port")]
	public static extern c_ushort socket_listener_add_any_inet_port(GSocketListener* listener, GObject* source_object);
	[LinkName("g_socket_listener_add_inet_port")]
	public static extern c_int socket_listener_add_inet_port(GSocketListener* listener, c_ushort port, GObject* source_object);
	[LinkName("g_socket_listener_add_socket")]
	public static extern c_int socket_listener_add_socket(GSocketListener* listener, GSocket* socket, GObject* source_object);
	[LinkName("g_socket_listener_close")]
	public static extern void socket_listener_close(GSocketListener* listener);
	[LinkName("g_socket_listener_set_backlog")]
	public static extern void socket_listener_set_backlog(GSocketListener* listener, c_int listen_backlog);
	[CRepr]
	public struct GSocketListenerClass
	{
		GObjectClass parent_class;
	}
	public enum GSocketListenerEvent : c_int
	{
		G_SOCKET_LISTENER_BINDING,
		G_SOCKET_LISTENER_BOUND,
		G_SOCKET_LISTENER_LISTENING,
		G_SOCKET_LISTENER_LISTENED
	}
	[CRepr]
	public struct GSocketListenerPrivate
	{
	}
	[CRepr]
	public struct GSocketMsgFlags
	{
		public const int G_SOCKET_MSG_NONE = 0;
		public const int G_SOCKET_MSG_OOB = 1;
		public const int G_SOCKET_MSG_PEEK = 2;
		public const int G_SOCKET_MSG_DONTROUTE = 4;
	}
	[CRepr]
	public struct GSocketPrivate
	{
	}
	public enum GSocketProtocol : c_int
	{
		G_SOCKET_PROTOCOL_UNKNOWN,
		G_SOCKET_PROTOCOL_DEFAULT,
		G_SOCKET_PROTOCOL_TCP,
		G_SOCKET_PROTOCOL_UDP,
		G_SOCKET_PROTOCOL_SCTP
	}
	[CRepr]
	public struct GSocketService;
	[LinkName("g_socket_service_new")]
	public static extern GSocketService* socket_service_new();
	[LinkName("g_socket_service_is_active")]
	public static extern c_int socket_service_is_active(GSocketService* service);
	[LinkName("g_socket_service_start")]
	public static extern void socket_service_start(GSocketService* service);
	[LinkName("g_socket_service_stop")]
	public static extern void socket_service_stop(GSocketService* service);
	[CRepr]
	public struct GSocketServiceClass
	{
		GSocketListenerClass parent_class;
	}
	[CRepr]
	public struct GSocketServicePrivate
	{
	}
	public function c_int GSocketSourceFunc(GSocket* socket, GIOCondition condition, void* data);
	public enum GSocketType : c_int
	{
		G_SOCKET_TYPE_INVALID,
		G_SOCKET_TYPE_STREAM,
		G_SOCKET_TYPE_DATAGRAM,
		G_SOCKET_TYPE_SEQPACKET
	}
	[CRepr]
	public struct GSrvTarget
	{
	}
	[CRepr]
	public struct GStaticResource
	{
		 c_uchar* data;
		c_ulong data_len;
		GResource* resource;
		GStaticResource* next;
		void* padding;
	}
	[CRepr]
	public struct GSubprocess;
	[LinkName("g_subprocess_new")]
	public static extern GSubprocess* subprocess_new(GSubprocessFlags flags, GError** error,  c_char* argv0);
	[LinkName("g_subprocess_newv")]
	public static extern GSubprocess* subprocess_newv(GSubprocessFlags flags);
	[LinkName("g_subprocess_communicate")]
	public static extern c_int subprocess_communicate(GSubprocess* subprocess, GBytes* stdin_buf, GCancellable* cancellable, GBytes** stdout_buf, GBytes** stderr_buf);
	[LinkName("g_subprocess_communicate_async")]
	public static extern void subprocess_communicate_async(GSubprocess* subprocess, GBytes* stdin_buf, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_subprocess_communicate_finish")]
	public static extern c_int subprocess_communicate_finish(GSubprocess* subprocess, GAsyncResult* result, GBytes** stdout_buf, GBytes** stderr_buf);
	[LinkName("g_subprocess_communicate_utf8")]
	public static extern c_int subprocess_communicate_utf8(GSubprocess* subprocess,  c_char* stdin_buf, GCancellable* cancellable, c_char** stdout_buf, c_char** stderr_buf);
	[LinkName("g_subprocess_communicate_utf8_async")]
	public static extern void subprocess_communicate_utf8_async(GSubprocess* subprocess,  c_char* stdin_buf, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_subprocess_communicate_utf8_finish")]
	public static extern c_int subprocess_communicate_utf8_finish(GSubprocess* subprocess, GAsyncResult* result, c_char** stdout_buf, c_char** stderr_buf);
	[LinkName("g_subprocess_force_exit")]
	public static extern void subprocess_force_exit(GSubprocess* subprocess);
	[LinkName("g_subprocess_get_exit_status")]
	public static extern c_int subprocess_get_exit_status(GSubprocess* subprocess);
	[LinkName("g_subprocess_get_identifier")]
	public static extern  c_char* subprocess_get_identifier(GSubprocess* subprocess);
	[LinkName("g_subprocess_get_if_exited")]
	public static extern c_int subprocess_get_if_exited(GSubprocess* subprocess);
	[LinkName("g_subprocess_get_if_signaled")]
	public static extern c_int subprocess_get_if_signaled(GSubprocess* subprocess);
	[LinkName("g_subprocess_get_status")]
	public static extern c_int subprocess_get_status(GSubprocess* subprocess);
	[LinkName("g_subprocess_get_stderr_pipe")]
	public static extern GInputStream* subprocess_get_stderr_pipe(GSubprocess* subprocess);
	[LinkName("g_subprocess_get_stdin_pipe")]
	public static extern GOutputStream* subprocess_get_stdin_pipe(GSubprocess* subprocess);
	[LinkName("g_subprocess_get_stdout_pipe")]
	public static extern GInputStream* subprocess_get_stdout_pipe(GSubprocess* subprocess);
	[LinkName("g_subprocess_get_successful")]
	public static extern c_int subprocess_get_successful(GSubprocess* subprocess);
	[LinkName("g_subprocess_get_term_sig")]
	public static extern c_int subprocess_get_term_sig(GSubprocess* subprocess);
	[LinkName("g_subprocess_send_signal")]
	public static extern void subprocess_send_signal(GSubprocess* subprocess, c_int signal_num);
	[LinkName("g_subprocess_wait")]
	public static extern c_int subprocess_wait(GSubprocess* subprocess, GCancellable* cancellable);
	[LinkName("g_subprocess_wait_async")]
	public static extern void subprocess_wait_async(GSubprocess* subprocess, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_subprocess_wait_check")]
	public static extern c_int subprocess_wait_check(GSubprocess* subprocess, GCancellable* cancellable);
	[LinkName("g_subprocess_wait_check_async")]
	public static extern void subprocess_wait_check_async(GSubprocess* subprocess, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_subprocess_wait_check_finish")]
	public static extern c_int subprocess_wait_check_finish(GSubprocess* subprocess, GAsyncResult* result);
	[LinkName("g_subprocess_wait_finish")]
	public static extern c_int subprocess_wait_finish(GSubprocess* subprocess, GAsyncResult* result);
	[CRepr]
	public struct GSubprocessFlags
	{
		public const int G_SUBPROCESS_FLAGS_NONE = 0;
		public const int G_SUBPROCESS_FLAGS_STDIN_PIPE = 1;
		public const int G_SUBPROCESS_FLAGS_STDIN_INHERIT = 2;
		public const int G_SUBPROCESS_FLAGS_STDOUT_PIPE = 4;
		public const int G_SUBPROCESS_FLAGS_STDOUT_SILENCE = 8;
		public const int G_SUBPROCESS_FLAGS_STDERR_PIPE = 16;
		public const int G_SUBPROCESS_FLAGS_STDERR_SILENCE = 32;
		public const int G_SUBPROCESS_FLAGS_STDERR_MERGE = 64;
		public const int G_SUBPROCESS_FLAGS_INHERIT_FDS = 128;
		public const int G_SUBPROCESS_FLAGS_SEARCH_PATH_FROM_ENVP = 256;
	}
	[CRepr]
	public struct GSubprocessLauncher;
	[LinkName("g_subprocess_launcher_new")]
	public static extern GSubprocessLauncher* subprocess_launcher_new(GSubprocessFlags flags);
	[LinkName("g_subprocess_launcher_close")]
	public static extern void subprocess_launcher_close(GSubprocessLauncher* self);
	[LinkName("g_subprocess_launcher_getenv")]
	public static extern  c_char* subprocess_launcher_getenv(GSubprocessLauncher* self,  c_char* variable);
	[LinkName("g_subprocess_launcher_set_child_setup")]
	public static extern void subprocess_launcher_set_child_setup(GSubprocessLauncher* self, GSpawnChildSetupFunc child_setup, void* user_data, GDestroyNotify destroy_notify);
	[LinkName("g_subprocess_launcher_set_cwd")]
	public static extern void subprocess_launcher_set_cwd(GSubprocessLauncher* self,  c_char* cwd);
	[LinkName("g_subprocess_launcher_set_environ")]
	public static extern void subprocess_launcher_set_environ(GSubprocessLauncher* self);
	[LinkName("g_subprocess_launcher_set_flags")]
	public static extern void subprocess_launcher_set_flags(GSubprocessLauncher* self, GSubprocessFlags flags);
	[LinkName("g_subprocess_launcher_set_stderr_file_path")]
	public static extern void subprocess_launcher_set_stderr_file_path(GSubprocessLauncher* self,  c_char* path);
	[LinkName("g_subprocess_launcher_set_stdin_file_path")]
	public static extern void subprocess_launcher_set_stdin_file_path(GSubprocessLauncher* self,  c_char* path);
	[LinkName("g_subprocess_launcher_set_stdout_file_path")]
	public static extern void subprocess_launcher_set_stdout_file_path(GSubprocessLauncher* self,  c_char* path);
	[LinkName("g_subprocess_launcher_setenv")]
	public static extern void subprocess_launcher_setenv(GSubprocessLauncher* self,  c_char* variable,  c_char* value, c_int overwrite);
	[LinkName("g_subprocess_launcher_spawn")]
	public static extern GSubprocess* subprocess_launcher_spawn(GSubprocessLauncher* self, GError** error,  c_char* argv0);
	[LinkName("g_subprocess_launcher_spawnv")]
	public static extern GSubprocess* subprocess_launcher_spawnv(GSubprocessLauncher* self);
	[LinkName("g_subprocess_launcher_take_fd")]
	public static extern void subprocess_launcher_take_fd(GSubprocessLauncher* self, c_int source_fd, c_int target_fd);
	[LinkName("g_subprocess_launcher_take_stderr_fd")]
	public static extern void subprocess_launcher_take_stderr_fd(GSubprocessLauncher* self, c_int fd);
	[LinkName("g_subprocess_launcher_take_stdin_fd")]
	public static extern void subprocess_launcher_take_stdin_fd(GSubprocessLauncher* self, c_int fd);
	[LinkName("g_subprocess_launcher_take_stdout_fd")]
	public static extern void subprocess_launcher_take_stdout_fd(GSubprocessLauncher* self, c_int fd);
	[LinkName("g_subprocess_launcher_unsetenv")]
	public static extern void subprocess_launcher_unsetenv(GSubprocessLauncher* self,  c_char* variable);
	[CRepr]
	public struct GTask;
	[LinkName("g_task_new")]
	public static extern GTask* task_new(void* source_object, GCancellable* cancellable, GAsyncReadyCallback callback, void* callback_data);
	[LinkName("g_task_attach_source")]
	public static extern void task_attach_source(GTask* task, GSource* source, GSourceFunc callback);
	[LinkName("g_task_get_cancellable")]
	public static extern GCancellable* task_get_cancellable(GTask* task);
	[LinkName("g_task_get_check_cancellable")]
	public static extern c_int task_get_check_cancellable(GTask* task);
	[LinkName("g_task_get_completed")]
	public static extern c_int task_get_completed(GTask* task);
	[LinkName("g_task_get_context")]
	public static extern GMainContext* task_get_context(GTask* task);
	[LinkName("g_task_get_name")]
	public static extern  c_char* task_get_name(GTask* task);
	[LinkName("g_task_get_priority")]
	public static extern c_int task_get_priority(GTask* task);
	[LinkName("g_task_get_return_on_cancel")]
	public static extern c_int task_get_return_on_cancel(GTask* task);
	[LinkName("g_task_get_source_object")]
	public static extern void* task_get_source_object(GTask* task);
	[LinkName("g_task_get_source_tag")]
	public static extern void* task_get_source_tag(GTask* task);
	[LinkName("g_task_get_task_data")]
	public static extern void* task_get_task_data(GTask* task);
	[LinkName("g_task_had_error")]
	public static extern c_int task_had_error(GTask* task);
	[LinkName("g_task_propagate_boolean")]
	public static extern c_int task_propagate_boolean(GTask* task);
	[LinkName("g_task_propagate_int")]
	public static extern c_long task_propagate_int(GTask* task);
	[LinkName("g_task_propagate_pointer")]
	public static extern void* task_propagate_pointer(GTask* task);
	[LinkName("g_task_propagate_value")]
	public static extern c_int task_propagate_value(GTask* task, GValue* value);
	[LinkName("g_task_return_boolean")]
	public static extern void task_return_boolean(GTask* task, c_int result);
	[LinkName("g_task_return_error")]
	public static extern void task_return_error(GTask* task, GError* error);
	[LinkName("g_task_return_error_if_cancelled")]
	public static extern c_int task_return_error_if_cancelled(GTask* task);
	[LinkName("g_task_return_int")]
	public static extern void task_return_int(GTask* task, c_long result);
	[LinkName("g_task_return_new_error")]
	public static extern void task_return_new_error(GTask* task, GQuark domain, c_int code,  c_char* format);
	[LinkName("g_task_return_pointer")]
	public static extern void task_return_pointer(GTask* task, void* result, GDestroyNotify result_destroy);
	[LinkName("g_task_return_value")]
	public static extern void task_return_value(GTask* task, GValue* result);
	[LinkName("g_task_run_in_thread")]
	public static extern void task_run_in_thread(GTask* task, GTaskThreadFunc task_func);
	[LinkName("g_task_run_in_thread_sync")]
	public static extern void task_run_in_thread_sync(GTask* task, GTaskThreadFunc task_func);
	[LinkName("g_task_set_check_cancellable")]
	public static extern void task_set_check_cancellable(GTask* task, c_int check_cancellable);
	[LinkName("g_task_set_name")]
	public static extern void task_set_name(GTask* task,  c_char* name);
	[LinkName("g_task_set_priority")]
	public static extern void task_set_priority(GTask* task, c_int priority);
	[LinkName("g_task_set_return_on_cancel")]
	public static extern c_int task_set_return_on_cancel(GTask* task, c_int return_on_cancel);
	[LinkName("g_task_set_source_tag")]
	public static extern void task_set_source_tag(GTask* task, void* source_tag);
	[LinkName("g_task_set_static_name")]
	public static extern void task_set_static_name(GTask* task,  c_char* name);
	[LinkName("g_task_set_task_data")]
	public static extern void task_set_task_data(GTask* task, void* task_data, GDestroyNotify task_data_destroy);
	[CRepr]
	public struct GTaskClass
	{
	}
	public function void GTaskThreadFunc(GTask* task, void* source_object, void* task_data, GCancellable* cancellable);
	[CRepr]
	public struct GTcpConnection;
	[LinkName("g_tcp_connection_get_graceful_disconnect")]
	public static extern c_int tcp_connection_get_graceful_disconnect(GTcpConnection* connection);
	[LinkName("g_tcp_connection_set_graceful_disconnect")]
	public static extern void tcp_connection_set_graceful_disconnect(GTcpConnection* connection, c_int graceful_disconnect);
	[CRepr]
	public struct GTcpConnectionClass
	{
		GSocketConnectionClass parent_class;
	}
	[CRepr]
	public struct GTcpConnectionPrivate
	{
	}
	[CRepr]
	public struct GTcpWrapperConnection;
	[LinkName("g_tcp_wrapper_connection_new")]
	public static extern GSocketConnection* tcp_wrapper_connection_new(GIOStream* base_io_stream, GSocket* socket);
	[LinkName("g_tcp_wrapper_connection_get_base_io_stream")]
	public static extern GIOStream* tcp_wrapper_connection_get_base_io_stream(GTcpWrapperConnection* conn);
	[CRepr]
	public struct GTcpWrapperConnectionClass
	{
		GTcpConnectionClass parent_class;
	}
	[CRepr]
	public struct GTcpWrapperConnectionPrivate
	{
	}
	[CRepr]
	public struct GTestDBus;
	[LinkName("g_test_dbus_new")]
	public static extern GTestDBus* test_dbus_new(GTestDBusFlags flags);
	[LinkName("g_test_dbus_add_service_dir")]
	public static extern void test_dbus_add_service_dir(GTestDBus* self,  c_char* path);
	[LinkName("g_test_dbus_down")]
	public static extern void test_dbus_down(GTestDBus* self);
	[LinkName("g_test_dbus_get_bus_address")]
	public static extern  c_char* test_dbus_get_bus_address(GTestDBus* self);
	[LinkName("g_test_dbus_get_flags")]
	public static extern GTestDBusFlags test_dbus_get_flags(GTestDBus* self);
	[LinkName("g_test_dbus_stop")]
	public static extern void test_dbus_stop(GTestDBus* self);
	[LinkName("g_test_dbus_up")]
	public static extern void test_dbus_up(GTestDBus* self);
	[CRepr]
	public struct GTestDBusFlags
	{
		public const int G_TEST_DBUS_NONE = 0;
	}
	[CRepr]
	public struct GThemedIcon;
	[LinkName("g_themed_icon_new")]
	public static extern GIcon* themed_icon_new( c_char* iconname);
	[LinkName("g_themed_icon_new_from_names")]
	public static extern GIcon* themed_icon_new_from_names(c_int len);
	[LinkName("g_themed_icon_new_with_default_fallbacks")]
	public static extern GIcon* themed_icon_new_with_default_fallbacks( c_char* iconname);
	[LinkName("g_themed_icon_append_name")]
	public static extern void themed_icon_append_name(GThemedIcon* icon,  c_char* iconname);
	[LinkName("g_themed_icon_get_names")]
	public static extern  c_char* * themed_icon_get_names(GThemedIcon* icon);
	[LinkName("g_themed_icon_prepend_name")]
	public static extern void themed_icon_prepend_name(GThemedIcon* icon,  c_char* iconname);
	[CRepr]
	public struct GThemedIconClass
	{
	}
	[CRepr]
	public struct GThreadedSocketService;
	[LinkName("g_threaded_socket_service_new")]
	public static extern GSocketService* threaded_socket_service_new(c_int max_threads);
	[CRepr]
	public struct GThreadedSocketServiceClass
	{
		GSocketServiceClass parent_class;
	}
	[CRepr]
	public struct GThreadedSocketServicePrivate
	{
	}
	public enum GTlsAuthenticationMode : c_int
	{
		G_TLS_AUTHENTICATION_NONE,
		G_TLS_AUTHENTICATION_REQUESTED,
		G_TLS_AUTHENTICATION_REQUIRED
	}
	[CRepr]
	public struct GTlsBackend
	{
		public function GTlsDatabase*(GTlsBackend* backend) get_default_database;

		public function c_int(GTlsBackend* backend) supports_dtls;

		public function c_int(GTlsBackend* backend) supports_tls;
	}
	[CRepr]
	public struct GTlsBackendInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GTlsCertificate;
	[LinkName("g_tls_certificate_new_from_file")]
	public static extern GTlsCertificate* tls_certificate_new_from_file( c_char* file);
	[LinkName("g_tls_certificate_new_from_file_with_password")]
	public static extern GTlsCertificate* tls_certificate_new_from_file_with_password( c_char* file,  c_char* password);
	[LinkName("g_tls_certificate_new_from_files")]
	public static extern GTlsCertificate* tls_certificate_new_from_files( c_char* cert_file,  c_char* key_file);
	[LinkName("g_tls_certificate_new_from_pem")]
	public static extern GTlsCertificate* tls_certificate_new_from_pem( c_char* data, c_long length);
	[LinkName("g_tls_certificate_new_from_pkcs11_uris")]
	public static extern GTlsCertificate* tls_certificate_new_from_pkcs11_uris( c_char* pkcs11_uri,  c_char* private_key_pkcs11_uri);
	[LinkName("g_tls_certificate_new_from_pkcs12")]
	public static extern GTlsCertificate* tls_certificate_new_from_pkcs12(c_ulong length,  c_char* password);
	[LinkName("g_tls_certificate_get_dns_names")]
	public static extern GPtrArray* tls_certificate_get_dns_names(GTlsCertificate* cert);
	[LinkName("g_tls_certificate_get_ip_addresses")]
	public static extern GPtrArray* tls_certificate_get_ip_addresses(GTlsCertificate* cert);
	[LinkName("g_tls_certificate_get_issuer")]
	public static extern GTlsCertificate* tls_certificate_get_issuer(GTlsCertificate* cert);
	[LinkName("g_tls_certificate_get_issuer_name")]
	public static extern c_char* tls_certificate_get_issuer_name(GTlsCertificate* cert);
	[LinkName("g_tls_certificate_get_not_valid_after")]
	public static extern GDateTime* tls_certificate_get_not_valid_after(GTlsCertificate* cert);
	[LinkName("g_tls_certificate_get_not_valid_before")]
	public static extern GDateTime* tls_certificate_get_not_valid_before(GTlsCertificate* cert);
	[LinkName("g_tls_certificate_get_subject_name")]
	public static extern c_char* tls_certificate_get_subject_name(GTlsCertificate* cert);
	[LinkName("g_tls_certificate_is_same")]
	public static extern c_int tls_certificate_is_same(GTlsCertificate* cert_one, GTlsCertificate* cert_two);
	[LinkName("g_tls_certificate_verify")]
	public static extern GTlsCertificateFlags tls_certificate_verify(GTlsCertificate* cert, GSocketConnectable* identity, GTlsCertificate* trusted_ca);
	[CRepr]
	public struct GTlsCertificateClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GTlsCertificateFlags
	{
		public const int G_TLS_CERTIFICATE_NO_FLAGS = 0;
		public const int G_TLS_CERTIFICATE_UNKNOWN_CA = 1;
		public const int G_TLS_CERTIFICATE_BAD_IDENTITY = 2;
		public const int G_TLS_CERTIFICATE_NOT_ACTIVATED = 4;
		public const int G_TLS_CERTIFICATE_EXPIRED = 8;
		public const int G_TLS_CERTIFICATE_REVOKED = 16;
		public const int G_TLS_CERTIFICATE_INSECURE = 32;
		public const int G_TLS_CERTIFICATE_GENERIC_ERROR = 64;
		public const int G_TLS_CERTIFICATE_VALIDATE_ALL = 127;
	}
	[CRepr]
	public struct GTlsCertificatePrivate
	{
	}
	public enum GTlsCertificateRequestFlags : c_int
	{
		G_TLS_CERTIFICATE_REQUEST_NONE
	}
	public enum GTlsChannelBindingError : c_int
	{
		G_TLS_CHANNEL_BINDING_ERROR_NOT_IMPLEMENTED,
		G_TLS_CHANNEL_BINDING_ERROR_INVALID_STATE,
		G_TLS_CHANNEL_BINDING_ERROR_NOT_AVAILABLE,
		G_TLS_CHANNEL_BINDING_ERROR_NOT_SUPPORTED,
		G_TLS_CHANNEL_BINDING_ERROR_GENERAL_ERROR
	}
	public enum GTlsChannelBindingType : c_int
	{
		G_TLS_CHANNEL_BINDING_TLS_UNIQUE,
		G_TLS_CHANNEL_BINDING_TLS_SERVER_END_POINT,
		G_TLS_CHANNEL_BINDING_TLS_EXPORTER
	}
	[CRepr]
	public struct GTlsClientConnection
	{
		public function void(GTlsClientConnection* conn, GTlsClientConnection* source) copy_session_state;
	}
	[CRepr]
	public struct GTlsClientConnectionInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GTlsConnection;
	[LinkName("g_tls_connection_emit_accept_certificate")]
	public static extern c_int tls_connection_emit_accept_certificate(GTlsConnection* conn, GTlsCertificate* peer_cert, GTlsCertificateFlags errors);
	[LinkName("g_tls_connection_get_certificate")]
	public static extern GTlsCertificate* tls_connection_get_certificate(GTlsConnection* conn);
	[LinkName("g_tls_connection_get_channel_binding_data")]
	public static extern c_int tls_connection_get_channel_bindindata(GTlsConnection* conn, GTlsChannelBindingType type);
	[LinkName("g_tls_connection_get_ciphersuite_name")]
	public static extern c_char* tls_connection_get_ciphersuite_name(GTlsConnection* conn);
	[LinkName("g_tls_connection_get_database")]
	public static extern GTlsDatabase* tls_connection_get_database(GTlsConnection* conn);
	[LinkName("g_tls_connection_get_interaction")]
	public static extern GTlsInteraction* tls_connection_get_interaction(GTlsConnection* conn);
	[LinkName("g_tls_connection_get_negotiated_protocol")]
	public static extern  c_char* tls_connection_get_negotiated_protocol(GTlsConnection* conn);
	[LinkName("g_tls_connection_get_peer_certificate")]
	public static extern GTlsCertificate* tls_connection_get_peer_certificate(GTlsConnection* conn);
	[LinkName("g_tls_connection_get_peer_certificate_errors")]
	public static extern GTlsCertificateFlags tls_connection_get_peer_certificate_errors(GTlsConnection* conn);
	[LinkName("g_tls_connection_get_protocol_version")]
	public static extern GTlsProtocolVersion tls_connection_get_protocol_version(GTlsConnection* conn);
	[LinkName("g_tls_connection_get_rehandshake_mode")]
	public static extern GTlsRehandshakeMode tls_connection_get_rehandshake_mode(GTlsConnection* conn);
	[LinkName("g_tls_connection_get_require_close_notify")]
	public static extern c_int tls_connection_get_require_close_notify(GTlsConnection* conn);
	[LinkName("g_tls_connection_get_use_system_certdb")]
	public static extern c_int tls_connection_get_use_system_certdb(GTlsConnection* conn);
	[LinkName("g_tls_connection_handshake")]
	public static extern c_int tls_connection_handshake(GTlsConnection* conn, GCancellable* cancellable);
	[LinkName("g_tls_connection_handshake_async")]
	public static extern void tls_connection_handshake_async(GTlsConnection* conn, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_connection_handshake_finish")]
	public static extern c_int tls_connection_handshake_finish(GTlsConnection* conn, GAsyncResult* result);
	[LinkName("g_tls_connection_set_advertised_protocols")]
	public static extern void tls_connection_set_advertised_protocols(GTlsConnection* conn);
	[LinkName("g_tls_connection_set_certificate")]
	public static extern void tls_connection_set_certificate(GTlsConnection* conn, GTlsCertificate* certificate);
	[LinkName("g_tls_connection_set_database")]
	public static extern void tls_connection_set_database(GTlsConnection* conn, GTlsDatabase* database);
	[LinkName("g_tls_connection_set_interaction")]
	public static extern void tls_connection_set_interaction(GTlsConnection* conn, GTlsInteraction* interaction);
	[LinkName("g_tls_connection_set_rehandshake_mode")]
	public static extern void tls_connection_set_rehandshake_mode(GTlsConnection* conn, GTlsRehandshakeMode mode);
	[LinkName("g_tls_connection_set_require_close_notify")]
	public static extern void tls_connection_set_require_close_notify(GTlsConnection* conn, c_int require_close_notify);
	[LinkName("g_tls_connection_set_use_system_certdb")]
	public static extern void tls_connection_set_use_system_certdb(GTlsConnection* conn, c_int use_system_certdb);
	[CRepr]
	public struct GTlsConnectionClass
	{
		GIOStreamClass parent_class;
	}
	[CRepr]
	public struct GTlsConnectionPrivate
	{
	}
	[CRepr]
	public struct GTlsDatabase;
	[LinkName("g_tls_database_create_certificate_handle")]
	public static extern c_char* tls_database_create_certificate_handle(GTlsDatabase* self, GTlsCertificate* certificate);
	[LinkName("g_tls_database_lookup_certificate_for_handle")]
	public static extern GTlsCertificate* tls_database_lookup_certificate_for_handle(GTlsDatabase* self,  c_char* handle, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable);
	[LinkName("g_tls_database_lookup_certificate_for_handle_async")]
	public static extern void tls_database_lookup_certificate_for_handle_async(GTlsDatabase* self,  c_char* handle, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_database_lookup_certificate_for_handle_finish")]
	public static extern GTlsCertificate* tls_database_lookup_certificate_for_handle_finish(GTlsDatabase* self, GAsyncResult* result);
	[LinkName("g_tls_database_lookup_certificate_issuer")]
	public static extern GTlsCertificate* tls_database_lookup_certificate_issuer(GTlsDatabase* self, GTlsCertificate* certificate, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable);
	[LinkName("g_tls_database_lookup_certificate_issuer_async")]
	public static extern void tls_database_lookup_certificate_issuer_async(GTlsDatabase* self, GTlsCertificate* certificate, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_database_lookup_certificate_issuer_finish")]
	public static extern GTlsCertificate* tls_database_lookup_certificate_issuer_finish(GTlsDatabase* self, GAsyncResult* result);
	[LinkName("g_tls_database_lookup_certificates_issued_by")]
	public static extern GList* tls_database_lookup_certificates_issued_by(GTlsDatabase* self, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable);
	[LinkName("g_tls_database_lookup_certificates_issued_by_async")]
	public static extern void tls_database_lookup_certificates_issued_by_async(GTlsDatabase* self, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_database_lookup_certificates_issued_by_finish")]
	public static extern GList* tls_database_lookup_certificates_issued_by_finish(GTlsDatabase* self, GAsyncResult* result);
	[LinkName("g_tls_database_verify_chain")]
	public static extern GTlsCertificateFlags tls_database_verify_chain(GTlsDatabase* self, GTlsCertificate* chain,  c_char* purpose, GSocketConnectable* identity, GTlsInteraction* interaction, GTlsDatabaseVerifyFlags flags, GCancellable* cancellable);
	[LinkName("g_tls_database_verify_chain_async")]
	public static extern void tls_database_verify_chain_async(GTlsDatabase* self, GTlsCertificate* chain,  c_char* purpose, GSocketConnectable* identity, GTlsInteraction* interaction, GTlsDatabaseVerifyFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_database_verify_chain_finish")]
	public static extern GTlsCertificateFlags tls_database_verify_chain_finish(GTlsDatabase* self, GAsyncResult* result);
	[CRepr]
	public struct GTlsDatabaseClass
	{
		GObjectClass parent_class;
	}
	public enum GTlsDatabaseLookupFlags : c_int
	{
		G_TLS_DATABASE_LOOKUP_NONE,
		G_TLS_DATABASE_LOOKUP_KEYPAIR
	}
	[CRepr]
	public struct GTlsDatabasePrivate
	{
	}
	[CRepr]
	public struct GTlsDatabaseVerifyFlags
	{
		public const int G_TLS_DATABASE_VERIFY_NONE = 0;
	}
	public enum GTlsError : c_int
	{
		G_TLS_ERROR_UNAVAILABLE,
		G_TLS_ERROR_MISC,
		G_TLS_ERROR_BAD_CERTIFICATE,
		G_TLS_ERROR_NOT_TLS,
		G_TLS_ERROR_HANDSHAKE,
		G_TLS_ERROR_CERTIFICATE_REQUIRED,
		G_TLS_ERROR_EOF,
		G_TLS_ERROR_INAPPROPRIATE_FALLBACK,
		G_TLS_ERROR_BAD_CERTIFICATE_PASSWORD
	}
	[CRepr]
	public struct GTlsFileDatabase
	{	}
	[CRepr]
	public struct GTlsFileDatabaseInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GTlsInteraction;
	[LinkName("g_tls_interaction_ask_password")]
	public static extern GTlsInteractionResult tls_interaction_ask_password(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable);
	[LinkName("g_tls_interaction_ask_password_async")]
	public static extern void tls_interaction_ask_password_async(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_interaction_ask_password_finish")]
	public static extern GTlsInteractionResult tls_interaction_ask_password_finish(GTlsInteraction* interaction, GAsyncResult* result);
	[LinkName("g_tls_interaction_invoke_ask_password")]
	public static extern GTlsInteractionResult tls_interaction_invoke_ask_password(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable);
	[LinkName("g_tls_interaction_invoke_request_certificate")]
	public static extern GTlsInteractionResult tls_interaction_invoke_request_certificate(GTlsInteraction* interaction, GTlsConnection* connection, GTlsCertificateRequestFlags flags, GCancellable* cancellable);
	[LinkName("g_tls_interaction_request_certificate")]
	public static extern GTlsInteractionResult tls_interaction_request_certificate(GTlsInteraction* interaction, GTlsConnection* connection, GTlsCertificateRequestFlags flags, GCancellable* cancellable);
	[LinkName("g_tls_interaction_request_certificate_async")]
	public static extern void tls_interaction_request_certificate_async(GTlsInteraction* interaction, GTlsConnection* connection, GTlsCertificateRequestFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_interaction_request_certificate_finish")]
	public static extern GTlsInteractionResult tls_interaction_request_certificate_finish(GTlsInteraction* interaction, GAsyncResult* result);
	[CRepr]
	public struct GTlsInteractionClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GTlsInteractionPrivate
	{
	}
	public enum GTlsInteractionResult : c_int
	{
		G_TLS_INTERACTION_UNHANDLED,
		G_TLS_INTERACTION_HANDLED,
		G_TLS_INTERACTION_FAILED
	}
	[CRepr]
	public struct GTlsPassword;
	[LinkName("g_tls_password_new")]
	public static extern GTlsPassword* tls_password_new(GTlsPasswordFlags flags,  c_char* description);
	[LinkName("g_tls_password_get_description")]
	public static extern  c_char* tls_password_get_description(GTlsPassword* password);
	[LinkName("g_tls_password_get_flags")]
	public static extern GTlsPasswordFlags tls_password_get_flags(GTlsPassword* password);
	[LinkName("g_tls_password_get_value")]
	public static extern  c_uchar* tls_password_get_value(GTlsPassword* password, c_ulong* length);
	[LinkName("g_tls_password_get_warning")]
	public static extern  c_char* tls_password_get_warning(GTlsPassword* password);
	[LinkName("g_tls_password_set_description")]
	public static extern void tls_password_set_description(GTlsPassword* password,  c_char* description);
	[LinkName("g_tls_password_set_flags")]
	public static extern void tls_password_set_flags(GTlsPassword* password, GTlsPasswordFlags flags);
	[LinkName("g_tls_password_set_value")]
	public static extern void tls_password_set_value(GTlsPassword* password, c_long length);
	[LinkName("g_tls_password_set_value_full")]
	public static extern void tls_password_set_value_full(GTlsPassword* password, c_long length, GDestroyNotify destroy);
	[LinkName("g_tls_password_set_warning")]
	public static extern void tls_password_set_warning(GTlsPassword* password,  c_char* warning);
	[CRepr]
	public struct GTlsPasswordClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GTlsPasswordFlags
	{
		public const int G_TLS_PASSWORD_NONE = 0;
		public const int G_TLS_PASSWORD_RETRY = 2;
		public const int G_TLS_PASSWORD_MANY_TRIES = 4;
		public const int G_TLS_PASSWORD_FINAL_TRY = 8;
		public const int G_TLS_PASSWORD_PKCS11_USER = 16;
		public const int G_TLS_PASSWORD_PKCS11_SECURITY_OFFICER = 32;
		public const int G_TLS_PASSWORD_PKCS11_CONTEXT_SPECIFIC = 64;
	}
	[CRepr]
	public struct GTlsPasswordPrivate
	{
	}
	public enum GTlsProtocolVersion : c_int
	{
		G_TLS_PROTOCOL_VERSION_UNKNOWN,
		G_TLS_PROTOCOL_VERSION_SSL_3_0,
		G_TLS_PROTOCOL_VERSION_TLS_1_0,
		G_TLS_PROTOCOL_VERSION_TLS_1_1,
		G_TLS_PROTOCOL_VERSION_TLS_1_2,
		G_TLS_PROTOCOL_VERSION_TLS_1_3,
		G_TLS_PROTOCOL_VERSION_DTLS_1_0,
		G_TLS_PROTOCOL_VERSION_DTLS_1_2
	}
	public enum GTlsRehandshakeMode : c_int
	{
		G_TLS_REHANDSHAKE_NEVER,
		G_TLS_REHANDSHAKE_SAFELY,
		G_TLS_REHANDSHAKE_UNSAFELY
	}
	[CRepr]
	public struct GTlsServerConnection
	{	}
	[CRepr]
	public struct GTlsServerConnectionInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GUnixConnection;
	[LinkName("g_unix_connection_receive_credentials")]
	public static extern GCredentials* unix_connection_receive_credentials(GUnixConnection* connection, GCancellable* cancellable);
	[LinkName("g_unix_connection_receive_credentials_async")]
	public static extern void unix_connection_receive_credentials_async(GUnixConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_unix_connection_receive_credentials_finish")]
	public static extern GCredentials* unix_connection_receive_credentials_finish(GUnixConnection* connection, GAsyncResult* result);
	[LinkName("g_unix_connection_receive_fd")]
	public static extern c_int unix_connection_receive_fd(GUnixConnection* connection, GCancellable* cancellable);
	[LinkName("g_unix_connection_send_credentials")]
	public static extern c_int unix_connection_send_credentials(GUnixConnection* connection, GCancellable* cancellable);
	[LinkName("g_unix_connection_send_credentials_async")]
	public static extern void unix_connection_send_credentials_async(GUnixConnection* connection, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("g_unix_connection_send_credentials_finish")]
	public static extern c_int unix_connection_send_credentials_finish(GUnixConnection* connection, GAsyncResult* result);
	[LinkName("g_unix_connection_send_fd")]
	public static extern c_int unix_connection_send_fd(GUnixConnection* connection, c_int fd, GCancellable* cancellable);
	[CRepr]
	public struct GUnixConnectionClass
	{
		GSocketConnectionClass parent_class;
	}
	[CRepr]
	public struct GUnixConnectionPrivate
	{
	}
	[CRepr]
	public struct GUnixCredentialsMessage;
	[LinkName("g_unix_credentials_message_new")]
	public static extern GSocketControlMessage* unix_credentials_message_new();
	[LinkName("g_unix_credentials_message_new_with_credentials")]
	public static extern GSocketControlMessage* unix_credentials_message_new_with_credentials(GCredentials* credentials);
	[LinkName("g_unix_credentials_message_get_credentials")]
	public static extern GCredentials* unix_credentials_message_get_credentials(GUnixCredentialsMessage* message);
	[CRepr]
	public struct GUnixCredentialsMessageClass
	{
		GSocketControlMessageClass parent_class;
	}
	[CRepr]
	public struct GUnixCredentialsMessagePrivate
	{
	}
	[CRepr]
	public struct GUnixFDList;
	[LinkName("g_unix_fd_list_new")]
	public static extern GUnixFDList* unix_fd_list_new();
	[LinkName("g_unix_fd_list_new_from_array")]
	public static extern GUnixFDList* unix_fd_list_new_from_array(c_int n_fds);
	[LinkName("g_unix_fd_list_append")]
	public static extern c_int unix_fd_list_append(GUnixFDList* list, c_int fd);
	[LinkName("g_unix_fd_list_get")]
	public static extern c_int unix_fd_list_get(GUnixFDList* list, c_int index_);
	[LinkName("g_unix_fd_list_get_length")]
	public static extern c_int unix_fd_list_get_length(GUnixFDList* list);
	[LinkName("g_unix_fd_list_peek_fds")]
	public static extern  c_int* unix_fd_list_peek_fds(GUnixFDList* list, c_int* length);
	[LinkName("g_unix_fd_list_steal_fds")]
	public static extern c_int* unix_fd_list_steal_fds(GUnixFDList* list, c_int* length);
	[CRepr]
	public struct GUnixFDListClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GUnixFDListPrivate
	{
	}
	[CRepr]
	public struct GUnixFDMessage;
	[LinkName("g_unix_fd_message_new")]
	public static extern GSocketControlMessage* unix_fd_message_new();
	[LinkName("g_unix_fd_message_new_with_fd_list")]
	public static extern GSocketControlMessage* unix_fd_message_new_with_fd_list(GUnixFDList* fd_list);
	[LinkName("g_unix_fd_message_append_fd")]
	public static extern c_int unix_fd_message_append_fd(GUnixFDMessage* message, c_int fd);
	[LinkName("g_unix_fd_message_get_fd_list")]
	public static extern GUnixFDList* unix_fd_message_get_fd_list(GUnixFDMessage* message);
	[LinkName("g_unix_fd_message_steal_fds")]
	public static extern c_int* unix_fd_message_steal_fds(GUnixFDMessage* message, c_int* length);
	[CRepr]
	public struct GUnixFDMessageClass
	{
		GSocketControlMessageClass parent_class;
	}
	[CRepr]
	public struct GUnixFDMessagePrivate
	{
	}
	[CRepr]
	public struct GUnixInputStream;
	[LinkName("g_unix_input_stream_new")]
	public static extern GInputStream* unix_input_stream_new(c_int fd, c_int close_fd);
	[LinkName("g_unix_input_stream_get_close_fd")]
	public static extern c_int unix_input_stream_get_close_fd(GUnixInputStream* stream);
	[LinkName("g_unix_input_stream_get_fd")]
	public static extern c_int unix_input_stream_get_fd(GUnixInputStream* stream);
	[LinkName("g_unix_input_stream_set_close_fd")]
	public static extern void unix_input_stream_set_close_fd(GUnixInputStream* stream, c_int close_fd);
	[CRepr]
	public struct GUnixInputStreamClass
	{
		GInputStreamClass parent_class;
	}
	[CRepr]
	public struct GUnixInputStreamPrivate
	{
	}
	[CRepr]
	public struct GUnixMountEntry
	{
	}
	[CRepr]
	public struct GUnixMountMonitor;
	[LinkName("g_unix_mount_monitor_new")]
	public static extern GUnixMountMonitor* unix_mount_monitor_new();
	[LinkName("g_unix_mount_monitor_set_rate_limit")]
	public static extern void unix_mount_monitor_set_rate_limit(GUnixMountMonitor* mount_monitor, c_int limit_msec);
	[CRepr]
	public struct GUnixMountMonitorClass
	{
	}
	[CRepr]
	public struct GUnixMountPoint
	{
	}
	[CRepr]
	public struct GUnixOutputStream;
	[LinkName("g_unix_output_stream_new")]
	public static extern GOutputStream* unix_output_stream_new(c_int fd, c_int close_fd);
	[LinkName("g_unix_output_stream_get_close_fd")]
	public static extern c_int unix_output_stream_get_close_fd(GUnixOutputStream* stream);
	[LinkName("g_unix_output_stream_get_fd")]
	public static extern c_int unix_output_stream_get_fd(GUnixOutputStream* stream);
	[LinkName("g_unix_output_stream_set_close_fd")]
	public static extern void unix_output_stream_set_close_fd(GUnixOutputStream* stream, c_int close_fd);
	[CRepr]
	public struct GUnixOutputStreamClass
	{
		GOutputStreamClass parent_class;
	}
	[CRepr]
	public struct GUnixOutputStreamPrivate
	{
	}
	[CRepr]
	public struct GUnixSocketAddress;
	[LinkName("g_unix_socket_address_new")]
	public static extern GSocketAddress* unix_socket_address_new( c_char* path);
	[LinkName("g_unix_socket_address_new_abstract")]
	public static extern GSocketAddress* unix_socket_address_new_abstract(c_int path_len);
	[LinkName("g_unix_socket_address_new_with_type")]
	public static extern GSocketAddress* unix_socket_address_new_with_type(c_int path_len, GUnixSocketAddressType type);
	[LinkName("g_unix_socket_address_get_address_type")]
	public static extern GUnixSocketAddressType unix_socket_address_get_address_type(GUnixSocketAddress* address);
	[LinkName("g_unix_socket_address_get_is_abstract")]
	public static extern c_int unix_socket_address_get_is_abstract(GUnixSocketAddress* address);
	[LinkName("g_unix_socket_address_get_path")]
	public static extern  c_char* unix_socket_address_get_path(GUnixSocketAddress* address);
	[LinkName("g_unix_socket_address_get_path_len")]
	public static extern c_ulong unix_socket_address_get_path_len(GUnixSocketAddress* address);
	[CRepr]
	public struct GUnixSocketAddressClass
	{
		GSocketAddressClass parent_class;
	}
	[CRepr]
	public struct GUnixSocketAddressPrivate
	{
	}
	public enum GUnixSocketAddressType : c_int
	{
		G_UNIX_SOCKET_ADDRESS_INVALID,
		G_UNIX_SOCKET_ADDRESS_ANONYMOUS,
		G_UNIX_SOCKET_ADDRESS_PATH,
		G_UNIX_SOCKET_ADDRESS_ABSTRACT,
		G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED
	}
	[CRepr]
	public struct GVfs;
	[LinkName("g_vfs_get_file_for_path")]
	public static extern GFile* vfs_get_file_for_path(GVfs* vfs,  c_char* path);
	[LinkName("g_vfs_get_file_for_uri")]
	public static extern GFile* vfs_get_file_for_uri(GVfs* vfs,  c_char* uri);
	[LinkName("g_vfs_get_supported_uri_schemes")]
	public static extern  c_char* * vfs_get_supported_uri_schemes(GVfs* vfs);
	[LinkName("g_vfs_is_active")]
	public static extern c_int vfs_is_active(GVfs* vfs);
	[LinkName("g_vfs_parse_name")]
	public static extern GFile* vfs_parse_name(GVfs* vfs,  c_char* parse_name);
	[LinkName("g_vfs_register_uri_scheme")]
	public static extern c_int vfs_register_uri_scheme(GVfs* vfs,  c_char* scheme, GVfsFileLookupFunc uri_func, void* uri_data, GDestroyNotify uri_destroy, GVfsFileLookupFunc parse_name_func, void* parse_name_data, GDestroyNotify parse_name_destroy);
	[LinkName("g_vfs_unregister_uri_scheme")]
	public static extern c_int vfs_unregister_uri_scheme(GVfs* vfs,  c_char* scheme);
	[CRepr]
	public struct GVfsClass
	{
		GObjectClass parent_class;
	}
	public function GFile* GVfsFileLookupFunc(GVfs* vfs,  c_char* identifier, void* user_data);
	[CRepr]
	public struct GVolume
	{
		public function c_int(GVolume* volume) can_eject;

		public function c_int(GVolume* volume) can_mount;

		public function void(GVolume* volume) changed;

		public function void(GVolume* volume, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) eject;

		public function c_int(GVolume* volume, GAsyncResult* result) eject_finish;

		public function void(GVolume* volume, GMountUnmountFlags flags, GMountOperation* mount_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) eject_with_operation;

		public function c_int(GVolume* volume, GAsyncResult* result) eject_with_operation_finish;

		public function c_int(GVolume* volume) enumerate_identifiers;

		public function GFile*(GVolume* volume) get_activation_root;

		public function GDrive*(GVolume* volume) get_drive;

		public function GIcon*(GVolume* volume) get_icon;

		public function c_char*(GVolume* volume,  c_char* kind) get_identifier;

		public function GMount*(GVolume* volume) get_mount;

		public function c_char*(GVolume* volume) get_name;

		public function  c_char*(GVolume* volume) get_sort_key;

		public function GIcon*(GVolume* volume) get_symbolic_icon;

		public function c_char*(GVolume* volume) get_uuid;

		public function c_int(GVolume* volume, GAsyncResult* result) mount_finish;

		public function void(GVolume* volume, GMountMountFlags flags, GMountOperation* mount_operation, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data) mount_fn;

		public function void(GVolume* volume) removed;

		public function c_int(GVolume* volume) should_automount;
	}
	[CRepr]
	public struct GVolumeIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GVolumeMonitor;
	[LinkName("g_volume_monitor_get_connected_drives")]
	public static extern GList* volume_monitor_get_connected_drives(GVolumeMonitor* volume_monitor);
	[LinkName("g_volume_monitor_get_mount_for_uuid")]
	public static extern GMount* volume_monitor_get_mount_for_uuid(GVolumeMonitor* volume_monitor,  c_char* uuid);
	[LinkName("g_volume_monitor_get_mounts")]
	public static extern GList* volume_monitor_get_mounts(GVolumeMonitor* volume_monitor);
	[LinkName("g_volume_monitor_get_volume_for_uuid")]
	public static extern GVolume* volume_monitor_get_volume_for_uuid(GVolumeMonitor* volume_monitor,  c_char* uuid);
	[LinkName("g_volume_monitor_get_volumes")]
	public static extern GList* volume_monitor_get_volumes(GVolumeMonitor* volume_monitor);
	[CRepr]
	public struct GVolumeMonitorClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GZlibCompressor;
	[LinkName("g_zlib_compressor_new")]
	public static extern GZlibCompressor* zlib_compressor_new(GZlibCompressorFormat format, c_int level);
	[LinkName("g_zlib_compressor_get_file_info")]
	public static extern GFileInfo* zlib_compressor_get_file_info(GZlibCompressor* compressor);
	[LinkName("g_zlib_compressor_set_file_info")]
	public static extern void zlib_compressor_set_file_info(GZlibCompressor* compressor, GFileInfo* file_info);
	[CRepr]
	public struct GZlibCompressorClass
	{
		GObjectClass parent_class;
	}
	public enum GZlibCompressorFormat : c_int
	{
		G_ZLIB_COMPRESSOR_FORMAT_ZLIB,
		G_ZLIB_COMPRESSOR_FORMAT_GZIP,
		G_ZLIB_COMPRESSOR_FORMAT_RAW
	}
	[CRepr]
	public struct GZlibDecompressor;
	[LinkName("g_zlib_decompressor_new")]
	public static extern GZlibDecompressor* zlib_decompressor_new(GZlibCompressorFormat format);
	[LinkName("g_zlib_decompressor_get_file_info")]
	public static extern GFileInfo* zlib_decompressor_get_file_info(GZlibDecompressor* decompressor);
	[CRepr]
	public struct GZlibDecompressorClass
	{
		GObjectClass parent_class;
	}
}