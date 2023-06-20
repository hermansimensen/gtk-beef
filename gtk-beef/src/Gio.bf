namespace Gtk;

using System;
using System.Interop;

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

		public function char8(AppInfo appinfo) get_commandline;

		public function char8*(AppInfo appinfo) get_description;

		public function char8*(AppInfo appinfo) get_display_name;

		public function char8(AppInfo appinfo) get_executable;

		public function Icon(AppInfo appinfo) get_icon;

		public function char8*(AppInfo appinfo) get_id;

		public function char8*(AppInfo appinfo) get_name;

		public function char8*(AppInfo appinfo) get_supported_types;

		public function c_int(AppInfo appinfo, GLib.List files, AppLaunchContext context) launch;

		public function c_int(AppInfo appinfo, GLib.List uris, AppLaunchContext context) launch_uris;

		public function void(AppInfo appinfo, GLib.List uris, AppLaunchContext context, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) launch_uris_async;

		public function c_int(AppInfo appinfo, AsyncResult result) launch_uris_finish;

		public function c_int(AppInfo appinfo, char8* content_type) remove_supports_type;

		public function c_int(AppInfo appinfo, char8 extension_) set_as_default_for_extension;

		public function c_int(AppInfo appinfo, char8* content_type) set_as_default_for_type;

		public function c_int(AppInfo appinfo, char8* content_type) set_as_last_used_for_type;

		public function c_int(AppInfo appinfo) should_show;

		public function c_int(AppInfo appinfo) supports_files;

		public function c_int(AppInfo appinfo) supports_uris;
	}
	[CRepr]
	public enum AppInfoCreateFlags : int
	{
		none = 0,
		needs_terminal = 1,
		supports_uris = 2,
		supports_startup_notification = 4
	}
	[CRepr]
	public struct AppInfoIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct AppInfoMonitor;
	[LinkName("g_app_info_monitor_get")]
	public static extern AppInfoMonitor* AppInfoMonitorGet();
	[CRepr]
	public struct AppLaunchContext;
	[LinkName("g_app_launch_context_new")]
	public static extern AppLaunchContext* AppLaunchContextNew();
	[LinkName("g_app_launch_context_get_display")]
	public static extern char8* AppLaunchContextGetDisplay(AppLaunchContext* context, AppInfo* info, GLib.List* files);
	[LinkName("g_app_launch_context_get_environment")]
	public static extern char8 AppLaunchContextGetEnvironment(AppLaunchContext* context);
	[LinkName("g_app_launch_context_get_startup_notify_id")]
	public static extern char8* AppLaunchContextGetStartupNotifyId(AppLaunchContext* context, AppInfo* info, GLib.List* files);
	[LinkName("g_app_launch_context_launch_failed")]
	public static extern void AppLaunchContextLaunchFailed(AppLaunchContext* context, char8* startup_notify_id);
	[LinkName("g_app_launch_context_setenv")]
	public static extern void AppLaunchContextSetenv(AppLaunchContext* context, char8* variable, char8* value);
	[LinkName("g_app_launch_context_unsetenv")]
	public static extern void AppLaunchContextUnsetenv(AppLaunchContext* context, char8* variable);
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
	public static extern Application* ApplicationNew(char8* application_id, ApplicationFlags flags);
	[LinkName("g_application_get_default")]
	public static extern Application* ApplicationGetDefault();
	[LinkName("g_application_id_is_valid")]
	public static extern c_int ApplicationIdIsValid(char8* application_id);
	[LinkName("g_application_activate")]
	public static extern void ApplicationActivate(Application* application);
	[LinkName("g_application_add_main_option")]
	public static extern void ApplicationAddMainOption(Application* application, char8* long_name, c_char short_name, GLib.OptionFlags flags, GLib.OptionArg arg, char8* description, char8* arg_description);
	[LinkName("g_application_add_main_option_entries")]
	public static extern void ApplicationAddMainOptionEntries(Application* application, GLib.OptionEntry* entries);
	[LinkName("g_application_add_option_group")]
	public static extern void ApplicationAddOptionGroup(Application* application, GLib.OptionGroup* group);
	[LinkName("g_application_bind_busy_property")]
	public static extern void ApplicationBindBusyProperty(Application* application, GObject.Object object, char8* property);
	[LinkName("g_application_get_application_id")]
	public static extern char8* ApplicationGetApplicationId(Application* application);
	[LinkName("g_application_get_dbus_connection")]
	public static extern DBusConnection* ApplicationGetDbusConnection(Application* application);
	[LinkName("g_application_get_dbus_object_path")]
	public static extern char8* ApplicationGetDbusObjectPath(Application* application);
	[LinkName("g_application_get_flags")]
	public static extern ApplicationFlags ApplicationGetFlags(Application* application);
	[LinkName("g_application_get_inactivity_timeout")]
	public static extern c_uint ApplicationGetInactivityTimeout(Application* application);
	[LinkName("g_application_get_is_busy")]
	public static extern c_int ApplicationGetIsBusy(Application* application);
	[LinkName("g_application_get_is_registered")]
	public static extern c_int ApplicationGetIsRegistered(Application* application);
	[LinkName("g_application_get_is_remote")]
	public static extern c_int ApplicationGetIsRemote(Application* application);
	[LinkName("g_application_get_resource_base_path")]
	public static extern char8* ApplicationGetResourceBasePath(Application* application);
	[LinkName("g_application_hold")]
	public static extern void ApplicationHold(Application* application);
	[LinkName("g_application_mark_busy")]
	public static extern void ApplicationMarkBusy(Application* application);
	[LinkName("g_application_open")]
	public static extern void ApplicationOpen(Application* application, File** files, c_int n_files, char8* hint);
	[LinkName("g_application_quit")]
	public static extern void ApplicationQuit(Application* application);
	[LinkName("g_application_register")]
	public static extern c_int ApplicationRegister(Application* application, Cancellable* cancellable);
	[LinkName("g_application_release")]
	public static extern void ApplicationRelease(Application* application);
	[LinkName("g_application_run")]
	public static extern c_int ApplicationRun(Application* application, c_int argc, char8** argv);
	[LinkName("g_application_send_notification")]
	public static extern void ApplicationSendNotification(Application* application, char8* id, Notification* notification);
	[LinkName("g_application_set_action_group")]
	public static extern void ApplicationSetActionGroup(Application* application, ActionGroup* action_group);
	[LinkName("g_application_set_application_id")]
	public static extern void ApplicationSetApplicationId(Application* application, char8* application_id);
	[LinkName("g_application_set_default")]
	public static extern void ApplicationSetDefault(Application* application);
	[LinkName("g_application_set_flags")]
	public static extern void ApplicationSetFlags(Application* application, ApplicationFlags flags);
	[LinkName("g_application_set_inactivity_timeout")]
	public static extern void ApplicationSetInactivityTimeout(Application* application, c_uint inactivity_timeout);
	[LinkName("g_application_set_option_context_description")]
	public static extern void ApplicationSetOptionContextDescription(Application* application, char8* description);
	[LinkName("g_application_set_option_context_parameter_string")]
	public static extern void ApplicationSetOptionContextParameterString(Application* application, char8* parameter_string);
	[LinkName("g_application_set_option_context_summary")]
	public static extern void ApplicationSetOptionContextSummary(Application* application, char8* summary);
	[LinkName("g_application_set_resource_base_path")]
	public static extern void ApplicationSetResourceBasePath(Application* application, char8* resource_path);
	[LinkName("g_application_unbind_busy_property")]
	public static extern void ApplicationUnbindBusyProperty(Application* application, GObject.Object object, char8* property);
	[LinkName("g_application_unmark_busy")]
	public static extern void ApplicationUnmarkBusy(Application* application);
	[LinkName("g_application_withdraw_notification")]
	public static extern void ApplicationWithdrawNotification(Application* application, char8* id);
	[CRepr]
	public struct ApplicationClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ApplicationCommandLine;
	[LinkName("g_application_command_line_create_file_for_arg")]
	public static extern File* ApplicationCommandLineCreateFileForArg(ApplicationCommandLine* cmdline, char8* arg);
	[LinkName("g_application_command_line_get_arguments")]
	public static extern char8 ApplicationCommandLineGetArguments(ApplicationCommandLine* cmdline, c_int* argc);
	[LinkName("g_application_command_line_get_cwd")]
	public static extern char8* ApplicationCommandLineGetCwd(ApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_get_environ")]
	public static extern char8 ApplicationCommandLineGetEnviron(ApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_get_exit_status")]
	public static extern c_int ApplicationCommandLineGetExitStatus(ApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_get_is_remote")]
	public static extern c_int ApplicationCommandLineGetIsRemote(ApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_get_options_dict")]
	public static extern GLib.VariantDict* ApplicationCommandLineGetOptionsDict(ApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_get_platform_data")]
	public static extern GLib.Variant* ApplicationCommandLineGetPlatformData(ApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_get_stdin")]
	public static extern InputStream* ApplicationCommandLineGetStdin(ApplicationCommandLine* cmdline);
	[LinkName("g_application_command_line_getenv")]
	public static extern char8* ApplicationCommandLineGetenv(ApplicationCommandLine* cmdline, char8* name);
	[LinkName("g_application_command_line_set_exit_status")]
	public static extern void ApplicationCommandLineSetExitStatus(ApplicationCommandLine* cmdline, c_int exit_status);
	[CRepr]
	public struct ApplicationCommandLineClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ApplicationCommandLinePrivate
	{
	}
	[CRepr, AllowDuplicates]
	public enum ApplicationFlags : int
	{
		flags_none = 0,
		default_flags = 0,
		is_service = 1,
		is_launcher = 2,
		handles_open = 4,
		handles_command_line = 8,
		send_environment = 16,
		non_unique = 32,
		can_override_app_id = 64,
		allow_replacement = 128,
		replace = 256
	}
	[CRepr]
	public struct ApplicationPrivate
	{
	}
	[CRepr]
	public enum AskPasswordFlags : int
	{
		need_password = 1,
		need_username = 2,
		need_domain = 4,
		saving_supported = 8,
		anonymous_supported = 16,
		tcrypt = 32
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
	public static extern InputStream* BufferedInputStreamNew(InputStream* base_stream);
	[LinkName("g_buffered_input_stream_new_sized")]
	public static extern InputStream* BufferedInputStreamNewSized(InputStream* base_stream, c_ulong size);
	[LinkName("g_buffered_input_stream_fill")]
	public static extern c_long BufferedInputStreamFill(BufferedInputStream* stream, c_long count, Cancellable* cancellable);
	[LinkName("g_buffered_input_stream_fill_async")]
	public static extern void BufferedInputStreamFillAsync(BufferedInputStream* stream, c_long count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_buffered_input_stream_fill_finish")]
	public static extern c_long BufferedInputStreamFillFinish(BufferedInputStream* stream, AsyncResult* result);
	[LinkName("g_buffered_input_stream_get_available")]
	public static extern c_ulong BufferedInputStreamGetAvailable(BufferedInputStream* stream);
	[LinkName("g_buffered_input_stream_get_buffer_size")]
	public static extern c_ulong BufferedInputStreamGetBufferSize(BufferedInputStream* stream);
	[LinkName("g_buffered_input_stream_peek")]
	public static extern c_ulong BufferedInputStreamPeek(BufferedInputStream* stream, c_uchar* buffer, c_ulong offset, c_ulong count);
	[LinkName("g_buffered_input_stream_peek_buffer")]
	public static extern c_uchar BufferedInputStreamPeekBuffer(BufferedInputStream* stream, c_ulong* count);
	[LinkName("g_buffered_input_stream_read_byte")]
	public static extern c_int BufferedInputStreamReadByte(BufferedInputStream* stream, Cancellable* cancellable);
	[LinkName("g_buffered_input_stream_set_buffer_size")]
	public static extern void BufferedInputStreamSetBufferSize(BufferedInputStream* stream, c_ulong size);
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
	public static extern OutputStream* BufferedOutputStreamNew(OutputStream* base_stream);
	[LinkName("g_buffered_output_stream_new_sized")]
	public static extern OutputStream* BufferedOutputStreamNewSized(OutputStream* base_stream, c_ulong size);
	[LinkName("g_buffered_output_stream_get_auto_grow")]
	public static extern c_int BufferedOutputStreamGetAutoGrow(BufferedOutputStream* stream);
	[LinkName("g_buffered_output_stream_get_buffer_size")]
	public static extern c_ulong BufferedOutputStreamGetBufferSize(BufferedOutputStream* stream);
	[LinkName("g_buffered_output_stream_set_auto_grow")]
	public static extern void BufferedOutputStreamSetAutoGrow(BufferedOutputStream* stream, c_int auto_grow);
	[LinkName("g_buffered_output_stream_set_buffer_size")]
	public static extern void BufferedOutputStreamSetBufferSize(BufferedOutputStream* stream, c_ulong size);
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
	public enum BusNameOwnerFlags : int
	{
		none = 0,
		allow_replacement = 1,
		replace = 2,
		do_not_queue = 4
	}
	public function void BusNameVanishedCallback(DBusConnection connection, char8* name, void* user_data);
	[CRepr]
	public enum BusNameWatcherFlags : int
	{
		none = 0,
		auto_start = 1
	}
	public enum BusType : c_int
	{
		starter = -1,
		none = 0,
		system = 1,
		session = 2
	}
	[CRepr]
	public struct BytesIcon;
	[LinkName("g_bytes_icon_new")]
	public static extern BytesIcon* BytesIconNew(GLib.Bytes* bytes);
	[LinkName("g_bytes_icon_get_bytes")]
	public static extern GLib.Bytes* BytesIconGetBytes(BytesIcon* icon);
	[CRepr]
	public struct Cancellable;
	[LinkName("g_cancellable_new")]
	public static extern Cancellable* CancellableNew();
	[LinkName("g_cancellable_get_current")]
	public static extern Cancellable* CancellableGetCurrent();
	[LinkName("g_cancellable_cancel")]
	public static extern void CancellableCancel(Cancellable* cancellable);
	[LinkName("g_cancellable_connect")]
	public static extern c_ulong CancellableConnect(Cancellable* cancellable, GObject.Callback callback, void* data, GLib.DestroyNotify data_destroy_func);
	[LinkName("g_cancellable_disconnect")]
	public static extern void CancellableDisconnect(Cancellable* cancellable, c_ulong handler_id);
	[LinkName("g_cancellable_get_fd")]
	public static extern c_int CancellableGetFd(Cancellable* cancellable);
	[LinkName("g_cancellable_is_cancelled")]
	public static extern c_int CancellableIsCancelled(Cancellable* cancellable);
	[LinkName("g_cancellable_make_pollfd")]
	public static extern c_int CancellableMakePollfd(Cancellable* cancellable, GLib.PollFD* pollfd);
	[LinkName("g_cancellable_pop_current")]
	public static extern void CancellablePopCurrent(Cancellable* cancellable);
	[LinkName("g_cancellable_push_current")]
	public static extern void CancellablePushCurrent(Cancellable* cancellable);
	[LinkName("g_cancellable_release_fd")]
	public static extern void CancellableReleaseFd(Cancellable* cancellable);
	[LinkName("g_cancellable_reset")]
	public static extern void CancellableReset(Cancellable* cancellable);
	[LinkName("g_cancellable_set_error_if_cancelled")]
	public static extern c_int CancellableSetErrorIfCancelled(Cancellable* cancellable);
	[LinkName("g_cancellable_source_new")]
	public static extern GLib.Source* CancellableSourceNew(Cancellable* cancellable);
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
	public static extern CharsetConverter* CharsetConverterNew(char8* to_charset, char8* from_charset);
	[LinkName("g_charset_converter_get_num_fallbacks")]
	public static extern c_uint CharsetConverterGetNumFallbacks(CharsetConverter* converter);
	[LinkName("g_charset_converter_get_use_fallback")]
	public static extern c_int CharsetConverterGetUseFallback(CharsetConverter* converter);
	[LinkName("g_charset_converter_set_use_fallback")]
	public static extern void CharsetConverterSetUseFallback(CharsetConverter* converter, c_int use_fallback);
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
	public enum ConverterFlags : int
	{
		none = 0,
		input_at_end = 1,
		flush = 2
	}
	[CRepr]
	public struct ConverterIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct ConverterInputStream;
	[LinkName("g_converter_input_stream_new")]
	public static extern InputStream* ConverterInputStreamNew(InputStream* base_stream, Converter* converter);
	[LinkName("g_converter_input_stream_get_converter")]
	public static extern Converter* ConverterInputStreamGetConverter(ConverterInputStream* converter_stream);
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
	public static extern OutputStream* ConverterOutputStreamNew(OutputStream* base_stream, Converter* converter);
	[LinkName("g_converter_output_stream_get_converter")]
	public static extern Converter* ConverterOutputStreamGetConverter(ConverterOutputStream* converter_stream);
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
		error = 0,
		converted = 1,
		finished = 2,
		flushed = 3
	}
	[CRepr]
	public struct Credentials;
	[LinkName("g_credentials_new")]
	public static extern Credentials* CredentialsNew();
	[LinkName("g_credentials_get_unix_pid")]
	public static extern c_int CredentialsGetUnixPid(Credentials* credentials);
	[LinkName("g_credentials_get_unix_user")]
	public static extern c_uint CredentialsGetUnixUser(Credentials* credentials);
	[LinkName("g_credentials_is_same_user")]
	public static extern c_int CredentialsIsSameUser(Credentials* credentials, Credentials* other_credentials);
	[LinkName("g_credentials_set_native")]
	public static extern void CredentialsSetNative(Credentials* credentials, CredentialsType native_type, void* native);
	[LinkName("g_credentials_set_unix_user")]
	public static extern c_int CredentialsSetUnixUser(Credentials* credentials, c_uint uid);
	[LinkName("g_credentials_to_string")]
	public static extern char8* CredentialsToString(Credentials* credentials);
	[CRepr]
	public struct CredentialsClass
	{
	}
	public enum CredentialsType : c_int
	{
		invalid = 0,
		linux_ucred = 1,
		freebsd_cmsgcred = 2,
		openbsd_sockpeercred = 3,
		solaris_ucred = 4,
		netbsd_unpcbid = 5,
		apple_xucred = 6,
		win32_pid = 7
	}
	[CRepr]
	public struct DBusActionGroup;
	[LinkName("g_dbus_action_group_get")]
	public static extern DBusActionGroup* DbusActionGroupGet(DBusConnection* connection, char8* bus_name, char8* object_path);
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
	public static extern DBusAuthObserver* DbusAuthObserverNew();
	[LinkName("g_dbus_auth_observer_allow_mechanism")]
	public static extern c_int DbusAuthObserverAllowMechanism(DBusAuthObserver* observer, char8* mechanism);
	[LinkName("g_dbus_auth_observer_authorize_authenticated_peer")]
	public static extern c_int DbusAuthObserverAuthorizeAuthenticatedPeer(DBusAuthObserver* observer, IOStream* stream, Credentials* credentials);
	[CRepr]
	public enum DBusCallFlags : int
	{
		none = 0,
		no_auto_start = 1,
		allow_interactive_authorization = 2
	}
	[CRepr]
	public enum DBusCapabilityFlags : int
	{
		none = 0,
		unix_fd_passing = 1
	}
	[CRepr]
	public struct DBusConnection;
	[LinkName("g_dbus_connection_new_finish")]
	public static extern DBusConnection* DbusConnectionNewFinish(AsyncResult* res);
	[LinkName("g_dbus_connection_new_for_address_finish")]
	public static extern DBusConnection* DbusConnectionNewForAddressFinish(AsyncResult* res);
	[LinkName("g_dbus_connection_new_for_address_sync")]
	public static extern DBusConnection* DbusConnectionNewForAddressSync(char8* address, DBusConnectionFlags flags, DBusAuthObserver* observer, Cancellable* cancellable);
	[LinkName("g_dbus_connection_new_sync")]
	public static extern DBusConnection* DbusConnectionNewSync(IOStream* stream, char8* guid, DBusConnectionFlags flags, DBusAuthObserver* observer, Cancellable* cancellable);
	[LinkName("g_dbus_connection_new")]
	public static extern void DbusConnectionNew(IOStream* stream, char8* guid, DBusConnectionFlags flags, DBusAuthObserver* observer, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_new_for_address")]
	public static extern void DbusConnectionNewForAddress(char8* address, DBusConnectionFlags flags, DBusAuthObserver* observer, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_add_filter")]
	public static extern c_uint DbusConnectionAddFilter(DBusConnection* connection, DBusMessageFilterFunction filter_function, void* user_data, GLib.DestroyNotify user_data_free_func);
	[LinkName("g_dbus_connection_call")]
	public static extern void DbusConnectionCall(DBusConnection* connection, char8* bus_name, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant* parameters, GLib.VariantType* reply_type, DBusCallFlags flags, c_int timeout_msec, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_call_finish")]
	public static extern GLib.Variant* DbusConnectionCallFinish(DBusConnection* connection, AsyncResult* res);
	[LinkName("g_dbus_connection_call_sync")]
	public static extern GLib.Variant* DbusConnectionCallSync(DBusConnection* connection, char8* bus_name, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant* parameters, GLib.VariantType* reply_type, DBusCallFlags flags, c_int timeout_msec, Cancellable* cancellable);
	[LinkName("g_dbus_connection_call_with_unix_fd_list")]
	public static extern void DbusConnectionCallWithUnixFdList(DBusConnection* connection, char8* bus_name, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant* parameters, GLib.VariantType* reply_type, DBusCallFlags flags, c_int timeout_msec, UnixFDList* fd_list, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_call_with_unix_fd_list_finish")]
	public static extern GLib.Variant* DbusConnectionCallWithUnixFdListFinish(DBusConnection* connection, UnixFDList* out_fd_list, AsyncResult* res);
	[LinkName("g_dbus_connection_call_with_unix_fd_list_sync")]
	public static extern GLib.Variant* DbusConnectionCallWithUnixFdListSync(DBusConnection* connection, char8* bus_name, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant* parameters, GLib.VariantType* reply_type, DBusCallFlags flags, c_int timeout_msec, UnixFDList* fd_list, UnixFDList* out_fd_list, Cancellable* cancellable);
	[LinkName("g_dbus_connection_close")]
	public static extern void DbusConnectionClose(DBusConnection* connection, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_close_finish")]
	public static extern c_int DbusConnectionCloseFinish(DBusConnection* connection, AsyncResult* res);
	[LinkName("g_dbus_connection_close_sync")]
	public static extern c_int DbusConnectionCloseSync(DBusConnection* connection, Cancellable* cancellable);
	[LinkName("g_dbus_connection_emit_signal")]
	public static extern c_int DbusConnectionEmitSignal(DBusConnection* connection, char8* destination_bus_name, char8* object_path, char8* interface_name, char8* signal_name, GLib.Variant* parameters);
	[LinkName("g_dbus_connection_export_action_group")]
	public static extern c_uint DbusConnectionExportActionGroup(DBusConnection* connection, char8* object_path, ActionGroup* action_group);
	[LinkName("g_dbus_connection_export_menu_model")]
	public static extern c_uint DbusConnectionExportMenuModel(DBusConnection* connection, char8* object_path, MenuModel* menu);
	[LinkName("g_dbus_connection_flush")]
	public static extern void DbusConnectionFlush(DBusConnection* connection, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_flush_finish")]
	public static extern c_int DbusConnectionFlushFinish(DBusConnection* connection, AsyncResult* res);
	[LinkName("g_dbus_connection_flush_sync")]
	public static extern c_int DbusConnectionFlushSync(DBusConnection* connection, Cancellable* cancellable);
	[LinkName("g_dbus_connection_get_capabilities")]
	public static extern DBusCapabilityFlags DbusConnectionGetCapabilities(DBusConnection* connection);
	[LinkName("g_dbus_connection_get_exit_on_close")]
	public static extern c_int DbusConnectionGetExitOnClose(DBusConnection* connection);
	[LinkName("g_dbus_connection_get_flags")]
	public static extern DBusConnectionFlags DbusConnectionGetFlags(DBusConnection* connection);
	[LinkName("g_dbus_connection_get_guid")]
	public static extern char8* DbusConnectionGetGuid(DBusConnection* connection);
	[LinkName("g_dbus_connection_get_last_serial")]
	public static extern c_uint DbusConnectionGetLastSerial(DBusConnection* connection);
	[LinkName("g_dbus_connection_get_peer_credentials")]
	public static extern Credentials* DbusConnectionGetPeerCredentials(DBusConnection* connection);
	[LinkName("g_dbus_connection_get_stream")]
	public static extern IOStream* DbusConnectionGetStream(DBusConnection* connection);
	[LinkName("g_dbus_connection_get_unique_name")]
	public static extern char8* DbusConnectionGetUniqueName(DBusConnection* connection);
	[LinkName("g_dbus_connection_is_closed")]
	public static extern c_int DbusConnectionIsClosed(DBusConnection* connection);
	[LinkName("g_dbus_connection_register_object")]
	public static extern c_uint DbusConnectionRegisterObject(DBusConnection* connection, char8* object_path, DBusInterfaceInfo* interface_info, DBusInterfaceVTable* vtable, void* user_data, GLib.DestroyNotify user_data_free_func);
	[LinkName("g_dbus_connection_register_object_with_closures")]
	public static extern c_uint DbusConnectionRegisterObjectWithClosures(DBusConnection* connection, char8* object_path, DBusInterfaceInfo* interface_info, GObject.Closure* method_call_closure, GObject.Closure* get_property_closure, GObject.Closure* set_property_closure);
	[LinkName("g_dbus_connection_register_subtree")]
	public static extern c_uint DbusConnectionRegisterSubtree(DBusConnection* connection, char8* object_path, DBusSubtreeVTable* vtable, DBusSubtreeFlags flags, void* user_data, GLib.DestroyNotify user_data_free_func);
	[LinkName("g_dbus_connection_remove_filter")]
	public static extern void DbusConnectionRemoveFilter(DBusConnection* connection, c_uint filter_id);
	[LinkName("g_dbus_connection_send_message")]
	public static extern c_int DbusConnectionSendMessage(DBusConnection* connection, DBusMessage* message, DBusSendMessageFlags flags, c_uint* out_serial);
	[LinkName("g_dbus_connection_send_message_with_reply")]
	public static extern void DbusConnectionSendMessageWithReply(DBusConnection* connection, DBusMessage* message, DBusSendMessageFlags flags, c_int timeout_msec, c_uint* out_serial, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_connection_send_message_with_reply_finish")]
	public static extern DBusMessage* DbusConnectionSendMessageWithReplyFinish(DBusConnection* connection, AsyncResult* res);
	[LinkName("g_dbus_connection_send_message_with_reply_sync")]
	public static extern DBusMessage* DbusConnectionSendMessageWithReplySync(DBusConnection* connection, DBusMessage* message, DBusSendMessageFlags flags, c_int timeout_msec, c_uint* out_serial, Cancellable* cancellable);
	[LinkName("g_dbus_connection_set_exit_on_close")]
	public static extern void DbusConnectionSetExitOnClose(DBusConnection* connection, c_int exit_on_close);
	[LinkName("g_dbus_connection_signal_subscribe")]
	public static extern c_uint DbusConnectionSignalSubscribe(DBusConnection* connection, char8* sender, char8* interface_name, char8* member, char8* object_path, char8* arg0, DBusSignalFlags flags, DBusSignalCallback callback, void* user_data, GLib.DestroyNotify user_data_free_func);
	[LinkName("g_dbus_connection_signal_unsubscribe")]
	public static extern void DbusConnectionSignalUnsubscribe(DBusConnection* connection, c_uint subscription_id);
	[LinkName("g_dbus_connection_start_message_processing")]
	public static extern void DbusConnectionStartMessageProcessing(DBusConnection* connection);
	[LinkName("g_dbus_connection_unexport_action_group")]
	public static extern void DbusConnectionUnexportActionGroup(DBusConnection* connection, c_uint export_id);
	[LinkName("g_dbus_connection_unexport_menu_model")]
	public static extern void DbusConnectionUnexportMenuModel(DBusConnection* connection, c_uint export_id);
	[LinkName("g_dbus_connection_unregister_object")]
	public static extern c_int DbusConnectionUnregisterObject(DBusConnection* connection, c_uint registration_id);
	[LinkName("g_dbus_connection_unregister_subtree")]
	public static extern c_int DbusConnectionUnregisterSubtree(DBusConnection* connection, c_uint registration_id);
	[CRepr]
	public enum DBusConnectionFlags : int
	{
		none = 0,
		authentication_client = 1,
		authentication_server = 2,
		authentication_allow_anonymous = 4,
		message_bus_connection = 8,
		delay_message_processing = 16,
		authentication_require_same_user = 32,
		cross_namespace = 64
	}
	public enum DBusError : c_int
	{
		failed = 0,
		no_memory = 1,
		service_unknown = 2,
		name_has_no_owner = 3,
		no_reply = 4,
		io_error = 5,
		bad_address = 6,
		not_supported = 7,
		limits_exceeded = 8,
		access_denied = 9,
		auth_failed = 10,
		no_server = 11,
		timeout = 12,
		no_network = 13,
		address_in_use = 14,
		disconnected = 15,
		invalid_args = 16,
		file_not_found = 17,
		file_exists = 18,
		unknown_method = 19,
		timed_out = 20,
		match_rule_not_found = 21,
		match_rule_invalid = 22,
		spawn_exec_failed = 23,
		spawn_fork_failed = 24,
		spawn_child_exited = 25,
		spawn_child_signaled = 26,
		spawn_failed = 27,
		spawn_setup_failed = 28,
		spawn_config_invalid = 29,
		spawn_service_invalid = 30,
		spawn_service_not_found = 31,
		spawn_permissions_invalid = 32,
		spawn_file_invalid = 33,
		spawn_no_memory = 34,
		unix_process_id_unknown = 35,
		invalid_signature = 36,
		invalid_file_content = 37,
		selinux_security_context_unknown = 38,
		adt_audit_data_unknown = 39,
		object_path_in_use = 40,
		unknown_object = 41,
		unknown_interface = 42,
		unknown_property = 43,
		property_read_only = 44
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
	public static extern c_int DbusInterfaceSkeletonExport(DBusInterfaceSkeleton* interface_, DBusConnection* connection, char8* object_path);
	[LinkName("g_dbus_interface_skeleton_flush")]
	public static extern void DbusInterfaceSkeletonFlush(DBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_get_connection")]
	public static extern DBusConnection* DbusInterfaceSkeletonGetConnection(DBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_get_connections")]
	public static extern GLib.List* DbusInterfaceSkeletonGetConnections(DBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_get_flags")]
	public static extern DBusInterfaceSkeletonFlags DbusInterfaceSkeletonGetFlags(DBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_get_info")]
	public static extern DBusInterfaceInfo* DbusInterfaceSkeletonGetInfo(DBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_get_object_path")]
	public static extern char8* DbusInterfaceSkeletonGetObjectPath(DBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_get_properties")]
	public static extern GLib.Variant* DbusInterfaceSkeletonGetProperties(DBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_has_connection")]
	public static extern c_int DbusInterfaceSkeletonHasConnection(DBusInterfaceSkeleton* interface_, DBusConnection* connection);
	[LinkName("g_dbus_interface_skeleton_set_flags")]
	public static extern void DbusInterfaceSkeletonSetFlags(DBusInterfaceSkeleton* interface_, DBusInterfaceSkeletonFlags flags);
	[LinkName("g_dbus_interface_skeleton_unexport")]
	public static extern void DbusInterfaceSkeletonUnexport(DBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_interface_skeleton_unexport_from_connection")]
	public static extern void DbusInterfaceSkeletonUnexportFromConnection(DBusInterfaceSkeleton* interface_, DBusConnection* connection);
	[CRepr]
	public struct DBusInterfaceSkeletonClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public enum DBusInterfaceSkeletonFlags : int
	{
		none = 0,
		handle_method_invocations_in_thread = 1
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
	[LinkName("g_dbus_menu_model_get")]
	public static extern DBusMenuModel* DbusMenuModelGet(DBusConnection* connection, char8* bus_name, char8* object_path);
	[CRepr]
	public struct DBusMessage;
	[LinkName("g_dbus_message_new")]
	public static extern DBusMessage* DbusMessageNew();
	[LinkName("g_dbus_message_new_from_blob")]
	public static extern DBusMessage* DbusMessageNewFromBlob(c_uchar* blob, c_ulong blob_len, DBusCapabilityFlags capabilities);
	[LinkName("g_dbus_message_new_method_call")]
	public static extern DBusMessage* DbusMessageNewMethodCall(char8* name, char8* path, char8* interface_, char8* method);
	[LinkName("g_dbus_message_new_signal")]
	public static extern DBusMessage* DbusMessageNewSignal(char8* path, char8* interface_, char8* signal);
	[LinkName("g_dbus_message_bytes_needed")]
	public static extern c_long DbusMessageBytesNeeded(c_uchar* blob, c_ulong blob_len);
	[LinkName("g_dbus_message_copy")]
	public static extern DBusMessage* DbusMessageCopy(DBusMessage* message);
	[LinkName("g_dbus_message_get_arg0")]
	public static extern char8* DbusMessageGetArg0(DBusMessage* message);
	[LinkName("g_dbus_message_get_body")]
	public static extern GLib.Variant* DbusMessageGetBody(DBusMessage* message);
	[LinkName("g_dbus_message_get_byte_order")]
	public static extern DBusMessageByteOrder DbusMessageGetByteOrder(DBusMessage* message);
	[LinkName("g_dbus_message_get_destination")]
	public static extern char8* DbusMessageGetDestination(DBusMessage* message);
	[LinkName("g_dbus_message_get_error_name")]
	public static extern char8* DbusMessageGetErrorName(DBusMessage* message);
	[LinkName("g_dbus_message_get_flags")]
	public static extern DBusMessageFlags DbusMessageGetFlags(DBusMessage* message);
	[LinkName("g_dbus_message_get_header")]
	public static extern GLib.Variant* DbusMessageGetHeader(DBusMessage* message, DBusMessageHeaderField header_field);
	[LinkName("g_dbus_message_get_header_fields")]
	public static extern c_uchar DbusMessageGetHeaderFields(DBusMessage* message);
	[LinkName("g_dbus_message_get_interface")]
	public static extern char8* DbusMessageGetInterface(DBusMessage* message);
	[LinkName("g_dbus_message_get_locked")]
	public static extern c_int DbusMessageGetLocked(DBusMessage* message);
	[LinkName("g_dbus_message_get_member")]
	public static extern char8* DbusMessageGetMember(DBusMessage* message);
	[LinkName("g_dbus_message_get_message_type")]
	public static extern DBusMessageType DbusMessageGetMessageType(DBusMessage* message);
	[LinkName("g_dbus_message_get_num_unix_fds")]
	public static extern c_uint DbusMessageGetNumUnixFds(DBusMessage* message);
	[LinkName("g_dbus_message_get_path")]
	public static extern char8* DbusMessageGetPath(DBusMessage* message);
	[LinkName("g_dbus_message_get_reply_serial")]
	public static extern c_uint DbusMessageGetReplySerial(DBusMessage* message);
	[LinkName("g_dbus_message_get_sender")]
	public static extern char8* DbusMessageGetSender(DBusMessage* message);
	[LinkName("g_dbus_message_get_serial")]
	public static extern c_uint DbusMessageGetSerial(DBusMessage* message);
	[LinkName("g_dbus_message_get_signature")]
	public static extern char8* DbusMessageGetSignature(DBusMessage* message);
	[LinkName("g_dbus_message_get_unix_fd_list")]
	public static extern UnixFDList* DbusMessageGetUnixFdList(DBusMessage* message);
	[LinkName("g_dbus_message_lock")]
	public static extern void DbusMessageLock(DBusMessage* message);
	[LinkName("g_dbus_message_new_method_error_literal")]
	public static extern DBusMessage* DbusMessageNewMethodErrorLiteral(DBusMessage* method_call_message, char8* error_name, char8* error_message);
	[LinkName("g_dbus_message_new_method_reply")]
	public static extern DBusMessage* DbusMessageNewMethodReply(DBusMessage* method_call_message);
	[LinkName("g_dbus_message_print")]
	public static extern char8* DbusMessagePrint(DBusMessage* message, c_uint indent);
	[LinkName("g_dbus_message_set_body")]
	public static extern void DbusMessageSetBody(DBusMessage* message, GLib.Variant* body);
	[LinkName("g_dbus_message_set_byte_order")]
	public static extern void DbusMessageSetByteOrder(DBusMessage* message, DBusMessageByteOrder byte_order);
	[LinkName("g_dbus_message_set_destination")]
	public static extern void DbusMessageSetDestination(DBusMessage* message, char8* value);
	[LinkName("g_dbus_message_set_error_name")]
	public static extern void DbusMessageSetErrorName(DBusMessage* message, char8* value);
	[LinkName("g_dbus_message_set_flags")]
	public static extern void DbusMessageSetFlags(DBusMessage* message, DBusMessageFlags flags);
	[LinkName("g_dbus_message_set_header")]
	public static extern void DbusMessageSetHeader(DBusMessage* message, DBusMessageHeaderField header_field, GLib.Variant* value);
	[LinkName("g_dbus_message_set_interface")]
	public static extern void DbusMessageSetInterface(DBusMessage* message, char8* value);
	[LinkName("g_dbus_message_set_member")]
	public static extern void DbusMessageSetMember(DBusMessage* message, char8* value);
	[LinkName("g_dbus_message_set_message_type")]
	public static extern void DbusMessageSetMessageType(DBusMessage* message, DBusMessageType type);
	[LinkName("g_dbus_message_set_num_unix_fds")]
	public static extern void DbusMessageSetNumUnixFds(DBusMessage* message, c_uint value);
	[LinkName("g_dbus_message_set_path")]
	public static extern void DbusMessageSetPath(DBusMessage* message, char8* value);
	[LinkName("g_dbus_message_set_reply_serial")]
	public static extern void DbusMessageSetReplySerial(DBusMessage* message, c_uint value);
	[LinkName("g_dbus_message_set_sender")]
	public static extern void DbusMessageSetSender(DBusMessage* message, char8* value);
	[LinkName("g_dbus_message_set_serial")]
	public static extern void DbusMessageSetSerial(DBusMessage* message, c_uint serial);
	[LinkName("g_dbus_message_set_signature")]
	public static extern void DbusMessageSetSignature(DBusMessage* message, char8* value);
	[LinkName("g_dbus_message_set_unix_fd_list")]
	public static extern void DbusMessageSetUnixFdList(DBusMessage* message, UnixFDList* fd_list);
	[LinkName("g_dbus_message_to_blob")]
	public static extern c_uchar DbusMessageToBlob(DBusMessage* message, c_ulong* out_size, DBusCapabilityFlags capabilities);
	[LinkName("g_dbus_message_to_gerror")]
	public static extern c_int DbusMessageToGerror(DBusMessage* message);
	public enum DBusMessageByteOrder : c_int
	{
		big_endian = 66,
		little_endian = 108
	}
	public function DBusMessage DBusMessageFilterFunction(DBusConnection connection, DBusMessage message, c_int incoming, void* user_data);
	[CRepr]
	public enum DBusMessageFlags : int
	{
		none = 0,
		no_reply_expected = 1,
		no_auto_start = 2,
		allow_interactive_authorization = 4
	}
	public enum DBusMessageHeaderField : c_int
	{
		invalid = 0,
		path = 1,
		interface_ = 2,
		member = 3,
		error_name = 4,
		reply_serial = 5,
		destination = 6,
		sender = 7,
		signature = 8,
		num_unix_fds = 9
	}
	public enum DBusMessageType : c_int
	{
		invalid = 0,
		method_call = 1,
		method_return = 2,
		error = 3,
		signal = 4
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
	public static extern DBusConnection* DbusMethodInvocationGetConnection(DBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_interface_name")]
	public static extern char8* DbusMethodInvocationGetInterfaceName(DBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_message")]
	public static extern DBusMessage* DbusMethodInvocationGetMessage(DBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_method_info")]
	public static extern DBusMethodInfo* DbusMethodInvocationGetMethodInfo(DBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_method_name")]
	public static extern char8* DbusMethodInvocationGetMethodName(DBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_object_path")]
	public static extern char8* DbusMethodInvocationGetObjectPath(DBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_parameters")]
	public static extern GLib.Variant* DbusMethodInvocationGetParameters(DBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_property_info")]
	public static extern DBusPropertyInfo* DbusMethodInvocationGetPropertyInfo(DBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_get_sender")]
	public static extern char8* DbusMethodInvocationGetSender(DBusMethodInvocation* invocation);
	[LinkName("g_dbus_method_invocation_return_dbus_error")]
	public static extern void DbusMethodInvocationReturnDbusError(DBusMethodInvocation* invocation, char8* error_name, char8* error_message);
	[LinkName("g_dbus_method_invocation_return_error_literal")]
	public static extern void DbusMethodInvocationReturnErrorLiteral(DBusMethodInvocation* invocation, GLib.Quark domain, c_int code, char8* message);
	[LinkName("g_dbus_method_invocation_return_gerror")]
	public static extern void DbusMethodInvocationReturnGerror(DBusMethodInvocation* invocation, GLib.Error* error);
	[LinkName("g_dbus_method_invocation_return_value")]
	public static extern void DbusMethodInvocationReturnValue(DBusMethodInvocation* invocation, GLib.Variant* parameters);
	[LinkName("g_dbus_method_invocation_return_value_with_unix_fd_list")]
	public static extern void DbusMethodInvocationReturnValueWithUnixFdList(DBusMethodInvocation* invocation, GLib.Variant* parameters, UnixFDList* fd_list);
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
	public static extern DBusObjectManagerClient* DbusObjectManagerClientNewFinish(AsyncResult* res);
	[LinkName("g_dbus_object_manager_client_new_for_bus_finish")]
	public static extern DBusObjectManagerClient* DbusObjectManagerClientNewForBusFinish(AsyncResult* res);
	[LinkName("g_dbus_object_manager_client_new_for_bus_sync")]
	public static extern DBusObjectManagerClient* DbusObjectManagerClientNewForBusSync(BusType bus_type, DBusObjectManagerClientFlags flags, char8* name, char8* object_path, DBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, GLib.DestroyNotify get_proxy_type_destroy_notify, Cancellable* cancellable);
	[LinkName("g_dbus_object_manager_client_new_sync")]
	public static extern DBusObjectManagerClient* DbusObjectManagerClientNewSync(DBusConnection* connection, DBusObjectManagerClientFlags flags, char8* name, char8* object_path, DBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, GLib.DestroyNotify get_proxy_type_destroy_notify, Cancellable* cancellable);
	[LinkName("g_dbus_object_manager_client_new")]
	public static extern void DbusObjectManagerClientNew(DBusConnection* connection, DBusObjectManagerClientFlags flags, char8* name, char8* object_path, DBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, GLib.DestroyNotify get_proxy_type_destroy_notify, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_object_manager_client_new_for_bus")]
	public static extern void DbusObjectManagerClientNewForBus(BusType bus_type, DBusObjectManagerClientFlags flags, char8* name, char8* object_path, DBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, GLib.DestroyNotify get_proxy_type_destroy_notify, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_object_manager_client_get_connection")]
	public static extern DBusConnection* DbusObjectManagerClientGetConnection(DBusObjectManagerClient* manager);
	[LinkName("g_dbus_object_manager_client_get_flags")]
	public static extern DBusObjectManagerClientFlags DbusObjectManagerClientGetFlags(DBusObjectManagerClient* manager);
	[LinkName("g_dbus_object_manager_client_get_name")]
	public static extern char8* DbusObjectManagerClientGetName(DBusObjectManagerClient* manager);
	[LinkName("g_dbus_object_manager_client_get_name_owner")]
	public static extern char8* DbusObjectManagerClientGetNameOwner(DBusObjectManagerClient* manager);
	[CRepr]
	public struct DBusObjectManagerClientClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public enum DBusObjectManagerClientFlags : int
	{
		none = 0,
		do_not_auto_start = 1
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
	public static extern DBusObjectManagerServer* DbusObjectManagerServerNew(char8* object_path);
	[LinkName("g_dbus_object_manager_server_export")]
	public static extern void DbusObjectManagerServerExport(DBusObjectManagerServer* manager, DBusObjectSkeleton* object);
	[LinkName("g_dbus_object_manager_server_export_uniquely")]
	public static extern void DbusObjectManagerServerExportUniquely(DBusObjectManagerServer* manager, DBusObjectSkeleton* object);
	[LinkName("g_dbus_object_manager_server_get_connection")]
	public static extern DBusConnection* DbusObjectManagerServerGetConnection(DBusObjectManagerServer* manager);
	[LinkName("g_dbus_object_manager_server_is_exported")]
	public static extern c_int DbusObjectManagerServerIsExported(DBusObjectManagerServer* manager, DBusObjectSkeleton* object);
	[LinkName("g_dbus_object_manager_server_set_connection")]
	public static extern void DbusObjectManagerServerSetConnection(DBusObjectManagerServer* manager, DBusConnection* connection);
	[LinkName("g_dbus_object_manager_server_unexport")]
	public static extern c_int DbusObjectManagerServerUnexport(DBusObjectManagerServer* manager, char8* object_path);
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
	public static extern DBusObjectProxy* DbusObjectProxyNew(DBusConnection* connection, char8* object_path);
	[LinkName("g_dbus_object_proxy_get_connection")]
	public static extern DBusConnection* DbusObjectProxyGetConnection(DBusObjectProxy* proxy);
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
	public static extern DBusObjectSkeleton* DbusObjectSkeletonNew(char8* object_path);
	[LinkName("g_dbus_object_skeleton_add_interface")]
	public static extern void DbusObjectSkeletonAddInterface(DBusObjectSkeleton* object, DBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_object_skeleton_flush")]
	public static extern void DbusObjectSkeletonFlush(DBusObjectSkeleton* object);
	[LinkName("g_dbus_object_skeleton_remove_interface")]
	public static extern void DbusObjectSkeletonRemoveInterface(DBusObjectSkeleton* object, DBusInterfaceSkeleton* interface_);
	[LinkName("g_dbus_object_skeleton_remove_interface_by_name")]
	public static extern void DbusObjectSkeletonRemoveInterfaceByName(DBusObjectSkeleton* object, char8* interface_name);
	[LinkName("g_dbus_object_skeleton_set_object_path")]
	public static extern void DbusObjectSkeletonSetObjectPath(DBusObjectSkeleton* object, char8* object_path);
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
	public enum DBusPropertyInfoFlags : int
	{
		none = 0,
		readable = 1,
		writable = 2
	}
	[CRepr]
	public struct DBusProxy;
	[LinkName("g_dbus_proxy_new_finish")]
	public static extern DBusProxy* DbusProxyNewFinish(AsyncResult* res);
	[LinkName("g_dbus_proxy_new_for_bus_finish")]
	public static extern DBusProxy* DbusProxyNewForBusFinish(AsyncResult* res);
	[LinkName("g_dbus_proxy_new_for_bus_sync")]
	public static extern DBusProxy* DbusProxyNewForBusSync(BusType bus_type, DBusProxyFlags flags, DBusInterfaceInfo* info, char8* name, char8* object_path, char8* interface_name, Cancellable* cancellable);
	[LinkName("g_dbus_proxy_new_sync")]
	public static extern DBusProxy* DbusProxyNewSync(DBusConnection* connection, DBusProxyFlags flags, DBusInterfaceInfo* info, char8* name, char8* object_path, char8* interface_name, Cancellable* cancellable);
	[LinkName("g_dbus_proxy_new")]
	public static extern void DbusProxyNew(DBusConnection* connection, DBusProxyFlags flags, DBusInterfaceInfo* info, char8* name, char8* object_path, char8* interface_name, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_proxy_new_for_bus")]
	public static extern void DbusProxyNewForBus(BusType bus_type, DBusProxyFlags flags, DBusInterfaceInfo* info, char8* name, char8* object_path, char8* interface_name, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_proxy_call")]
	public static extern void DbusProxyCall(DBusProxy* proxy, char8* method_name, GLib.Variant* parameters, DBusCallFlags flags, c_int timeout_msec, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_proxy_call_finish")]
	public static extern GLib.Variant* DbusProxyCallFinish(DBusProxy* proxy, AsyncResult* res);
	[LinkName("g_dbus_proxy_call_sync")]
	public static extern GLib.Variant* DbusProxyCallSync(DBusProxy* proxy, char8* method_name, GLib.Variant* parameters, DBusCallFlags flags, c_int timeout_msec, Cancellable* cancellable);
	[LinkName("g_dbus_proxy_call_with_unix_fd_list")]
	public static extern void DbusProxyCallWithUnixFdList(DBusProxy* proxy, char8* method_name, GLib.Variant* parameters, DBusCallFlags flags, c_int timeout_msec, UnixFDList* fd_list, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_proxy_call_with_unix_fd_list_finish")]
	public static extern GLib.Variant* DbusProxyCallWithUnixFdListFinish(DBusProxy* proxy, UnixFDList* out_fd_list, AsyncResult* res);
	[LinkName("g_dbus_proxy_call_with_unix_fd_list_sync")]
	public static extern GLib.Variant* DbusProxyCallWithUnixFdListSync(DBusProxy* proxy, char8* method_name, GLib.Variant* parameters, DBusCallFlags flags, c_int timeout_msec, UnixFDList* fd_list, UnixFDList* out_fd_list, Cancellable* cancellable);
	[LinkName("g_dbus_proxy_get_cached_property")]
	public static extern GLib.Variant* DbusProxyGetCachedProperty(DBusProxy* proxy, char8* property_name);
	[LinkName("g_dbus_proxy_get_cached_property_names")]
	public static extern char8* DbusProxyGetCachedPropertyNames(DBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_connection")]
	public static extern DBusConnection* DbusProxyGetConnection(DBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_default_timeout")]
	public static extern c_int DbusProxyGetDefaultTimeout(DBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_flags")]
	public static extern DBusProxyFlags DbusProxyGetFlags(DBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_interface_info")]
	public static extern DBusInterfaceInfo* DbusProxyGetInterfaceInfo(DBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_interface_name")]
	public static extern char8* DbusProxyGetInterfaceName(DBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_name")]
	public static extern char8* DbusProxyGetName(DBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_name_owner")]
	public static extern char8* DbusProxyGetNameOwner(DBusProxy* proxy);
	[LinkName("g_dbus_proxy_get_object_path")]
	public static extern char8* DbusProxyGetObjectPath(DBusProxy* proxy);
	[LinkName("g_dbus_proxy_set_cached_property")]
	public static extern void DbusProxySetCachedProperty(DBusProxy* proxy, char8* property_name, GLib.Variant* value);
	[LinkName("g_dbus_proxy_set_default_timeout")]
	public static extern void DbusProxySetDefaultTimeout(DBusProxy* proxy, c_int timeout_msec);
	[LinkName("g_dbus_proxy_set_interface_info")]
	public static extern void DbusProxySetInterfaceInfo(DBusProxy* proxy, DBusInterfaceInfo* info);
	[CRepr]
	public struct DBusProxyClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public enum DBusProxyFlags : int
	{
		none = 0,
		do_not_load_properties = 1,
		do_not_connect_signals = 2,
		do_not_auto_start = 4,
		get_invalidated_properties = 8,
		do_not_auto_start_at_construction = 16,
		no_match_rule = 32
	}
	[CRepr]
	public struct DBusProxyPrivate
	{
	}
	public function GLib.Type DBusProxyTypeFunc(DBusObjectManagerClient manager, char8* object_path, char8* interface_name, void* data);
	[CRepr]
	public enum DBusSendMessageFlags : int
	{
		none = 0,
		preserve_serial = 1
	}
	[CRepr]
	public struct DBusServer;
	[LinkName("g_dbus_server_new_sync")]
	public static extern DBusServer* DbusServerNewSync(char8* address, DBusServerFlags flags, char8* guid, DBusAuthObserver* observer, Cancellable* cancellable);
	[LinkName("g_dbus_server_get_client_address")]
	public static extern char8* DbusServerGetClientAddress(DBusServer* server);
	[LinkName("g_dbus_server_get_flags")]
	public static extern DBusServerFlags DbusServerGetFlags(DBusServer* server);
	[LinkName("g_dbus_server_get_guid")]
	public static extern char8* DbusServerGetGuid(DBusServer* server);
	[LinkName("g_dbus_server_is_active")]
	public static extern c_int DbusServerIsActive(DBusServer* server);
	[LinkName("g_dbus_server_start")]
	public static extern void DbusServerStart(DBusServer* server);
	[LinkName("g_dbus_server_stop")]
	public static extern void DbusServerStop(DBusServer* server);
	[CRepr]
	public enum DBusServerFlags : int
	{
		none = 0,
		run_in_thread = 1,
		authentication_allow_anonymous = 2,
		authentication_require_same_user = 4
	}
	public function void DBusSignalCallback(DBusConnection connection, char8* sender_name, char8* object_path, char8* interface_name, char8* signal_name, GLib.Variant parameters, void* user_data);
	[CRepr]
	public enum DBusSignalFlags : int
	{
		none = 0,
		no_match_rule = 1,
		match_arg0_namespace = 2,
		match_arg0_path = 4
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
	public enum DBusSubtreeFlags : int
	{
		none = 0,
		dispatch_to_unenumerated_nodes = 1
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
	public static extern DataInputStream* DataInputStreamNew(InputStream* base_stream);
	[LinkName("g_data_input_stream_get_byte_order")]
	public static extern DataStreamByteOrder DataInputStreamGetByteOrder(DataInputStream* stream);
	[LinkName("g_data_input_stream_get_newline_type")]
	public static extern DataStreamNewlineType DataInputStreamGetNewlineType(DataInputStream* stream);
	[LinkName("g_data_input_stream_read_byte")]
	public static extern c_uchar DataInputStreamReadByte(DataInputStream* stream, Cancellable* cancellable);
	[LinkName("g_data_input_stream_read_int16")]
	public static extern c_short DataInputStreamReadInt16(DataInputStream* stream, Cancellable* cancellable);
	[LinkName("g_data_input_stream_read_int32")]
	public static extern c_int DataInputStreamReadInt32(DataInputStream* stream, Cancellable* cancellable);
	[LinkName("g_data_input_stream_read_int64")]
	public static extern c_longlong DataInputStreamReadInt64(DataInputStream* stream, Cancellable* cancellable);
	[LinkName("g_data_input_stream_read_line")]
	public static extern c_uchar DataInputStreamReadLine(DataInputStream* stream, c_ulong* length, Cancellable* cancellable);
	[LinkName("g_data_input_stream_read_line_async")]
	public static extern void DataInputStreamReadLineAsync(DataInputStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_data_input_stream_read_line_finish")]
	public static extern c_uchar DataInputStreamReadLineFinish(DataInputStream* stream, AsyncResult* result, c_ulong* length);
	[LinkName("g_data_input_stream_read_line_finish_utf8")]
	public static extern char8* DataInputStreamReadLineFinishUtf8(DataInputStream* stream, AsyncResult* result, c_ulong* length);
	[LinkName("g_data_input_stream_read_line_utf8")]
	public static extern char8* DataInputStreamReadLineUtf8(DataInputStream* stream, c_ulong* length, Cancellable* cancellable);
	[LinkName("g_data_input_stream_read_uint16")]
	public static extern c_ushort DataInputStreamReadUint16(DataInputStream* stream, Cancellable* cancellable);
	[LinkName("g_data_input_stream_read_uint32")]
	public static extern c_uint DataInputStreamReadUint32(DataInputStream* stream, Cancellable* cancellable);
	[LinkName("g_data_input_stream_read_uint64")]
	public static extern c_ulonglong DataInputStreamReadUint64(DataInputStream* stream, Cancellable* cancellable);
	[LinkName("g_data_input_stream_read_until")]
	public static extern char8* DataInputStreamReadUntil(DataInputStream* stream, char8* stop_chars, c_ulong* length, Cancellable* cancellable);
	[LinkName("g_data_input_stream_read_until_async")]
	public static extern void DataInputStreamReadUntilAsync(DataInputStream* stream, char8* stop_chars, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_data_input_stream_read_until_finish")]
	public static extern char8* DataInputStreamReadUntilFinish(DataInputStream* stream, AsyncResult* result, c_ulong* length);
	[LinkName("g_data_input_stream_read_upto")]
	public static extern char8* DataInputStreamReadUpto(DataInputStream* stream, char8* stop_chars, c_long stop_chars_len, c_ulong* length, Cancellable* cancellable);
	[LinkName("g_data_input_stream_read_upto_async")]
	public static extern void DataInputStreamReadUptoAsync(DataInputStream* stream, char8* stop_chars, c_long stop_chars_len, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_data_input_stream_read_upto_finish")]
	public static extern char8* DataInputStreamReadUptoFinish(DataInputStream* stream, AsyncResult* result, c_ulong* length);
	[LinkName("g_data_input_stream_set_byte_order")]
	public static extern void DataInputStreamSetByteOrder(DataInputStream* stream, DataStreamByteOrder order);
	[LinkName("g_data_input_stream_set_newline_type")]
	public static extern void DataInputStreamSetNewlineType(DataInputStream* stream, DataStreamNewlineType type);
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
	public static extern DataOutputStream* DataOutputStreamNew(OutputStream* base_stream);
	[LinkName("g_data_output_stream_get_byte_order")]
	public static extern DataStreamByteOrder DataOutputStreamGetByteOrder(DataOutputStream* stream);
	[LinkName("g_data_output_stream_put_byte")]
	public static extern c_int DataOutputStreamPutByte(DataOutputStream* stream, c_uchar data, Cancellable* cancellable);
	[LinkName("g_data_output_stream_put_int16")]
	public static extern c_int DataOutputStreamPutInt16(DataOutputStream* stream, c_short data, Cancellable* cancellable);
	[LinkName("g_data_output_stream_put_int32")]
	public static extern c_int DataOutputStreamPutInt32(DataOutputStream* stream, c_int data, Cancellable* cancellable);
	[LinkName("g_data_output_stream_put_int64")]
	public static extern c_int DataOutputStreamPutInt64(DataOutputStream* stream, c_longlong data, Cancellable* cancellable);
	[LinkName("g_data_output_stream_put_string")]
	public static extern c_int DataOutputStreamPutString(DataOutputStream* stream, char8* str, Cancellable* cancellable);
	[LinkName("g_data_output_stream_put_uint16")]
	public static extern c_int DataOutputStreamPutUint16(DataOutputStream* stream, c_ushort data, Cancellable* cancellable);
	[LinkName("g_data_output_stream_put_uint32")]
	public static extern c_int DataOutputStreamPutUint32(DataOutputStream* stream, c_uint data, Cancellable* cancellable);
	[LinkName("g_data_output_stream_put_uint64")]
	public static extern c_int DataOutputStreamPutUint64(DataOutputStream* stream, c_ulonglong data, Cancellable* cancellable);
	[LinkName("g_data_output_stream_set_byte_order")]
	public static extern void DataOutputStreamSetByteOrder(DataOutputStream* stream, DataStreamByteOrder order);
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
		big_endian = 0,
		little_endian = 1,
		host_endian = 2
	}
	public enum DataStreamNewlineType : c_int
	{
		lf = 0,
		cr = 1,
		cr_lf = 2,
		any = 3
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
	public static extern DebugControllerDBus* DebucontrollerDbusNew(DBusConnection* connection, Cancellable* cancellable);
	[LinkName("g_debug_controller_dbus_stop")]
	public static extern void DebucontrollerDbusStop(DebugControllerDBus* self);
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
	public static extern DesktopAppInfo* DesktopAppInfoNew(char8* desktop_id);
	[LinkName("g_desktop_app_info_new_from_filename")]
	public static extern DesktopAppInfo* DesktopAppInfoNewFromFilename(char8* filename);
	[LinkName("g_desktop_app_info_new_from_keyfile")]
	public static extern DesktopAppInfo* DesktopAppInfoNewFromKeyfile(GLib.KeyFile* key_file);
	[LinkName("g_desktop_app_info_get_implementations")]
	public static extern GLib.List* DesktopAppInfoGetImplementations(char8* interface_);
	[LinkName("g_desktop_app_info_search")]
	public static extern c_char*** DesktopAppInfoSearch(char8* search_string);
	[LinkName("g_desktop_app_info_set_desktop_env")]
	public static extern void DesktopAppInfoSetDesktopEnv(char8* desktop_env);
	[LinkName("g_desktop_app_info_get_action_name")]
	public static extern char8* DesktopAppInfoGetActionName(DesktopAppInfo* info, char8* action_name);
	[LinkName("g_desktop_app_info_get_boolean")]
	public static extern c_int DesktopAppInfoGetBoolean(DesktopAppInfo* info, char8* key);
	[LinkName("g_desktop_app_info_get_categories")]
	public static extern char8* DesktopAppInfoGetCategories(DesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_filename")]
	public static extern char8* DesktopAppInfoGetFilename(DesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_generic_name")]
	public static extern char8* DesktopAppInfoGetGenericName(DesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_is_hidden")]
	public static extern c_int DesktopAppInfoGetIsHidden(DesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_keywords")]
	public static extern char8* DesktopAppInfoGetKeywords(DesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_locale_string")]
	public static extern char8* DesktopAppInfoGetLocaleString(DesktopAppInfo* info, char8* key);
	[LinkName("g_desktop_app_info_get_nodisplay")]
	public static extern c_int DesktopAppInfoGetNodisplay(DesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_show_in")]
	public static extern c_int DesktopAppInfoGetShowIn(DesktopAppInfo* info, char8* desktop_env);
	[LinkName("g_desktop_app_info_get_startup_wm_class")]
	public static extern char8* DesktopAppInfoGetStartupWmClass(DesktopAppInfo* info);
	[LinkName("g_desktop_app_info_get_string")]
	public static extern char8* DesktopAppInfoGetString(DesktopAppInfo* info, char8* key);
	[LinkName("g_desktop_app_info_get_string_list")]
	public static extern char8* DesktopAppInfoGetStrinlist(DesktopAppInfo* info, char8* key, c_ulong* length);
	[LinkName("g_desktop_app_info_has_key")]
	public static extern c_int DesktopAppInfoHasKey(DesktopAppInfo* info, char8* key);
	[LinkName("g_desktop_app_info_launch_action")]
	public static extern void DesktopAppInfoLaunchAction(DesktopAppInfo* info, char8* action_name, AppLaunchContext* launch_context);
	[LinkName("g_desktop_app_info_launch_uris_as_manager")]
	public static extern c_int DesktopAppInfoLaunchUrisAsManager(DesktopAppInfo* appinfo, GLib.List* uris, AppLaunchContext* launch_context, GLib.SpawnFlags spawn_flags, GLib.SpawnChildSetupFunc user_setup, void* user_setup_data, DesktopAppLaunchCallback pid_callback, void* pid_callback_data);
	[LinkName("g_desktop_app_info_launch_uris_as_manager_with_fds")]
	public static extern c_int DesktopAppInfoLaunchUrisAsManagerWithFds(DesktopAppInfo* appinfo, GLib.List* uris, AppLaunchContext* launch_context, GLib.SpawnFlags spawn_flags, GLib.SpawnChildSetupFunc user_setup, void* user_setup_data, DesktopAppLaunchCallback pid_callback, void* pid_callback_data, c_int stdin_fd, c_int stdout_fd, c_int stderr_fd);
	[LinkName("g_desktop_app_info_list_actions")]
	public static extern char8* DesktopAppInfoListActions(DesktopAppInfo* info);
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
	public enum DriveStartFlags : int
	{
		none = 0
	}
	public enum DriveStartStopType : c_int
	{
		unknown = 0,
		shutdown = 1,
		network = 2,
		multidisk = 3,
		password = 4
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
	public static extern Emblem* EmblemNew(Icon* icon);
	[LinkName("g_emblem_new_with_origin")]
	public static extern Emblem* EmblemNewWithOrigin(Icon* icon, EmblemOrigin origin);
	[LinkName("g_emblem_get_icon")]
	public static extern Icon* EmblemGetIcon(Emblem* emblem);
	[LinkName("g_emblem_get_origin")]
	public static extern EmblemOrigin EmblemGetOrigin(Emblem* emblem);
	[CRepr]
	public struct EmblemClass
	{
	}
	public enum EmblemOrigin : c_int
	{
		unknown = 0,
		device = 1,
		livemetadata = 2,
		tag = 3
	}
	[CRepr]
	public struct EmblemedIcon;
	[LinkName("g_emblemed_icon_new")]
	public static extern EmblemedIcon* EmblemedIconNew(Icon* icon, Emblem* emblem);
	[LinkName("g_emblemed_icon_add_emblem")]
	public static extern void EmblemedIconAddEmblem(EmblemedIcon* emblemed, Emblem* emblem);
	[LinkName("g_emblemed_icon_clear_emblems")]
	public static extern void EmblemedIconClearEmblems(EmblemedIcon* emblemed);
	[LinkName("g_emblemed_icon_get_emblems")]
	public static extern GLib.List* EmblemedIconGetEmblems(EmblemedIcon* emblemed);
	[LinkName("g_emblemed_icon_get_icon")]
	public static extern Icon* EmblemedIconGetIcon(EmblemedIcon* emblemed);
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

		public function char8(File file) get_basename;

		public function File(File file, char8* display_name) get_child_for_display_name;

		public function File(File file) get_parent;

		public function char8*(File file) get_parse_name;

		public function char8(File file) get_path;

		public function char8(File parent, File descendant) get_relative_path;

		public function char8*(File file) get_uri;

		public function char8*(File file) get_uri_scheme;

		public function c_int(File file, char8* uri_scheme) has_uri_scheme;

		public function c_uint(File file) hash;

		public function c_int(File file) is_native;

		public function c_int(File file, Cancellable cancellable) make_directory;

		public function void(File file, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) make_directory_async;

		public function c_int(File file, AsyncResult result) make_directory_finish;

		public function c_int(File file, char8 symlink_value, Cancellable cancellable) make_symbolic_link;

		public function void(File file, char8 symlink_value, c_int io_priority, Cancellable cancellable, AsyncReadyCallback callback, void* user_data) make_symbolic_link_async;

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

		public function File(File file, char8 relative_path) resolve_relative_path;

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
	public enum FileAttributeInfoFlags : int
	{
		none = 0,
		copy_with_file = 1,
		copy_when_moved = 2
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
		unset = 0,
		set = 1,
		error_setting = 2
	}
	public enum FileAttributeType : c_int
	{
		invalid = 0,
		string = 1,
		byte_string = 2,
		boolean = 3,
		uint32 = 4,
		int32 = 5,
		uint64 = 6,
		int64 = 7,
		object = 8,
		stringv = 9
	}
	[CRepr]
	public enum FileCopyFlags : int
	{
		none = 0,
		overwrite = 1,
		backup = 2,
		nofollow_symlinks = 4,
		all_metadata = 8,
		no_fallback_for_move = 16,
		target_default_perms = 32
	}
	[CRepr]
	public enum FileCreateFlags : int
	{
		none = 0,
		private_ = 1,
		replace_destination = 2
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
	public static extern c_int FileEnumeratorClose(FileEnumerator* enumerator, Cancellable* cancellable);
	[LinkName("g_file_enumerator_close_async")]
	public static extern void FileEnumeratorCloseAsync(FileEnumerator* enumerator, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_enumerator_close_finish")]
	public static extern c_int FileEnumeratorCloseFinish(FileEnumerator* enumerator, AsyncResult* result);
	[LinkName("g_file_enumerator_get_child")]
	public static extern File* FileEnumeratorGetChild(FileEnumerator* enumerator, FileInfo* info);
	[LinkName("g_file_enumerator_get_container")]
	public static extern File* FileEnumeratorGetContainer(FileEnumerator* enumerator);
	[LinkName("g_file_enumerator_has_pending")]
	public static extern c_int FileEnumeratorHasPending(FileEnumerator* enumerator);
	[LinkName("g_file_enumerator_is_closed")]
	public static extern c_int FileEnumeratorIsClosed(FileEnumerator* enumerator);
	[LinkName("g_file_enumerator_iterate")]
	public static extern c_int FileEnumeratorIterate(FileEnumerator* direnum, FileInfo* out_info, File* out_child, Cancellable* cancellable);
	[LinkName("g_file_enumerator_next_file")]
	public static extern FileInfo* FileEnumeratorNextFile(FileEnumerator* enumerator, Cancellable* cancellable);
	[LinkName("g_file_enumerator_next_files_async")]
	public static extern void FileEnumeratorNextFilesAsync(FileEnumerator* enumerator, c_int num_files, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_enumerator_next_files_finish")]
	public static extern GLib.List* FileEnumeratorNextFilesFinish(FileEnumerator* enumerator, AsyncResult* result);
	[LinkName("g_file_enumerator_set_pending")]
	public static extern void FileEnumeratorSetPending(FileEnumerator* enumerator, c_int pending);
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
	public static extern char8* FileIoStreamGetEtag(FileIOStream* stream);
	[LinkName("g_file_io_stream_query_info")]
	public static extern FileInfo* FileIoStreamQueryInfo(FileIOStream* stream, char8* attributes, Cancellable* cancellable);
	[LinkName("g_file_io_stream_query_info_async")]
	public static extern void FileIoStreamQueryInfoAsync(FileIOStream* stream, char8* attributes, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_io_stream_query_info_finish")]
	public static extern FileInfo* FileIoStreamQueryInfoFinish(FileIOStream* stream, AsyncResult* result);
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
	public static extern FileIcon* FileIconNew(File* file);
	[LinkName("g_file_icon_get_file")]
	public static extern File* FileIconGetFile(FileIcon* icon);
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
	public static extern FileInfo* FileInfoNew();
	[LinkName("g_file_info_clear_status")]
	public static extern void FileInfoClearStatus(FileInfo* info);
	[LinkName("g_file_info_copy_into")]
	public static extern void FileInfoCopyInto(FileInfo* src_info, FileInfo* dest_info);
	[LinkName("g_file_info_dup")]
	public static extern FileInfo* FileInfoDup(FileInfo* other);
	[LinkName("g_file_info_get_access_date_time")]
	public static extern GLib.DateTime* FileInfoGetAccessDateTime(FileInfo* info);
	[LinkName("g_file_info_get_attribute_as_string")]
	public static extern char8* FileInfoGetAttributeAsString(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_get_attribute_boolean")]
	public static extern c_int FileInfoGetAttributeBoolean(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_get_attribute_byte_string")]
	public static extern char8* FileInfoGetAttributeByteString(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_get_attribute_data")]
	public static extern c_int FileInfoGetAttributeData(FileInfo* info, char8* attribute, FileAttributeType* type, void* value_pp, FileAttributeStatus* status);
	[LinkName("g_file_info_get_attribute_int32")]
	public static extern c_int FileInfoGetAttributeInt32(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_get_attribute_int64")]
	public static extern c_longlong FileInfoGetAttributeInt64(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_get_attribute_object")]
	public static extern GObject.Object* FileInfoGetAttributeObject(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_get_attribute_status")]
	public static extern FileAttributeStatus FileInfoGetAttributeStatus(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_get_attribute_string")]
	public static extern char8* FileInfoGetAttributeString(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_get_attribute_stringv")]
	public static extern char8* FileInfoGetAttributeStringv(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_get_attribute_type")]
	public static extern FileAttributeType FileInfoGetAttributeType(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_get_attribute_uint32")]
	public static extern c_uint FileInfoGetAttributeUint32(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_get_attribute_uint64")]
	public static extern c_ulonglong FileInfoGetAttributeUint64(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_get_content_type")]
	public static extern char8* FileInfoGetContentType(FileInfo* info);
	[LinkName("g_file_info_get_creation_date_time")]
	public static extern GLib.DateTime* FileInfoGetCreationDateTime(FileInfo* info);
	[LinkName("g_file_info_get_deletion_date")]
	public static extern GLib.DateTime* FileInfoGetDeletionDate(FileInfo* info);
	[LinkName("g_file_info_get_display_name")]
	public static extern char8* FileInfoGetDisplayName(FileInfo* info);
	[LinkName("g_file_info_get_edit_name")]
	public static extern char8* FileInfoGetEditName(FileInfo* info);
	[LinkName("g_file_info_get_etag")]
	public static extern char8* FileInfoGetEtag(FileInfo* info);
	[LinkName("g_file_info_get_file_type")]
	public static extern FileType FileInfoGetFileType(FileInfo* info);
	[LinkName("g_file_info_get_icon")]
	public static extern Icon* FileInfoGetIcon(FileInfo* info);
	[LinkName("g_file_info_get_is_backup")]
	public static extern c_int FileInfoGetIsBackup(FileInfo* info);
	[LinkName("g_file_info_get_is_hidden")]
	public static extern c_int FileInfoGetIsHidden(FileInfo* info);
	[LinkName("g_file_info_get_is_symlink")]
	public static extern c_int FileInfoGetIsSymlink(FileInfo* info);
	[LinkName("g_file_info_get_modification_date_time")]
	public static extern GLib.DateTime* FileInfoGetModificationDateTime(FileInfo* info);
	[LinkName("g_file_info_get_modification_time")]
	public static extern void FileInfoGetModificationTime(FileInfo* info, GLib.TimeVal* result);
	[LinkName("g_file_info_get_name")]
	public static extern char8* FileInfoGetName(FileInfo* info);
	[LinkName("g_file_info_get_size")]
	public static extern c_longlong FileInfoGetSize(FileInfo* info);
	[LinkName("g_file_info_get_sort_order")]
	public static extern c_int FileInfoGetSortOrder(FileInfo* info);
	[LinkName("g_file_info_get_symbolic_icon")]
	public static extern Icon* FileInfoGetSymbolicIcon(FileInfo* info);
	[LinkName("g_file_info_get_symlink_target")]
	public static extern char8* FileInfoGetSymlinkTarget(FileInfo* info);
	[LinkName("g_file_info_has_attribute")]
	public static extern c_int FileInfoHasAttribute(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_has_namespace")]
	public static extern c_int FileInfoHasNamespace(FileInfo* info, char8* name_space);
	[LinkName("g_file_info_list_attributes")]
	public static extern char8* FileInfoListAttributes(FileInfo* info, char8* name_space);
	[LinkName("g_file_info_remove_attribute")]
	public static extern void FileInfoRemoveAttribute(FileInfo* info, char8* attribute);
	[LinkName("g_file_info_set_access_date_time")]
	public static extern void FileInfoSetAccessDateTime(FileInfo* info, GLib.DateTime* atime);
	[LinkName("g_file_info_set_attribute")]
	public static extern void FileInfoSetAttribute(FileInfo* info, char8* attribute, FileAttributeType type, void* value_p);
	[LinkName("g_file_info_set_attribute_boolean")]
	public static extern void FileInfoSetAttributeBoolean(FileInfo* info, char8* attribute, c_int attr_value);
	[LinkName("g_file_info_set_attribute_byte_string")]
	public static extern void FileInfoSetAttributeByteString(FileInfo* info, char8* attribute, char8* attr_value);
	[LinkName("g_file_info_set_attribute_int32")]
	public static extern void FileInfoSetAttributeInt32(FileInfo* info, char8* attribute, c_int attr_value);
	[LinkName("g_file_info_set_attribute_int64")]
	public static extern void FileInfoSetAttributeInt64(FileInfo* info, char8* attribute, c_longlong attr_value);
	[LinkName("g_file_info_set_attribute_mask")]
	public static extern void FileInfoSetAttributeMask(FileInfo* info, FileAttributeMatcher* mask);
	[LinkName("g_file_info_set_attribute_object")]
	public static extern void FileInfoSetAttributeObject(FileInfo* info, char8* attribute, GObject.Object* attr_value);
	[LinkName("g_file_info_set_attribute_status")]
	public static extern c_int FileInfoSetAttributeStatus(FileInfo* info, char8* attribute, FileAttributeStatus status);
	[LinkName("g_file_info_set_attribute_string")]
	public static extern void FileInfoSetAttributeString(FileInfo* info, char8* attribute, char8* attr_value);
	[LinkName("g_file_info_set_attribute_stringv")]
	public static extern void FileInfoSetAttributeStringv(FileInfo* info, char8* attribute, char8* attr_value);
	[LinkName("g_file_info_set_attribute_uint32")]
	public static extern void FileInfoSetAttributeUint32(FileInfo* info, char8* attribute, c_uint attr_value);
	[LinkName("g_file_info_set_attribute_uint64")]
	public static extern void FileInfoSetAttributeUint64(FileInfo* info, char8* attribute, c_ulonglong attr_value);
	[LinkName("g_file_info_set_content_type")]
	public static extern void FileInfoSetContentType(FileInfo* info, char8* content_type);
	[LinkName("g_file_info_set_creation_date_time")]
	public static extern void FileInfoSetCreationDateTime(FileInfo* info, GLib.DateTime* creation_time);
	[LinkName("g_file_info_set_display_name")]
	public static extern void FileInfoSetDisplayName(FileInfo* info, char8* display_name);
	[LinkName("g_file_info_set_edit_name")]
	public static extern void FileInfoSetEditName(FileInfo* info, char8* edit_name);
	[LinkName("g_file_info_set_file_type")]
	public static extern void FileInfoSetFileType(FileInfo* info, FileType type);
	[LinkName("g_file_info_set_icon")]
	public static extern void FileInfoSetIcon(FileInfo* info, Icon* icon);
	[LinkName("g_file_info_set_is_hidden")]
	public static extern void FileInfoSetIsHidden(FileInfo* info, c_int is_hidden);
	[LinkName("g_file_info_set_is_symlink")]
	public static extern void FileInfoSetIsSymlink(FileInfo* info, c_int is_symlink);
	[LinkName("g_file_info_set_modification_date_time")]
	public static extern void FileInfoSetModificationDateTime(FileInfo* info, GLib.DateTime* mtime);
	[LinkName("g_file_info_set_modification_time")]
	public static extern void FileInfoSetModificationTime(FileInfo* info, GLib.TimeVal* mtime);
	[LinkName("g_file_info_set_name")]
	public static extern void FileInfoSetName(FileInfo* info, char8* name);
	[LinkName("g_file_info_set_size")]
	public static extern void FileInfoSetSize(FileInfo* info, c_longlong size);
	[LinkName("g_file_info_set_sort_order")]
	public static extern void FileInfoSetSortOrder(FileInfo* info, c_int sort_order);
	[LinkName("g_file_info_set_symbolic_icon")]
	public static extern void FileInfoSetSymbolicIcon(FileInfo* info, Icon* icon);
	[LinkName("g_file_info_set_symlink_target")]
	public static extern void FileInfoSetSymlinkTarget(FileInfo* info, char8* symlink_target);
	[LinkName("g_file_info_unset_attribute_mask")]
	public static extern void FileInfoUnsetAttributeMask(FileInfo* info);
	[CRepr]
	public struct FileInfoClass
	{
	}
	[CRepr]
	public struct FileInputStream;
	[LinkName("g_file_input_stream_query_info")]
	public static extern FileInfo* FileInputStreamQueryInfo(FileInputStream* stream, char8* attributes, Cancellable* cancellable);
	[LinkName("g_file_input_stream_query_info_async")]
	public static extern void FileInputStreamQueryInfoAsync(FileInputStream* stream, char8* attributes, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_input_stream_query_info_finish")]
	public static extern FileInfo* FileInputStreamQueryInfoFinish(FileInputStream* stream, AsyncResult* result);
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
	public enum FileMeasureFlags : int
	{
		none = 0,
		report_any_error = 2,
		apparent_size = 4,
		no_xdev = 8
	}
	public function void FileMeasureProgressCallback(c_int reporting, c_ulonglong current_size, c_ulonglong num_dirs, c_ulonglong num_files, void* data);
	[CRepr]
	public struct FileMonitor;
	[LinkName("g_file_monitor_cancel")]
	public static extern c_int FileMonitorCancel(FileMonitor* monitor);
	[LinkName("g_file_monitor_emit_event")]
	public static extern void FileMonitorEmitEvent(FileMonitor* monitor, File* child, File* other_file, FileMonitorEvent event_type);
	[LinkName("g_file_monitor_is_cancelled")]
	public static extern c_int FileMonitorIsCancelled(FileMonitor* monitor);
	[LinkName("g_file_monitor_set_rate_limit")]
	public static extern void FileMonitorSetRateLimit(FileMonitor* monitor, c_int limit_msecs);
	[CRepr]
	public struct FileMonitorClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum FileMonitorEvent : c_int
	{
		changed = 0,
		changes_done_hint = 1,
		deleted = 2,
		created = 3,
		attribute_changed = 4,
		pre_unmount = 5,
		unmounted = 6,
		moved = 7,
		renamed = 8,
		moved_in = 9,
		moved_out = 10
	}
	[CRepr]
	public enum FileMonitorFlags : int
	{
		none = 0,
		watch_mounts = 1,
		send_moved = 2,
		watch_hard_links = 4,
		watch_moves = 8
	}
	[CRepr]
	public struct FileMonitorPrivate
	{
	}
	[CRepr]
	public struct FileOutputStream;
	[LinkName("g_file_output_stream_get_etag")]
	public static extern char8* FileOutputStreamGetEtag(FileOutputStream* stream);
	[LinkName("g_file_output_stream_query_info")]
	public static extern FileInfo* FileOutputStreamQueryInfo(FileOutputStream* stream, char8* attributes, Cancellable* cancellable);
	[LinkName("g_file_output_stream_query_info_async")]
	public static extern void FileOutputStreamQueryInfoAsync(FileOutputStream* stream, char8* attributes, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_output_stream_query_info_finish")]
	public static extern FileInfo* FileOutputStreamQueryInfoFinish(FileOutputStream* stream, AsyncResult* result);
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
	public enum FileQueryInfoFlags : int
	{
		none = 0,
		nofollow_symlinks = 1
	}
	public function c_int FileReadMoreCallback(char8* file_contents, c_longlong file_size, void* callback_data);
	public enum FileType : c_int
	{
		unknown = 0,
		regular = 1,
		directory = 2,
		symbolic_link = 3,
		special = 4,
		shortcut = 5,
		mountable = 6
	}
	[CRepr]
	public struct FilenameCompleter;
	[LinkName("g_filename_completer_new")]
	public static extern FilenameCompleter* FilenameCompleterNew();
	[LinkName("g_filename_completer_get_completion_suffix")]
	public static extern char8* FilenameCompleterGetCompletionSuffix(FilenameCompleter* completer, char8* initial_text);
	[LinkName("g_filename_completer_get_completions")]
	public static extern char8* FilenameCompleterGetCompletions(FilenameCompleter* completer, char8* initial_text);
	[LinkName("g_filename_completer_set_dirs_only")]
	public static extern void FilenameCompleterSetDirsOnly(FilenameCompleter* completer, c_int dirs_only);
	[CRepr]
	public struct FilenameCompleterClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum FilesystemPreviewType : c_int
	{
		if_always = 0,
		if_local = 1,
		never = 2
	}
	[CRepr]
	public struct FilterInputStream;
	[LinkName("g_filter_input_stream_get_base_stream")]
	public static extern InputStream* FilterInputStreamGetBaseStream(FilterInputStream* stream);
	[LinkName("g_filter_input_stream_get_close_base_stream")]
	public static extern c_int FilterInputStreamGetCloseBaseStream(FilterInputStream* stream);
	[LinkName("g_filter_input_stream_set_close_base_stream")]
	public static extern void FilterInputStreamSetCloseBaseStream(FilterInputStream* stream, c_int close_base);
	[CRepr]
	public struct FilterInputStreamClass
	{
		InputStreamClass parent_class;
	}
	[CRepr]
	public struct FilterOutputStream;
	[LinkName("g_filter_output_stream_get_base_stream")]
	public static extern OutputStream* FilterOutputStreamGetBaseStream(FilterOutputStream* stream);
	[LinkName("g_filter_output_stream_get_close_base_stream")]
	public static extern c_int FilterOutputStreamGetCloseBaseStream(FilterOutputStream* stream);
	[LinkName("g_filter_output_stream_set_close_base_stream")]
	public static extern void FilterOutputStreamSetCloseBaseStream(FilterOutputStream* stream, c_int close_base);
	[CRepr]
	public struct FilterOutputStreamClass
	{
		OutputStreamClass parent_class;
	}
	[AllowDuplicates]
	public enum IOErrorEnum : c_int
	{
		failed = 0,
		not_found = 1,
		exists = 2,
		is_directory = 3,
		not_directory = 4,
		not_empty = 5,
		not_regular_file = 6,
		not_symbolic_link = 7,
		not_mountable_file = 8,
		filename_too_long = 9,
		invalid_filename = 10,
		too_many_links = 11,
		no_space = 12,
		invalid_argument = 13,
		permission_denied = 14,
		not_supported = 15,
		not_mounted = 16,
		already_mounted = 17,
		closed = 18,
		cancelled = 19,
		pending = 20,
		read_only = 21,
		cant_create_backup = 22,
		wrong_etag = 23,
		timed_out = 24,
		would_recurse = 25,
		busy = 26,
		would_block = 27,
		host_not_found = 28,
		would_merge = 29,
		failed_handled = 30,
		too_many_open_files = 31,
		not_initialized = 32,
		address_in_use = 33,
		partial_input = 34,
		invalid_data = 35,
		dbus_error = 36,
		host_unreachable = 37,
		network_unreachable = 38,
		connection_refused = 39,
		proxy_failed = 40,
		proxy_auth_failed = 41,
		proxy_need_auth = 42,
		proxy_not_allowed = 43,
		broken_pipe = 44,
		connection_closed = 44,
		not_connected = 45,
		message_too_large = 46,
		no_such_device = 47
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
	public static extern IOModule* IoModuleNew(char8* filename);
	[LinkName("g_io_module_query")]
	public static extern char8* IoModuleQuery();
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
		none = 0,
		block_duplicates = 1
	}
	[CRepr]
	public struct IOSchedulerJob
	{
	}
	public function c_int IOSchedulerJobFunc(IOSchedulerJob job, Cancellable cancellable, void* data);
	[CRepr]
	public struct IOStream;
	[LinkName("g_io_stream_splice_finish")]
	public static extern c_int IoStreamSpliceFinish(AsyncResult* result);
	[LinkName("g_io_stream_clear_pending")]
	public static extern void IoStreamClearPending(IOStream* stream);
	[LinkName("g_io_stream_close")]
	public static extern c_int IoStreamClose(IOStream* stream, Cancellable* cancellable);
	[LinkName("g_io_stream_close_async")]
	public static extern void IoStreamCloseAsync(IOStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_io_stream_close_finish")]
	public static extern c_int IoStreamCloseFinish(IOStream* stream, AsyncResult* result);
	[LinkName("g_io_stream_get_input_stream")]
	public static extern InputStream* IoStreamGetInputStream(IOStream* stream);
	[LinkName("g_io_stream_get_output_stream")]
	public static extern OutputStream* IoStreamGetOutputStream(IOStream* stream);
	[LinkName("g_io_stream_has_pending")]
	public static extern c_int IoStreamHasPending(IOStream* stream);
	[LinkName("g_io_stream_is_closed")]
	public static extern c_int IoStreamIsClosed(IOStream* stream);
	[LinkName("g_io_stream_set_pending")]
	public static extern c_int IoStreamSetPending(IOStream* stream);
	[LinkName("g_io_stream_splice_async")]
	public static extern void IoStreamSpliceAsync(IOStream* stream1, IOStream* stream2, IOStreamSpliceFlags flags, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
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
	public enum IOStreamSpliceFlags : int
	{
		none = 0,
		close_stream1 = 1,
		close_stream2 = 2,
		wait_for_both = 4
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
	public static extern InetAddress* InetAddressNewAny(SocketFamily family);
	[LinkName("g_inet_address_new_from_bytes")]
	public static extern InetAddress* InetAddressNewFromBytes(c_uchar* bytes, SocketFamily family);
	[LinkName("g_inet_address_new_from_string")]
	public static extern InetAddress* InetAddressNewFromString(char8* string);
	[LinkName("g_inet_address_new_loopback")]
	public static extern InetAddress* InetAddressNewLoopback(SocketFamily family);
	[LinkName("g_inet_address_equal")]
	public static extern c_int InetAddressEqual(InetAddress* address, InetAddress* other_address);
	[LinkName("g_inet_address_get_family")]
	public static extern SocketFamily InetAddressGetFamily(InetAddress* address);
	[LinkName("g_inet_address_get_is_any")]
	public static extern c_int InetAddressGetIsAny(InetAddress* address);
	[LinkName("g_inet_address_get_is_link_local")]
	public static extern c_int InetAddressGetIsLinkLocal(InetAddress* address);
	[LinkName("g_inet_address_get_is_loopback")]
	public static extern c_int InetAddressGetIsLoopback(InetAddress* address);
	[LinkName("g_inet_address_get_is_mc_global")]
	public static extern c_int InetAddressGetIsMcGlobal(InetAddress* address);
	[LinkName("g_inet_address_get_is_mc_link_local")]
	public static extern c_int InetAddressGetIsMcLinkLocal(InetAddress* address);
	[LinkName("g_inet_address_get_is_mc_node_local")]
	public static extern c_int InetAddressGetIsMcNodeLocal(InetAddress* address);
	[LinkName("g_inet_address_get_is_mc_org_local")]
	public static extern c_int InetAddressGetIsMcOrlocal(InetAddress* address);
	[LinkName("g_inet_address_get_is_mc_site_local")]
	public static extern c_int InetAddressGetIsMcSiteLocal(InetAddress* address);
	[LinkName("g_inet_address_get_is_multicast")]
	public static extern c_int InetAddressGetIsMulticast(InetAddress* address);
	[LinkName("g_inet_address_get_is_site_local")]
	public static extern c_int InetAddressGetIsSiteLocal(InetAddress* address);
	[LinkName("g_inet_address_get_native_size")]
	public static extern c_ulong InetAddressGetNativeSize(InetAddress* address);
	[LinkName("g_inet_address_to_string")]
	public static extern char8* InetAddressToString(InetAddress* address);
	[CRepr]
	public struct InetAddressClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct InetAddressMask;
	[LinkName("g_inet_address_mask_new")]
	public static extern InetAddressMask* InetAddressMaskNew(InetAddress* addr, c_uint length);
	[LinkName("g_inet_address_mask_new_from_string")]
	public static extern InetAddressMask* InetAddressMaskNewFromString(char8* mask_string);
	[LinkName("g_inet_address_mask_equal")]
	public static extern c_int InetAddressMaskEqual(InetAddressMask* mask, InetAddressMask* mask2);
	[LinkName("g_inet_address_mask_get_address")]
	public static extern InetAddress* InetAddressMaskGetAddress(InetAddressMask* mask);
	[LinkName("g_inet_address_mask_get_family")]
	public static extern SocketFamily InetAddressMaskGetFamily(InetAddressMask* mask);
	[LinkName("g_inet_address_mask_get_length")]
	public static extern c_uint InetAddressMaskGetLength(InetAddressMask* mask);
	[LinkName("g_inet_address_mask_matches")]
	public static extern c_int InetAddressMaskMatches(InetAddressMask* mask, InetAddress* address);
	[LinkName("g_inet_address_mask_to_string")]
	public static extern char8* InetAddressMaskToString(InetAddressMask* mask);
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
	public static extern SocketAddress* InetSocketAddressNew(InetAddress* address, c_ushort port);
	[LinkName("g_inet_socket_address_new_from_string")]
	public static extern SocketAddress* InetSocketAddressNewFromString(char8* address, c_uint port);
	[LinkName("g_inet_socket_address_get_address")]
	public static extern InetAddress* InetSocketAddressGetAddress(InetSocketAddress* address);
	[LinkName("g_inet_socket_address_get_flowinfo")]
	public static extern c_uint InetSocketAddressGetFlowinfo(InetSocketAddress* address);
	[LinkName("g_inet_socket_address_get_port")]
	public static extern c_ushort InetSocketAddressGetPort(InetSocketAddress* address);
	[LinkName("g_inet_socket_address_get_scope_id")]
	public static extern c_uint InetSocketAddressGetScopeId(InetSocketAddress* address);
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
	public static extern void InputStreamClearPending(InputStream* stream);
	[LinkName("g_input_stream_close")]
	public static extern c_int InputStreamClose(InputStream* stream, Cancellable* cancellable);
	[LinkName("g_input_stream_close_async")]
	public static extern void InputStreamCloseAsync(InputStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_close_finish")]
	public static extern c_int InputStreamCloseFinish(InputStream* stream, AsyncResult* result);
	[LinkName("g_input_stream_has_pending")]
	public static extern c_int InputStreamHasPending(InputStream* stream);
	[LinkName("g_input_stream_is_closed")]
	public static extern c_int InputStreamIsClosed(InputStream* stream);
	[LinkName("g_input_stream_read")]
	public static extern c_long InputStreamRead(InputStream* stream, c_uchar* buffer, c_ulong count, Cancellable* cancellable);
	[LinkName("g_input_stream_read_all")]
	public static extern c_int InputStreamReadAll(InputStream* stream, c_uchar* buffer, c_ulong count, c_ulong* bytes_read, Cancellable* cancellable);
	[LinkName("g_input_stream_read_all_async")]
	public static extern void InputStreamReadAllAsync(InputStream* stream, c_uchar* buffer, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_read_all_finish")]
	public static extern c_int InputStreamReadAllFinish(InputStream* stream, AsyncResult* result, c_ulong* bytes_read);
	[LinkName("g_input_stream_read_async")]
	public static extern void InputStreamReadAsync(InputStream* stream, c_uchar* buffer, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_read_bytes")]
	public static extern GLib.Bytes* InputStreamReadBytes(InputStream* stream, c_ulong count, Cancellable* cancellable);
	[LinkName("g_input_stream_read_bytes_async")]
	public static extern void InputStreamReadBytesAsync(InputStream* stream, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_read_bytes_finish")]
	public static extern GLib.Bytes* InputStreamReadBytesFinish(InputStream* stream, AsyncResult* result);
	[LinkName("g_input_stream_read_finish")]
	public static extern c_long InputStreamReadFinish(InputStream* stream, AsyncResult* result);
	[LinkName("g_input_stream_set_pending")]
	public static extern c_int InputStreamSetPending(InputStream* stream);
	[LinkName("g_input_stream_skip")]
	public static extern c_long InputStreamSkip(InputStream* stream, c_ulong count, Cancellable* cancellable);
	[LinkName("g_input_stream_skip_async")]
	public static extern void InputStreamSkipAsync(InputStream* stream, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_input_stream_skip_finish")]
	public static extern c_long InputStreamSkipFinish(InputStream* stream, AsyncResult* result);
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
	public static extern ListStore* ListStoreNew(GLib.Type item_type);
	[LinkName("g_list_store_append")]
	public static extern void ListStoreAppend(ListStore* store, GObject.Object item);
	[LinkName("g_list_store_find")]
	public static extern c_int ListStoreFind(ListStore* store, GObject.Object item, c_uint* position);
	[LinkName("g_list_store_find_with_equal_func")]
	public static extern c_int ListStoreFindWithEqualFunc(ListStore* store, GObject.Object item, GLib.EqualFunc equal_func, c_uint* position);
	[LinkName("g_list_store_find_with_equal_func_full")]
	public static extern c_int ListStoreFindWithEqualFuncFull(ListStore* store, GObject.Object item, GLib.EqualFuncFull equal_func, void* user_data, c_uint* position);
	[LinkName("g_list_store_insert")]
	public static extern void ListStoreInsert(ListStore* store, c_uint position, GObject.Object item);
	[LinkName("g_list_store_insert_sorted")]
	public static extern c_uint ListStoreInsertSorted(ListStore* store, GObject.Object item, GLib.CompareDataFunc compare_func, void* user_data);
	[LinkName("g_list_store_remove")]
	public static extern void ListStoreRemove(ListStore* store, c_uint position);
	[LinkName("g_list_store_remove_all")]
	public static extern void ListStoreRemoveAll(ListStore* store);
	[LinkName("g_list_store_sort")]
	public static extern void ListStoreSort(ListStore* store, GLib.CompareDataFunc compare_func, void* user_data);
	[LinkName("g_list_store_splice")]
	public static extern void ListStoreSplice(ListStore* store, c_uint position, c_uint n_removals, GObject.Object* additions, c_uint n_additions);
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
	public static extern InputStream* MemoryInputStreamNew();
	[LinkName("g_memory_input_stream_new_from_bytes")]
	public static extern InputStream* MemoryInputStreamNewFromBytes(GLib.Bytes* bytes);
	[LinkName("g_memory_input_stream_new_from_data")]
	public static extern InputStream* MemoryInputStreamNewFromData(c_uchar* data, c_long len, GLib.DestroyNotify destroy);
	[LinkName("g_memory_input_stream_add_bytes")]
	public static extern void MemoryInputStreamAddBytes(MemoryInputStream* stream, GLib.Bytes* bytes);
	[LinkName("g_memory_input_stream_add_data")]
	public static extern void MemoryInputStreamAddData(MemoryInputStream* stream, c_uchar* data, c_long len, GLib.DestroyNotify destroy);
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
		low = 50,
		medium = 100,
		critical = 255
	}
	[CRepr]
	public struct MemoryOutputStream;
	[LinkName("g_memory_output_stream_new_resizable")]
	public static extern OutputStream* MemoryOutputStreamNewResizable();
	[LinkName("g_memory_output_stream_get_data")]
	public static extern void* MemoryOutputStreamGetData(MemoryOutputStream* ostream);
	[LinkName("g_memory_output_stream_get_data_size")]
	public static extern c_ulong MemoryOutputStreamGetDataSize(MemoryOutputStream* ostream);
	[LinkName("g_memory_output_stream_get_size")]
	public static extern c_ulong MemoryOutputStreamGetSize(MemoryOutputStream* ostream);
	[LinkName("g_memory_output_stream_steal_as_bytes")]
	public static extern GLib.Bytes* MemoryOutputStreamStealAsBytes(MemoryOutputStream* ostream);
	[LinkName("g_memory_output_stream_steal_data")]
	public static extern void* MemoryOutputStreamStealData(MemoryOutputStream* ostream);
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
	public static extern Menu* MenuNew();
	[LinkName("g_menu_append")]
	public static extern void MenuAppend(Menu* menu, char8* label, char8* detailed_action);
	[LinkName("g_menu_append_item")]
	public static extern void MenuAppendItem(Menu* menu, MenuItem* item);
	[LinkName("g_menu_append_section")]
	public static extern void MenuAppendSection(Menu* menu, char8* label, MenuModel* section);
	[LinkName("g_menu_append_submenu")]
	public static extern void MenuAppendSubmenu(Menu* menu, char8* label, MenuModel* submenu);
	[LinkName("g_menu_freeze")]
	public static extern void MenuFreeze(Menu* menu);
	[LinkName("g_menu_insert")]
	public static extern void MenuInsert(Menu* menu, c_int position, char8* label, char8* detailed_action);
	[LinkName("g_menu_insert_item")]
	public static extern void MenuInsertItem(Menu* menu, c_int position, MenuItem* item);
	[LinkName("g_menu_insert_section")]
	public static extern void MenuInsertSection(Menu* menu, c_int position, char8* label, MenuModel* section);
	[LinkName("g_menu_insert_submenu")]
	public static extern void MenuInsertSubmenu(Menu* menu, c_int position, char8* label, MenuModel* submenu);
	[LinkName("g_menu_prepend")]
	public static extern void MenuPrepend(Menu* menu, char8* label, char8* detailed_action);
	[LinkName("g_menu_prepend_item")]
	public static extern void MenuPrependItem(Menu* menu, MenuItem* item);
	[LinkName("g_menu_prepend_section")]
	public static extern void MenuPrependSection(Menu* menu, char8* label, MenuModel* section);
	[LinkName("g_menu_prepend_submenu")]
	public static extern void MenuPrependSubmenu(Menu* menu, char8* label, MenuModel* submenu);
	[LinkName("g_menu_remove")]
	public static extern void MenuRemove(Menu* menu, c_int position);
	[LinkName("g_menu_remove_all")]
	public static extern void MenuRemoveAll(Menu* menu);
	[CRepr]
	public struct MenuAttributeIter;
	[LinkName("g_menu_attribute_iter_get_name")]
	public static extern char8* MenuAttributeIterGetName(MenuAttributeIter* iter);
	[LinkName("g_menu_attribute_iter_get_next")]
	public static extern c_int MenuAttributeIterGetNext(MenuAttributeIter* iter, char8* out_name, GLib.Variant* value);
	[LinkName("g_menu_attribute_iter_get_value")]
	public static extern GLib.Variant* MenuAttributeIterGetValue(MenuAttributeIter* iter);
	[LinkName("g_menu_attribute_iter_next")]
	public static extern c_int MenuAttributeIterNext(MenuAttributeIter* iter);
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
	public static extern MenuItem* MenuItemNew(char8* label, char8* detailed_action);
	[LinkName("g_menu_item_new_from_model")]
	public static extern MenuItem* MenuItemNewFromModel(MenuModel* model, c_int item_index);
	[LinkName("g_menu_item_new_section")]
	public static extern MenuItem* MenuItemNewSection(char8* label, MenuModel* section);
	[LinkName("g_menu_item_new_submenu")]
	public static extern MenuItem* MenuItemNewSubmenu(char8* label, MenuModel* submenu);
	[LinkName("g_menu_item_get_attribute_value")]
	public static extern GLib.Variant* MenuItemGetAttributeValue(MenuItem* menu_item, char8* attribute, GLib.VariantType* expected_type);
	[LinkName("g_menu_item_get_link")]
	public static extern MenuModel* MenuItemGetLink(MenuItem* menu_item, char8* link);
	[LinkName("g_menu_item_set_action_and_target_value")]
	public static extern void MenuItemSetActionAndTargetValue(MenuItem* menu_item, char8* action, GLib.Variant* target_value);
	[LinkName("g_menu_item_set_attribute_value")]
	public static extern void MenuItemSetAttributeValue(MenuItem* menu_item, char8* attribute, GLib.Variant* value);
	[LinkName("g_menu_item_set_detailed_action")]
	public static extern void MenuItemSetDetailedAction(MenuItem* menu_item, char8* detailed_action);
	[LinkName("g_menu_item_set_icon")]
	public static extern void MenuItemSetIcon(MenuItem* menu_item, Icon* icon);
	[LinkName("g_menu_item_set_label")]
	public static extern void MenuItemSetLabel(MenuItem* menu_item, char8* label);
	[LinkName("g_menu_item_set_link")]
	public static extern void MenuItemSetLink(MenuItem* menu_item, char8* link, MenuModel* model);
	[LinkName("g_menu_item_set_section")]
	public static extern void MenuItemSetSection(MenuItem* menu_item, MenuModel* section);
	[LinkName("g_menu_item_set_submenu")]
	public static extern void MenuItemSetSubmenu(MenuItem* menu_item, MenuModel* submenu);
	[CRepr]
	public struct MenuLinkIter;
	[LinkName("g_menu_link_iter_get_name")]
	public static extern char8* MenuLinkIterGetName(MenuLinkIter* iter);
	[LinkName("g_menu_link_iter_get_next")]
	public static extern c_int MenuLinkIterGetNext(MenuLinkIter* iter, char8* out_link, MenuModel* value);
	[LinkName("g_menu_link_iter_get_value")]
	public static extern MenuModel* MenuLinkIterGetValue(MenuLinkIter* iter);
	[LinkName("g_menu_link_iter_next")]
	public static extern c_int MenuLinkIterNext(MenuLinkIter* iter);
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
	[LinkName("g_menu_model_get_item_attribute_value")]
	public static extern GLib.Variant* MenuModelGetItemAttributeValue(MenuModel* model, c_int item_index, char8* attribute, GLib.VariantType* expected_type);
	[LinkName("g_menu_model_get_item_link")]
	public static extern MenuModel* MenuModelGetItemLink(MenuModel* model, c_int item_index, char8* link);
	[LinkName("g_menu_model_get_n_items")]
	public static extern c_int MenuModelGetNItems(MenuModel* model);
	[LinkName("g_menu_model_is_mutable")]
	public static extern c_int MenuModelIsMutable(MenuModel* model);
	[LinkName("g_menu_model_items_changed")]
	public static extern void MenuModelItemsChanged(MenuModel* model, c_int position, c_int removed, c_int added);
	[LinkName("g_menu_model_iterate_item_attributes")]
	public static extern MenuAttributeIter* MenuModelIterateItemAttributes(MenuModel* model, c_int item_index);
	[LinkName("g_menu_model_iterate_item_links")]
	public static extern MenuLinkIter* MenuModelIterateItemLinks(MenuModel* model, c_int item_index);
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
	public enum MountMountFlags : int
	{
		none = 0
	}
	[CRepr]
	public struct MountOperation;
	[LinkName("g_mount_operation_new")]
	public static extern MountOperation* MountOperationNew();
	[LinkName("g_mount_operation_get_anonymous")]
	public static extern c_int MountOperationGetAnonymous(MountOperation* op);
	[LinkName("g_mount_operation_get_choice")]
	public static extern c_int MountOperationGetChoice(MountOperation* op);
	[LinkName("g_mount_operation_get_domain")]
	public static extern char8* MountOperationGetDomain(MountOperation* op);
	[LinkName("g_mount_operation_get_is_tcrypt_hidden_volume")]
	public static extern c_int MountOperationGetIsTcryptHiddenVolume(MountOperation* op);
	[LinkName("g_mount_operation_get_is_tcrypt_system_volume")]
	public static extern c_int MountOperationGetIsTcryptSystemVolume(MountOperation* op);
	[LinkName("g_mount_operation_get_password")]
	public static extern char8* MountOperationGetPassword(MountOperation* op);
	[LinkName("g_mount_operation_get_password_save")]
	public static extern PasswordSave MountOperationGetPasswordSave(MountOperation* op);
	[LinkName("g_mount_operation_get_pim")]
	public static extern c_uint MountOperationGetPim(MountOperation* op);
	[LinkName("g_mount_operation_get_username")]
	public static extern char8* MountOperationGetUsername(MountOperation* op);
	[LinkName("g_mount_operation_reply")]
	public static extern void MountOperationReply(MountOperation* op, MountOperationResult result);
	[LinkName("g_mount_operation_set_anonymous")]
	public static extern void MountOperationSetAnonymous(MountOperation* op, c_int anonymous);
	[LinkName("g_mount_operation_set_choice")]
	public static extern void MountOperationSetChoice(MountOperation* op, c_int choice);
	[LinkName("g_mount_operation_set_domain")]
	public static extern void MountOperationSetDomain(MountOperation* op, char8* domain);
	[LinkName("g_mount_operation_set_is_tcrypt_hidden_volume")]
	public static extern void MountOperationSetIsTcryptHiddenVolume(MountOperation* op, c_int hidden_volume);
	[LinkName("g_mount_operation_set_is_tcrypt_system_volume")]
	public static extern void MountOperationSetIsTcryptSystemVolume(MountOperation* op, c_int system_volume);
	[LinkName("g_mount_operation_set_password")]
	public static extern void MountOperationSetPassword(MountOperation* op, char8* password);
	[LinkName("g_mount_operation_set_password_save")]
	public static extern void MountOperationSetPasswordSave(MountOperation* op, PasswordSave save);
	[LinkName("g_mount_operation_set_pim")]
	public static extern void MountOperationSetPim(MountOperation* op, c_uint pim);
	[LinkName("g_mount_operation_set_username")]
	public static extern void MountOperationSetUsername(MountOperation* op, char8* username);
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
		handled = 0,
		aborted = 1,
		unhandled = 2
	}
	[CRepr]
	public enum MountUnmountFlags : int
	{
		none = 0,
		force = 1
	}
	[CRepr]
	public struct NativeSocketAddress;
	[LinkName("g_native_socket_address_new")]
	public static extern SocketAddress* NativeSocketAddressNew(void* native, c_ulong len);
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
	public static extern NetworkAddress* NetworkAddressNew(char8* hostname, c_ushort port);
	[LinkName("g_network_address_new_loopback")]
	public static extern NetworkAddress* NetworkAddressNewLoopback(c_ushort port);
	[LinkName("g_network_address_parse")]
	public static extern NetworkAddress* NetworkAddressParse(char8* host_and_port, c_ushort default_port);
	[LinkName("g_network_address_parse_uri")]
	public static extern NetworkAddress* NetworkAddressParseUri(char8* uri, c_ushort default_port);
	[LinkName("g_network_address_get_hostname")]
	public static extern char8* NetworkAddressGetHostname(NetworkAddress* addr);
	[LinkName("g_network_address_get_port")]
	public static extern c_ushort NetworkAddressGetPort(NetworkAddress* addr);
	[LinkName("g_network_address_get_scheme")]
	public static extern char8* NetworkAddressGetScheme(NetworkAddress* addr);
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
		local = 1,
		limited = 2,
		portal = 3,
		full = 4
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
	public static extern NetworkService* NetworkServiceNew(char8* service, char8* protocol, char8* domain);
	[LinkName("g_network_service_get_domain")]
	public static extern char8* NetworkServiceGetDomain(NetworkService* srv);
	[LinkName("g_network_service_get_protocol")]
	public static extern char8* NetworkServiceGetProtocol(NetworkService* srv);
	[LinkName("g_network_service_get_scheme")]
	public static extern char8* NetworkServiceGetScheme(NetworkService* srv);
	[LinkName("g_network_service_get_service")]
	public static extern char8* NetworkServiceGetService(NetworkService* srv);
	[LinkName("g_network_service_set_scheme")]
	public static extern void NetworkServiceSetScheme(NetworkService* srv, char8* scheme);
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
	public static extern Notification* NotificationNew(char8* title);
	[LinkName("g_notification_add_button")]
	public static extern void NotificationAddButton(Notification* notification, char8* label, char8* detailed_action);
	[LinkName("g_notification_add_button_with_target_value")]
	public static extern void NotificationAddButtonWithTargetValue(Notification* notification, char8* label, char8* action, GLib.Variant* target);
	[LinkName("g_notification_set_body")]
	public static extern void NotificationSetBody(Notification* notification, char8* body);
	[LinkName("g_notification_set_category")]
	public static extern void NotificationSetCategory(Notification* notification, char8* category);
	[LinkName("g_notification_set_default_action")]
	public static extern void NotificationSetDefaultAction(Notification* notification, char8* detailed_action);
	[LinkName("g_notification_set_default_action_and_target_value")]
	public static extern void NotificationSetDefaultActionAndTargetValue(Notification* notification, char8* action, GLib.Variant* target);
	[LinkName("g_notification_set_icon")]
	public static extern void NotificationSetIcon(Notification* notification, Icon* icon);
	[LinkName("g_notification_set_priority")]
	public static extern void NotificationSetPriority(Notification* notification, NotificationPriority priority);
	[LinkName("g_notification_set_title")]
	public static extern void NotificationSetTitle(Notification* notification, char8* title);
	[LinkName("g_notification_set_urgent")]
	public static extern void NotificationSetUrgent(Notification* notification, c_int urgent);
	public enum NotificationPriority : c_int
	{
		normal = 0,
		low = 1,
		high = 2,
		urgent = 3
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
	public static extern void OutputStreamClearPending(OutputStream* stream);
	[LinkName("g_output_stream_close")]
	public static extern c_int OutputStreamClose(OutputStream* stream, Cancellable* cancellable);
	[LinkName("g_output_stream_close_async")]
	public static extern void OutputStreamCloseAsync(OutputStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_close_finish")]
	public static extern c_int OutputStreamCloseFinish(OutputStream* stream, AsyncResult* result);
	[LinkName("g_output_stream_flush")]
	public static extern c_int OutputStreamFlush(OutputStream* stream, Cancellable* cancellable);
	[LinkName("g_output_stream_flush_async")]
	public static extern void OutputStreamFlushAsync(OutputStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_flush_finish")]
	public static extern c_int OutputStreamFlushFinish(OutputStream* stream, AsyncResult* result);
	[LinkName("g_output_stream_has_pending")]
	public static extern c_int OutputStreamHasPending(OutputStream* stream);
	[LinkName("g_output_stream_is_closed")]
	public static extern c_int OutputStreamIsClosed(OutputStream* stream);
	[LinkName("g_output_stream_is_closing")]
	public static extern c_int OutputStreamIsClosing(OutputStream* stream);
	[LinkName("g_output_stream_set_pending")]
	public static extern c_int OutputStreamSetPending(OutputStream* stream);
	[LinkName("g_output_stream_splice")]
	public static extern c_long OutputStreamSplice(OutputStream* stream, InputStream* source, OutputStreamSpliceFlags flags, Cancellable* cancellable);
	[LinkName("g_output_stream_splice_async")]
	public static extern void OutputStreamSpliceAsync(OutputStream* stream, InputStream* source, OutputStreamSpliceFlags flags, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_splice_finish")]
	public static extern c_long OutputStreamSpliceFinish(OutputStream* stream, AsyncResult* result);
	[LinkName("g_output_stream_write")]
	public static extern c_long OutputStreamWrite(OutputStream* stream, c_uchar* buffer, c_ulong count, Cancellable* cancellable);
	[LinkName("g_output_stream_write_all")]
	public static extern c_int OutputStreamWriteAll(OutputStream* stream, c_uchar* buffer, c_ulong count, c_ulong* bytes_written, Cancellable* cancellable);
	[LinkName("g_output_stream_write_all_async")]
	public static extern void OutputStreamWriteAllAsync(OutputStream* stream, c_uchar* buffer, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_write_all_finish")]
	public static extern c_int OutputStreamWriteAllFinish(OutputStream* stream, AsyncResult* result, c_ulong* bytes_written);
	[LinkName("g_output_stream_write_async")]
	public static extern void OutputStreamWriteAsync(OutputStream* stream, c_uchar* buffer, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_write_bytes")]
	public static extern c_long OutputStreamWriteBytes(OutputStream* stream, GLib.Bytes* bytes, Cancellable* cancellable);
	[LinkName("g_output_stream_write_bytes_async")]
	public static extern void OutputStreamWriteBytesAsync(OutputStream* stream, GLib.Bytes* bytes, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_write_bytes_finish")]
	public static extern c_long OutputStreamWriteBytesFinish(OutputStream* stream, AsyncResult* result);
	[LinkName("g_output_stream_write_finish")]
	public static extern c_long OutputStreamWriteFinish(OutputStream* stream, AsyncResult* result);
	[LinkName("g_output_stream_writev")]
	public static extern c_int OutputStreamWritev(OutputStream* stream, OutputVector* vectors, c_ulong n_vectors, c_ulong* bytes_written, Cancellable* cancellable);
	[LinkName("g_output_stream_writev_all")]
	public static extern c_int OutputStreamWritevAll(OutputStream* stream, OutputVector* vectors, c_ulong n_vectors, c_ulong* bytes_written, Cancellable* cancellable);
	[LinkName("g_output_stream_writev_all_async")]
	public static extern void OutputStreamWritevAllAsync(OutputStream* stream, OutputVector* vectors, c_ulong n_vectors, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_writev_all_finish")]
	public static extern c_int OutputStreamWritevAllFinish(OutputStream* stream, AsyncResult* result, c_ulong* bytes_written);
	[LinkName("g_output_stream_writev_async")]
	public static extern void OutputStreamWritevAsync(OutputStream* stream, OutputVector* vectors, c_ulong n_vectors, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_output_stream_writev_finish")]
	public static extern c_int OutputStreamWritevFinish(OutputStream* stream, AsyncResult* result, c_ulong* bytes_written);
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
	public enum OutputStreamSpliceFlags : int
	{
		none = 0,
		close_source = 1,
		close_target = 2
	}
	[CRepr]
	public struct OutputVector
	{
		void* buffer;
		c_ulong size;
	}
	public enum PasswordSave : c_int
	{
		never = 0,
		for_session = 1,
		permanently = 2
	}
	[CRepr]
	public struct Permission;
	[LinkName("g_permission_acquire")]
	public static extern c_int PermissionAcquire(Permission* permission, Cancellable* cancellable);
	[LinkName("g_permission_acquire_async")]
	public static extern void PermissionAcquireAsync(Permission* permission, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_permission_acquire_finish")]
	public static extern c_int PermissionAcquireFinish(Permission* permission, AsyncResult* result);
	[LinkName("g_permission_get_allowed")]
	public static extern c_int PermissionGetAllowed(Permission* permission);
	[LinkName("g_permission_get_can_acquire")]
	public static extern c_int PermissionGetCanAcquire(Permission* permission);
	[LinkName("g_permission_get_can_release")]
	public static extern c_int PermissionGetCanRelease(Permission* permission);
	[LinkName("g_permission_impl_update")]
	public static extern void PermissionImplUpdate(Permission* permission, c_int allowed, c_int can_acquire, c_int can_release);
	[LinkName("g_permission_release")]
	public static extern c_int PermissionRelease(Permission* permission, Cancellable* cancellable);
	[LinkName("g_permission_release_async")]
	public static extern void PermissionReleaseAsync(Permission* permission, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_permission_release_finish")]
	public static extern c_int PermissionReleaseFinish(Permission* permission, AsyncResult* result);
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
		failed = 0,
		ok = 1,
		would_block = -27
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
	public static extern PropertyAction* PropertyActionNew(char8* name, GObject.Object object, char8* property_name);
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
	public static extern SocketAddress* ProxyAddressNew(InetAddress* inetaddr, c_ushort port, char8* protocol, char8* dest_hostname, c_ushort dest_port, char8* username, char8* password);
	[LinkName("g_proxy_address_get_destination_hostname")]
	public static extern char8* ProxyAddressGetDestinationHostname(ProxyAddress* proxy);
	[LinkName("g_proxy_address_get_destination_port")]
	public static extern c_ushort ProxyAddressGetDestinationPort(ProxyAddress* proxy);
	[LinkName("g_proxy_address_get_destination_protocol")]
	public static extern char8* ProxyAddressGetDestinationProtocol(ProxyAddress* proxy);
	[LinkName("g_proxy_address_get_password")]
	public static extern char8* ProxyAddressGetPassword(ProxyAddress* proxy);
	[LinkName("g_proxy_address_get_protocol")]
	public static extern char8* ProxyAddressGetProtocol(ProxyAddress* proxy);
	[LinkName("g_proxy_address_get_uri")]
	public static extern char8* ProxyAddressGetUri(ProxyAddress* proxy);
	[LinkName("g_proxy_address_get_username")]
	public static extern char8* ProxyAddressGetUsername(ProxyAddress* proxy);
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
	[LinkName("g_resolver_get_default")]
	public static extern Resolver* ResolverGetDefault();
	[LinkName("g_resolver_lookup_by_address")]
	public static extern char8* ResolverLookupByAddress(Resolver* resolver, InetAddress* address, Cancellable* cancellable);
	[LinkName("g_resolver_lookup_by_address_async")]
	public static extern void ResolverLookupByAddressAsync(Resolver* resolver, InetAddress* address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_by_address_finish")]
	public static extern char8* ResolverLookupByAddressFinish(Resolver* resolver, AsyncResult* result);
	[LinkName("g_resolver_lookup_by_name")]
	public static extern GLib.List* ResolverLookupByName(Resolver* resolver, char8* hostname, Cancellable* cancellable);
	[LinkName("g_resolver_lookup_by_name_async")]
	public static extern void ResolverLookupByNameAsync(Resolver* resolver, char8* hostname, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_by_name_finish")]
	public static extern GLib.List* ResolverLookupByNameFinish(Resolver* resolver, AsyncResult* result);
	[LinkName("g_resolver_lookup_by_name_with_flags")]
	public static extern GLib.List* ResolverLookupByNameWithFlags(Resolver* resolver, char8* hostname, ResolverNameLookupFlags flags, Cancellable* cancellable);
	[LinkName("g_resolver_lookup_by_name_with_flags_async")]
	public static extern void ResolverLookupByNameWithFlagsAsync(Resolver* resolver, char8* hostname, ResolverNameLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_by_name_with_flags_finish")]
	public static extern GLib.List* ResolverLookupByNameWithFlagsFinish(Resolver* resolver, AsyncResult* result);
	[LinkName("g_resolver_lookup_records")]
	public static extern GLib.List* ResolverLookupRecords(Resolver* resolver, char8* rrname, ResolverRecordType record_type, Cancellable* cancellable);
	[LinkName("g_resolver_lookup_records_async")]
	public static extern void ResolverLookupRecordsAsync(Resolver* resolver, char8* rrname, ResolverRecordType record_type, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_records_finish")]
	public static extern GLib.List* ResolverLookupRecordsFinish(Resolver* resolver, AsyncResult* result);
	[LinkName("g_resolver_lookup_service")]
	public static extern GLib.List* ResolverLookupService(Resolver* resolver, char8* service, char8* protocol, char8* domain, Cancellable* cancellable);
	[LinkName("g_resolver_lookup_service_async")]
	public static extern void ResolverLookupServiceAsync(Resolver* resolver, char8* service, char8* protocol, char8* domain, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_resolver_lookup_service_finish")]
	public static extern GLib.List* ResolverLookupServiceFinish(Resolver* resolver, AsyncResult* result);
	[LinkName("g_resolver_set_default")]
	public static extern void ResolverSetDefault(Resolver* resolver);
	[CRepr]
	public struct ResolverClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum ResolverError : c_int
	{
		not_found = 0,
		temporary_failure = 1,
		internal_ = 2
	}
	[CRepr]
	public enum ResolverNameLookupFlags : int
	{
		default_ = 0,
		ipv4_only = 1,
		ipv6_only = 2
	}
	[CRepr]
	public struct ResolverPrivate
	{
	}
	public enum ResolverRecordType : c_int
	{
		srv = 1,
		mx = 2,
		txt = 3,
		soa = 4,
		ns = 5
	}
	[CRepr]
	public struct Resource
	{
	}
	public enum ResourceError : c_int
	{
		not_found = 0,
		internal_ = 1
	}
	[CRepr]
	public enum ResourceFlags : int
	{
		none = 0,
		compressed = 1
	}
	[CRepr]
	public enum ResourceLookupFlags : int
	{
		none = 0
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
	public static extern Settings* SettingsNew(char8* schema_id);
	[LinkName("g_settings_new_full")]
	public static extern Settings* SettingsNewFull(SettingsSchema* schema, SettingsBackend* backend, char8* path);
	[LinkName("g_settings_new_with_backend")]
	public static extern Settings* SettingsNewWithBackend(char8* schema_id, SettingsBackend* backend);
	[LinkName("g_settings_new_with_backend_and_path")]
	public static extern Settings* SettingsNewWithBackendAndPath(char8* schema_id, SettingsBackend* backend, char8* path);
	[LinkName("g_settings_new_with_path")]
	public static extern Settings* SettingsNewWithPath(char8* schema_id, char8* path);
	[LinkName("g_settings_list_relocatable_schemas")]
	public static extern char8* SettingsListRelocatableSchemas();
	[LinkName("g_settings_list_schemas")]
	public static extern char8* SettingsListSchemas();
	[LinkName("g_settings_sync")]
	public static extern void SettingsSync();
	[LinkName("g_settings_unbind")]
	public static extern void SettingsUnbind(GObject.Object object, char8* property);
	[LinkName("g_settings_apply")]
	public static extern void SettingsApply(Settings* settings);
	[LinkName("g_settings_bind")]
	public static extern void SettingsBind(Settings* settings, char8* key, GObject.Object object, char8* property, SettingsBindFlags flags);
	[LinkName("g_settings_bind_writable")]
	public static extern void SettingsBindWritable(Settings* settings, char8* key, GObject.Object object, char8* property, c_int inverted);
	[LinkName("g_settings_create_action")]
	public static extern Action* SettingsCreateAction(Settings* settings, char8* key);
	[LinkName("g_settings_delay")]
	public static extern void SettingsDelay(Settings* settings);
	[LinkName("g_settings_get_boolean")]
	public static extern c_int SettingsGetBoolean(Settings* settings, char8* key);
	[LinkName("g_settings_get_child")]
	public static extern Settings* SettingsGetChild(Settings* settings, char8* name);
	[LinkName("g_settings_get_default_value")]
	public static extern GLib.Variant* SettingsGetDefaultValue(Settings* settings, char8* key);
	[LinkName("g_settings_get_double")]
	public static extern double SettingsGetDouble(Settings* settings, char8* key);
	[LinkName("g_settings_get_enum")]
	public static extern c_int SettingsGetEnum(Settings* settings, char8* key);
	[LinkName("g_settings_get_flags")]
	public static extern c_uint SettingsGetFlags(Settings* settings, char8* key);
	[LinkName("g_settings_get_has_unapplied")]
	public static extern c_int SettingsGetHasUnapplied(Settings* settings);
	[LinkName("g_settings_get_int")]
	public static extern c_int SettingsGetInt(Settings* settings, char8* key);
	[LinkName("g_settings_get_int64")]
	public static extern c_longlong SettingsGetInt64(Settings* settings, char8* key);
	[LinkName("g_settings_get_mapped")]
	public static extern void* SettingsGetMapped(Settings* settings, char8* key, SettingsGetMapping mapping, void* user_data);
	[LinkName("g_settings_get_range")]
	public static extern GLib.Variant* SettingsGetRange(Settings* settings, char8* key);
	[LinkName("g_settings_get_string")]
	public static extern char8* SettingsGetString(Settings* settings, char8* key);
	[LinkName("g_settings_get_strv")]
	public static extern char8* SettingsGetStrv(Settings* settings, char8* key);
	[LinkName("g_settings_get_uint")]
	public static extern c_uint SettingsGetUint(Settings* settings, char8* key);
	[LinkName("g_settings_get_uint64")]
	public static extern c_ulonglong SettingsGetUint64(Settings* settings, char8* key);
	[LinkName("g_settings_get_user_value")]
	public static extern GLib.Variant* SettingsGetUserValue(Settings* settings, char8* key);
	[LinkName("g_settings_get_value")]
	public static extern GLib.Variant* SettingsGetValue(Settings* settings, char8* key);
	[LinkName("g_settings_is_writable")]
	public static extern c_int SettingsIsWritable(Settings* settings, char8* name);
	[LinkName("g_settings_list_children")]
	public static extern char8* SettingsListChildren(Settings* settings);
	[LinkName("g_settings_list_keys")]
	public static extern char8* SettingsListKeys(Settings* settings);
	[LinkName("g_settings_range_check")]
	public static extern c_int SettingsRangeCheck(Settings* settings, char8* key, GLib.Variant* value);
	[LinkName("g_settings_reset")]
	public static extern void SettingsReset(Settings* settings, char8* key);
	[LinkName("g_settings_revert")]
	public static extern void SettingsRevert(Settings* settings);
	[LinkName("g_settings_set_boolean")]
	public static extern c_int SettingsSetBoolean(Settings* settings, char8* key, c_int value);
	[LinkName("g_settings_set_double")]
	public static extern c_int SettingsSetDouble(Settings* settings, char8* key, double value);
	[LinkName("g_settings_set_enum")]
	public static extern c_int SettingsSetEnum(Settings* settings, char8* key, c_int value);
	[LinkName("g_settings_set_flags")]
	public static extern c_int SettingsSetFlags(Settings* settings, char8* key, c_uint value);
	[LinkName("g_settings_set_int")]
	public static extern c_int SettingsSetInt(Settings* settings, char8* key, c_int value);
	[LinkName("g_settings_set_int64")]
	public static extern c_int SettingsSetInt64(Settings* settings, char8* key, c_longlong value);
	[LinkName("g_settings_set_string")]
	public static extern c_int SettingsSetString(Settings* settings, char8* key, char8* value);
	[LinkName("g_settings_set_strv")]
	public static extern c_int SettingsSetStrv(Settings* settings, char8* key, char8* value);
	[LinkName("g_settings_set_uint")]
	public static extern c_int SettingsSetUint(Settings* settings, char8* key, c_uint value);
	[LinkName("g_settings_set_uint64")]
	public static extern c_int SettingsSetUint64(Settings* settings, char8* key, c_ulonglong value);
	[LinkName("g_settings_set_value")]
	public static extern c_int SettingsSetValue(Settings* settings, char8* key, GLib.Variant* value);
	[CRepr]
	public struct SettingsBackend;
	[LinkName("g_settings_backend_flatten_tree")]
	public static extern void SettingsBackendFlattenTree(GLib.Tree* tree, char8* path, char8* keys, GLib.Variant*** values);
	[LinkName("g_settings_backend_get_default")]
	public static extern SettingsBackend* SettingsBackendGetDefault();
	[LinkName("g_settings_backend_changed")]
	public static extern void SettingsBackendChanged(SettingsBackend* backend, char8* key, void* origin_tag);
	[LinkName("g_settings_backend_changed_tree")]
	public static extern void SettingsBackendChangedTree(SettingsBackend* backend, GLib.Tree* tree, void* origin_tag);
	[LinkName("g_settings_backend_keys_changed")]
	public static extern void SettingsBackendKeysChanged(SettingsBackend* backend, char8* path, char8* items, void* origin_tag);
	[LinkName("g_settings_backend_path_changed")]
	public static extern void SettingsBackendPathChanged(SettingsBackend* backend, char8* path, void* origin_tag);
	[LinkName("g_settings_backend_path_writable_changed")]
	public static extern void SettingsBackendPathWritableChanged(SettingsBackend* backend, char8* path);
	[LinkName("g_settings_backend_writable_changed")]
	public static extern void SettingsBackendWritableChanged(SettingsBackend* backend, char8* key);
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
	public enum SettingsBindFlags : int
	{
		default_ = 0,
		get = 1,
		set = 2,
		no_sensitivity = 4,
		get_no_changes = 8,
		invert_boolean = 16
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
	public static extern SimpleAction* SimpleActionNew(char8* name, GLib.VariantType* parameter_type);
	[LinkName("g_simple_action_new_stateful")]
	public static extern SimpleAction* SimpleActionNewStateful(char8* name, GLib.VariantType* parameter_type, GLib.Variant* state);
	[LinkName("g_simple_action_set_enabled")]
	public static extern void SimpleActionSetEnabled(SimpleAction* simple, c_int enabled);
	[LinkName("g_simple_action_set_state")]
	public static extern void SimpleActionSetState(SimpleAction* simple, GLib.Variant* value);
	[LinkName("g_simple_action_set_state_hint")]
	public static extern void SimpleActionSetStateHint(SimpleAction* simple, GLib.Variant* state_hint);
	[CRepr]
	public struct SimpleActionGroup;
	[LinkName("g_simple_action_group_new")]
	public static extern SimpleActionGroup* SimpleActionGroupNew();
	[LinkName("g_simple_action_group_add_entries")]
	public static extern void SimpleActionGroupAddEntries(SimpleActionGroup* simple, ActionEntry* entries, c_int n_entries, void* user_data);
	[LinkName("g_simple_action_group_insert")]
	public static extern void SimpleActionGroupInsert(SimpleActionGroup* simple, Action* action);
	[LinkName("g_simple_action_group_lookup")]
	public static extern Action* SimpleActionGroupLookup(SimpleActionGroup* simple, char8* action_name);
	[LinkName("g_simple_action_group_remove")]
	public static extern void SimpleActionGroupRemove(SimpleActionGroup* simple, char8* action_name);
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
	public static extern SimpleAsyncResult* SimpleAsyncResultNew(GObject.Object* source_object, AsyncReadyCallback callback, void* user_data, void* source_tag);
	[LinkName("g_simple_async_result_new_from_error")]
	public static extern SimpleAsyncResult* SimpleAsyncResultNewFromError(GObject.Object* source_object, AsyncReadyCallback callback, void* user_data, GLib.Error* error);
	[LinkName("g_simple_async_result_is_valid")]
	public static extern c_int SimpleAsyncResultIsValid(AsyncResult* result, GObject.Object* source, void* source_tag);
	[LinkName("g_simple_async_result_complete")]
	public static extern void SimpleAsyncResultComplete(SimpleAsyncResult* simple);
	[LinkName("g_simple_async_result_complete_in_idle")]
	public static extern void SimpleAsyncResultCompleteInIdle(SimpleAsyncResult* simple);
	[LinkName("g_simple_async_result_get_op_res_gboolean")]
	public static extern c_int SimpleAsyncResultGetOpResGboolean(SimpleAsyncResult* simple);
	[LinkName("g_simple_async_result_get_op_res_gssize")]
	public static extern c_long SimpleAsyncResultGetOpResGssize(SimpleAsyncResult* simple);
	[LinkName("g_simple_async_result_propagate_error")]
	public static extern c_int SimpleAsyncResultPropagateError(SimpleAsyncResult* simple);
	[LinkName("g_simple_async_result_set_check_cancellable")]
	public static extern void SimpleAsyncResultSetCheckCancellable(SimpleAsyncResult* simple, Cancellable* check_cancellable);
	[LinkName("g_simple_async_result_set_from_error")]
	public static extern void SimpleAsyncResultSetFromError(SimpleAsyncResult* simple, GLib.Error* error);
	[LinkName("g_simple_async_result_set_handle_cancellation")]
	public static extern void SimpleAsyncResultSetHandleCancellation(SimpleAsyncResult* simple, c_int handle_cancellation);
	[LinkName("g_simple_async_result_set_op_res_gboolean")]
	public static extern void SimpleAsyncResultSetOpResGboolean(SimpleAsyncResult* simple, c_int op_res);
	[LinkName("g_simple_async_result_set_op_res_gssize")]
	public static extern void SimpleAsyncResultSetOpResGssize(SimpleAsyncResult* simple, c_long op_res);
	[CRepr]
	public struct SimpleAsyncResultClass
	{
	}
	public function void SimpleAsyncThreadFunc(SimpleAsyncResult res, GObject.Object object, Cancellable cancellable);
	[CRepr]
	public struct SimpleIOStream;
	[LinkName("g_simple_io_stream_new")]
	public static extern IOStream* SimpleIoStreamNew(InputStream* input_stream, OutputStream* output_stream);
	[CRepr]
	public struct SimplePermission;
	[LinkName("g_simple_permission_new")]
	public static extern Permission* SimplePermissionNew(c_int allowed);
	[CRepr]
	public struct SimpleProxyResolver;
	[LinkName("g_simple_proxy_resolver_new")]
	public static extern ProxyResolver* SimpleProxyResolverNew(char8* default_proxy, char8* ignore_hosts);
	[LinkName("g_simple_proxy_resolver_set_default_proxy")]
	public static extern void SimpleProxyResolverSetDefaultProxy(SimpleProxyResolver* resolver, char8* default_proxy);
	[LinkName("g_simple_proxy_resolver_set_ignore_hosts")]
	public static extern void SimpleProxyResolverSetIgnoreHosts(SimpleProxyResolver* resolver, char8* ignore_hosts);
	[LinkName("g_simple_proxy_resolver_set_uri_proxy")]
	public static extern void SimpleProxyResolverSetUriProxy(SimpleProxyResolver* resolver, char8* uri_scheme, char8* proxy);
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
	public static extern Socket* SocketNew(SocketFamily family, SocketType type, SocketProtocol protocol);
	[LinkName("g_socket_new_from_fd")]
	public static extern Socket* SocketNewFromFd(c_int fd);
	[LinkName("g_socket_accept")]
	public static extern Socket* SocketAccept(Socket* socket, Cancellable* cancellable);
	[LinkName("g_socket_bind")]
	public static extern c_int SocketBind(Socket* socket, SocketAddress* address, c_int allow_reuse);
	[LinkName("g_socket_check_connect_result")]
	public static extern c_int SocketCheckConnectResult(Socket* socket);
	[LinkName("g_socket_close")]
	public static extern c_int SocketClose(Socket* socket);
	[LinkName("g_socket_condition_check")]
	public static extern GLib.IOCondition SocketConditionCheck(Socket* socket, GLib.IOCondition condition);
	[LinkName("g_socket_condition_timed_wait")]
	public static extern c_int SocketConditionTimedWait(Socket* socket, GLib.IOCondition condition, c_longlong timeout_us, Cancellable* cancellable);
	[LinkName("g_socket_condition_wait")]
	public static extern c_int SocketConditionWait(Socket* socket, GLib.IOCondition condition, Cancellable* cancellable);
	[LinkName("g_socket_connect")]
	public static extern c_int SocketConnect(Socket* socket, SocketAddress* address, Cancellable* cancellable);
	[LinkName("g_socket_connection_factory_create_connection")]
	public static extern SocketConnection* SocketConnectionFactoryCreateConnection(Socket* socket);
	[LinkName("g_socket_get_available_bytes")]
	public static extern c_long SocketGetAvailableBytes(Socket* socket);
	[LinkName("g_socket_get_blocking")]
	public static extern c_int SocketGetBlocking(Socket* socket);
	[LinkName("g_socket_get_broadcast")]
	public static extern c_int SocketGetBroadcast(Socket* socket);
	[LinkName("g_socket_get_credentials")]
	public static extern Credentials* SocketGetCredentials(Socket* socket);
	[LinkName("g_socket_get_family")]
	public static extern SocketFamily SocketGetFamily(Socket* socket);
	[LinkName("g_socket_get_fd")]
	public static extern c_int SocketGetFd(Socket* socket);
	[LinkName("g_socket_get_keepalive")]
	public static extern c_int SocketGetKeepalive(Socket* socket);
	[LinkName("g_socket_get_listen_backlog")]
	public static extern c_int SocketGetListenBacklog(Socket* socket);
	[LinkName("g_socket_get_local_address")]
	public static extern SocketAddress* SocketGetLocalAddress(Socket* socket);
	[LinkName("g_socket_get_multicast_loopback")]
	public static extern c_int SocketGetMulticastLoopback(Socket* socket);
	[LinkName("g_socket_get_multicast_ttl")]
	public static extern c_uint SocketGetMulticastTtl(Socket* socket);
	[LinkName("g_socket_get_option")]
	public static extern c_int SocketGetOption(Socket* socket, c_int level, c_int optname, c_int* value);
	[LinkName("g_socket_get_protocol")]
	public static extern SocketProtocol SocketGetProtocol(Socket* socket);
	[LinkName("g_socket_get_remote_address")]
	public static extern SocketAddress* SocketGetRemoteAddress(Socket* socket);
	[LinkName("g_socket_get_socket_type")]
	public static extern SocketType SocketGetSocketType(Socket* socket);
	[LinkName("g_socket_get_timeout")]
	public static extern c_uint SocketGetTimeout(Socket* socket);
	[LinkName("g_socket_get_ttl")]
	public static extern c_uint SocketGetTtl(Socket* socket);
	[LinkName("g_socket_is_closed")]
	public static extern c_int SocketIsClosed(Socket* socket);
	[LinkName("g_socket_is_connected")]
	public static extern c_int SocketIsConnected(Socket* socket);
	[LinkName("g_socket_join_multicast_group")]
	public static extern c_int SocketJoinMulticastGroup(Socket* socket, InetAddress* group, c_int source_specific, char8* iface);
	[LinkName("g_socket_join_multicast_group_ssm")]
	public static extern c_int SocketJoinMulticastGroupSsm(Socket* socket, InetAddress* group, InetAddress* source_specific, char8* iface);
	[LinkName("g_socket_leave_multicast_group")]
	public static extern c_int SocketLeaveMulticastGroup(Socket* socket, InetAddress* group, c_int source_specific, char8* iface);
	[LinkName("g_socket_leave_multicast_group_ssm")]
	public static extern c_int SocketLeaveMulticastGroupSsm(Socket* socket, InetAddress* group, InetAddress* source_specific, char8* iface);
	[LinkName("g_socket_listen")]
	public static extern c_int SocketListen(Socket* socket);
	[LinkName("g_socket_receive")]
	public static extern c_long SocketReceive(Socket* socket, c_uchar* buffer, c_ulong size, Cancellable* cancellable);
	[LinkName("g_socket_receive_from")]
	public static extern c_long SocketReceiveFrom(Socket* socket, SocketAddress* address, c_uchar* buffer, c_ulong size, Cancellable* cancellable);
	[LinkName("g_socket_receive_message")]
	public static extern c_long SocketReceiveMessage(Socket* socket, SocketAddress* address, InputVector* vectors, c_int num_vectors, SocketControlMessage*** messages, c_int* num_messages, c_int* flags, Cancellable* cancellable);
	[LinkName("g_socket_receive_messages")]
	public static extern c_int SocketReceiveMessages(Socket* socket, InputMessage* messages, c_uint num_messages, c_int flags, Cancellable* cancellable);
	[LinkName("g_socket_receive_with_blocking")]
	public static extern c_long SocketReceiveWithBlocking(Socket* socket, c_uchar* buffer, c_ulong size, c_int blocking, Cancellable* cancellable);
	[LinkName("g_socket_send")]
	public static extern c_long SocketSend(Socket* socket, c_uchar* buffer, c_ulong size, Cancellable* cancellable);
	[LinkName("g_socket_send_message")]
	public static extern c_long SocketSendMessage(Socket* socket, SocketAddress* address, OutputVector* vectors, c_int num_vectors, SocketControlMessage** messages, c_int num_messages, c_int flags, Cancellable* cancellable);
	[LinkName("g_socket_send_message_with_timeout")]
	public static extern PollableReturn SocketSendMessageWithTimeout(Socket* socket, SocketAddress* address, OutputVector* vectors, c_int num_vectors, SocketControlMessage** messages, c_int num_messages, c_int flags, c_longlong timeout_us, c_ulong* bytes_written, Cancellable* cancellable);
	[LinkName("g_socket_send_messages")]
	public static extern c_int SocketSendMessages(Socket* socket, OutputMessage* messages, c_uint num_messages, c_int flags, Cancellable* cancellable);
	[LinkName("g_socket_send_to")]
	public static extern c_long SocketSendTo(Socket* socket, SocketAddress* address, c_uchar* buffer, c_ulong size, Cancellable* cancellable);
	[LinkName("g_socket_send_with_blocking")]
	public static extern c_long SocketSendWithBlocking(Socket* socket, c_uchar* buffer, c_ulong size, c_int blocking, Cancellable* cancellable);
	[LinkName("g_socket_set_blocking")]
	public static extern void SocketSetBlocking(Socket* socket, c_int blocking);
	[LinkName("g_socket_set_broadcast")]
	public static extern void SocketSetBroadcast(Socket* socket, c_int broadcast);
	[LinkName("g_socket_set_keepalive")]
	public static extern void SocketSetKeepalive(Socket* socket, c_int keepalive);
	[LinkName("g_socket_set_listen_backlog")]
	public static extern void SocketSetListenBacklog(Socket* socket, c_int backlog);
	[LinkName("g_socket_set_multicast_loopback")]
	public static extern void SocketSetMulticastLoopback(Socket* socket, c_int loopback);
	[LinkName("g_socket_set_multicast_ttl")]
	public static extern void SocketSetMulticastTtl(Socket* socket, c_uint ttl);
	[LinkName("g_socket_set_option")]
	public static extern c_int SocketSetOption(Socket* socket, c_int level, c_int optname, c_int value);
	[LinkName("g_socket_set_timeout")]
	public static extern void SocketSetTimeout(Socket* socket, c_uint timeout);
	[LinkName("g_socket_set_ttl")]
	public static extern void SocketSetTtl(Socket* socket, c_uint ttl);
	[LinkName("g_socket_shutdown")]
	public static extern c_int SocketShutdown(Socket* socket, c_int shutdown_read, c_int shutdown_write);
	[LinkName("g_socket_speaks_ipv4")]
	public static extern c_int SocketSpeaksIpv4(Socket* socket);
	[CRepr]
	public struct SocketAddress;
	[LinkName("g_socket_address_new_from_native")]
	public static extern SocketAddress* SocketAddressNewFromNative(void* native, c_ulong len);
	[LinkName("g_socket_address_get_family")]
	public static extern SocketFamily SocketAddressGetFamily(SocketAddress* address);
	[LinkName("g_socket_address_get_native_size")]
	public static extern c_long SocketAddressGetNativeSize(SocketAddress* address);
	[LinkName("g_socket_address_to_native")]
	public static extern c_int SocketAddressToNative(SocketAddress* address, void* dest, c_ulong destlen);
	[CRepr]
	public struct SocketAddressClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct SocketAddressEnumerator;
	[LinkName("g_socket_address_enumerator_next")]
	public static extern SocketAddress* SocketAddressEnumeratorNext(SocketAddressEnumerator* enumerator, Cancellable* cancellable);
	[LinkName("g_socket_address_enumerator_next_async")]
	public static extern void SocketAddressEnumeratorNextAsync(SocketAddressEnumerator* enumerator, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_address_enumerator_next_finish")]
	public static extern SocketAddress* SocketAddressEnumeratorNextFinish(SocketAddressEnumerator* enumerator, AsyncResult* result);
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
	public static extern SocketClient* SocketClientNew();
	[LinkName("g_socket_client_add_application_proxy")]
	public static extern void SocketClientAddApplicationProxy(SocketClient* client, char8* protocol);
	[LinkName("g_socket_client_connect")]
	public static extern SocketConnection* SocketClientConnect(SocketClient* client, SocketConnectable* connectable, Cancellable* cancellable);
	[LinkName("g_socket_client_connect_async")]
	public static extern void SocketClientConnectAsync(SocketClient* client, SocketConnectable* connectable, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_client_connect_finish")]
	public static extern SocketConnection* SocketClientConnectFinish(SocketClient* client, AsyncResult* result);
	[LinkName("g_socket_client_connect_to_host")]
	public static extern SocketConnection* SocketClientConnectToHost(SocketClient* client, char8* host_and_port, c_ushort default_port, Cancellable* cancellable);
	[LinkName("g_socket_client_connect_to_host_async")]
	public static extern void SocketClientConnectToHostAsync(SocketClient* client, char8* host_and_port, c_ushort default_port, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_client_connect_to_host_finish")]
	public static extern SocketConnection* SocketClientConnectToHostFinish(SocketClient* client, AsyncResult* result);
	[LinkName("g_socket_client_connect_to_service")]
	public static extern SocketConnection* SocketClientConnectToService(SocketClient* client, char8* domain, char8* service, Cancellable* cancellable);
	[LinkName("g_socket_client_connect_to_service_async")]
	public static extern void SocketClientConnectToServiceAsync(SocketClient* client, char8* domain, char8* service, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_client_connect_to_service_finish")]
	public static extern SocketConnection* SocketClientConnectToServiceFinish(SocketClient* client, AsyncResult* result);
	[LinkName("g_socket_client_connect_to_uri")]
	public static extern SocketConnection* SocketClientConnectToUri(SocketClient* client, char8* uri, c_ushort default_port, Cancellable* cancellable);
	[LinkName("g_socket_client_connect_to_uri_async")]
	public static extern void SocketClientConnectToUriAsync(SocketClient* client, char8* uri, c_ushort default_port, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_client_connect_to_uri_finish")]
	public static extern SocketConnection* SocketClientConnectToUriFinish(SocketClient* client, AsyncResult* result);
	[LinkName("g_socket_client_get_enable_proxy")]
	public static extern c_int SocketClientGetEnableProxy(SocketClient* client);
	[LinkName("g_socket_client_get_family")]
	public static extern SocketFamily SocketClientGetFamily(SocketClient* client);
	[LinkName("g_socket_client_get_local_address")]
	public static extern SocketAddress* SocketClientGetLocalAddress(SocketClient* client);
	[LinkName("g_socket_client_get_protocol")]
	public static extern SocketProtocol SocketClientGetProtocol(SocketClient* client);
	[LinkName("g_socket_client_get_proxy_resolver")]
	public static extern ProxyResolver* SocketClientGetProxyResolver(SocketClient* client);
	[LinkName("g_socket_client_get_socket_type")]
	public static extern SocketType SocketClientGetSocketType(SocketClient* client);
	[LinkName("g_socket_client_get_timeout")]
	public static extern c_uint SocketClientGetTimeout(SocketClient* client);
	[LinkName("g_socket_client_get_tls")]
	public static extern c_int SocketClientGetTls(SocketClient* client);
	[LinkName("g_socket_client_get_tls_validation_flags")]
	public static extern TlsCertificateFlags SocketClientGetTlsValidationFlags(SocketClient* client);
	[LinkName("g_socket_client_set_enable_proxy")]
	public static extern void SocketClientSetEnableProxy(SocketClient* client, c_int enable);
	[LinkName("g_socket_client_set_family")]
	public static extern void SocketClientSetFamily(SocketClient* client, SocketFamily family);
	[LinkName("g_socket_client_set_local_address")]
	public static extern void SocketClientSetLocalAddress(SocketClient* client, SocketAddress* address);
	[LinkName("g_socket_client_set_protocol")]
	public static extern void SocketClientSetProtocol(SocketClient* client, SocketProtocol protocol);
	[LinkName("g_socket_client_set_proxy_resolver")]
	public static extern void SocketClientSetProxyResolver(SocketClient* client, ProxyResolver* proxy_resolver);
	[LinkName("g_socket_client_set_socket_type")]
	public static extern void SocketClientSetSocketType(SocketClient* client, SocketType type);
	[LinkName("g_socket_client_set_timeout")]
	public static extern void SocketClientSetTimeout(SocketClient* client, c_uint timeout);
	[LinkName("g_socket_client_set_tls")]
	public static extern void SocketClientSetTls(SocketClient* client, c_int tls);
	[LinkName("g_socket_client_set_tls_validation_flags")]
	public static extern void SocketClientSetTlsValidationFlags(SocketClient* client, TlsCertificateFlags flags);
	[CRepr]
	public struct SocketClientClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum SocketClientEvent : c_int
	{
		resolving = 0,
		resolved = 1,
		connecting = 2,
		connected = 3,
		proxy_negotiating = 4,
		proxy_negotiated = 5,
		tls_handshaking = 6,
		tls_handshaked = 7,
		complete = 8
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
	[LinkName("g_socket_connection_factory_lookup_type")]
	public static extern GLib.Type SocketConnectionFactoryLookupType(SocketFamily family, SocketType type, c_int protocol_id);
	[LinkName("g_socket_connection_factory_register_type")]
	public static extern void SocketConnectionFactoryRegisterType(GLib.Type g_type, SocketFamily family, SocketType type, c_int protocol);
	[LinkName("g_socket_connection_connect")]
	public static extern c_int SocketConnectionConnect(SocketConnection* connection, SocketAddress* address, Cancellable* cancellable);
	[LinkName("g_socket_connection_connect_async")]
	public static extern void SocketConnectionConnectAsync(SocketConnection* connection, SocketAddress* address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_connection_connect_finish")]
	public static extern c_int SocketConnectionConnectFinish(SocketConnection* connection, AsyncResult* result);
	[LinkName("g_socket_connection_get_local_address")]
	public static extern SocketAddress* SocketConnectionGetLocalAddress(SocketConnection* connection);
	[LinkName("g_socket_connection_get_remote_address")]
	public static extern SocketAddress* SocketConnectionGetRemoteAddress(SocketConnection* connection);
	[LinkName("g_socket_connection_get_socket")]
	public static extern Socket* SocketConnectionGetSocket(SocketConnection* connection);
	[LinkName("g_socket_connection_is_connected")]
	public static extern c_int SocketConnectionIsConnected(SocketConnection* connection);
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
	[LinkName("g_socket_control_message_deserialize")]
	public static extern SocketControlMessage* SocketControlMessageDeserialize(c_int level, c_int type, c_ulong size, c_uchar data);
	[LinkName("g_socket_control_message_get_level")]
	public static extern c_int SocketControlMessageGetLevel(SocketControlMessage* message);
	[LinkName("g_socket_control_message_get_msg_type")]
	public static extern c_int SocketControlMessageGetMstype(SocketControlMessage* message);
	[LinkName("g_socket_control_message_get_size")]
	public static extern c_ulong SocketControlMessageGetSize(SocketControlMessage* message);
	[LinkName("g_socket_control_message_serialize")]
	public static extern void SocketControlMessageSerialize(SocketControlMessage* message, void* data);
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
		invalid = 0,
		unix = 1,
		ipv4 = 2,
		ipv6 = 10
	}
	[CRepr]
	public struct SocketListener;
	[LinkName("g_socket_listener_new")]
	public static extern SocketListener* SocketListenerNew();
	[LinkName("g_socket_listener_accept")]
	public static extern SocketConnection* SocketListenerAccept(SocketListener* listener, GObject.Object* source_object, Cancellable* cancellable);
	[LinkName("g_socket_listener_accept_async")]
	public static extern void SocketListenerAcceptAsync(SocketListener* listener, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_listener_accept_finish")]
	public static extern SocketConnection* SocketListenerAcceptFinish(SocketListener* listener, AsyncResult* result, GObject.Object* source_object);
	[LinkName("g_socket_listener_accept_socket")]
	public static extern Socket* SocketListenerAcceptSocket(SocketListener* listener, GObject.Object* source_object, Cancellable* cancellable);
	[LinkName("g_socket_listener_accept_socket_async")]
	public static extern void SocketListenerAcceptSocketAsync(SocketListener* listener, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_socket_listener_accept_socket_finish")]
	public static extern Socket* SocketListenerAcceptSocketFinish(SocketListener* listener, AsyncResult* result, GObject.Object* source_object);
	[LinkName("g_socket_listener_add_address")]
	public static extern c_int SocketListenerAddAddress(SocketListener* listener, SocketAddress* address, SocketType type, SocketProtocol protocol, GObject.Object* source_object, SocketAddress* effective_address);
	[LinkName("g_socket_listener_add_any_inet_port")]
	public static extern c_ushort SocketListenerAddAnyInetPort(SocketListener* listener, GObject.Object* source_object);
	[LinkName("g_socket_listener_add_inet_port")]
	public static extern c_int SocketListenerAddInetPort(SocketListener* listener, c_ushort port, GObject.Object* source_object);
	[LinkName("g_socket_listener_add_socket")]
	public static extern c_int SocketListenerAddSocket(SocketListener* listener, Socket* socket, GObject.Object* source_object);
	[LinkName("g_socket_listener_close")]
	public static extern void SocketListenerClose(SocketListener* listener);
	[LinkName("g_socket_listener_set_backlog")]
	public static extern void SocketListenerSetBacklog(SocketListener* listener, c_int listen_backlog);
	[CRepr]
	public struct SocketListenerClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum SocketListenerEvent : c_int
	{
		binding = 0,
		bound = 1,
		listening = 2,
		listened = 3
	}
	[CRepr]
	public struct SocketListenerPrivate
	{
	}
	[CRepr]
	public enum SocketMsgFlags : int
	{
		none = 0,
		oob = 1,
		peek = 2,
		dontroute = 4
	}
	[CRepr]
	public struct SocketPrivate
	{
	}
	public enum SocketProtocol : c_int
	{
		unknown = -1,
		default_ = 0,
		tcp = 6,
		udp = 17,
		sctp = 132
	}
	[CRepr]
	public struct SocketService;
	[LinkName("g_socket_service_new")]
	public static extern SocketService* SocketServiceNew();
	[LinkName("g_socket_service_is_active")]
	public static extern c_int SocketServiceIsActive(SocketService* service);
	[LinkName("g_socket_service_start")]
	public static extern void SocketServiceStart(SocketService* service);
	[LinkName("g_socket_service_stop")]
	public static extern void SocketServiceStop(SocketService* service);
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
		invalid = 0,
		stream = 1,
		datagram = 2,
		seqpacket = 3
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
	[LinkName("g_subprocess_newv")]
	public static extern Subprocess* SubprocessNewv(char8** argv, SubprocessFlags flags);
	[LinkName("g_subprocess_communicate")]
	public static extern c_int SubprocessCommunicate(Subprocess* subprocess, GLib.Bytes* stdin_buf, Cancellable* cancellable, GLib.Bytes* stdout_buf, GLib.Bytes* stderr_buf);
	[LinkName("g_subprocess_communicate_async")]
	public static extern void SubprocessCommunicateAsync(Subprocess* subprocess, GLib.Bytes* stdin_buf, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_subprocess_communicate_finish")]
	public static extern c_int SubprocessCommunicateFinish(Subprocess* subprocess, AsyncResult* result, GLib.Bytes* stdout_buf, GLib.Bytes* stderr_buf);
	[LinkName("g_subprocess_communicate_utf8")]
	public static extern c_int SubprocessCommunicateUtf8(Subprocess* subprocess, char8* stdin_buf, Cancellable* cancellable, char8* stdout_buf, char8* stderr_buf);
	[LinkName("g_subprocess_communicate_utf8_async")]
	public static extern void SubprocessCommunicateUtf8Async(Subprocess* subprocess, char8* stdin_buf, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_subprocess_communicate_utf8_finish")]
	public static extern c_int SubprocessCommunicateUtf8Finish(Subprocess* subprocess, AsyncResult* result, char8* stdout_buf, char8* stderr_buf);
	[LinkName("g_subprocess_force_exit")]
	public static extern void SubprocessForceExit(Subprocess* subprocess);
	[LinkName("g_subprocess_get_exit_status")]
	public static extern c_int SubprocessGetExitStatus(Subprocess* subprocess);
	[LinkName("g_subprocess_get_identifier")]
	public static extern char8* SubprocessGetIdentifier(Subprocess* subprocess);
	[LinkName("g_subprocess_get_if_exited")]
	public static extern c_int SubprocessGetIfExited(Subprocess* subprocess);
	[LinkName("g_subprocess_get_if_signaled")]
	public static extern c_int SubprocessGetIfSignaled(Subprocess* subprocess);
	[LinkName("g_subprocess_get_status")]
	public static extern c_int SubprocessGetStatus(Subprocess* subprocess);
	[LinkName("g_subprocess_get_stderr_pipe")]
	public static extern InputStream* SubprocessGetStderrPipe(Subprocess* subprocess);
	[LinkName("g_subprocess_get_stdin_pipe")]
	public static extern OutputStream* SubprocessGetStdinPipe(Subprocess* subprocess);
	[LinkName("g_subprocess_get_stdout_pipe")]
	public static extern InputStream* SubprocessGetStdoutPipe(Subprocess* subprocess);
	[LinkName("g_subprocess_get_successful")]
	public static extern c_int SubprocessGetSuccessful(Subprocess* subprocess);
	[LinkName("g_subprocess_get_term_sig")]
	public static extern c_int SubprocessGetTermSig(Subprocess* subprocess);
	[LinkName("g_subprocess_send_signal")]
	public static extern void SubprocessSendSignal(Subprocess* subprocess, c_int signal_num);
	[LinkName("g_subprocess_wait")]
	public static extern c_int SubprocessWait(Subprocess* subprocess, Cancellable* cancellable);
	[LinkName("g_subprocess_wait_async")]
	public static extern void SubprocessWaitAsync(Subprocess* subprocess, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_subprocess_wait_check")]
	public static extern c_int SubprocessWaitCheck(Subprocess* subprocess, Cancellable* cancellable);
	[LinkName("g_subprocess_wait_check_async")]
	public static extern void SubprocessWaitCheckAsync(Subprocess* subprocess, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_subprocess_wait_check_finish")]
	public static extern c_int SubprocessWaitCheckFinish(Subprocess* subprocess, AsyncResult* result);
	[LinkName("g_subprocess_wait_finish")]
	public static extern c_int SubprocessWaitFinish(Subprocess* subprocess, AsyncResult* result);
	[CRepr]
	public enum SubprocessFlags : int
	{
		none = 0,
		stdin_pipe = 1,
		stdin_inherit = 2,
		stdout_pipe = 4,
		stdout_silence = 8,
		stderr_pipe = 16,
		stderr_silence = 32,
		stderr_merge = 64,
		inherit_fds = 128,
		search_path_from_envp = 256
	}
	[CRepr]
	public struct SubprocessLauncher;
	[LinkName("g_subprocess_launcher_new")]
	public static extern SubprocessLauncher* SubprocessLauncherNew(SubprocessFlags flags);
	[LinkName("g_subprocess_launcher_close")]
	public static extern void SubprocessLauncherClose(SubprocessLauncher* self);
	[LinkName("g_subprocess_launcher_getenv")]
	public static extern char8* SubprocessLauncherGetenv(SubprocessLauncher* self, char8* variable);
	[LinkName("g_subprocess_launcher_set_cwd")]
	public static extern void SubprocessLauncherSetCwd(SubprocessLauncher* self, char8* cwd);
	[LinkName("g_subprocess_launcher_set_environ")]
	public static extern void SubprocessLauncherSetEnviron(SubprocessLauncher* self, char8** env);
	[LinkName("g_subprocess_launcher_set_flags")]
	public static extern void SubprocessLauncherSetFlags(SubprocessLauncher* self, SubprocessFlags flags);
	[LinkName("g_subprocess_launcher_set_stderr_file_path")]
	public static extern void SubprocessLauncherSetStderrFilePath(SubprocessLauncher* self, char8* path);
	[LinkName("g_subprocess_launcher_set_stdin_file_path")]
	public static extern void SubprocessLauncherSetStdinFilePath(SubprocessLauncher* self, char8* path);
	[LinkName("g_subprocess_launcher_set_stdout_file_path")]
	public static extern void SubprocessLauncherSetStdoutFilePath(SubprocessLauncher* self, char8* path);
	[LinkName("g_subprocess_launcher_setenv")]
	public static extern void SubprocessLauncherSetenv(SubprocessLauncher* self, char8* variable, char8* value, c_int overwrite);
	[LinkName("g_subprocess_launcher_spawnv")]
	public static extern Subprocess* SubprocessLauncherSpawnv(SubprocessLauncher* self, char8** argv);
	[LinkName("g_subprocess_launcher_take_fd")]
	public static extern void SubprocessLauncherTakeFd(SubprocessLauncher* self, c_int source_fd, c_int target_fd);
	[LinkName("g_subprocess_launcher_take_stderr_fd")]
	public static extern void SubprocessLauncherTakeStderrFd(SubprocessLauncher* self, c_int fd);
	[LinkName("g_subprocess_launcher_take_stdin_fd")]
	public static extern void SubprocessLauncherTakeStdinFd(SubprocessLauncher* self, c_int fd);
	[LinkName("g_subprocess_launcher_take_stdout_fd")]
	public static extern void SubprocessLauncherTakeStdoutFd(SubprocessLauncher* self, c_int fd);
	[LinkName("g_subprocess_launcher_unsetenv")]
	public static extern void SubprocessLauncherUnsetenv(SubprocessLauncher* self, char8* variable);
	[CRepr]
	public struct Task;
	[LinkName("g_task_new")]
	public static extern Task* TaskNew(GObject.Object source_object, Cancellable* cancellable, AsyncReadyCallback callback, void* callback_data);
	[LinkName("g_task_is_valid")]
	public static extern c_int TaskIsValid(AsyncResult result, GObject.Object source_object);
	[LinkName("g_task_report_error")]
	public static extern void TaskReportError(GObject.Object source_object, AsyncReadyCallback callback, void* callback_data, void* source_tag, GLib.Error* error);
	[LinkName("g_task_get_cancellable")]
	public static extern Cancellable* TaskGetCancellable(Task* task);
	[LinkName("g_task_get_check_cancellable")]
	public static extern c_int TaskGetCheckCancellable(Task* task);
	[LinkName("g_task_get_completed")]
	public static extern c_int TaskGetCompleted(Task* task);
	[LinkName("g_task_get_context")]
	public static extern GLib.MainContext* TaskGetContext(Task* task);
	[LinkName("g_task_get_name")]
	public static extern char8* TaskGetName(Task* task);
	[LinkName("g_task_get_priority")]
	public static extern c_int TaskGetPriority(Task* task);
	[LinkName("g_task_get_return_on_cancel")]
	public static extern c_int TaskGetReturnOnCancel(Task* task);
	[LinkName("g_task_get_source_object")]
	public static extern GObject.Object TaskGetSourceObject(Task* task);
	[LinkName("g_task_get_source_tag")]
	public static extern void* TaskGetSourceTag(Task* task);
	[LinkName("g_task_get_task_data")]
	public static extern void* TaskGetTaskData(Task* task);
	[LinkName("g_task_had_error")]
	public static extern c_int TaskHadError(Task* task);
	[LinkName("g_task_propagate_boolean")]
	public static extern c_int TaskPropagateBoolean(Task* task);
	[LinkName("g_task_propagate_int")]
	public static extern c_long TaskPropagateInt(Task* task);
	[LinkName("g_task_propagate_pointer")]
	public static extern void* TaskPropagatePointer(Task* task);
	[LinkName("g_task_propagate_value")]
	public static extern c_int TaskPropagateValue(Task* task, GObject.Value* value);
	[LinkName("g_task_return_boolean")]
	public static extern void TaskReturnBoolean(Task* task, c_int result);
	[LinkName("g_task_return_error")]
	public static extern void TaskReturnError(Task* task, GLib.Error* error);
	[LinkName("g_task_return_error_if_cancelled")]
	public static extern c_int TaskReturnErrorIfCancelled(Task* task);
	[LinkName("g_task_return_int")]
	public static extern void TaskReturnInt(Task* task, c_long result);
	[LinkName("g_task_return_pointer")]
	public static extern void TaskReturnPointer(Task* task, void* result, GLib.DestroyNotify result_destroy);
	[LinkName("g_task_return_value")]
	public static extern void TaskReturnValue(Task* task, GObject.Value* result);
	[LinkName("g_task_run_in_thread")]
	public static extern void TaskRunInThread(Task* task, TaskThreadFunc task_func);
	[LinkName("g_task_run_in_thread_sync")]
	public static extern void TaskRunInThreadSync(Task* task, TaskThreadFunc task_func);
	[LinkName("g_task_set_check_cancellable")]
	public static extern void TaskSetCheckCancellable(Task* task, c_int check_cancellable);
	[LinkName("g_task_set_name")]
	public static extern void TaskSetName(Task* task, char8* name);
	[LinkName("g_task_set_priority")]
	public static extern void TaskSetPriority(Task* task, c_int priority);
	[LinkName("g_task_set_return_on_cancel")]
	public static extern c_int TaskSetReturnOnCancel(Task* task, c_int return_on_cancel);
	[LinkName("g_task_set_source_tag")]
	public static extern void TaskSetSourceTag(Task* task, void* source_tag);
	[LinkName("g_task_set_static_name")]
	public static extern void TaskSetStaticName(Task* task, char8* name);
	[LinkName("g_task_set_task_data")]
	public static extern void TaskSetTaskData(Task* task, void* task_data, GLib.DestroyNotify task_data_destroy);
	[CRepr]
	public struct TaskClass
	{
	}
	public function void TaskThreadFunc(Task task, GObject.Object source_object, void* task_data, Cancellable cancellable);
	[CRepr]
	public struct TcpConnection;
	[LinkName("g_tcp_connection_get_graceful_disconnect")]
	public static extern c_int TcpConnectionGetGracefulDisconnect(TcpConnection* connection);
	[LinkName("g_tcp_connection_set_graceful_disconnect")]
	public static extern void TcpConnectionSetGracefulDisconnect(TcpConnection* connection, c_int graceful_disconnect);
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
	public static extern SocketConnection* TcpWrapperConnectionNew(IOStream* base_io_stream, Socket* socket);
	[LinkName("g_tcp_wrapper_connection_get_base_io_stream")]
	public static extern IOStream* TcpWrapperConnectionGetBaseIoStream(TcpWrapperConnection* conn);
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
	public static extern TestDBus* TestDbusNew(TestDBusFlags flags);
	[LinkName("g_test_dbus_unset")]
	public static extern void TestDbusUnset();
	[LinkName("g_test_dbus_add_service_dir")]
	public static extern void TestDbusAddServiceDir(TestDBus* self, char8* path);
	[LinkName("g_test_dbus_down")]
	public static extern void TestDbusDown(TestDBus* self);
	[LinkName("g_test_dbus_get_bus_address")]
	public static extern char8* TestDbusGetBusAddress(TestDBus* self);
	[LinkName("g_test_dbus_get_flags")]
	public static extern TestDBusFlags TestDbusGetFlags(TestDBus* self);
	[LinkName("g_test_dbus_stop")]
	public static extern void TestDbusStop(TestDBus* self);
	[LinkName("g_test_dbus_up")]
	public static extern void TestDbusUp(TestDBus* self);
	[CRepr]
	public enum TestDBusFlags : int
	{
		none = 0
	}
	[CRepr]
	public struct ThemedIcon;
	[LinkName("g_themed_icon_new")]
	public static extern ThemedIcon* ThemedIconNew(char8* iconname);
	[LinkName("g_themed_icon_new_from_names")]
	public static extern ThemedIcon* ThemedIconNewFromNames(char8* iconnames, c_int len);
	[LinkName("g_themed_icon_new_with_default_fallbacks")]
	public static extern ThemedIcon* ThemedIconNewWithDefaultFallbacks(char8* iconname);
	[LinkName("g_themed_icon_append_name")]
	public static extern void ThemedIconAppendName(ThemedIcon* icon, char8* iconname);
	[LinkName("g_themed_icon_get_names")]
	public static extern char8* ThemedIconGetNames(ThemedIcon* icon);
	[LinkName("g_themed_icon_prepend_name")]
	public static extern void ThemedIconPrependName(ThemedIcon* icon, char8* iconname);
	[CRepr]
	public struct ThemedIconClass
	{
	}
	[CRepr]
	public struct ThreadedSocketService;
	[LinkName("g_threaded_socket_service_new")]
	public static extern SocketService* ThreadedSocketServiceNew(c_int max_threads);
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
		none = 0,
		requested = 1,
		required = 2
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
	public static extern TlsCertificate* TlsCertificateNewFromFile(char8* file);
	[LinkName("g_tls_certificate_new_from_file_with_password")]
	public static extern TlsCertificate* TlsCertificateNewFromFileWithPassword(char8* file, char8* password);
	[LinkName("g_tls_certificate_new_from_files")]
	public static extern TlsCertificate* TlsCertificateNewFromFiles(char8* cert_file, char8* key_file);
	[LinkName("g_tls_certificate_new_from_pem")]
	public static extern TlsCertificate* TlsCertificateNewFromPem(char8* data, c_long length);
	[LinkName("g_tls_certificate_new_from_pkcs11_uris")]
	public static extern TlsCertificate* TlsCertificateNewFromPkcs11Uris(char8* pkcs11_uri, char8* private_key_pkcs11_uri);
	[LinkName("g_tls_certificate_new_from_pkcs12")]
	public static extern TlsCertificate* TlsCertificateNewFromPkcs12(c_uchar* data, c_ulong length, char8* password);
	[LinkName("g_tls_certificate_list_new_from_file")]
	public static extern GLib.List* TlsCertificateListNewFromFile(char8* file);
	[LinkName("g_tls_certificate_get_dns_names")]
	public static extern GLib.Bytes TlsCertificateGetDnsNames(TlsCertificate* cert);
	[LinkName("g_tls_certificate_get_ip_addresses")]
	public static extern InetAddress TlsCertificateGetIpAddresses(TlsCertificate* cert);
	[LinkName("g_tls_certificate_get_issuer")]
	public static extern TlsCertificate* TlsCertificateGetIssuer(TlsCertificate* cert);
	[LinkName("g_tls_certificate_get_issuer_name")]
	public static extern char8* TlsCertificateGetIssuerName(TlsCertificate* cert);
	[LinkName("g_tls_certificate_get_not_valid_after")]
	public static extern GLib.DateTime* TlsCertificateGetNotValidAfter(TlsCertificate* cert);
	[LinkName("g_tls_certificate_get_not_valid_before")]
	public static extern GLib.DateTime* TlsCertificateGetNotValidBefore(TlsCertificate* cert);
	[LinkName("g_tls_certificate_get_subject_name")]
	public static extern char8* TlsCertificateGetSubjectName(TlsCertificate* cert);
	[LinkName("g_tls_certificate_is_same")]
	public static extern c_int TlsCertificateIsSame(TlsCertificate* cert_one, TlsCertificate* cert_two);
	[LinkName("g_tls_certificate_verify")]
	public static extern TlsCertificateFlags TlsCertificateVerify(TlsCertificate* cert, SocketConnectable* identity, TlsCertificate* trusted_ca);
	[CRepr]
	public struct TlsCertificateClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public enum TlsCertificateFlags : int
	{
		no_flags = 0,
		unknown_ca = 1,
		bad_identity = 2,
		not_activated = 4,
		expired = 8,
		revoked = 16,
		insecure = 32,
		generic_error = 64,
		validate_all = 127
	}
	[CRepr]
	public struct TlsCertificatePrivate
	{
	}
	public enum TlsCertificateRequestFlags : c_int
	{
		none = 0
	}
	public enum TlsChannelBindingError : c_int
	{
		not_implemented = 0,
		invalid_state = 1,
		not_available = 2,
		not_supported = 3,
		general_error = 4
	}
	public enum TlsChannelBindingType : c_int
	{
		unique = 0,
		server_end_point = 1,
		exporter = 2
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
	public static extern c_int TlsConnectionEmitAcceptCertificate(TlsConnection* conn, TlsCertificate* peer_cert, TlsCertificateFlags errors);
	[LinkName("g_tls_connection_get_certificate")]
	public static extern TlsCertificate* TlsConnectionGetCertificate(TlsConnection* conn);
	[LinkName("g_tls_connection_get_channel_binding_data")]
	public static extern c_int TlsConnectionGetChannelBindindata(TlsConnection* conn, TlsChannelBindingType type, c_uchar* data);
	[LinkName("g_tls_connection_get_ciphersuite_name")]
	public static extern char8* TlsConnectionGetCiphersuiteName(TlsConnection* conn);
	[LinkName("g_tls_connection_get_database")]
	public static extern TlsDatabase* TlsConnectionGetDatabase(TlsConnection* conn);
	[LinkName("g_tls_connection_get_interaction")]
	public static extern TlsInteraction* TlsConnectionGetInteraction(TlsConnection* conn);
	[LinkName("g_tls_connection_get_negotiated_protocol")]
	public static extern char8* TlsConnectionGetNegotiatedProtocol(TlsConnection* conn);
	[LinkName("g_tls_connection_get_peer_certificate")]
	public static extern TlsCertificate* TlsConnectionGetPeerCertificate(TlsConnection* conn);
	[LinkName("g_tls_connection_get_peer_certificate_errors")]
	public static extern TlsCertificateFlags TlsConnectionGetPeerCertificateErrors(TlsConnection* conn);
	[LinkName("g_tls_connection_get_protocol_version")]
	public static extern TlsProtocolVersion TlsConnectionGetProtocolVersion(TlsConnection* conn);
	[LinkName("g_tls_connection_get_rehandshake_mode")]
	public static extern TlsRehandshakeMode TlsConnectionGetRehandshakeMode(TlsConnection* conn);
	[LinkName("g_tls_connection_get_require_close_notify")]
	public static extern c_int TlsConnectionGetRequireCloseNotify(TlsConnection* conn);
	[LinkName("g_tls_connection_get_use_system_certdb")]
	public static extern c_int TlsConnectionGetUseSystemCertdb(TlsConnection* conn);
	[LinkName("g_tls_connection_handshake")]
	public static extern c_int TlsConnectionHandshake(TlsConnection* conn, Cancellable* cancellable);
	[LinkName("g_tls_connection_handshake_async")]
	public static extern void TlsConnectionHandshakeAsync(TlsConnection* conn, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_connection_handshake_finish")]
	public static extern c_int TlsConnectionHandshakeFinish(TlsConnection* conn, AsyncResult* result);
	[LinkName("g_tls_connection_set_advertised_protocols")]
	public static extern void TlsConnectionSetAdvertisedProtocols(TlsConnection* conn, char8* protocols);
	[LinkName("g_tls_connection_set_certificate")]
	public static extern void TlsConnectionSetCertificate(TlsConnection* conn, TlsCertificate* certificate);
	[LinkName("g_tls_connection_set_database")]
	public static extern void TlsConnectionSetDatabase(TlsConnection* conn, TlsDatabase* database);
	[LinkName("g_tls_connection_set_interaction")]
	public static extern void TlsConnectionSetInteraction(TlsConnection* conn, TlsInteraction* interaction);
	[LinkName("g_tls_connection_set_rehandshake_mode")]
	public static extern void TlsConnectionSetRehandshakeMode(TlsConnection* conn, TlsRehandshakeMode mode);
	[LinkName("g_tls_connection_set_require_close_notify")]
	public static extern void TlsConnectionSetRequireCloseNotify(TlsConnection* conn, c_int require_close_notify);
	[LinkName("g_tls_connection_set_use_system_certdb")]
	public static extern void TlsConnectionSetUseSystemCertdb(TlsConnection* conn, c_int use_system_certdb);
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
	public static extern char8* TlsDatabaseCreateCertificateHandle(TlsDatabase* self, TlsCertificate* certificate);
	[LinkName("g_tls_database_lookup_certificate_for_handle")]
	public static extern TlsCertificate* TlsDatabaseLookupCertificateForHandle(TlsDatabase* self, char8* handle, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable);
	[LinkName("g_tls_database_lookup_certificate_for_handle_async")]
	public static extern void TlsDatabaseLookupCertificateForHandleAsync(TlsDatabase* self, char8* handle, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_database_lookup_certificate_for_handle_finish")]
	public static extern TlsCertificate* TlsDatabaseLookupCertificateForHandleFinish(TlsDatabase* self, AsyncResult* result);
	[LinkName("g_tls_database_lookup_certificate_issuer")]
	public static extern TlsCertificate* TlsDatabaseLookupCertificateIssuer(TlsDatabase* self, TlsCertificate* certificate, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable);
	[LinkName("g_tls_database_lookup_certificate_issuer_async")]
	public static extern void TlsDatabaseLookupCertificateIssuerAsync(TlsDatabase* self, TlsCertificate* certificate, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_database_lookup_certificate_issuer_finish")]
	public static extern TlsCertificate* TlsDatabaseLookupCertificateIssuerFinish(TlsDatabase* self, AsyncResult* result);
	[LinkName("g_tls_database_lookup_certificates_issued_by")]
	public static extern GLib.List* TlsDatabaseLookupCertificatesIssuedBy(TlsDatabase* self, c_uchar* issuer_raw_dn, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable);
	[LinkName("g_tls_database_lookup_certificates_issued_by_async")]
	public static extern void TlsDatabaseLookupCertificatesIssuedByAsync(TlsDatabase* self, c_uchar* issuer_raw_dn, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_database_lookup_certificates_issued_by_finish")]
	public static extern GLib.List* TlsDatabaseLookupCertificatesIssuedByFinish(TlsDatabase* self, AsyncResult* result);
	[LinkName("g_tls_database_verify_chain")]
	public static extern TlsCertificateFlags TlsDatabaseVerifyChain(TlsDatabase* self, TlsCertificate* chain, char8* purpose, SocketConnectable* identity, TlsInteraction* interaction, TlsDatabaseVerifyFlags flags, Cancellable* cancellable);
	[LinkName("g_tls_database_verify_chain_async")]
	public static extern void TlsDatabaseVerifyChainAsync(TlsDatabase* self, TlsCertificate* chain, char8* purpose, SocketConnectable* identity, TlsInteraction* interaction, TlsDatabaseVerifyFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_database_verify_chain_finish")]
	public static extern TlsCertificateFlags TlsDatabaseVerifyChainFinish(TlsDatabase* self, AsyncResult* result);
	[CRepr]
	public struct TlsDatabaseClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum TlsDatabaseLookupFlags : c_int
	{
		none = 0,
		keypair = 1
	}
	[CRepr]
	public struct TlsDatabasePrivate
	{
	}
	[CRepr]
	public enum TlsDatabaseVerifyFlags : int
	{
		none = 0
	}
	public enum TlsError : c_int
	{
		unavailable = 0,
		misc = 1,
		bad_certificate = 2,
		not_tls = 3,
		handshake = 4,
		certificate_required = 5,
		eof = 6,
		inappropriate_fallback = 7,
		bad_certificate_password = 8
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
	public static extern TlsInteractionResult TlsInteractionAskPassword(TlsInteraction* interaction, TlsPassword* password, Cancellable* cancellable);
	[LinkName("g_tls_interaction_ask_password_async")]
	public static extern void TlsInteractionAskPasswordAsync(TlsInteraction* interaction, TlsPassword* password, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_interaction_ask_password_finish")]
	public static extern TlsInteractionResult TlsInteractionAskPasswordFinish(TlsInteraction* interaction, AsyncResult* result);
	[LinkName("g_tls_interaction_invoke_ask_password")]
	public static extern TlsInteractionResult TlsInteractionInvokeAskPassword(TlsInteraction* interaction, TlsPassword* password, Cancellable* cancellable);
	[LinkName("g_tls_interaction_invoke_request_certificate")]
	public static extern TlsInteractionResult TlsInteractionInvokeRequestCertificate(TlsInteraction* interaction, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable);
	[LinkName("g_tls_interaction_request_certificate")]
	public static extern TlsInteractionResult TlsInteractionRequestCertificate(TlsInteraction* interaction, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable);
	[LinkName("g_tls_interaction_request_certificate_async")]
	public static extern void TlsInteractionRequestCertificateAsync(TlsInteraction* interaction, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_tls_interaction_request_certificate_finish")]
	public static extern TlsInteractionResult TlsInteractionRequestCertificateFinish(TlsInteraction* interaction, AsyncResult* result);
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
		unhandled = 0,
		handled = 1,
		failed = 2
	}
	[CRepr]
	public struct TlsPassword;
	[LinkName("g_tls_password_new")]
	public static extern TlsPassword* TlsPasswordNew(TlsPasswordFlags flags, char8* description);
	[LinkName("g_tls_password_get_description")]
	public static extern char8* TlsPasswordGetDescription(TlsPassword* password);
	[LinkName("g_tls_password_get_flags")]
	public static extern TlsPasswordFlags TlsPasswordGetFlags(TlsPassword* password);
	[LinkName("g_tls_password_get_value")]
	public static extern c_uchar TlsPasswordGetValue(TlsPassword* password, c_ulong* length);
	[LinkName("g_tls_password_get_warning")]
	public static extern char8* TlsPasswordGetWarning(TlsPassword* password);
	[LinkName("g_tls_password_set_description")]
	public static extern void TlsPasswordSetDescription(TlsPassword* password, char8* description);
	[LinkName("g_tls_password_set_flags")]
	public static extern void TlsPasswordSetFlags(TlsPassword* password, TlsPasswordFlags flags);
	[LinkName("g_tls_password_set_value")]
	public static extern void TlsPasswordSetValue(TlsPassword* password, c_uchar* value, c_long length);
	[LinkName("g_tls_password_set_value_full")]
	public static extern void TlsPasswordSetValueFull(TlsPassword* password, c_uchar* value, c_long length, GLib.DestroyNotify destroy);
	[LinkName("g_tls_password_set_warning")]
	public static extern void TlsPasswordSetWarning(TlsPassword* password, char8* warning);
	[CRepr]
	public struct TlsPasswordClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public enum TlsPasswordFlags : int
	{
		none = 0,
		retry = 2,
		many_tries = 4,
		final_try = 8,
		pkcs11_user = 16,
		pkcs11_security_officer = 32,
		pkcs11_context_specific = 64
	}
	[CRepr]
	public struct TlsPasswordPrivate
	{
	}
	public enum TlsProtocolVersion : c_int
	{
		unknown = 0,
		ssl_3_0 = 1,
		tls_1_0 = 2,
		tls_1_1 = 3,
		tls_1_2 = 4,
		tls_1_3 = 5,
		dtls_1_0 = 201,
		dtls_1_2 = 202
	}
	public enum TlsRehandshakeMode : c_int
	{
		never = 0,
		safely = 1,
		unsafely = 2
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
	public static extern Credentials* UnixConnectionReceiveCredentials(UnixConnection* connection, Cancellable* cancellable);
	[LinkName("g_unix_connection_receive_credentials_async")]
	public static extern void UnixConnectionReceiveCredentialsAsync(UnixConnection* connection, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_unix_connection_receive_credentials_finish")]
	public static extern Credentials* UnixConnectionReceiveCredentialsFinish(UnixConnection* connection, AsyncResult* result);
	[LinkName("g_unix_connection_receive_fd")]
	public static extern c_int UnixConnectionReceiveFd(UnixConnection* connection, Cancellable* cancellable);
	[LinkName("g_unix_connection_send_credentials")]
	public static extern c_int UnixConnectionSendCredentials(UnixConnection* connection, Cancellable* cancellable);
	[LinkName("g_unix_connection_send_credentials_async")]
	public static extern void UnixConnectionSendCredentialsAsync(UnixConnection* connection, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_unix_connection_send_credentials_finish")]
	public static extern c_int UnixConnectionSendCredentialsFinish(UnixConnection* connection, AsyncResult* result);
	[LinkName("g_unix_connection_send_fd")]
	public static extern c_int UnixConnectionSendFd(UnixConnection* connection, c_int fd, Cancellable* cancellable);
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
	public static extern SocketControlMessage* UnixCredentialsMessageNew();
	[LinkName("g_unix_credentials_message_new_with_credentials")]
	public static extern SocketControlMessage* UnixCredentialsMessageNewWithCredentials(Credentials* credentials);
	[LinkName("g_unix_credentials_message_is_supported")]
	public static extern c_int UnixCredentialsMessageIsSupported();
	[LinkName("g_unix_credentials_message_get_credentials")]
	public static extern Credentials* UnixCredentialsMessageGetCredentials(UnixCredentialsMessage* message);
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
	public static extern UnixFDList* UnixFdListNew();
	[LinkName("g_unix_fd_list_new_from_array")]
	public static extern UnixFDList* UnixFdListNewFromArray(c_int* fds, c_int n_fds);
	[LinkName("g_unix_fd_list_append")]
	public static extern c_int UnixFdListAppend(UnixFDList* list, c_int fd);
	[LinkName("g_unix_fd_list_get")]
	public static extern c_int UnixFdListGet(UnixFDList* list, c_int index_);
	[LinkName("g_unix_fd_list_get_length")]
	public static extern c_int UnixFdListGetLength(UnixFDList* list);
	[LinkName("g_unix_fd_list_peek_fds")]
	public static extern c_int UnixFdListPeekFds(UnixFDList* list, c_int* length);
	[LinkName("g_unix_fd_list_steal_fds")]
	public static extern c_int UnixFdListStealFds(UnixFDList* list, c_int* length);
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
	public static extern SocketControlMessage* UnixFdMessageNew();
	[LinkName("g_unix_fd_message_new_with_fd_list")]
	public static extern SocketControlMessage* UnixFdMessageNewWithFdList(UnixFDList* fd_list);
	[LinkName("g_unix_fd_message_append_fd")]
	public static extern c_int UnixFdMessageAppendFd(UnixFDMessage* message, c_int fd);
	[LinkName("g_unix_fd_message_get_fd_list")]
	public static extern UnixFDList* UnixFdMessageGetFdList(UnixFDMessage* message);
	[LinkName("g_unix_fd_message_steal_fds")]
	public static extern c_int UnixFdMessageStealFds(UnixFDMessage* message, c_int* length);
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
	public static extern InputStream* UnixInputStreamNew(c_int fd, c_int close_fd);
	[LinkName("g_unix_input_stream_get_close_fd")]
	public static extern c_int UnixInputStreamGetCloseFd(UnixInputStream* stream);
	[LinkName("g_unix_input_stream_get_fd")]
	public static extern c_int UnixInputStreamGetFd(UnixInputStream* stream);
	[LinkName("g_unix_input_stream_set_close_fd")]
	public static extern void UnixInputStreamSetCloseFd(UnixInputStream* stream, c_int close_fd);
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
	public static extern UnixMountMonitor* UnixMountMonitorNew();
	[LinkName("g_unix_mount_monitor_get")]
	public static extern UnixMountMonitor* UnixMountMonitorGet();
	[LinkName("g_unix_mount_monitor_set_rate_limit")]
	public static extern void UnixMountMonitorSetRateLimit(UnixMountMonitor* mount_monitor, c_int limit_msec);
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
	public static extern OutputStream* UnixOutputStreamNew(c_int fd, c_int close_fd);
	[LinkName("g_unix_output_stream_get_close_fd")]
	public static extern c_int UnixOutputStreamGetCloseFd(UnixOutputStream* stream);
	[LinkName("g_unix_output_stream_get_fd")]
	public static extern c_int UnixOutputStreamGetFd(UnixOutputStream* stream);
	[LinkName("g_unix_output_stream_set_close_fd")]
	public static extern void UnixOutputStreamSetCloseFd(UnixOutputStream* stream, c_int close_fd);
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
	public static extern SocketAddress* UnixSocketAddressNew(char8* path);
	[LinkName("g_unix_socket_address_new_abstract")]
	public static extern SocketAddress* UnixSocketAddressNewAbstract(c_char* path, c_int path_len);
	[LinkName("g_unix_socket_address_new_with_type")]
	public static extern SocketAddress* UnixSocketAddressNewWithType(c_char* path, c_int path_len, UnixSocketAddressType type);
	[LinkName("g_unix_socket_address_abstract_names_supported")]
	public static extern c_int UnixSocketAddressAbstractNamesSupported();
	[LinkName("g_unix_socket_address_get_address_type")]
	public static extern UnixSocketAddressType UnixSocketAddressGetAddressType(UnixSocketAddress* address);
	[LinkName("g_unix_socket_address_get_is_abstract")]
	public static extern c_int UnixSocketAddressGetIsAbstract(UnixSocketAddress* address);
	[LinkName("g_unix_socket_address_get_path")]
	public static extern char8* UnixSocketAddressGetPath(UnixSocketAddress* address);
	[LinkName("g_unix_socket_address_get_path_len")]
	public static extern c_ulong UnixSocketAddressGetPathLen(UnixSocketAddress* address);
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
		invalid = 0,
		anonymous = 1,
		path = 2,
		abstract_ = 3,
		abstract_padded = 4
	}
	[CRepr]
	public struct Vfs;
	[LinkName("g_vfs_get_default")]
	public static extern Vfs* VfsGetDefault();
	[LinkName("g_vfs_get_local")]
	public static extern Vfs* VfsGetLocal();
	[LinkName("g_vfs_get_file_for_path")]
	public static extern File* VfsGetFileForPath(Vfs* vfs, char8* path);
	[LinkName("g_vfs_get_file_for_uri")]
	public static extern File* VfsGetFileForUri(Vfs* vfs, char8* uri);
	[LinkName("g_vfs_get_supported_uri_schemes")]
	public static extern char8* VfsGetSupportedUriSchemes(Vfs* vfs);
	[LinkName("g_vfs_is_active")]
	public static extern c_int VfsIsActive(Vfs* vfs);
	[LinkName("g_vfs_parse_name")]
	public static extern File* VfsParseName(Vfs* vfs, char8* parse_name);
	[LinkName("g_vfs_register_uri_scheme")]
	public static extern c_int VfsRegisterUriScheme(Vfs* vfs, char8* scheme, VfsFileLookupFunc uri_func, void* uri_data, GLib.DestroyNotify uri_destroy, VfsFileLookupFunc parse_name_func, void* parse_name_data, GLib.DestroyNotify parse_name_destroy);
	[LinkName("g_vfs_unregister_uri_scheme")]
	public static extern c_int VfsUnregisterUriScheme(Vfs* vfs, char8* scheme);
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
	[LinkName("g_volume_monitor_adopt_orphan_mount")]
	public static extern Volume* VolumeMonitorAdoptOrphanMount(Mount* mount);
	[LinkName("g_volume_monitor_get")]
	public static extern VolumeMonitor* VolumeMonitorGet();
	[LinkName("g_volume_monitor_get_connected_drives")]
	public static extern GLib.List* VolumeMonitorGetConnectedDrives(VolumeMonitor* volume_monitor);
	[LinkName("g_volume_monitor_get_mount_for_uuid")]
	public static extern Mount* VolumeMonitorGetMountForUuid(VolumeMonitor* volume_monitor, char8* uuid);
	[LinkName("g_volume_monitor_get_mounts")]
	public static extern GLib.List* VolumeMonitorGetMounts(VolumeMonitor* volume_monitor);
	[LinkName("g_volume_monitor_get_volume_for_uuid")]
	public static extern Volume* VolumeMonitorGetVolumeForUuid(VolumeMonitor* volume_monitor, char8* uuid);
	[LinkName("g_volume_monitor_get_volumes")]
	public static extern GLib.List* VolumeMonitorGetVolumes(VolumeMonitor* volume_monitor);
	[CRepr]
	public struct VolumeMonitorClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ZlibCompressor;
	[LinkName("g_zlib_compressor_new")]
	public static extern ZlibCompressor* ZlibCompressorNew(ZlibCompressorFormat format, c_int level);
	[LinkName("g_zlib_compressor_get_file_info")]
	public static extern FileInfo* ZlibCompressorGetFileInfo(ZlibCompressor* compressor);
	[LinkName("g_zlib_compressor_set_file_info")]
	public static extern void ZlibCompressorSetFileInfo(ZlibCompressor* compressor, FileInfo* file_info);
	[CRepr]
	public struct ZlibCompressorClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum ZlibCompressorFormat : c_int
	{
		zlib = 0,
		gzip = 1,
		raw = 2
	}
	[CRepr]
	public struct ZlibDecompressor;
	[LinkName("g_zlib_decompressor_new")]
	public static extern ZlibDecompressor* ZlibDecompressorNew(ZlibCompressorFormat format);
	[LinkName("g_zlib_decompressor_get_file_info")]
	public static extern FileInfo* ZlibDecompressorGetFileInfo(ZlibDecompressor* decompressor);
	[CRepr]
	public struct ZlibDecompressorClass
	{
		GObject.ObjectClass parent_class;
	}
	[LinkName("g_action_name_is_valid")]
	public static extern c_int ActionNameIsValid(char8* action_name);
	[LinkName("g_action_parse_detailed_name")]
	public static extern c_int ActionParseDetailedName(char8* detailed_name, char8* action_name, GLib.Variant* target_value);
	[LinkName("g_action_print_detailed_name")]
	public static extern char8* ActionPrintDetailedName(char8* action_name, GLib.Variant* target_value);
	[LinkName("g_app_info_create_from_commandline")]
	public static extern AppInfo* AppInfoCreateFromCommandline(char8* commandline, char8* application_name, AppInfoCreateFlags flags);
	[LinkName("g_app_info_get_all")]
	public static extern GLib.List* AppInfoGetAll();
	[LinkName("g_app_info_get_all_for_type")]
	public static extern GLib.List* AppInfoGetAllForType(char8* content_type);
	[LinkName("g_app_info_get_default_for_type")]
	public static extern AppInfo* AppInfoGetDefaultForType(char8* content_type, c_int must_support_uris);
	[LinkName("g_app_info_get_default_for_type_async")]
	public static extern void AppInfoGetDefaultForTypeAsync(char8* content_type, c_int must_support_uris, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_app_info_get_default_for_type_finish")]
	public static extern AppInfo* AppInfoGetDefaultForTypeFinish(AsyncResult* result);
	[LinkName("g_app_info_get_default_for_uri_scheme")]
	public static extern AppInfo* AppInfoGetDefaultForUriScheme(char8* uri_scheme);
	[LinkName("g_app_info_get_default_for_uri_scheme_async")]
	public static extern void AppInfoGetDefaultForUriSchemeAsync(char8* uri_scheme, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_app_info_get_default_for_uri_scheme_finish")]
	public static extern AppInfo* AppInfoGetDefaultForUriSchemeFinish(AsyncResult* result);
	[LinkName("g_app_info_get_fallback_for_type")]
	public static extern GLib.List* AppInfoGetFallbackForType(char8* content_type);
	[LinkName("g_app_info_get_recommended_for_type")]
	public static extern GLib.List* AppInfoGetRecommendedForType(char8* content_type);
	[LinkName("g_app_info_launch_default_for_uri")]
	public static extern c_int AppInfoLaunchDefaultForUri(char8* uri, AppLaunchContext* context);
	[LinkName("g_app_info_launch_default_for_uri_async")]
	public static extern void AppInfoLaunchDefaultForUriAsync(char8* uri, AppLaunchContext* context, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_app_info_launch_default_for_uri_finish")]
	public static extern c_int AppInfoLaunchDefaultForUriFinish(AsyncResult* result);
	[LinkName("g_app_info_reset_type_associations")]
	public static extern void AppInfoResetTypeAssociations(char8* content_type);
	[LinkName("g_async_initable_newv_async")]
	public static extern void AsyncInitableNewvAsync(GLib.Type object_type, c_uint n_parameters, GObject.Parameter* parameters, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_bus_get")]
	public static extern void BusGet(BusType bus_type, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_bus_get_finish")]
	public static extern DBusConnection* BusGetFinish(AsyncResult* res);
	[LinkName("g_bus_get_sync")]
	public static extern DBusConnection* BusGetSync(BusType bus_type, Cancellable* cancellable);
	[LinkName("g_bus_own_name_on_connection_with_closures")]
	public static extern c_uint BusOwnNameOnConnectionWithClosures(DBusConnection* connection, char8* name, BusNameOwnerFlags flags, GObject.Closure* name_acquired_closure, GObject.Closure* name_lost_closure);
	[LinkName("g_bus_own_name_with_closures")]
	public static extern c_uint BusOwnNameWithClosures(BusType bus_type, char8* name, BusNameOwnerFlags flags, GObject.Closure* bus_acquired_closure, GObject.Closure* name_acquired_closure, GObject.Closure* name_lost_closure);
	[LinkName("g_bus_unown_name")]
	public static extern void BusUnownName(c_uint owner_id);
	[LinkName("g_bus_unwatch_name")]
	public static extern void BusUnwatchName(c_uint watcher_id);
	[LinkName("g_bus_watch_name_on_connection_with_closures")]
	public static extern c_uint BusWatchNameOnConnectionWithClosures(DBusConnection* connection, char8* name, BusNameWatcherFlags flags, GObject.Closure* name_appeared_closure, GObject.Closure* name_vanished_closure);
	[LinkName("g_bus_watch_name_with_closures")]
	public static extern c_uint BusWatchNameWithClosures(BusType bus_type, char8* name, BusNameWatcherFlags flags, GObject.Closure* name_appeared_closure, GObject.Closure* name_vanished_closure);
	[LinkName("g_content_type_can_be_executable")]
	public static extern c_int ContentTypeCanBeExecutable(char8* type);
	[LinkName("g_content_type_equals")]
	public static extern c_int ContentTypeEquals(char8* type1, char8* type2);
	[LinkName("g_content_type_from_mime_type")]
	public static extern char8* ContentTypeFromMimeType(char8* mime_type);
	[LinkName("g_content_type_get_description")]
	public static extern char8* ContentTypeGetDescription(char8* type);
	[LinkName("g_content_type_get_generic_icon_name")]
	public static extern char8* ContentTypeGetGenericIconName(char8* type);
	[LinkName("g_content_type_get_icon")]
	public static extern Icon* ContentTypeGetIcon(char8* type);
	[LinkName("g_content_type_get_mime_dirs")]
	public static extern char8* ContentTypeGetMimeDirs();
	[LinkName("g_content_type_get_mime_type")]
	public static extern char8* ContentTypeGetMimeType(char8* type);
	[LinkName("g_content_type_get_symbolic_icon")]
	public static extern Icon* ContentTypeGetSymbolicIcon(char8* type);
	[LinkName("g_content_type_guess")]
	public static extern char8* ContentTypeGuess(char8* filename, c_uchar* data, c_ulong data_size, c_int* result_uncertain);
	[LinkName("g_content_type_guess_for_tree")]
	public static extern char8* ContentTypeGuessForTree(File* root);
	[LinkName("g_content_type_is_a")]
	public static extern c_int ContentTypeIsA(char8* type, char8* supertype);
	[LinkName("g_content_type_is_mime_type")]
	public static extern c_int ContentTypeIsMimeType(char8* type, char8* mime_type);
	[LinkName("g_content_type_is_unknown")]
	public static extern c_int ContentTypeIsUnknown(char8* type);
	[LinkName("g_content_type_set_mime_dirs")]
	public static extern void ContentTypeSetMimeDirs(char8* dirs);
	[LinkName("g_content_types_get_registered")]
	public static extern GLib.List* ContentTypesGetRegistered();
	[LinkName("g_dbus_address_escape_value")]
	public static extern char8* DbusAddressEscapeValue(char8* string);
	[LinkName("g_dbus_address_get_for_bus_sync")]
	public static extern char8* DbusAddressGetForBusSync(BusType bus_type, Cancellable* cancellable);
	[LinkName("g_dbus_address_get_stream")]
	public static extern void DbusAddressGetStream(char8* address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_dbus_address_get_stream_finish")]
	public static extern IOStream* DbusAddressGetStreamFinish(AsyncResult* res, char8* out_guid);
	[LinkName("g_dbus_address_get_stream_sync")]
	public static extern IOStream* DbusAddressGetStreamSync(char8* address, char8* out_guid, Cancellable* cancellable);
	[LinkName("g_dbus_annotation_info_lookup")]
	public static extern char8* DbusAnnotationInfoLookup(DBusAnnotationInfo** annotations, char8* name);
	[LinkName("g_dbus_error_encode_gerror")]
	public static extern char8* DbusErrorEncodeGerror(GLib.Error* error);
	[LinkName("g_dbus_error_get_remote_error")]
	public static extern char8* DbusErrorGetRemoteError(GLib.Error* error);
	[LinkName("g_dbus_error_is_remote_error")]
	public static extern c_int DbusErrorIsRemoteError(GLib.Error* error);
	[LinkName("g_dbus_error_new_for_dbus_error")]
	public static extern GLib.Error* DbusErrorNewForDbusError(char8* dbus_error_name, char8* dbus_error_message);
	[LinkName("g_dbus_error_quark")]
	public static extern GLib.Quark DbusErrorQuark();
	[LinkName("g_dbus_error_register_error")]
	public static extern c_int DbusErrorRegisterError(GLib.Quark error_domain, c_int error_code, char8* dbus_error_name);
	[LinkName("g_dbus_error_register_error_domain")]
	public static extern void DbusErrorRegisterErrorDomain(char8* error_domain_quark_name, c_ulong* quark_volatile, DBusErrorEntry* entries, c_uint num_entries);
	[LinkName("g_dbus_error_strip_remote_error")]
	public static extern c_int DbusErrorStripRemoteError(GLib.Error* error);
	[LinkName("g_dbus_error_unregister_error")]
	public static extern c_int DbusErrorUnregisterError(GLib.Quark error_domain, c_int error_code, char8* dbus_error_name);
	[LinkName("g_dbus_escape_object_path")]
	public static extern char8* DbusEscapeObjectPath(char8* s);
	[LinkName("g_dbus_escape_object_path_bytestring")]
	public static extern char8* DbusEscapeObjectPathBytestring(c_uchar* bytes);
	[LinkName("g_dbus_generate_guid")]
	public static extern char8* DbusGenerateGuid();
	[LinkName("g_dbus_gvalue_to_gvariant")]
	public static extern GLib.Variant* DbusGvalueToGvariant(GObject.Value* gvalue, GLib.VariantType* type);
	[LinkName("g_dbus_gvariant_to_gvalue")]
	public static extern void DbusGvariantToGvalue(GLib.Variant* value, GObject.Value* out_gvalue);
	[LinkName("g_dbus_is_address")]
	public static extern c_int DbusIsAddress(char8* string);
	[LinkName("g_dbus_is_error_name")]
	public static extern c_int DbusIsErrorName(char8* string);
	[LinkName("g_dbus_is_guid")]
	public static extern c_int DbusIsGuid(char8* string);
	[LinkName("g_dbus_is_interface_name")]
	public static extern c_int DbusIsInterfaceName(char8* string);
	[LinkName("g_dbus_is_member_name")]
	public static extern c_int DbusIsMemberName(char8* string);
	[LinkName("g_dbus_is_name")]
	public static extern c_int DbusIsName(char8* string);
	[LinkName("g_dbus_is_supported_address")]
	public static extern c_int DbusIsSupportedAddress(char8* string);
	[LinkName("g_dbus_is_unique_name")]
	public static extern c_int DbusIsUniqueName(char8* string);
	[LinkName("g_dbus_unescape_object_path")]
	public static extern c_uchar DbusUnescapeObjectPath(char8* s);
	[LinkName("g_dtls_client_connection_new")]
	public static extern DtlsClientConnection* DtlsClientConnectionNew(DatagramBased* base_socket, SocketConnectable* server_identity);
	[LinkName("g_dtls_server_connection_new")]
	public static extern DtlsServerConnection* DtlsServerConnectionNew(DatagramBased* base_socket, TlsCertificate* certificate);
	[LinkName("g_file_new_for_commandline_arg")]
	public static extern File* FileNewForCommandlineArg(char8* arg);
	[LinkName("g_file_new_for_commandline_arg_and_cwd")]
	public static extern File* FileNewForCommandlineArandCwd(char8* arg, char8* cwd);
	[LinkName("g_file_new_for_path")]
	public static extern File* FileNewForPath(char8* path);
	[LinkName("g_file_new_for_uri")]
	public static extern File* FileNewForUri(char8* uri);
	[LinkName("g_file_new_tmp")]
	public static extern File* FileNewTmp(char8* tmpl, FileIOStream* iostream);
	[LinkName("g_file_new_tmp_async")]
	public static extern void FileNewTmpAsync(char8* tmpl, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_new_tmp_dir_async")]
	public static extern void FileNewTmpDirAsync(char8* tmpl, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	[LinkName("g_file_new_tmp_dir_finish")]
	public static extern File* FileNewTmpDirFinish(AsyncResult* result);
	[LinkName("g_file_new_tmp_finish")]
	public static extern File* FileNewTmpFinish(AsyncResult* result, FileIOStream* iostream);
	[LinkName("g_file_parse_name")]
	public static extern File* FileParseName(char8* parse_name);
}