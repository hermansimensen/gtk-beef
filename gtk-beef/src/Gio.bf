namespace Gio;

using System;
using System.Interop;
using GLib;
using GObject;

class Gio
{
	[CRepr]
	public struct Action
	{
		public function void(Action action, GLib.Variant parameter) activate;

		public function void(Action action, GLib.Variant value) change_state;

		public function c_int(Action action) get_enabled;

		public function char8*(Action action) get_name;

		public function GLib.VariantType(Action action) get_parameter_type;

		public function GLib.Variant(Action action) get_state;

		public function GLib.Variant(Action action) get_state_hint;

		public function GLib.VariantType(Action action) get_state_type;
	}
	[CRepr]
	public struct ActionEntry
	{
		char8* name;
		char8* parameter_type;
		char8* state;
	}
	[CRepr]
	public struct ActionGroup
	{
		public function void(ActionGroup action_group, char8* action_name) action_added;

		public function void(ActionGroup action_group, char8* action_name, c_int enabled) action_enabled_changed;

		public function void(ActionGroup action_group, char8* action_name) action_removed;

		public function void(ActionGroup action_group, char8* action_name, GLib.Variant state) action_state_changed;

		public function void(ActionGroup action_group, char8* action_name, GLib.Variant parameter) activate_action;

		public function void(ActionGroup action_group, char8* action_name, GLib.Variant value) change_action_state;

		public function c_int(ActionGroup action_group, char8* action_name) get_action_enabled;

		public function GLib.VariantType(ActionGroup action_group, char8* action_name) get_action_parameter_type;

		public function GLib.Variant(ActionGroup action_group, char8* action_name) get_action_state;

		public function GLib.Variant(ActionGroup action_group, char8* action_name) get_action_state_hint;

		public function GLib.VariantType(ActionGroup action_group, char8* action_name) get_action_state_type;

		public function c_int(ActionGroup action_group, char8* action_name) has_action;

		public function c_int(ActionGroup action_group) list_actions;

		public function c_int(ActionGroup action_group, char8* action_name, c_int enabled, GLib.VariantType parameter_type, GLib.VariantType state_type, GLib.Variant state_hint, GLib.Variant state) query_action;
	}
	[CRepr]
	public struct ActionGroupInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct ActionInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct ActionMap
	{
		public function void(ActionMap action_map, Action action) add_action;

		public function Action(ActionMap action_map, char8* action_name) lookup_action;

		public function void(ActionMap action_map, char8* action_name) remove_action;
	}
	[CRepr]
	public struct ActionMapInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct AppInfo
	{
		public function c_int(AppInfo appinfo, char8* content_type) add_supports_type;

		public function c_int(AppInfo appinfo) can_delete;

		public function c_int(AppInfo appinfo) can_remove_supports_type;

		public function c_int(AppInfo appinfo) do_delete;

		public function AppInfo(AppInfo appinfo) dup;

		public function c_int(AppInfo appinfo1, AppInfo appinfo2) equal;

		public function char8*(AppInfo appinfo) get_commandline;

		public function char8*(AppInfo appinfo) get_description;

		public function char8*(AppInfo appinfo) get_display_name;

		public function char8*(AppInfo appinfo) get_executable;

		public function Icon(AppInfo appinfo) get_icon;

		public function char8*(AppInfo appinfo) get_id;

		public function char8*(AppInfo appinfo) get_name;

		public function char8*(AppInfo appinfo) get_supported_types;

		public function c_int(AppInfo appinfo, GLib.List files, AppLaunchContext context) launch;

		public function c_int(AppInfo appinfo, GLib.List uris, AppLaunchContext context) launch_uris;

		public function void(AppInfo appinfo, GLib.List uris, AppLaunchContext context, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) launch_uris_async;

		public function c_int(AppInfo appinfo, AsyncResult result) launch_uris_finish;

		public function c_int(AppInfo appinfo, char8* content_type) remove_supports_type;

		public function c_int(AppInfo appinfo, char8* extension_) set_as_default_for_extension;

		public function c_int(AppInfo appinfo, char8* content_type) set_as_default_for_type;

		public function c_int(AppInfo appinfo, char8* content_type) set_as_last_used_for_type;

		public function c_int(AppInfo appinfo) should_show;

		public function c_int(AppInfo appinfo) supports_files;

		public function c_int(AppInfo appinfo) supports_uris;
	}
	[CRepr]
	public struct AppInfoCreateFlags
	{
		public const int G_APP_INFO_CREATE_NONE = 0;
		public const int G_APP_INFO_CREATE_NEEDS_TERMINAL = 1;
		public const int G_APP_INFO_CREATE_SUPPORTS_URIS = 2;
		public const int G_APP_INFO_CREATE_SUPPORTS_STARTUP_NOTIFICATION = 4;
	}
	[CRepr]
	public struct AppInfoIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct AppInfoMonitor;
	[CRepr]
	public struct AppLaunchContext;
	[LinkName("g_app_launch_context_new")]
	public static extern AppLaunchContext AppLaunchContextNew();
	[LinkName("g_app_launch_context_get_display")]
	public static extern char8* AppLaunchContextGetDisplay(AppLaunchContext context, AppInfo info, GLib.List files);
	[LinkName("g_app_launch_context_get_environment")]
	public static extern char8* AppLaunchContextGetEnvironment(AppLaunchContext context);
	[LinkName("g_app_launch_context_get_startup_notify_id")]
	public static extern char8* AppLaunchContextGetStartupNotifyId(AppLaunchContext context, AppInfo info, GLib.List files);
	[LinkName("g_app_launch_context_launch_failed")]
	public static extern void AppLaunchContextLaunchFailed(AppLaunchContext context, char8* startup_notify_id);
	[LinkName("g_app_launch_context_setenv")]
	public static extern void AppLaunchContextSetenv(AppLaunchContext context, char8* variable, char8* value);
	[LinkName("g_app_launch_context_unsetenv")]
	public static extern void AppLaunchContextUnsetenv(AppLaunchContext context, char8* variable);
	[CRepr]
	public struct AppLaunchContextClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct AppLaunchContextPrivate
	{
	}
	[CRepr]
	public struct Application;
	[LinkName("g_application_new")]
	public static extern Application ApplicationNew(char8* application_id, ApplicationFlags flags);
	[LinkName("g_application_activate")]
	public static extern void ApplicationActivate(Application application);
	[LinkName("g_application_add_main_option")]
	public static extern void ApplicationAddMainOption(Application application, char8* long_name, c_char short_name, GLib.OptionFlags flags, GLib.OptionArg arg, char8* description, char8* arg_description);
	[LinkName("g_application_add_main_option_entries")]
	public static extern void ApplicationAddMainOptionEntries(Application application);
	[LinkName("g_application_add_option_group")]
	public static extern void ApplicationAddOptionGroup(Application application, GLib.OptionGroup group);
	[LinkName("g_application_bind_busy_property")]
	public static extern void ApplicationBindBusyProperty(Application application, GObject.Object object, char8* property);
	[LinkName("g_application_get_application_id")]
	public static extern char8* ApplicationGetApplicationId(Application application);
	[LinkName("g_application_get_dbus_connection")]
	public static extern DBusConnection ApplicationGetDbusConnection(Application application);
	[LinkName("g_application_get_dbus_object_path")]
	public static extern char8* ApplicationGetDbusObjectPath(Application application);
	[LinkName("g_application_get_flags")]
	public static extern ApplicationFlags ApplicationGetFlags(Application application);
	[LinkName("g_application_get_inactivity_timeout")]
	public static extern c_uint ApplicationGetInactivityTimeout(Application application);
	[LinkName("g_application_get_is_busy")]
	public static extern c_int ApplicationGetIsBusy(Application application);
	[LinkName("g_application_get_is_registered")]
	public static extern c_int ApplicationGetIsRegistered(Application application);
	[LinkName("g_application_get_is_remote")]
	public static extern c_int ApplicationGetIsRemote(Application application);
	[LinkName("g_application_get_resource_base_path")]
	public static extern char8* ApplicationGetResourceBasePath(Application application);
	[LinkName("g_application_hold")]
	public static extern void ApplicationHold(Application application);
	[LinkName("g_application_mark_busy")]
	public static extern void ApplicationMarkBusy(Application application);
	[LinkName("g_application_open")]
	public static extern void ApplicationOpen(Application application, c_int n_files, char8* hint);
	[LinkName("g_application_quit")]
	public static extern void ApplicationQuit(Application application);
	[LinkName("g_application_register")]
	public static extern c_int ApplicationRegister(Application application, Cancellable cancellable);
	[LinkName("g_application_release")]
	public static extern void ApplicationRelease(Application application);
	[LinkName("g_application_run")]
	public static extern c_int ApplicationRun(Application application, c_int argc);
	[LinkName("g_application_send_notification")]
	public static extern void ApplicationSendNotification(Application application, char8* id, Notification notification);
	[LinkName("g_application_set_action_group")]
	public static extern void ApplicationSetActionGroup(Application application, ActionGroup action_group);
	[LinkName("g_application_set_application_id")]
	public static extern void ApplicationSetApplicationId(Application application, char8* application_id);
	[LinkName("g_application_set_default")]
	public static extern void ApplicationSetDefault(Application application);
	[LinkName("g_application_set_flags")]
	public static extern void ApplicationSetFlags(Application application, ApplicationFlags flags);
	[LinkName("g_application_set_inactivity_timeout")]
	public static extern void ApplicationSetInactivityTimeout(Application application, c_uint inactivity_timeout);
	[LinkName("g_application_set_option_context_description")]
	public static extern void ApplicationSetOptionContextDescription(Application application, char8* description);
	[LinkName("g_application_set_option_context_parameter_string")]
	public static extern void ApplicationSetOptionContextParameterString(Application application, char8* parameter_string);
	[LinkName("g_application_set_option_context_summary")]
	public static extern void ApplicationSetOptionContextSummary(Application application, char8* summary);
	[LinkName("g_application_set_resource_base_path")]
	public static extern void ApplicationSetResourceBasePath(Application application, char8* resource_path);
	[LinkName("g_application_unbind_busy_property")]
	public static extern void ApplicationUnbindBusyProperty(Application application, GObject.Object object, char8* property);
	[LinkName("g_application_unmark_busy")]
	public static extern void ApplicationUnmarkBusy(Application application);
	[LinkName("g_application_withdraw_notification")]
	public static extern void ApplicationWithdrawNotification(Application application, char8* id);
	[CRepr]
	public struct ApplicationClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ApplicationCommandLine;
	[LinkName("g_application_command_line_create_file_for_arg")]
	public static extern File ApplicationCommandLineCreateFileForArg(ApplicationCommandLine cmdline, char8* arg);
	[LinkName("g_application_command_line_get_arguments")]
	public static extern char8* ApplicationCommandLineGetArguments(ApplicationCommandLine cmdline, c_int argc);
	[LinkName("g_application_command_line_get_cwd")]
	public static extern char8* ApplicationCommandLineGetCwd(ApplicationCommandLine cmdline);
	[LinkName("g_application_command_line_get_environ")]
	public static extern char8* ApplicationCommandLineGetEnviron(ApplicationCommandLine cmdline);
	[LinkName("g_application_command_line_get_exit_status")]
	public static extern c_int ApplicationCommandLineGetExitStatus(ApplicationCommandLine cmdline);
	[LinkName("g_application_command_line_get_is_remote")]
	public static extern c_int ApplicationCommandLineGetIsRemote(ApplicationCommandLine cmdline);
	[LinkName("g_application_command_line_get_options_dict")]
	public static extern GLib.VariantDict ApplicationCommandLineGetOptionsDict(ApplicationCommandLine cmdline);
	[LinkName("g_application_command_line_get_platform_data")]
	public static extern GLib.Variant ApplicationCommandLineGetPlatformData(ApplicationCommandLine cmdline);
	[LinkName("g_application_command_line_get_stdin")]
	public static extern InputStream ApplicationCommandLineGetStdin(ApplicationCommandLine cmdline);
	[LinkName("g_application_command_line_getenv")]
	public static extern char8* ApplicationCommandLineGetenv(ApplicationCommandLine cmdline, char8* name);
	[LinkName("g_application_command_line_print")]
	public static extern void ApplicationCommandLinePrint(ApplicationCommandLine cmdline, char8* format);
	[LinkName("g_application_command_line_printerr")]
	public static extern void ApplicationCommandLinePrinterr(ApplicationCommandLine cmdline, char8* format);
	[LinkName("g_application_command_line_set_exit_status")]
	public static extern void ApplicationCommandLineSetExitStatus(ApplicationCommandLine cmdline, c_int exit_status);
	[CRepr]
	public struct ApplicationCommandLineClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ApplicationCommandLinePrivate
	{
	}
	[CRepr]
	public struct ApplicationFlags
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
	public struct ApplicationPrivate
	{
	}
	[CRepr]
	public struct AskPasswordFlags
	{
		public const int G_ASK_PASSWORD_NEED_PASSWORD = 1;
		public const int G_ASK_PASSWORD_NEED_USERNAME = 2;
		public const int G_ASK_PASSWORD_NEED_DOMAIN = 4;
		public const int G_ASK_PASSWORD_SAVING_SUPPORTED = 8;
		public const int G_ASK_PASSWORD_ANONYMOUS_SUPPORTED = 16;
		public const int G_ASK_PASSWORD_TCRYPT = 32;
	}
	[CRepr]
	public struct AsyncInitable
	{
		public function void(AsyncInitable initable, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) init_async;

		public function c_int(AsyncInitable initable, AsyncResult res) init_finish;
	}
	[CRepr]
	public struct AsyncInitableIface
	{
		GObject.TypeInterface g_iface;
	}
	public function void AsyncReadyCallback(GObject.Object source_object, AsyncResult res, void* data);
	[CRepr]
	public struct AsyncResult
	{
		public function GObject.Object(AsyncResult res) get_source_object;

		public function void*(AsyncResult res) get_user_data;

		public function c_int(AsyncResult res, void* source_tag) is_tagged;
	}
	[CRepr]
	public struct AsyncResultIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct BufferedInputStream;
	[LinkName("g_buffered_input_stream_new")]
	public static extern InputStream BufferedInputStreamNew(InputStream base_stream);
	[LinkName("g_buffered_input_stream_new_sized")]
	public static extern InputStream BufferedInputStreamNewSized(InputStream base_stream, c_ulong size);
	[LinkName("g_buffered_input_stream_fill")]
	public static extern c_long BufferedInputStreamFill(BufferedInputStream stream, c_long count, Cancellable cancellable);
	[LinkName("g_buffered_input_stream_fill_async")]
	public static extern void BufferedInputStreamFillAsync(BufferedInputStream stream, c_long count, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_buffered_input_stream_fill_finish")]
	public static extern c_long BufferedInputStreamFillFinish(BufferedInputStream stream, AsyncResult result);
	[LinkName("g_buffered_input_stream_get_available")]
	public static extern c_ulong BufferedInputStreamGetAvailable(BufferedInputStream stream);
	[LinkName("g_buffered_input_stream_get_buffer_size")]
	public static extern c_ulong BufferedInputStreamGetBufferSize(BufferedInputStream stream);
	[LinkName("g_buffered_input_stream_peek")]
	public static extern c_ulong BufferedInputStreamPeek(BufferedInputStream stream, c_ulong offset, c_ulong count);
	[LinkName("g_buffered_input_stream_peek_buffer")]
	public static extern c_uchar BufferedInputStreamPeekBuffer(BufferedInputStream stream, c_ulong count);
	[LinkName("g_buffered_input_stream_read_byte")]
	public static extern c_int BufferedInputStreamReadByte(BufferedInputStream stream, Cancellable cancellable);
	[LinkName("g_buffered_input_stream_set_buffer_size")]
	public static extern void BufferedInputStreamSetBufferSize(BufferedInputStream stream, c_ulong size);
	[CRepr]
	public struct BufferedInputStreamClass
	{
		FilterInputStreamClass parent_class;
	}
	[CRepr]
	public struct BufferedInputStreamPrivate
	{
	}
	[CRepr]
	public struct BufferedOutputStream;
	[LinkName("g_buffered_output_stream_new")]
	public static extern OutputStream BufferedOutputStreamNew(OutputStream base_stream);
	[LinkName("g_buffered_output_stream_new_sized")]
	public static extern OutputStream BufferedOutputStreamNewSized(OutputStream base_stream, c_ulong size);
	[LinkName("g_buffered_output_stream_get_auto_grow")]
	public static extern c_int BufferedOutputStreamGetAutoGrow(BufferedOutputStream stream);
	[LinkName("g_buffered_output_stream_get_buffer_size")]
	public static extern c_ulong BufferedOutputStreamGetBufferSize(BufferedOutputStream stream);
	[LinkName("g_buffered_output_stream_set_auto_grow")]
	public static extern void BufferedOutputStreamSetAutoGrow(BufferedOutputStream stream, c_int auto_grow);
	[LinkName("g_buffered_output_stream_set_buffer_size")]
	public static extern void BufferedOutputStreamSetBufferSize(BufferedOutputStream stream, c_ulong size);
	[CRepr]
	public struct BufferedOutputStreamClass
	{
		FilterOutputStreamClass parent_class;
	}
	[CRepr]
	public struct BufferedOutputStreamPrivate
	{
	}
	public function void BusAcquiredCallback(DBusConnection connection, char8* name, void* user_data);
	public function void BusNameAcquiredCallback(DBusConnection connection, char8* name, void* user_data);
	public function void BusNameAppearedCallback(DBusConnection connection, char8* name, char8* name_owner, void* user_data);
	public function void BusNameLostCallback(DBusConnection connection, char8* name, void* user_data);
	[CRepr]
	public struct BusNameOwnerFlags
	{
		public const int G_BUS_NAME_OWNER_FLAGS_NONE = 0;
		public const int G_BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT = 1;
		public const int G_BUS_NAME_OWNER_FLAGS_REPLACE = 2;
		public const int G_BUS_NAME_OWNER_FLAGS_DO_NOT_QUEUE = 4;
	}
	public function void BusNameVanishedCallback(DBusConnection connection, char8* name, void* user_data);
	[CRepr]
	public struct BusNameWatcherFlags
	{
		public const int G_BUS_NAME_WATCHER_FLAGS_NONE = 0;
		public const int G_BUS_NAME_WATCHER_FLAGS_AUTO_START = 1;
	}
	public enum BusType : c_int
	{
		G_BUS_TYPE_STARTER,
		G_BUS_TYPE_NONE,
		G_BUS_TYPE_SYSTEM,
		G_BUS_TYPE_SESSION
	}
	[CRepr]
	public struct BytesIcon;
	[LinkName("g_bytes_icon_new")]
	public static extern BytesIcon BytesIconNew(GLib.Bytes bytes);
	[LinkName("g_bytes_icon_get_bytes")]
	public static extern GLib.Bytes BytesIconGetBytes(BytesIcon icon);
	[CRepr]
	public struct Cancellable;
	[LinkName("g_cancellable_new")]
	public static extern Cancellable CancellableNew();
	[LinkName("g_cancellable_cancel")]
	public static extern void CancellableCancel(Cancellable cancellable);
	[LinkName("g_cancellable_connect")]
	public static extern c_ulong CancellableConnect(Cancellable cancellable, GObject.Callback callback, void* data, GLib.DestroyNotify data_destroy_func);
	[LinkName("g_cancellable_disconnect")]
	public static extern void CancellableDisconnect(Cancellable cancellable, c_ulong handler_id);
	[LinkName("g_cancellable_get_fd")]
	public static extern c_int CancellableGetFd(Cancellable cancellable);
	[LinkName("g_cancellable_is_cancelled")]
	public static extern c_int CancellableIsCancelled(Cancellable cancellable);
	[LinkName("g_cancellable_make_pollfd")]
	public static extern c_int CancellableMakePollfd(Cancellable cancellable, GLib.PollFD pollfd);
	[LinkName("g_cancellable_pop_current")]
	public static extern void CancellablePopCurrent(Cancellable cancellable);
	[LinkName("g_cancellable_push_current")]
	public static extern void CancellablePushCurrent(Cancellable cancellable);
	[LinkName("g_cancellable_release_fd")]
	public static extern void CancellableReleaseFd(Cancellable cancellable);
	[LinkName("g_cancellable_reset")]
	public static extern void CancellableReset(Cancellable cancellable);
	[LinkName("g_cancellable_set_error_if_cancelled")]
	public static extern c_int CancellableSetErrorIfCancelled(Cancellable cancellable);
	[LinkName("g_cancellable_source_new")]
	public static extern GLib.Source CancellableSourceNew(Cancellable cancellable);
	[CRepr]
	public struct CancellableClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct CancellablePrivate
	{
	}
	public function c_int CancellableSourceFunc(Cancellable cancellable, void* data);
	[CRepr]
	public struct CharsetConverter;
	[LinkName("g_charset_converter_new")]
	public static extern CharsetConverter CharsetConverterNew(char8* to_charset, char8* from_charset);
	[LinkName("g_charset_converter_get_num_fallbacks")]
	public static extern c_uint CharsetConverterGetNumFallbacks(CharsetConverter converter);
	[LinkName("g_charset_converter_get_use_fallback")]
	public static extern c_int CharsetConverterGetUseFallback(CharsetConverter converter);
	[LinkName("g_charset_converter_set_use_fallback")]
	public static extern void CharsetConverterSetUseFallback(CharsetConverter converter, c_int use_fallback);
	[CRepr]
	public struct CharsetConverterClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct Converter
	{
		public function ConverterResult(Converter converter, c_ulong inbuf_size, c_ulong outbuf_size, ConverterFlags flags, c_ulong bytes_read, c_ulong bytes_written) convert;

		public function void(Converter converter) reset;
	}
	[CRepr]
	public struct ConverterFlags
	{
		public const int G_CONVERTER_NO_FLAGS = 0;
		public const int G_CONVERTER_INPUT_AT_END = 1;
		public const int G_CONVERTER_FLUSH = 2;
	}
	[CRepr]
	public struct ConverterIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct ConverterInputStream;
	[LinkName("g_converter_input_stream_new")]
	public static extern InputStream ConverterInputStreamNew(InputStream base_stream, Converter converter);
	[LinkName("g_converter_input_stream_get_converter")]
	public static extern Converter ConverterInputStreamGetConverter(ConverterInputStream converter_stream);
	[CRepr]
	public struct ConverterInputStreamClass
	{
		FilterInputStreamClass parent_class;
	}
	[CRepr]
	public struct ConverterInputStreamPrivate
	{
	}
	[CRepr]
	public struct ConverterOutputStream;
	[LinkName("g_converter_output_stream_new")]
	public static extern OutputStream ConverterOutputStreamNew(OutputStream base_stream, Converter converter);
	[LinkName("g_converter_output_stream_get_converter")]
	public static extern Converter ConverterOutputStreamGetConverter(ConverterOutputStream converter_stream);
	[CRepr]
	public struct ConverterOutputStreamClass
	{
		FilterOutputStreamClass parent_class;
	}
	[CRepr]
	public struct ConverterOutputStreamPrivate
	{
	}
	public enum ConverterResult : c_int
	{
		G_CONVERTER_ERROR,
		G_CONVERTER_CONVERTED,
		G_CONVERTER_FINISHED,
		G_CONVERTER_FLUSHED
	}
	[CRepr]
	public struct Credentials;
	[LinkName("g_credentials_new")]
	public static extern Credentials CredentialsNew();
	[LinkName("g_credentials_get_native")]
	public static extern void* CredentialsGetNative(Credentials credentials, CredentialsType native_type);
	[LinkName("g_credentials_get_unix_pid")]
	public static extern c_int CredentialsGetUnixPid(Credentials credentials);
	[LinkName("g_credentials_get_unix_user")]
	public static extern c_uint CredentialsGetUnixUser(Credentials credentials);
	[LinkName("g_credentials_is_same_user")]
	public static extern c_int CredentialsIsSameUser(Credentials credentials, Credentials other_credentials);
	[LinkName("g_credentials_set_native")]
	public static extern void CredentialsSetNative(Credentials credentials, CredentialsType native_type, void* native);
	[LinkName("g_credentials_set_unix_user")]
	public static extern c_int CredentialsSetUnixUser(Credentials credentials, c_uint uid);
	[LinkName("g_credentials_to_string")]
	public static extern char8* CredentialsToString(Credentials credentials);
	[CRepr]
	public struct CredentialsClass
	{
	}
	public enum CredentialsType : c_int
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
	public struct DBusActionGroup;
	[CRepr]
	public struct DBusAnnotationInfo
	{
		c_int ref_count;
		char8* key;
		char8* value;
	}
	[CRepr]
	public struct DBusArgInfo
	{
		c_int ref_count;
		char8* name;
		char8* signature;
	}
	[CRepr]
	public struct DBusAuthObserver;
	[LinkName("g_dbus_auth_observer_new")]
	public static extern DBusAuthObserver DbusAuthObserverNew();
	[LinkName("g_dbus_auth_observer_allow_mechanism")]
	public static extern c_int DbusAuthObserverAllowMechanism(DBusAuthObserver observer, char8* mechanism);
	[LinkName("g_dbus_auth_observer_authorize_authenticated_peer")]
	public static extern c_int DbusAuthObserverAuthorizeAuthenticatedPeer(DBusAuthObserver observer, IOStream stream, Credentials credentials);
	[CRepr]
	public struct DBusCallFlags
	{
		public const int G_DBUS_CALL_FLAGS_NONE = 0;
		public const int G_DBUS_CALL_FLAGS_NO_AUTO_START = 1;
		public const int G_DBUS_CALL_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION = 2;
	}
	[CRepr]
	public struct DBusCapabilityFlags
	{
		public const int G_DBUS_CAPABILITY_FLAGS_NONE = 0;
		public const int G_DBUS_CAPABILITY_FLAGS_UNIX_FD_PASSING = 1;
	}
	[CRepr]
	public struct DBusConnection;
	[LinkName("g_dbus_connection_new_finish")]
	public static extern DBusConnection DbusConnectionNewFinish(AsyncResult res);
	[LinkName("g_dbus_connection_new_for_address_finish")]
	public static extern DBusConnection DbusConnectionNewForAddressFinish(AsyncResult res);
	[LinkName("g_dbus_connection_new_for_address_sync")]
	public static extern DBusConnection DbusConnectionNewForAddressSync(char8* address, DBusConnectionFlags flags, DBusAuthObserver observer, Cancellable cancellable);
	[LinkName("g_dbus_connection_new_sync")]
	public static extern DBusConnection DbusConnectionNewSync(IOStream stream, char8* guid, DBusConnectionFlags flags, DBusAuthObserver observer, Cancellable cancellable);
	[LinkName("g_dbus_connection_add_filter")]
	public static extern c_uint DbusConnectionAddFilter(DBusConnection connection, DBusMessageFilterFunction filter_function, void* user_data, GLib.DestroyNotify user_data_free_func);
	[LinkName("g_dbus_connection_call")]
	public static extern void DbusConnectionCall(DBusConnection connection, char8* bus_name, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant parameters, GLib.VariantType reply_type, DBusCallFlags flags, c_int timeout_msec, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_call_finish")]
	public static extern GLib.Variant DbusConnectionCallFinish(DBusConnection connection, AsyncResult res);
	[LinkName("g_dbus_connection_call_sync")]
	public static extern GLib.Variant DbusConnectionCallSync(DBusConnection connection, char8* bus_name, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant parameters, GLib.VariantType reply_type, DBusCallFlags flags, c_int timeout_msec, Cancellable cancellable);
	[LinkName("g_dbus_connection_call_with_unix_fd_list")]
	public static extern void DbusConnectionCallWithUnixFdList(DBusConnection connection, char8* bus_name, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant parameters, GLib.VariantType reply_type, DBusCallFlags flags, c_int timeout_msec, UnixFDList fd_list, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_call_with_unix_fd_list_finish")]
	public static extern GLib.Variant DbusConnectionCallWithUnixFdListFinish(DBusConnection connection, UnixFDList out_fd_list, AsyncResult res);
	[LinkName("g_dbus_connection_call_with_unix_fd_list_sync")]
	public static extern GLib.Variant DbusConnectionCallWithUnixFdListSync(DBusConnection connection, char8* bus_name, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant parameters, GLib.VariantType reply_type, DBusCallFlags flags, c_int timeout_msec, UnixFDList fd_list, UnixFDList out_fd_list, Cancellable cancellable);
	[LinkName("g_dbus_connection_close")]
	public static extern void DbusConnectionClose(DBusConnection connection, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_close_finish")]
	public static extern c_int DbusConnectionCloseFinish(DBusConnection connection, AsyncResult res);
	[LinkName("g_dbus_connection_close_sync")]
	public static extern c_int DbusConnectionCloseSync(DBusConnection connection, Cancellable cancellable);
	[LinkName("g_dbus_connection_emit_signal")]
	public static extern c_int DbusConnectionEmitSignal(DBusConnection connection, char8* destination_bus_name, char8* object_path, char8* interface_name, char8* signal_name, GLib.Variant parameters);
	[LinkName("g_dbus_connection_export_action_group")]
	public static extern c_uint DbusConnectionExportActionGroup(DBusConnection connection, char8* object_path, ActionGroup action_group);
	[LinkName("g_dbus_connection_export_menu_model")]
	public static extern c_uint DbusConnectionExportMenuModel(DBusConnection connection, char8* object_path, MenuModel menu);
	[LinkName("g_dbus_connection_flush")]
	public static extern void DbusConnectionFlush(DBusConnection connection, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_flush_finish")]
	public static extern c_int DbusConnectionFlushFinish(DBusConnection connection, AsyncResult res);
	[LinkName("g_dbus_connection_flush_sync")]
	public static extern c_int DbusConnectionFlushSync(DBusConnection connection, Cancellable cancellable);
	[LinkName("g_dbus_connection_get_capabilities")]
	public static extern DBusCapabilityFlags DbusConnectionGetCapabilities(DBusConnection connection);
	[LinkName("g_dbus_connection_get_exit_on_close")]
	public static extern c_int DbusConnectionGetExitOnClose(DBusConnection connection);
	[LinkName("g_dbus_connection_get_flags")]
	public static extern DBusConnectionFlags DbusConnectionGetFlags(DBusConnection connection);
	[LinkName("g_dbus_connection_get_guid")]
	public static extern char8* DbusConnectionGetGuid(DBusConnection connection);
	[LinkName("g_dbus_connection_get_last_serial")]
	public static extern c_uint DbusConnectionGetLastSerial(DBusConnection connection);
	[LinkName("g_dbus_connection_get_peer_credentials")]
	public static extern Credentials DbusConnectionGetPeerCredentials(DBusConnection connection);
	[LinkName("g_dbus_connection_get_stream")]
	public static extern IOStream DbusConnectionGetStream(DBusConnection connection);
	[LinkName("g_dbus_connection_get_unique_name")]
	public static extern char8* DbusConnectionGetUniqueName(DBusConnection connection);
	[LinkName("g_dbus_connection_is_closed")]
	public static extern c_int DbusConnectionIsClosed(DBusConnection connection);
	[LinkName("g_dbus_connection_register_object")]
	public static extern c_uint DbusConnectionRegisterObject(DBusConnection connection, char8* object_path, DBusInterfaceInfo interface_info, DBusInterfaceVTable vtable, void* user_data, GLib.DestroyNotify user_data_free_func);
	[LinkName("g_dbus_connection_register_object_with_closures")]
	public static extern c_uint DbusConnectionRegisterObjectWithClosures(DBusConnection connection, char8* object_path, DBusInterfaceInfo interface_info, GObject.Closure method_call_closure, GObject.Closure get_property_closure, GObject.Closure set_property_closure);
	[LinkName("g_dbus_connection_register_subtree")]
	public static extern c_uint DbusConnectionRegisterSubtree(DBusConnection connection, char8* object_path, DBusSubtreeVTable vtable, DBusSubtreeFlags flags, void* user_data, GLib.DestroyNotify user_data_free_func);
	[LinkName("g_dbus_connection_remove_filter")]
	public static extern void DbusConnectionRemoveFilter(DBusConnection connection, c_uint filter_id);
	[LinkName("g_dbus_connection_send_message")]
	public static extern c_int DbusConnectionSendMessage(DBusConnection connection, DBusMessage message, DBusSendMessageFlags flags, c_uint out_serial);
	[LinkName("g_dbus_connection_send_message_with_reply")]
	public static extern void DbusConnectionSendMessageWithReply(DBusConnection connection, DBusMessage message, DBusSendMessageFlags flags, c_int timeout_msec, c_uint out_serial, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_send_message_with_reply_finish")]
	public static extern DBusMessage DbusConnectionSendMessageWithReplyFinish(DBusConnection connection, AsyncResult res);
	[LinkName("g_dbus_connection_send_message_with_reply_sync")]
	public static extern DBusMessage DbusConnectionSendMessageWithReplySync(DBusConnection connection, DBusMessage message, DBusSendMessageFlags flags, c_int timeout_msec, c_uint out_serial, Cancellable cancellable);
	[LinkName("g_dbus_connection_set_exit_on_close")]
	public static extern void DbusConnectionSetExitOnClose(DBusConnection connection, c_int exit_on_close);
	[LinkName("g_dbus_connection_signal_subscribe")]
	public static extern c_uint DbusConnectionSignalSubscribe(DBusConnection connection, char8* sender, char8* interface_name, char8* member, char8* object_path, char8* arg0, DBusSignalFlags flags, DBusSignalCallback callback, void* user_data, GLib.DestroyNotify user_data_free_func);
	[LinkName("g_dbus_connection_signal_unsubscribe")]
	public static extern void DbusConnectionSignalUnsubscribe(DBusConnection connection, c_uint subscription_id);
	[LinkName("g_dbus_connection_start_message_processing")]
	public static extern void DbusConnectionStartMessageProcessing(DBusConnection connection);
	[LinkName("g_dbus_connection_unexport_action_group")]
	public static extern void DbusConnectionUnexportActionGroup(DBusConnection connection, c_uint export_id);
	[LinkName("g_dbus_connection_unexport_menu_model")]
	public static extern void DbusConnectionUnexportMenuModel(DBusConnection connection, c_uint export_id);
	[LinkName("g_dbus_connection_unregister_object")]
	public static extern c_int DbusConnectionUnregisterObject(DBusConnection connection, c_uint registration_id);
	[LinkName("g_dbus_connection_unregister_subtree")]
	public static extern c_int DbusConnectionUnregisterSubtree(DBusConnection connection, c_uint registration_id);
	[CRepr]
	public struct DBusConnectionFlags
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
	public enum DBusError : c_int
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
	public struct DBusErrorEntry
	{
		c_int error_code;
		char8* dbus_error_name;
	}
	[CRepr]
	public struct DBusInterface
	{
		public function DBusObject(DBusInterface interface_) dup_object;

		public function DBusInterfaceInfo(DBusInterface interface_) get_info;

		public function DBusObject(DBusInterface interface_) get_object;

		public function void(DBusInterface interface_, DBusObject object) set_object;
	}
	public function GLib.Variant DBusInterfaceGetPropertyFunc(DBusConnection connection, char8* sender, char8* object_path, char8* interface_name, char8* property_name, GLib.Error error, void* user_data);
	[CRepr]
	public struct DBusInterfaceIface
	{
		GObject.TypeInterface parent_iface;
	}
	[CRepr]
	public struct DBusInterfaceInfo
	{
		c_int ref_count;
		char8* name;
	}
	public function void DBusInterfaceMethodCallFunc(DBusConnection connection, char8* sender, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant parameters, DBusMethodInvocation invocation, void* user_data);
	public function c_int DBusInterfaceSetPropertyFunc(DBusConnection connection, char8* sender, char8* object_path, char8* interface_name, char8* property_name, GLib.Variant value, GLib.Error error, void* user_data);
	[CRepr]
	public struct DBusInterfaceSkeleton;
	[LinkName("g_dbus_interface_skeleton_export")]
	public static extern c_int DbusInterfaceSkeletonExport(DBusInterfaceSkeleton interface_, DBusConnection connection, char8* object_path);
	[LinkName("g_dbus_interface_skeleton_flush")]
	public static extern void DbusInterfaceSkeletonFlush(DBusInterfaceSkeleton interface_);
	[LinkName("g_dbus_interface_skeleton_get_connection")]
	public static extern DBusConnection DbusInterfaceSkeletonGetConnection(DBusInterfaceSkeleton interface_);
	[LinkName("g_dbus_interface_skeleton_get_connections")]
	public static extern GLib.List DbusInterfaceSkeletonGetConnections(DBusInterfaceSkeleton interface_);
	[LinkName("g_dbus_interface_skeleton_get_flags")]
	public static extern DBusInterfaceSkeletonFlags DbusInterfaceSkeletonGetFlags(DBusInterfaceSkeleton interface_);
	[LinkName("g_dbus_interface_skeleton_get_info")]
	public static extern DBusInterfaceInfo DbusInterfaceSkeletonGetInfo(DBusInterfaceSkeleton interface_);
	[LinkName("g_dbus_interface_skeleton_get_object_path")]
	public static extern char8* DbusInterfaceSkeletonGetObjectPath(DBusInterfaceSkeleton interface_);
	[LinkName("g_dbus_interface_skeleton_get_properties")]
	public static extern GLib.Variant DbusInterfaceSkeletonGetProperties(DBusInterfaceSkeleton interface_);
	[LinkName("g_dbus_interface_skeleton_get_vtable")]
	public static extern DBusInterfaceVTable DbusInterfaceSkeletonGetVtable(DBusInterfaceSkeleton interface_);
	[LinkName("g_dbus_interface_skeleton_has_connection")]
	public static extern c_int DbusInterfaceSkeletonHasConnection(DBusInterfaceSkeleton interface_, DBusConnection connection);
	[LinkName("g_dbus_interface_skeleton_set_flags")]
	public static extern void DbusInterfaceSkeletonSetFlags(DBusInterfaceSkeleton interface_, DBusInterfaceSkeletonFlags flags);
	[LinkName("g_dbus_interface_skeleton_unexport")]
	public static extern void DbusInterfaceSkeletonUnexport(DBusInterfaceSkeleton interface_);
	[LinkName("g_dbus_interface_skeleton_unexport_from_connection")]
	public static extern void DbusInterfaceSkeletonUnexportFromConnection(DBusInterfaceSkeleton interface_, DBusConnection connection);
	[CRepr]
	public struct DBusInterfaceSkeletonClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct DBusInterfaceSkeletonFlags
	{
		public const int G_DBUS_INTERFACE_SKELETON_FLAGS_NONE = 0;
		public const int G_DBUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD = 1;
	}
	[CRepr]
	public struct DBusInterfaceSkeletonPrivate
	{
	}
	[CRepr]
	public struct DBusInterfaceVTable
	{
		DBusInterfaceMethodCallFunc method_call;
		DBusInterfaceGetPropertyFunc get_property;
		DBusInterfaceSetPropertyFunc set_property;
	}
	[CRepr]
	public struct DBusMenuModel;
	[CRepr]
	public struct DBusMessage;
	[LinkName("g_dbus_message_new")]
	public static extern DBusMessage DbusMessageNew();
	[LinkName("g_dbus_message_new_from_blob")]
	public static extern DBusMessage DbusMessageNewFromBlob(c_ulong blob_len, DBusCapabilityFlags capabilities);
	[LinkName("g_dbus_message_new_method_call")]
	public static extern DBusMessage DbusMessageNewMethodCall(char8* name, char8* path, char8* interface_, char8* method);
	[LinkName("g_dbus_message_new_signal")]
	public static extern DBusMessage DbusMessageNewSignal(char8* path, char8* interface_, char8* signal);
	[LinkName("g_dbus_message_copy")]
	public static extern DBusMessage DbusMessageCopy(DBusMessage message);
	[LinkName("g_dbus_message_get_arg0")]
	public static extern char8* DbusMessageGetArg0(DBusMessage message);
	[LinkName("g_dbus_message_get_body")]
	public static extern GLib.Variant DbusMessageGetBody(DBusMessage message);
	[LinkName("g_dbus_message_get_byte_order")]
	public static extern DBusMessageByteOrder DbusMessageGetByteOrder(DBusMessage message);
	[LinkName("g_dbus_message_get_destination")]
	public static extern char8* DbusMessageGetDestination(DBusMessage message);
	[LinkName("g_dbus_message_get_error_name")]
	public static extern char8* DbusMessageGetErrorName(DBusMessage message);
	[LinkName("g_dbus_message_get_flags")]
	public static extern DBusMessageFlags DbusMessageGetFlags(DBusMessage message);
	[LinkName("g_dbus_message_get_header")]
	public static extern GLib.Variant DbusMessageGetHeader(DBusMessage message, DBusMessageHeaderField header_field);
	[LinkName("g_dbus_message_get_header_fields")]
	public static extern c_uchar DbusMessageGetHeaderFields(DBusMessage message);
	[LinkName("g_dbus_message_get_interface")]
	public static extern char8* DbusMessageGetInterface(DBusMessage message);
	[LinkName("g_dbus_message_get_locked")]
	public static extern c_int DbusMessageGetLocked(DBusMessage message);
	[LinkName("g_dbus_message_get_member")]
	public static extern char8* DbusMessageGetMember(DBusMessage message);
	[LinkName("g_dbus_message_get_message_type")]
	public static extern DBusMessageType DbusMessageGetMessageType(DBusMessage message);
	[LinkName("g_dbus_message_get_num_unix_fds")]
	public static extern c_uint DbusMessageGetNumUnixFds(DBusMessage message);
	[LinkName("g_dbus_message_get_path")]
	public static extern char8* DbusMessageGetPath(DBusMessage message);
	[LinkName("g_dbus_message_get_reply_serial")]
	public static extern c_uint DbusMessageGetReplySerial(DBusMessage message);
	[LinkName("g_dbus_message_get_sender")]
	public static extern char8* DbusMessageGetSender(DBusMessage message);
	[LinkName("g_dbus_message_get_serial")]
	public static extern c_uint DbusMessageGetSerial(DBusMessage message);
	[LinkName("g_dbus_message_get_signature")]
	public static extern char8* DbusMessageGetSignature(DBusMessage message);
	[LinkName("g_dbus_message_get_unix_fd_list")]
	public static extern UnixFDList DbusMessageGetUnixFdList(DBusMessage message);
	[LinkName("g_dbus_message_lock")]
	public static extern void DbusMessageLock(DBusMessage message);
	[LinkName("g_dbus_message_new_method_error")]
	public static extern DBusMessage DbusMessageNewMethodError(DBusMessage method_call_message, char8* error_name, char8* error_message_format);
	[LinkName("g_dbus_message_new_method_error_literal")]
	public static extern DBusMessage DbusMessageNewMethodErrorLiteral(DBusMessage method_call_message, char8* error_name, char8* error_message);
	[LinkName("g_dbus_message_new_method_error_valist")]
	public static extern DBusMessage DbusMessageNewMethodErrorValist(DBusMessage method_call_message, char8* error_name, char8* error_message_format, VarArgs var_args);
	[LinkName("g_dbus_message_new_method_reply")]
	public static extern DBusMessage DbusMessageNewMethodReply(DBusMessage method_call_message);
	[LinkName("g_dbus_message_print")]
	public static extern char8* DbusMessagePrint(DBusMessage message, c_uint indent);
	[LinkName("g_dbus_message_set_body")]
	public static extern void DbusMessageSetBody(DBusMessage message, GLib.Variant body);
	[LinkName("g_dbus_message_set_byte_order")]
	public static extern void DbusMessageSetByteOrder(DBusMessage message, DBusMessageByteOrder byte_order);
	[LinkName("g_dbus_message_set_destination")]
	public static extern void DbusMessageSetDestination(DBusMessage message, char8* value);
	[LinkName("g_dbus_message_set_error_name")]
	public static extern void DbusMessageSetErrorName(DBusMessage message, char8* value);
	[LinkName("g_dbus_message_set_flags")]
	public static extern void DbusMessageSetFlags(DBusMessage message, DBusMessageFlags flags);
	[LinkName("g_dbus_message_set_header")]
	public static extern void DbusMessageSetHeader(DBusMessage message, DBusMessageHeaderField header_field, GLib.Variant value);
	[LinkName("g_dbus_message_set_interface")]
	public static extern void DbusMessageSetInterface(DBusMessage message, char8* value);
	[LinkName("g_dbus_message_set_member")]
	public static extern void DbusMessageSetMember(DBusMessage message, char8* value);
	[LinkName("g_dbus_message_set_message_type")]
	public static extern void DbusMessageSetMessageType(DBusMessage message, DBusMessageType type);
	[LinkName("g_dbus_message_set_num_unix_fds")]
	public static extern void DbusMessageSetNumUnixFds(DBusMessage message, c_uint value);
	[LinkName("g_dbus_message_set_path")]
	public static extern void DbusMessageSetPath(DBusMessage message, char8* value);
	[LinkName("g_dbus_message_set_reply_serial")]
	public static extern void DbusMessageSetReplySerial(DBusMessage message, c_uint value);
	[LinkName("g_dbus_message_set_sender")]
	public static extern void DbusMessageSetSender(DBusMessage message, char8* value);
	[LinkName("g_dbus_message_set_serial")]
	public static extern void DbusMessageSetSerial(DBusMessage message, c_uint serial);
	[LinkName("g_dbus_message_set_signature")]
	public static extern void DbusMessageSetSignature(DBusMessage message, char8* value);
	[LinkName("g_dbus_message_set_unix_fd_list")]
	public static extern void DbusMessageSetUnixFdList(DBusMessage message, UnixFDList fd_list);
	[LinkName("g_dbus_message_to_blob")]
	public static extern c_uchar DbusMessageToBlob(DBusMessage message, c_ulong out_size, DBusCapabilityFlags capabilities);
	[LinkName("g_dbus_message_to_gerror")]
	public static extern c_int DbusMessageToGerror(DBusMessage message);
	public enum DBusMessageByteOrder : c_int
	{
		G_DBUS_MESSAGE_BYTE_ORDER_BIG_ENDIAN,
		G_DBUS_MESSAGE_BYTE_ORDER_LITTLE_ENDIAN
	}
	public function DBusMessage DBusMessageFilterFunction(DBusConnection connection, DBusMessage message, c_int incoming, void* user_data);
	[CRepr]
	public struct DBusMessageFlags
	{
		public const int G_DBUS_MESSAGE_FLAGS_NONE = 0;
		public const int G_DBUS_MESSAGE_FLAGS_NO_REPLY_EXPECTED = 1;
		public const int G_DBUS_MESSAGE_FLAGS_NO_AUTO_START = 2;
		public const int G_DBUS_MESSAGE_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION = 4;
	}
	public enum DBusMessageHeaderField : c_int
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
	public enum DBusMessageType : c_int
	{
		G_DBUS_MESSAGE_TYPE_INVALID,
		G_DBUS_MESSAGE_TYPE_METHOD_CALL,
		G_DBUS_MESSAGE_TYPE_METHOD_RETURN,
		G_DBUS_MESSAGE_TYPE_ERROR,
		G_DBUS_MESSAGE_TYPE_SIGNAL
	}
	[CRepr]
	public struct DBusMethodInfo
	{
		c_int ref_count;
		char8* name;
	}
	[CRepr]
	public struct DBusMethodInvocation;
	[LinkName("g_dbus_method_invocation_get_connection")]
	public static extern DBusConnection DbusMethodInvocationGetConnection(DBusMethodInvocation invocation);
	[LinkName("g_dbus_method_invocation_get_interface_name")]
	public static extern char8* DbusMethodInvocationGetInterfaceName(DBusMethodInvocation invocation);
	[LinkName("g_dbus_method_invocation_get_message")]
	public static extern DBusMessage DbusMethodInvocationGetMessage(DBusMethodInvocation invocation);
	[LinkName("g_dbus_method_invocation_get_method_info")]
	public static extern DBusMethodInfo DbusMethodInvocationGetMethodInfo(DBusMethodInvocation invocation);
	[LinkName("g_dbus_method_invocation_get_method_name")]
	public static extern char8* DbusMethodInvocationGetMethodName(DBusMethodInvocation invocation);
	[LinkName("g_dbus_method_invocation_get_object_path")]
	public static extern char8* DbusMethodInvocationGetObjectPath(DBusMethodInvocation invocation);
	[LinkName("g_dbus_method_invocation_get_parameters")]
	public static extern GLib.Variant DbusMethodInvocationGetParameters(DBusMethodInvocation invocation);
	[LinkName("g_dbus_method_invocation_get_property_info")]
	public static extern DBusPropertyInfo DbusMethodInvocationGetPropertyInfo(DBusMethodInvocation invocation);
	[LinkName("g_dbus_method_invocation_get_sender")]
	public static extern char8* DbusMethodInvocationGetSender(DBusMethodInvocation invocation);
	[LinkName("g_dbus_method_invocation_get_user_data")]
	public static extern void* DbusMethodInvocationGetUserData(DBusMethodInvocation invocation);
	[LinkName("g_dbus_method_invocation_return_dbus_error")]
	public static extern void DbusMethodInvocationReturnDbusError(DBusMethodInvocation invocation, char8* error_name, char8* error_message);
	[LinkName("g_dbus_method_invocation_return_error")]
	public static extern void DbusMethodInvocationReturnError(DBusMethodInvocation invocation, GLib.Quark domain, c_int code, char8* format);
	[LinkName("g_dbus_method_invocation_return_error_literal")]
	public static extern void DbusMethodInvocationReturnErrorLiteral(DBusMethodInvocation invocation, GLib.Quark domain, c_int code, char8* message);
	[LinkName("g_dbus_method_invocation_return_error_valist")]
	public static extern void DbusMethodInvocationReturnErrorValist(DBusMethodInvocation invocation, GLib.Quark domain, c_int code, char8* format, VarArgs var_args);
	[LinkName("g_dbus_method_invocation_return_gerror")]
	public static extern void DbusMethodInvocationReturnGerror(DBusMethodInvocation invocation, GLib.Error error);
	[LinkName("g_dbus_method_invocation_return_value")]
	public static extern void DbusMethodInvocationReturnValue(DBusMethodInvocation invocation, GLib.Variant parameters);
	[LinkName("g_dbus_method_invocation_return_value_with_unix_fd_list")]
	public static extern void DbusMethodInvocationReturnValueWithUnixFdList(DBusMethodInvocation invocation, GLib.Variant parameters, UnixFDList fd_list);
	[LinkName("g_dbus_method_invocation_take_error")]
	public static extern void DbusMethodInvocationTakeError(DBusMethodInvocation invocation, GLib.Error error);
	[CRepr]
	public struct DBusNodeInfo
	{
		c_int ref_count;
		char8* path;
	}
	[CRepr]
	public struct DBusObject
	{
		public function DBusInterface(DBusObject object, char8* interface_name) get_interface;

		public function GLib.List(DBusObject object) get_interfaces;

		public function char8*(DBusObject object) get_object_path;

		public function void(DBusObject object, DBusInterface interface_) interface_added;

		public function void(DBusObject object, DBusInterface interface_) interface_removed;
	}
	[CRepr]
	public struct DBusObjectIface
	{
		GObject.TypeInterface parent_iface;
	}
	[CRepr]
	public struct DBusObjectManager
	{
		public function DBusInterface(DBusObjectManager manager, char8* object_path, char8* interface_name) get_interface;

		public function DBusObject(DBusObjectManager manager, char8* object_path) get_object;

		public function char8*(DBusObjectManager manager) get_object_path;

		public function GLib.List(DBusObjectManager manager) get_objects;

		public function void(DBusObjectManager manager, DBusObject object, DBusInterface interface_) interface_added;

		public function void(DBusObjectManager manager, DBusObject object, DBusInterface interface_) interface_removed;

		public function void(DBusObjectManager manager, DBusObject object) object_added;

		public function void(DBusObjectManager manager, DBusObject object) object_removed;
	}
	[CRepr]
	public struct DBusObjectManagerClient;
	[LinkName("g_dbus_object_manager_client_new_finish")]
	public static extern DBusObjectManagerClient DbusObjectManagerClientNewFinish(AsyncResult res);
	[LinkName("g_dbus_object_manager_client_new_for_bus_finish")]
	public static extern DBusObjectManagerClient DbusObjectManagerClientNewForBusFinish(AsyncResult res);
	[LinkName("g_dbus_object_manager_client_new_for_bus_sync")]
	public static extern DBusObjectManagerClient DbusObjectManagerClientNewForBusSync(BusType bus_type, DBusObjectManagerClientFlags flags, char8* name, char8* object_path, DBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, GLib.DestroyNotify get_proxy_type_destroy_notify, Cancellable cancellable);
	[LinkName("g_dbus_object_manager_client_new_sync")]
	public static extern DBusObjectManagerClient DbusObjectManagerClientNewSync(DBusConnection connection, DBusObjectManagerClientFlags flags, char8* name, char8* object_path, DBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, GLib.DestroyNotify get_proxy_type_destroy_notify, Cancellable cancellable);
	[LinkName("g_dbus_object_manager_client_get_connection")]
	public static extern DBusConnection DbusObjectManagerClientGetConnection(DBusObjectManagerClient manager);
	[LinkName("g_dbus_object_manager_client_get_flags")]
	public static extern DBusObjectManagerClientFlags DbusObjectManagerClientGetFlags(DBusObjectManagerClient manager);
	[LinkName("g_dbus_object_manager_client_get_name")]
	public static extern char8* DbusObjectManagerClientGetName(DBusObjectManagerClient manager);
	[LinkName("g_dbus_object_manager_client_get_name_owner")]
	public static extern char8* DbusObjectManagerClientGetNameOwner(DBusObjectManagerClient manager);
	[CRepr]
	public struct DBusObjectManagerClientClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct DBusObjectManagerClientFlags
	{
		public const int G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_NONE = 0;
		public const int G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START = 1;
	}
	[CRepr]
	public struct DBusObjectManagerClientPrivate
	{
	}
	[CRepr]
	public struct DBusObjectManagerIface
	{
		GObject.TypeInterface parent_iface;
	}
	[CRepr]
	public struct DBusObjectManagerServer;
	[LinkName("g_dbus_object_manager_server_new")]
	public static extern DBusObjectManagerServer DbusObjectManagerServerNew(char8* object_path);
	[LinkName("g_dbus_object_manager_server_export")]
	public static extern void DbusObjectManagerServerExport(DBusObjectManagerServer manager, DBusObjectSkeleton object);
	[LinkName("g_dbus_object_manager_server_export_uniquely")]
	public static extern void DbusObjectManagerServerExportUniquely(DBusObjectManagerServer manager, DBusObjectSkeleton object);
	[LinkName("g_dbus_object_manager_server_get_connection")]
	public static extern DBusConnection DbusObjectManagerServerGetConnection(DBusObjectManagerServer manager);
	[LinkName("g_dbus_object_manager_server_is_exported")]
	public static extern c_int DbusObjectManagerServerIsExported(DBusObjectManagerServer manager, DBusObjectSkeleton object);
	[LinkName("g_dbus_object_manager_server_set_connection")]
	public static extern void DbusObjectManagerServerSetConnection(DBusObjectManagerServer manager, DBusConnection connection);
	[LinkName("g_dbus_object_manager_server_unexport")]
	public static extern c_int DbusObjectManagerServerUnexport(DBusObjectManagerServer manager, char8* object_path);
	[CRepr]
	public struct DBusObjectManagerServerClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct DBusObjectManagerServerPrivate
	{
	}
	[CRepr]
	public struct DBusObjectProxy;
	[LinkName("g_dbus_object_proxy_new")]
	public static extern DBusObjectProxy DbusObjectProxyNew(DBusConnection connection, char8* object_path);
	[LinkName("g_dbus_object_proxy_get_connection")]
	public static extern DBusConnection DbusObjectProxyGetConnection(DBusObjectProxy proxy);
	[CRepr]
	public struct DBusObjectProxyClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct DBusObjectProxyPrivate
	{
	}
	[CRepr]
	public struct DBusObjectSkeleton;
	[LinkName("g_dbus_object_skeleton_new")]
	public static extern DBusObjectSkeleton DbusObjectSkeletonNew(char8* object_path);
	[LinkName("g_dbus_object_skeleton_add_interface")]
	public static extern void DbusObjectSkeletonAddInterface(DBusObjectSkeleton object, DBusInterfaceSkeleton interface_);
	[LinkName("g_dbus_object_skeleton_flush")]
	public static extern void DbusObjectSkeletonFlush(DBusObjectSkeleton object);
	[LinkName("g_dbus_object_skeleton_remove_interface")]
	public static extern void DbusObjectSkeletonRemoveInterface(DBusObjectSkeleton object, DBusInterfaceSkeleton interface_);
	[LinkName("g_dbus_object_skeleton_remove_interface_by_name")]
	public static extern void DbusObjectSkeletonRemoveInterfaceByName(DBusObjectSkeleton object, char8* interface_name);
	[LinkName("g_dbus_object_skeleton_set_object_path")]
	public static extern void DbusObjectSkeletonSetObjectPath(DBusObjectSkeleton object, char8* object_path);
	[CRepr]
	public struct DBusObjectSkeletonClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct DBusObjectSkeletonPrivate
	{
	}
	[CRepr]
	public struct DBusPropertyInfo
	{
		c_int ref_count;
		char8* name;
		char8* signature;
		DBusPropertyInfoFlags flags;
	}
	[CRepr]
	public struct DBusPropertyInfoFlags
	{
		public const int G_DBUS_PROPERTY_INFO_FLAGS_NONE = 0;
		public const int G_DBUS_PROPERTY_INFO_FLAGS_READABLE = 1;
		public const int G_DBUS_PROPERTY_INFO_FLAGS_WRITABLE = 2;
	}
	[CRepr]
	public struct DBusProxy;
	[LinkName("g_dbus_proxy_new_finish")]
	public static extern DBusProxy DbusProxyNewFinish(AsyncResult res);
	[LinkName("g_dbus_proxy_new_for_bus_finish")]
	public static extern DBusProxy DbusProxyNewForBusFinish(AsyncResult res);
	[LinkName("g_dbus_proxy_new_for_bus_sync")]
	public static extern DBusProxy DbusProxyNewForBusSync(BusType bus_type, DBusProxyFlags flags, DBusInterfaceInfo info, char8* name, char8* object_path, char8* interface_name, Cancellable cancellable);
	[LinkName("g_dbus_proxy_new_sync")]
	public static extern DBusProxy DbusProxyNewSync(DBusConnection connection, DBusProxyFlags flags, DBusInterfaceInfo info, char8* name, char8* object_path, char8* interface_name, Cancellable cancellable);
	[LinkName("g_dbus_proxy_call")]
	public static extern void DbusProxyCall(DBusProxy proxy, char8* method_name, GLib.Variant parameters, DBusCallFlags flags, c_int timeout_msec, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_proxy_call_finish")]
	public static extern GLib.Variant DbusProxyCallFinish(DBusProxy proxy, AsyncResult res);
	[LinkName("g_dbus_proxy_call_sync")]
	public static extern GLib.Variant DbusProxyCallSync(DBusProxy proxy, char8* method_name, GLib.Variant parameters, DBusCallFlags flags, c_int timeout_msec, Cancellable cancellable);
	[LinkName("g_dbus_proxy_call_with_unix_fd_list")]
	public static extern void DbusProxyCallWithUnixFdList(DBusProxy proxy, char8* method_name, GLib.Variant parameters, DBusCallFlags flags, c_int timeout_msec, UnixFDList fd_list, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_proxy_call_with_unix_fd_list_finish")]
	public static extern GLib.Variant DbusProxyCallWithUnixFdListFinish(DBusProxy proxy, UnixFDList out_fd_list, AsyncResult res);
	[LinkName("g_dbus_proxy_call_with_unix_fd_list_sync")]
	public static extern GLib.Variant DbusProxyCallWithUnixFdListSync(DBusProxy proxy, char8* method_name, GLib.Variant parameters, DBusCallFlags flags, c_int timeout_msec, UnixFDList fd_list, UnixFDList out_fd_list, Cancellable cancellable);
	[LinkName("g_dbus_proxy_get_cached_property")]
	public static extern GLib.Variant DbusProxyGetCachedProperty(DBusProxy proxy, char8* property_name);
	[LinkName("g_dbus_proxy_get_cached_property_names")]
	public static extern char8* DbusProxyGetCachedPropertyNames(DBusProxy proxy);
	[LinkName("g_dbus_proxy_get_connection")]
	public static extern DBusConnection DbusProxyGetConnection(DBusProxy proxy);
	[LinkName("g_dbus_proxy_get_default_timeout")]
	public static extern c_int DbusProxyGetDefaultTimeout(DBusProxy proxy);
	[LinkName("g_dbus_proxy_get_flags")]
	public static extern DBusProxyFlags DbusProxyGetFlags(DBusProxy proxy);
	[LinkName("g_dbus_proxy_get_interface_info")]
	public static extern DBusInterfaceInfo DbusProxyGetInterfaceInfo(DBusProxy proxy);
	[LinkName("g_dbus_proxy_get_interface_name")]
	public static extern char8* DbusProxyGetInterfaceName(DBusProxy proxy);
	[LinkName("g_dbus_proxy_get_name")]
	public static extern char8* DbusProxyGetName(DBusProxy proxy);
	[LinkName("g_dbus_proxy_get_name_owner")]
	public static extern char8* DbusProxyGetNameOwner(DBusProxy proxy);
	[LinkName("g_dbus_proxy_get_object_path")]
	public static extern char8* DbusProxyGetObjectPath(DBusProxy proxy);
	[LinkName("g_dbus_proxy_set_cached_property")]
	public static extern void DbusProxySetCachedProperty(DBusProxy proxy, char8* property_name, GLib.Variant value);
	[LinkName("g_dbus_proxy_set_default_timeout")]
	public static extern void DbusProxySetDefaultTimeout(DBusProxy proxy, c_int timeout_msec);
	[LinkName("g_dbus_proxy_set_interface_info")]
	public static extern void DbusProxySetInterfaceInfo(DBusProxy proxy, DBusInterfaceInfo info);
	[CRepr]
	public struct DBusProxyClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct DBusProxyFlags
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
	public struct DBusProxyPrivate
	{
	}
	public function GLib.Type DBusProxyTypeFunc(DBusObjectManagerClient manager, char8* object_path, char8* interface_name, void* data);
	[CRepr]
	public struct DBusSendMessageFlags
	{
		public const int G_DBUS_SEND_MESSAGE_FLAGS_NONE = 0;
		public const int G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL = 1;
	}
	[CRepr]
	public struct DBusServer;
	[LinkName("g_dbus_server_new_sync")]
	public static extern DBusServer DbusServerNewSync(char8* address, DBusServerFlags flags, char8* guid, DBusAuthObserver observer, Cancellable cancellable);
	[LinkName("g_dbus_server_get_client_address")]
	public static extern char8* DbusServerGetClientAddress(DBusServer server);
	[LinkName("g_dbus_server_get_flags")]
	public static extern DBusServerFlags DbusServerGetFlags(DBusServer server);
	[LinkName("g_dbus_server_get_guid")]
	public static extern char8* DbusServerGetGuid(DBusServer server);
	[LinkName("g_dbus_server_is_active")]
	public static extern c_int DbusServerIsActive(DBusServer server);
	[LinkName("g_dbus_server_start")]
	public static extern void DbusServerStart(DBusServer server);
	[LinkName("g_dbus_server_stop")]
	public static extern void DbusServerStop(DBusServer server);
	[CRepr]
	public struct DBusServerFlags
	{
		public const int G_DBUS_SERVER_FLAGS_NONE = 0;
		public const int G_DBUS_SERVER_FLAGS_RUN_IN_THREAD = 1;
		public const int G_DBUS_SERVER_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS = 2;
		public const int G_DBUS_SERVER_FLAGS_AUTHENTICATION_REQUIRE_SAME_USER = 4;
	}
	public function void DBusSignalCallback(DBusConnection connection, char8* sender_name, char8* object_path, char8* interface_name, char8* signal_name, GLib.Variant parameters, void* user_data);
	[CRepr]
	public struct DBusSignalFlags
	{
		public const int G_DBUS_SIGNAL_FLAGS_NONE = 0;
		public const int G_DBUS_SIGNAL_FLAGS_NO_MATCH_RULE = 1;
		public const int G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_NAMESPACE = 2;
		public const int G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_PATH = 4;
	}
	[CRepr]
	public struct DBusSignalInfo
	{
		c_int ref_count;
		char8* name;
	}
	public function DBusInterfaceVTable DBusSubtreeDispatchFunc(DBusConnection connection, char8* sender, char8* object_path, char8* interface_name, char8* node, void* out_user_data, void* user_data);
	public function char8* DBusSubtreeEnumerateFunc(DBusConnection connection, char8* sender, char8* object_path, void* user_data);
	[CRepr]
	public struct DBusSubtreeFlags
	{
		public const int G_DBUS_SUBTREE_FLAGS_NONE = 0;
		public const int G_DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES = 1;
	}
	public function DBusInterfaceInfo DBusSubtreeIntrospectFunc(DBusConnection connection, char8* sender, char8* object_path, char8* node, void* user_data);
	[CRepr]
	public struct DBusSubtreeVTable
	{
		DBusSubtreeEnumerateFunc enumerate;
		DBusSubtreeIntrospectFunc introspect;
		DBusSubtreeDispatchFunc dispatch;
	}
	[CRepr]
	public struct DataInputStream;
	[LinkName("g_data_input_stream_new")]
	public static extern DataInputStream DataInputStreamNew(InputStream base_stream);
	[LinkName("g_data_input_stream_get_byte_order")]
	public static extern DataStreamByteOrder DataInputStreamGetByteOrder(DataInputStream stream);
	[LinkName("g_data_input_stream_get_newline_type")]
	public static extern DataStreamNewlineType DataInputStreamGetNewlineType(DataInputStream stream);
	[LinkName("g_data_input_stream_read_byte")]
	public static extern c_uchar DataInputStreamReadByte(DataInputStream stream, Cancellable cancellable);
	[LinkName("g_data_input_stream_read_int16")]
	public static extern c_short DataInputStreamReadInt16(DataInputStream stream, Cancellable cancellable);
	[LinkName("g_data_input_stream_read_int32")]
	public static extern c_int DataInputStreamReadInt32(DataInputStream stream, Cancellable cancellable);
	[LinkName("g_data_input_stream_read_int64")]
	public static extern c_longlong DataInputStreamReadInt64(DataInputStream stream, Cancellable cancellable);
	[LinkName("g_data_input_stream_read_line")]
	public static extern c_uchar DataInputStreamReadLine(DataInputStream stream, c_ulong length, Cancellable cancellable);
	[LinkName("g_data_input_stream_read_line_async")]
	public static extern void DataInputStreamReadLineAsync(DataInputStream stream, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_data_input_stream_read_line_finish")]
	public static extern c_uchar DataInputStreamReadLineFinish(DataInputStream stream, AsyncResult result, c_ulong length);
	[LinkName("g_data_input_stream_read_line_finish_utf8")]
	public static extern char8* DataInputStreamReadLineFinishUtf8(DataInputStream stream, AsyncResult result, c_ulong length);
	[LinkName("g_data_input_stream_read_line_utf8")]
	public static extern char8* DataInputStreamReadLineUtf8(DataInputStream stream, c_ulong length, Cancellable cancellable);
	[LinkName("g_data_input_stream_read_uint16")]
	public static extern c_ushort DataInputStreamReadUint16(DataInputStream stream, Cancellable cancellable);
	[LinkName("g_data_input_stream_read_uint32")]
	public static extern c_uint DataInputStreamReadUint32(DataInputStream stream, Cancellable cancellable);
	[LinkName("g_data_input_stream_read_uint64")]
	public static extern c_ulonglong DataInputStreamReadUint64(DataInputStream stream, Cancellable cancellable);
	[LinkName("g_data_input_stream_read_until")]
	public static extern char8* DataInputStreamReadUntil(DataInputStream stream, char8* stop_chars, c_ulong length, Cancellable cancellable);
	[LinkName("g_data_input_stream_read_until_async")]
	public static extern void DataInputStreamReadUntilAsync(DataInputStream stream, char8* stop_chars, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_data_input_stream_read_until_finish")]
	public static extern char8* DataInputStreamReadUntilFinish(DataInputStream stream, AsyncResult result, c_ulong length);
	[LinkName("g_data_input_stream_read_upto")]
	public static extern char8* DataInputStreamReadUpto(DataInputStream stream, char8* stop_chars, c_long stop_chars_len, c_ulong length, Cancellable cancellable);
	[LinkName("g_data_input_stream_read_upto_async")]
	public static extern void DataInputStreamReadUptoAsync(DataInputStream stream, char8* stop_chars, c_long stop_chars_len, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_data_input_stream_read_upto_finish")]
	public static extern char8* DataInputStreamReadUptoFinish(DataInputStream stream, AsyncResult result, c_ulong length);
	[LinkName("g_data_input_stream_set_byte_order")]
	public static extern void DataInputStreamSetByteOrder(DataInputStream stream, DataStreamByteOrder order);
	[LinkName("g_data_input_stream_set_newline_type")]
	public static extern void DataInputStreamSetNewlineType(DataInputStream stream, DataStreamNewlineType type);
	[CRepr]
	public struct DataInputStreamClass
	{
		BufferedInputStreamClass parent_class;
	}
	[CRepr]
	public struct DataInputStreamPrivate
	{
	}
	[CRepr]
	public struct DataOutputStream;
	[LinkName("g_data_output_stream_new")]
	public static extern DataOutputStream DataOutputStreamNew(OutputStream base_stream);
	[LinkName("g_data_output_stream_get_byte_order")]
	public static extern DataStreamByteOrder DataOutputStreamGetByteOrder(DataOutputStream stream);
	[LinkName("g_data_output_stream_put_byte")]
	public static extern c_int DataOutputStreamPutByte(DataOutputStream stream, c_uchar data, Cancellable cancellable);
	[LinkName("g_data_output_stream_put_int16")]
	public static extern c_int DataOutputStreamPutInt16(DataOutputStream stream, c_short data, Cancellable cancellable);
	[LinkName("g_data_output_stream_put_int32")]
	public static extern c_int DataOutputStreamPutInt32(DataOutputStream stream, c_int data, Cancellable cancellable);
	[LinkName("g_data_output_stream_put_int64")]
	public static extern c_int DataOutputStreamPutInt64(DataOutputStream stream, c_longlong data, Cancellable cancellable);
	[LinkName("g_data_output_stream_put_string")]
	public static extern c_int DataOutputStreamPutString(DataOutputStream stream, char8* str, Cancellable cancellable);
	[LinkName("g_data_output_stream_put_uint16")]
	public static extern c_int DataOutputStreamPutUint16(DataOutputStream stream, c_ushort data, Cancellable cancellable);
	[LinkName("g_data_output_stream_put_uint32")]
	public static extern c_int DataOutputStreamPutUint32(DataOutputStream stream, c_uint data, Cancellable cancellable);
	[LinkName("g_data_output_stream_put_uint64")]
	public static extern c_int DataOutputStreamPutUint64(DataOutputStream stream, c_ulonglong data, Cancellable cancellable);
	[LinkName("g_data_output_stream_set_byte_order")]
	public static extern void DataOutputStreamSetByteOrder(DataOutputStream stream, DataStreamByteOrder order);
	[CRepr]
	public struct DataOutputStreamClass
	{
		FilterOutputStreamClass parent_class;
	}
	[CRepr]
	public struct DataOutputStreamPrivate
	{
	}
	public enum DataStreamByteOrder : c_int
	{
		G_DATA_STREAM_BYTE_ORDER_BIG_ENDIAN,
		G_DATA_STREAM_BYTE_ORDER_LITTLE_ENDIAN,
		G_DATA_STREAM_BYTE_ORDER_HOST_ENDIAN
	}
	public enum DataStreamNewlineType : c_int
	{
		G_DATA_STREAM_NEWLINE_TYPE_LF,
		G_DATA_STREAM_NEWLINE_TYPE_CR,
		G_DATA_STREAM_NEWLINE_TYPE_CR_LF,
		G_DATA_STREAM_NEWLINE_TYPE_ANY
	}
	[CRepr]
	public struct DatagramBased
	{
		public function GLib.IOCondition(DatagramBased datagram_based, GLib.IOCondition condition) condition_check;

		public function c_int(DatagramBased datagram_based, GLib.IOCondition condition, c_longlong timeout, Cancellable cancellable) condition_wait;

		public function GLib.Source(DatagramBased datagram_based, GLib.IOCondition condition, Cancellable cancellable) create_source;

		public function c_int(DatagramBased datagram_based, c_uint num_messages, c_int flags, c_longlong timeout, Cancellable cancellable) receive_messages;

		public function c_int(DatagramBased datagram_based, c_uint num_messages, c_int flags, c_longlong timeout, Cancellable cancellable) send_messages;
	}
	[CRepr]
	public struct DatagramBasedInterface
	{
		GObject.TypeInterface g_iface;
	}
	public function c_int DatagramBasedSourceFunc(DatagramBased datagram_based, GLib.IOCondition condition, void* data);
	[CRepr]
	public struct DebugController
	{	}
	[CRepr]
	public struct DebugControllerDBus;
	[LinkName("g_debug_controller_dbus_new")]
	public static extern DebugControllerDBus DebucontrollerDbusNew(DBusConnection connection, Cancellable cancellable);
	[LinkName("g_debug_controller_dbus_stop")]
	public static extern void DebucontrollerDbusStop(DebugControllerDBus self);
	[CRepr]
	public struct DebugControllerDBusClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct DebugControllerInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct DesktopAppInfo;
	[LinkName("g_desktop_app_info_new")]
	public static extern DesktopAppInfo DesktopAppInfoNew(char8* desktop_id);
	[LinkName("g_desktop_app_info_new_from_filename")]
	public static extern DesktopAppInfo DesktopAppInfoNewFromFilename(char8* filename);
	[LinkName("g_desktop_app_info_new_from_keyfile")]
	public static extern DesktopAppInfo DesktopAppInfoNewFromKeyfile(GLib.KeyFile key_file);
	[LinkName("g_desktop_app_info_get_action_name")]
	public static extern char8* DesktopAppInfoGetActionName(DesktopAppInfo info, char8* action_name);
	[LinkName("g_desktop_app_info_get_boolean")]
	public static extern c_int DesktopAppInfoGetBoolean(DesktopAppInfo info, char8* key);
	[LinkName("g_desktop_app_info_get_categories")]
	public static extern char8* DesktopAppInfoGetCategories(DesktopAppInfo info);
	[LinkName("g_desktop_app_info_get_filename")]
	public static extern char8* DesktopAppInfoGetFilename(DesktopAppInfo info);
	[LinkName("g_desktop_app_info_get_generic_name")]
	public static extern char8* DesktopAppInfoGetGenericName(DesktopAppInfo info);
	[LinkName("g_desktop_app_info_get_is_hidden")]
	public static extern c_int DesktopAppInfoGetIsHidden(DesktopAppInfo info);
	[LinkName("g_desktop_app_info_get_keywords")]
	public static extern char8* DesktopAppInfoGetKeywords(DesktopAppInfo info);
	[LinkName("g_desktop_app_info_get_locale_string")]
	public static extern char8* DesktopAppInfoGetLocaleString(DesktopAppInfo info, char8* key);
	[LinkName("g_desktop_app_info_get_nodisplay")]
	public static extern c_int DesktopAppInfoGetNodisplay(DesktopAppInfo info);
	[LinkName("g_desktop_app_info_get_show_in")]
	public static extern c_int DesktopAppInfoGetShowIn(DesktopAppInfo info, char8* desktop_env);
	[LinkName("g_desktop_app_info_get_startup_wm_class")]
	public static extern char8* DesktopAppInfoGetStartupWmClass(DesktopAppInfo info);
	[LinkName("g_desktop_app_info_get_string")]
	public static extern char8* DesktopAppInfoGetString(DesktopAppInfo info, char8* key);
	[LinkName("g_desktop_app_info_get_string_list")]
	public static extern char8* DesktopAppInfoGetStrinlist(DesktopAppInfo info, char8* key, c_ulong length);
	[LinkName("g_desktop_app_info_has_key")]
	public static extern c_int DesktopAppInfoHasKey(DesktopAppInfo info, char8* key);
	[LinkName("g_desktop_app_info_launch_action")]
	public static extern void DesktopAppInfoLaunchAction(DesktopAppInfo info, char8* action_name, AppLaunchContext launch_context);
	[LinkName("g_desktop_app_info_launch_uris_as_manager")]
	public static extern c_int DesktopAppInfoLaunchUrisAsManager(DesktopAppInfo appinfo, GLib.List uris, AppLaunchContext launch_context, GLib.SpawnFlags spawn_flags, GLib.SpawnChildSetupFunc user_setup, void* user_setup_data, DesktopAppLaunchCallback pid_callback, void* pid_callback_data);
	[LinkName("g_desktop_app_info_launch_uris_as_manager_with_fds")]
	public static extern c_int DesktopAppInfoLaunchUrisAsManagerWithFds(DesktopAppInfo appinfo, GLib.List uris, AppLaunchContext launch_context, GLib.SpawnFlags spawn_flags, GLib.SpawnChildSetupFunc user_setup, void* user_setup_data, DesktopAppLaunchCallback pid_callback, void* pid_callback_data, c_int stdin_fd, c_int stdout_fd, c_int stderr_fd);
	[LinkName("g_desktop_app_info_list_actions")]
	public static extern char8* DesktopAppInfoListActions(DesktopAppInfo info);
	[CRepr]
	public struct DesktopAppInfoClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct DesktopAppInfoLookup
	{
		public function AppInfo(DesktopAppInfoLookup lookup, char8* uri_scheme) get_default_for_uri_scheme;
	}
	[CRepr]
	public struct DesktopAppInfoLookupIface
	{
		GObject.TypeInterface g_iface;
	}
	public function void DesktopAppLaunchCallback(DesktopAppInfo appinfo, GLib.Pid pid, void* user_data);
	[CRepr]
	public struct Drive
	{
		public function c_int(Drive drive) can_eject;

		public function c_int(Drive drive) can_poll_for_media;

		public function c_int(Drive drive) can_start;

		public function c_int(Drive drive) can_start_degraded;

		public function c_int(Drive drive) can_stop;

		public function void(Drive drive) changed;

		public function void(Drive drive) disconnected;

		public function void(Drive drive, MountUnmountFlags flags, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) eject;

		public function void(Drive drive) eject_button;

		public function c_int(Drive drive, AsyncResult result) eject_finish;

		public function void(Drive drive, MountUnmountFlags flags, MountOperation mount_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) eject_with_operation;

		public function c_int(Drive drive, AsyncResult result) eject_with_operation_finish;

		public function c_int(Drive drive) enumerate_identifiers;

		public function Icon(Drive drive) get_icon;

		public function char8*(Drive drive, char8* kind) get_identifier;

		public function char8*(Drive drive) get_name;

		public function char8*(Drive drive) get_sort_key;

		public function DriveStartStopType(Drive drive) get_start_stop_type;

		public function Icon(Drive drive) get_symbolic_icon;

		public function GLib.List(Drive drive) get_volumes;

		public function c_int(Drive drive) has_media;

		public function c_int(Drive drive) has_volumes;

		public function c_int(Drive drive) is_media_check_automatic;

		public function c_int(Drive drive) is_media_removable;

		public function c_int(Drive drive) is_removable;

		public function void(Drive drive, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) poll_for_media;

		public function c_int(Drive drive, AsyncResult result) poll_for_media_finish;

		public function void(Drive drive, DriveStartFlags flags, MountOperation mount_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) start;

		public function c_int(Drive drive, AsyncResult result) start_finish;

		public function void(Drive drive, MountUnmountFlags flags, MountOperation mount_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) stop;

		public function void(Drive drive) stop_button;

		public function c_int(Drive drive, AsyncResult result) stop_finish;
	}
	[CRepr]
	public struct DriveIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct DriveStartFlags
	{
		public const int G_DRIVE_START_NONE = 0;
	}
	public enum DriveStartStopType : c_int
	{
		G_DRIVE_START_STOP_TYPE_UNKNOWN,
		G_DRIVE_START_STOP_TYPE_SHUTDOWN,
		G_DRIVE_START_STOP_TYPE_NETWORK,
		G_DRIVE_START_STOP_TYPE_MULTIDISK,
		G_DRIVE_START_STOP_TYPE_PASSWORD
	}
	[CRepr]
	public struct DtlsClientConnection
	{	}
	[CRepr]
	public struct DtlsClientConnectionInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct DtlsConnection
	{
		public function c_int(DtlsConnection connection, TlsCertificate peer_cert, TlsCertificateFlags errors) accept_certificate;

		public function c_int(DtlsConnection conn, TlsChannelBindingType type) get_binding_data;

		public function char8*(DtlsConnection conn) get_negotiated_protocol;

		public function c_int(DtlsConnection conn, Cancellable cancellable) handshake;

		public function void(DtlsConnection conn, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) handshake_async;

		public function c_int(DtlsConnection conn, AsyncResult result) handshake_finish;

		public function void(DtlsConnection conn) set_advertised_protocols;

		public function c_int(DtlsConnection conn, c_int shutdown_read, c_int shutdown_write, Cancellable cancellable) shutdown;

		public function void(DtlsConnection conn, c_int shutdown_read, c_int shutdown_write, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) shutdown_async;

		public function c_int(DtlsConnection conn, AsyncResult result) shutdown_finish;
	}
	[CRepr]
	public struct DtlsConnectionInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct DtlsServerConnection
	{	}
	[CRepr]
	public struct DtlsServerConnectionInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct Emblem;
	[LinkName("g_emblem_new")]
	public static extern Emblem EmblemNew(Icon icon);
	[LinkName("g_emblem_new_with_origin")]
	public static extern Emblem EmblemNewWithOrigin(Icon icon, EmblemOrigin origin);
	[LinkName("g_emblem_get_icon")]
	public static extern Icon EmblemGetIcon(Emblem emblem);
	[LinkName("g_emblem_get_origin")]
	public static extern EmblemOrigin EmblemGetOrigin(Emblem emblem);
	[CRepr]
	public struct EmblemClass
	{
	}
	public enum EmblemOrigin : c_int
	{
		G_EMBLEM_ORIGIN_UNKNOWN,
		G_EMBLEM_ORIGIN_DEVICE,
		G_EMBLEM_ORIGIN_LIVEMETADATA,
		G_EMBLEM_ORIGIN_TAG
	}
	[CRepr]
	public struct EmblemedIcon;
	[LinkName("g_emblemed_icon_new")]
	public static extern EmblemedIcon EmblemedIconNew(Icon icon, Emblem emblem);
	[LinkName("g_emblemed_icon_add_emblem")]
	public static extern void EmblemedIconAddEmblem(EmblemedIcon emblemed, Emblem emblem);
	[LinkName("g_emblemed_icon_clear_emblems")]
	public static extern void EmblemedIconClearEmblems(EmblemedIcon emblemed);
	[LinkName("g_emblemed_icon_get_emblems")]
	public static extern GLib.List EmblemedIconGetEmblems(EmblemedIcon emblemed);
	[LinkName("g_emblemed_icon_get_icon")]
	public static extern Icon EmblemedIconGetIcon(EmblemedIcon emblemed);
	[CRepr]
	public struct EmblemedIconClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct EmblemedIconPrivate
	{
	}
	[CRepr]
	public struct File
	{
		public function FileOutputStream(File file, FileCreateFlags flags, Cancellable cancellable) append_to;

		public function void(File file, FileCreateFlags flags, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) append_to_async;

		public function FileOutputStream(File file, AsyncResult res) append_to_finish;

		public function c_int(File source, File destination, FileCopyFlags flags, Cancellable cancellable, FileProgressCallback progress_callback, void* progress_callback_data) copy;

		public function void(File source, File destination, FileCopyFlags flags, c_int io_priority, Cancellable cancellable, FileProgressCallback progress_callback, void* progress_callback_data, AsyncReadyCallback callback, void* user_data) copy_async;

		public function c_int(File file, AsyncResult res) copy_finish;

		public function FileOutputStream(File file, FileCreateFlags flags, Cancellable cancellable) create;

		public function void(File file, FileCreateFlags flags, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) create_async;

		public function FileOutputStream(File file, AsyncResult res) create_finish;

		public function FileIOStream(File file, FileCreateFlags flags, Cancellable cancellable) create_readwrite;

		public function void(File file, FileCreateFlags flags, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) create_readwrite_async;

		public function FileIOStream(File file, AsyncResult res) create_readwrite_finish;

		public function c_int(File file, Cancellable cancellable) delete_file;

		public function void(File file, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) delete_file_async;

		public function c_int(File file, AsyncResult result) delete_file_finish;

		public function File(File file) dup;

		public function void(File file, MountUnmountFlags flags, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) eject_mountable;

		public function c_int(File file, AsyncResult result) eject_mountable_finish;

		public function void(File file, MountUnmountFlags flags, MountOperation mount_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) eject_mountable_with_operation;

		public function c_int(File file, AsyncResult result) eject_mountable_with_operation_finish;

		public function FileEnumerator(File file, char8* attributes, FileQueryInfoFlags flags, Cancellable cancellable) enumerate_children;

		public function void(File file, char8* attributes, FileQueryInfoFlags flags, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) enumerate_children_async;

		public function FileEnumerator(File file, AsyncResult res) enumerate_children_finish;

		public function c_int(File file1, File file2) equal;

		public function Mount(File file, Cancellable cancellable) find_enclosing_mount;

		public function void(File file, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) find_enclosing_mount_async;

		public function Mount(File file, AsyncResult res) find_enclosing_mount_finish;

		public function char8*(File file) get_basename;

		public function File(File file, char8* display_name) get_child_for_display_name;

		public function File(File file) get_parent;

		public function char8*(File file) get_parse_name;

		public function char8*(File file) get_path;

		public function char8*(File parent, File descendant) get_relative_path;

		public function char8*(File file) get_uri;

		public function char8*(File file) get_uri_scheme;

		public function c_int(File file, char8* uri_scheme) has_uri_scheme;

		public function c_uint(File file) hash;

		public function c_int(File file) is_native;

		public function c_int(File file, Cancellable cancellable) make_directory;

		public function void(File file, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) make_directory_async;

		public function c_int(File file, AsyncResult result) make_directory_finish;

		public function c_int(File file, char8* symlink_value, Cancellable cancellable) make_symbolic_link;

		public function void(File file, char8* symlink_value, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) make_symbolic_link_async;

		public function c_int(File file, AsyncResult result) make_symbolic_link_finish;

		public function c_int(File file, FileMeasureFlags flags, Cancellable cancellable, FileMeasureProgressCallback progress_callback, void* progress_data, c_ulonglong disk_usage, c_ulonglong num_dirs, c_ulonglong num_files) measure_disk_usage;

		public function void(File file, FileMeasureFlags flags, c_int io_priority, Cancellable cancellable, FileMeasureProgressCallback progress_callback, void* progress_data, AsyncReadyCallback callback, void* user_data) measure_disk_usage_async;

		public function c_int(File file, AsyncResult result, c_ulonglong disk_usage, c_ulonglong num_dirs, c_ulonglong num_files) measure_disk_usage_finish;

		public function FileMonitor(File file, FileMonitorFlags flags, Cancellable cancellable) monitor_dir;

		public function FileMonitor(File file, FileMonitorFlags flags, Cancellable cancellable) monitor_file;

		public function void(File location, MountMountFlags flags, MountOperation mount_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) mount_enclosing_volume;

		public function c_int(File location, AsyncResult result) mount_enclosing_volume_finish;

		public function void(File file, MountMountFlags flags, MountOperation mount_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) mount_mountable;

		public function File(File file, AsyncResult result) mount_mountable_finish;

		public function c_int(File source, File destination, FileCopyFlags flags, Cancellable cancellable, FileProgressCallback progress_callback, void* progress_callback_data) move;

		public function void(File source, File destination, FileCopyFlags flags, c_int io_priority, Cancellable cancellable, FileProgressCallback progress_callback, void* progress_callback_data, AsyncReadyCallback callback, void* user_data) move_async;

		public function c_int(File file, AsyncResult result) move_finish;

		public function FileIOStream(File file, Cancellable cancellable) open_readwrite;

		public function void(File file, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) open_readwrite_async;

		public function FileIOStream(File file, AsyncResult res) open_readwrite_finish;

		public function void(File file, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) poll_mountable;

		public function c_int(File file, AsyncResult result) poll_mountable_finish;

		public function c_int(File prefix, File file) prefix_matches;

		public function FileInfo(File file, char8* attributes, Cancellable cancellable) query_filesystem_info;

		public function void(File file, char8* attributes, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) query_filesystem_info_async;

		public function FileInfo(File file, AsyncResult res) query_filesystem_info_finish;

		public function FileInfo(File file, char8* attributes, FileQueryInfoFlags flags, Cancellable cancellable) query_info;

		public function void(File file, char8* attributes, FileQueryInfoFlags flags, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) query_info_async;

		public function FileInfo(File file, AsyncResult res) query_info_finish;

		public function FileAttributeInfoList(File file, Cancellable cancellable) query_settable_attributes;

		public function FileAttributeInfoList(File file, Cancellable cancellable) query_writable_namespaces;

		public function void(File file, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) read_async;

		public function FileInputStream(File file, AsyncResult res) read_finish;

		public function FileInputStream(File file, Cancellable cancellable) read_fn;

		public function FileOutputStream(File file, char8* etag, c_int make_backup, FileCreateFlags flags, Cancellable cancellable) replace;

		public function void(File file, char8* etag, c_int make_backup, FileCreateFlags flags, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) replace_async;

		public function FileOutputStream(File file, AsyncResult res) replace_finish;

		public function FileIOStream(File file, char8* etag, c_int make_backup, FileCreateFlags flags, Cancellable cancellable) replace_readwrite;

		public function void(File file, char8* etag, c_int make_backup, FileCreateFlags flags, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) replace_readwrite_async;

		public function FileIOStream(File file, AsyncResult res) replace_readwrite_finish;

		public function File(File file, char8* relative_path) resolve_relative_path;

		public function c_int(File file, char8* attribute, FileAttributeType type, void* value_p, FileQueryInfoFlags flags, Cancellable cancellable) set_attribute;

		public function void(File file, FileInfo info, FileQueryInfoFlags flags, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) set_attributes_async;

		public function c_int(File file, AsyncResult result, FileInfo info) set_attributes_finish;

		public function c_int(File file, FileInfo info, FileQueryInfoFlags flags, Cancellable cancellable) set_attributes_from_info;

		public function File(File file, char8* display_name, Cancellable cancellable) set_display_name;

		public function void(File file, char8* display_name, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) set_display_name_async;

		public function File(File file, AsyncResult res) set_display_name_finish;

		public function void(File file, DriveStartFlags flags, MountOperation start_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) start_mountable;

		public function c_int(File file, AsyncResult result) start_mountable_finish;

		public function void(File file, MountUnmountFlags flags, MountOperation mount_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) stop_mountable;

		public function c_int(File file, AsyncResult result) stop_mountable_finish;

		public function c_int(File file, Cancellable cancellable) trash;

		public function void(File file, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) trash_async;

		public function c_int(File file, AsyncResult result) trash_finish;

		public function void(File file, MountUnmountFlags flags, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) unmount_mountable;

		public function c_int(File file, AsyncResult result) unmount_mountable_finish;

		public function void(File file, MountUnmountFlags flags, MountOperation mount_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) unmount_mountable_with_operation;

		public function c_int(File file, AsyncResult result) unmount_mountable_with_operation_finish;
	}
	[CRepr]
	public struct FileAttributeInfo
	{
		char8* name;
		FileAttributeType type;
		FileAttributeInfoFlags flags;
	}
	[CRepr]
	public struct FileAttributeInfoFlags
	{
		public const int G_FILE_ATTRIBUTE_INFO_NONE = 0;
		public const int G_FILE_ATTRIBUTE_INFO_COPY_WITH_FILE = 1;
		public const int G_FILE_ATTRIBUTE_INFO_COPY_WHEN_MOVED = 2;
	}
	[CRepr]
	public struct FileAttributeInfoList
	{
		FileAttributeInfo infos;
		c_int n_infos;
	}
	[CRepr]
	public struct FileAttributeMatcher
	{
	}
	public enum FileAttributeStatus : c_int
	{
		G_FILE_ATTRIBUTE_STATUS_UNSET,
		G_FILE_ATTRIBUTE_STATUS_SET,
		G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING
	}
	public enum FileAttributeType : c_int
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
	public struct FileCopyFlags
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
	public struct FileCreateFlags
	{
		public const int G_FILE_CREATE_NONE = 0;
		public const int G_FILE_CREATE_PRIVATE = 1;
		public const int G_FILE_CREATE_REPLACE_DESTINATION = 2;
	}
	[CRepr]
	public struct FileDescriptorBased
	{
		public function c_int(FileDescriptorBased fd_based) get_fd;
	}
	[CRepr]
	public struct FileDescriptorBasedIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct FileEnumerator;
	[LinkName("g_file_enumerator_close")]
	public static extern c_int FileEnumeratorClose(FileEnumerator enumerator, Cancellable cancellable);
	[LinkName("g_file_enumerator_close_async")]
	public static extern void FileEnumeratorCloseAsync(FileEnumerator enumerator, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_enumerator_close_finish")]
	public static extern c_int FileEnumeratorCloseFinish(FileEnumerator enumerator, AsyncResult result);
	[LinkName("g_file_enumerator_get_child")]
	public static extern File FileEnumeratorGetChild(FileEnumerator enumerator, FileInfo info);
	[LinkName("g_file_enumerator_get_container")]
	public static extern File FileEnumeratorGetContainer(FileEnumerator enumerator);
	[LinkName("g_file_enumerator_has_pending")]
	public static extern c_int FileEnumeratorHasPending(FileEnumerator enumerator);
	[LinkName("g_file_enumerator_is_closed")]
	public static extern c_int FileEnumeratorIsClosed(FileEnumerator enumerator);
	[LinkName("g_file_enumerator_iterate")]
	public static extern c_int FileEnumeratorIterate(FileEnumerator direnum, FileInfo out_info, File out_child, Cancellable cancellable);
	[LinkName("g_file_enumerator_next_file")]
	public static extern FileInfo FileEnumeratorNextFile(FileEnumerator enumerator, Cancellable cancellable);
	[LinkName("g_file_enumerator_next_files_async")]
	public static extern void FileEnumeratorNextFilesAsync(FileEnumerator enumerator, c_int num_files, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_enumerator_next_files_finish")]
	public static extern GLib.List FileEnumeratorNextFilesFinish(FileEnumerator enumerator, AsyncResult result);
	[LinkName("g_file_enumerator_set_pending")]
	public static extern void FileEnumeratorSetPending(FileEnumerator enumerator, c_int pending);
	[CRepr]
	public struct FileEnumeratorClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FileEnumeratorPrivate
	{
	}
	[CRepr]
	public struct FileIOStream;
	[LinkName("g_file_io_stream_get_etag")]
	public static extern char8* FileIoStreamGetEtag(FileIOStream stream);
	[LinkName("g_file_io_stream_query_info")]
	public static extern FileInfo FileIoStreamQueryInfo(FileIOStream stream, char8* attributes, Cancellable cancellable);
	[LinkName("g_file_io_stream_query_info_async")]
	public static extern void FileIoStreamQueryInfoAsync(FileIOStream stream, char8* attributes, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_io_stream_query_info_finish")]
	public static extern FileInfo FileIoStreamQueryInfoFinish(FileIOStream stream, AsyncResult result);
	[CRepr]
	public struct FileIOStreamClass
	{
		IOStreamClass parent_class;
	}
	[CRepr]
	public struct FileIOStreamPrivate
	{
	}
	[CRepr]
	public struct FileIcon;
	[LinkName("g_file_icon_new")]
	public static extern FileIcon FileIconNew(File file);
	[LinkName("g_file_icon_get_file")]
	public static extern File FileIconGetFile(FileIcon icon);
	[CRepr]
	public struct FileIconClass
	{
	}
	[CRepr]
	public struct FileIface
	{
		GObject.TypeInterface g_iface;
		c_int supports_thread_contexts;
	}
	[CRepr]
	public struct FileInfo;
	[LinkName("g_file_info_new")]
	public static extern FileInfo FileInfoNew();
	[LinkName("g_file_info_clear_status")]
	public static extern void FileInfoClearStatus(FileInfo info);
	[LinkName("g_file_info_copy_into")]
	public static extern void FileInfoCopyInto(FileInfo src_info, FileInfo dest_info);
	[LinkName("g_file_info_dup")]
	public static extern FileInfo FileInfoDup(FileInfo other);
	[LinkName("g_file_info_get_access_date_time")]
	public static extern GLib.DateTime FileInfoGetAccessDateTime(FileInfo info);
	[LinkName("g_file_info_get_attribute_as_string")]
	public static extern char8* FileInfoGetAttributeAsString(FileInfo info, char8* attribute);
	[LinkName("g_file_info_get_attribute_boolean")]
	public static extern c_int FileInfoGetAttributeBoolean(FileInfo info, char8* attribute);
	[LinkName("g_file_info_get_attribute_byte_string")]
	public static extern char8* FileInfoGetAttributeByteString(FileInfo info, char8* attribute);
	[LinkName("g_file_info_get_attribute_data")]
	public static extern c_int FileInfoGetAttributeData(FileInfo info, char8* attribute, FileAttributeType type, void* value_pp, FileAttributeStatus status);
	[LinkName("g_file_info_get_attribute_int32")]
	public static extern c_int FileInfoGetAttributeInt32(FileInfo info, char8* attribute);
	[LinkName("g_file_info_get_attribute_int64")]
	public static extern c_longlong FileInfoGetAttributeInt64(FileInfo info, char8* attribute);
	[LinkName("g_file_info_get_attribute_object")]
	public static extern GObject.Object FileInfoGetAttributeObject(FileInfo info, char8* attribute);
	[LinkName("g_file_info_get_attribute_status")]
	public static extern FileAttributeStatus FileInfoGetAttributeStatus(FileInfo info, char8* attribute);
	[LinkName("g_file_info_get_attribute_string")]
	public static extern char8* FileInfoGetAttributeString(FileInfo info, char8* attribute);
	[LinkName("g_file_info_get_attribute_stringv")]
	public static extern char8* FileInfoGetAttributeStringv(FileInfo info, char8* attribute);
	[LinkName("g_file_info_get_attribute_type")]
	public static extern FileAttributeType FileInfoGetAttributeType(FileInfo info, char8* attribute);
	[LinkName("g_file_info_get_attribute_uint32")]
	public static extern c_uint FileInfoGetAttributeUint32(FileInfo info, char8* attribute);
	[LinkName("g_file_info_get_attribute_uint64")]
	public static extern c_ulonglong FileInfoGetAttributeUint64(FileInfo info, char8* attribute);
	[LinkName("g_file_info_get_content_type")]
	public static extern char8* FileInfoGetContentType(FileInfo info);
	[LinkName("g_file_info_get_creation_date_time")]
	public static extern GLib.DateTime FileInfoGetCreationDateTime(FileInfo info);
	[LinkName("g_file_info_get_deletion_date")]
	public static extern GLib.DateTime FileInfoGetDeletionDate(FileInfo info);
	[LinkName("g_file_info_get_display_name")]
	public static extern char8* FileInfoGetDisplayName(FileInfo info);
	[LinkName("g_file_info_get_edit_name")]
	public static extern char8* FileInfoGetEditName(FileInfo info);
	[LinkName("g_file_info_get_etag")]
	public static extern char8* FileInfoGetEtag(FileInfo info);
	[LinkName("g_file_info_get_file_type")]
	public static extern FileType FileInfoGetFileType(FileInfo info);
	[LinkName("g_file_info_get_icon")]
	public static extern Icon FileInfoGetIcon(FileInfo info);
	[LinkName("g_file_info_get_is_backup")]
	public static extern c_int FileInfoGetIsBackup(FileInfo info);
	[LinkName("g_file_info_get_is_hidden")]
	public static extern c_int FileInfoGetIsHidden(FileInfo info);
	[LinkName("g_file_info_get_is_symlink")]
	public static extern c_int FileInfoGetIsSymlink(FileInfo info);
	[LinkName("g_file_info_get_modification_date_time")]
	public static extern GLib.DateTime FileInfoGetModificationDateTime(FileInfo info);
	[LinkName("g_file_info_get_modification_time")]
	public static extern void FileInfoGetModificationTime(FileInfo info, GLib.TimeVal result);
	[LinkName("g_file_info_get_name")]
	public static extern char8* FileInfoGetName(FileInfo info);
	[LinkName("g_file_info_get_size")]
	public static extern c_longlong FileInfoGetSize(FileInfo info);
	[LinkName("g_file_info_get_sort_order")]
	public static extern c_int FileInfoGetSortOrder(FileInfo info);
	[LinkName("g_file_info_get_symbolic_icon")]
	public static extern Icon FileInfoGetSymbolicIcon(FileInfo info);
	[LinkName("g_file_info_get_symlink_target")]
	public static extern char8* FileInfoGetSymlinkTarget(FileInfo info);
	[LinkName("g_file_info_has_attribute")]
	public static extern c_int FileInfoHasAttribute(FileInfo info, char8* attribute);
	[LinkName("g_file_info_has_namespace")]
	public static extern c_int FileInfoHasNamespace(FileInfo info, char8* name_space);
	[LinkName("g_file_info_list_attributes")]
	public static extern char8* FileInfoListAttributes(FileInfo info, char8* name_space);
	[LinkName("g_file_info_remove_attribute")]
	public static extern void FileInfoRemoveAttribute(FileInfo info, char8* attribute);
	[LinkName("g_file_info_set_access_date_time")]
	public static extern void FileInfoSetAccessDateTime(FileInfo info, GLib.DateTime atime);
	[LinkName("g_file_info_set_attribute")]
	public static extern void FileInfoSetAttribute(FileInfo info, char8* attribute, FileAttributeType type, void* value_p);
	[LinkName("g_file_info_set_attribute_boolean")]
	public static extern void FileInfoSetAttributeBoolean(FileInfo info, char8* attribute, c_int attr_value);
	[LinkName("g_file_info_set_attribute_byte_string")]
	public static extern void FileInfoSetAttributeByteString(FileInfo info, char8* attribute, char8* attr_value);
	[LinkName("g_file_info_set_attribute_int32")]
	public static extern void FileInfoSetAttributeInt32(FileInfo info, char8* attribute, c_int attr_value);
	[LinkName("g_file_info_set_attribute_int64")]
	public static extern void FileInfoSetAttributeInt64(FileInfo info, char8* attribute, c_longlong attr_value);
	[LinkName("g_file_info_set_attribute_mask")]
	public static extern void FileInfoSetAttributeMask(FileInfo info, FileAttributeMatcher mask);
	[LinkName("g_file_info_set_attribute_object")]
	public static extern void FileInfoSetAttributeObject(FileInfo info, char8* attribute, GObject.Object attr_value);
	[LinkName("g_file_info_set_attribute_status")]
	public static extern c_int FileInfoSetAttributeStatus(FileInfo info, char8* attribute, FileAttributeStatus status);
	[LinkName("g_file_info_set_attribute_string")]
	public static extern void FileInfoSetAttributeString(FileInfo info, char8* attribute, char8* attr_value);
	[LinkName("g_file_info_set_attribute_stringv")]
	public static extern void FileInfoSetAttributeStringv(FileInfo info, char8* attribute);
	[LinkName("g_file_info_set_attribute_uint32")]
	public static extern void FileInfoSetAttributeUint32(FileInfo info, char8* attribute, c_uint attr_value);
	[LinkName("g_file_info_set_attribute_uint64")]
	public static extern void FileInfoSetAttributeUint64(FileInfo info, char8* attribute, c_ulonglong attr_value);
	[LinkName("g_file_info_set_content_type")]
	public static extern void FileInfoSetContentType(FileInfo info, char8* content_type);
	[LinkName("g_file_info_set_creation_date_time")]
	public static extern void FileInfoSetCreationDateTime(FileInfo info, GLib.DateTime creation_time);
	[LinkName("g_file_info_set_display_name")]
	public static extern void FileInfoSetDisplayName(FileInfo info, char8* display_name);
	[LinkName("g_file_info_set_edit_name")]
	public static extern void FileInfoSetEditName(FileInfo info, char8* edit_name);
	[LinkName("g_file_info_set_file_type")]
	public static extern void FileInfoSetFileType(FileInfo info, FileType type);
	[LinkName("g_file_info_set_icon")]
	public static extern void FileInfoSetIcon(FileInfo info, Icon icon);
	[LinkName("g_file_info_set_is_hidden")]
	public static extern void FileInfoSetIsHidden(FileInfo info, c_int is_hidden);
	[LinkName("g_file_info_set_is_symlink")]
	public static extern void FileInfoSetIsSymlink(FileInfo info, c_int is_symlink);
	[LinkName("g_file_info_set_modification_date_time")]
	public static extern void FileInfoSetModificationDateTime(FileInfo info, GLib.DateTime mtime);
	[LinkName("g_file_info_set_modification_time")]
	public static extern void FileInfoSetModificationTime(FileInfo info, GLib.TimeVal mtime);
	[LinkName("g_file_info_set_name")]
	public static extern void FileInfoSetName(FileInfo info, char8* name);
	[LinkName("g_file_info_set_size")]
	public static extern void FileInfoSetSize(FileInfo info, c_longlong size);
	[LinkName("g_file_info_set_sort_order")]
	public static extern void FileInfoSetSortOrder(FileInfo info, c_int sort_order);
	[LinkName("g_file_info_set_symbolic_icon")]
	public static extern void FileInfoSetSymbolicIcon(FileInfo info, Icon icon);
	[LinkName("g_file_info_set_symlink_target")]
	public static extern void FileInfoSetSymlinkTarget(FileInfo info, char8* symlink_target);
	[LinkName("g_file_info_unset_attribute_mask")]
	public static extern void FileInfoUnsetAttributeMask(FileInfo info);
	[CRepr]
	public struct FileInfoClass
	{
	}
	[CRepr]
	public struct FileInputStream;
	[LinkName("g_file_input_stream_query_info")]
	public static extern FileInfo FileInputStreamQueryInfo(FileInputStream stream, char8* attributes, Cancellable cancellable);
	[LinkName("g_file_input_stream_query_info_async")]
	public static extern void FileInputStreamQueryInfoAsync(FileInputStream stream, char8* attributes, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_input_stream_query_info_finish")]
	public static extern FileInfo FileInputStreamQueryInfoFinish(FileInputStream stream, AsyncResult result);
	[CRepr]
	public struct FileInputStreamClass
	{
		InputStreamClass parent_class;
	}
	[CRepr]
	public struct FileInputStreamPrivate
	{
	}
	[CRepr]
	public struct FileMeasureFlags
	{
		public const int G_FILE_MEASURE_NONE = 0;
		public const int G_FILE_MEASURE_REPORT_ANY_ERROR = 2;
		public const int G_FILE_MEASURE_APPARENT_SIZE = 4;
		public const int G_FILE_MEASURE_NO_XDEV = 8;
	}
	public function void FileMeasureProgressCallback(c_int reporting, c_ulonglong current_size, c_ulonglong num_dirs, c_ulonglong num_files, void* data);
	[CRepr]
	public struct FileMonitor;
	[LinkName("g_file_monitor_cancel")]
	public static extern c_int FileMonitorCancel(FileMonitor monitor);
	[LinkName("g_file_monitor_emit_event")]
	public static extern void FileMonitorEmitEvent(FileMonitor monitor, File child, File other_file, FileMonitorEvent event_type);
	[LinkName("g_file_monitor_is_cancelled")]
	public static extern c_int FileMonitorIsCancelled(FileMonitor monitor);
	[LinkName("g_file_monitor_set_rate_limit")]
	public static extern void FileMonitorSetRateLimit(FileMonitor monitor, c_int limit_msecs);
	[CRepr]
	public struct FileMonitorClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum FileMonitorEvent : c_int
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
	public struct FileMonitorFlags
	{
		public const int G_FILE_MONITOR_NONE = 0;
		public const int G_FILE_MONITOR_WATCH_MOUNTS = 1;
		public const int G_FILE_MONITOR_SEND_MOVED = 2;
		public const int G_FILE_MONITOR_WATCH_HARD_LINKS = 4;
		public const int G_FILE_MONITOR_WATCH_MOVES = 8;
	}
	[CRepr]
	public struct FileMonitorPrivate
	{
	}
	[CRepr]
	public struct FileOutputStream;
	[LinkName("g_file_output_stream_get_etag")]
	public static extern char8* FileOutputStreamGetEtag(FileOutputStream stream);
	[LinkName("g_file_output_stream_query_info")]
	public static extern FileInfo FileOutputStreamQueryInfo(FileOutputStream stream, char8* attributes, Cancellable cancellable);
	[LinkName("g_file_output_stream_query_info_async")]
	public static extern void FileOutputStreamQueryInfoAsync(FileOutputStream stream, char8* attributes, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_output_stream_query_info_finish")]
	public static extern FileInfo FileOutputStreamQueryInfoFinish(FileOutputStream stream, AsyncResult result);
	[CRepr]
	public struct FileOutputStreamClass
	{
		OutputStreamClass parent_class;
	}
	[CRepr]
	public struct FileOutputStreamPrivate
	{
	}
	public function void FileProgressCallback(c_longlong current_num_bytes, c_longlong total_num_bytes, void* data);
	[CRepr]
	public struct FileQueryInfoFlags
	{
		public const int G_FILE_QUERY_INFO_NONE = 0;
		public const int G_FILE_QUERY_INFO_NOFOLLOW_SYMLINKS = 1;
	}
	public function c_int FileReadMoreCallback(char8* file_contents, c_longlong file_size, void* callback_data);
	public enum FileType : c_int
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
	public struct FilenameCompleter;
	[LinkName("g_filename_completer_new")]
	public static extern FilenameCompleter FilenameCompleterNew();
	[LinkName("g_filename_completer_get_completion_suffix")]
	public static extern char8* FilenameCompleterGetCompletionSuffix(FilenameCompleter completer, char8* initial_text);
	[LinkName("g_filename_completer_get_completions")]
	public static extern char8* FilenameCompleterGetCompletions(FilenameCompleter completer, char8* initial_text);
	[LinkName("g_filename_completer_set_dirs_only")]
	public static extern void FilenameCompleterSetDirsOnly(FilenameCompleter completer, c_int dirs_only);
	[CRepr]
	public struct FilenameCompleterClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum FilesystemPreviewType : c_int
	{
		G_FILESYSTEM_PREVIEW_TYPE_IF_ALWAYS,
		G_FILESYSTEM_PREVIEW_TYPE_IF_LOCAL,
		G_FILESYSTEM_PREVIEW_TYPE_NEVER
	}
	[CRepr]
	public struct FilterInputStream;
	[LinkName("g_filter_input_stream_get_base_stream")]
	public static extern InputStream FilterInputStreamGetBaseStream(FilterInputStream stream);
	[LinkName("g_filter_input_stream_get_close_base_stream")]
	public static extern c_int FilterInputStreamGetCloseBaseStream(FilterInputStream stream);
	[LinkName("g_filter_input_stream_set_close_base_stream")]
	public static extern void FilterInputStreamSetCloseBaseStream(FilterInputStream stream, c_int close_base);
	[CRepr]
	public struct FilterInputStreamClass
	{
		InputStreamClass parent_class;
	}
	[CRepr]
	public struct FilterOutputStream;
	[LinkName("g_filter_output_stream_get_base_stream")]
	public static extern OutputStream FilterOutputStreamGetBaseStream(FilterOutputStream stream);
	[LinkName("g_filter_output_stream_get_close_base_stream")]
	public static extern c_int FilterOutputStreamGetCloseBaseStream(FilterOutputStream stream);
	[LinkName("g_filter_output_stream_set_close_base_stream")]
	public static extern void FilterOutputStreamSetCloseBaseStream(FilterOutputStream stream, c_int close_base);
	[CRepr]
	public struct FilterOutputStreamClass
	{
		OutputStreamClass parent_class;
	}
	public enum IOErrorEnum : c_int
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
	public struct IOExtension
	{
	}
	[CRepr]
	public struct IOExtensionPoint
	{
	}
	[CRepr]
	public struct IOModule;
	[LinkName("g_io_module_new")]
	public static extern IOModule IoModuleNew(char8* filename);
	[LinkName("g_io_module_load")]
	public static extern void IoModuleLoad(IOModule module);
	[LinkName("g_io_module_unload")]
	public static extern void IoModuleUnload(IOModule module);
	[CRepr]
	public struct IOModuleClass
	{
	}
	[CRepr]
	public struct IOModuleScope
	{
	}
	public enum IOModuleScopeFlags : c_int
	{
		G_IO_MODULE_SCOPE_NONE,
		G_IO_MODULE_SCOPE_BLOCK_DUPLICATES
	}
	[CRepr]
	public struct IOSchedulerJob
	{
	}
	public function c_int IOSchedulerJobFunc(IOSchedulerJob job, Cancellable cancellable, void* data);
	[CRepr]
	public struct IOStream;
	[LinkName("g_io_stream_clear_pending")]
	public static extern void IoStreamClearPending(IOStream stream);
	[LinkName("g_io_stream_close")]
	public static extern c_int IoStreamClose(IOStream stream, Cancellable cancellable);
	[LinkName("g_io_stream_close_async")]
	public static extern void IoStreamCloseAsync(IOStream stream, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_io_stream_close_finish")]
	public static extern c_int IoStreamCloseFinish(IOStream stream, AsyncResult result);
	[LinkName("g_io_stream_get_input_stream")]
	public static extern InputStream IoStreamGetInputStream(IOStream stream);
	[LinkName("g_io_stream_get_output_stream")]
	public static extern OutputStream IoStreamGetOutputStream(IOStream stream);
	[LinkName("g_io_stream_has_pending")]
	public static extern c_int IoStreamHasPending(IOStream stream);
	[LinkName("g_io_stream_is_closed")]
	public static extern c_int IoStreamIsClosed(IOStream stream);
	[LinkName("g_io_stream_set_pending")]
	public static extern c_int IoStreamSetPending(IOStream stream);
	[LinkName("g_io_stream_splice_async")]
	public static extern void IoStreamSpliceAsync(IOStream stream1, IOStream stream2, IOStreamSpliceFlags flags, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[CRepr]
	public struct IOStreamAdapter
	{
	}
	[CRepr]
	public struct IOStreamClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct IOStreamPrivate
	{
	}
	[CRepr]
	public struct IOStreamSpliceFlags
	{
		public const int G_IO_STREAM_SPLICE_NONE = 0;
		public const int G_IO_STREAM_SPLICE_CLOSE_STREAM1 = 1;
		public const int G_IO_STREAM_SPLICE_CLOSE_STREAM2 = 2;
		public const int G_IO_STREAM_SPLICE_WAIT_FOR_BOTH = 4;
	}
	[CRepr]
	public struct Icon
	{
		public function c_int(Icon icon1, Icon icon2) equal;

		public function c_uint(Icon icon) hash;

		public function GLib.Variant(Icon icon) serialize;

		public function c_int(Icon icon, c_int out_version) to_tokens;
	}
	[CRepr]
	public struct IconIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct InetAddress;
	[LinkName("g_inet_address_new_any")]
	public static extern InetAddress InetAddressNewAny(SocketFamily family);
	[LinkName("g_inet_address_new_from_bytes")]
	public static extern InetAddress InetAddressNewFromBytes(SocketFamily family);
	[LinkName("g_inet_address_new_from_string")]
	public static extern InetAddress InetAddressNewFromString(char8* string);
	[LinkName("g_inet_address_new_loopback")]
	public static extern InetAddress InetAddressNewLoopback(SocketFamily family);
	[LinkName("g_inet_address_equal")]
	public static extern c_int InetAddressEqual(InetAddress address, InetAddress other_address);
	[LinkName("g_inet_address_get_family")]
	public static extern SocketFamily InetAddressGetFamily(InetAddress address);
	[LinkName("g_inet_address_get_is_any")]
	public static extern c_int InetAddressGetIsAny(InetAddress address);
	[LinkName("g_inet_address_get_is_link_local")]
	public static extern c_int InetAddressGetIsLinkLocal(InetAddress address);
	[LinkName("g_inet_address_get_is_loopback")]
	public static extern c_int InetAddressGetIsLoopback(InetAddress address);
	[LinkName("g_inet_address_get_is_mc_global")]
	public static extern c_int InetAddressGetIsMcGlobal(InetAddress address);
	[LinkName("g_inet_address_get_is_mc_link_local")]
	public static extern c_int InetAddressGetIsMcLinkLocal(InetAddress address);
	[LinkName("g_inet_address_get_is_mc_node_local")]
	public static extern c_int InetAddressGetIsMcNodeLocal(InetAddress address);
	[LinkName("g_inet_address_get_is_mc_org_local")]
	public static extern c_int InetAddressGetIsMcOrlocal(InetAddress address);
	[LinkName("g_inet_address_get_is_mc_site_local")]
	public static extern c_int InetAddressGetIsMcSiteLocal(InetAddress address);
	[LinkName("g_inet_address_get_is_multicast")]
	public static extern c_int InetAddressGetIsMulticast(InetAddress address);
	[LinkName("g_inet_address_get_is_site_local")]
	public static extern c_int InetAddressGetIsSiteLocal(InetAddress address);
	[LinkName("g_inet_address_get_native_size")]
	public static extern c_ulong InetAddressGetNativeSize(InetAddress address);
	[LinkName("g_inet_address_to_bytes")]
	public static extern c_uchar InetAddressToBytes(InetAddress address);
	[LinkName("g_inet_address_to_string")]
	public static extern char8* InetAddressToString(InetAddress address);
	[CRepr]
	public struct InetAddressClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct InetAddressMask;
	[LinkName("g_inet_address_mask_new")]
	public static extern InetAddressMask InetAddressMaskNew(InetAddress addr, c_uint length);
	[LinkName("g_inet_address_mask_new_from_string")]
	public static extern InetAddressMask InetAddressMaskNewFromString(char8* mask_string);
	[LinkName("g_inet_address_mask_equal")]
	public static extern c_int InetAddressMaskEqual(InetAddressMask mask, InetAddressMask mask2);
	[LinkName("g_inet_address_mask_get_address")]
	public static extern InetAddress InetAddressMaskGetAddress(InetAddressMask mask);
	[LinkName("g_inet_address_mask_get_family")]
	public static extern SocketFamily InetAddressMaskGetFamily(InetAddressMask mask);
	[LinkName("g_inet_address_mask_get_length")]
	public static extern c_uint InetAddressMaskGetLength(InetAddressMask mask);
	[LinkName("g_inet_address_mask_matches")]
	public static extern c_int InetAddressMaskMatches(InetAddressMask mask, InetAddress address);
	[LinkName("g_inet_address_mask_to_string")]
	public static extern char8* InetAddressMaskToString(InetAddressMask mask);
	[CRepr]
	public struct InetAddressMaskClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct InetAddressMaskPrivate
	{
	}
	[CRepr]
	public struct InetAddressPrivate
	{
	}
	[CRepr]
	public struct InetSocketAddress;
	[LinkName("g_inet_socket_address_new")]
	public static extern SocketAddress InetSocketAddressNew(InetAddress address, c_ushort port);
	[LinkName("g_inet_socket_address_new_from_string")]
	public static extern SocketAddress InetSocketAddressNewFromString(char8* address, c_uint port);
	[LinkName("g_inet_socket_address_get_address")]
	public static extern InetAddress InetSocketAddressGetAddress(InetSocketAddress address);
	[LinkName("g_inet_socket_address_get_flowinfo")]
	public static extern c_uint InetSocketAddressGetFlowinfo(InetSocketAddress address);
	[LinkName("g_inet_socket_address_get_port")]
	public static extern c_ushort InetSocketAddressGetPort(InetSocketAddress address);
	[LinkName("g_inet_socket_address_get_scope_id")]
	public static extern c_uint InetSocketAddressGetScopeId(InetSocketAddress address);
	[CRepr]
	public struct InetSocketAddressClass
	{
		SocketAddressClass parent_class;
	}
	[CRepr]
	public struct InetSocketAddressPrivate
	{
	}
	[CRepr]
	public struct Initable
	{
		public function c_int(Initable initable, Cancellable cancellable) init;
	}
	[CRepr]
	public struct InitableIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct InputMessage
	{
		SocketAddress address;
		c_uint num_vectors;
		c_ulong bytes_received;
		c_int flags;
		c_uint num_control_messages;
	}
	[CRepr]
	public struct InputStream;
	[LinkName("g_input_stream_clear_pending")]
	public static extern void InputStreamClearPending(InputStream stream);
	[LinkName("g_input_stream_close")]
	public static extern c_int InputStreamClose(InputStream stream, Cancellable cancellable);
	[LinkName("g_input_stream_close_async")]
	public static extern void InputStreamCloseAsync(InputStream stream, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_close_finish")]
	public static extern c_int InputStreamCloseFinish(InputStream stream, AsyncResult result);
	[LinkName("g_input_stream_has_pending")]
	public static extern c_int InputStreamHasPending(InputStream stream);
	[LinkName("g_input_stream_is_closed")]
	public static extern c_int InputStreamIsClosed(InputStream stream);
	[LinkName("g_input_stream_read")]
	public static extern c_long InputStreamRead(InputStream stream, c_ulong count, Cancellable cancellable);
	[LinkName("g_input_stream_read_all")]
	public static extern c_int InputStreamReadAll(InputStream stream, c_ulong count, c_ulong bytes_read, Cancellable cancellable);
	[LinkName("g_input_stream_read_all_async")]
	public static extern void InputStreamReadAllAsync(InputStream stream, c_ulong count, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_read_all_finish")]
	public static extern c_int InputStreamReadAllFinish(InputStream stream, AsyncResult result, c_ulong bytes_read);
	[LinkName("g_input_stream_read_async")]
	public static extern void InputStreamReadAsync(InputStream stream, c_ulong count, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_read_bytes")]
	public static extern GLib.Bytes InputStreamReadBytes(InputStream stream, c_ulong count, Cancellable cancellable);
	[LinkName("g_input_stream_read_bytes_async")]
	public static extern void InputStreamReadBytesAsync(InputStream stream, c_ulong count, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_read_bytes_finish")]
	public static extern GLib.Bytes InputStreamReadBytesFinish(InputStream stream, AsyncResult result);
	[LinkName("g_input_stream_read_finish")]
	public static extern c_long InputStreamReadFinish(InputStream stream, AsyncResult result);
	[LinkName("g_input_stream_set_pending")]
	public static extern c_int InputStreamSetPending(InputStream stream);
	[LinkName("g_input_stream_skip")]
	public static extern c_long InputStreamSkip(InputStream stream, c_ulong count, Cancellable cancellable);
	[LinkName("g_input_stream_skip_async")]
	public static extern void InputStreamSkipAsync(InputStream stream, c_ulong count, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_skip_finish")]
	public static extern c_long InputStreamSkipFinish(InputStream stream, AsyncResult result);
	[CRepr]
	public struct InputStreamClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct InputStreamPrivate
	{
	}
	[CRepr]
	public struct InputVector
	{
		void* buffer;
		c_ulong size;
	}
	[CRepr]
	public struct ListModel
	{
		public function GObject.Object(ListModel list, c_uint position) get_item;

		public function GLib.Type(ListModel list) get_item_type;

		public function c_uint(ListModel list) get_n_items;
	}
	[CRepr]
	public struct ListModelInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct ListStore;
	[LinkName("g_list_store_new")]
	public static extern ListStore ListStoreNew(GLib.Type item_type);
	[LinkName("g_list_store_append")]
	public static extern void ListStoreAppend(ListStore store, GObject.Object item);
	[LinkName("g_list_store_find")]
	public static extern c_int ListStoreFind(ListStore store, GObject.Object item, c_uint position);
	[LinkName("g_list_store_find_with_equal_func")]
	public static extern c_int ListStoreFindWithEqualFunc(ListStore store, GObject.Object item, GLib.EqualFunc equal_func, c_uint position);
	[LinkName("g_list_store_find_with_equal_func_full")]
	public static extern c_int ListStoreFindWithEqualFuncFull(ListStore store, GObject.Object item, GLib.EqualFuncFull equal_func, void* user_data, c_uint position);
	[LinkName("g_list_store_insert")]
	public static extern void ListStoreInsert(ListStore store, c_uint position, GObject.Object item);
	[LinkName("g_list_store_insert_sorted")]
	public static extern c_uint ListStoreInsertSorted(ListStore store, GObject.Object item, GLib.CompareDataFunc compare_func, void* user_data);
	[LinkName("g_list_store_remove")]
	public static extern void ListStoreRemove(ListStore store, c_uint position);
	[LinkName("g_list_store_remove_all")]
	public static extern void ListStoreRemoveAll(ListStore store);
	[LinkName("g_list_store_sort")]
	public static extern void ListStoreSort(ListStore store, GLib.CompareDataFunc compare_func, void* user_data);
	[LinkName("g_list_store_splice")]
	public static extern void ListStoreSplice(ListStore store, c_uint position, c_uint n_removals, c_uint n_additions);
	[CRepr]
	public struct ListStoreClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct LoadableIcon
	{
		public function InputStream(LoadableIcon icon, c_int size, char8* type, Cancellable cancellable) load;

		public function void(LoadableIcon icon, c_int size, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) load_async;

		public function InputStream(LoadableIcon icon, AsyncResult res, char8* type) load_finish;
	}
	[CRepr]
	public struct LoadableIconIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct MemoryInputStream;
	[LinkName("g_memory_input_stream_new")]
	public static extern InputStream MemoryInputStreamNew();
	[LinkName("g_memory_input_stream_new_from_bytes")]
	public static extern InputStream MemoryInputStreamNewFromBytes(GLib.Bytes bytes);
	[LinkName("g_memory_input_stream_new_from_data")]
	public static extern InputStream MemoryInputStreamNewFromData(c_long len, GLib.DestroyNotify destroy);
	[LinkName("g_memory_input_stream_add_bytes")]
	public static extern void MemoryInputStreamAddBytes(MemoryInputStream stream, GLib.Bytes bytes);
	[LinkName("g_memory_input_stream_add_data")]
	public static extern void MemoryInputStreamAddData(MemoryInputStream stream, c_long len, GLib.DestroyNotify destroy);
	[CRepr]
	public struct MemoryInputStreamClass
	{
		InputStreamClass parent_class;
	}
	[CRepr]
	public struct MemoryInputStreamPrivate
	{
	}
	[CRepr]
	public struct MemoryMonitor
	{
		public function void(MemoryMonitor monitor, MemoryMonitorWarningLevel level) low_memory_warning;
	}
	[CRepr]
	public struct MemoryMonitorInterface
	{
		GObject.TypeInterface g_iface;
	}
	public enum MemoryMonitorWarningLevel : c_int
	{
		G_MEMORY_MONITOR_WARNING_LEVEL_LOW,
		G_MEMORY_MONITOR_WARNING_LEVEL_MEDIUM,
		G_MEMORY_MONITOR_WARNING_LEVEL_CRITICAL
	}
	[CRepr]
	public struct MemoryOutputStream;
	[LinkName("g_memory_output_stream_new")]
	public static extern OutputStream MemoryOutputStreamNew(void* data, c_ulong size, ReallocFunc realloc_function, GLib.DestroyNotify destroy_function);
	[LinkName("g_memory_output_stream_new_resizable")]
	public static extern OutputStream MemoryOutputStreamNewResizable();
	[LinkName("g_memory_output_stream_get_data")]
	public static extern void* MemoryOutputStreamGetData(MemoryOutputStream ostream);
	[LinkName("g_memory_output_stream_get_data_size")]
	public static extern c_ulong MemoryOutputStreamGetDataSize(MemoryOutputStream ostream);
	[LinkName("g_memory_output_stream_get_size")]
	public static extern c_ulong MemoryOutputStreamGetSize(MemoryOutputStream ostream);
	[LinkName("g_memory_output_stream_steal_as_bytes")]
	public static extern GLib.Bytes MemoryOutputStreamStealAsBytes(MemoryOutputStream ostream);
	[LinkName("g_memory_output_stream_steal_data")]
	public static extern void* MemoryOutputStreamStealData(MemoryOutputStream ostream);
	[CRepr]
	public struct MemoryOutputStreamClass
	{
		OutputStreamClass parent_class;
	}
	[CRepr]
	public struct MemoryOutputStreamPrivate
	{
	}
	[CRepr]
	public struct Menu;
	[LinkName("g_menu_new")]
	public static extern Menu MenuNew();
	[LinkName("g_menu_append")]
	public static extern void MenuAppend(Menu menu, char8* label, char8* detailed_action);
	[LinkName("g_menu_append_item")]
	public static extern void MenuAppendItem(Menu menu, MenuItem item);
	[LinkName("g_menu_append_section")]
	public static extern void MenuAppendSection(Menu menu, char8* label, MenuModel section);
	[LinkName("g_menu_append_submenu")]
	public static extern void MenuAppendSubmenu(Menu menu, char8* label, MenuModel submenu);
	[LinkName("g_menu_freeze")]
	public static extern void MenuFreeze(Menu menu);
	[LinkName("g_menu_insert")]
	public static extern void MenuInsert(Menu menu, c_int position, char8* label, char8* detailed_action);
	[LinkName("g_menu_insert_item")]
	public static extern void MenuInsertItem(Menu menu, c_int position, MenuItem item);
	[LinkName("g_menu_insert_section")]
	public static extern void MenuInsertSection(Menu menu, c_int position, char8* label, MenuModel section);
	[LinkName("g_menu_insert_submenu")]
	public static extern void MenuInsertSubmenu(Menu menu, c_int position, char8* label, MenuModel submenu);
	[LinkName("g_menu_prepend")]
	public static extern void MenuPrepend(Menu menu, char8* label, char8* detailed_action);
	[LinkName("g_menu_prepend_item")]
	public static extern void MenuPrependItem(Menu menu, MenuItem item);
	[LinkName("g_menu_prepend_section")]
	public static extern void MenuPrependSection(Menu menu, char8* label, MenuModel section);
	[LinkName("g_menu_prepend_submenu")]
	public static extern void MenuPrependSubmenu(Menu menu, char8* label, MenuModel submenu);
	[LinkName("g_menu_remove")]
	public static extern void MenuRemove(Menu menu, c_int position);
	[LinkName("g_menu_remove_all")]
	public static extern void MenuRemoveAll(Menu menu);
	[CRepr]
	public struct MenuAttributeIter;
	[LinkName("g_menu_attribute_iter_get_name")]
	public static extern char8* MenuAttributeIterGetName(MenuAttributeIter iter);
	[LinkName("g_menu_attribute_iter_get_next")]
	public static extern c_int MenuAttributeIterGetNext(MenuAttributeIter iter, char8* out_name, GLib.Variant value);
	[LinkName("g_menu_attribute_iter_get_value")]
	public static extern GLib.Variant MenuAttributeIterGetValue(MenuAttributeIter iter);
	[LinkName("g_menu_attribute_iter_next")]
	public static extern c_int MenuAttributeIterNext(MenuAttributeIter iter);
	[CRepr]
	public struct MenuAttributeIterClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct MenuAttributeIterPrivate
	{
	}
	[CRepr]
	public struct MenuItem;
	[LinkName("g_menu_item_new")]
	public static extern MenuItem MenuItemNew(char8* label, char8* detailed_action);
	[LinkName("g_menu_item_new_from_model")]
	public static extern MenuItem MenuItemNewFromModel(MenuModel model, c_int item_index);
	[LinkName("g_menu_item_new_section")]
	public static extern MenuItem MenuItemNewSection(char8* label, MenuModel section);
	[LinkName("g_menu_item_new_submenu")]
	public static extern MenuItem MenuItemNewSubmenu(char8* label, MenuModel submenu);
	[LinkName("g_menu_item_get_attribute")]
	public static extern c_int MenuItemGetAttribute(MenuItem menu_item, char8* attribute, char8* format_string);
	[LinkName("g_menu_item_get_attribute_value")]
	public static extern GLib.Variant MenuItemGetAttributeValue(MenuItem menu_item, char8* attribute, GLib.VariantType expected_type);
	[LinkName("g_menu_item_get_link")]
	public static extern MenuModel MenuItemGetLink(MenuItem menu_item, char8* link);
	[LinkName("g_menu_item_set_action_and_target")]
	public static extern void MenuItemSetActionAndTarget(MenuItem menu_item, char8* action, char8* format_string);
	[LinkName("g_menu_item_set_action_and_target_value")]
	public static extern void MenuItemSetActionAndTargetValue(MenuItem menu_item, char8* action, GLib.Variant target_value);
	[LinkName("g_menu_item_set_attribute")]
	public static extern void MenuItemSetAttribute(MenuItem menu_item, char8* attribute, char8* format_string);
	[LinkName("g_menu_item_set_attribute_value")]
	public static extern void MenuItemSetAttributeValue(MenuItem menu_item, char8* attribute, GLib.Variant value);
	[LinkName("g_menu_item_set_detailed_action")]
	public static extern void MenuItemSetDetailedAction(MenuItem menu_item, char8* detailed_action);
	[LinkName("g_menu_item_set_icon")]
	public static extern void MenuItemSetIcon(MenuItem menu_item, Icon icon);
	[LinkName("g_menu_item_set_label")]
	public static extern void MenuItemSetLabel(MenuItem menu_item, char8* label);
	[LinkName("g_menu_item_set_link")]
	public static extern void MenuItemSetLink(MenuItem menu_item, char8* link, MenuModel model);
	[LinkName("g_menu_item_set_section")]
	public static extern void MenuItemSetSection(MenuItem menu_item, MenuModel section);
	[LinkName("g_menu_item_set_submenu")]
	public static extern void MenuItemSetSubmenu(MenuItem menu_item, MenuModel submenu);
	[CRepr]
	public struct MenuLinkIter;
	[LinkName("g_menu_link_iter_get_name")]
	public static extern char8* MenuLinkIterGetName(MenuLinkIter iter);
	[LinkName("g_menu_link_iter_get_next")]
	public static extern c_int MenuLinkIterGetNext(MenuLinkIter iter, char8* out_link, MenuModel value);
	[LinkName("g_menu_link_iter_get_value")]
	public static extern MenuModel MenuLinkIterGetValue(MenuLinkIter iter);
	[LinkName("g_menu_link_iter_next")]
	public static extern c_int MenuLinkIterNext(MenuLinkIter iter);
	[CRepr]
	public struct MenuLinkIterClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct MenuLinkIterPrivate
	{
	}
	[CRepr]
	public struct MenuModel;
	[LinkName("g_menu_model_get_item_attribute")]
	public static extern c_int MenuModelGetItemAttribute(MenuModel model, c_int item_index, char8* attribute, char8* format_string);
	[LinkName("g_menu_model_get_item_attribute_value")]
	public static extern GLib.Variant MenuModelGetItemAttributeValue(MenuModel model, c_int item_index, char8* attribute, GLib.VariantType expected_type);
	[LinkName("g_menu_model_get_item_link")]
	public static extern MenuModel MenuModelGetItemLink(MenuModel model, c_int item_index, char8* link);
	[LinkName("g_menu_model_get_n_items")]
	public static extern c_int MenuModelGetNItems(MenuModel model);
	[LinkName("g_menu_model_is_mutable")]
	public static extern c_int MenuModelIsMutable(MenuModel model);
	[LinkName("g_menu_model_items_changed")]
	public static extern void MenuModelItemsChanged(MenuModel model, c_int position, c_int removed, c_int added);
	[LinkName("g_menu_model_iterate_item_attributes")]
	public static extern MenuAttributeIter MenuModelIterateItemAttributes(MenuModel model, c_int item_index);
	[LinkName("g_menu_model_iterate_item_links")]
	public static extern MenuLinkIter MenuModelIterateItemLinks(MenuModel model, c_int item_index);
	[CRepr]
	public struct MenuModelClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct MenuModelPrivate
	{
	}
	[CRepr]
	public struct Mount
	{
		public function c_int(Mount mount) can_eject;

		public function c_int(Mount mount) can_unmount;

		public function void(Mount mount) changed;

		public function void(Mount mount, MountUnmountFlags flags, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) eject;

		public function c_int(Mount mount, AsyncResult result) eject_finish;

		public function void(Mount mount, MountUnmountFlags flags, MountOperation mount_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) eject_with_operation;

		public function c_int(Mount mount, AsyncResult result) eject_with_operation_finish;

		public function File(Mount mount) get_default_location;

		public function Drive(Mount mount) get_drive;

		public function Icon(Mount mount) get_icon;

		public function char8*(Mount mount) get_name;

		public function File(Mount mount) get_root;

		public function char8*(Mount mount) get_sort_key;

		public function Icon(Mount mount) get_symbolic_icon;

		public function char8*(Mount mount) get_uuid;

		public function Volume(Mount mount) get_volume;

		public function void(Mount mount, c_int force_rescan, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) guess_content_type;

		public function void(Mount mount, AsyncResult result) guess_content_type_finish;

		public function void(Mount mount, c_int force_rescan, Cancellable cancellable) guess_content_type_sync;

		public function void(Mount mount) pre_unmount;

		public function void(Mount mount, MountMountFlags flags, MountOperation mount_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) remount;

		public function c_int(Mount mount, AsyncResult result) remount_finish;

		public function void(Mount mount, MountUnmountFlags flags, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) unmount;

		public function c_int(Mount mount, AsyncResult result) unmount_finish;

		public function void(Mount mount, MountUnmountFlags flags, MountOperation mount_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) unmount_with_operation;

		public function c_int(Mount mount, AsyncResult result) unmount_with_operation_finish;

		public function void(Mount mount) unmounted;
	}
	[CRepr]
	public struct MountIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct MountMountFlags
	{
		public const int G_MOUNT_MOUNT_NONE = 0;
	}
	[CRepr]
	public struct MountOperation;
	[LinkName("g_mount_operation_new")]
	public static extern MountOperation MountOperationNew();
	[LinkName("g_mount_operation_get_anonymous")]
	public static extern c_int MountOperationGetAnonymous(MountOperation op);
	[LinkName("g_mount_operation_get_choice")]
	public static extern c_int MountOperationGetChoice(MountOperation op);
	[LinkName("g_mount_operation_get_domain")]
	public static extern char8* MountOperationGetDomain(MountOperation op);
	[LinkName("g_mount_operation_get_is_tcrypt_hidden_volume")]
	public static extern c_int MountOperationGetIsTcryptHiddenVolume(MountOperation op);
	[LinkName("g_mount_operation_get_is_tcrypt_system_volume")]
	public static extern c_int MountOperationGetIsTcryptSystemVolume(MountOperation op);
	[LinkName("g_mount_operation_get_password")]
	public static extern char8* MountOperationGetPassword(MountOperation op);
	[LinkName("g_mount_operation_get_password_save")]
	public static extern PasswordSave MountOperationGetPasswordSave(MountOperation op);
	[LinkName("g_mount_operation_get_pim")]
	public static extern c_uint MountOperationGetPim(MountOperation op);
	[LinkName("g_mount_operation_get_username")]
	public static extern char8* MountOperationGetUsername(MountOperation op);
	[LinkName("g_mount_operation_reply")]
	public static extern void MountOperationReply(MountOperation op, MountOperationResult result);
	[LinkName("g_mount_operation_set_anonymous")]
	public static extern void MountOperationSetAnonymous(MountOperation op, c_int anonymous);
	[LinkName("g_mount_operation_set_choice")]
	public static extern void MountOperationSetChoice(MountOperation op, c_int choice);
	[LinkName("g_mount_operation_set_domain")]
	public static extern void MountOperationSetDomain(MountOperation op, char8* domain);
	[LinkName("g_mount_operation_set_is_tcrypt_hidden_volume")]
	public static extern void MountOperationSetIsTcryptHiddenVolume(MountOperation op, c_int hidden_volume);
	[LinkName("g_mount_operation_set_is_tcrypt_system_volume")]
	public static extern void MountOperationSetIsTcryptSystemVolume(MountOperation op, c_int system_volume);
	[LinkName("g_mount_operation_set_password")]
	public static extern void MountOperationSetPassword(MountOperation op, char8* password);
	[LinkName("g_mount_operation_set_password_save")]
	public static extern void MountOperationSetPasswordSave(MountOperation op, PasswordSave save);
	[LinkName("g_mount_operation_set_pim")]
	public static extern void MountOperationSetPim(MountOperation op, c_uint pim);
	[LinkName("g_mount_operation_set_username")]
	public static extern void MountOperationSetUsername(MountOperation op, char8* username);
	[CRepr]
	public struct MountOperationClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct MountOperationPrivate
	{
	}
	public enum MountOperationResult : c_int
	{
		G_MOUNT_OPERATION_HANDLED,
		G_MOUNT_OPERATION_ABORTED,
		G_MOUNT_OPERATION_UNHANDLED
	}
	[CRepr]
	public struct MountUnmountFlags
	{
		public const int G_MOUNT_UNMOUNT_NONE = 0;
		public const int G_MOUNT_UNMOUNT_FORCE = 1;
	}
	[CRepr]
	public struct NativeSocketAddress;
	[LinkName("g_native_socket_address_new")]
	public static extern SocketAddress NativeSocketAddressNew(void* native, c_ulong len);
	[CRepr]
	public struct NativeSocketAddressClass
	{
		SocketAddressClass parent_class;
	}
	[CRepr]
	public struct NativeSocketAddressPrivate
	{
	}
	[CRepr]
	public struct NativeVolumeMonitor;
	[CRepr]
	public struct NativeVolumeMonitorClass
	{
		VolumeMonitorClass parent_class;
	}
	[CRepr]
	public struct NetworkAddress;
	[LinkName("g_network_address_new")]
	public static extern NetworkAddress NetworkAddressNew(char8* hostname, c_ushort port);
	[LinkName("g_network_address_new_loopback")]
	public static extern NetworkAddress NetworkAddressNewLoopback(c_ushort port);
	[LinkName("g_network_address_get_hostname")]
	public static extern char8* NetworkAddressGetHostname(NetworkAddress addr);
	[LinkName("g_network_address_get_port")]
	public static extern c_ushort NetworkAddressGetPort(NetworkAddress addr);
	[LinkName("g_network_address_get_scheme")]
	public static extern char8* NetworkAddressGetScheme(NetworkAddress addr);
	[CRepr]
	public struct NetworkAddressClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct NetworkAddressPrivate
	{
	}
	public enum NetworkConnectivity : c_int
	{
		G_NETWORK_CONNECTIVITY_LOCAL,
		G_NETWORK_CONNECTIVITY_LIMITED,
		G_NETWORK_CONNECTIVITY_PORTAL,
		G_NETWORK_CONNECTIVITY_FULL
	}
	[CRepr]
	public struct NetworkMonitor
	{
		public function c_int(NetworkMonitor monitor, SocketConnectable connectable, Cancellable cancellable) can_reach;

		public function void(NetworkMonitor monitor, SocketConnectable connectable, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) can_reach_async;

		public function c_int(NetworkMonitor monitor, AsyncResult result) can_reach_finish;

		public function void(NetworkMonitor monitor, c_int network_available) network_changed;
	}
	[CRepr]
	public struct NetworkMonitorInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct NetworkService;
	[LinkName("g_network_service_new")]
	public static extern NetworkService NetworkServiceNew(char8* service, char8* protocol, char8* domain);
	[LinkName("g_network_service_get_domain")]
	public static extern char8* NetworkServiceGetDomain(NetworkService srv);
	[LinkName("g_network_service_get_protocol")]
	public static extern char8* NetworkServiceGetProtocol(NetworkService srv);
	[LinkName("g_network_service_get_scheme")]
	public static extern char8* NetworkServiceGetScheme(NetworkService srv);
	[LinkName("g_network_service_get_service")]
	public static extern char8* NetworkServiceGetService(NetworkService srv);
	[LinkName("g_network_service_set_scheme")]
	public static extern void NetworkServiceSetScheme(NetworkService srv, char8* scheme);
	[CRepr]
	public struct NetworkServiceClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct NetworkServicePrivate
	{
	}
	[CRepr]
	public struct Notification;
	[LinkName("g_notification_new")]
	public static extern Notification NotificationNew(char8* title);
	[LinkName("g_notification_add_button")]
	public static extern void NotificationAddButton(Notification notification, char8* label, char8* detailed_action);
	[LinkName("g_notification_add_button_with_target")]
	public static extern void NotificationAddButtonWithTarget(Notification notification, char8* label, char8* action, char8* target_format);
	[LinkName("g_notification_add_button_with_target_value")]
	public static extern void NotificationAddButtonWithTargetValue(Notification notification, char8* label, char8* action, GLib.Variant target);
	[LinkName("g_notification_set_body")]
	public static extern void NotificationSetBody(Notification notification, char8* body);
	[LinkName("g_notification_set_category")]
	public static extern void NotificationSetCategory(Notification notification, char8* category);
	[LinkName("g_notification_set_default_action")]
	public static extern void NotificationSetDefaultAction(Notification notification, char8* detailed_action);
	[LinkName("g_notification_set_default_action_and_target")]
	public static extern void NotificationSetDefaultActionAndTarget(Notification notification, char8* action, char8* target_format);
	[LinkName("g_notification_set_default_action_and_target_value")]
	public static extern void NotificationSetDefaultActionAndTargetValue(Notification notification, char8* action, GLib.Variant target);
	[LinkName("g_notification_set_icon")]
	public static extern void NotificationSetIcon(Notification notification, Icon icon);
	[LinkName("g_notification_set_priority")]
	public static extern void NotificationSetPriority(Notification notification, NotificationPriority priority);
	[LinkName("g_notification_set_title")]
	public static extern void NotificationSetTitle(Notification notification, char8* title);
	[LinkName("g_notification_set_urgent")]
	public static extern void NotificationSetUrgent(Notification notification, c_int urgent);
	public enum NotificationPriority : c_int
	{
		G_NOTIFICATION_PRIORITY_NORMAL,
		G_NOTIFICATION_PRIORITY_LOW,
		G_NOTIFICATION_PRIORITY_HIGH,
		G_NOTIFICATION_PRIORITY_URGENT
	}
	[CRepr]
	public struct OutputMessage
	{
		SocketAddress address;
		OutputVector vectors;
		c_uint num_vectors;
		c_uint bytes_sent;
		c_uint num_control_messages;
	}
	[CRepr]
	public struct OutputStream;
	[LinkName("g_output_stream_clear_pending")]
	public static extern void OutputStreamClearPending(OutputStream stream);
	[LinkName("g_output_stream_close")]
	public static extern c_int OutputStreamClose(OutputStream stream, Cancellable cancellable);
	[LinkName("g_output_stream_close_async")]
	public static extern void OutputStreamCloseAsync(OutputStream stream, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_close_finish")]
	public static extern c_int OutputStreamCloseFinish(OutputStream stream, AsyncResult result);
	[LinkName("g_output_stream_flush")]
	public static extern c_int OutputStreamFlush(OutputStream stream, Cancellable cancellable);
	[LinkName("g_output_stream_flush_async")]
	public static extern void OutputStreamFlushAsync(OutputStream stream, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_flush_finish")]
	public static extern c_int OutputStreamFlushFinish(OutputStream stream, AsyncResult result);
	[LinkName("g_output_stream_has_pending")]
	public static extern c_int OutputStreamHasPending(OutputStream stream);
	[LinkName("g_output_stream_is_closed")]
	public static extern c_int OutputStreamIsClosed(OutputStream stream);
	[LinkName("g_output_stream_is_closing")]
	public static extern c_int OutputStreamIsClosing(OutputStream stream);
	[LinkName("g_output_stream_printf")]
	public static extern c_int OutputStreamPrintf(OutputStream stream, c_ulong bytes_written, Cancellable cancellable, GLib.Error error, char8* format);
	[LinkName("g_output_stream_set_pending")]
	public static extern c_int OutputStreamSetPending(OutputStream stream);
	[LinkName("g_output_stream_splice")]
	public static extern c_long OutputStreamSplice(OutputStream stream, InputStream source, OutputStreamSpliceFlags flags, Cancellable cancellable);
	[LinkName("g_output_stream_splice_async")]
	public static extern void OutputStreamSpliceAsync(OutputStream stream, InputStream source, OutputStreamSpliceFlags flags, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_splice_finish")]
	public static extern c_long OutputStreamSpliceFinish(OutputStream stream, AsyncResult result);
	[LinkName("g_output_stream_vprintf")]
	public static extern c_int OutputStreamVprintf(OutputStream stream, c_ulong bytes_written, Cancellable cancellable, GLib.Error error, char8* format, VarArgs args);
	[LinkName("g_output_stream_write")]
	public static extern c_long OutputStreamWrite(OutputStream stream, c_ulong count, Cancellable cancellable);
	[LinkName("g_output_stream_write_all")]
	public static extern c_int OutputStreamWriteAll(OutputStream stream, c_ulong count, c_ulong bytes_written, Cancellable cancellable);
	[LinkName("g_output_stream_write_all_async")]
	public static extern void OutputStreamWriteAllAsync(OutputStream stream, c_ulong count, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_write_all_finish")]
	public static extern c_int OutputStreamWriteAllFinish(OutputStream stream, AsyncResult result, c_ulong bytes_written);
	[LinkName("g_output_stream_write_async")]
	public static extern void OutputStreamWriteAsync(OutputStream stream, c_ulong count, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_write_bytes")]
	public static extern c_long OutputStreamWriteBytes(OutputStream stream, GLib.Bytes bytes, Cancellable cancellable);
	[LinkName("g_output_stream_write_bytes_async")]
	public static extern void OutputStreamWriteBytesAsync(OutputStream stream, GLib.Bytes bytes, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_write_bytes_finish")]
	public static extern c_long OutputStreamWriteBytesFinish(OutputStream stream, AsyncResult result);
	[LinkName("g_output_stream_write_finish")]
	public static extern c_long OutputStreamWriteFinish(OutputStream stream, AsyncResult result);
	[LinkName("g_output_stream_writev")]
	public static extern c_int OutputStreamWritev(OutputStream stream, c_ulong n_vectors, c_ulong bytes_written, Cancellable cancellable);
	[LinkName("g_output_stream_writev_all")]
	public static extern c_int OutputStreamWritevAll(OutputStream stream, c_ulong n_vectors, c_ulong bytes_written, Cancellable cancellable);
	[LinkName("g_output_stream_writev_all_async")]
	public static extern void OutputStreamWritevAllAsync(OutputStream stream, c_ulong n_vectors, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_writev_all_finish")]
	public static extern c_int OutputStreamWritevAllFinish(OutputStream stream, AsyncResult result, c_ulong bytes_written);
	[LinkName("g_output_stream_writev_async")]
	public static extern void OutputStreamWritevAsync(OutputStream stream, c_ulong n_vectors, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_writev_finish")]
	public static extern c_int OutputStreamWritevFinish(OutputStream stream, AsyncResult result, c_ulong bytes_written);
	[CRepr]
	public struct OutputStreamClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct OutputStreamPrivate
	{
	}
	[CRepr]
	public struct OutputStreamSpliceFlags
	{
		public const int G_OUTPUT_STREAM_SPLICE_NONE = 0;
		public const int G_OUTPUT_STREAM_SPLICE_CLOSE_SOURCE = 1;
		public const int G_OUTPUT_STREAM_SPLICE_CLOSE_TARGET = 2;
	}
	[CRepr]
	public struct OutputVector
	{
		void* buffer;
		c_ulong size;
	}
	public enum PasswordSave : c_int
	{
		G_PASSWORD_SAVE_NEVER,
		G_PASSWORD_SAVE_FOR_SESSION,
		G_PASSWORD_SAVE_PERMANENTLY
	}
	[CRepr]
	public struct Permission;
	[LinkName("g_permission_acquire")]
	public static extern c_int PermissionAcquire(Permission permission, Cancellable cancellable);
	[LinkName("g_permission_acquire_async")]
	public static extern void PermissionAcquireAsync(Permission permission, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_permission_acquire_finish")]
	public static extern c_int PermissionAcquireFinish(Permission permission, AsyncResult result);
	[LinkName("g_permission_get_allowed")]
	public static extern c_int PermissionGetAllowed(Permission permission);
	[LinkName("g_permission_get_can_acquire")]
	public static extern c_int PermissionGetCanAcquire(Permission permission);
	[LinkName("g_permission_get_can_release")]
	public static extern c_int PermissionGetCanRelease(Permission permission);
	[LinkName("g_permission_impl_update")]
	public static extern void PermissionImplUpdate(Permission permission, c_int allowed, c_int can_acquire, c_int can_release);
	[LinkName("g_permission_release")]
	public static extern c_int PermissionRelease(Permission permission, Cancellable cancellable);
	[LinkName("g_permission_release_async")]
	public static extern void PermissionReleaseAsync(Permission permission, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_permission_release_finish")]
	public static extern c_int PermissionReleaseFinish(Permission permission, AsyncResult result);
	[CRepr]
	public struct PermissionClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct PermissionPrivate
	{
	}
	[CRepr]
	public struct PollableInputStream
	{
		public function c_int(PollableInputStream stream) can_poll;

		public function GLib.Source(PollableInputStream stream, Cancellable cancellable) create_source;

		public function c_int(PollableInputStream stream) is_readable;

		public function c_long(PollableInputStream stream, c_ulong count) read_nonblocking;
	}
	[CRepr]
	public struct PollableInputStreamInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct PollableOutputStream
	{
		public function c_int(PollableOutputStream stream) can_poll;

		public function GLib.Source(PollableOutputStream stream, Cancellable cancellable) create_source;

		public function c_int(PollableOutputStream stream) is_writable;

		public function c_long(PollableOutputStream stream, c_ulong count) write_nonblocking;

		public function PollableReturn(PollableOutputStream stream, c_ulong n_vectors, c_ulong bytes_written) writev_nonblocking;
	}
	[CRepr]
	public struct PollableOutputStreamInterface
	{
		GObject.TypeInterface g_iface;
	}
	public enum PollableReturn : c_int
	{
		G_POLLABLE_RETURN_FAILED,
		G_POLLABLE_RETURN_OK,
		G_POLLABLE_RETURN_WOULD_BLOCK
	}
	public function c_int PollableSourceFunc(GObject.Object pollable_stream, void* data);
	[CRepr]
	public struct PowerProfileMonitor
	{	}
	[CRepr]
	public struct PowerProfileMonitorInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct PropertyAction;
	[LinkName("g_property_action_new")]
	public static extern PropertyAction PropertyActionNew(char8* name, GObject.Object object, char8* property_name);
	[CRepr]
	public struct Proxy
	{
		public function IOStream(Proxy proxy, IOStream connection, ProxyAddress proxy_address, Cancellable cancellable) connect;

		public function void(Proxy proxy, IOStream connection, ProxyAddress proxy_address, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) connect_async;

		public function IOStream(Proxy proxy, AsyncResult result) connect_finish;

		public function c_int(Proxy proxy) supports_hostname;
	}
	[CRepr]
	public struct ProxyAddress;
	[LinkName("g_proxy_address_new")]
	public static extern SocketAddress ProxyAddressNew(InetAddress inetaddr, c_ushort port, char8* protocol, char8* dest_hostname, c_ushort dest_port, char8* username, char8* password);
	[LinkName("g_proxy_address_get_destination_hostname")]
	public static extern char8* ProxyAddressGetDestinationHostname(ProxyAddress proxy);
	[LinkName("g_proxy_address_get_destination_port")]
	public static extern c_ushort ProxyAddressGetDestinationPort(ProxyAddress proxy);
	[LinkName("g_proxy_address_get_destination_protocol")]
	public static extern char8* ProxyAddressGetDestinationProtocol(ProxyAddress proxy);
	[LinkName("g_proxy_address_get_password")]
	public static extern char8* ProxyAddressGetPassword(ProxyAddress proxy);
	[LinkName("g_proxy_address_get_protocol")]
	public static extern char8* ProxyAddressGetProtocol(ProxyAddress proxy);
	[LinkName("g_proxy_address_get_uri")]
	public static extern char8* ProxyAddressGetUri(ProxyAddress proxy);
	[LinkName("g_proxy_address_get_username")]
	public static extern char8* ProxyAddressGetUsername(ProxyAddress proxy);
	[CRepr]
	public struct ProxyAddressClass
	{
		InetSocketAddressClass parent_class;
	}
	[CRepr]
	public struct ProxyAddressEnumerator;
	[CRepr]
	public struct ProxyAddressEnumeratorClass
	{
		SocketAddressEnumeratorClass parent_class;
	}
	[CRepr]
	public struct ProxyAddressEnumeratorPrivate
	{
	}
	[CRepr]
	public struct ProxyAddressPrivate
	{
	}
	[CRepr]
	public struct ProxyInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct ProxyResolver
	{
		public function c_int(ProxyResolver resolver) is_supported;

		public function c_int(ProxyResolver resolver, char8* uri, Cancellable cancellable) lookup;

		public function void(ProxyResolver resolver, char8* uri, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) lookup_async;

		public function void(ProxyResolver resolver, AsyncResult result) lookup_finish;
	}
	[CRepr]
	public struct ProxyResolverInterface
	{
		GObject.TypeInterface g_iface;
	}
	public function void* ReallocFunc(void* data, c_ulong size);
	[CRepr]
	public struct RemoteActionGroup
	{
		public function void(RemoteActionGroup remote, char8* action_name, GLib.Variant parameter, GLib.Variant platform_data) activate_action_full;

		public function void(RemoteActionGroup remote, char8* action_name, GLib.Variant value, GLib.Variant platform_data) change_action_state_full;
	}
	[CRepr]
	public struct RemoteActionGroupInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct Resolver;
	[LinkName("g_resolver_lookup_by_address")]
	public static extern char8* ResolverLookupByAddress(Resolver resolver, InetAddress address, Cancellable cancellable);
	[LinkName("g_resolver_lookup_by_address_async")]
	public static extern void ResolverLookupByAddressAsync(Resolver resolver, InetAddress address, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_by_address_finish")]
	public static extern char8* ResolverLookupByAddressFinish(Resolver resolver, AsyncResult result);
	[LinkName("g_resolver_lookup_by_name")]
	public static extern GLib.List ResolverLookupByName(Resolver resolver, char8* hostname, Cancellable cancellable);
	[LinkName("g_resolver_lookup_by_name_async")]
	public static extern void ResolverLookupByNameAsync(Resolver resolver, char8* hostname, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_by_name_finish")]
	public static extern GLib.List ResolverLookupByNameFinish(Resolver resolver, AsyncResult result);
	[LinkName("g_resolver_lookup_by_name_with_flags")]
	public static extern GLib.List ResolverLookupByNameWithFlags(Resolver resolver, char8* hostname, ResolverNameLookupFlags flags, Cancellable cancellable);
	[LinkName("g_resolver_lookup_by_name_with_flags_async")]
	public static extern void ResolverLookupByNameWithFlagsAsync(Resolver resolver, char8* hostname, ResolverNameLookupFlags flags, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_by_name_with_flags_finish")]
	public static extern GLib.List ResolverLookupByNameWithFlagsFinish(Resolver resolver, AsyncResult result);
	[LinkName("g_resolver_lookup_records")]
	public static extern GLib.List ResolverLookupRecords(Resolver resolver, char8* rrname, ResolverRecordType record_type, Cancellable cancellable);
	[LinkName("g_resolver_lookup_records_async")]
	public static extern void ResolverLookupRecordsAsync(Resolver resolver, char8* rrname, ResolverRecordType record_type, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_records_finish")]
	public static extern GLib.List ResolverLookupRecordsFinish(Resolver resolver, AsyncResult result);
	[LinkName("g_resolver_lookup_service")]
	public static extern GLib.List ResolverLookupService(Resolver resolver, char8* service, char8* protocol, char8* domain, Cancellable cancellable);
	[LinkName("g_resolver_lookup_service_async")]
	public static extern void ResolverLookupServiceAsync(Resolver resolver, char8* service, char8* protocol, char8* domain, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_service_finish")]
	public static extern GLib.List ResolverLookupServiceFinish(Resolver resolver, AsyncResult result);
	[LinkName("g_resolver_set_default")]
	public static extern void ResolverSetDefault(Resolver resolver);
	[CRepr]
	public struct ResolverClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum ResolverError : c_int
	{
		G_RESOLVER_ERROR_NOT_FOUND,
		G_RESOLVER_ERROR_TEMPORARY_FAILURE,
		G_RESOLVER_ERROR_INTERNAL
	}
	[CRepr]
	public struct ResolverNameLookupFlags
	{
		public const int G_RESOLVER_NAME_LOOKUP_FLAGS_DEFAULT = 0;
		public const int G_RESOLVER_NAME_LOOKUP_FLAGS_IPV4_ONLY = 1;
		public const int G_RESOLVER_NAME_LOOKUP_FLAGS_IPV6_ONLY = 2;
	}
	[CRepr]
	public struct ResolverPrivate
	{
	}
	public enum ResolverRecordType : c_int
	{
		G_RESOLVER_RECORD_SRV,
		G_RESOLVER_RECORD_MX,
		G_RESOLVER_RECORD_TXT,
		G_RESOLVER_RECORD_SOA,
		G_RESOLVER_RECORD_NS
	}
	[CRepr]
	public struct Resource
	{
	}
	public enum ResourceError : c_int
	{
		G_RESOURCE_ERROR_NOT_FOUND,
		G_RESOURCE_ERROR_INTERNAL
	}
	[CRepr]
	public struct ResourceFlags
	{
		public const int G_RESOURCE_FLAGS_NONE = 0;
		public const int G_RESOURCE_FLAGS_COMPRESSED = 1;
	}
	[CRepr]
	public struct ResourceLookupFlags
	{
		public const int G_RESOURCE_LOOKUP_FLAGS_NONE = 0;
	}
	[CRepr]
	public struct Seekable
	{
		public function c_int(Seekable seekable) can_seek;

		public function c_int(Seekable seekable) can_truncate;

		public function c_int(Seekable seekable, c_longlong offset, GLib.SeekType type, Cancellable cancellable) seek;

		public function c_longlong(Seekable seekable) tell;

		public function c_int(Seekable seekable, c_longlong offset, Cancellable cancellable) truncate_fn;
	}
	[CRepr]
	public struct SeekableIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct Settings;
	[LinkName("g_settings_new")]
	public static extern Settings SettingsNew(char8* schema_id);
	[LinkName("g_settings_new_full")]
	public static extern Settings SettingsNewFull(SettingsSchema schema, SettingsBackend backend, char8* path);
	[LinkName("g_settings_new_with_backend")]
	public static extern Settings SettingsNewWithBackend(char8* schema_id, SettingsBackend backend);
	[LinkName("g_settings_new_with_backend_and_path")]
	public static extern Settings SettingsNewWithBackendAndPath(char8* schema_id, SettingsBackend backend, char8* path);
	[LinkName("g_settings_new_with_path")]
	public static extern Settings SettingsNewWithPath(char8* schema_id, char8* path);
	[LinkName("g_settings_apply")]
	public static extern void SettingsApply(Settings settings);
	[LinkName("g_settings_bind")]
	public static extern void SettingsBind(Settings settings, char8* key, GObject.Object object, char8* property, SettingsBindFlags flags);
	[LinkName("g_settings_bind_with_mapping")]
	public static extern void SettingsBindWithMapping(Settings settings, char8* key, GObject.Object object, char8* property, SettingsBindFlags flags, SettingsBindGetMapping get_mapping, SettingsBindSetMapping set_mapping, void* user_data, GLib.DestroyNotify destroy);
	[LinkName("g_settings_bind_writable")]
	public static extern void SettingsBindWritable(Settings settings, char8* key, GObject.Object object, char8* property, c_int inverted);
	[LinkName("g_settings_create_action")]
	public static extern Action SettingsCreateAction(Settings settings, char8* key);
	[LinkName("g_settings_delay")]
	public static extern void SettingsDelay(Settings settings);
	[LinkName("g_settings_get")]
	public static extern void SettingsGet(Settings settings, char8* key, char8* format);
	[LinkName("g_settings_get_boolean")]
	public static extern c_int SettingsGetBoolean(Settings settings, char8* key);
	[LinkName("g_settings_get_child")]
	public static extern Settings SettingsGetChild(Settings settings, char8* name);
	[LinkName("g_settings_get_default_value")]
	public static extern GLib.Variant SettingsGetDefaultValue(Settings settings, char8* key);
	[LinkName("g_settings_get_double")]
	public static extern double SettingsGetDouble(Settings settings, char8* key);
	[LinkName("g_settings_get_enum")]
	public static extern c_int SettingsGetEnum(Settings settings, char8* key);
	[LinkName("g_settings_get_flags")]
	public static extern c_uint SettingsGetFlags(Settings settings, char8* key);
	[LinkName("g_settings_get_has_unapplied")]
	public static extern c_int SettingsGetHasUnapplied(Settings settings);
	[LinkName("g_settings_get_int")]
	public static extern c_int SettingsGetInt(Settings settings, char8* key);
	[LinkName("g_settings_get_int64")]
	public static extern c_longlong SettingsGetInt64(Settings settings, char8* key);
	[LinkName("g_settings_get_mapped")]
	public static extern void* SettingsGetMapped(Settings settings, char8* key, SettingsGetMapping mapping, void* user_data);
	[LinkName("g_settings_get_range")]
	public static extern GLib.Variant SettingsGetRange(Settings settings, char8* key);
	[LinkName("g_settings_get_string")]
	public static extern char8* SettingsGetString(Settings settings, char8* key);
	[LinkName("g_settings_get_strv")]
	public static extern char8* SettingsGetStrv(Settings settings, char8* key);
	[LinkName("g_settings_get_uint")]
	public static extern c_uint SettingsGetUint(Settings settings, char8* key);
	[LinkName("g_settings_get_uint64")]
	public static extern c_ulonglong SettingsGetUint64(Settings settings, char8* key);
	[LinkName("g_settings_get_user_value")]
	public static extern GLib.Variant SettingsGetUserValue(Settings settings, char8* key);
	[LinkName("g_settings_get_value")]
	public static extern GLib.Variant SettingsGetValue(Settings settings, char8* key);
	[LinkName("g_settings_is_writable")]
	public static extern c_int SettingsIsWritable(Settings settings, char8* name);
	[LinkName("g_settings_list_children")]
	public static extern char8* SettingsListChildren(Settings settings);
	[LinkName("g_settings_list_keys")]
	public static extern char8* SettingsListKeys(Settings settings);
	[LinkName("g_settings_range_check")]
	public static extern c_int SettingsRangeCheck(Settings settings, char8* key, GLib.Variant value);
	[LinkName("g_settings_reset")]
	public static extern void SettingsReset(Settings settings, char8* key);
	[LinkName("g_settings_revert")]
	public static extern void SettingsRevert(Settings settings);
	[LinkName("g_settings_set")]
	public static extern c_int SettingsSet(Settings settings, char8* key, char8* format);
	[LinkName("g_settings_set_boolean")]
	public static extern c_int SettingsSetBoolean(Settings settings, char8* key, c_int value);
	[LinkName("g_settings_set_double")]
	public static extern c_int SettingsSetDouble(Settings settings, char8* key, double value);
	[LinkName("g_settings_set_enum")]
	public static extern c_int SettingsSetEnum(Settings settings, char8* key, c_int value);
	[LinkName("g_settings_set_flags")]
	public static extern c_int SettingsSetFlags(Settings settings, char8* key, c_uint value);
	[LinkName("g_settings_set_int")]
	public static extern c_int SettingsSetInt(Settings settings, char8* key, c_int value);
	[LinkName("g_settings_set_int64")]
	public static extern c_int SettingsSetInt64(Settings settings, char8* key, c_longlong value);
	[LinkName("g_settings_set_string")]
	public static extern c_int SettingsSetString(Settings settings, char8* key, char8* value);
	[LinkName("g_settings_set_strv")]
	public static extern c_int SettingsSetStrv(Settings settings, char8* key);
	[LinkName("g_settings_set_uint")]
	public static extern c_int SettingsSetUint(Settings settings, char8* key, c_uint value);
	[LinkName("g_settings_set_uint64")]
	public static extern c_int SettingsSetUint64(Settings settings, char8* key, c_ulonglong value);
	[LinkName("g_settings_set_value")]
	public static extern c_int SettingsSetValue(Settings settings, char8* key, GLib.Variant value);
	[CRepr]
	public struct SettingsBackend;
	[LinkName("g_settings_backend_changed")]
	public static extern void SettingsBackendChanged(SettingsBackend backend, char8* key, void* origin_tag);
	[LinkName("g_settings_backend_changed_tree")]
	public static extern void SettingsBackendChangedTree(SettingsBackend backend, GLib.Tree tree, void* origin_tag);
	[LinkName("g_settings_backend_keys_changed")]
	public static extern void SettingsBackendKeysChanged(SettingsBackend backend, char8* path, void* origin_tag);
	[LinkName("g_settings_backend_path_changed")]
	public static extern void SettingsBackendPathChanged(SettingsBackend backend, char8* path, void* origin_tag);
	[LinkName("g_settings_backend_path_writable_changed")]
	public static extern void SettingsBackendPathWritableChanged(SettingsBackend backend, char8* path);
	[LinkName("g_settings_backend_writable_changed")]
	public static extern void SettingsBackendWritableChanged(SettingsBackend backend, char8* key);
	[CRepr]
	public struct SettingsBackendClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct SettingsBackendPrivate
	{
	}
	[CRepr]
	public struct SettingsBindFlags
	{
		public const int G_SETTINGS_BIND_DEFAULT = 0;
		public const int G_SETTINGS_BIND_GET = 1;
		public const int G_SETTINGS_BIND_SET = 2;
		public const int G_SETTINGS_BIND_NO_SENSITIVITY = 4;
		public const int G_SETTINGS_BIND_GET_NO_CHANGES = 8;
		public const int G_SETTINGS_BIND_INVERT_BOOLEAN = 16;
	}
	public function c_int SettingsBindGetMapping(GObject.Value value, GLib.Variant variant, void* user_data);
	public function GLib.Variant SettingsBindSetMapping(GObject.Value value, GLib.VariantType expected_type, void* user_data);
	[CRepr]
	public struct SettingsClass
	{
		GObject.ObjectClass parent_class;
	}
	public function c_int SettingsGetMapping(GLib.Variant value, void* result, void* user_data);
	[CRepr]
	public struct SettingsPrivate
	{
	}
	[CRepr]
	public struct SettingsSchema
	{
	}
	[CRepr]
	public struct SettingsSchemaKey
	{
	}
	[CRepr]
	public struct SettingsSchemaSource
	{
	}
	[CRepr]
	public struct SimpleAction;
	[LinkName("g_simple_action_new")]
	public static extern SimpleAction SimpleActionNew(char8* name, GLib.VariantType parameter_type);
	[LinkName("g_simple_action_new_stateful")]
	public static extern SimpleAction SimpleActionNewStateful(char8* name, GLib.VariantType parameter_type, GLib.Variant state);
	[LinkName("g_simple_action_set_enabled")]
	public static extern void SimpleActionSetEnabled(SimpleAction simple, c_int enabled);
	[LinkName("g_simple_action_set_state")]
	public static extern void SimpleActionSetState(SimpleAction simple, GLib.Variant value);
	[LinkName("g_simple_action_set_state_hint")]
	public static extern void SimpleActionSetStateHint(SimpleAction simple, GLib.Variant state_hint);
	[CRepr]
	public struct SimpleActionGroup;
	[LinkName("g_simple_action_group_new")]
	public static extern SimpleActionGroup SimpleActionGroupNew();
	[LinkName("g_simple_action_group_add_entries")]
	public static extern void SimpleActionGroupAddEntries(SimpleActionGroup simple, c_int n_entries, void* user_data);
	[LinkName("g_simple_action_group_insert")]
	public static extern void SimpleActionGroupInsert(SimpleActionGroup simple, Action action);
	[LinkName("g_simple_action_group_lookup")]
	public static extern Action SimpleActionGroupLookup(SimpleActionGroup simple, char8* action_name);
	[LinkName("g_simple_action_group_remove")]
	public static extern void SimpleActionGroupRemove(SimpleActionGroup simple, char8* action_name);
	[CRepr]
	public struct SimpleActionGroupClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct SimpleActionGroupPrivate
	{
	}
	[CRepr]
	public struct SimpleAsyncResult;
	[LinkName("g_simple_async_result_new")]
	public static extern SimpleAsyncResult SimpleAsyncResultNew(GObject.Object source_object, AsyncReadyCallback callback, void* user_data, void* source_tag);
	[LinkName("g_simple_async_result_new_error")]
	public static extern SimpleAsyncResult SimpleAsyncResultNewError(GObject.Object source_object, AsyncReadyCallback callback, void* user_data, GLib.Quark domain, c_int code, char8* format);
	[LinkName("g_simple_async_result_new_from_error")]
	public static extern SimpleAsyncResult SimpleAsyncResultNewFromError(GObject.Object source_object, AsyncReadyCallback callback, void* user_data, GLib.Error error);
	[LinkName("g_simple_async_result_new_take_error")]
	public static extern SimpleAsyncResult SimpleAsyncResultNewTakeError(GObject.Object source_object, AsyncReadyCallback callback, void* user_data, GLib.Error error);
	[LinkName("g_simple_async_result_complete")]
	public static extern void SimpleAsyncResultComplete(SimpleAsyncResult simple);
	[LinkName("g_simple_async_result_complete_in_idle")]
	public static extern void SimpleAsyncResultCompleteInIdle(SimpleAsyncResult simple);
	[LinkName("g_simple_async_result_get_op_res_gboolean")]
	public static extern c_int SimpleAsyncResultGetOpResGboolean(SimpleAsyncResult simple);
	[LinkName("g_simple_async_result_get_op_res_gpointer")]
	public static extern void* SimpleAsyncResultGetOpResGpointer(SimpleAsyncResult simple);
	[LinkName("g_simple_async_result_get_op_res_gssize")]
	public static extern c_long SimpleAsyncResultGetOpResGssize(SimpleAsyncResult simple);
	[LinkName("g_simple_async_result_get_source_tag")]
	public static extern void* SimpleAsyncResultGetSourceTag(SimpleAsyncResult simple);
	[LinkName("g_simple_async_result_propagate_error")]
	public static extern c_int SimpleAsyncResultPropagateError(SimpleAsyncResult simple);
	[LinkName("g_simple_async_result_run_in_thread")]
	public static extern void SimpleAsyncResultRunInThread(SimpleAsyncResult simple, SimpleAsyncThreadFunc func, c_int io_priority, Cancellable cancellable);
	[LinkName("g_simple_async_result_set_check_cancellable")]
	public static extern void SimpleAsyncResultSetCheckCancellable(SimpleAsyncResult simple, Cancellable check_cancellable);
	[LinkName("g_simple_async_result_set_error")]
	public static extern void SimpleAsyncResultSetError(SimpleAsyncResult simple, GLib.Quark domain, c_int code, char8* format);
	[LinkName("g_simple_async_result_set_error_va")]
	public static extern void SimpleAsyncResultSetErrorVa(SimpleAsyncResult simple, GLib.Quark domain, c_int code, char8* format, VarArgs args);
	[LinkName("g_simple_async_result_set_from_error")]
	public static extern void SimpleAsyncResultSetFromError(SimpleAsyncResult simple, GLib.Error error);
	[LinkName("g_simple_async_result_set_handle_cancellation")]
	public static extern void SimpleAsyncResultSetHandleCancellation(SimpleAsyncResult simple, c_int handle_cancellation);
	[LinkName("g_simple_async_result_set_op_res_gboolean")]
	public static extern void SimpleAsyncResultSetOpResGboolean(SimpleAsyncResult simple, c_int op_res);
	[LinkName("g_simple_async_result_set_op_res_gpointer")]
	public static extern void SimpleAsyncResultSetOpResGpointer(SimpleAsyncResult simple, void* op_res, GLib.DestroyNotify destroy_op_res);
	[LinkName("g_simple_async_result_set_op_res_gssize")]
	public static extern void SimpleAsyncResultSetOpResGssize(SimpleAsyncResult simple, c_long op_res);
	[LinkName("g_simple_async_result_take_error")]
	public static extern void SimpleAsyncResultTakeError(SimpleAsyncResult simple, GLib.Error error);
	[CRepr]
	public struct SimpleAsyncResultClass
	{
	}
	public function void SimpleAsyncThreadFunc(SimpleAsyncResult res, GObject.Object object, Cancellable cancellable);
	[CRepr]
	public struct SimpleIOStream;
	[LinkName("g_simple_io_stream_new")]
	public static extern IOStream SimpleIoStreamNew(InputStream input_stream, OutputStream output_stream);
	[CRepr]
	public struct SimplePermission;
	[LinkName("g_simple_permission_new")]
	public static extern Permission SimplePermissionNew(c_int allowed);
	[CRepr]
	public struct SimpleProxyResolver;
	[LinkName("g_simple_proxy_resolver_set_default_proxy")]
	public static extern void SimpleProxyResolverSetDefaultProxy(SimpleProxyResolver resolver, char8* default_proxy);
	[LinkName("g_simple_proxy_resolver_set_ignore_hosts")]
	public static extern void SimpleProxyResolverSetIgnoreHosts(SimpleProxyResolver resolver);
	[LinkName("g_simple_proxy_resolver_set_uri_proxy")]
	public static extern void SimpleProxyResolverSetUriProxy(SimpleProxyResolver resolver, char8* uri_scheme, char8* proxy);
	[CRepr]
	public struct SimpleProxyResolverClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct SimpleProxyResolverPrivate
	{
	}
	[CRepr]
	public struct Socket;
	[LinkName("g_socket_new")]
	public static extern Socket SocketNew(SocketFamily family, SocketType type, SocketProtocol protocol);
	[LinkName("g_socket_new_from_fd")]
	public static extern Socket SocketNewFromFd(c_int fd);
	[LinkName("g_socket_accept")]
	public static extern Socket SocketAccept(Socket socket, Cancellable cancellable);
	[LinkName("g_socket_bind")]
	public static extern c_int SocketBind(Socket socket, SocketAddress address, c_int allow_reuse);
	[LinkName("g_socket_check_connect_result")]
	public static extern c_int SocketCheckConnectResult(Socket socket);
	[LinkName("g_socket_close")]
	public static extern c_int SocketClose(Socket socket);
	[LinkName("g_socket_condition_check")]
	public static extern GLib.IOCondition SocketConditionCheck(Socket socket, GLib.IOCondition condition);
	[LinkName("g_socket_condition_timed_wait")]
	public static extern c_int SocketConditionTimedWait(Socket socket, GLib.IOCondition condition, c_longlong timeout_us, Cancellable cancellable);
	[LinkName("g_socket_condition_wait")]
	public static extern c_int SocketConditionWait(Socket socket, GLib.IOCondition condition, Cancellable cancellable);
	[LinkName("g_socket_connect")]
	public static extern c_int SocketConnect(Socket socket, SocketAddress address, Cancellable cancellable);
	[LinkName("g_socket_connection_factory_create_connection")]
	public static extern SocketConnection SocketConnectionFactoryCreateConnection(Socket socket);
	[LinkName("g_socket_create_source")]
	public static extern GLib.Source SocketCreateSource(Socket socket, GLib.IOCondition condition, Cancellable cancellable);
	[LinkName("g_socket_get_available_bytes")]
	public static extern c_long SocketGetAvailableBytes(Socket socket);
	[LinkName("g_socket_get_blocking")]
	public static extern c_int SocketGetBlocking(Socket socket);
	[LinkName("g_socket_get_broadcast")]
	public static extern c_int SocketGetBroadcast(Socket socket);
	[LinkName("g_socket_get_credentials")]
	public static extern Credentials SocketGetCredentials(Socket socket);
	[LinkName("g_socket_get_family")]
	public static extern SocketFamily SocketGetFamily(Socket socket);
	[LinkName("g_socket_get_fd")]
	public static extern c_int SocketGetFd(Socket socket);
	[LinkName("g_socket_get_keepalive")]
	public static extern c_int SocketGetKeepalive(Socket socket);
	[LinkName("g_socket_get_listen_backlog")]
	public static extern c_int SocketGetListenBacklog(Socket socket);
	[LinkName("g_socket_get_local_address")]
	public static extern SocketAddress SocketGetLocalAddress(Socket socket);
	[LinkName("g_socket_get_multicast_loopback")]
	public static extern c_int SocketGetMulticastLoopback(Socket socket);
	[LinkName("g_socket_get_multicast_ttl")]
	public static extern c_uint SocketGetMulticastTtl(Socket socket);
	[LinkName("g_socket_get_option")]
	public static extern c_int SocketGetOption(Socket socket, c_int level, c_int optname, c_int value);
	[LinkName("g_socket_get_protocol")]
	public static extern SocketProtocol SocketGetProtocol(Socket socket);
	[LinkName("g_socket_get_remote_address")]
	public static extern SocketAddress SocketGetRemoteAddress(Socket socket);
	[LinkName("g_socket_get_socket_type")]
	public static extern SocketType SocketGetSocketType(Socket socket);
	[LinkName("g_socket_get_timeout")]
	public static extern c_uint SocketGetTimeout(Socket socket);
	[LinkName("g_socket_get_ttl")]
	public static extern c_uint SocketGetTtl(Socket socket);
	[LinkName("g_socket_is_closed")]
	public static extern c_int SocketIsClosed(Socket socket);
	[LinkName("g_socket_is_connected")]
	public static extern c_int SocketIsConnected(Socket socket);
	[LinkName("g_socket_join_multicast_group")]
	public static extern c_int SocketJoinMulticastGroup(Socket socket, InetAddress group, c_int source_specific, char8* iface);
	[LinkName("g_socket_join_multicast_group_ssm")]
	public static extern c_int SocketJoinMulticastGroupSsm(Socket socket, InetAddress group, InetAddress source_specific, char8* iface);
	[LinkName("g_socket_leave_multicast_group")]
	public static extern c_int SocketLeaveMulticastGroup(Socket socket, InetAddress group, c_int source_specific, char8* iface);
	[LinkName("g_socket_leave_multicast_group_ssm")]
	public static extern c_int SocketLeaveMulticastGroupSsm(Socket socket, InetAddress group, InetAddress source_specific, char8* iface);
	[LinkName("g_socket_listen")]
	public static extern c_int SocketListen(Socket socket);
	[LinkName("g_socket_receive")]
	public static extern c_long SocketReceive(Socket socket, c_ulong size, Cancellable cancellable);
	[LinkName("g_socket_receive_from")]
	public static extern c_long SocketReceiveFrom(Socket socket, SocketAddress address, c_ulong size, Cancellable cancellable);
	[LinkName("g_socket_receive_message")]
	public static extern c_long SocketReceiveMessage(Socket socket, SocketAddress address, c_int num_vectors, c_int num_messages, c_int flags, Cancellable cancellable);
	[LinkName("g_socket_receive_messages")]
	public static extern c_int SocketReceiveMessages(Socket socket, c_uint num_messages, c_int flags, Cancellable cancellable);
	[LinkName("g_socket_receive_with_blocking")]
	public static extern c_long SocketReceiveWithBlocking(Socket socket, c_ulong size, c_int blocking, Cancellable cancellable);
	[LinkName("g_socket_send")]
	public static extern c_long SocketSend(Socket socket, c_ulong size, Cancellable cancellable);
	[LinkName("g_socket_send_message")]
	public static extern c_long SocketSendMessage(Socket socket, SocketAddress address, c_int num_vectors, c_int num_messages, c_int flags, Cancellable cancellable);
	[LinkName("g_socket_send_message_with_timeout")]
	public static extern PollableReturn SocketSendMessageWithTimeout(Socket socket, SocketAddress address, c_int num_vectors, c_int num_messages, c_int flags, c_longlong timeout_us, c_ulong bytes_written, Cancellable cancellable);
	[LinkName("g_socket_send_messages")]
	public static extern c_int SocketSendMessages(Socket socket, c_uint num_messages, c_int flags, Cancellable cancellable);
	[LinkName("g_socket_send_to")]
	public static extern c_long SocketSendTo(Socket socket, SocketAddress address, c_ulong size, Cancellable cancellable);
	[LinkName("g_socket_send_with_blocking")]
	public static extern c_long SocketSendWithBlocking(Socket socket, c_ulong size, c_int blocking, Cancellable cancellable);
	[LinkName("g_socket_set_blocking")]
	public static extern void SocketSetBlocking(Socket socket, c_int blocking);
	[LinkName("g_socket_set_broadcast")]
	public static extern void SocketSetBroadcast(Socket socket, c_int broadcast);
	[LinkName("g_socket_set_keepalive")]
	public static extern void SocketSetKeepalive(Socket socket, c_int keepalive);
	[LinkName("g_socket_set_listen_backlog")]
	public static extern void SocketSetListenBacklog(Socket socket, c_int backlog);
	[LinkName("g_socket_set_multicast_loopback")]
	public static extern void SocketSetMulticastLoopback(Socket socket, c_int loopback);
	[LinkName("g_socket_set_multicast_ttl")]
	public static extern void SocketSetMulticastTtl(Socket socket, c_uint ttl);
	[LinkName("g_socket_set_option")]
	public static extern c_int SocketSetOption(Socket socket, c_int level, c_int optname, c_int value);
	[LinkName("g_socket_set_timeout")]
	public static extern void SocketSetTimeout(Socket socket, c_uint timeout);
	[LinkName("g_socket_set_ttl")]
	public static extern void SocketSetTtl(Socket socket, c_uint ttl);
	[LinkName("g_socket_shutdown")]
	public static extern c_int SocketShutdown(Socket socket, c_int shutdown_read, c_int shutdown_write);
	[LinkName("g_socket_speaks_ipv4")]
	public static extern c_int SocketSpeaksIpv4(Socket socket);
	[CRepr]
	public struct SocketAddress;
	[LinkName("g_socket_address_new_from_native")]
	public static extern SocketAddress SocketAddressNewFromNative(void* native, c_ulong len);
	[LinkName("g_socket_address_get_family")]
	public static extern SocketFamily SocketAddressGetFamily(SocketAddress address);
	[LinkName("g_socket_address_get_native_size")]
	public static extern c_long SocketAddressGetNativeSize(SocketAddress address);
	[LinkName("g_socket_address_to_native")]
	public static extern c_int SocketAddressToNative(SocketAddress address, void* dest, c_ulong destlen);
	[CRepr]
	public struct SocketAddressClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct SocketAddressEnumerator;
	[LinkName("g_socket_address_enumerator_next")]
	public static extern SocketAddress SocketAddressEnumeratorNext(SocketAddressEnumerator enumerator, Cancellable cancellable);
	[LinkName("g_socket_address_enumerator_next_async")]
	public static extern void SocketAddressEnumeratorNextAsync(SocketAddressEnumerator enumerator, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_address_enumerator_next_finish")]
	public static extern SocketAddress SocketAddressEnumeratorNextFinish(SocketAddressEnumerator enumerator, AsyncResult result);
	[CRepr]
	public struct SocketAddressEnumeratorClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct SocketClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct SocketClient;
	[LinkName("g_socket_client_new")]
	public static extern SocketClient SocketClientNew();
	[LinkName("g_socket_client_add_application_proxy")]
	public static extern void SocketClientAddApplicationProxy(SocketClient client, char8* protocol);
	[LinkName("g_socket_client_connect")]
	public static extern SocketConnection SocketClientConnect(SocketClient client, SocketConnectable connectable, Cancellable cancellable);
	[LinkName("g_socket_client_connect_async")]
	public static extern void SocketClientConnectAsync(SocketClient client, SocketConnectable connectable, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_client_connect_finish")]
	public static extern SocketConnection SocketClientConnectFinish(SocketClient client, AsyncResult result);
	[LinkName("g_socket_client_connect_to_host")]
	public static extern SocketConnection SocketClientConnectToHost(SocketClient client, char8* host_and_port, c_ushort default_port, Cancellable cancellable);
	[LinkName("g_socket_client_connect_to_host_async")]
	public static extern void SocketClientConnectToHostAsync(SocketClient client, char8* host_and_port, c_ushort default_port, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_client_connect_to_host_finish")]
	public static extern SocketConnection SocketClientConnectToHostFinish(SocketClient client, AsyncResult result);
	[LinkName("g_socket_client_connect_to_service")]
	public static extern SocketConnection SocketClientConnectToService(SocketClient client, char8* domain, char8* service, Cancellable cancellable);
	[LinkName("g_socket_client_connect_to_service_async")]
	public static extern void SocketClientConnectToServiceAsync(SocketClient client, char8* domain, char8* service, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_client_connect_to_service_finish")]
	public static extern SocketConnection SocketClientConnectToServiceFinish(SocketClient client, AsyncResult result);
	[LinkName("g_socket_client_connect_to_uri")]
	public static extern SocketConnection SocketClientConnectToUri(SocketClient client, char8* uri, c_ushort default_port, Cancellable cancellable);
	[LinkName("g_socket_client_connect_to_uri_async")]
	public static extern void SocketClientConnectToUriAsync(SocketClient client, char8* uri, c_ushort default_port, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_client_connect_to_uri_finish")]
	public static extern SocketConnection SocketClientConnectToUriFinish(SocketClient client, AsyncResult result);
	[LinkName("g_socket_client_get_enable_proxy")]
	public static extern c_int SocketClientGetEnableProxy(SocketClient client);
	[LinkName("g_socket_client_get_family")]
	public static extern SocketFamily SocketClientGetFamily(SocketClient client);
	[LinkName("g_socket_client_get_local_address")]
	public static extern SocketAddress SocketClientGetLocalAddress(SocketClient client);
	[LinkName("g_socket_client_get_protocol")]
	public static extern SocketProtocol SocketClientGetProtocol(SocketClient client);
	[LinkName("g_socket_client_get_proxy_resolver")]
	public static extern ProxyResolver SocketClientGetProxyResolver(SocketClient client);
	[LinkName("g_socket_client_get_socket_type")]
	public static extern SocketType SocketClientGetSocketType(SocketClient client);
	[LinkName("g_socket_client_get_timeout")]
	public static extern c_uint SocketClientGetTimeout(SocketClient client);
	[LinkName("g_socket_client_get_tls")]
	public static extern c_int SocketClientGetTls(SocketClient client);
	[LinkName("g_socket_client_get_tls_validation_flags")]
	public static extern TlsCertificateFlags SocketClientGetTlsValidationFlags(SocketClient client);
	[LinkName("g_socket_client_set_enable_proxy")]
	public static extern void SocketClientSetEnableProxy(SocketClient client, c_int enable);
	[LinkName("g_socket_client_set_family")]
	public static extern void SocketClientSetFamily(SocketClient client, SocketFamily family);
	[LinkName("g_socket_client_set_local_address")]
	public static extern void SocketClientSetLocalAddress(SocketClient client, SocketAddress address);
	[LinkName("g_socket_client_set_protocol")]
	public static extern void SocketClientSetProtocol(SocketClient client, SocketProtocol protocol);
	[LinkName("g_socket_client_set_proxy_resolver")]
	public static extern void SocketClientSetProxyResolver(SocketClient client, ProxyResolver proxy_resolver);
	[LinkName("g_socket_client_set_socket_type")]
	public static extern void SocketClientSetSocketType(SocketClient client, SocketType type);
	[LinkName("g_socket_client_set_timeout")]
	public static extern void SocketClientSetTimeout(SocketClient client, c_uint timeout);
	[LinkName("g_socket_client_set_tls")]
	public static extern void SocketClientSetTls(SocketClient client, c_int tls);
	[LinkName("g_socket_client_set_tls_validation_flags")]
	public static extern void SocketClientSetTlsValidationFlags(SocketClient client, TlsCertificateFlags flags);
	[CRepr]
	public struct SocketClientClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum SocketClientEvent : c_int
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
	public struct SocketClientPrivate
	{
	}
	[CRepr]
	public struct SocketConnectable
	{
		public function SocketAddressEnumerator(SocketConnectable connectable) enumerate;

		public function SocketAddressEnumerator(SocketConnectable connectable) proxy_enumerate;

		public function char8*(SocketConnectable connectable) to_string;
	}
	[CRepr]
	public struct SocketConnectableIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct SocketConnection;
	[LinkName("g_socket_connection_connect")]
	public static extern c_int SocketConnectionConnect(SocketConnection connection, SocketAddress address, Cancellable cancellable);
	[LinkName("g_socket_connection_connect_async")]
	public static extern void SocketConnectionConnectAsync(SocketConnection connection, SocketAddress address, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_connection_connect_finish")]
	public static extern c_int SocketConnectionConnectFinish(SocketConnection connection, AsyncResult result);
	[LinkName("g_socket_connection_get_local_address")]
	public static extern SocketAddress SocketConnectionGetLocalAddress(SocketConnection connection);
	[LinkName("g_socket_connection_get_remote_address")]
	public static extern SocketAddress SocketConnectionGetRemoteAddress(SocketConnection connection);
	[LinkName("g_socket_connection_get_socket")]
	public static extern Socket SocketConnectionGetSocket(SocketConnection connection);
	[LinkName("g_socket_connection_is_connected")]
	public static extern c_int SocketConnectionIsConnected(SocketConnection connection);
	[CRepr]
	public struct SocketConnectionClass
	{
		IOStreamClass parent_class;
	}
	[CRepr]
	public struct SocketConnectionPrivate
	{
	}
	[CRepr]
	public struct SocketControlMessage;
	[LinkName("g_socket_control_message_get_level")]
	public static extern c_int SocketControlMessageGetLevel(SocketControlMessage message);
	[LinkName("g_socket_control_message_get_msg_type")]
	public static extern c_int SocketControlMessageGetMstype(SocketControlMessage message);
	[LinkName("g_socket_control_message_get_size")]
	public static extern c_ulong SocketControlMessageGetSize(SocketControlMessage message);
	[LinkName("g_socket_control_message_serialize")]
	public static extern void SocketControlMessageSerialize(SocketControlMessage message, void* data);
	[CRepr]
	public struct SocketControlMessageClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct SocketControlMessagePrivate
	{
	}
	public enum SocketFamily : c_int
	{
		G_SOCKET_FAMILY_INVALID,
		G_SOCKET_FAMILY_UNIX,
		G_SOCKET_FAMILY_IPV4,
		G_SOCKET_FAMILY_IPV6
	}
	[CRepr]
	public struct SocketListener;
	[LinkName("g_socket_listener_new")]
	public static extern SocketListener SocketListenerNew();
	[LinkName("g_socket_listener_accept")]
	public static extern SocketConnection SocketListenerAccept(SocketListener listener, GObject.Object source_object, Cancellable cancellable);
	[LinkName("g_socket_listener_accept_async")]
	public static extern void SocketListenerAcceptAsync(SocketListener listener, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_listener_accept_finish")]
	public static extern SocketConnection SocketListenerAcceptFinish(SocketListener listener, AsyncResult result, GObject.Object source_object);
	[LinkName("g_socket_listener_accept_socket")]
	public static extern Socket SocketListenerAcceptSocket(SocketListener listener, GObject.Object source_object, Cancellable cancellable);
	[LinkName("g_socket_listener_accept_socket_async")]
	public static extern void SocketListenerAcceptSocketAsync(SocketListener listener, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_listener_accept_socket_finish")]
	public static extern Socket SocketListenerAcceptSocketFinish(SocketListener listener, AsyncResult result, GObject.Object source_object);
	[LinkName("g_socket_listener_add_address")]
	public static extern c_int SocketListenerAddAddress(SocketListener listener, SocketAddress address, SocketType type, SocketProtocol protocol, GObject.Object source_object, SocketAddress effective_address);
	[LinkName("g_socket_listener_add_any_inet_port")]
	public static extern c_ushort SocketListenerAddAnyInetPort(SocketListener listener, GObject.Object source_object);
	[LinkName("g_socket_listener_add_inet_port")]
	public static extern c_int SocketListenerAddInetPort(SocketListener listener, c_ushort port, GObject.Object source_object);
	[LinkName("g_socket_listener_add_socket")]
	public static extern c_int SocketListenerAddSocket(SocketListener listener, Socket socket, GObject.Object source_object);
	[LinkName("g_socket_listener_close")]
	public static extern void SocketListenerClose(SocketListener listener);
	[LinkName("g_socket_listener_set_backlog")]
	public static extern void SocketListenerSetBacklog(SocketListener listener, c_int listen_backlog);
	[CRepr]
	public struct SocketListenerClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum SocketListenerEvent : c_int
	{
		G_SOCKET_LISTENER_BINDING,
		G_SOCKET_LISTENER_BOUND,
		G_SOCKET_LISTENER_LISTENING,
		G_SOCKET_LISTENER_LISTENED
	}
	[CRepr]
	public struct SocketListenerPrivate
	{
	}
	[CRepr]
	public struct SocketMsgFlags
	{
		public const int G_SOCKET_MSG_NONE = 0;
		public const int G_SOCKET_MSG_OOB = 1;
		public const int G_SOCKET_MSG_PEEK = 2;
		public const int G_SOCKET_MSG_DONTROUTE = 4;
	}
	[CRepr]
	public struct SocketPrivate
	{
	}
	public enum SocketProtocol : c_int
	{
		G_SOCKET_PROTOCOL_UNKNOWN,
		G_SOCKET_PROTOCOL_DEFAULT,
		G_SOCKET_PROTOCOL_TCP,
		G_SOCKET_PROTOCOL_UDP,
		G_SOCKET_PROTOCOL_SCTP
	}
	[CRepr]
	public struct SocketService;
	[LinkName("g_socket_service_new")]
	public static extern SocketService SocketServiceNew();
	[LinkName("g_socket_service_is_active")]
	public static extern c_int SocketServiceIsActive(SocketService service);
	[LinkName("g_socket_service_start")]
	public static extern void SocketServiceStart(SocketService service);
	[LinkName("g_socket_service_stop")]
	public static extern void SocketServiceStop(SocketService service);
	[CRepr]
	public struct SocketServiceClass
	{
		SocketListenerClass parent_class;
	}
	[CRepr]
	public struct SocketServicePrivate
	{
	}
	public function c_int SocketSourceFunc(Socket socket, GLib.IOCondition condition, void* data);
	public enum SocketType : c_int
	{
		G_SOCKET_TYPE_INVALID,
		G_SOCKET_TYPE_STREAM,
		G_SOCKET_TYPE_DATAGRAM,
		G_SOCKET_TYPE_SEQPACKET
	}
	[CRepr]
	public struct SrvTarget
	{
	}
	[CRepr]
	public struct StaticResource
	{
		c_uchar data;
		c_ulong data_len;
		Resource resource;
		StaticResource* next;
		void* padding;
	}
	[CRepr]
	public struct Subprocess;
	[LinkName("g_subprocess_new")]
	public static extern Subprocess SubprocessNew(SubprocessFlags flags, GLib.Error error, char8* argv0);
	[LinkName("g_subprocess_newv")]
	public static extern Subprocess SubprocessNewv(SubprocessFlags flags);
	[LinkName("g_subprocess_communicate")]
	public static extern c_int SubprocessCommunicate(Subprocess subprocess, GLib.Bytes stdin_buf, Cancellable cancellable, GLib.Bytes stdout_buf, GLib.Bytes stderr_buf);
	[LinkName("g_subprocess_communicate_async")]
	public static extern void SubprocessCommunicateAsync(Subprocess subprocess, GLib.Bytes stdin_buf, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_subprocess_communicate_finish")]
	public static extern c_int SubprocessCommunicateFinish(Subprocess subprocess, AsyncResult result, GLib.Bytes stdout_buf, GLib.Bytes stderr_buf);
	[LinkName("g_subprocess_communicate_utf8")]
	public static extern c_int SubprocessCommunicateUtf8(Subprocess subprocess, char8* stdin_buf, Cancellable cancellable, char8* stdout_buf, char8* stderr_buf);
	[LinkName("g_subprocess_communicate_utf8_async")]
	public static extern void SubprocessCommunicateUtf8Async(Subprocess subprocess, char8* stdin_buf, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_subprocess_communicate_utf8_finish")]
	public static extern c_int SubprocessCommunicateUtf8Finish(Subprocess subprocess, AsyncResult result, char8* stdout_buf, char8* stderr_buf);
	[LinkName("g_subprocess_force_exit")]
	public static extern void SubprocessForceExit(Subprocess subprocess);
	[LinkName("g_subprocess_get_exit_status")]
	public static extern c_int SubprocessGetExitStatus(Subprocess subprocess);
	[LinkName("g_subprocess_get_identifier")]
	public static extern char8* SubprocessGetIdentifier(Subprocess subprocess);
	[LinkName("g_subprocess_get_if_exited")]
	public static extern c_int SubprocessGetIfExited(Subprocess subprocess);
	[LinkName("g_subprocess_get_if_signaled")]
	public static extern c_int SubprocessGetIfSignaled(Subprocess subprocess);
	[LinkName("g_subprocess_get_status")]
	public static extern c_int SubprocessGetStatus(Subprocess subprocess);
	[LinkName("g_subprocess_get_stderr_pipe")]
	public static extern InputStream SubprocessGetStderrPipe(Subprocess subprocess);
	[LinkName("g_subprocess_get_stdin_pipe")]
	public static extern OutputStream SubprocessGetStdinPipe(Subprocess subprocess);
	[LinkName("g_subprocess_get_stdout_pipe")]
	public static extern InputStream SubprocessGetStdoutPipe(Subprocess subprocess);
	[LinkName("g_subprocess_get_successful")]
	public static extern c_int SubprocessGetSuccessful(Subprocess subprocess);
	[LinkName("g_subprocess_get_term_sig")]
	public static extern c_int SubprocessGetTermSig(Subprocess subprocess);
	[LinkName("g_subprocess_send_signal")]
	public static extern void SubprocessSendSignal(Subprocess subprocess, c_int signal_num);
	[LinkName("g_subprocess_wait")]
	public static extern c_int SubprocessWait(Subprocess subprocess, Cancellable cancellable);
	[LinkName("g_subprocess_wait_async")]
	public static extern void SubprocessWaitAsync(Subprocess subprocess, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_subprocess_wait_check")]
	public static extern c_int SubprocessWaitCheck(Subprocess subprocess, Cancellable cancellable);
	[LinkName("g_subprocess_wait_check_async")]
	public static extern void SubprocessWaitCheckAsync(Subprocess subprocess, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_subprocess_wait_check_finish")]
	public static extern c_int SubprocessWaitCheckFinish(Subprocess subprocess, AsyncResult result);
	[LinkName("g_subprocess_wait_finish")]
	public static extern c_int SubprocessWaitFinish(Subprocess subprocess, AsyncResult result);
	[CRepr]
	public struct SubprocessFlags
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
	public struct SubprocessLauncher;
	[LinkName("g_subprocess_launcher_new")]
	public static extern SubprocessLauncher SubprocessLauncherNew(SubprocessFlags flags);
	[LinkName("g_subprocess_launcher_close")]
	public static extern void SubprocessLauncherClose(SubprocessLauncher self);
	[LinkName("g_subprocess_launcher_getenv")]
	public static extern char8* SubprocessLauncherGetenv(SubprocessLauncher self, char8* variable);
	[LinkName("g_subprocess_launcher_set_child_setup")]
	public static extern void SubprocessLauncherSetChildSetup(SubprocessLauncher self, GLib.SpawnChildSetupFunc child_setup, void* user_data, GLib.DestroyNotify destroy_notify);
	[LinkName("g_subprocess_launcher_set_cwd")]
	public static extern void SubprocessLauncherSetCwd(SubprocessLauncher self, char8* cwd);
	[LinkName("g_subprocess_launcher_set_environ")]
	public static extern void SubprocessLauncherSetEnviron(SubprocessLauncher self);
	[LinkName("g_subprocess_launcher_set_flags")]
	public static extern void SubprocessLauncherSetFlags(SubprocessLauncher self, SubprocessFlags flags);
	[LinkName("g_subprocess_launcher_set_stderr_file_path")]
	public static extern void SubprocessLauncherSetStderrFilePath(SubprocessLauncher self, char8* path);
	[LinkName("g_subprocess_launcher_set_stdin_file_path")]
	public static extern void SubprocessLauncherSetStdinFilePath(SubprocessLauncher self, char8* path);
	[LinkName("g_subprocess_launcher_set_stdout_file_path")]
	public static extern void SubprocessLauncherSetStdoutFilePath(SubprocessLauncher self, char8* path);
	[LinkName("g_subprocess_launcher_setenv")]
	public static extern void SubprocessLauncherSetenv(SubprocessLauncher self, char8* variable, char8* value, c_int overwrite);
	[LinkName("g_subprocess_launcher_spawn")]
	public static extern Subprocess SubprocessLauncherSpawn(SubprocessLauncher self, GLib.Error error, char8* argv0);
	[LinkName("g_subprocess_launcher_spawnv")]
	public static extern Subprocess SubprocessLauncherSpawnv(SubprocessLauncher self);
	[LinkName("g_subprocess_launcher_take_fd")]
	public static extern void SubprocessLauncherTakeFd(SubprocessLauncher self, c_int source_fd, c_int target_fd);
	[LinkName("g_subprocess_launcher_take_stderr_fd")]
	public static extern void SubprocessLauncherTakeStderrFd(SubprocessLauncher self, c_int fd);
	[LinkName("g_subprocess_launcher_take_stdin_fd")]
	public static extern void SubprocessLauncherTakeStdinFd(SubprocessLauncher self, c_int fd);
	[LinkName("g_subprocess_launcher_take_stdout_fd")]
	public static extern void SubprocessLauncherTakeStdoutFd(SubprocessLauncher self, c_int fd);
	[LinkName("g_subprocess_launcher_unsetenv")]
	public static extern void SubprocessLauncherUnsetenv(SubprocessLauncher self, char8* variable);
	[CRepr]
	public struct Task;
	[LinkName("g_task_new")]
	public static extern Task TaskNew(GObject.Object source_object, Cancellable cancellable, AsyncReadyCallback callback, void* callback_data);
	[LinkName("g_task_attach_source")]
	public static extern void TaskAttachSource(Task task, GLib.Source source, GLib.SourceFunc callback);
	[LinkName("g_task_get_cancellable")]
	public static extern Cancellable TaskGetCancellable(Task task);
	[LinkName("g_task_get_check_cancellable")]
	public static extern c_int TaskGetCheckCancellable(Task task);
	[LinkName("g_task_get_completed")]
	public static extern c_int TaskGetCompleted(Task task);
	[LinkName("g_task_get_context")]
	public static extern GLib.MainContext TaskGetContext(Task task);
	[LinkName("g_task_get_name")]
	public static extern char8* TaskGetName(Task task);
	[LinkName("g_task_get_priority")]
	public static extern c_int TaskGetPriority(Task task);
	[LinkName("g_task_get_return_on_cancel")]
	public static extern c_int TaskGetReturnOnCancel(Task task);
	[LinkName("g_task_get_source_object")]
	public static extern GObject.Object TaskGetSourceObject(Task task);
	[LinkName("g_task_get_source_tag")]
	public static extern void* TaskGetSourceTag(Task task);
	[LinkName("g_task_get_task_data")]
	public static extern void* TaskGetTaskData(Task task);
	[LinkName("g_task_had_error")]
	public static extern c_int TaskHadError(Task task);
	[LinkName("g_task_propagate_boolean")]
	public static extern c_int TaskPropagateBoolean(Task task);
	[LinkName("g_task_propagate_int")]
	public static extern c_long TaskPropagateInt(Task task);
	[LinkName("g_task_propagate_pointer")]
	public static extern void* TaskPropagatePointer(Task task);
	[LinkName("g_task_propagate_value")]
	public static extern c_int TaskPropagateValue(Task task, GObject.Value value);
	[LinkName("g_task_return_boolean")]
	public static extern void TaskReturnBoolean(Task task, c_int result);
	[LinkName("g_task_return_error")]
	public static extern void TaskReturnError(Task task, GLib.Error error);
	[LinkName("g_task_return_error_if_cancelled")]
	public static extern c_int TaskReturnErrorIfCancelled(Task task);
	[LinkName("g_task_return_int")]
	public static extern void TaskReturnInt(Task task, c_long result);
	[LinkName("g_task_return_new_error")]
	public static extern void TaskReturnNewError(Task task, GLib.Quark domain, c_int code, char8* format);
	[LinkName("g_task_return_pointer")]
	public static extern void TaskReturnPointer(Task task, void* result, GLib.DestroyNotify result_destroy);
	[LinkName("g_task_return_value")]
	public static extern void TaskReturnValue(Task task, GObject.Value result);
	[LinkName("g_task_run_in_thread")]
	public static extern void TaskRunInThread(Task task, TaskThreadFunc task_func);
	[LinkName("g_task_run_in_thread_sync")]
	public static extern void TaskRunInThreadSync(Task task, TaskThreadFunc task_func);
	[LinkName("g_task_set_check_cancellable")]
	public static extern void TaskSetCheckCancellable(Task task, c_int check_cancellable);
	[LinkName("g_task_set_name")]
	public static extern void TaskSetName(Task task, char8* name);
	[LinkName("g_task_set_priority")]
	public static extern void TaskSetPriority(Task task, c_int priority);
	[LinkName("g_task_set_return_on_cancel")]
	public static extern c_int TaskSetReturnOnCancel(Task task, c_int return_on_cancel);
	[LinkName("g_task_set_source_tag")]
	public static extern void TaskSetSourceTag(Task task, void* source_tag);
	[LinkName("g_task_set_static_name")]
	public static extern void TaskSetStaticName(Task task, char8* name);
	[LinkName("g_task_set_task_data")]
	public static extern void TaskSetTaskData(Task task, void* task_data, GLib.DestroyNotify task_data_destroy);
	[CRepr]
	public struct TaskClass
	{
	}
	public function void TaskThreadFunc(Task task, GObject.Object source_object, void* task_data, Cancellable cancellable);
	[CRepr]
	public struct TcpConnection;
	[LinkName("g_tcp_connection_get_graceful_disconnect")]
	public static extern c_int TcpConnectionGetGracefulDisconnect(TcpConnection connection);
	[LinkName("g_tcp_connection_set_graceful_disconnect")]
	public static extern void TcpConnectionSetGracefulDisconnect(TcpConnection connection, c_int graceful_disconnect);
	[CRepr]
	public struct TcpConnectionClass
	{
		SocketConnectionClass parent_class;
	}
	[CRepr]
	public struct TcpConnectionPrivate
	{
	}
	[CRepr]
	public struct TcpWrapperConnection;
	[LinkName("g_tcp_wrapper_connection_new")]
	public static extern SocketConnection TcpWrapperConnectionNew(IOStream base_io_stream, Socket socket);
	[LinkName("g_tcp_wrapper_connection_get_base_io_stream")]
	public static extern IOStream TcpWrapperConnectionGetBaseIoStream(TcpWrapperConnection conn);
	[CRepr]
	public struct TcpWrapperConnectionClass
	{
		TcpConnectionClass parent_class;
	}
	[CRepr]
	public struct TcpWrapperConnectionPrivate
	{
	}
	[CRepr]
	public struct TestDBus;
	[LinkName("g_test_dbus_new")]
	public static extern TestDBus TestDbusNew(TestDBusFlags flags);
	[LinkName("g_test_dbus_add_service_dir")]
	public static extern void TestDbusAddServiceDir(TestDBus self, char8* path);
	[LinkName("g_test_dbus_down")]
	public static extern void TestDbusDown(TestDBus self);
	[LinkName("g_test_dbus_get_bus_address")]
	public static extern char8* TestDbusGetBusAddress(TestDBus self);
	[LinkName("g_test_dbus_get_flags")]
	public static extern TestDBusFlags TestDbusGetFlags(TestDBus self);
	[LinkName("g_test_dbus_stop")]
	public static extern void TestDbusStop(TestDBus self);
	[LinkName("g_test_dbus_up")]
	public static extern void TestDbusUp(TestDBus self);
	[CRepr]
	public struct TestDBusFlags
	{
		public const int G_TEST_DBUS_NONE = 0;
	}
	[CRepr]
	public struct ThemedIcon;
	[LinkName("g_themed_icon_new")]
	public static extern ThemedIcon ThemedIconNew(char8* iconname);
	[LinkName("g_themed_icon_new_from_names")]
	public static extern ThemedIcon ThemedIconNewFromNames(c_int len);
	[LinkName("g_themed_icon_new_with_default_fallbacks")]
	public static extern ThemedIcon ThemedIconNewWithDefaultFallbacks(char8* iconname);
	[LinkName("g_themed_icon_append_name")]
	public static extern void ThemedIconAppendName(ThemedIcon icon, char8* iconname);
	[LinkName("g_themed_icon_get_names")]
	public static extern char8* ThemedIconGetNames(ThemedIcon icon);
	[LinkName("g_themed_icon_prepend_name")]
	public static extern void ThemedIconPrependName(ThemedIcon icon, char8* iconname);
	[CRepr]
	public struct ThemedIconClass
	{
	}
	[CRepr]
	public struct ThreadedSocketService;
	[LinkName("g_threaded_socket_service_new")]
	public static extern SocketService ThreadedSocketServiceNew(c_int max_threads);
	[CRepr]
	public struct ThreadedSocketServiceClass
	{
		SocketServiceClass parent_class;
	}
	[CRepr]
	public struct ThreadedSocketServicePrivate
	{
	}
	public enum TlsAuthenticationMode : c_int
	{
		G_TLS_AUTHENTICATION_NONE,
		G_TLS_AUTHENTICATION_REQUESTED,
		G_TLS_AUTHENTICATION_REQUIRED
	}
	[CRepr]
	public struct TlsBackend
	{
		public function TlsDatabase(TlsBackend backend) get_default_database;

		public function c_int(TlsBackend backend) supports_dtls;

		public function c_int(TlsBackend backend) supports_tls;
	}
	[CRepr]
	public struct TlsBackendInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct TlsCertificate;
	[LinkName("g_tls_certificate_new_from_file")]
	public static extern TlsCertificate TlsCertificateNewFromFile(char8* file);
	[LinkName("g_tls_certificate_new_from_file_with_password")]
	public static extern TlsCertificate TlsCertificateNewFromFileWithPassword(char8* file, char8* password);
	[LinkName("g_tls_certificate_new_from_files")]
	public static extern TlsCertificate TlsCertificateNewFromFiles(char8* cert_file, char8* key_file);
	[LinkName("g_tls_certificate_new_from_pem")]
	public static extern TlsCertificate TlsCertificateNewFromPem(char8* data, c_long length);
	[LinkName("g_tls_certificate_new_from_pkcs11_uris")]
	public static extern TlsCertificate TlsCertificateNewFromPkcs11Uris(char8* pkcs11_uri, char8* private_key_pkcs11_uri);
	[LinkName("g_tls_certificate_new_from_pkcs12")]
	public static extern TlsCertificate TlsCertificateNewFromPkcs12(c_ulong length, char8* password);
	[LinkName("g_tls_certificate_get_dns_names")]
	public static extern GLib.Bytes TlsCertificateGetDnsNames(TlsCertificate cert);
	[LinkName("g_tls_certificate_get_ip_addresses")]
	public static extern InetAddress TlsCertificateGetIpAddresses(TlsCertificate cert);
	[LinkName("g_tls_certificate_get_issuer")]
	public static extern TlsCertificate TlsCertificateGetIssuer(TlsCertificate cert);
	[LinkName("g_tls_certificate_get_issuer_name")]
	public static extern char8* TlsCertificateGetIssuerName(TlsCertificate cert);
	[LinkName("g_tls_certificate_get_not_valid_after")]
	public static extern GLib.DateTime TlsCertificateGetNotValidAfter(TlsCertificate cert);
	[LinkName("g_tls_certificate_get_not_valid_before")]
	public static extern GLib.DateTime TlsCertificateGetNotValidBefore(TlsCertificate cert);
	[LinkName("g_tls_certificate_get_subject_name")]
	public static extern char8* TlsCertificateGetSubjectName(TlsCertificate cert);
	[LinkName("g_tls_certificate_is_same")]
	public static extern c_int TlsCertificateIsSame(TlsCertificate cert_one, TlsCertificate cert_two);
	[LinkName("g_tls_certificate_verify")]
	public static extern TlsCertificateFlags TlsCertificateVerify(TlsCertificate cert, SocketConnectable identity, TlsCertificate trusted_ca);
	[CRepr]
	public struct TlsCertificateClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct TlsCertificateFlags
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
	public struct TlsCertificatePrivate
	{
	}
	public enum TlsCertificateRequestFlags : c_int
	{
		G_TLS_CERTIFICATE_REQUEST_NONE
	}
	public enum TlsChannelBindingError : c_int
	{
		G_TLS_CHANNEL_BINDING_ERROR_NOT_IMPLEMENTED,
		G_TLS_CHANNEL_BINDING_ERROR_INVALID_STATE,
		G_TLS_CHANNEL_BINDING_ERROR_NOT_AVAILABLE,
		G_TLS_CHANNEL_BINDING_ERROR_NOT_SUPPORTED,
		G_TLS_CHANNEL_BINDING_ERROR_GENERAL_ERROR
	}
	public enum TlsChannelBindingType : c_int
	{
		G_TLS_CHANNEL_BINDING_TLS_UNIQUE,
		G_TLS_CHANNEL_BINDING_TLS_SERVER_END_POINT,
		G_TLS_CHANNEL_BINDING_TLS_EXPORTER
	}
	[CRepr]
	public struct TlsClientConnection
	{
		public function void(TlsClientConnection conn, TlsClientConnection source) copy_session_state;
	}
	[CRepr]
	public struct TlsClientConnectionInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct TlsConnection;
	[LinkName("g_tls_connection_emit_accept_certificate")]
	public static extern c_int TlsConnectionEmitAcceptCertificate(TlsConnection conn, TlsCertificate peer_cert, TlsCertificateFlags errors);
	[LinkName("g_tls_connection_get_certificate")]
	public static extern TlsCertificate TlsConnectionGetCertificate(TlsConnection conn);
	[LinkName("g_tls_connection_get_channel_binding_data")]
	public static extern c_int TlsConnectionGetChannelBindindata(TlsConnection conn, TlsChannelBindingType type);
	[LinkName("g_tls_connection_get_ciphersuite_name")]
	public static extern char8* TlsConnectionGetCiphersuiteName(TlsConnection conn);
	[LinkName("g_tls_connection_get_database")]
	public static extern TlsDatabase TlsConnectionGetDatabase(TlsConnection conn);
	[LinkName("g_tls_connection_get_interaction")]
	public static extern TlsInteraction TlsConnectionGetInteraction(TlsConnection conn);
	[LinkName("g_tls_connection_get_negotiated_protocol")]
	public static extern char8* TlsConnectionGetNegotiatedProtocol(TlsConnection conn);
	[LinkName("g_tls_connection_get_peer_certificate")]
	public static extern TlsCertificate TlsConnectionGetPeerCertificate(TlsConnection conn);
	[LinkName("g_tls_connection_get_peer_certificate_errors")]
	public static extern TlsCertificateFlags TlsConnectionGetPeerCertificateErrors(TlsConnection conn);
	[LinkName("g_tls_connection_get_protocol_version")]
	public static extern TlsProtocolVersion TlsConnectionGetProtocolVersion(TlsConnection conn);
	[LinkName("g_tls_connection_get_rehandshake_mode")]
	public static extern TlsRehandshakeMode TlsConnectionGetRehandshakeMode(TlsConnection conn);
	[LinkName("g_tls_connection_get_require_close_notify")]
	public static extern c_int TlsConnectionGetRequireCloseNotify(TlsConnection conn);
	[LinkName("g_tls_connection_get_use_system_certdb")]
	public static extern c_int TlsConnectionGetUseSystemCertdb(TlsConnection conn);
	[LinkName("g_tls_connection_handshake")]
	public static extern c_int TlsConnectionHandshake(TlsConnection conn, Cancellable cancellable);
	[LinkName("g_tls_connection_handshake_async")]
	public static extern void TlsConnectionHandshakeAsync(TlsConnection conn, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_connection_handshake_finish")]
	public static extern c_int TlsConnectionHandshakeFinish(TlsConnection conn, AsyncResult result);
	[LinkName("g_tls_connection_set_advertised_protocols")]
	public static extern void TlsConnectionSetAdvertisedProtocols(TlsConnection conn);
	[LinkName("g_tls_connection_set_certificate")]
	public static extern void TlsConnectionSetCertificate(TlsConnection conn, TlsCertificate certificate);
	[LinkName("g_tls_connection_set_database")]
	public static extern void TlsConnectionSetDatabase(TlsConnection conn, TlsDatabase database);
	[LinkName("g_tls_connection_set_interaction")]
	public static extern void TlsConnectionSetInteraction(TlsConnection conn, TlsInteraction interaction);
	[LinkName("g_tls_connection_set_rehandshake_mode")]
	public static extern void TlsConnectionSetRehandshakeMode(TlsConnection conn, TlsRehandshakeMode mode);
	[LinkName("g_tls_connection_set_require_close_notify")]
	public static extern void TlsConnectionSetRequireCloseNotify(TlsConnection conn, c_int require_close_notify);
	[LinkName("g_tls_connection_set_use_system_certdb")]
	public static extern void TlsConnectionSetUseSystemCertdb(TlsConnection conn, c_int use_system_certdb);
	[CRepr]
	public struct TlsConnectionClass
	{
		IOStreamClass parent_class;
	}
	[CRepr]
	public struct TlsConnectionPrivate
	{
	}
	[CRepr]
	public struct TlsDatabase;
	[LinkName("g_tls_database_create_certificate_handle")]
	public static extern char8* TlsDatabaseCreateCertificateHandle(TlsDatabase self, TlsCertificate certificate);
	[LinkName("g_tls_database_lookup_certificate_for_handle")]
	public static extern TlsCertificate TlsDatabaseLookupCertificateForHandle(TlsDatabase self, char8* handle, TlsInteraction interaction, TlsDatabaseLookupFlags flags, Cancellable cancellable);
	[LinkName("g_tls_database_lookup_certificate_for_handle_async")]
	public static extern void TlsDatabaseLookupCertificateForHandleAsync(TlsDatabase self, char8* handle, TlsInteraction interaction, TlsDatabaseLookupFlags flags, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_database_lookup_certificate_for_handle_finish")]
	public static extern TlsCertificate TlsDatabaseLookupCertificateForHandleFinish(TlsDatabase self, AsyncResult result);
	[LinkName("g_tls_database_lookup_certificate_issuer")]
	public static extern TlsCertificate TlsDatabaseLookupCertificateIssuer(TlsDatabase self, TlsCertificate certificate, TlsInteraction interaction, TlsDatabaseLookupFlags flags, Cancellable cancellable);
	[LinkName("g_tls_database_lookup_certificate_issuer_async")]
	public static extern void TlsDatabaseLookupCertificateIssuerAsync(TlsDatabase self, TlsCertificate certificate, TlsInteraction interaction, TlsDatabaseLookupFlags flags, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_database_lookup_certificate_issuer_finish")]
	public static extern TlsCertificate TlsDatabaseLookupCertificateIssuerFinish(TlsDatabase self, AsyncResult result);
	[LinkName("g_tls_database_lookup_certificates_issued_by")]
	public static extern GLib.List TlsDatabaseLookupCertificatesIssuedBy(TlsDatabase self, TlsInteraction interaction, TlsDatabaseLookupFlags flags, Cancellable cancellable);
	[LinkName("g_tls_database_lookup_certificates_issued_by_async")]
	public static extern void TlsDatabaseLookupCertificatesIssuedByAsync(TlsDatabase self, TlsInteraction interaction, TlsDatabaseLookupFlags flags, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_database_lookup_certificates_issued_by_finish")]
	public static extern GLib.List TlsDatabaseLookupCertificatesIssuedByFinish(TlsDatabase self, AsyncResult result);
	[LinkName("g_tls_database_verify_chain")]
	public static extern TlsCertificateFlags TlsDatabaseVerifyChain(TlsDatabase self, TlsCertificate chain, char8* purpose, SocketConnectable identity, TlsInteraction interaction, TlsDatabaseVerifyFlags flags, Cancellable cancellable);
	[LinkName("g_tls_database_verify_chain_async")]
	public static extern void TlsDatabaseVerifyChainAsync(TlsDatabase self, TlsCertificate chain, char8* purpose, SocketConnectable identity, TlsInteraction interaction, TlsDatabaseVerifyFlags flags, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_database_verify_chain_finish")]
	public static extern TlsCertificateFlags TlsDatabaseVerifyChainFinish(TlsDatabase self, AsyncResult result);
	[CRepr]
	public struct TlsDatabaseClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum TlsDatabaseLookupFlags : c_int
	{
		G_TLS_DATABASE_LOOKUP_NONE,
		G_TLS_DATABASE_LOOKUP_KEYPAIR
	}
	[CRepr]
	public struct TlsDatabasePrivate
	{
	}
	[CRepr]
	public struct TlsDatabaseVerifyFlags
	{
		public const int G_TLS_DATABASE_VERIFY_NONE = 0;
	}
	public enum TlsError : c_int
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
	public struct TlsFileDatabase
	{	}
	[CRepr]
	public struct TlsFileDatabaseInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct TlsInteraction;
	[LinkName("g_tls_interaction_ask_password")]
	public static extern TlsInteractionResult TlsInteractionAskPassword(TlsInteraction interaction, TlsPassword password, Cancellable cancellable);
	[LinkName("g_tls_interaction_ask_password_async")]
	public static extern void TlsInteractionAskPasswordAsync(TlsInteraction interaction, TlsPassword password, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_interaction_ask_password_finish")]
	public static extern TlsInteractionResult TlsInteractionAskPasswordFinish(TlsInteraction interaction, AsyncResult result);
	[LinkName("g_tls_interaction_invoke_ask_password")]
	public static extern TlsInteractionResult TlsInteractionInvokeAskPassword(TlsInteraction interaction, TlsPassword password, Cancellable cancellable);
	[LinkName("g_tls_interaction_invoke_request_certificate")]
	public static extern TlsInteractionResult TlsInteractionInvokeRequestCertificate(TlsInteraction interaction, TlsConnection connection, TlsCertificateRequestFlags flags, Cancellable cancellable);
	[LinkName("g_tls_interaction_request_certificate")]
	public static extern TlsInteractionResult TlsInteractionRequestCertificate(TlsInteraction interaction, TlsConnection connection, TlsCertificateRequestFlags flags, Cancellable cancellable);
	[LinkName("g_tls_interaction_request_certificate_async")]
	public static extern void TlsInteractionRequestCertificateAsync(TlsInteraction interaction, TlsConnection connection, TlsCertificateRequestFlags flags, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_interaction_request_certificate_finish")]
	public static extern TlsInteractionResult TlsInteractionRequestCertificateFinish(TlsInteraction interaction, AsyncResult result);
	[CRepr]
	public struct TlsInteractionClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct TlsInteractionPrivate
	{
	}
	public enum TlsInteractionResult : c_int
	{
		G_TLS_INTERACTION_UNHANDLED,
		G_TLS_INTERACTION_HANDLED,
		G_TLS_INTERACTION_FAILED
	}
	[CRepr]
	public struct TlsPassword;
	[LinkName("g_tls_password_new")]
	public static extern TlsPassword TlsPasswordNew(TlsPasswordFlags flags, char8* description);
	[LinkName("g_tls_password_get_description")]
	public static extern char8* TlsPasswordGetDescription(TlsPassword password);
	[LinkName("g_tls_password_get_flags")]
	public static extern TlsPasswordFlags TlsPasswordGetFlags(TlsPassword password);
	[LinkName("g_tls_password_get_value")]
	public static extern c_uchar TlsPasswordGetValue(TlsPassword password, c_ulong length);
	[LinkName("g_tls_password_get_warning")]
	public static extern char8* TlsPasswordGetWarning(TlsPassword password);
	[LinkName("g_tls_password_set_description")]
	public static extern void TlsPasswordSetDescription(TlsPassword password, char8* description);
	[LinkName("g_tls_password_set_flags")]
	public static extern void TlsPasswordSetFlags(TlsPassword password, TlsPasswordFlags flags);
	[LinkName("g_tls_password_set_value")]
	public static extern void TlsPasswordSetValue(TlsPassword password, c_long length);
	[LinkName("g_tls_password_set_value_full")]
	public static extern void TlsPasswordSetValueFull(TlsPassword password, c_long length, GLib.DestroyNotify destroy);
	[LinkName("g_tls_password_set_warning")]
	public static extern void TlsPasswordSetWarning(TlsPassword password, char8* warning);
	[CRepr]
	public struct TlsPasswordClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct TlsPasswordFlags
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
	public struct TlsPasswordPrivate
	{
	}
	public enum TlsProtocolVersion : c_int
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
	public enum TlsRehandshakeMode : c_int
	{
		G_TLS_REHANDSHAKE_NEVER,
		G_TLS_REHANDSHAKE_SAFELY,
		G_TLS_REHANDSHAKE_UNSAFELY
	}
	[CRepr]
	public struct TlsServerConnection
	{	}
	[CRepr]
	public struct TlsServerConnectionInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct UnixConnection;
	[LinkName("g_unix_connection_receive_credentials")]
	public static extern Credentials UnixConnectionReceiveCredentials(UnixConnection connection, Cancellable cancellable);
	[LinkName("g_unix_connection_receive_credentials_async")]
	public static extern void UnixConnectionReceiveCredentialsAsync(UnixConnection connection, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_unix_connection_receive_credentials_finish")]
	public static extern Credentials UnixConnectionReceiveCredentialsFinish(UnixConnection connection, AsyncResult result);
	[LinkName("g_unix_connection_receive_fd")]
	public static extern c_int UnixConnectionReceiveFd(UnixConnection connection, Cancellable cancellable);
	[LinkName("g_unix_connection_send_credentials")]
	public static extern c_int UnixConnectionSendCredentials(UnixConnection connection, Cancellable cancellable);
	[LinkName("g_unix_connection_send_credentials_async")]
	public static extern void UnixConnectionSendCredentialsAsync(UnixConnection connection, Cancellable cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_unix_connection_send_credentials_finish")]
	public static extern c_int UnixConnectionSendCredentialsFinish(UnixConnection connection, AsyncResult result);
	[LinkName("g_unix_connection_send_fd")]
	public static extern c_int UnixConnectionSendFd(UnixConnection connection, c_int fd, Cancellable cancellable);
	[CRepr]
	public struct UnixConnectionClass
	{
		SocketConnectionClass parent_class;
	}
	[CRepr]
	public struct UnixConnectionPrivate
	{
	}
	[CRepr]
	public struct UnixCredentialsMessage;
	[LinkName("g_unix_credentials_message_new")]
	public static extern SocketControlMessage UnixCredentialsMessageNew();
	[LinkName("g_unix_credentials_message_new_with_credentials")]
	public static extern SocketControlMessage UnixCredentialsMessageNewWithCredentials(Credentials credentials);
	[LinkName("g_unix_credentials_message_get_credentials")]
	public static extern Credentials UnixCredentialsMessageGetCredentials(UnixCredentialsMessage message);
	[CRepr]
	public struct UnixCredentialsMessageClass
	{
		SocketControlMessageClass parent_class;
	}
	[CRepr]
	public struct UnixCredentialsMessagePrivate
	{
	}
	[CRepr]
	public struct UnixFDList;
	[LinkName("g_unix_fd_list_new")]
	public static extern UnixFDList UnixFdListNew();
	[LinkName("g_unix_fd_list_new_from_array")]
	public static extern UnixFDList UnixFdListNewFromArray(c_int n_fds);
	[LinkName("g_unix_fd_list_append")]
	public static extern c_int UnixFdListAppend(UnixFDList list, c_int fd);
	[LinkName("g_unix_fd_list_get")]
	public static extern c_int UnixFdListGet(UnixFDList list, c_int index_);
	[LinkName("g_unix_fd_list_get_length")]
	public static extern c_int UnixFdListGetLength(UnixFDList list);
	[LinkName("g_unix_fd_list_peek_fds")]
	public static extern c_int UnixFdListPeekFds(UnixFDList list, c_int length);
	[LinkName("g_unix_fd_list_steal_fds")]
	public static extern c_int UnixFdListStealFds(UnixFDList list, c_int length);
	[CRepr]
	public struct UnixFDListClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct UnixFDListPrivate
	{
	}
	[CRepr]
	public struct UnixFDMessage;
	[LinkName("g_unix_fd_message_new")]
	public static extern SocketControlMessage UnixFdMessageNew();
	[LinkName("g_unix_fd_message_new_with_fd_list")]
	public static extern SocketControlMessage UnixFdMessageNewWithFdList(UnixFDList fd_list);
	[LinkName("g_unix_fd_message_append_fd")]
	public static extern c_int UnixFdMessageAppendFd(UnixFDMessage message, c_int fd);
	[LinkName("g_unix_fd_message_get_fd_list")]
	public static extern UnixFDList UnixFdMessageGetFdList(UnixFDMessage message);
	[LinkName("g_unix_fd_message_steal_fds")]
	public static extern c_int UnixFdMessageStealFds(UnixFDMessage message, c_int length);
	[CRepr]
	public struct UnixFDMessageClass
	{
		SocketControlMessageClass parent_class;
	}
	[CRepr]
	public struct UnixFDMessagePrivate
	{
	}
	[CRepr]
	public struct UnixInputStream;
	[LinkName("g_unix_input_stream_new")]
	public static extern InputStream UnixInputStreamNew(c_int fd, c_int close_fd);
	[LinkName("g_unix_input_stream_get_close_fd")]
	public static extern c_int UnixInputStreamGetCloseFd(UnixInputStream stream);
	[LinkName("g_unix_input_stream_get_fd")]
	public static extern c_int UnixInputStreamGetFd(UnixInputStream stream);
	[LinkName("g_unix_input_stream_set_close_fd")]
	public static extern void UnixInputStreamSetCloseFd(UnixInputStream stream, c_int close_fd);
	[CRepr]
	public struct UnixInputStreamClass
	{
		InputStreamClass parent_class;
	}
	[CRepr]
	public struct UnixInputStreamPrivate
	{
	}
	[CRepr]
	public struct UnixMountEntry
	{
	}
	[CRepr]
	public struct UnixMountMonitor;
	[LinkName("g_unix_mount_monitor_new")]
	public static extern UnixMountMonitor UnixMountMonitorNew();
	[LinkName("g_unix_mount_monitor_set_rate_limit")]
	public static extern void UnixMountMonitorSetRateLimit(UnixMountMonitor mount_monitor, c_int limit_msec);
	[CRepr]
	public struct UnixMountMonitorClass
	{
	}
	[CRepr]
	public struct UnixMountPoint
	{
	}
	[CRepr]
	public struct UnixOutputStream;
	[LinkName("g_unix_output_stream_new")]
	public static extern OutputStream UnixOutputStreamNew(c_int fd, c_int close_fd);
	[LinkName("g_unix_output_stream_get_close_fd")]
	public static extern c_int UnixOutputStreamGetCloseFd(UnixOutputStream stream);
	[LinkName("g_unix_output_stream_get_fd")]
	public static extern c_int UnixOutputStreamGetFd(UnixOutputStream stream);
	[LinkName("g_unix_output_stream_set_close_fd")]
	public static extern void UnixOutputStreamSetCloseFd(UnixOutputStream stream, c_int close_fd);
	[CRepr]
	public struct UnixOutputStreamClass
	{
		OutputStreamClass parent_class;
	}
	[CRepr]
	public struct UnixOutputStreamPrivate
	{
	}
	[CRepr]
	public struct UnixSocketAddress;
	[LinkName("g_unix_socket_address_new")]
	public static extern SocketAddress UnixSocketAddressNew(char8* path);
	[LinkName("g_unix_socket_address_new_abstract")]
	public static extern SocketAddress UnixSocketAddressNewAbstract(c_int path_len);
	[LinkName("g_unix_socket_address_new_with_type")]
	public static extern SocketAddress UnixSocketAddressNewWithType(c_int path_len, UnixSocketAddressType type);
	[LinkName("g_unix_socket_address_get_address_type")]
	public static extern UnixSocketAddressType UnixSocketAddressGetAddressType(UnixSocketAddress address);
	[LinkName("g_unix_socket_address_get_is_abstract")]
	public static extern c_int UnixSocketAddressGetIsAbstract(UnixSocketAddress address);
	[LinkName("g_unix_socket_address_get_path")]
	public static extern char8* UnixSocketAddressGetPath(UnixSocketAddress address);
	[LinkName("g_unix_socket_address_get_path_len")]
	public static extern c_ulong UnixSocketAddressGetPathLen(UnixSocketAddress address);
	[CRepr]
	public struct UnixSocketAddressClass
	{
		SocketAddressClass parent_class;
	}
	[CRepr]
	public struct UnixSocketAddressPrivate
	{
	}
	public enum UnixSocketAddressType : c_int
	{
		G_UNIX_SOCKET_ADDRESS_INVALID,
		G_UNIX_SOCKET_ADDRESS_ANONYMOUS,
		G_UNIX_SOCKET_ADDRESS_PATH,
		G_UNIX_SOCKET_ADDRESS_ABSTRACT,
		G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED
	}
	[CRepr]
	public struct Vfs;
	[LinkName("g_vfs_get_file_for_path")]
	public static extern File VfsGetFileForPath(Vfs vfs, char8* path);
	[LinkName("g_vfs_get_file_for_uri")]
	public static extern File VfsGetFileForUri(Vfs vfs, char8* uri);
	[LinkName("g_vfs_get_supported_uri_schemes")]
	public static extern char8* VfsGetSupportedUriSchemes(Vfs vfs);
	[LinkName("g_vfs_is_active")]
	public static extern c_int VfsIsActive(Vfs vfs);
	[LinkName("g_vfs_parse_name")]
	public static extern File VfsParseName(Vfs vfs, char8* parse_name);
	[LinkName("g_vfs_register_uri_scheme")]
	public static extern c_int VfsRegisterUriScheme(Vfs vfs, char8* scheme, VfsFileLookupFunc uri_func, void* uri_data, GLib.DestroyNotify uri_destroy, VfsFileLookupFunc parse_name_func, void* parse_name_data, GLib.DestroyNotify parse_name_destroy);
	[LinkName("g_vfs_unregister_uri_scheme")]
	public static extern c_int VfsUnregisterUriScheme(Vfs vfs, char8* scheme);
	[CRepr]
	public struct VfsClass
	{
		GObject.ObjectClass parent_class;
	}
	public function File VfsFileLookupFunc(Vfs vfs, char8* identifier, void* user_data);
	[CRepr]
	public struct Volume
	{
		public function c_int(Volume volume) can_eject;

		public function c_int(Volume volume) can_mount;

		public function void(Volume volume) changed;

		public function void(Volume volume, MountUnmountFlags flags, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) eject;

		public function c_int(Volume volume, AsyncResult result) eject_finish;

		public function void(Volume volume, MountUnmountFlags flags, MountOperation mount_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) eject_with_operation;

		public function c_int(Volume volume, AsyncResult result) eject_with_operation_finish;

		public function c_int(Volume volume) enumerate_identifiers;

		public function File(Volume volume) get_activation_root;

		public function Drive(Volume volume) get_drive;

		public function Icon(Volume volume) get_icon;

		public function char8*(Volume volume, char8* kind) get_identifier;

		public function Mount(Volume volume) get_mount;

		public function char8*(Volume volume) get_name;

		public function char8*(Volume volume) get_sort_key;

		public function Icon(Volume volume) get_symbolic_icon;

		public function char8*(Volume volume) get_uuid;

		public function c_int(Volume volume, AsyncResult result) mount_finish;

		public function void(Volume volume, MountMountFlags flags, MountOperation mount_operation, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) mount_fn;

		public function void(Volume volume) removed;

		public function c_int(Volume volume) should_automount;
	}
	[CRepr]
	public struct VolumeIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct VolumeMonitor;
	[LinkName("g_volume_monitor_get_connected_drives")]
	public static extern GLib.List VolumeMonitorGetConnectedDrives(VolumeMonitor volume_monitor);
	[LinkName("g_volume_monitor_get_mount_for_uuid")]
	public static extern Mount VolumeMonitorGetMountForUuid(VolumeMonitor volume_monitor, char8* uuid);
	[LinkName("g_volume_monitor_get_mounts")]
	public static extern GLib.List VolumeMonitorGetMounts(VolumeMonitor volume_monitor);
	[LinkName("g_volume_monitor_get_volume_for_uuid")]
	public static extern Volume VolumeMonitorGetVolumeForUuid(VolumeMonitor volume_monitor, char8* uuid);
	[LinkName("g_volume_monitor_get_volumes")]
	public static extern GLib.List VolumeMonitorGetVolumes(VolumeMonitor volume_monitor);
	[CRepr]
	public struct VolumeMonitorClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ZlibCompressor;
	[LinkName("g_zlib_compressor_new")]
	public static extern ZlibCompressor ZlibCompressorNew(ZlibCompressorFormat format, c_int level);
	[LinkName("g_zlib_compressor_get_file_info")]
	public static extern FileInfo ZlibCompressorGetFileInfo(ZlibCompressor compressor);
	[LinkName("g_zlib_compressor_set_file_info")]
	public static extern void ZlibCompressorSetFileInfo(ZlibCompressor compressor, FileInfo file_info);
	[CRepr]
	public struct ZlibCompressorClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum ZlibCompressorFormat : c_int
	{
		G_ZLIB_COMPRESSOR_FORMAT_ZLIB,
		G_ZLIB_COMPRESSOR_FORMAT_GZIP,
		G_ZLIB_COMPRESSOR_FORMAT_RAW
	}
	[CRepr]
	public struct ZlibDecompressor;
	[LinkName("g_zlib_decompressor_new")]
	public static extern ZlibDecompressor ZlibDecompressorNew(ZlibCompressorFormat format);
	[LinkName("g_zlib_decompressor_get_file_info")]
	public static extern FileInfo ZlibDecompressorGetFileInfo(ZlibDecompressor decompressor);
	[CRepr]
	public struct ZlibDecompressorClass
	{
		GObject.ObjectClass parent_class;
	}
}