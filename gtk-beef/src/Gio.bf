namespace Gtk;

using System;
using System.Interop;

class Gio
{

	const c_int DBUS_METHOD_INVOCATION_HANDLED = (.)1;
	const c_int DBUS_METHOD_INVOCATION_UNHANDLED = (.)0;
	const char8* DEBUG_CONTROLLER_EXTENSION_POINT_NAME = (.)"gio-debug-controller";
	const char8* DESKTOP_APP_INFO_LOOKUP_EXTENSION_POINT_NAME = (.)"gio-desktop-app-info-lookup";
	const char8* DRIVE_IDENTIFIER_KIND_UNIX_DEVICE = (.)"unix-device";
	const char8* FILE_ATTRIBUTE_ACCESS_CAN_DELETE = (.)"access::can-delete";
	const char8* FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE = (.)"access::can-execute";
	const char8* FILE_ATTRIBUTE_ACCESS_CAN_READ = (.)"access::can-read";
	const char8* FILE_ATTRIBUTE_ACCESS_CAN_RENAME = (.)"access::can-rename";
	const char8* FILE_ATTRIBUTE_ACCESS_CAN_TRASH = (.)"access::can-trash";
	const char8* FILE_ATTRIBUTE_ACCESS_CAN_WRITE = (.)"access::can-write";
	const char8* FILE_ATTRIBUTE_DOS_IS_ARCHIVE = (.)"dos::is-archive";
	const char8* FILE_ATTRIBUTE_DOS_IS_MOUNTPOINT = (.)"dos::is-mountpoint";
	const char8* FILE_ATTRIBUTE_DOS_IS_SYSTEM = (.)"dos::is-system";
	const char8* FILE_ATTRIBUTE_DOS_REPARSE_POINT_TAG = (.)"dos::reparse-point-tag";
	const char8* FILE_ATTRIBUTE_ETAG_VALUE = (.)"etag::value";
	const char8* FILE_ATTRIBUTE_FILESYSTEM_FREE = (.)"filesystem::free";
	const char8* FILE_ATTRIBUTE_FILESYSTEM_READONLY = (.)"filesystem::readonly";
	const char8* FILE_ATTRIBUTE_FILESYSTEM_REMOTE = (.)"filesystem::remote";
	const char8* FILE_ATTRIBUTE_FILESYSTEM_SIZE = (.)"filesystem::size";
	const char8* FILE_ATTRIBUTE_FILESYSTEM_TYPE = (.)"filesystem::type";
	const char8* FILE_ATTRIBUTE_FILESYSTEM_USED = (.)"filesystem::used";
	const char8* FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW = (.)"filesystem::use-preview";
	const char8* FILE_ATTRIBUTE_GVFS_BACKEND = (.)"gvfs::backend";
	const char8* FILE_ATTRIBUTE_ID_FILE = (.)"id::file";
	const char8* FILE_ATTRIBUTE_ID_FILESYSTEM = (.)"id::filesystem";
	const char8* FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT = (.)"mountable::can-eject";
	const char8* FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT = (.)"mountable::can-mount";
	const char8* FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL = (.)"mountable::can-poll";
	const char8* FILE_ATTRIBUTE_MOUNTABLE_CAN_START = (.)"mountable::can-start";
	const char8* FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED = (.)"mountable::can-start-degraded";
	const char8* FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP = (.)"mountable::can-stop";
	const char8* FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT = (.)"mountable::can-unmount";
	const char8* FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI = (.)"mountable::hal-udi";
	const char8* FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC = (.)"mountable::is-media-check-automatic";
	const char8* FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE = (.)"mountable::start-stop-type";
	const char8* FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE = (.)"mountable::unix-device";
	const char8* FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE = (.)"mountable::unix-device-file";
	const char8* FILE_ATTRIBUTE_OWNER_GROUP = (.)"owner::group";
	const char8* FILE_ATTRIBUTE_OWNER_USER = (.)"owner::user";
	const char8* FILE_ATTRIBUTE_OWNER_USER_REAL = (.)"owner::user-real";
	const char8* FILE_ATTRIBUTE_PREVIEW_ICON = (.)"preview::icon";
	const char8* FILE_ATTRIBUTE_RECENT_MODIFIED = (.)"recent::modified";
	const char8* FILE_ATTRIBUTE_SELINUX_CONTEXT = (.)"selinux::context";
	const char8* FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE = (.)"standard::allocated-size";
	const char8* FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE = (.)"standard::content-type";
	const char8* FILE_ATTRIBUTE_STANDARD_COPY_NAME = (.)"standard::copy-name";
	const char8* FILE_ATTRIBUTE_STANDARD_DESCRIPTION = (.)"standard::description";
	const char8* FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME = (.)"standard::display-name";
	const char8* FILE_ATTRIBUTE_STANDARD_EDIT_NAME = (.)"standard::edit-name";
	const char8* FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE = (.)"standard::fast-content-type";
	const char8* FILE_ATTRIBUTE_STANDARD_ICON = (.)"standard::icon";
	const char8* FILE_ATTRIBUTE_STANDARD_IS_BACKUP = (.)"standard::is-backup";
	const char8* FILE_ATTRIBUTE_STANDARD_IS_HIDDEN = (.)"standard::is-hidden";
	const char8* FILE_ATTRIBUTE_STANDARD_IS_SYMLINK = (.)"standard::is-symlink";
	const char8* FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL = (.)"standard::is-virtual";
	const char8* FILE_ATTRIBUTE_STANDARD_IS_VOLATILE = (.)"standard::is-volatile";
	const char8* FILE_ATTRIBUTE_STANDARD_NAME = (.)"standard::name";
	const char8* FILE_ATTRIBUTE_STANDARD_SIZE = (.)"standard::size";
	const char8* FILE_ATTRIBUTE_STANDARD_SORT_ORDER = (.)"standard::sort-order";
	const char8* FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON = (.)"standard::symbolic-icon";
	const char8* FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET = (.)"standard::symlink-target";
	const char8* FILE_ATTRIBUTE_STANDARD_TARGET_URI = (.)"standard::target-uri";
	const char8* FILE_ATTRIBUTE_STANDARD_TYPE = (.)"standard::type";
	const char8* FILE_ATTRIBUTE_THUMBNAILING_FAILED = (.)"thumbnail::failed";
	const char8* FILE_ATTRIBUTE_THUMBNAILING_FAILED_LARGE = (.)"thumbnail::failed-large";
	const char8* FILE_ATTRIBUTE_THUMBNAILING_FAILED_NORMAL = (.)"thumbnail::failed-normal";
	const char8* FILE_ATTRIBUTE_THUMBNAILING_FAILED_XLARGE = (.)"thumbnail::failed-xlarge";
	const char8* FILE_ATTRIBUTE_THUMBNAILING_FAILED_XXLARGE = (.)"thumbnail::failed-xxlarge";
	const char8* FILE_ATTRIBUTE_THUMBNAIL_IS_VALID = (.)"thumbnail::is-valid";
	const char8* FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_LARGE = (.)"thumbnail::is-valid-large";
	const char8* FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_NORMAL = (.)"thumbnail::is-valid-normal";
	const char8* FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_XLARGE = (.)"thumbnail::is-valid-xlarge";
	const char8* FILE_ATTRIBUTE_THUMBNAIL_IS_VALID_XXLARGE = (.)"thumbnail::is-valid-xxlarge";
	const char8* FILE_ATTRIBUTE_THUMBNAIL_PATH = (.)"thumbnail::path";
	const char8* FILE_ATTRIBUTE_THUMBNAIL_PATH_LARGE = (.)"thumbnail::path-large";
	const char8* FILE_ATTRIBUTE_THUMBNAIL_PATH_NORMAL = (.)"thumbnail::path-normal";
	const char8* FILE_ATTRIBUTE_THUMBNAIL_PATH_XLARGE = (.)"thumbnail::path-xlarge";
	const char8* FILE_ATTRIBUTE_THUMBNAIL_PATH_XXLARGE = (.)"thumbnail::path-xxlarge";
	const char8* FILE_ATTRIBUTE_TIME_ACCESS = (.)"time::access";
	const char8* FILE_ATTRIBUTE_TIME_ACCESS_NSEC = (.)"time::access-nsec";
	const char8* FILE_ATTRIBUTE_TIME_ACCESS_USEC = (.)"time::access-usec";
	const char8* FILE_ATTRIBUTE_TIME_CHANGED = (.)"time::changed";
	const char8* FILE_ATTRIBUTE_TIME_CHANGED_NSEC = (.)"time::changed-nsec";
	const char8* FILE_ATTRIBUTE_TIME_CHANGED_USEC = (.)"time::changed-usec";
	const char8* FILE_ATTRIBUTE_TIME_CREATED = (.)"time::created";
	const char8* FILE_ATTRIBUTE_TIME_CREATED_NSEC = (.)"time::created-nsec";
	const char8* FILE_ATTRIBUTE_TIME_CREATED_USEC = (.)"time::created-usec";
	const char8* FILE_ATTRIBUTE_TIME_MODIFIED = (.)"time::modified";
	const char8* FILE_ATTRIBUTE_TIME_MODIFIED_NSEC = (.)"time::modified-nsec";
	const char8* FILE_ATTRIBUTE_TIME_MODIFIED_USEC = (.)"time::modified-usec";
	const char8* FILE_ATTRIBUTE_TRASH_DELETION_DATE = (.)"trash::deletion-date";
	const char8* FILE_ATTRIBUTE_TRASH_ITEM_COUNT = (.)"trash::item-count";
	const char8* FILE_ATTRIBUTE_TRASH_ORIG_PATH = (.)"trash::orig-path";
	const char8* FILE_ATTRIBUTE_UNIX_BLOCKS = (.)"unix::blocks";
	const char8* FILE_ATTRIBUTE_UNIX_BLOCK_SIZE = (.)"unix::block-size";
	const char8* FILE_ATTRIBUTE_UNIX_DEVICE = (.)"unix::device";
	const char8* FILE_ATTRIBUTE_UNIX_GID = (.)"unix::gid";
	const char8* FILE_ATTRIBUTE_UNIX_INODE = (.)"unix::inode";
	const char8* FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT = (.)"unix::is-mountpoint";
	const char8* FILE_ATTRIBUTE_UNIX_MODE = (.)"unix::mode";
	const char8* FILE_ATTRIBUTE_UNIX_NLINK = (.)"unix::nlink";
	const char8* FILE_ATTRIBUTE_UNIX_RDEV = (.)"unix::rdev";
	const char8* FILE_ATTRIBUTE_UNIX_UID = (.)"unix::uid";
	const char8* MEMORY_MONITOR_EXTENSION_POINT_NAME = (.)"gio-memory-monitor";
	const char8* MENU_ATTRIBUTE_ACTION = (.)"action";
	const char8* MENU_ATTRIBUTE_ACTION_NAMESPACE = (.)"action-namespace";
	const char8* MENU_ATTRIBUTE_ICON = (.)"icon";
	const char8* MENU_ATTRIBUTE_LABEL = (.)"label";
	const char8* MENU_ATTRIBUTE_TARGET = (.)"target";
	const c_int MENU_EXPORTER_MAX_SECTION_SIZE = (.)1000;
	const char8* MENU_LINK_SECTION = (.)"section";
	const char8* MENU_LINK_SUBMENU = (.)"submenu";
	const char8* NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME = (.)"gio-native-volume-monitor";
	const char8* NETWORK_MONITOR_EXTENSION_POINT_NAME = (.)"gio-network-monitor";
	const char8* POWER_PROFILE_MONITOR_EXTENSION_POINT_NAME = (.)"gio-power-profile-monitor";
	const char8* PROXY_EXTENSION_POINT_NAME = (.)"gio-proxy";
	const char8* PROXY_RESOLVER_EXTENSION_POINT_NAME = (.)"gio-proxy-resolver";
	const char8* SETTINGS_BACKEND_EXTENSION_POINT_NAME = (.)"gsettings-backend";
	const char8* TLS_BACKEND_EXTENSION_POINT_NAME = (.)"gio-tls-backend";
	const char8* TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT = (.)"1.3.6.1.5.5.7.3.2";
	const char8* TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER = (.)"1.3.6.1.5.5.7.3.1";
	const char8* VFS_EXTENSION_POINT_NAME = (.)"gio-vfs";
	const char8* VOLUME_IDENTIFIER_KIND_CLASS = (.)"class";
	const char8* VOLUME_IDENTIFIER_KIND_HAL_UDI = (.)"hal-udi";
	const char8* VOLUME_IDENTIFIER_KIND_LABEL = (.)"label";
	const char8* VOLUME_IDENTIFIER_KIND_NFS_MOUNT = (.)"nfs-mount";
	const char8* VOLUME_IDENTIFIER_KIND_UNIX_DEVICE = (.)"unix-device";
	const char8* VOLUME_IDENTIFIER_KIND_UUID = (.)"uuid";
	const char8* VOLUME_MONITOR_EXTENSION_POINT_NAME = (.)"gio-volume-monitor";
	[CRepr]
	public struct AppInfoMonitor : GObject.Object
	{
		public function void ChangedFunc(AppInfoMonitor* self, void* user_data);
	}
	[CRepr]
	public struct AppLaunchContext : GObject.Object
	{
		[LinkName("g_app_launch_context_new")]
		public static extern AppLaunchContext* New();
		[LinkName("g_app_launch_context_get_display")]
		public static extern char8* GetDisplay(AppLaunchContext* context, AppInfo* info, GLib.List* files);
		[LinkName("g_app_launch_context_get_environment")]
		public static extern char8** GetEnvironment(AppLaunchContext* context);
		[LinkName("g_app_launch_context_get_startup_notify_id")]
		public static extern char8* GetStartupNotifyId(AppLaunchContext* context, AppInfo* info, GLib.List* files);
		[LinkName("g_app_launch_context_launch_failed")]
		public static extern void LaunchFailed(AppLaunchContext* context, char8* startup_notify_id);
		[LinkName("g_app_launch_context_setenv")]
		public static extern void Setenv(AppLaunchContext* context, char8* variable, char8* value);
		[LinkName("g_app_launch_context_unsetenv")]
		public static extern void Unsetenv(AppLaunchContext* context, char8* variable);
		public function void LaunchFailedFunc(AppLaunchContext* self, char8* startup_notify_id, void* user_data);
		public function void LaunchStartedFunc(AppLaunchContext* self, AppInfo info, GLib.Variant platform_data, void* user_data);
		public function void LaunchedFunc(AppLaunchContext* self, AppInfo info, GLib.Variant platform_data, void* user_data);
	}
	[CRepr]
	public struct Application : GObject.Object
	{
		[LinkName("g_application_new")]
		public static extern Application* New(char8* application_id, ApplicationFlags flags);
		[LinkName("g_application_activate")]
		public static extern void Activate(Application* application);
		[LinkName("g_application_add_main_option")]
		public static extern void AddMainOption(Application* application, char8* long_name, c_char short_name, GLib.OptionFlags flags, GLib.OptionArg arg, char8* description, char8* arg_description);
		[LinkName("g_application_add_main_option_entries")]
		public static extern void AddMainOptionEntries(Application* application, GLib.OptionEntry* entries);
		[LinkName("g_application_add_option_group")]
		public static extern void AddOptionGroup(Application* application, GLib.OptionGroup* group);
		[LinkName("g_application_bind_busy_property")]
		public static extern void BindBusyProperty(Application* application, GObject.Object* object, char8* property);
		[LinkName("g_application_get_application_id")]
		public static extern char8* GetApplicationId(Application* application);
		[LinkName("g_application_get_dbus_connection")]
		public static extern DBusConnection* GetDbusConnection(Application* application);
		[LinkName("g_application_get_dbus_object_path")]
		public static extern char8* GetDbusObjectPath(Application* application);
		[LinkName("g_application_get_flags")]
		public static extern ApplicationFlags GetFlags(Application* application);
		[LinkName("g_application_get_inactivity_timeout")]
		public static extern c_uint GetInactivityTimeout(Application* application);
		[LinkName("g_application_get_is_busy")]
		public static extern c_int GetIsBusy(Application* application);
		[LinkName("g_application_get_is_registered")]
		public static extern c_int GetIsRegistered(Application* application);
		[LinkName("g_application_get_is_remote")]
		public static extern c_int GetIsRemote(Application* application);
		[LinkName("g_application_get_resource_base_path")]
		public static extern char8* GetResourceBasePath(Application* application);
		[LinkName("g_application_hold")]
		public static extern void Hold(Application* application);
		[LinkName("g_application_mark_busy")]
		public static extern void MarkBusy(Application* application);
		[LinkName("g_application_open")]
		public static extern void Open(Application* application, File** files, c_int n_files, char8* hint);
		[LinkName("g_application_quit")]
		public static extern void Quit(Application* application);
		[LinkName("g_application_register")]
		public static extern c_int Register(Application* application, Cancellable* cancellable);
		[LinkName("g_application_release")]
		public static extern void Release(Application* application);
		[LinkName("g_application_run")]
		public static extern c_int Run(Application* application, c_int argc, char8** argv);
		[LinkName("g_application_send_notification")]
		public static extern void SendNotification(Application* application, char8* id, Notification* notification);
		[LinkName("g_application_set_action_group")]
		public static extern void SetActionGroup(Application* application, ActionGroup* action_group);
		[LinkName("g_application_set_application_id")]
		public static extern void SetApplicationId(Application* application, char8* application_id);
		[LinkName("g_application_set_default")]
		public static extern void SetDefault(Application* application);
		[LinkName("g_application_set_flags")]
		public static extern void SetFlags(Application* application, ApplicationFlags flags);
		[LinkName("g_application_set_inactivity_timeout")]
		public static extern void SetInactivityTimeout(Application* application, c_uint inactivity_timeout);
		[LinkName("g_application_set_option_context_description")]
		public static extern void SetOptionContextDescription(Application* application, char8* description);
		[LinkName("g_application_set_option_context_parameter_string")]
		public static extern void SetOptionContextParameterString(Application* application, char8* parameter_string);
		[LinkName("g_application_set_option_context_summary")]
		public static extern void SetOptionContextSummary(Application* application, char8* summary);
		[LinkName("g_application_set_resource_base_path")]
		public static extern void SetResourceBasePath(Application* application, char8* resource_path);
		[LinkName("g_application_unbind_busy_property")]
		public static extern void UnbindBusyProperty(Application* application, GObject.Object* object, char8* property);
		[LinkName("g_application_unmark_busy")]
		public static extern void UnmarkBusy(Application* application);
		[LinkName("g_application_withdraw_notification")]
		public static extern void WithdrawNotification(Application* application, char8* id);
		public function void ActivateFunc(Application* self, void* user_data);
		public function c_int CommandLineFunc(Application* self, ApplicationCommandLine command_line, void* user_data);
		public function c_int HandleLocalOptionsFunc(Application* self, GLib.VariantDict options, void* user_data);
		public function c_int NameLostFunc(Application* self, void* user_data);
		public function void OpenFunc(Application* self, File files, c_int n_files, char8* hint, void* user_data);
		public function void ShutdownFunc(Application* self, void* user_data);
		public function void StartupFunc(Application* self, void* user_data);
	}
	[CRepr]
	public struct ApplicationCommandLine : GObject.Object
	{
		[LinkName("g_application_command_line_create_file_for_arg")]
		public static extern File* CreateFileForArg(ApplicationCommandLine* cmdline, char8* arg);
		[LinkName("g_application_command_line_get_arguments")]
		public static extern char8** GetArguments(ApplicationCommandLine* cmdline, c_int* argc);
		[LinkName("g_application_command_line_get_cwd")]
		public static extern char8* GetCwd(ApplicationCommandLine* cmdline);
		[LinkName("g_application_command_line_get_environ")]
		public static extern char8* GetEnviron(ApplicationCommandLine* cmdline);
		[LinkName("g_application_command_line_get_exit_status")]
		public static extern c_int GetExitStatus(ApplicationCommandLine* cmdline);
		[LinkName("g_application_command_line_get_is_remote")]
		public static extern c_int GetIsRemote(ApplicationCommandLine* cmdline);
		[LinkName("g_application_command_line_get_options_dict")]
		public static extern GLib.VariantDict* GetOptionsDict(ApplicationCommandLine* cmdline);
		[LinkName("g_application_command_line_get_platform_data")]
		public static extern GLib.Variant* GetPlatformData(ApplicationCommandLine* cmdline);
		[LinkName("g_application_command_line_get_stdin")]
		public static extern InputStream* GetStdin(ApplicationCommandLine* cmdline);
		[LinkName("g_application_command_line_getenv")]
		public static extern char8* Getenv(ApplicationCommandLine* cmdline, char8* name);
		[LinkName("g_application_command_line_set_exit_status")]
		public static extern void SetExitStatus(ApplicationCommandLine* cmdline, c_int exit_status);
	}
	[CRepr]
	public struct BufferedInputStream : FilterInputStream
	{
		[LinkName("g_buffered_input_stream_new")]
		public static extern InputStream* New(InputStream* base_stream);
		[LinkName("g_buffered_input_stream_new_sized")]
		public static extern InputStream* NewSized(InputStream* base_stream, c_ulong size);
		[LinkName("g_buffered_input_stream_fill")]
		public static extern c_long Fill(BufferedInputStream* stream, c_long count, Cancellable* cancellable);
		[LinkName("g_buffered_input_stream_fill_async")]
		public static extern void FillAsync(BufferedInputStream* stream, c_long count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_buffered_input_stream_fill_finish")]
		public static extern c_long FillFinish(BufferedInputStream* stream, AsyncResult* result);
		[LinkName("g_buffered_input_stream_get_available")]
		public static extern c_ulong GetAvailable(BufferedInputStream* stream);
		[LinkName("g_buffered_input_stream_get_buffer_size")]
		public static extern c_ulong GetBufferSize(BufferedInputStream* stream);
		[LinkName("g_buffered_input_stream_peek")]
		public static extern c_ulong Peek(BufferedInputStream* stream, c_uchar* buffer, c_ulong offset, c_ulong count);
		[LinkName("g_buffered_input_stream_peek_buffer")]
		public static extern c_uchar* PeekBuffer(BufferedInputStream* stream, c_ulong* count);
		[LinkName("g_buffered_input_stream_read_byte")]
		public static extern c_int ReadByte(BufferedInputStream* stream, Cancellable* cancellable);
		[LinkName("g_buffered_input_stream_set_buffer_size")]
		public static extern void SetBufferSize(BufferedInputStream* stream, c_ulong size);
	}
	[CRepr]
	public struct BufferedOutputStream : FilterOutputStream
	{
		[LinkName("g_buffered_output_stream_new")]
		public static extern OutputStream* New(OutputStream* base_stream);
		[LinkName("g_buffered_output_stream_new_sized")]
		public static extern OutputStream* NewSized(OutputStream* base_stream, c_ulong size);
		[LinkName("g_buffered_output_stream_get_auto_grow")]
		public static extern c_int GetAutoGrow(BufferedOutputStream* stream);
		[LinkName("g_buffered_output_stream_get_buffer_size")]
		public static extern c_ulong GetBufferSize(BufferedOutputStream* stream);
		[LinkName("g_buffered_output_stream_set_auto_grow")]
		public static extern void SetAutoGrow(BufferedOutputStream* stream, c_int auto_grow);
		[LinkName("g_buffered_output_stream_set_buffer_size")]
		public static extern void SetBufferSize(BufferedOutputStream* stream, c_ulong size);
	}
	[CRepr]
	public struct BytesIcon : GObject.Object
	{
		[LinkName("g_bytes_icon_new")]
		public static extern BytesIcon* New(GLib.Bytes* bytes);
		[LinkName("g_bytes_icon_get_bytes")]
		public static extern GLib.Bytes* GetBytes(BytesIcon* icon);
	}
	[CRepr]
	public struct Cancellable : GObject.Object
	{
		[LinkName("g_cancellable_new")]
		public static extern Cancellable* New();
		[LinkName("g_cancellable_cancel")]
		public static extern void Cancel(Cancellable* cancellable);
		[LinkName("g_cancellable_connect")]
		public static extern c_ulong Connect(Cancellable* cancellable, GObject.Callback callback, void* data, GLib.DestroyNotify data_destroy_func);
		[LinkName("g_cancellable_disconnect")]
		public static extern void Disconnect(Cancellable* cancellable, c_ulong handler_id);
		[LinkName("g_cancellable_get_fd")]
		public static extern c_int GetFd(Cancellable* cancellable);
		[LinkName("g_cancellable_is_cancelled")]
		public static extern c_int IsCancelled(Cancellable* cancellable);
		[LinkName("g_cancellable_make_pollfd")]
		public static extern c_int MakePollfd(Cancellable* cancellable, GLib.PollFD* pollfd);
		[LinkName("g_cancellable_pop_current")]
		public static extern void PopCurrent(Cancellable* cancellable);
		[LinkName("g_cancellable_push_current")]
		public static extern void PushCurrent(Cancellable* cancellable);
		[LinkName("g_cancellable_release_fd")]
		public static extern void ReleaseFd(Cancellable* cancellable);
		[LinkName("g_cancellable_reset")]
		public static extern void Reset(Cancellable* cancellable);
		[LinkName("g_cancellable_set_error_if_cancelled")]
		public static extern c_int SetErrorIfCancelled(Cancellable* cancellable);
		[LinkName("g_cancellable_source_new")]
		public static extern GLib.Source* SourceNew(Cancellable* cancellable);
		public function void CancelledFunc(Cancellable* self, void* user_data);
	}
	[CRepr]
	public struct CharsetConverter : GObject.Object
	{
		[LinkName("g_charset_converter_new")]
		public static extern CharsetConverter* New(char8* to_charset, char8* from_charset);
		[LinkName("g_charset_converter_get_num_fallbacks")]
		public static extern c_uint GetNumFallbacks(CharsetConverter* converter);
		[LinkName("g_charset_converter_get_use_fallback")]
		public static extern c_int GetUseFallback(CharsetConverter* converter);
		[LinkName("g_charset_converter_set_use_fallback")]
		public static extern void SetUseFallback(CharsetConverter* converter, c_int use_fallback);
	}
	[CRepr]
	public struct ConverterInputStream : FilterInputStream
	{
		[LinkName("g_converter_input_stream_new")]
		public static extern InputStream* New(InputStream* base_stream, Converter* converter);
		[LinkName("g_converter_input_stream_get_converter")]
		public static extern Converter* GetConverter(ConverterInputStream* converter_stream);
	}
	[CRepr]
	public struct ConverterOutputStream : FilterOutputStream
	{
		[LinkName("g_converter_output_stream_new")]
		public static extern OutputStream* New(OutputStream* base_stream, Converter* converter);
		[LinkName("g_converter_output_stream_get_converter")]
		public static extern Converter* GetConverter(ConverterOutputStream* converter_stream);
	}
	[CRepr]
	public struct Credentials : GObject.Object
	{
		[LinkName("g_credentials_new")]
		public static extern Credentials* New();
		[LinkName("g_credentials_get_unix_pid")]
		public static extern c_int GetUnixPid(Credentials* credentials);
		[LinkName("g_credentials_get_unix_user")]
		public static extern c_uint GetUnixUser(Credentials* credentials);
		[LinkName("g_credentials_is_same_user")]
		public static extern c_int IsSameUser(Credentials* credentials, Credentials* other_credentials);
		[LinkName("g_credentials_set_native")]
		public static extern void SetNative(Credentials* credentials, CredentialsType native_type, void* native);
		[LinkName("g_credentials_set_unix_user")]
		public static extern c_int SetUnixUser(Credentials* credentials, c_uint uid);
		[LinkName("g_credentials_to_string")]
		public static extern char8* ToString(Credentials* credentials);
	}
	[CRepr]
	public struct DBusActionGroup : GObject.Object
	{
	}
	[CRepr]
	public struct DBusAuthObserver : GObject.Object
	{
		[LinkName("g_dbus_auth_observer_new")]
		public static extern DBusAuthObserver* New();
		[LinkName("g_dbus_auth_observer_allow_mechanism")]
		public static extern c_int AllowMechanism(DBusAuthObserver* observer, char8* mechanism);
		[LinkName("g_dbus_auth_observer_authorize_authenticated_peer")]
		public static extern c_int AuthorizeAuthenticatedPeer(DBusAuthObserver* observer, IOStream* stream, Credentials* credentials);
		public function c_int AllowMechanismFunc(DBusAuthObserver* self, char8* mechanism, void* user_data);
		public function c_int AuthorizeAuthenticatedPeerFunc(DBusAuthObserver* self, IOStream stream, Credentials credentials, void* user_data);
	}
	[CRepr]
	public struct DBusConnection : GObject.Object
	{
		[LinkName("g_dbus_connection_new_finish")]
		public static extern DBusConnection* NewFinish(AsyncResult* res);
		[LinkName("g_dbus_connection_new_for_address_finish")]
		public static extern DBusConnection* NewForAddressFinish(AsyncResult* res);
		[LinkName("g_dbus_connection_new_for_address_sync")]
		public static extern DBusConnection* NewForAddressSync(char8* address, DBusConnectionFlags flags, DBusAuthObserver* observer, Cancellable* cancellable);
		[LinkName("g_dbus_connection_new_sync")]
		public static extern DBusConnection* NewSync(IOStream* stream, char8* guid, DBusConnectionFlags flags, DBusAuthObserver* observer, Cancellable* cancellable);
		[LinkName("g_dbus_connection_add_filter")]
		public static extern c_uint AddFilter(DBusConnection* connection, DBusMessageFilterFunction filter_function, void* user_data, GLib.DestroyNotify user_data_free_func);
		[LinkName("g_dbus_connection_call")]
		public static extern void Call(DBusConnection* connection, char8* bus_name, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant* parameters, GLib.VariantType* reply_type, DBusCallFlags flags, c_int timeout_msec, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_dbus_connection_call_finish")]
		public static extern GLib.Variant* CallFinish(DBusConnection* connection, AsyncResult* res);
		[LinkName("g_dbus_connection_call_sync")]
		public static extern GLib.Variant* CallSync(DBusConnection* connection, char8* bus_name, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant* parameters, GLib.VariantType* reply_type, DBusCallFlags flags, c_int timeout_msec, Cancellable* cancellable);
		[LinkName("g_dbus_connection_call_with_unix_fd_list")]
		public static extern void CallWithUnixFdList(DBusConnection* connection, char8* bus_name, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant* parameters, GLib.VariantType* reply_type, DBusCallFlags flags, c_int timeout_msec, UnixFDList* fd_list, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_dbus_connection_call_with_unix_fd_list_finish")]
		public static extern GLib.Variant* CallWithUnixFdListFinish(DBusConnection* connection, UnixFDList** out_fd_list, AsyncResult* res);
		[LinkName("g_dbus_connection_call_with_unix_fd_list_sync")]
		public static extern GLib.Variant* CallWithUnixFdListSync(DBusConnection* connection, char8* bus_name, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant* parameters, GLib.VariantType* reply_type, DBusCallFlags flags, c_int timeout_msec, UnixFDList* fd_list, UnixFDList** out_fd_list, Cancellable* cancellable);
		[LinkName("g_dbus_connection_close")]
		public static extern void Close(DBusConnection* connection, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_dbus_connection_close_finish")]
		public static extern c_int CloseFinish(DBusConnection* connection, AsyncResult* res);
		[LinkName("g_dbus_connection_close_sync")]
		public static extern c_int CloseSync(DBusConnection* connection, Cancellable* cancellable);
		[LinkName("g_dbus_connection_emit_signal")]
		public static extern c_int EmitSignal(DBusConnection* connection, char8* destination_bus_name, char8* object_path, char8* interface_name, char8* signal_name, GLib.Variant* parameters);
		[LinkName("g_dbus_connection_export_action_group")]
		public static extern c_uint ExportActionGroup(DBusConnection* connection, char8* object_path, ActionGroup* action_group);
		[LinkName("g_dbus_connection_export_menu_model")]
		public static extern c_uint ExportMenuModel(DBusConnection* connection, char8* object_path, MenuModel* menu);
		[LinkName("g_dbus_connection_flush")]
		public static extern void Flush(DBusConnection* connection, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_dbus_connection_flush_finish")]
		public static extern c_int FlushFinish(DBusConnection* connection, AsyncResult* res);
		[LinkName("g_dbus_connection_flush_sync")]
		public static extern c_int FlushSync(DBusConnection* connection, Cancellable* cancellable);
		[LinkName("g_dbus_connection_get_capabilities")]
		public static extern DBusCapabilityFlags GetCapabilities(DBusConnection* connection);
		[LinkName("g_dbus_connection_get_exit_on_close")]
		public static extern c_int GetExitOnClose(DBusConnection* connection);
		[LinkName("g_dbus_connection_get_flags")]
		public static extern DBusConnectionFlags GetFlags(DBusConnection* connection);
		[LinkName("g_dbus_connection_get_guid")]
		public static extern char8* GetGuid(DBusConnection* connection);
		[LinkName("g_dbus_connection_get_last_serial")]
		public static extern c_uint GetLastSerial(DBusConnection* connection);
		[LinkName("g_dbus_connection_get_peer_credentials")]
		public static extern Credentials* GetPeerCredentials(DBusConnection* connection);
		[LinkName("g_dbus_connection_get_stream")]
		public static extern IOStream* GetStream(DBusConnection* connection);
		[LinkName("g_dbus_connection_get_unique_name")]
		public static extern char8* GetUniqueName(DBusConnection* connection);
		[LinkName("g_dbus_connection_is_closed")]
		public static extern c_int IsClosed(DBusConnection* connection);
		[LinkName("g_dbus_connection_register_object")]
		public static extern c_uint RegisterObject(DBusConnection* connection, char8* object_path, DBusInterfaceInfo* interface_info, DBusInterfaceVTable* vtable, void* user_data, GLib.DestroyNotify user_data_free_func);
		[LinkName("g_dbus_connection_register_object_with_closures")]
		public static extern c_uint RegisterObjectWithClosures(DBusConnection* connection, char8* object_path, DBusInterfaceInfo* interface_info, GObject.Closure* method_call_closure, GObject.Closure* get_property_closure, GObject.Closure* set_property_closure);
		[LinkName("g_dbus_connection_register_subtree")]
		public static extern c_uint RegisterSubtree(DBusConnection* connection, char8* object_path, DBusSubtreeVTable* vtable, DBusSubtreeFlags flags, void* user_data, GLib.DestroyNotify user_data_free_func);
		[LinkName("g_dbus_connection_remove_filter")]
		public static extern void RemoveFilter(DBusConnection* connection, c_uint filter_id);
		[LinkName("g_dbus_connection_send_message")]
		public static extern c_int SendMessage(DBusConnection* connection, DBusMessage* message, DBusSendMessageFlags flags, c_uint* out_serial);
		[LinkName("g_dbus_connection_send_message_with_reply")]
		public static extern void SendMessageWithReply(DBusConnection* connection, DBusMessage* message, DBusSendMessageFlags flags, c_int timeout_msec, c_uint* out_serial, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_dbus_connection_send_message_with_reply_finish")]
		public static extern DBusMessage* SendMessageWithReplyFinish(DBusConnection* connection, AsyncResult* res);
		[LinkName("g_dbus_connection_send_message_with_reply_sync")]
		public static extern DBusMessage* SendMessageWithReplySync(DBusConnection* connection, DBusMessage* message, DBusSendMessageFlags flags, c_int timeout_msec, c_uint* out_serial, Cancellable* cancellable);
		[LinkName("g_dbus_connection_set_exit_on_close")]
		public static extern void SetExitOnClose(DBusConnection* connection, c_int exit_on_close);
		[LinkName("g_dbus_connection_signal_subscribe")]
		public static extern c_uint SignalSubscribe(DBusConnection* connection, char8* sender, char8* interface_name, char8* member, char8* object_path, char8* arg0, DBusSignalFlags flags, DBusSignalCallback callback, void* user_data, GLib.DestroyNotify user_data_free_func);
		[LinkName("g_dbus_connection_signal_unsubscribe")]
		public static extern void SignalUnsubscribe(DBusConnection* connection, c_uint subscription_id);
		[LinkName("g_dbus_connection_start_message_processing")]
		public static extern void StartMessageProcessing(DBusConnection* connection);
		[LinkName("g_dbus_connection_unexport_action_group")]
		public static extern void UnexportActionGroup(DBusConnection* connection, c_uint export_id);
		[LinkName("g_dbus_connection_unexport_menu_model")]
		public static extern void UnexportMenuModel(DBusConnection* connection, c_uint export_id);
		[LinkName("g_dbus_connection_unregister_object")]
		public static extern c_int UnregisterObject(DBusConnection* connection, c_uint registration_id);
		[LinkName("g_dbus_connection_unregister_subtree")]
		public static extern c_int UnregisterSubtree(DBusConnection* connection, c_uint registration_id);
		public function void ClosedFunc(DBusConnection* self, c_int remote_peer_vanished, GLib.Error error, void* user_data);
	}
	[CRepr]
	public struct DBusInterfaceSkeleton : GObject.Object
	{
		[LinkName("g_dbus_interface_skeleton_export")]
		public static extern c_int Export(DBusInterfaceSkeleton* interface_, DBusConnection* connection, char8* object_path);
		[LinkName("g_dbus_interface_skeleton_flush")]
		public static extern void Flush(DBusInterfaceSkeleton* interface_);
		[LinkName("g_dbus_interface_skeleton_get_connection")]
		public static extern DBusConnection* GetConnection(DBusInterfaceSkeleton* interface_);
		[LinkName("g_dbus_interface_skeleton_get_connections")]
		public static extern GLib.List* GetConnections(DBusInterfaceSkeleton* interface_);
		[LinkName("g_dbus_interface_skeleton_get_flags")]
		public static extern DBusInterfaceSkeletonFlags GetFlags(DBusInterfaceSkeleton* interface_);
		[LinkName("g_dbus_interface_skeleton_get_info")]
		public static extern DBusInterfaceInfo* GetInfo(DBusInterfaceSkeleton* interface_);
		[LinkName("g_dbus_interface_skeleton_get_object_path")]
		public static extern char8* GetObjectPath(DBusInterfaceSkeleton* interface_);
		[LinkName("g_dbus_interface_skeleton_get_properties")]
		public static extern GLib.Variant* GetProperties(DBusInterfaceSkeleton* interface_);
		[LinkName("g_dbus_interface_skeleton_has_connection")]
		public static extern c_int HasConnection(DBusInterfaceSkeleton* interface_, DBusConnection* connection);
		[LinkName("g_dbus_interface_skeleton_set_flags")]
		public static extern void SetFlags(DBusInterfaceSkeleton* interface_, DBusInterfaceSkeletonFlags flags);
		[LinkName("g_dbus_interface_skeleton_unexport")]
		public static extern void Unexport(DBusInterfaceSkeleton* interface_);
		[LinkName("g_dbus_interface_skeleton_unexport_from_connection")]
		public static extern void UnexportFromConnection(DBusInterfaceSkeleton* interface_, DBusConnection* connection);
		public function c_int GAuthorizeMethodFunc(DBusInterfaceSkeleton* self, DBusMethodInvocation invocation, void* user_data);
	}
	[CRepr]
	public struct DBusMenuModel : MenuModel
	{
	}
	[CRepr]
	public struct DBusMessage : GObject.Object
	{
		[LinkName("g_dbus_message_new")]
		public static extern DBusMessage* New();
		[LinkName("g_dbus_message_new_from_blob")]
		public static extern DBusMessage* NewFromBlob(c_uchar* blob, c_ulong blob_len, DBusCapabilityFlags capabilities);
		[LinkName("g_dbus_message_new_method_call")]
		public static extern DBusMessage* NewMethodCall(char8* name, char8* path, char8* interface_, char8* method);
		[LinkName("g_dbus_message_new_signal")]
		public static extern DBusMessage* NewSignal(char8* path, char8* interface_, char8* signal);
		[LinkName("g_dbus_message_copy")]
		public static extern DBusMessage* Copy(DBusMessage* message);
		[LinkName("g_dbus_message_get_arg0")]
		public static extern char8* GetArg0(DBusMessage* message);
		[LinkName("g_dbus_message_get_body")]
		public static extern GLib.Variant* GetBody(DBusMessage* message);
		[LinkName("g_dbus_message_get_byte_order")]
		public static extern DBusMessageByteOrder GetByteOrder(DBusMessage* message);
		[LinkName("g_dbus_message_get_destination")]
		public static extern char8* GetDestination(DBusMessage* message);
		[LinkName("g_dbus_message_get_error_name")]
		public static extern char8* GetErrorName(DBusMessage* message);
		[LinkName("g_dbus_message_get_flags")]
		public static extern DBusMessageFlags GetFlags(DBusMessage* message);
		[LinkName("g_dbus_message_get_header")]
		public static extern GLib.Variant* GetHeader(DBusMessage* message, DBusMessageHeaderField header_field);
		[LinkName("g_dbus_message_get_header_fields")]
		public static extern c_uchar* GetHeaderFields(DBusMessage* message);
		[LinkName("g_dbus_message_get_interface")]
		public static extern char8* GetInterface(DBusMessage* message);
		[LinkName("g_dbus_message_get_locked")]
		public static extern c_int GetLocked(DBusMessage* message);
		[LinkName("g_dbus_message_get_member")]
		public static extern char8* GetMember(DBusMessage* message);
		[LinkName("g_dbus_message_get_message_type")]
		public static extern DBusMessageType GetMessageType(DBusMessage* message);
		[LinkName("g_dbus_message_get_num_unix_fds")]
		public static extern c_uint GetNumUnixFds(DBusMessage* message);
		[LinkName("g_dbus_message_get_path")]
		public static extern char8* GetPath(DBusMessage* message);
		[LinkName("g_dbus_message_get_reply_serial")]
		public static extern c_uint GetReplySerial(DBusMessage* message);
		[LinkName("g_dbus_message_get_sender")]
		public static extern char8* GetSender(DBusMessage* message);
		[LinkName("g_dbus_message_get_serial")]
		public static extern c_uint GetSerial(DBusMessage* message);
		[LinkName("g_dbus_message_get_signature")]
		public static extern char8* GetSignature(DBusMessage* message);
		[LinkName("g_dbus_message_get_unix_fd_list")]
		public static extern UnixFDList* GetUnixFdList(DBusMessage* message);
		[LinkName("g_dbus_message_lock")]
		public static extern void Lock(DBusMessage* message);
		[LinkName("g_dbus_message_new_method_error_literal")]
		public static extern DBusMessage* NewMethodErrorLiteral(DBusMessage* method_call_message, char8* error_name, char8* error_message);
		[LinkName("g_dbus_message_new_method_reply")]
		public static extern DBusMessage* NewMethodReply(DBusMessage* method_call_message);
		[LinkName("g_dbus_message_print")]
		public static extern char8* Print(DBusMessage* message, c_uint indent);
		[LinkName("g_dbus_message_set_body")]
		public static extern void SetBody(DBusMessage* message, GLib.Variant* body);
		[LinkName("g_dbus_message_set_byte_order")]
		public static extern void SetByteOrder(DBusMessage* message, DBusMessageByteOrder byte_order);
		[LinkName("g_dbus_message_set_destination")]
		public static extern void SetDestination(DBusMessage* message, char8* value);
		[LinkName("g_dbus_message_set_error_name")]
		public static extern void SetErrorName(DBusMessage* message, char8* value);
		[LinkName("g_dbus_message_set_flags")]
		public static extern void SetFlags(DBusMessage* message, DBusMessageFlags flags);
		[LinkName("g_dbus_message_set_header")]
		public static extern void SetHeader(DBusMessage* message, DBusMessageHeaderField header_field, GLib.Variant* value);
		[LinkName("g_dbus_message_set_interface")]
		public static extern void SetInterface(DBusMessage* message, char8* value);
		[LinkName("g_dbus_message_set_member")]
		public static extern void SetMember(DBusMessage* message, char8* value);
		[LinkName("g_dbus_message_set_message_type")]
		public static extern void SetMessageType(DBusMessage* message, DBusMessageType type);
		[LinkName("g_dbus_message_set_num_unix_fds")]
		public static extern void SetNumUnixFds(DBusMessage* message, c_uint value);
		[LinkName("g_dbus_message_set_path")]
		public static extern void SetPath(DBusMessage* message, char8* value);
		[LinkName("g_dbus_message_set_reply_serial")]
		public static extern void SetReplySerial(DBusMessage* message, c_uint value);
		[LinkName("g_dbus_message_set_sender")]
		public static extern void SetSender(DBusMessage* message, char8* value);
		[LinkName("g_dbus_message_set_serial")]
		public static extern void SetSerial(DBusMessage* message, c_uint serial);
		[LinkName("g_dbus_message_set_signature")]
		public static extern void SetSignature(DBusMessage* message, char8* value);
		[LinkName("g_dbus_message_set_unix_fd_list")]
		public static extern void SetUnixFdList(DBusMessage* message, UnixFDList* fd_list);
		[LinkName("g_dbus_message_to_blob")]
		public static extern c_uchar* ToBlob(DBusMessage* message, c_ulong* out_size, DBusCapabilityFlags capabilities);
		[LinkName("g_dbus_message_to_gerror")]
		public static extern c_int ToGerror(DBusMessage* message);
	}
	[CRepr]
	public struct DBusMethodInvocation : GObject.Object
	{
		[LinkName("g_dbus_method_invocation_get_connection")]
		public static extern DBusConnection* GetConnection(DBusMethodInvocation* invocation);
		[LinkName("g_dbus_method_invocation_get_interface_name")]
		public static extern char8* GetInterfaceName(DBusMethodInvocation* invocation);
		[LinkName("g_dbus_method_invocation_get_message")]
		public static extern DBusMessage* GetMessage(DBusMethodInvocation* invocation);
		[LinkName("g_dbus_method_invocation_get_method_info")]
		public static extern DBusMethodInfo* GetMethodInfo(DBusMethodInvocation* invocation);
		[LinkName("g_dbus_method_invocation_get_method_name")]
		public static extern char8* GetMethodName(DBusMethodInvocation* invocation);
		[LinkName("g_dbus_method_invocation_get_object_path")]
		public static extern char8* GetObjectPath(DBusMethodInvocation* invocation);
		[LinkName("g_dbus_method_invocation_get_parameters")]
		public static extern GLib.Variant* GetParameters(DBusMethodInvocation* invocation);
		[LinkName("g_dbus_method_invocation_get_property_info")]
		public static extern DBusPropertyInfo* GetPropertyInfo(DBusMethodInvocation* invocation);
		[LinkName("g_dbus_method_invocation_get_sender")]
		public static extern char8* GetSender(DBusMethodInvocation* invocation);
		[LinkName("g_dbus_method_invocation_return_dbus_error")]
		public static extern void ReturnDbusError(DBusMethodInvocation* invocation, char8* error_name, char8* error_message);
		[LinkName("g_dbus_method_invocation_return_error_literal")]
		public static extern void ReturnErrorLiteral(DBusMethodInvocation* invocation, GLib.Quark domain, c_int code, char8* message);
		[LinkName("g_dbus_method_invocation_return_gerror")]
		public static extern void ReturnGerror(DBusMethodInvocation* invocation, GLib.Error* error);
		[LinkName("g_dbus_method_invocation_return_value")]
		public static extern void ReturnValue(DBusMethodInvocation* invocation, GLib.Variant* parameters);
		[LinkName("g_dbus_method_invocation_return_value_with_unix_fd_list")]
		public static extern void ReturnValueWithUnixFdList(DBusMethodInvocation* invocation, GLib.Variant* parameters, UnixFDList* fd_list);
	}
	[CRepr]
	public struct DBusObjectManagerClient : GObject.Object
	{
		[LinkName("g_dbus_object_manager_client_new_finish")]
		public static extern DBusObjectManagerClient* NewFinish(AsyncResult* res);
		[LinkName("g_dbus_object_manager_client_new_for_bus_finish")]
		public static extern DBusObjectManagerClient* NewForBusFinish(AsyncResult* res);
		[LinkName("g_dbus_object_manager_client_new_for_bus_sync")]
		public static extern DBusObjectManagerClient* NewForBusSync(BusType bus_type, DBusObjectManagerClientFlags flags, char8* name, char8* object_path, DBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, GLib.DestroyNotify get_proxy_type_destroy_notify, Cancellable* cancellable);
		[LinkName("g_dbus_object_manager_client_new_sync")]
		public static extern DBusObjectManagerClient* NewSync(DBusConnection* connection, DBusObjectManagerClientFlags flags, char8* name, char8* object_path, DBusProxyTypeFunc get_proxy_type_func, void* get_proxy_type_user_data, GLib.DestroyNotify get_proxy_type_destroy_notify, Cancellable* cancellable);
		[LinkName("g_dbus_object_manager_client_get_connection")]
		public static extern DBusConnection* GetConnection(DBusObjectManagerClient* manager);
		[LinkName("g_dbus_object_manager_client_get_flags")]
		public static extern DBusObjectManagerClientFlags GetFlags(DBusObjectManagerClient* manager);
		[LinkName("g_dbus_object_manager_client_get_name")]
		public static extern char8* GetName(DBusObjectManagerClient* manager);
		[LinkName("g_dbus_object_manager_client_get_name_owner")]
		public static extern char8* GetNameOwner(DBusObjectManagerClient* manager);
		public function void InterfaceProxyPropertiesChangedFunc(DBusObjectManagerClient* self, DBusObjectProxy object_proxy, DBusProxy interface_proxy, GLib.Variant changed_properties, char8 invalidated_properties, void* user_data);
		public function void InterfaceProxySignalFunc(DBusObjectManagerClient* self, DBusObjectProxy object_proxy, DBusProxy interface_proxy, char8* sender_name, char8* signal_name, GLib.Variant parameters, void* user_data);
	}
	[CRepr]
	public struct DBusObjectManagerServer : GObject.Object
	{
		[LinkName("g_dbus_object_manager_server_new")]
		public static extern DBusObjectManagerServer* New(char8* object_path);
		[LinkName("g_dbus_object_manager_server_export")]
		public static extern void Export(DBusObjectManagerServer* manager, DBusObjectSkeleton* object);
		[LinkName("g_dbus_object_manager_server_export_uniquely")]
		public static extern void ExportUniquely(DBusObjectManagerServer* manager, DBusObjectSkeleton* object);
		[LinkName("g_dbus_object_manager_server_get_connection")]
		public static extern DBusConnection* GetConnection(DBusObjectManagerServer* manager);
		[LinkName("g_dbus_object_manager_server_is_exported")]
		public static extern c_int IsExported(DBusObjectManagerServer* manager, DBusObjectSkeleton* object);
		[LinkName("g_dbus_object_manager_server_set_connection")]
		public static extern void SetConnection(DBusObjectManagerServer* manager, DBusConnection* connection);
		[LinkName("g_dbus_object_manager_server_unexport")]
		public static extern c_int Unexport(DBusObjectManagerServer* manager, char8* object_path);
	}
	[CRepr]
	public struct DBusObjectProxy : GObject.Object
	{
		[LinkName("g_dbus_object_proxy_new")]
		public static extern DBusObjectProxy* New(DBusConnection* connection, char8* object_path);
		[LinkName("g_dbus_object_proxy_get_connection")]
		public static extern DBusConnection* GetConnection(DBusObjectProxy* proxy);
	}
	[CRepr]
	public struct DBusObjectSkeleton : GObject.Object
	{
		[LinkName("g_dbus_object_skeleton_new")]
		public static extern DBusObjectSkeleton* New(char8* object_path);
		[LinkName("g_dbus_object_skeleton_add_interface")]
		public static extern void AddInterface(DBusObjectSkeleton* object, DBusInterfaceSkeleton* interface_);
		[LinkName("g_dbus_object_skeleton_flush")]
		public static extern void Flush(DBusObjectSkeleton* object);
		[LinkName("g_dbus_object_skeleton_remove_interface")]
		public static extern void RemoveInterface(DBusObjectSkeleton* object, DBusInterfaceSkeleton* interface_);
		[LinkName("g_dbus_object_skeleton_remove_interface_by_name")]
		public static extern void RemoveInterfaceByName(DBusObjectSkeleton* object, char8* interface_name);
		[LinkName("g_dbus_object_skeleton_set_object_path")]
		public static extern void SetObjectPath(DBusObjectSkeleton* object, char8* object_path);
		public function c_int AuthorizeMethodFunc(DBusObjectSkeleton* self, DBusInterfaceSkeleton interface_, DBusMethodInvocation invocation, void* user_data);
	}
	[CRepr]
	public struct DBusProxy : GObject.Object
	{
		[LinkName("g_dbus_proxy_new_finish")]
		public static extern DBusProxy* NewFinish(AsyncResult* res);
		[LinkName("g_dbus_proxy_new_for_bus_finish")]
		public static extern DBusProxy* NewForBusFinish(AsyncResult* res);
		[LinkName("g_dbus_proxy_new_for_bus_sync")]
		public static extern DBusProxy* NewForBusSync(BusType bus_type, DBusProxyFlags flags, DBusInterfaceInfo* info, char8* name, char8* object_path, char8* interface_name, Cancellable* cancellable);
		[LinkName("g_dbus_proxy_new_sync")]
		public static extern DBusProxy* NewSync(DBusConnection* connection, DBusProxyFlags flags, DBusInterfaceInfo* info, char8* name, char8* object_path, char8* interface_name, Cancellable* cancellable);
		[LinkName("g_dbus_proxy_call")]
		public static extern void Call(DBusProxy* proxy, char8* method_name, GLib.Variant* parameters, DBusCallFlags flags, c_int timeout_msec, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_dbus_proxy_call_finish")]
		public static extern GLib.Variant* CallFinish(DBusProxy* proxy, AsyncResult* res);
		[LinkName("g_dbus_proxy_call_sync")]
		public static extern GLib.Variant* CallSync(DBusProxy* proxy, char8* method_name, GLib.Variant* parameters, DBusCallFlags flags, c_int timeout_msec, Cancellable* cancellable);
		[LinkName("g_dbus_proxy_call_with_unix_fd_list")]
		public static extern void CallWithUnixFdList(DBusProxy* proxy, char8* method_name, GLib.Variant* parameters, DBusCallFlags flags, c_int timeout_msec, UnixFDList* fd_list, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_dbus_proxy_call_with_unix_fd_list_finish")]
		public static extern GLib.Variant* CallWithUnixFdListFinish(DBusProxy* proxy, UnixFDList** out_fd_list, AsyncResult* res);
		[LinkName("g_dbus_proxy_call_with_unix_fd_list_sync")]
		public static extern GLib.Variant* CallWithUnixFdListSync(DBusProxy* proxy, char8* method_name, GLib.Variant* parameters, DBusCallFlags flags, c_int timeout_msec, UnixFDList* fd_list, UnixFDList** out_fd_list, Cancellable* cancellable);
		[LinkName("g_dbus_proxy_get_cached_property")]
		public static extern GLib.Variant* GetCachedProperty(DBusProxy* proxy, char8* property_name);
		[LinkName("g_dbus_proxy_get_cached_property_names")]
		public static extern char8** GetCachedPropertyNames(DBusProxy* proxy);
		[LinkName("g_dbus_proxy_get_connection")]
		public static extern DBusConnection* GetConnection(DBusProxy* proxy);
		[LinkName("g_dbus_proxy_get_default_timeout")]
		public static extern c_int GetDefaultTimeout(DBusProxy* proxy);
		[LinkName("g_dbus_proxy_get_flags")]
		public static extern DBusProxyFlags GetFlags(DBusProxy* proxy);
		[LinkName("g_dbus_proxy_get_interface_info")]
		public static extern DBusInterfaceInfo* GetInterfaceInfo(DBusProxy* proxy);
		[LinkName("g_dbus_proxy_get_interface_name")]
		public static extern char8* GetInterfaceName(DBusProxy* proxy);
		[LinkName("g_dbus_proxy_get_name")]
		public static extern char8* GetName(DBusProxy* proxy);
		[LinkName("g_dbus_proxy_get_name_owner")]
		public static extern char8* GetNameOwner(DBusProxy* proxy);
		[LinkName("g_dbus_proxy_get_object_path")]
		public static extern char8* GetObjectPath(DBusProxy* proxy);
		[LinkName("g_dbus_proxy_set_cached_property")]
		public static extern void SetCachedProperty(DBusProxy* proxy, char8* property_name, GLib.Variant* value);
		[LinkName("g_dbus_proxy_set_default_timeout")]
		public static extern void SetDefaultTimeout(DBusProxy* proxy, c_int timeout_msec);
		[LinkName("g_dbus_proxy_set_interface_info")]
		public static extern void SetInterfaceInfo(DBusProxy* proxy, DBusInterfaceInfo* info);
		public function void GPropertiesChangedFunc(DBusProxy* self, GLib.Variant changed_properties, char8 invalidated_properties, void* user_data);
		public function void GSignalFunc(DBusProxy* self, char8* sender_name, char8* signal_name, GLib.Variant parameters, void* user_data);
	}
	[CRepr]
	public struct DBusServer : GObject.Object
	{
		[LinkName("g_dbus_server_new_sync")]
		public static extern DBusServer* NewSync(char8* address, DBusServerFlags flags, char8* guid, DBusAuthObserver* observer, Cancellable* cancellable);
		[LinkName("g_dbus_server_get_client_address")]
		public static extern char8* GetClientAddress(DBusServer* server);
		[LinkName("g_dbus_server_get_flags")]
		public static extern DBusServerFlags GetFlags(DBusServer* server);
		[LinkName("g_dbus_server_get_guid")]
		public static extern char8* GetGuid(DBusServer* server);
		[LinkName("g_dbus_server_is_active")]
		public static extern c_int IsActive(DBusServer* server);
		[LinkName("g_dbus_server_start")]
		public static extern void Start(DBusServer* server);
		[LinkName("g_dbus_server_stop")]
		public static extern void Stop(DBusServer* server);
		public function c_int NewConnectionFunc(DBusServer* self, DBusConnection connection, void* user_data);
	}
	[CRepr]
	public struct DataInputStream : BufferedInputStream
	{
		[LinkName("g_data_input_stream_new")]
		public static extern DataInputStream* New(InputStream* base_stream);
		[LinkName("g_data_input_stream_get_byte_order")]
		public static extern DataStreamByteOrder GetByteOrder(DataInputStream* stream);
		[LinkName("g_data_input_stream_get_newline_type")]
		public static extern DataStreamNewlineType GetNewlineType(DataInputStream* stream);
		[LinkName("g_data_input_stream_read_byte")]
		public static extern c_uchar ReadByte(DataInputStream* stream, Cancellable* cancellable);
		[LinkName("g_data_input_stream_read_int16")]
		public static extern c_short ReadInt16(DataInputStream* stream, Cancellable* cancellable);
		[LinkName("g_data_input_stream_read_int32")]
		public static extern c_int ReadInt32(DataInputStream* stream, Cancellable* cancellable);
		[LinkName("g_data_input_stream_read_int64")]
		public static extern c_longlong ReadInt64(DataInputStream* stream, Cancellable* cancellable);
		[LinkName("g_data_input_stream_read_line")]
		public static extern c_uchar* ReadLine(DataInputStream* stream, c_ulong* length, Cancellable* cancellable);
		[LinkName("g_data_input_stream_read_line_async")]
		public static extern void ReadLineAsync(DataInputStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_data_input_stream_read_line_finish")]
		public static extern c_uchar* ReadLineFinish(DataInputStream* stream, AsyncResult* result, c_ulong* length);
		[LinkName("g_data_input_stream_read_line_finish_utf8")]
		public static extern char8* ReadLineFinishUtf8(DataInputStream* stream, AsyncResult* result, c_ulong* length);
		[LinkName("g_data_input_stream_read_line_utf8")]
		public static extern char8* ReadLineUtf8(DataInputStream* stream, c_ulong* length, Cancellable* cancellable);
		[LinkName("g_data_input_stream_read_uint16")]
		public static extern c_ushort ReadUint16(DataInputStream* stream, Cancellable* cancellable);
		[LinkName("g_data_input_stream_read_uint32")]
		public static extern c_uint ReadUint32(DataInputStream* stream, Cancellable* cancellable);
		[LinkName("g_data_input_stream_read_uint64")]
		public static extern c_ulonglong ReadUint64(DataInputStream* stream, Cancellable* cancellable);
		[LinkName("g_data_input_stream_read_until")]
		public static extern char8* ReadUntil(DataInputStream* stream, char8* stop_chars, c_ulong* length, Cancellable* cancellable);
		[LinkName("g_data_input_stream_read_until_async")]
		public static extern void ReadUntilAsync(DataInputStream* stream, char8* stop_chars, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_data_input_stream_read_until_finish")]
		public static extern char8* ReadUntilFinish(DataInputStream* stream, AsyncResult* result, c_ulong* length);
		[LinkName("g_data_input_stream_read_upto")]
		public static extern char8* ReadUpto(DataInputStream* stream, char8* stop_chars, c_long stop_chars_len, c_ulong* length, Cancellable* cancellable);
		[LinkName("g_data_input_stream_read_upto_async")]
		public static extern void ReadUptoAsync(DataInputStream* stream, char8* stop_chars, c_long stop_chars_len, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_data_input_stream_read_upto_finish")]
		public static extern char8* ReadUptoFinish(DataInputStream* stream, AsyncResult* result, c_ulong* length);
		[LinkName("g_data_input_stream_set_byte_order")]
		public static extern void SetByteOrder(DataInputStream* stream, DataStreamByteOrder order);
		[LinkName("g_data_input_stream_set_newline_type")]
		public static extern void SetNewlineType(DataInputStream* stream, DataStreamNewlineType type);
	}
	[CRepr]
	public struct DataOutputStream : FilterOutputStream
	{
		[LinkName("g_data_output_stream_new")]
		public static extern DataOutputStream* New(OutputStream* base_stream);
		[LinkName("g_data_output_stream_get_byte_order")]
		public static extern DataStreamByteOrder GetByteOrder(DataOutputStream* stream);
		[LinkName("g_data_output_stream_put_byte")]
		public static extern c_int PutByte(DataOutputStream* stream, c_uchar data, Cancellable* cancellable);
		[LinkName("g_data_output_stream_put_int16")]
		public static extern c_int PutInt16(DataOutputStream* stream, c_short data, Cancellable* cancellable);
		[LinkName("g_data_output_stream_put_int32")]
		public static extern c_int PutInt32(DataOutputStream* stream, c_int data, Cancellable* cancellable);
		[LinkName("g_data_output_stream_put_int64")]
		public static extern c_int PutInt64(DataOutputStream* stream, c_longlong data, Cancellable* cancellable);
		[LinkName("g_data_output_stream_put_string")]
		public static extern c_int PutString(DataOutputStream* stream, char8* str, Cancellable* cancellable);
		[LinkName("g_data_output_stream_put_uint16")]
		public static extern c_int PutUint16(DataOutputStream* stream, c_ushort data, Cancellable* cancellable);
		[LinkName("g_data_output_stream_put_uint32")]
		public static extern c_int PutUint32(DataOutputStream* stream, c_uint data, Cancellable* cancellable);
		[LinkName("g_data_output_stream_put_uint64")]
		public static extern c_int PutUint64(DataOutputStream* stream, c_ulonglong data, Cancellable* cancellable);
		[LinkName("g_data_output_stream_set_byte_order")]
		public static extern void SetByteOrder(DataOutputStream* stream, DataStreamByteOrder order);
	}
	[CRepr]
	public struct DebugControllerDBus : GObject.Object
	{
		[LinkName("g_debug_controller_dbus_new")]
		public static extern DebugControllerDBus* New(DBusConnection* connection, Cancellable* cancellable);
		[LinkName("g_debug_controller_dbus_stop")]
		public static extern void Stop(DebugControllerDBus* self);
		public function c_int AuthorizeFunc(DebugControllerDBus* self, DBusMethodInvocation invocation, void* user_data);
	}
	[CRepr]
	public struct DesktopAppInfo : GObject.Object
	{
		[LinkName("g_desktop_app_info_new")]
		public static extern DesktopAppInfo* New(char8* desktop_id);
		[LinkName("g_desktop_app_info_new_from_filename")]
		public static extern DesktopAppInfo* NewFromFilename(char8* filename);
		[LinkName("g_desktop_app_info_new_from_keyfile")]
		public static extern DesktopAppInfo* NewFromKeyfile(GLib.KeyFile* key_file);
		[LinkName("g_desktop_app_info_get_action_name")]
		public static extern char8* GetActionName(DesktopAppInfo* info, char8* action_name);
		[LinkName("g_desktop_app_info_get_boolean")]
		public static extern c_int GetBoolean(DesktopAppInfo* info, char8* key);
		[LinkName("g_desktop_app_info_get_categories")]
		public static extern char8* GetCategories(DesktopAppInfo* info);
		[LinkName("g_desktop_app_info_get_filename")]
		public static extern char8* GetFilename(DesktopAppInfo* info);
		[LinkName("g_desktop_app_info_get_generic_name")]
		public static extern char8* GetGenericName(DesktopAppInfo* info);
		[LinkName("g_desktop_app_info_get_is_hidden")]
		public static extern c_int GetIsHidden(DesktopAppInfo* info);
		[LinkName("g_desktop_app_info_get_keywords")]
		public static extern char8* GetKeywords(DesktopAppInfo* info);
		[LinkName("g_desktop_app_info_get_locale_string")]
		public static extern char8* GetLocaleString(DesktopAppInfo* info, char8* key);
		[LinkName("g_desktop_app_info_get_nodisplay")]
		public static extern c_int GetNodisplay(DesktopAppInfo* info);
		[LinkName("g_desktop_app_info_get_show_in")]
		public static extern c_int GetShowIn(DesktopAppInfo* info, char8* desktop_env);
		[LinkName("g_desktop_app_info_get_startup_wm_class")]
		public static extern char8* GetStartupWmClass(DesktopAppInfo* info);
		[LinkName("g_desktop_app_info_get_string")]
		public static extern char8* GetString(DesktopAppInfo* info, char8* key);
		[LinkName("g_desktop_app_info_get_string_list")]
		public static extern char8** GetStringList(DesktopAppInfo* info, char8* key, c_ulong* length);
		[LinkName("g_desktop_app_info_has_key")]
		public static extern c_int HasKey(DesktopAppInfo* info, char8* key);
		[LinkName("g_desktop_app_info_launch_action")]
		public static extern void LaunchAction(DesktopAppInfo* info, char8* action_name, AppLaunchContext* launch_context);
		[LinkName("g_desktop_app_info_launch_uris_as_manager")]
		public static extern c_int LaunchUrisAsManager(DesktopAppInfo* appinfo, GLib.List* uris, AppLaunchContext* launch_context, GLib.SpawnFlags spawn_flags, GLib.SpawnChildSetupFunc user_setup, void* user_setup_data, DesktopAppLaunchCallback pid_callback, void* pid_callback_data);
		[LinkName("g_desktop_app_info_launch_uris_as_manager_with_fds")]
		public static extern c_int LaunchUrisAsManagerWithFds(DesktopAppInfo* appinfo, GLib.List* uris, AppLaunchContext* launch_context, GLib.SpawnFlags spawn_flags, GLib.SpawnChildSetupFunc user_setup, void* user_setup_data, DesktopAppLaunchCallback pid_callback, void* pid_callback_data, c_int stdin_fd, c_int stdout_fd, c_int stderr_fd);
		[LinkName("g_desktop_app_info_list_actions")]
		public static extern char8* ListActions(DesktopAppInfo* info);
	}
	[CRepr]
	public struct Emblem : GObject.Object
	{
		[LinkName("g_emblem_new")]
		public static extern Emblem* New(Icon* icon);
		[LinkName("g_emblem_new_with_origin")]
		public static extern Emblem* NewWithOrigin(Icon* icon, EmblemOrigin origin);
		[LinkName("g_emblem_get_icon")]
		public static extern Icon* GetIcon(Emblem* emblem);
		[LinkName("g_emblem_get_origin")]
		public static extern EmblemOrigin GetOrigin(Emblem* emblem);
	}
	[CRepr]
	public struct EmblemedIcon : GObject.Object
	{
		[LinkName("g_emblemed_icon_new")]
		public static extern EmblemedIcon* New(Icon* icon, Emblem* emblem);
		[LinkName("g_emblemed_icon_add_emblem")]
		public static extern void AddEmblem(EmblemedIcon* emblemed, Emblem* emblem);
		[LinkName("g_emblemed_icon_clear_emblems")]
		public static extern void ClearEmblems(EmblemedIcon* emblemed);
		[LinkName("g_emblemed_icon_get_emblems")]
		public static extern GLib.List* GetEmblems(EmblemedIcon* emblemed);
		[LinkName("g_emblemed_icon_get_icon")]
		public static extern Icon* GetIcon(EmblemedIcon* emblemed);
	}
	[CRepr]
	public struct FileEnumerator : GObject.Object
	{
		[LinkName("g_file_enumerator_close")]
		public static extern c_int Close(FileEnumerator* enumerator, Cancellable* cancellable);
		[LinkName("g_file_enumerator_close_async")]
		public static extern void CloseAsync(FileEnumerator* enumerator, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_file_enumerator_close_finish")]
		public static extern c_int CloseFinish(FileEnumerator* enumerator, AsyncResult* result);
		[LinkName("g_file_enumerator_get_child")]
		public static extern File* GetChild(FileEnumerator* enumerator, FileInfo* info);
		[LinkName("g_file_enumerator_get_container")]
		public static extern File* GetContainer(FileEnumerator* enumerator);
		[LinkName("g_file_enumerator_has_pending")]
		public static extern c_int HasPending(FileEnumerator* enumerator);
		[LinkName("g_file_enumerator_is_closed")]
		public static extern c_int IsClosed(FileEnumerator* enumerator);
		[LinkName("g_file_enumerator_iterate")]
		public static extern c_int Iterate(FileEnumerator* direnum, FileInfo** out_info, File** out_child, Cancellable* cancellable);
		[LinkName("g_file_enumerator_next_file")]
		public static extern FileInfo* NextFile(FileEnumerator* enumerator, Cancellable* cancellable);
		[LinkName("g_file_enumerator_next_files_async")]
		public static extern void NextFilesAsync(FileEnumerator* enumerator, c_int num_files, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_file_enumerator_next_files_finish")]
		public static extern GLib.List* NextFilesFinish(FileEnumerator* enumerator, AsyncResult* result);
		[LinkName("g_file_enumerator_set_pending")]
		public static extern void SetPending(FileEnumerator* enumerator, c_int pending);
	}
	[CRepr]
	public struct FileIOStream : IOStream
	{
		[LinkName("g_file_io_stream_get_etag")]
		public static extern char8* GetEtag(FileIOStream* stream);
		[LinkName("g_file_io_stream_query_info")]
		public static extern FileInfo* QueryInfo(FileIOStream* stream, char8* attributes, Cancellable* cancellable);
		[LinkName("g_file_io_stream_query_info_async")]
		public static extern void QueryInfoAsync(FileIOStream* stream, char8* attributes, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_file_io_stream_query_info_finish")]
		public static extern FileInfo* QueryInfoFinish(FileIOStream* stream, AsyncResult* result);
	}
	[CRepr]
	public struct FileIcon : GObject.Object
	{
		[LinkName("g_file_icon_new")]
		public static extern FileIcon* New(File* file);
		[LinkName("g_file_icon_get_file")]
		public static extern File* GetFile(FileIcon* icon);
	}
	[CRepr]
	public struct FileInfo : GObject.Object
	{
		[LinkName("g_file_info_new")]
		public static extern FileInfo* New();
		[LinkName("g_file_info_clear_status")]
		public static extern void ClearStatus(FileInfo* info);
		[LinkName("g_file_info_copy_into")]
		public static extern void CopyInto(FileInfo* src_info, FileInfo* dest_info);
		[LinkName("g_file_info_dup")]
		public static extern FileInfo* Dup(FileInfo* other);
		[LinkName("g_file_info_get_access_date_time")]
		public static extern GLib.DateTime* GetAccessDateTime(FileInfo* info);
		[LinkName("g_file_info_get_attribute_as_string")]
		public static extern char8* GetAttributeAsString(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_get_attribute_boolean")]
		public static extern c_int GetAttributeBoolean(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_get_attribute_byte_string")]
		public static extern char8* GetAttributeByteString(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_get_attribute_data")]
		public static extern c_int GetAttributeData(FileInfo* info, char8* attribute, FileAttributeType* type, void** value_pp, FileAttributeStatus* status);
		[LinkName("g_file_info_get_attribute_int32")]
		public static extern c_int GetAttributeInt32(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_get_attribute_int64")]
		public static extern c_longlong GetAttributeInt64(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_get_attribute_object")]
		public static extern GObject.Object* GetAttributeObject(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_get_attribute_status")]
		public static extern FileAttributeStatus GetAttributeStatus(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_get_attribute_string")]
		public static extern char8* GetAttributeString(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_get_attribute_stringv")]
		public static extern char8** GetAttributeStringv(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_get_attribute_type")]
		public static extern FileAttributeType GetAttributeType(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_get_attribute_uint32")]
		public static extern c_uint GetAttributeUint32(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_get_attribute_uint64")]
		public static extern c_ulonglong GetAttributeUint64(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_get_content_type")]
		public static extern char8* GetContentType(FileInfo* info);
		[LinkName("g_file_info_get_creation_date_time")]
		public static extern GLib.DateTime* GetCreationDateTime(FileInfo* info);
		[LinkName("g_file_info_get_deletion_date")]
		public static extern GLib.DateTime* GetDeletionDate(FileInfo* info);
		[LinkName("g_file_info_get_display_name")]
		public static extern char8* GetDisplayName(FileInfo* info);
		[LinkName("g_file_info_get_edit_name")]
		public static extern char8* GetEditName(FileInfo* info);
		[LinkName("g_file_info_get_etag")]
		public static extern char8* GetEtag(FileInfo* info);
		[LinkName("g_file_info_get_file_type")]
		public static extern FileType GetFileType(FileInfo* info);
		[LinkName("g_file_info_get_icon")]
		public static extern Icon* GetIcon(FileInfo* info);
		[LinkName("g_file_info_get_is_backup")]
		public static extern c_int GetIsBackup(FileInfo* info);
		[LinkName("g_file_info_get_is_hidden")]
		public static extern c_int GetIsHidden(FileInfo* info);
		[LinkName("g_file_info_get_is_symlink")]
		public static extern c_int GetIsSymlink(FileInfo* info);
		[LinkName("g_file_info_get_modification_date_time")]
		public static extern GLib.DateTime* GetModificationDateTime(FileInfo* info);
		[LinkName("g_file_info_get_modification_time")]
		public static extern void GetModificationTime(FileInfo* info, GLib.TimeVal* result);
		[LinkName("g_file_info_get_name")]
		public static extern char8* GetName(FileInfo* info);
		[LinkName("g_file_info_get_size")]
		public static extern c_longlong GetSize(FileInfo* info);
		[LinkName("g_file_info_get_sort_order")]
		public static extern c_int GetSortOrder(FileInfo* info);
		[LinkName("g_file_info_get_symbolic_icon")]
		public static extern Icon* GetSymbolicIcon(FileInfo* info);
		[LinkName("g_file_info_get_symlink_target")]
		public static extern char8* GetSymlinkTarget(FileInfo* info);
		[LinkName("g_file_info_has_attribute")]
		public static extern c_int HasAttribute(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_has_namespace")]
		public static extern c_int HasNamespace(FileInfo* info, char8* name_space);
		[LinkName("g_file_info_list_attributes")]
		public static extern char8** ListAttributes(FileInfo* info, char8* name_space);
		[LinkName("g_file_info_remove_attribute")]
		public static extern void RemoveAttribute(FileInfo* info, char8* attribute);
		[LinkName("g_file_info_set_access_date_time")]
		public static extern void SetAccessDateTime(FileInfo* info, GLib.DateTime* atime);
		[LinkName("g_file_info_set_attribute")]
		public static extern void SetAttribute(FileInfo* info, char8* attribute, FileAttributeType type, void* value_p);
		[LinkName("g_file_info_set_attribute_boolean")]
		public static extern void SetAttributeBoolean(FileInfo* info, char8* attribute, c_int attr_value);
		[LinkName("g_file_info_set_attribute_byte_string")]
		public static extern void SetAttributeByteString(FileInfo* info, char8* attribute, char8* attr_value);
		[LinkName("g_file_info_set_attribute_int32")]
		public static extern void SetAttributeInt32(FileInfo* info, char8* attribute, c_int attr_value);
		[LinkName("g_file_info_set_attribute_int64")]
		public static extern void SetAttributeInt64(FileInfo* info, char8* attribute, c_longlong attr_value);
		[LinkName("g_file_info_set_attribute_mask")]
		public static extern void SetAttributeMask(FileInfo* info, FileAttributeMatcher* mask);
		[LinkName("g_file_info_set_attribute_object")]
		public static extern void SetAttributeObject(FileInfo* info, char8* attribute, GObject.Object* attr_value);
		[LinkName("g_file_info_set_attribute_status")]
		public static extern c_int SetAttributeStatus(FileInfo* info, char8* attribute, FileAttributeStatus status);
		[LinkName("g_file_info_set_attribute_string")]
		public static extern void SetAttributeString(FileInfo* info, char8* attribute, char8* attr_value);
		[LinkName("g_file_info_set_attribute_stringv")]
		public static extern void SetAttributeStringv(FileInfo* info, char8* attribute, char8** attr_value);
		[LinkName("g_file_info_set_attribute_uint32")]
		public static extern void SetAttributeUint32(FileInfo* info, char8* attribute, c_uint attr_value);
		[LinkName("g_file_info_set_attribute_uint64")]
		public static extern void SetAttributeUint64(FileInfo* info, char8* attribute, c_ulonglong attr_value);
		[LinkName("g_file_info_set_content_type")]
		public static extern void SetContentType(FileInfo* info, char8* content_type);
		[LinkName("g_file_info_set_creation_date_time")]
		public static extern void SetCreationDateTime(FileInfo* info, GLib.DateTime* creation_time);
		[LinkName("g_file_info_set_display_name")]
		public static extern void SetDisplayName(FileInfo* info, char8* display_name);
		[LinkName("g_file_info_set_edit_name")]
		public static extern void SetEditName(FileInfo* info, char8* edit_name);
		[LinkName("g_file_info_set_file_type")]
		public static extern void SetFileType(FileInfo* info, FileType type);
		[LinkName("g_file_info_set_icon")]
		public static extern void SetIcon(FileInfo* info, Icon* icon);
		[LinkName("g_file_info_set_is_hidden")]
		public static extern void SetIsHidden(FileInfo* info, c_int is_hidden);
		[LinkName("g_file_info_set_is_symlink")]
		public static extern void SetIsSymlink(FileInfo* info, c_int is_symlink);
		[LinkName("g_file_info_set_modification_date_time")]
		public static extern void SetModificationDateTime(FileInfo* info, GLib.DateTime* mtime);
		[LinkName("g_file_info_set_modification_time")]
		public static extern void SetModificationTime(FileInfo* info, GLib.TimeVal* mtime);
		[LinkName("g_file_info_set_name")]
		public static extern void SetName(FileInfo* info, char8* name);
		[LinkName("g_file_info_set_size")]
		public static extern void SetSize(FileInfo* info, c_longlong size);
		[LinkName("g_file_info_set_sort_order")]
		public static extern void SetSortOrder(FileInfo* info, c_int sort_order);
		[LinkName("g_file_info_set_symbolic_icon")]
		public static extern void SetSymbolicIcon(FileInfo* info, Icon* icon);
		[LinkName("g_file_info_set_symlink_target")]
		public static extern void SetSymlinkTarget(FileInfo* info, char8* symlink_target);
		[LinkName("g_file_info_unset_attribute_mask")]
		public static extern void UnsetAttributeMask(FileInfo* info);
	}
	[CRepr]
	public struct FileInputStream : InputStream
	{
		[LinkName("g_file_input_stream_query_info")]
		public static extern FileInfo* QueryInfo(FileInputStream* stream, char8* attributes, Cancellable* cancellable);
		[LinkName("g_file_input_stream_query_info_async")]
		public static extern void QueryInfoAsync(FileInputStream* stream, char8* attributes, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_file_input_stream_query_info_finish")]
		public static extern FileInfo* QueryInfoFinish(FileInputStream* stream, AsyncResult* result);
	}
	[CRepr]
	public struct FileMonitor : GObject.Object
	{
		[LinkName("g_file_monitor_cancel")]
		public static extern c_int Cancel(FileMonitor* monitor);
		[LinkName("g_file_monitor_emit_event")]
		public static extern void EmitEvent(FileMonitor* monitor, File* child, File* other_file, FileMonitorEvent event_type);
		[LinkName("g_file_monitor_is_cancelled")]
		public static extern c_int IsCancelled(FileMonitor* monitor);
		[LinkName("g_file_monitor_set_rate_limit")]
		public static extern void SetRateLimit(FileMonitor* monitor, c_int limit_msecs);
		public function void ChangedFunc(FileMonitor* self, File file, File other_file, FileMonitorEvent event_type, void* user_data);
	}
	[CRepr]
	public struct FileOutputStream : OutputStream
	{
		[LinkName("g_file_output_stream_get_etag")]
		public static extern char8* GetEtag(FileOutputStream* stream);
		[LinkName("g_file_output_stream_query_info")]
		public static extern FileInfo* QueryInfo(FileOutputStream* stream, char8* attributes, Cancellable* cancellable);
		[LinkName("g_file_output_stream_query_info_async")]
		public static extern void QueryInfoAsync(FileOutputStream* stream, char8* attributes, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_file_output_stream_query_info_finish")]
		public static extern FileInfo* QueryInfoFinish(FileOutputStream* stream, AsyncResult* result);
	}
	[CRepr]
	public struct FilenameCompleter : GObject.Object
	{
		[LinkName("g_filename_completer_new")]
		public static extern FilenameCompleter* New();
		[LinkName("g_filename_completer_get_completion_suffix")]
		public static extern char8* GetCompletionSuffix(FilenameCompleter* completer, char8* initial_text);
		[LinkName("g_filename_completer_get_completions")]
		public static extern char8** GetCompletions(FilenameCompleter* completer, char8* initial_text);
		[LinkName("g_filename_completer_set_dirs_only")]
		public static extern void SetDirsOnly(FilenameCompleter* completer, c_int dirs_only);
		public function void GotCompletionDataFunc(FilenameCompleter* self, void* user_data);
	}
	[CRepr]
	public struct FilterInputStream : InputStream
	{
		[LinkName("g_filter_input_stream_get_base_stream")]
		public static extern InputStream* GetBaseStream(FilterInputStream* stream);
		[LinkName("g_filter_input_stream_get_close_base_stream")]
		public static extern c_int GetCloseBaseStream(FilterInputStream* stream);
		[LinkName("g_filter_input_stream_set_close_base_stream")]
		public static extern void SetCloseBaseStream(FilterInputStream* stream, c_int close_base);
	}
	[CRepr]
	public struct FilterOutputStream : OutputStream
	{
		[LinkName("g_filter_output_stream_get_base_stream")]
		public static extern OutputStream* GetBaseStream(FilterOutputStream* stream);
		[LinkName("g_filter_output_stream_get_close_base_stream")]
		public static extern c_int GetCloseBaseStream(FilterOutputStream* stream);
		[LinkName("g_filter_output_stream_set_close_base_stream")]
		public static extern void SetCloseBaseStream(FilterOutputStream* stream, c_int close_base);
	}
	[CRepr]
	public struct IOModule : GObject.TypeModule
	{
		[LinkName("g_io_module_new")]
		public static extern IOModule* New(char8* filename);
	}
	[CRepr]
	public struct IOStream : GObject.Object
	{
		[LinkName("g_io_stream_clear_pending")]
		public static extern void ClearPending(IOStream* stream);
		[LinkName("g_io_stream_close")]
		public static extern c_int Close(IOStream* stream, Cancellable* cancellable);
		[LinkName("g_io_stream_close_async")]
		public static extern void CloseAsync(IOStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_io_stream_close_finish")]
		public static extern c_int CloseFinish(IOStream* stream, AsyncResult* result);
		[LinkName("g_io_stream_get_input_stream")]
		public static extern InputStream* GetInputStream(IOStream* stream);
		[LinkName("g_io_stream_get_output_stream")]
		public static extern OutputStream* GetOutputStream(IOStream* stream);
		[LinkName("g_io_stream_has_pending")]
		public static extern c_int HasPending(IOStream* stream);
		[LinkName("g_io_stream_is_closed")]
		public static extern c_int IsClosed(IOStream* stream);
		[LinkName("g_io_stream_set_pending")]
		public static extern c_int SetPending(IOStream* stream);
		[LinkName("g_io_stream_splice_async")]
		public static extern void SpliceAsync(IOStream* stream1, IOStream* stream2, IOStreamSpliceFlags flags, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
	}
	[CRepr]
	public struct InetAddress : GObject.Object
	{
		[LinkName("g_inet_address_new_any")]
		public static extern InetAddress* NewAny(SocketFamily family);
		[LinkName("g_inet_address_new_from_bytes")]
		public static extern InetAddress* NewFromBytes(c_uchar* bytes, SocketFamily family);
		[LinkName("g_inet_address_new_from_string")]
		public static extern InetAddress* NewFromString(char8* string);
		[LinkName("g_inet_address_new_loopback")]
		public static extern InetAddress* NewLoopback(SocketFamily family);
		[LinkName("g_inet_address_equal")]
		public static extern c_int Equal(InetAddress* address, InetAddress* other_address);
		[LinkName("g_inet_address_get_family")]
		public static extern SocketFamily GetFamily(InetAddress* address);
		[LinkName("g_inet_address_get_is_any")]
		public static extern c_int GetIsAny(InetAddress* address);
		[LinkName("g_inet_address_get_is_link_local")]
		public static extern c_int GetIsLinkLocal(InetAddress* address);
		[LinkName("g_inet_address_get_is_loopback")]
		public static extern c_int GetIsLoopback(InetAddress* address);
		[LinkName("g_inet_address_get_is_mc_global")]
		public static extern c_int GetIsMcGlobal(InetAddress* address);
		[LinkName("g_inet_address_get_is_mc_link_local")]
		public static extern c_int GetIsMcLinkLocal(InetAddress* address);
		[LinkName("g_inet_address_get_is_mc_node_local")]
		public static extern c_int GetIsMcNodeLocal(InetAddress* address);
		[LinkName("g_inet_address_get_is_mc_org_local")]
		public static extern c_int GetIsMcOrgLocal(InetAddress* address);
		[LinkName("g_inet_address_get_is_mc_site_local")]
		public static extern c_int GetIsMcSiteLocal(InetAddress* address);
		[LinkName("g_inet_address_get_is_multicast")]
		public static extern c_int GetIsMulticast(InetAddress* address);
		[LinkName("g_inet_address_get_is_site_local")]
		public static extern c_int GetIsSiteLocal(InetAddress* address);
		[LinkName("g_inet_address_get_native_size")]
		public static extern c_ulong GetNativeSize(InetAddress* address);
		[LinkName("g_inet_address_to_string")]
		public static extern char8* ToString(InetAddress* address);
	}
	[CRepr]
	public struct InetAddressMask : GObject.Object
	{
		[LinkName("g_inet_address_mask_new")]
		public static extern InetAddressMask* New(InetAddress* addr, c_uint length);
		[LinkName("g_inet_address_mask_new_from_string")]
		public static extern InetAddressMask* NewFromString(char8* mask_string);
		[LinkName("g_inet_address_mask_equal")]
		public static extern c_int Equal(InetAddressMask* mask, InetAddressMask* mask2);
		[LinkName("g_inet_address_mask_get_address")]
		public static extern InetAddress* GetAddress(InetAddressMask* mask);
		[LinkName("g_inet_address_mask_get_family")]
		public static extern SocketFamily GetFamily(InetAddressMask* mask);
		[LinkName("g_inet_address_mask_get_length")]
		public static extern c_uint GetLength(InetAddressMask* mask);
		[LinkName("g_inet_address_mask_matches")]
		public static extern c_int Matches(InetAddressMask* mask, InetAddress* address);
		[LinkName("g_inet_address_mask_to_string")]
		public static extern char8* ToString(InetAddressMask* mask);
	}
	[CRepr]
	public struct InetSocketAddress : SocketAddress
	{
		[LinkName("g_inet_socket_address_new")]
		public static extern SocketAddress* New(InetAddress* address, c_ushort port);
		[LinkName("g_inet_socket_address_new_from_string")]
		public static extern SocketAddress* NewFromString(char8* address, c_uint port);
		[LinkName("g_inet_socket_address_get_address")]
		public static extern InetAddress* GetAddress(InetSocketAddress* address);
		[LinkName("g_inet_socket_address_get_flowinfo")]
		public static extern c_uint GetFlowinfo(InetSocketAddress* address);
		[LinkName("g_inet_socket_address_get_port")]
		public static extern c_ushort GetPort(InetSocketAddress* address);
		[LinkName("g_inet_socket_address_get_scope_id")]
		public static extern c_uint GetScopeId(InetSocketAddress* address);
	}
	[CRepr]
	public struct InputStream : GObject.Object
	{
		[LinkName("g_input_stream_clear_pending")]
		public static extern void ClearPending(InputStream* stream);
		[LinkName("g_input_stream_close")]
		public static extern c_int Close(InputStream* stream, Cancellable* cancellable);
		[LinkName("g_input_stream_close_async")]
		public static extern void CloseAsync(InputStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_input_stream_close_finish")]
		public static extern c_int CloseFinish(InputStream* stream, AsyncResult* result);
		[LinkName("g_input_stream_has_pending")]
		public static extern c_int HasPending(InputStream* stream);
		[LinkName("g_input_stream_is_closed")]
		public static extern c_int IsClosed(InputStream* stream);
		[LinkName("g_input_stream_read")]
		public static extern c_long Read(InputStream* stream, c_uchar* buffer, c_ulong count, Cancellable* cancellable);
		[LinkName("g_input_stream_read_all")]
		public static extern c_int ReadAll(InputStream* stream, c_uchar* buffer, c_ulong count, c_ulong* bytes_read, Cancellable* cancellable);
		[LinkName("g_input_stream_read_all_async")]
		public static extern void ReadAllAsync(InputStream* stream, c_uchar* buffer, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_input_stream_read_all_finish")]
		public static extern c_int ReadAllFinish(InputStream* stream, AsyncResult* result, c_ulong* bytes_read);
		[LinkName("g_input_stream_read_async")]
		public static extern void ReadAsync(InputStream* stream, c_uchar* buffer, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_input_stream_read_bytes")]
		public static extern GLib.Bytes* ReadBytes(InputStream* stream, c_ulong count, Cancellable* cancellable);
		[LinkName("g_input_stream_read_bytes_async")]
		public static extern void ReadBytesAsync(InputStream* stream, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_input_stream_read_bytes_finish")]
		public static extern GLib.Bytes* ReadBytesFinish(InputStream* stream, AsyncResult* result);
		[LinkName("g_input_stream_read_finish")]
		public static extern c_long ReadFinish(InputStream* stream, AsyncResult* result);
		[LinkName("g_input_stream_set_pending")]
		public static extern c_int SetPending(InputStream* stream);
		[LinkName("g_input_stream_skip")]
		public static extern c_long Skip(InputStream* stream, c_ulong count, Cancellable* cancellable);
		[LinkName("g_input_stream_skip_async")]
		public static extern void SkipAsync(InputStream* stream, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_input_stream_skip_finish")]
		public static extern c_long SkipFinish(InputStream* stream, AsyncResult* result);
	}
	[CRepr]
	public struct ListStore : GObject.Object
	{
		[LinkName("g_list_store_new")]
		public static extern ListStore* New(GLib.Type item_type);
		[LinkName("g_list_store_append")]
		public static extern void Append(ListStore* store, GObject.Object* item);
		[LinkName("g_list_store_find")]
		public static extern c_int Find(ListStore* store, GObject.Object* item, c_uint* position);
		[LinkName("g_list_store_find_with_equal_func")]
		public static extern c_int FindWithEqualFunc(ListStore* store, GObject.Object* item, GLib.EqualFunc equal_func, c_uint* position);
		[LinkName("g_list_store_find_with_equal_func_full")]
		public static extern c_int FindWithEqualFuncFull(ListStore* store, GObject.Object* item, GLib.EqualFuncFull equal_func, void* user_data, c_uint* position);
		[LinkName("g_list_store_insert")]
		public static extern void Insert(ListStore* store, c_uint position, GObject.Object* item);
		[LinkName("g_list_store_insert_sorted")]
		public static extern c_uint InsertSorted(ListStore* store, GObject.Object* item, GLib.CompareDataFunc compare_func, void* user_data);
		[LinkName("g_list_store_remove")]
		public static extern void Remove(ListStore* store, c_uint position);
		[LinkName("g_list_store_remove_all")]
		public static extern void RemoveAll(ListStore* store);
		[LinkName("g_list_store_sort")]
		public static extern void Sort(ListStore* store, GLib.CompareDataFunc compare_func, void* user_data);
		[LinkName("g_list_store_splice")]
		public static extern void Splice(ListStore* store, c_uint position, c_uint n_removals, GObject.Object* additions, c_uint n_additions);
	}
	[CRepr]
	public struct MemoryInputStream : InputStream
	{
		[LinkName("g_memory_input_stream_new")]
		public static extern InputStream* New();
		[LinkName("g_memory_input_stream_new_from_bytes")]
		public static extern InputStream* NewFromBytes(GLib.Bytes* bytes);
		[LinkName("g_memory_input_stream_new_from_data")]
		public static extern InputStream* NewFromData(c_uchar* data, c_long len, GLib.DestroyNotify destroy);
		[LinkName("g_memory_input_stream_add_bytes")]
		public static extern void AddBytes(MemoryInputStream* stream, GLib.Bytes* bytes);
		[LinkName("g_memory_input_stream_add_data")]
		public static extern void AddData(MemoryInputStream* stream, c_uchar* data, c_long len, GLib.DestroyNotify destroy);
	}
	[CRepr]
	public struct MemoryOutputStream : OutputStream
	{
		[LinkName("g_memory_output_stream_new_resizable")]
		public static extern OutputStream* NewResizable();
		[LinkName("g_memory_output_stream_get_data")]
		public static extern void* GetData(MemoryOutputStream* ostream);
		[LinkName("g_memory_output_stream_get_data_size")]
		public static extern c_ulong GetDataSize(MemoryOutputStream* ostream);
		[LinkName("g_memory_output_stream_get_size")]
		public static extern c_ulong GetSize(MemoryOutputStream* ostream);
		[LinkName("g_memory_output_stream_steal_as_bytes")]
		public static extern GLib.Bytes* StealAsBytes(MemoryOutputStream* ostream);
		[LinkName("g_memory_output_stream_steal_data")]
		public static extern void* StealData(MemoryOutputStream* ostream);
	}
	[CRepr]
	public struct Menu : MenuModel
	{
		[LinkName("g_menu_new")]
		public static extern Menu* New();
		[LinkName("g_menu_append")]
		public static extern void Append(Menu* menu, char8* label, char8* detailed_action);
		[LinkName("g_menu_append_item")]
		public static extern void AppendItem(Menu* menu, MenuItem* item);
		[LinkName("g_menu_append_section")]
		public static extern void AppendSection(Menu* menu, char8* label, MenuModel* section);
		[LinkName("g_menu_append_submenu")]
		public static extern void AppendSubmenu(Menu* menu, char8* label, MenuModel* submenu);
		[LinkName("g_menu_freeze")]
		public static extern void Freeze(Menu* menu);
		[LinkName("g_menu_insert")]
		public static extern void Insert(Menu* menu, c_int position, char8* label, char8* detailed_action);
		[LinkName("g_menu_insert_item")]
		public static extern void InsertItem(Menu* menu, c_int position, MenuItem* item);
		[LinkName("g_menu_insert_section")]
		public static extern void InsertSection(Menu* menu, c_int position, char8* label, MenuModel* section);
		[LinkName("g_menu_insert_submenu")]
		public static extern void InsertSubmenu(Menu* menu, c_int position, char8* label, MenuModel* submenu);
		[LinkName("g_menu_prepend")]
		public static extern void Prepend(Menu* menu, char8* label, char8* detailed_action);
		[LinkName("g_menu_prepend_item")]
		public static extern void PrependItem(Menu* menu, MenuItem* item);
		[LinkName("g_menu_prepend_section")]
		public static extern void PrependSection(Menu* menu, char8* label, MenuModel* section);
		[LinkName("g_menu_prepend_submenu")]
		public static extern void PrependSubmenu(Menu* menu, char8* label, MenuModel* submenu);
		[LinkName("g_menu_remove")]
		public static extern void Remove(Menu* menu, c_int position);
		[LinkName("g_menu_remove_all")]
		public static extern void RemoveAll(Menu* menu);
	}
	[CRepr]
	public struct MenuAttributeIter : GObject.Object
	{
		[LinkName("g_menu_attribute_iter_get_name")]
		public static extern char8* GetName(MenuAttributeIter* iter);
		[LinkName("g_menu_attribute_iter_get_next")]
		public static extern c_int GetNext(MenuAttributeIter* iter, char8** out_name, GLib.Variant** value);
		[LinkName("g_menu_attribute_iter_get_value")]
		public static extern GLib.Variant* GetValue(MenuAttributeIter* iter);
		[LinkName("g_menu_attribute_iter_next")]
		public static extern c_int Next(MenuAttributeIter* iter);
	}
	[CRepr]
	public struct MenuItem : GObject.Object
	{
		[LinkName("g_menu_item_new")]
		public static extern MenuItem* New(char8* label, char8* detailed_action);
		[LinkName("g_menu_item_new_from_model")]
		public static extern MenuItem* NewFromModel(MenuModel* model, c_int item_index);
		[LinkName("g_menu_item_new_section")]
		public static extern MenuItem* NewSection(char8* label, MenuModel* section);
		[LinkName("g_menu_item_new_submenu")]
		public static extern MenuItem* NewSubmenu(char8* label, MenuModel* submenu);
		[LinkName("g_menu_item_get_attribute_value")]
		public static extern GLib.Variant* GetAttributeValue(MenuItem* menu_item, char8* attribute, GLib.VariantType* expected_type);
		[LinkName("g_menu_item_get_link")]
		public static extern MenuModel* GetLink(MenuItem* menu_item, char8* link);
		[LinkName("g_menu_item_set_action_and_target_value")]
		public static extern void SetActionAndTargetValue(MenuItem* menu_item, char8* action, GLib.Variant* target_value);
		[LinkName("g_menu_item_set_attribute_value")]
		public static extern void SetAttributeValue(MenuItem* menu_item, char8* attribute, GLib.Variant* value);
		[LinkName("g_menu_item_set_detailed_action")]
		public static extern void SetDetailedAction(MenuItem* menu_item, char8* detailed_action);
		[LinkName("g_menu_item_set_icon")]
		public static extern void SetIcon(MenuItem* menu_item, Icon* icon);
		[LinkName("g_menu_item_set_label")]
		public static extern void SetLabel(MenuItem* menu_item, char8* label);
		[LinkName("g_menu_item_set_link")]
		public static extern void SetLink(MenuItem* menu_item, char8* link, MenuModel* model);
		[LinkName("g_menu_item_set_section")]
		public static extern void SetSection(MenuItem* menu_item, MenuModel* section);
		[LinkName("g_menu_item_set_submenu")]
		public static extern void SetSubmenu(MenuItem* menu_item, MenuModel* submenu);
	}
	[CRepr]
	public struct MenuLinkIter : GObject.Object
	{
		[LinkName("g_menu_link_iter_get_name")]
		public static extern char8* GetName(MenuLinkIter* iter);
		[LinkName("g_menu_link_iter_get_next")]
		public static extern c_int GetNext(MenuLinkIter* iter, char8** out_link, MenuModel** value);
		[LinkName("g_menu_link_iter_get_value")]
		public static extern MenuModel* GetValue(MenuLinkIter* iter);
		[LinkName("g_menu_link_iter_next")]
		public static extern c_int Next(MenuLinkIter* iter);
	}
	[CRepr]
	public struct MenuModel : GObject.Object
	{
		[LinkName("g_menu_model_get_item_attribute_value")]
		public static extern GLib.Variant* GetItemAttributeValue(MenuModel* model, c_int item_index, char8* attribute, GLib.VariantType* expected_type);
		[LinkName("g_menu_model_get_item_link")]
		public static extern MenuModel* GetItemLink(MenuModel* model, c_int item_index, char8* link);
		[LinkName("g_menu_model_get_n_items")]
		public static extern c_int GetNItems(MenuModel* model);
		[LinkName("g_menu_model_is_mutable")]
		public static extern c_int IsMutable(MenuModel* model);
		[LinkName("g_menu_model_items_changed")]
		public static extern void ItemsChanged(MenuModel* model, c_int position, c_int removed, c_int added);
		[LinkName("g_menu_model_iterate_item_attributes")]
		public static extern MenuAttributeIter* IterateItemAttributes(MenuModel* model, c_int item_index);
		[LinkName("g_menu_model_iterate_item_links")]
		public static extern MenuLinkIter* IterateItemLinks(MenuModel* model, c_int item_index);
		public function void ItemsChangedFunc(MenuModel* self, c_int position, c_int removed, c_int added, void* user_data);
	}
	[CRepr]
	public struct MountOperation : GObject.Object
	{
		[LinkName("g_mount_operation_new")]
		public static extern MountOperation* New();
		[LinkName("g_mount_operation_get_anonymous")]
		public static extern c_int GetAnonymous(MountOperation* op);
		[LinkName("g_mount_operation_get_choice")]
		public static extern c_int GetChoice(MountOperation* op);
		[LinkName("g_mount_operation_get_domain")]
		public static extern char8* GetDomain(MountOperation* op);
		[LinkName("g_mount_operation_get_is_tcrypt_hidden_volume")]
		public static extern c_int GetIsTcryptHiddenVolume(MountOperation* op);
		[LinkName("g_mount_operation_get_is_tcrypt_system_volume")]
		public static extern c_int GetIsTcryptSystemVolume(MountOperation* op);
		[LinkName("g_mount_operation_get_password")]
		public static extern char8* GetPassword(MountOperation* op);
		[LinkName("g_mount_operation_get_password_save")]
		public static extern PasswordSave GetPasswordSave(MountOperation* op);
		[LinkName("g_mount_operation_get_pim")]
		public static extern c_uint GetPim(MountOperation* op);
		[LinkName("g_mount_operation_get_username")]
		public static extern char8* GetUsername(MountOperation* op);
		[LinkName("g_mount_operation_reply")]
		public static extern void Reply(MountOperation* op, MountOperationResult result);
		[LinkName("g_mount_operation_set_anonymous")]
		public static extern void SetAnonymous(MountOperation* op, c_int anonymous);
		[LinkName("g_mount_operation_set_choice")]
		public static extern void SetChoice(MountOperation* op, c_int choice);
		[LinkName("g_mount_operation_set_domain")]
		public static extern void SetDomain(MountOperation* op, char8* domain);
		[LinkName("g_mount_operation_set_is_tcrypt_hidden_volume")]
		public static extern void SetIsTcryptHiddenVolume(MountOperation* op, c_int hidden_volume);
		[LinkName("g_mount_operation_set_is_tcrypt_system_volume")]
		public static extern void SetIsTcryptSystemVolume(MountOperation* op, c_int system_volume);
		[LinkName("g_mount_operation_set_password")]
		public static extern void SetPassword(MountOperation* op, char8* password);
		[LinkName("g_mount_operation_set_password_save")]
		public static extern void SetPasswordSave(MountOperation* op, PasswordSave save);
		[LinkName("g_mount_operation_set_pim")]
		public static extern void SetPim(MountOperation* op, c_uint pim);
		[LinkName("g_mount_operation_set_username")]
		public static extern void SetUsername(MountOperation* op, char8* username);
		public function void AbortedFunc(MountOperation* self, void* user_data);
		public function void AskPasswordFunc(MountOperation* self, char8* message, char8* default_user, char8* default_domain, AskPasswordFlags flags, void* user_data);
		public function void AskQuestionFunc(MountOperation* self, char8* message, char8 choices, void* user_data);
		public function void ReplyFunc(MountOperation* self, MountOperationResult result, void* user_data);
		public function void ShowProcessesFunc(MountOperation* self, char8* message, GLib.Pid processes, char8 choices, void* user_data);
		public function void ShowUnmountProgressFunc(MountOperation* self, char8* message, c_longlong time_left, c_longlong bytes_left, void* user_data);
	}
	[CRepr]
	public struct NativeSocketAddress : SocketAddress
	{
		[LinkName("g_native_socket_address_new")]
		public static extern SocketAddress* New(void* native, c_ulong len);
	}
	[CRepr]
	public struct NativeVolumeMonitor : VolumeMonitor
	{
	}
	[CRepr]
	public struct NetworkAddress : GObject.Object
	{
		[LinkName("g_network_address_new")]
		public static extern NetworkAddress* New(char8* hostname, c_ushort port);
		[LinkName("g_network_address_new_loopback")]
		public static extern NetworkAddress* NewLoopback(c_ushort port);
		[LinkName("g_network_address_get_hostname")]
		public static extern char8* GetHostname(NetworkAddress* addr);
		[LinkName("g_network_address_get_port")]
		public static extern c_ushort GetPort(NetworkAddress* addr);
		[LinkName("g_network_address_get_scheme")]
		public static extern char8* GetScheme(NetworkAddress* addr);
	}
	[CRepr]
	public struct NetworkService : GObject.Object
	{
		[LinkName("g_network_service_new")]
		public static extern NetworkService* New(char8* service, char8* protocol, char8* domain);
		[LinkName("g_network_service_get_domain")]
		public static extern char8* GetDomain(NetworkService* srv);
		[LinkName("g_network_service_get_protocol")]
		public static extern char8* GetProtocol(NetworkService* srv);
		[LinkName("g_network_service_get_scheme")]
		public static extern char8* GetScheme(NetworkService* srv);
		[LinkName("g_network_service_get_service")]
		public static extern char8* GetService(NetworkService* srv);
		[LinkName("g_network_service_set_scheme")]
		public static extern void SetScheme(NetworkService* srv, char8* scheme);
	}
	[CRepr]
	public struct Notification : GObject.Object
	{
		[LinkName("g_notification_new")]
		public static extern Notification* New(char8* title);
		[LinkName("g_notification_add_button")]
		public static extern void AddButton(Notification* notification, char8* label, char8* detailed_action);
		[LinkName("g_notification_add_button_with_target_value")]
		public static extern void AddButtonWithTargetValue(Notification* notification, char8* label, char8* action, GLib.Variant* target);
		[LinkName("g_notification_set_body")]
		public static extern void SetBody(Notification* notification, char8* body);
		[LinkName("g_notification_set_category")]
		public static extern void SetCategory(Notification* notification, char8* category);
		[LinkName("g_notification_set_default_action")]
		public static extern void SetDefaultAction(Notification* notification, char8* detailed_action);
		[LinkName("g_notification_set_default_action_and_target_value")]
		public static extern void SetDefaultActionAndTargetValue(Notification* notification, char8* action, GLib.Variant* target);
		[LinkName("g_notification_set_icon")]
		public static extern void SetIcon(Notification* notification, Icon* icon);
		[LinkName("g_notification_set_priority")]
		public static extern void SetPriority(Notification* notification, NotificationPriority priority);
		[LinkName("g_notification_set_title")]
		public static extern void SetTitle(Notification* notification, char8* title);
		[LinkName("g_notification_set_urgent")]
		public static extern void SetUrgent(Notification* notification, c_int urgent);
	}
	[CRepr]
	public struct OutputStream : GObject.Object
	{
		[LinkName("g_output_stream_clear_pending")]
		public static extern void ClearPending(OutputStream* stream);
		[LinkName("g_output_stream_close")]
		public static extern c_int Close(OutputStream* stream, Cancellable* cancellable);
		[LinkName("g_output_stream_close_async")]
		public static extern void CloseAsync(OutputStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_output_stream_close_finish")]
		public static extern c_int CloseFinish(OutputStream* stream, AsyncResult* result);
		[LinkName("g_output_stream_flush")]
		public static extern c_int Flush(OutputStream* stream, Cancellable* cancellable);
		[LinkName("g_output_stream_flush_async")]
		public static extern void FlushAsync(OutputStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_output_stream_flush_finish")]
		public static extern c_int FlushFinish(OutputStream* stream, AsyncResult* result);
		[LinkName("g_output_stream_has_pending")]
		public static extern c_int HasPending(OutputStream* stream);
		[LinkName("g_output_stream_is_closed")]
		public static extern c_int IsClosed(OutputStream* stream);
		[LinkName("g_output_stream_is_closing")]
		public static extern c_int IsClosing(OutputStream* stream);
		[LinkName("g_output_stream_set_pending")]
		public static extern c_int SetPending(OutputStream* stream);
		[LinkName("g_output_stream_splice")]
		public static extern c_long Splice(OutputStream* stream, InputStream* source, OutputStreamSpliceFlags flags, Cancellable* cancellable);
		[LinkName("g_output_stream_splice_async")]
		public static extern void SpliceAsync(OutputStream* stream, InputStream* source, OutputStreamSpliceFlags flags, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_output_stream_splice_finish")]
		public static extern c_long SpliceFinish(OutputStream* stream, AsyncResult* result);
		[LinkName("g_output_stream_write")]
		public static extern c_long Write(OutputStream* stream, c_uchar* buffer, c_ulong count, Cancellable* cancellable);
		[LinkName("g_output_stream_write_all")]
		public static extern c_int WriteAll(OutputStream* stream, c_uchar* buffer, c_ulong count, c_ulong* bytes_written, Cancellable* cancellable);
		[LinkName("g_output_stream_write_all_async")]
		public static extern void WriteAllAsync(OutputStream* stream, c_uchar* buffer, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_output_stream_write_all_finish")]
		public static extern c_int WriteAllFinish(OutputStream* stream, AsyncResult* result, c_ulong* bytes_written);
		[LinkName("g_output_stream_write_async")]
		public static extern void WriteAsync(OutputStream* stream, c_uchar* buffer, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_output_stream_write_bytes")]
		public static extern c_long WriteBytes(OutputStream* stream, GLib.Bytes* bytes, Cancellable* cancellable);
		[LinkName("g_output_stream_write_bytes_async")]
		public static extern void WriteBytesAsync(OutputStream* stream, GLib.Bytes* bytes, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_output_stream_write_bytes_finish")]
		public static extern c_long WriteBytesFinish(OutputStream* stream, AsyncResult* result);
		[LinkName("g_output_stream_write_finish")]
		public static extern c_long WriteFinish(OutputStream* stream, AsyncResult* result);
		[LinkName("g_output_stream_writev")]
		public static extern c_int Writev(OutputStream* stream, OutputVector* vectors, c_ulong n_vectors, c_ulong* bytes_written, Cancellable* cancellable);
		[LinkName("g_output_stream_writev_all")]
		public static extern c_int WritevAll(OutputStream* stream, OutputVector* vectors, c_ulong n_vectors, c_ulong* bytes_written, Cancellable* cancellable);
		[LinkName("g_output_stream_writev_all_async")]
		public static extern void WritevAllAsync(OutputStream* stream, OutputVector* vectors, c_ulong n_vectors, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_output_stream_writev_all_finish")]
		public static extern c_int WritevAllFinish(OutputStream* stream, AsyncResult* result, c_ulong* bytes_written);
		[LinkName("g_output_stream_writev_async")]
		public static extern void WritevAsync(OutputStream* stream, OutputVector* vectors, c_ulong n_vectors, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_output_stream_writev_finish")]
		public static extern c_int WritevFinish(OutputStream* stream, AsyncResult* result, c_ulong* bytes_written);
	}
	[CRepr]
	public struct Permission : GObject.Object
	{
		[LinkName("g_permission_acquire")]
		public static extern c_int Acquire(Permission* permission, Cancellable* cancellable);
		[LinkName("g_permission_acquire_async")]
		public static extern void AcquireAsync(Permission* permission, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_permission_acquire_finish")]
		public static extern c_int AcquireFinish(Permission* permission, AsyncResult* result);
		[LinkName("g_permission_get_allowed")]
		public static extern c_int GetAllowed(Permission* permission);
		[LinkName("g_permission_get_can_acquire")]
		public static extern c_int GetCanAcquire(Permission* permission);
		[LinkName("g_permission_get_can_release")]
		public static extern c_int GetCanRelease(Permission* permission);
		[LinkName("g_permission_impl_update")]
		public static extern void ImplUpdate(Permission* permission, c_int allowed, c_int can_acquire, c_int can_release);
		[LinkName("g_permission_release")]
		public static extern c_int Release(Permission* permission, Cancellable* cancellable);
		[LinkName("g_permission_release_async")]
		public static extern void ReleaseAsync(Permission* permission, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_permission_release_finish")]
		public static extern c_int ReleaseFinish(Permission* permission, AsyncResult* result);
	}
	[CRepr]
	public struct PropertyAction : GObject.Object
	{
		[LinkName("g_property_action_new")]
		public static extern PropertyAction* New(char8* name, GObject.Object* object, char8* property_name);
	}
	[CRepr]
	public struct ProxyAddress : InetSocketAddress
	{
		[LinkName("g_proxy_address_new")]
		public static extern SocketAddress* New(InetAddress* inetaddr, c_ushort port, char8* protocol, char8* dest_hostname, c_ushort dest_port, char8* username, char8* password);
		[LinkName("g_proxy_address_get_destination_hostname")]
		public static extern char8* GetDestinationHostname(ProxyAddress* proxy);
		[LinkName("g_proxy_address_get_destination_port")]
		public static extern c_ushort GetDestinationPort(ProxyAddress* proxy);
		[LinkName("g_proxy_address_get_destination_protocol")]
		public static extern char8* GetDestinationProtocol(ProxyAddress* proxy);
		[LinkName("g_proxy_address_get_password")]
		public static extern char8* GetPassword(ProxyAddress* proxy);
		[LinkName("g_proxy_address_get_protocol")]
		public static extern char8* GetProtocol(ProxyAddress* proxy);
		[LinkName("g_proxy_address_get_uri")]
		public static extern char8* GetUri(ProxyAddress* proxy);
		[LinkName("g_proxy_address_get_username")]
		public static extern char8* GetUsername(ProxyAddress* proxy);
	}
	[CRepr]
	public struct ProxyAddressEnumerator : SocketAddressEnumerator
	{
	}
	[CRepr]
	public struct Resolver : GObject.Object
	{
		[LinkName("g_resolver_lookup_by_address")]
		public static extern char8* LookupByAddress(Resolver* resolver, InetAddress* address, Cancellable* cancellable);
		[LinkName("g_resolver_lookup_by_address_async")]
		public static extern void LookupByAddressAsync(Resolver* resolver, InetAddress* address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_resolver_lookup_by_address_finish")]
		public static extern char8* LookupByAddressFinish(Resolver* resolver, AsyncResult* result);
		[LinkName("g_resolver_lookup_by_name")]
		public static extern GLib.List* LookupByName(Resolver* resolver, char8* hostname, Cancellable* cancellable);
		[LinkName("g_resolver_lookup_by_name_async")]
		public static extern void LookupByNameAsync(Resolver* resolver, char8* hostname, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_resolver_lookup_by_name_finish")]
		public static extern GLib.List* LookupByNameFinish(Resolver* resolver, AsyncResult* result);
		[LinkName("g_resolver_lookup_by_name_with_flags")]
		public static extern GLib.List* LookupByNameWithFlags(Resolver* resolver, char8* hostname, ResolverNameLookupFlags flags, Cancellable* cancellable);
		[LinkName("g_resolver_lookup_by_name_with_flags_async")]
		public static extern void LookupByNameWithFlagsAsync(Resolver* resolver, char8* hostname, ResolverNameLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_resolver_lookup_by_name_with_flags_finish")]
		public static extern GLib.List* LookupByNameWithFlagsFinish(Resolver* resolver, AsyncResult* result);
		[LinkName("g_resolver_lookup_records")]
		public static extern GLib.List* LookupRecords(Resolver* resolver, char8* rrname, ResolverRecordType record_type, Cancellable* cancellable);
		[LinkName("g_resolver_lookup_records_async")]
		public static extern void LookupRecordsAsync(Resolver* resolver, char8* rrname, ResolverRecordType record_type, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_resolver_lookup_records_finish")]
		public static extern GLib.List* LookupRecordsFinish(Resolver* resolver, AsyncResult* result);
		[LinkName("g_resolver_lookup_service")]
		public static extern GLib.List* LookupService(Resolver* resolver, char8* service, char8* protocol, char8* domain, Cancellable* cancellable);
		[LinkName("g_resolver_lookup_service_async")]
		public static extern void LookupServiceAsync(Resolver* resolver, char8* service, char8* protocol, char8* domain, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_resolver_lookup_service_finish")]
		public static extern GLib.List* LookupServiceFinish(Resolver* resolver, AsyncResult* result);
		[LinkName("g_resolver_set_default")]
		public static extern void SetDefault(Resolver* resolver);
		public function void ReloadFunc(Resolver* self, void* user_data);
	}
	[CRepr]
	public struct Settings : GObject.Object
	{
		[LinkName("g_settings_new")]
		public static extern Settings* New(char8* schema_id);
		[LinkName("g_settings_new_full")]
		public static extern Settings* NewFull(SettingsSchema* schema, SettingsBackend* backend, char8* path);
		[LinkName("g_settings_new_with_backend")]
		public static extern Settings* NewWithBackend(char8* schema_id, SettingsBackend* backend);
		[LinkName("g_settings_new_with_backend_and_path")]
		public static extern Settings* NewWithBackendAndPath(char8* schema_id, SettingsBackend* backend, char8* path);
		[LinkName("g_settings_new_with_path")]
		public static extern Settings* NewWithPath(char8* schema_id, char8* path);
		[LinkName("g_settings_apply")]
		public static extern void Apply(Settings* settings);
		[LinkName("g_settings_bind")]
		public static extern void Bind(Settings* settings, char8* key, GObject.Object* object, char8* property, SettingsBindFlags flags);
		[LinkName("g_settings_bind_writable")]
		public static extern void BindWritable(Settings* settings, char8* key, GObject.Object* object, char8* property, c_int inverted);
		[LinkName("g_settings_create_action")]
		public static extern Action* CreateAction(Settings* settings, char8* key);
		[LinkName("g_settings_delay")]
		public static extern void Delay(Settings* settings);
		[LinkName("g_settings_get_boolean")]
		public static extern c_int GetBoolean(Settings* settings, char8* key);
		[LinkName("g_settings_get_child")]
		public static extern Settings* GetChild(Settings* settings, char8* name);
		[LinkName("g_settings_get_default_value")]
		public static extern GLib.Variant* GetDefaultValue(Settings* settings, char8* key);
		[LinkName("g_settings_get_double")]
		public static extern double GetDouble(Settings* settings, char8* key);
		[LinkName("g_settings_get_enum")]
		public static extern c_int GetEnum(Settings* settings, char8* key);
		[LinkName("g_settings_get_flags")]
		public static extern c_uint GetFlags(Settings* settings, char8* key);
		[LinkName("g_settings_get_has_unapplied")]
		public static extern c_int GetHasUnapplied(Settings* settings);
		[LinkName("g_settings_get_int")]
		public static extern c_int GetInt(Settings* settings, char8* key);
		[LinkName("g_settings_get_int64")]
		public static extern c_longlong GetInt64(Settings* settings, char8* key);
		[LinkName("g_settings_get_mapped")]
		public static extern void* GetMapped(Settings* settings, char8* key, SettingsGetMapping mapping, void* user_data);
		[LinkName("g_settings_get_range")]
		public static extern GLib.Variant* GetRange(Settings* settings, char8* key);
		[LinkName("g_settings_get_string")]
		public static extern char8* GetString(Settings* settings, char8* key);
		[LinkName("g_settings_get_strv")]
		public static extern char8** GetStrv(Settings* settings, char8* key);
		[LinkName("g_settings_get_uint")]
		public static extern c_uint GetUint(Settings* settings, char8* key);
		[LinkName("g_settings_get_uint64")]
		public static extern c_ulonglong GetUint64(Settings* settings, char8* key);
		[LinkName("g_settings_get_user_value")]
		public static extern GLib.Variant* GetUserValue(Settings* settings, char8* key);
		[LinkName("g_settings_get_value")]
		public static extern GLib.Variant* GetValue(Settings* settings, char8* key);
		[LinkName("g_settings_is_writable")]
		public static extern c_int IsWritable(Settings* settings, char8* name);
		[LinkName("g_settings_list_children")]
		public static extern char8** ListChildren(Settings* settings);
		[LinkName("g_settings_list_keys")]
		public static extern char8** ListKeys(Settings* settings);
		[LinkName("g_settings_range_check")]
		public static extern c_int RangeCheck(Settings* settings, char8* key, GLib.Variant* value);
		[LinkName("g_settings_reset")]
		public static extern void Reset(Settings* settings, char8* key);
		[LinkName("g_settings_revert")]
		public static extern void Revert(Settings* settings);
		[LinkName("g_settings_set_boolean")]
		public static extern c_int SetBoolean(Settings* settings, char8* key, c_int value);
		[LinkName("g_settings_set_double")]
		public static extern c_int SetDouble(Settings* settings, char8* key, double value);
		[LinkName("g_settings_set_enum")]
		public static extern c_int SetEnum(Settings* settings, char8* key, c_int value);
		[LinkName("g_settings_set_flags")]
		public static extern c_int SetFlags(Settings* settings, char8* key, c_uint value);
		[LinkName("g_settings_set_int")]
		public static extern c_int SetInt(Settings* settings, char8* key, c_int value);
		[LinkName("g_settings_set_int64")]
		public static extern c_int SetInt64(Settings* settings, char8* key, c_longlong value);
		[LinkName("g_settings_set_string")]
		public static extern c_int SetString(Settings* settings, char8* key, char8* value);
		[LinkName("g_settings_set_strv")]
		public static extern c_int SetStrv(Settings* settings, char8* key, char8** value);
		[LinkName("g_settings_set_uint")]
		public static extern c_int SetUint(Settings* settings, char8* key, c_uint value);
		[LinkName("g_settings_set_uint64")]
		public static extern c_int SetUint64(Settings* settings, char8* key, c_ulonglong value);
		[LinkName("g_settings_set_value")]
		public static extern c_int SetValue(Settings* settings, char8* key, GLib.Variant* value);
		public function c_int ChangeEventFunc(Settings* self, GLib.Quark keys, c_int n_keys, void* user_data);
		public function void ChangedFunc(Settings* self, char8* key, void* user_data);
		public function c_int WritableChangeEventFunc(Settings* self, c_uint key, void* user_data);
		public function void WritableChangedFunc(Settings* self, char8* key, void* user_data);
	}
	[CRepr]
	public struct SettingsBackend : GObject.Object
	{
		[LinkName("g_settings_backend_changed")]
		public static extern void Changed(SettingsBackend* backend, char8* key, void* origin_tag);
		[LinkName("g_settings_backend_changed_tree")]
		public static extern void ChangedTree(SettingsBackend* backend, GLib.Tree* tree, void* origin_tag);
		[LinkName("g_settings_backend_keys_changed")]
		public static extern void KeysChanged(SettingsBackend* backend, char8* path, char8** items, void* origin_tag);
		[LinkName("g_settings_backend_path_changed")]
		public static extern void PathChanged(SettingsBackend* backend, char8* path, void* origin_tag);
		[LinkName("g_settings_backend_path_writable_changed")]
		public static extern void PathWritableChanged(SettingsBackend* backend, char8* path);
		[LinkName("g_settings_backend_writable_changed")]
		public static extern void WritableChanged(SettingsBackend* backend, char8* key);
	}
	[CRepr]
	public struct SimpleAction : GObject.Object
	{
		[LinkName("g_simple_action_new")]
		public static extern SimpleAction* New(char8* name, GLib.VariantType* parameter_type);
		[LinkName("g_simple_action_new_stateful")]
		public static extern SimpleAction* NewStateful(char8* name, GLib.VariantType* parameter_type, GLib.Variant* state);
		[LinkName("g_simple_action_set_enabled")]
		public static extern void SetEnabled(SimpleAction* simple, c_int enabled);
		[LinkName("g_simple_action_set_state")]
		public static extern void SetState(SimpleAction* simple, GLib.Variant* value);
		[LinkName("g_simple_action_set_state_hint")]
		public static extern void SetStateHint(SimpleAction* simple, GLib.Variant* state_hint);
		public function void ActivateFunc(SimpleAction* self, GLib.Variant parameter, void* user_data);
		public function void ChangeStateFunc(SimpleAction* self, GLib.Variant value, void* user_data);
	}
	[CRepr]
	public struct SimpleActionGroup : GObject.Object
	{
		[LinkName("g_simple_action_group_new")]
		public static extern SimpleActionGroup* New();
		[LinkName("g_simple_action_group_add_entries")]
		public static extern void AddEntries(SimpleActionGroup* simple, ActionEntry* entries, c_int n_entries, void* user_data);
		[LinkName("g_simple_action_group_insert")]
		public static extern void Insert(SimpleActionGroup* simple, Action* action);
		[LinkName("g_simple_action_group_lookup")]
		public static extern Action* Lookup(SimpleActionGroup* simple, char8* action_name);
		[LinkName("g_simple_action_group_remove")]
		public static extern void Remove(SimpleActionGroup* simple, char8* action_name);
	}
	[CRepr]
	public struct SimpleAsyncResult : GObject.Object
	{
		[LinkName("g_simple_async_result_new")]
		public static extern SimpleAsyncResult* New(GObject.Object* source_object, AsyncReadyCallback callback, void* user_data, void* source_tag);
		[LinkName("g_simple_async_result_new_from_error")]
		public static extern SimpleAsyncResult* NewFromError(GObject.Object* source_object, AsyncReadyCallback callback, void* user_data, GLib.Error* error);
		[LinkName("g_simple_async_result_complete")]
		public static extern void Complete(SimpleAsyncResult* simple);
		[LinkName("g_simple_async_result_complete_in_idle")]
		public static extern void CompleteInIdle(SimpleAsyncResult* simple);
		[LinkName("g_simple_async_result_get_op_res_gboolean")]
		public static extern c_int GetOpResGboolean(SimpleAsyncResult* simple);
		[LinkName("g_simple_async_result_get_op_res_gssize")]
		public static extern c_long GetOpResGssize(SimpleAsyncResult* simple);
		[LinkName("g_simple_async_result_propagate_error")]
		public static extern c_int PropagateError(SimpleAsyncResult* simple);
		[LinkName("g_simple_async_result_set_check_cancellable")]
		public static extern void SetCheckCancellable(SimpleAsyncResult* simple, Cancellable* check_cancellable);
		[LinkName("g_simple_async_result_set_from_error")]
		public static extern void SetFromError(SimpleAsyncResult* simple, GLib.Error* error);
		[LinkName("g_simple_async_result_set_handle_cancellation")]
		public static extern void SetHandleCancellation(SimpleAsyncResult* simple, c_int handle_cancellation);
		[LinkName("g_simple_async_result_set_op_res_gboolean")]
		public static extern void SetOpResGboolean(SimpleAsyncResult* simple, c_int op_res);
		[LinkName("g_simple_async_result_set_op_res_gssize")]
		public static extern void SetOpResGssize(SimpleAsyncResult* simple, c_long op_res);
	}
	[CRepr]
	public struct SimpleIOStream : IOStream
	{
		[LinkName("g_simple_io_stream_new")]
		public static extern IOStream* New(InputStream* input_stream, OutputStream* output_stream);
	}
	[CRepr]
	public struct SimplePermission : Permission
	{
		[LinkName("g_simple_permission_new")]
		public static extern Permission* New(c_int allowed);
	}
	[CRepr]
	public struct SimpleProxyResolver : GObject.Object
	{
		[LinkName("g_simple_proxy_resolver_set_default_proxy")]
		public static extern void SetDefaultProxy(SimpleProxyResolver* resolver, char8* default_proxy);
		[LinkName("g_simple_proxy_resolver_set_ignore_hosts")]
		public static extern void SetIgnoreHosts(SimpleProxyResolver* resolver, char8** ignore_hosts);
		[LinkName("g_simple_proxy_resolver_set_uri_proxy")]
		public static extern void SetUriProxy(SimpleProxyResolver* resolver, char8* uri_scheme, char8* proxy);
	}
	[CRepr]
	public struct Socket : GObject.Object
	{
		[LinkName("g_socket_new")]
		public static extern Socket* New(SocketFamily family, SocketType type, SocketProtocol protocol);
		[LinkName("g_socket_new_from_fd")]
		public static extern Socket* NewFromFd(c_int fd);
		[LinkName("g_socket_accept")]
		public static extern Socket* Accept(Socket* socket, Cancellable* cancellable);
		[LinkName("g_socket_bind")]
		public static extern c_int Bind(Socket* socket, SocketAddress* address, c_int allow_reuse);
		[LinkName("g_socket_check_connect_result")]
		public static extern c_int CheckConnectResult(Socket* socket);
		[LinkName("g_socket_close")]
		public static extern c_int Close(Socket* socket);
		[LinkName("g_socket_condition_check")]
		public static extern GLib.IOCondition ConditionCheck(Socket* socket, GLib.IOCondition condition);
		[LinkName("g_socket_condition_timed_wait")]
		public static extern c_int ConditionTimedWait(Socket* socket, GLib.IOCondition condition, c_longlong timeout_us, Cancellable* cancellable);
		[LinkName("g_socket_condition_wait")]
		public static extern c_int ConditionWait(Socket* socket, GLib.IOCondition condition, Cancellable* cancellable);
		[LinkName("g_socket_connect")]
		public static extern c_int Connect(Socket* socket, SocketAddress* address, Cancellable* cancellable);
		[LinkName("g_socket_connection_factory_create_connection")]
		public static extern SocketConnection* ConnectionFactoryCreateConnection(Socket* socket);
		[LinkName("g_socket_get_available_bytes")]
		public static extern c_long GetAvailableBytes(Socket* socket);
		[LinkName("g_socket_get_blocking")]
		public static extern c_int GetBlocking(Socket* socket);
		[LinkName("g_socket_get_broadcast")]
		public static extern c_int GetBroadcast(Socket* socket);
		[LinkName("g_socket_get_credentials")]
		public static extern Credentials* GetCredentials(Socket* socket);
		[LinkName("g_socket_get_family")]
		public static extern SocketFamily GetFamily(Socket* socket);
		[LinkName("g_socket_get_fd")]
		public static extern c_int GetFd(Socket* socket);
		[LinkName("g_socket_get_keepalive")]
		public static extern c_int GetKeepalive(Socket* socket);
		[LinkName("g_socket_get_listen_backlog")]
		public static extern c_int GetListenBacklog(Socket* socket);
		[LinkName("g_socket_get_local_address")]
		public static extern SocketAddress* GetLocalAddress(Socket* socket);
		[LinkName("g_socket_get_multicast_loopback")]
		public static extern c_int GetMulticastLoopback(Socket* socket);
		[LinkName("g_socket_get_multicast_ttl")]
		public static extern c_uint GetMulticastTtl(Socket* socket);
		[LinkName("g_socket_get_option")]
		public static extern c_int GetOption(Socket* socket, c_int level, c_int optname, c_int* value);
		[LinkName("g_socket_get_protocol")]
		public static extern SocketProtocol GetProtocol(Socket* socket);
		[LinkName("g_socket_get_remote_address")]
		public static extern SocketAddress* GetRemoteAddress(Socket* socket);
		[LinkName("g_socket_get_socket_type")]
		public static extern SocketType GetSocketType(Socket* socket);
		[LinkName("g_socket_get_timeout")]
		public static extern c_uint GetTimeout(Socket* socket);
		[LinkName("g_socket_get_ttl")]
		public static extern c_uint GetTtl(Socket* socket);
		[LinkName("g_socket_is_closed")]
		public static extern c_int IsClosed(Socket* socket);
		[LinkName("g_socket_is_connected")]
		public static extern c_int IsConnected(Socket* socket);
		[LinkName("g_socket_join_multicast_group")]
		public static extern c_int JoinMulticastGroup(Socket* socket, InetAddress* group, c_int source_specific, char8* iface);
		[LinkName("g_socket_join_multicast_group_ssm")]
		public static extern c_int JoinMulticastGroupSsm(Socket* socket, InetAddress* group, InetAddress* source_specific, char8* iface);
		[LinkName("g_socket_leave_multicast_group")]
		public static extern c_int LeaveMulticastGroup(Socket* socket, InetAddress* group, c_int source_specific, char8* iface);
		[LinkName("g_socket_leave_multicast_group_ssm")]
		public static extern c_int LeaveMulticastGroupSsm(Socket* socket, InetAddress* group, InetAddress* source_specific, char8* iface);
		[LinkName("g_socket_listen")]
		public static extern c_int Listen(Socket* socket);
		[LinkName("g_socket_receive")]
		public static extern c_long Receive(Socket* socket, c_uchar* buffer, c_ulong size, Cancellable* cancellable);
		[LinkName("g_socket_receive_from")]
		public static extern c_long ReceiveFrom(Socket* socket, SocketAddress** address, c_uchar* buffer, c_ulong size, Cancellable* cancellable);
		[LinkName("g_socket_receive_message")]
		public static extern c_long ReceiveMessage(Socket* socket, SocketAddress** address, InputVector* vectors, c_int num_vectors, SocketControlMessage*** messages, c_int* num_messages, c_int* flags, Cancellable* cancellable);
		[LinkName("g_socket_receive_messages")]
		public static extern c_int ReceiveMessages(Socket* socket, InputMessage* messages, c_uint num_messages, c_int flags, Cancellable* cancellable);
		[LinkName("g_socket_receive_with_blocking")]
		public static extern c_long ReceiveWithBlocking(Socket* socket, c_uchar* buffer, c_ulong size, c_int blocking, Cancellable* cancellable);
		[LinkName("g_socket_send")]
		public static extern c_long Send(Socket* socket, c_uchar* buffer, c_ulong size, Cancellable* cancellable);
		[LinkName("g_socket_send_message")]
		public static extern c_long SendMessage(Socket* socket, SocketAddress* address, OutputVector* vectors, c_int num_vectors, SocketControlMessage** messages, c_int num_messages, c_int flags, Cancellable* cancellable);
		[LinkName("g_socket_send_message_with_timeout")]
		public static extern PollableReturn SendMessageWithTimeout(Socket* socket, SocketAddress* address, OutputVector* vectors, c_int num_vectors, SocketControlMessage** messages, c_int num_messages, c_int flags, c_longlong timeout_us, c_ulong* bytes_written, Cancellable* cancellable);
		[LinkName("g_socket_send_messages")]
		public static extern c_int SendMessages(Socket* socket, OutputMessage* messages, c_uint num_messages, c_int flags, Cancellable* cancellable);
		[LinkName("g_socket_send_to")]
		public static extern c_long SendTo(Socket* socket, SocketAddress* address, c_uchar* buffer, c_ulong size, Cancellable* cancellable);
		[LinkName("g_socket_send_with_blocking")]
		public static extern c_long SendWithBlocking(Socket* socket, c_uchar* buffer, c_ulong size, c_int blocking, Cancellable* cancellable);
		[LinkName("g_socket_set_blocking")]
		public static extern void SetBlocking(Socket* socket, c_int blocking);
		[LinkName("g_socket_set_broadcast")]
		public static extern void SetBroadcast(Socket* socket, c_int broadcast);
		[LinkName("g_socket_set_keepalive")]
		public static extern void SetKeepalive(Socket* socket, c_int keepalive);
		[LinkName("g_socket_set_listen_backlog")]
		public static extern void SetListenBacklog(Socket* socket, c_int backlog);
		[LinkName("g_socket_set_multicast_loopback")]
		public static extern void SetMulticastLoopback(Socket* socket, c_int loopback);
		[LinkName("g_socket_set_multicast_ttl")]
		public static extern void SetMulticastTtl(Socket* socket, c_uint ttl);
		[LinkName("g_socket_set_option")]
		public static extern c_int SetOption(Socket* socket, c_int level, c_int optname, c_int value);
		[LinkName("g_socket_set_timeout")]
		public static extern void SetTimeout(Socket* socket, c_uint timeout);
		[LinkName("g_socket_set_ttl")]
		public static extern void SetTtl(Socket* socket, c_uint ttl);
		[LinkName("g_socket_shutdown")]
		public static extern c_int Shutdown(Socket* socket, c_int shutdown_read, c_int shutdown_write);
		[LinkName("g_socket_speaks_ipv4")]
		public static extern c_int SpeaksIpv4(Socket* socket);
	}
	[CRepr]
	public struct SocketAddress : GObject.Object
	{
		[LinkName("g_socket_address_new_from_native")]
		public static extern SocketAddress* NewFromNative(void* native, c_ulong len);
		[LinkName("g_socket_address_get_family")]
		public static extern SocketFamily GetFamily(SocketAddress* address);
		[LinkName("g_socket_address_get_native_size")]
		public static extern c_long GetNativeSize(SocketAddress* address);
		[LinkName("g_socket_address_to_native")]
		public static extern c_int ToNative(SocketAddress* address, void* dest, c_ulong destlen);
	}
	[CRepr]
	public struct SocketAddressEnumerator : GObject.Object
	{
		[LinkName("g_socket_address_enumerator_next")]
		public static extern SocketAddress* Next(SocketAddressEnumerator* enumerator, Cancellable* cancellable);
		[LinkName("g_socket_address_enumerator_next_async")]
		public static extern void NextAsync(SocketAddressEnumerator* enumerator, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_socket_address_enumerator_next_finish")]
		public static extern SocketAddress* NextFinish(SocketAddressEnumerator* enumerator, AsyncResult* result);
	}
	[CRepr]
	public struct SocketClient : GObject.Object
	{
		[LinkName("g_socket_client_new")]
		public static extern SocketClient* New();
		[LinkName("g_socket_client_add_application_proxy")]
		public static extern void AddApplicationProxy(SocketClient* client, char8* protocol);
		[LinkName("g_socket_client_connect")]
		public static extern SocketConnection* Connect(SocketClient* client, SocketConnectable* connectable, Cancellable* cancellable);
		[LinkName("g_socket_client_connect_async")]
		public static extern void ConnectAsync(SocketClient* client, SocketConnectable* connectable, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_socket_client_connect_finish")]
		public static extern SocketConnection* ConnectFinish(SocketClient* client, AsyncResult* result);
		[LinkName("g_socket_client_connect_to_host")]
		public static extern SocketConnection* ConnectToHost(SocketClient* client, char8* host_and_port, c_ushort default_port, Cancellable* cancellable);
		[LinkName("g_socket_client_connect_to_host_async")]
		public static extern void ConnectToHostAsync(SocketClient* client, char8* host_and_port, c_ushort default_port, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_socket_client_connect_to_host_finish")]
		public static extern SocketConnection* ConnectToHostFinish(SocketClient* client, AsyncResult* result);
		[LinkName("g_socket_client_connect_to_service")]
		public static extern SocketConnection* ConnectToService(SocketClient* client, char8* domain, char8* service, Cancellable* cancellable);
		[LinkName("g_socket_client_connect_to_service_async")]
		public static extern void ConnectToServiceAsync(SocketClient* client, char8* domain, char8* service, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_socket_client_connect_to_service_finish")]
		public static extern SocketConnection* ConnectToServiceFinish(SocketClient* client, AsyncResult* result);
		[LinkName("g_socket_client_connect_to_uri")]
		public static extern SocketConnection* ConnectToUri(SocketClient* client, char8* uri, c_ushort default_port, Cancellable* cancellable);
		[LinkName("g_socket_client_connect_to_uri_async")]
		public static extern void ConnectToUriAsync(SocketClient* client, char8* uri, c_ushort default_port, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_socket_client_connect_to_uri_finish")]
		public static extern SocketConnection* ConnectToUriFinish(SocketClient* client, AsyncResult* result);
		[LinkName("g_socket_client_get_enable_proxy")]
		public static extern c_int GetEnableProxy(SocketClient* client);
		[LinkName("g_socket_client_get_family")]
		public static extern SocketFamily GetFamily(SocketClient* client);
		[LinkName("g_socket_client_get_local_address")]
		public static extern SocketAddress* GetLocalAddress(SocketClient* client);
		[LinkName("g_socket_client_get_protocol")]
		public static extern SocketProtocol GetProtocol(SocketClient* client);
		[LinkName("g_socket_client_get_proxy_resolver")]
		public static extern ProxyResolver* GetProxyResolver(SocketClient* client);
		[LinkName("g_socket_client_get_socket_type")]
		public static extern SocketType GetSocketType(SocketClient* client);
		[LinkName("g_socket_client_get_timeout")]
		public static extern c_uint GetTimeout(SocketClient* client);
		[LinkName("g_socket_client_get_tls")]
		public static extern c_int GetTls(SocketClient* client);
		[LinkName("g_socket_client_get_tls_validation_flags")]
		public static extern TlsCertificateFlags GetTlsValidationFlags(SocketClient* client);
		[LinkName("g_socket_client_set_enable_proxy")]
		public static extern void SetEnableProxy(SocketClient* client, c_int enable);
		[LinkName("g_socket_client_set_family")]
		public static extern void SetFamily(SocketClient* client, SocketFamily family);
		[LinkName("g_socket_client_set_local_address")]
		public static extern void SetLocalAddress(SocketClient* client, SocketAddress* address);
		[LinkName("g_socket_client_set_protocol")]
		public static extern void SetProtocol(SocketClient* client, SocketProtocol protocol);
		[LinkName("g_socket_client_set_proxy_resolver")]
		public static extern void SetProxyResolver(SocketClient* client, ProxyResolver* proxy_resolver);
		[LinkName("g_socket_client_set_socket_type")]
		public static extern void SetSocketType(SocketClient* client, SocketType type);
		[LinkName("g_socket_client_set_timeout")]
		public static extern void SetTimeout(SocketClient* client, c_uint timeout);
		[LinkName("g_socket_client_set_tls")]
		public static extern void SetTls(SocketClient* client, c_int tls);
		[LinkName("g_socket_client_set_tls_validation_flags")]
		public static extern void SetTlsValidationFlags(SocketClient* client, TlsCertificateFlags flags);
		public function void EventFunc(SocketClient* self, SocketClientEvent event, SocketConnectable connectable, IOStream connection, void* user_data);
	}
	[CRepr]
	public struct SocketConnection : IOStream
	{
		[LinkName("g_socket_connection_connect")]
		public static extern c_int Connect(SocketConnection* connection, SocketAddress* address, Cancellable* cancellable);
		[LinkName("g_socket_connection_connect_async")]
		public static extern void ConnectAsync(SocketConnection* connection, SocketAddress* address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_socket_connection_connect_finish")]
		public static extern c_int ConnectFinish(SocketConnection* connection, AsyncResult* result);
		[LinkName("g_socket_connection_get_local_address")]
		public static extern SocketAddress* GetLocalAddress(SocketConnection* connection);
		[LinkName("g_socket_connection_get_remote_address")]
		public static extern SocketAddress* GetRemoteAddress(SocketConnection* connection);
		[LinkName("g_socket_connection_get_socket")]
		public static extern Socket* GetSocket(SocketConnection* connection);
		[LinkName("g_socket_connection_is_connected")]
		public static extern c_int IsConnected(SocketConnection* connection);
	}
	[CRepr]
	public struct SocketControlMessage : GObject.Object
	{
		[LinkName("g_socket_control_message_get_level")]
		public static extern c_int GetLevel(SocketControlMessage* message);
		[LinkName("g_socket_control_message_get_msg_type")]
		public static extern c_int GetMsgType(SocketControlMessage* message);
		[LinkName("g_socket_control_message_get_size")]
		public static extern c_ulong GetSize(SocketControlMessage* message);
		[LinkName("g_socket_control_message_serialize")]
		public static extern void Serialize(SocketControlMessage* message, void* data);
	}
	[CRepr]
	public struct SocketListener : GObject.Object
	{
		[LinkName("g_socket_listener_new")]
		public static extern SocketListener* New();
		[LinkName("g_socket_listener_accept")]
		public static extern SocketConnection* Accept(SocketListener* listener, GObject.Object** source_object, Cancellable* cancellable);
		[LinkName("g_socket_listener_accept_async")]
		public static extern void AcceptAsync(SocketListener* listener, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_socket_listener_accept_finish")]
		public static extern SocketConnection* AcceptFinish(SocketListener* listener, AsyncResult* result, GObject.Object** source_object);
		[LinkName("g_socket_listener_accept_socket")]
		public static extern Socket* AcceptSocket(SocketListener* listener, GObject.Object** source_object, Cancellable* cancellable);
		[LinkName("g_socket_listener_accept_socket_async")]
		public static extern void AcceptSocketAsync(SocketListener* listener, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_socket_listener_accept_socket_finish")]
		public static extern Socket* AcceptSocketFinish(SocketListener* listener, AsyncResult* result, GObject.Object** source_object);
		[LinkName("g_socket_listener_add_address")]
		public static extern c_int AddAddress(SocketListener* listener, SocketAddress* address, SocketType type, SocketProtocol protocol, GObject.Object* source_object, SocketAddress** effective_address);
		[LinkName("g_socket_listener_add_any_inet_port")]
		public static extern c_ushort AddAnyInetPort(SocketListener* listener, GObject.Object* source_object);
		[LinkName("g_socket_listener_add_inet_port")]
		public static extern c_int AddInetPort(SocketListener* listener, c_ushort port, GObject.Object* source_object);
		[LinkName("g_socket_listener_add_socket")]
		public static extern c_int AddSocket(SocketListener* listener, Socket* socket, GObject.Object* source_object);
		[LinkName("g_socket_listener_close")]
		public static extern void Close(SocketListener* listener);
		[LinkName("g_socket_listener_set_backlog")]
		public static extern void SetBacklog(SocketListener* listener, c_int listen_backlog);
		public function void EventFunc(SocketListener* self, SocketListenerEvent event, Socket socket, void* user_data);
	}
	[CRepr]
	public struct SocketService : SocketListener
	{
		[LinkName("g_socket_service_new")]
		public static extern SocketService* New();
		[LinkName("g_socket_service_is_active")]
		public static extern c_int IsActive(SocketService* service);
		[LinkName("g_socket_service_start")]
		public static extern void Start(SocketService* service);
		[LinkName("g_socket_service_stop")]
		public static extern void Stop(SocketService* service);
		public function c_int IncomingFunc(SocketService* self, SocketConnection connection, GObject.Object source_object, void* user_data);
	}
	[CRepr]
	public struct Subprocess : GObject.Object
	{
		[LinkName("g_subprocess_newv")]
		public static extern Subprocess* Newv(char8** argv, SubprocessFlags flags);
		[LinkName("g_subprocess_communicate")]
		public static extern c_int Communicate(Subprocess* subprocess, GLib.Bytes* stdin_buf, Cancellable* cancellable, GLib.Bytes** stdout_buf, GLib.Bytes** stderr_buf);
		[LinkName("g_subprocess_communicate_async")]
		public static extern void CommunicateAsync(Subprocess* subprocess, GLib.Bytes* stdin_buf, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_subprocess_communicate_finish")]
		public static extern c_int CommunicateFinish(Subprocess* subprocess, AsyncResult* result, GLib.Bytes** stdout_buf, GLib.Bytes** stderr_buf);
		[LinkName("g_subprocess_communicate_utf8")]
		public static extern c_int CommunicateUtf8(Subprocess* subprocess, char8* stdin_buf, Cancellable* cancellable, char8** stdout_buf, char8** stderr_buf);
		[LinkName("g_subprocess_communicate_utf8_async")]
		public static extern void CommunicateUtf8Async(Subprocess* subprocess, char8* stdin_buf, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_subprocess_communicate_utf8_finish")]
		public static extern c_int CommunicateUtf8Finish(Subprocess* subprocess, AsyncResult* result, char8** stdout_buf, char8** stderr_buf);
		[LinkName("g_subprocess_force_exit")]
		public static extern void ForceExit(Subprocess* subprocess);
		[LinkName("g_subprocess_get_exit_status")]
		public static extern c_int GetExitStatus(Subprocess* subprocess);
		[LinkName("g_subprocess_get_identifier")]
		public static extern char8* GetIdentifier(Subprocess* subprocess);
		[LinkName("g_subprocess_get_if_exited")]
		public static extern c_int GetIfExited(Subprocess* subprocess);
		[LinkName("g_subprocess_get_if_signaled")]
		public static extern c_int GetIfSignaled(Subprocess* subprocess);
		[LinkName("g_subprocess_get_status")]
		public static extern c_int GetStatus(Subprocess* subprocess);
		[LinkName("g_subprocess_get_stderr_pipe")]
		public static extern InputStream* GetStderrPipe(Subprocess* subprocess);
		[LinkName("g_subprocess_get_stdin_pipe")]
		public static extern OutputStream* GetStdinPipe(Subprocess* subprocess);
		[LinkName("g_subprocess_get_stdout_pipe")]
		public static extern InputStream* GetStdoutPipe(Subprocess* subprocess);
		[LinkName("g_subprocess_get_successful")]
		public static extern c_int GetSuccessful(Subprocess* subprocess);
		[LinkName("g_subprocess_get_term_sig")]
		public static extern c_int GetTermSig(Subprocess* subprocess);
		[LinkName("g_subprocess_send_signal")]
		public static extern void SendSignal(Subprocess* subprocess, c_int signal_num);
		[LinkName("g_subprocess_wait")]
		public static extern c_int Wait(Subprocess* subprocess, Cancellable* cancellable);
		[LinkName("g_subprocess_wait_async")]
		public static extern void WaitAsync(Subprocess* subprocess, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_subprocess_wait_check")]
		public static extern c_int WaitCheck(Subprocess* subprocess, Cancellable* cancellable);
		[LinkName("g_subprocess_wait_check_async")]
		public static extern void WaitCheckAsync(Subprocess* subprocess, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_subprocess_wait_check_finish")]
		public static extern c_int WaitCheckFinish(Subprocess* subprocess, AsyncResult* result);
		[LinkName("g_subprocess_wait_finish")]
		public static extern c_int WaitFinish(Subprocess* subprocess, AsyncResult* result);
	}
	[CRepr]
	public struct SubprocessLauncher : GObject.Object
	{
		[LinkName("g_subprocess_launcher_new")]
		public static extern SubprocessLauncher* New(SubprocessFlags flags);
		[LinkName("g_subprocess_launcher_close")]
		public static extern void Close(SubprocessLauncher* self);
		[LinkName("g_subprocess_launcher_getenv")]
		public static extern char8* Getenv(SubprocessLauncher* self, char8* variable);
		[LinkName("g_subprocess_launcher_set_cwd")]
		public static extern void SetCwd(SubprocessLauncher* self, char8* cwd);
		[LinkName("g_subprocess_launcher_set_environ")]
		public static extern void SetEnviron(SubprocessLauncher* self, char8** env);
		[LinkName("g_subprocess_launcher_set_flags")]
		public static extern void SetFlags(SubprocessLauncher* self, SubprocessFlags flags);
		[LinkName("g_subprocess_launcher_set_stderr_file_path")]
		public static extern void SetStderrFilePath(SubprocessLauncher* self, char8* path);
		[LinkName("g_subprocess_launcher_set_stdin_file_path")]
		public static extern void SetStdinFilePath(SubprocessLauncher* self, char8* path);
		[LinkName("g_subprocess_launcher_set_stdout_file_path")]
		public static extern void SetStdoutFilePath(SubprocessLauncher* self, char8* path);
		[LinkName("g_subprocess_launcher_setenv")]
		public static extern void Setenv(SubprocessLauncher* self, char8* variable, char8* value, c_int overwrite);
		[LinkName("g_subprocess_launcher_spawnv")]
		public static extern Subprocess* Spawnv(SubprocessLauncher* self, char8** argv);
		[LinkName("g_subprocess_launcher_take_fd")]
		public static extern void TakeFd(SubprocessLauncher* self, c_int source_fd, c_int target_fd);
		[LinkName("g_subprocess_launcher_take_stderr_fd")]
		public static extern void TakeStderrFd(SubprocessLauncher* self, c_int fd);
		[LinkName("g_subprocess_launcher_take_stdin_fd")]
		public static extern void TakeStdinFd(SubprocessLauncher* self, c_int fd);
		[LinkName("g_subprocess_launcher_take_stdout_fd")]
		public static extern void TakeStdoutFd(SubprocessLauncher* self, c_int fd);
		[LinkName("g_subprocess_launcher_unsetenv")]
		public static extern void Unsetenv(SubprocessLauncher* self, char8* variable);
	}
	[CRepr]
	public struct Task : GObject.Object
	{
		[LinkName("g_task_new")]
		public static extern Task* New(GObject.Object* source_object, Cancellable* cancellable, AsyncReadyCallback callback, void* callback_data);
		[LinkName("g_task_get_cancellable")]
		public static extern Cancellable* GetCancellable(Task* task);
		[LinkName("g_task_get_check_cancellable")]
		public static extern c_int GetCheckCancellable(Task* task);
		[LinkName("g_task_get_completed")]
		public static extern c_int GetCompleted(Task* task);
		[LinkName("g_task_get_context")]
		public static extern GLib.MainContext* GetContext(Task* task);
		[LinkName("g_task_get_name")]
		public static extern char8* GetName(Task* task);
		[LinkName("g_task_get_priority")]
		public static extern c_int GetPriority(Task* task);
		[LinkName("g_task_get_return_on_cancel")]
		public static extern c_int GetReturnOnCancel(Task* task);
		[LinkName("g_task_get_source_object")]
		public static extern GObject.Object* GetSourceObject(Task* task);
		[LinkName("g_task_get_source_tag")]
		public static extern void* GetSourceTag(Task* task);
		[LinkName("g_task_get_task_data")]
		public static extern void* GetTaskData(Task* task);
		[LinkName("g_task_had_error")]
		public static extern c_int HadError(Task* task);
		[LinkName("g_task_propagate_boolean")]
		public static extern c_int PropagateBoolean(Task* task);
		[LinkName("g_task_propagate_int")]
		public static extern c_long PropagateInt(Task* task);
		[LinkName("g_task_propagate_pointer")]
		public static extern void* PropagatePointer(Task* task);
		[LinkName("g_task_propagate_value")]
		public static extern c_int PropagateValue(Task* task, GObject.Value* value);
		[LinkName("g_task_return_boolean")]
		public static extern void ReturnBoolean(Task* task, c_int result);
		[LinkName("g_task_return_error")]
		public static extern void ReturnError(Task* task, GLib.Error* error);
		[LinkName("g_task_return_error_if_cancelled")]
		public static extern c_int ReturnErrorIfCancelled(Task* task);
		[LinkName("g_task_return_int")]
		public static extern void ReturnInt(Task* task, c_long result);
		[LinkName("g_task_return_pointer")]
		public static extern void ReturnPointer(Task* task, void* result, GLib.DestroyNotify result_destroy);
		[LinkName("g_task_return_value")]
		public static extern void ReturnValue(Task* task, GObject.Value* result);
		[LinkName("g_task_run_in_thread")]
		public static extern void RunInThread(Task* task, TaskThreadFunc task_func);
		[LinkName("g_task_run_in_thread_sync")]
		public static extern void RunInThreadSync(Task* task, TaskThreadFunc task_func);
		[LinkName("g_task_set_check_cancellable")]
		public static extern void SetCheckCancellable(Task* task, c_int check_cancellable);
		[LinkName("g_task_set_name")]
		public static extern void SetName(Task* task, char8* name);
		[LinkName("g_task_set_priority")]
		public static extern void SetPriority(Task* task, c_int priority);
		[LinkName("g_task_set_return_on_cancel")]
		public static extern c_int SetReturnOnCancel(Task* task, c_int return_on_cancel);
		[LinkName("g_task_set_source_tag")]
		public static extern void SetSourceTag(Task* task, void* source_tag);
		[LinkName("g_task_set_static_name")]
		public static extern void SetStaticName(Task* task, char8* name);
		[LinkName("g_task_set_task_data")]
		public static extern void SetTaskData(Task* task, void* task_data, GLib.DestroyNotify task_data_destroy);
	}
	[CRepr]
	public struct TcpConnection : SocketConnection
	{
		[LinkName("g_tcp_connection_get_graceful_disconnect")]
		public static extern c_int GetGracefulDisconnect(TcpConnection* connection);
		[LinkName("g_tcp_connection_set_graceful_disconnect")]
		public static extern void SetGracefulDisconnect(TcpConnection* connection, c_int graceful_disconnect);
	}
	[CRepr]
	public struct TcpWrapperConnection : TcpConnection
	{
		[LinkName("g_tcp_wrapper_connection_new")]
		public static extern SocketConnection* New(IOStream* base_io_stream, Socket* socket);
		[LinkName("g_tcp_wrapper_connection_get_base_io_stream")]
		public static extern IOStream* GetBaseIoStream(TcpWrapperConnection* conn);
	}
	[CRepr]
	public struct TestDBus : GObject.Object
	{
		[LinkName("g_test_dbus_new")]
		public static extern TestDBus* New(TestDBusFlags flags);
		[LinkName("g_test_dbus_add_service_dir")]
		public static extern void AddServiceDir(TestDBus* self, char8* path);
		[LinkName("g_test_dbus_down")]
		public static extern void Down(TestDBus* self);
		[LinkName("g_test_dbus_get_bus_address")]
		public static extern char8* GetBusAddress(TestDBus* self);
		[LinkName("g_test_dbus_get_flags")]
		public static extern TestDBusFlags GetFlags(TestDBus* self);
		[LinkName("g_test_dbus_stop")]
		public static extern void Stop(TestDBus* self);
		[LinkName("g_test_dbus_up")]
		public static extern void Up(TestDBus* self);
	}
	[CRepr]
	public struct ThemedIcon : GObject.Object
	{
		[LinkName("g_themed_icon_new")]
		public static extern ThemedIcon* New(char8* iconname);
		[LinkName("g_themed_icon_new_from_names")]
		public static extern ThemedIcon* NewFromNames(char8** iconnames, c_int len);
		[LinkName("g_themed_icon_new_with_default_fallbacks")]
		public static extern ThemedIcon* NewWithDefaultFallbacks(char8* iconname);
		[LinkName("g_themed_icon_append_name")]
		public static extern void AppendName(ThemedIcon* icon, char8* iconname);
		[LinkName("g_themed_icon_get_names")]
		public static extern char8* GetNames(ThemedIcon* icon);
		[LinkName("g_themed_icon_prepend_name")]
		public static extern void PrependName(ThemedIcon* icon, char8* iconname);
	}
	[CRepr]
	public struct ThreadedSocketService : SocketService
	{
		[LinkName("g_threaded_socket_service_new")]
		public static extern SocketService* New(c_int max_threads);
		public function c_int RunFunc(ThreadedSocketService* self, SocketConnection connection, GObject.Object source_object, void* user_data);
	}
	[CRepr]
	public struct TlsCertificate : GObject.Object
	{
		[LinkName("g_tls_certificate_new_from_file")]
		public static extern TlsCertificate* NewFromFile(char8* file);
		[LinkName("g_tls_certificate_new_from_file_with_password")]
		public static extern TlsCertificate* NewFromFileWithPassword(char8* file, char8* password);
		[LinkName("g_tls_certificate_new_from_files")]
		public static extern TlsCertificate* NewFromFiles(char8* cert_file, char8* key_file);
		[LinkName("g_tls_certificate_new_from_pem")]
		public static extern TlsCertificate* NewFromPem(char8* data, c_long length);
		[LinkName("g_tls_certificate_new_from_pkcs11_uris")]
		public static extern TlsCertificate* NewFromPkcs11Uris(char8* pkcs11_uri, char8* private_key_pkcs11_uri);
		[LinkName("g_tls_certificate_new_from_pkcs12")]
		public static extern TlsCertificate* NewFromPkcs12(c_uchar* data, c_ulong length, char8* password);
		[LinkName("g_tls_certificate_get_dns_names")]
		public static extern GLib.Bytes* GetDnsNames(TlsCertificate* cert);
		[LinkName("g_tls_certificate_get_ip_addresses")]
		public static extern InetAddress* GetIpAddresses(TlsCertificate* cert);
		[LinkName("g_tls_certificate_get_issuer")]
		public static extern TlsCertificate* GetIssuer(TlsCertificate* cert);
		[LinkName("g_tls_certificate_get_issuer_name")]
		public static extern char8* GetIssuerName(TlsCertificate* cert);
		[LinkName("g_tls_certificate_get_not_valid_after")]
		public static extern GLib.DateTime* GetNotValidAfter(TlsCertificate* cert);
		[LinkName("g_tls_certificate_get_not_valid_before")]
		public static extern GLib.DateTime* GetNotValidBefore(TlsCertificate* cert);
		[LinkName("g_tls_certificate_get_subject_name")]
		public static extern char8* GetSubjectName(TlsCertificate* cert);
		[LinkName("g_tls_certificate_is_same")]
		public static extern c_int IsSame(TlsCertificate* cert_one, TlsCertificate* cert_two);
		[LinkName("g_tls_certificate_verify")]
		public static extern TlsCertificateFlags Verify(TlsCertificate* cert, SocketConnectable* identity, TlsCertificate* trusted_ca);
	}
	[CRepr]
	public struct TlsConnection : IOStream
	{
		[LinkName("g_tls_connection_emit_accept_certificate")]
		public static extern c_int EmitAcceptCertificate(TlsConnection* conn, TlsCertificate* peer_cert, TlsCertificateFlags errors);
		[LinkName("g_tls_connection_get_certificate")]
		public static extern TlsCertificate* GetCertificate(TlsConnection* conn);
		[LinkName("g_tls_connection_get_channel_binding_data")]
		public static extern c_int GetChannelBindingData(TlsConnection* conn, TlsChannelBindingType type, c_uchar* data);
		[LinkName("g_tls_connection_get_ciphersuite_name")]
		public static extern char8* GetCiphersuiteName(TlsConnection* conn);
		[LinkName("g_tls_connection_get_database")]
		public static extern TlsDatabase* GetDatabase(TlsConnection* conn);
		[LinkName("g_tls_connection_get_interaction")]
		public static extern TlsInteraction* GetInteraction(TlsConnection* conn);
		[LinkName("g_tls_connection_get_negotiated_protocol")]
		public static extern char8* GetNegotiatedProtocol(TlsConnection* conn);
		[LinkName("g_tls_connection_get_peer_certificate")]
		public static extern TlsCertificate* GetPeerCertificate(TlsConnection* conn);
		[LinkName("g_tls_connection_get_peer_certificate_errors")]
		public static extern TlsCertificateFlags GetPeerCertificateErrors(TlsConnection* conn);
		[LinkName("g_tls_connection_get_protocol_version")]
		public static extern TlsProtocolVersion GetProtocolVersion(TlsConnection* conn);
		[LinkName("g_tls_connection_get_rehandshake_mode")]
		public static extern TlsRehandshakeMode GetRehandshakeMode(TlsConnection* conn);
		[LinkName("g_tls_connection_get_require_close_notify")]
		public static extern c_int GetRequireCloseNotify(TlsConnection* conn);
		[LinkName("g_tls_connection_get_use_system_certdb")]
		public static extern c_int GetUseSystemCertdb(TlsConnection* conn);
		[LinkName("g_tls_connection_handshake")]
		public static extern c_int Handshake(TlsConnection* conn, Cancellable* cancellable);
		[LinkName("g_tls_connection_handshake_async")]
		public static extern void HandshakeAsync(TlsConnection* conn, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_tls_connection_handshake_finish")]
		public static extern c_int HandshakeFinish(TlsConnection* conn, AsyncResult* result);
		[LinkName("g_tls_connection_set_advertised_protocols")]
		public static extern void SetAdvertisedProtocols(TlsConnection* conn, char8** protocols);
		[LinkName("g_tls_connection_set_certificate")]
		public static extern void SetCertificate(TlsConnection* conn, TlsCertificate* certificate);
		[LinkName("g_tls_connection_set_database")]
		public static extern void SetDatabase(TlsConnection* conn, TlsDatabase* database);
		[LinkName("g_tls_connection_set_interaction")]
		public static extern void SetInteraction(TlsConnection* conn, TlsInteraction* interaction);
		[LinkName("g_tls_connection_set_rehandshake_mode")]
		public static extern void SetRehandshakeMode(TlsConnection* conn, TlsRehandshakeMode mode);
		[LinkName("g_tls_connection_set_require_close_notify")]
		public static extern void SetRequireCloseNotify(TlsConnection* conn, c_int require_close_notify);
		[LinkName("g_tls_connection_set_use_system_certdb")]
		public static extern void SetUseSystemCertdb(TlsConnection* conn, c_int use_system_certdb);
		public function c_int AcceptCertificateFunc(TlsConnection* self, TlsCertificate peer_cert, TlsCertificateFlags errors, void* user_data);
	}
	[CRepr]
	public struct TlsDatabase : GObject.Object
	{
		[LinkName("g_tls_database_create_certificate_handle")]
		public static extern char8* CreateCertificateHandle(TlsDatabase* self, TlsCertificate* certificate);
		[LinkName("g_tls_database_lookup_certificate_for_handle")]
		public static extern TlsCertificate* LookupCertificateForHandle(TlsDatabase* self, char8* handle, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable);
		[LinkName("g_tls_database_lookup_certificate_for_handle_async")]
		public static extern void LookupCertificateForHandleAsync(TlsDatabase* self, char8* handle, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_tls_database_lookup_certificate_for_handle_finish")]
		public static extern TlsCertificate* LookupCertificateForHandleFinish(TlsDatabase* self, AsyncResult* result);
		[LinkName("g_tls_database_lookup_certificate_issuer")]
		public static extern TlsCertificate* LookupCertificateIssuer(TlsDatabase* self, TlsCertificate* certificate, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable);
		[LinkName("g_tls_database_lookup_certificate_issuer_async")]
		public static extern void LookupCertificateIssuerAsync(TlsDatabase* self, TlsCertificate* certificate, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_tls_database_lookup_certificate_issuer_finish")]
		public static extern TlsCertificate* LookupCertificateIssuerFinish(TlsDatabase* self, AsyncResult* result);
		[LinkName("g_tls_database_lookup_certificates_issued_by")]
		public static extern GLib.List* LookupCertificatesIssuedBy(TlsDatabase* self, c_uchar* issuer_raw_dn, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable);
		[LinkName("g_tls_database_lookup_certificates_issued_by_async")]
		public static extern void LookupCertificatesIssuedByAsync(TlsDatabase* self, c_uchar* issuer_raw_dn, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_tls_database_lookup_certificates_issued_by_finish")]
		public static extern GLib.List* LookupCertificatesIssuedByFinish(TlsDatabase* self, AsyncResult* result);
		[LinkName("g_tls_database_verify_chain")]
		public static extern TlsCertificateFlags VerifyChain(TlsDatabase* self, TlsCertificate* chain, char8* purpose, SocketConnectable* identity, TlsInteraction* interaction, TlsDatabaseVerifyFlags flags, Cancellable* cancellable);
		[LinkName("g_tls_database_verify_chain_async")]
		public static extern void VerifyChainAsync(TlsDatabase* self, TlsCertificate* chain, char8* purpose, SocketConnectable* identity, TlsInteraction* interaction, TlsDatabaseVerifyFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_tls_database_verify_chain_finish")]
		public static extern TlsCertificateFlags VerifyChainFinish(TlsDatabase* self, AsyncResult* result);
	}
	[CRepr]
	public struct TlsInteraction : GObject.Object
	{
		[LinkName("g_tls_interaction_ask_password")]
		public static extern TlsInteractionResult AskPassword(TlsInteraction* interaction, TlsPassword* password, Cancellable* cancellable);
		[LinkName("g_tls_interaction_ask_password_async")]
		public static extern void AskPasswordAsync(TlsInteraction* interaction, TlsPassword* password, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_tls_interaction_ask_password_finish")]
		public static extern TlsInteractionResult AskPasswordFinish(TlsInteraction* interaction, AsyncResult* result);
		[LinkName("g_tls_interaction_invoke_ask_password")]
		public static extern TlsInteractionResult InvokeAskPassword(TlsInteraction* interaction, TlsPassword* password, Cancellable* cancellable);
		[LinkName("g_tls_interaction_invoke_request_certificate")]
		public static extern TlsInteractionResult InvokeRequestCertificate(TlsInteraction* interaction, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable);
		[LinkName("g_tls_interaction_request_certificate")]
		public static extern TlsInteractionResult RequestCertificate(TlsInteraction* interaction, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable);
		[LinkName("g_tls_interaction_request_certificate_async")]
		public static extern void RequestCertificateAsync(TlsInteraction* interaction, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_tls_interaction_request_certificate_finish")]
		public static extern TlsInteractionResult RequestCertificateFinish(TlsInteraction* interaction, AsyncResult* result);
	}
	[CRepr]
	public struct TlsPassword : GObject.Object
	{
		[LinkName("g_tls_password_new")]
		public static extern TlsPassword* New(TlsPasswordFlags flags, char8* description);
		[LinkName("g_tls_password_get_description")]
		public static extern char8* GetDescription(TlsPassword* password);
		[LinkName("g_tls_password_get_flags")]
		public static extern TlsPasswordFlags GetFlags(TlsPassword* password);
		[LinkName("g_tls_password_get_value")]
		public static extern c_uchar* GetValue(TlsPassword* password, c_ulong* length);
		[LinkName("g_tls_password_get_warning")]
		public static extern char8* GetWarning(TlsPassword* password);
		[LinkName("g_tls_password_set_description")]
		public static extern void SetDescription(TlsPassword* password, char8* description);
		[LinkName("g_tls_password_set_flags")]
		public static extern void SetFlags(TlsPassword* password, TlsPasswordFlags flags);
		[LinkName("g_tls_password_set_value")]
		public static extern void SetValue(TlsPassword* password, c_uchar* value, c_long length);
		[LinkName("g_tls_password_set_value_full")]
		public static extern void SetValueFull(TlsPassword* password, c_uchar* value, c_long length, GLib.DestroyNotify destroy);
		[LinkName("g_tls_password_set_warning")]
		public static extern void SetWarning(TlsPassword* password, char8* warning);
	}
	[CRepr]
	public struct UnixConnection : SocketConnection
	{
		[LinkName("g_unix_connection_receive_credentials")]
		public static extern Credentials* ReceiveCredentials(UnixConnection* connection, Cancellable* cancellable);
		[LinkName("g_unix_connection_receive_credentials_async")]
		public static extern void ReceiveCredentialsAsync(UnixConnection* connection, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_unix_connection_receive_credentials_finish")]
		public static extern Credentials* ReceiveCredentialsFinish(UnixConnection* connection, AsyncResult* result);
		[LinkName("g_unix_connection_receive_fd")]
		public static extern c_int ReceiveFd(UnixConnection* connection, Cancellable* cancellable);
		[LinkName("g_unix_connection_send_credentials")]
		public static extern c_int SendCredentials(UnixConnection* connection, Cancellable* cancellable);
		[LinkName("g_unix_connection_send_credentials_async")]
		public static extern void SendCredentialsAsync(UnixConnection* connection, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_unix_connection_send_credentials_finish")]
		public static extern c_int SendCredentialsFinish(UnixConnection* connection, AsyncResult* result);
		[LinkName("g_unix_connection_send_fd")]
		public static extern c_int SendFd(UnixConnection* connection, c_int fd, Cancellable* cancellable);
	}
	[CRepr]
	public struct UnixCredentialsMessage : SocketControlMessage
	{
		[LinkName("g_unix_credentials_message_new")]
		public static extern SocketControlMessage* New();
		[LinkName("g_unix_credentials_message_new_with_credentials")]
		public static extern SocketControlMessage* NewWithCredentials(Credentials* credentials);
		[LinkName("g_unix_credentials_message_get_credentials")]
		public static extern Credentials* GetCredentials(UnixCredentialsMessage* message);
	}
	[CRepr]
	public struct UnixFDList : GObject.Object
	{
		[LinkName("g_unix_fd_list_new")]
		public static extern UnixFDList* New();
		[LinkName("g_unix_fd_list_new_from_array")]
		public static extern UnixFDList* NewFromArray(c_int* fds, c_int n_fds);
		[LinkName("g_unix_fd_list_append")]
		public static extern c_int Append(UnixFDList* list, c_int fd);
		[LinkName("g_unix_fd_list_get")]
		public static extern c_int Get(UnixFDList* list, c_int index_);
		[LinkName("g_unix_fd_list_get_length")]
		public static extern c_int GetLength(UnixFDList* list);
		[LinkName("g_unix_fd_list_peek_fds")]
		public static extern c_int* PeekFds(UnixFDList* list, c_int* length);
		[LinkName("g_unix_fd_list_steal_fds")]
		public static extern c_int* StealFds(UnixFDList* list, c_int* length);
	}
	[CRepr]
	public struct UnixFDMessage : SocketControlMessage
	{
		[LinkName("g_unix_fd_message_new")]
		public static extern SocketControlMessage* New();
		[LinkName("g_unix_fd_message_new_with_fd_list")]
		public static extern SocketControlMessage* NewWithFdList(UnixFDList* fd_list);
		[LinkName("g_unix_fd_message_append_fd")]
		public static extern c_int AppendFd(UnixFDMessage* message, c_int fd);
		[LinkName("g_unix_fd_message_get_fd_list")]
		public static extern UnixFDList* GetFdList(UnixFDMessage* message);
		[LinkName("g_unix_fd_message_steal_fds")]
		public static extern c_int* StealFds(UnixFDMessage* message, c_int* length);
	}
	[CRepr]
	public struct UnixInputStream : InputStream
	{
		[LinkName("g_unix_input_stream_new")]
		public static extern InputStream* New(c_int fd, c_int close_fd);
		[LinkName("g_unix_input_stream_get_close_fd")]
		public static extern c_int GetCloseFd(UnixInputStream* stream);
		[LinkName("g_unix_input_stream_get_fd")]
		public static extern c_int GetFd(UnixInputStream* stream);
		[LinkName("g_unix_input_stream_set_close_fd")]
		public static extern void SetCloseFd(UnixInputStream* stream, c_int close_fd);
	}
	[CRepr]
	public struct UnixMountMonitor : GObject.Object
	{
		[LinkName("g_unix_mount_monitor_new")]
		public static extern UnixMountMonitor* New();
		[LinkName("g_unix_mount_monitor_set_rate_limit")]
		public static extern void SetRateLimit(UnixMountMonitor* mount_monitor, c_int limit_msec);
		public function void MountpointsChangedFunc(UnixMountMonitor* self, void* user_data);
		public function void MountsChangedFunc(UnixMountMonitor* self, void* user_data);
	}
	[CRepr]
	public struct UnixOutputStream : OutputStream
	{
		[LinkName("g_unix_output_stream_new")]
		public static extern OutputStream* New(c_int fd, c_int close_fd);
		[LinkName("g_unix_output_stream_get_close_fd")]
		public static extern c_int GetCloseFd(UnixOutputStream* stream);
		[LinkName("g_unix_output_stream_get_fd")]
		public static extern c_int GetFd(UnixOutputStream* stream);
		[LinkName("g_unix_output_stream_set_close_fd")]
		public static extern void SetCloseFd(UnixOutputStream* stream, c_int close_fd);
	}
	[CRepr]
	public struct UnixSocketAddress : SocketAddress
	{
		[LinkName("g_unix_socket_address_new")]
		public static extern SocketAddress* New(char8* path);
		[LinkName("g_unix_socket_address_new_abstract")]
		public static extern SocketAddress* NewAbstract(c_char* path, c_int path_len);
		[LinkName("g_unix_socket_address_new_with_type")]
		public static extern SocketAddress* NewWithType(c_char* path, c_int path_len, UnixSocketAddressType type);
		[LinkName("g_unix_socket_address_get_address_type")]
		public static extern UnixSocketAddressType GetAddressType(UnixSocketAddress* address);
		[LinkName("g_unix_socket_address_get_is_abstract")]
		public static extern c_int GetIsAbstract(UnixSocketAddress* address);
		[LinkName("g_unix_socket_address_get_path")]
		public static extern char8* GetPath(UnixSocketAddress* address);
		[LinkName("g_unix_socket_address_get_path_len")]
		public static extern c_ulong GetPathLen(UnixSocketAddress* address);
	}
	[CRepr]
	public struct Vfs : GObject.Object
	{
		[LinkName("g_vfs_get_file_for_path")]
		public static extern File* GetFileForPath(Vfs* vfs, char8* path);
		[LinkName("g_vfs_get_file_for_uri")]
		public static extern File* GetFileForUri(Vfs* vfs, char8* uri);
		[LinkName("g_vfs_get_supported_uri_schemes")]
		public static extern char8* GetSupportedUriSchemes(Vfs* vfs);
		[LinkName("g_vfs_is_active")]
		public static extern c_int IsActive(Vfs* vfs);
		[LinkName("g_vfs_parse_name")]
		public static extern File* ParseName(Vfs* vfs, char8* parse_name);
		[LinkName("g_vfs_register_uri_scheme")]
		public static extern c_int RegisterUriScheme(Vfs* vfs, char8* scheme, VfsFileLookupFunc uri_func, void* uri_data, GLib.DestroyNotify uri_destroy, VfsFileLookupFunc parse_name_func, void* parse_name_data, GLib.DestroyNotify parse_name_destroy);
		[LinkName("g_vfs_unregister_uri_scheme")]
		public static extern c_int UnregisterUriScheme(Vfs* vfs, char8* scheme);
	}
	[CRepr]
	public struct VolumeMonitor : GObject.Object
	{
		[LinkName("g_volume_monitor_get_connected_drives")]
		public static extern GLib.List* GetConnectedDrives(VolumeMonitor* volume_monitor);
		[LinkName("g_volume_monitor_get_mount_for_uuid")]
		public static extern Mount* GetMountForUuid(VolumeMonitor* volume_monitor, char8* uuid);
		[LinkName("g_volume_monitor_get_mounts")]
		public static extern GLib.List* GetMounts(VolumeMonitor* volume_monitor);
		[LinkName("g_volume_monitor_get_volume_for_uuid")]
		public static extern Volume* GetVolumeForUuid(VolumeMonitor* volume_monitor, char8* uuid);
		[LinkName("g_volume_monitor_get_volumes")]
		public static extern GLib.List* GetVolumes(VolumeMonitor* volume_monitor);
		public function void DriveChangedFunc(VolumeMonitor* self, Drive drive, void* user_data);
		public function void DriveConnectedFunc(VolumeMonitor* self, Drive drive, void* user_data);
		public function void DriveDisconnectedFunc(VolumeMonitor* self, Drive drive, void* user_data);
		public function void DriveEjectButtonFunc(VolumeMonitor* self, Drive drive, void* user_data);
		public function void DriveStopButtonFunc(VolumeMonitor* self, Drive drive, void* user_data);
		public function void MountAddedFunc(VolumeMonitor* self, Mount mount, void* user_data);
		public function void MountChangedFunc(VolumeMonitor* self, Mount mount, void* user_data);
		public function void MountPreUnmountFunc(VolumeMonitor* self, Mount mount, void* user_data);
		public function void MountRemovedFunc(VolumeMonitor* self, Mount mount, void* user_data);
		public function void VolumeAddedFunc(VolumeMonitor* self, Volume volume, void* user_data);
		public function void VolumeChangedFunc(VolumeMonitor* self, Volume volume, void* user_data);
		public function void VolumeRemovedFunc(VolumeMonitor* self, Volume volume, void* user_data);
	}
	[CRepr]
	public struct ZlibCompressor : GObject.Object
	{
		[LinkName("g_zlib_compressor_new")]
		public static extern ZlibCompressor* New(ZlibCompressorFormat format, c_int level);
		[LinkName("g_zlib_compressor_get_file_info")]
		public static extern FileInfo* GetFileInfo(ZlibCompressor* compressor);
		[LinkName("g_zlib_compressor_set_file_info")]
		public static extern void SetFileInfo(ZlibCompressor* compressor, FileInfo* file_info);
	}
	[CRepr]
	public struct ZlibDecompressor : GObject.Object
	{
		[LinkName("g_zlib_decompressor_new")]
		public static extern ZlibDecompressor* New(ZlibCompressorFormat format);
		[LinkName("g_zlib_decompressor_get_file_info")]
		public static extern FileInfo* GetFileInfo(ZlibDecompressor* decompressor);
	}
		[LinkName("g_action_name_is_valid")]
		public static extern c_int ActionNameIsValid(char8* action_name);
		[LinkName("g_action_parse_detailed_name")]
		public static extern c_int ActionParseDetailedName(char8* detailed_name, char8** action_name, GLib.Variant** target_value);
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
		public static extern char8** ContentTypeGuessForTree(File* root);
		[LinkName("g_content_type_is_a")]
		public static extern c_int ContentTypeIsA(char8* type, char8* supertype);
		[LinkName("g_content_type_is_mime_type")]
		public static extern c_int ContentTypeIsMimeType(char8* type, char8* mime_type);
		[LinkName("g_content_type_is_unknown")]
		public static extern c_int ContentTypeIsUnknown(char8* type);
		[LinkName("g_content_type_set_mime_dirs")]
		public static extern void ContentTypeSetMimeDirs(char8** dirs);
		[LinkName("g_content_types_get_registered")]
		public static extern GLib.List* ContentTypesGetRegistered();
		[LinkName("g_dbus_address_escape_value")]
		public static extern char8* DbusAddressEscapeValue(char8* string);
		[LinkName("g_dbus_address_get_for_bus_sync")]
		public static extern char8* DbusAddressGetForBusSync(BusType bus_type, Cancellable* cancellable);
		[LinkName("g_dbus_address_get_stream")]
		public static extern void DbusAddressGetStream(char8* address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_dbus_address_get_stream_finish")]
		public static extern IOStream* DbusAddressGetStreamFinish(AsyncResult* res, char8** out_guid);
		[LinkName("g_dbus_address_get_stream_sync")]
		public static extern IOStream* DbusAddressGetStreamSync(char8* address, char8** out_guid, Cancellable* cancellable);
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
		public static extern c_uchar* DbusUnescapeObjectPath(char8* s);
		[LinkName("g_dtls_client_connection_new")]
		public static extern DtlsClientConnection* DtlsClientConnectionNew(DatagramBased* base_socket, SocketConnectable* server_identity);
		[LinkName("g_dtls_server_connection_new")]
		public static extern DtlsServerConnection* DtlsServerConnectionNew(DatagramBased* base_socket, TlsCertificate* certificate);
		[LinkName("g_file_new_for_commandline_arg")]
		public static extern File* FileNewForCommandlineArg(char8* arg);
		[LinkName("g_file_new_for_commandline_arg_and_cwd")]
		public static extern File* FileNewForCommandlineArgAndCwd(char8* arg, char8* cwd);
		[LinkName("g_file_new_for_path")]
		public static extern File* FileNewForPath(char8* path);
		[LinkName("g_file_new_for_uri")]
		public static extern File* FileNewForUri(char8* uri);
		[LinkName("g_file_new_tmp")]
		public static extern File* FileNewTmp(char8* tmpl, FileIOStream** iostream);
		[LinkName("g_file_new_tmp_async")]
		public static extern void FileNewTmpAsync(char8* tmpl, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_file_new_tmp_dir_async")]
		public static extern void FileNewTmpDirAsync(char8* tmpl, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data);
		[LinkName("g_file_new_tmp_dir_finish")]
		public static extern File* FileNewTmpDirFinish(AsyncResult* result);
		[LinkName("g_file_new_tmp_finish")]
		public static extern File* FileNewTmpFinish(AsyncResult* result, FileIOStream** iostream);
		[LinkName("g_file_parse_name")]
		public static extern File* FileParseName(char8* parse_name);
	[CRepr]
	public struct ActionEntry
	{
		public char8* name;
		public function void(SimpleAction* action, GLib.Variant* parameter, void* user_data) activate;
		public char8* parameter_type;
		public char8* state;
		public function void(SimpleAction* action, GLib.Variant* value, void* user_data) change_state;
		public c_ulong padding;
	}
	[CRepr]
	public struct ActionGroupInterface
	{
		public GObject.TypeInterface g_iface;
		public function c_int(ActionGroup* action_group, char8* action_name) has_action;
		public function char8**(ActionGroup* action_group) list_actions;
		public function c_int(ActionGroup* action_group, char8* action_name) get_action_enabled;
		public function GLib.VariantType*(ActionGroup* action_group, char8* action_name) get_action_parameter_type;
		public function GLib.VariantType*(ActionGroup* action_group, char8* action_name) get_action_state_type;
		public function GLib.Variant*(ActionGroup* action_group, char8* action_name) get_action_state_hint;
		public function GLib.Variant*(ActionGroup* action_group, char8* action_name) get_action_state;
		public function void(ActionGroup* action_group, char8* action_name, GLib.Variant* value) change_action_state;
		public function void(ActionGroup* action_group, char8* action_name, GLib.Variant* parameter) activate_action;
		public function void(ActionGroup* action_group, char8* action_name) action_added;
		public function void(ActionGroup* action_group, char8* action_name) action_removed;
		public function void(ActionGroup* action_group, char8* action_name, c_int enabled) action_enabled_changed;
		public function void(ActionGroup* action_group, char8* action_name, GLib.Variant* state) action_state_changed;
		public function c_int(ActionGroup* action_group, char8* action_name, c_int* enabled, GLib.VariantType** parameter_type, GLib.VariantType** state_type, GLib.Variant** state_hint, GLib.Variant** state) query_action;
	}
	[CRepr]
	public struct ActionInterface
	{
		public GObject.TypeInterface g_iface;
		public function char8*(Action* action) get_name;
		public function GLib.VariantType*(Action* action) get_parameter_type;
		public function GLib.VariantType*(Action* action) get_state_type;
		public function GLib.Variant*(Action* action) get_state_hint;
		public function c_int(Action* action) get_enabled;
		public function GLib.Variant*(Action* action) get_state;
		public function void(Action* action, GLib.Variant* value) change_state;
		public function void(Action* action, GLib.Variant* parameter) activate;
	}
	[CRepr]
	public struct ActionMapInterface
	{
		public GObject.TypeInterface g_iface;
		public function Action*(ActionMap* action_map, char8* action_name) lookup_action;
		public function void(ActionMap* action_map, Action* action) add_action;
		public function void(ActionMap* action_map, char8* action_name) remove_action;
	}
	[CRepr]
	public struct AppInfoIface
	{
		public GObject.TypeInterface g_iface;
		public function AppInfo*(AppInfo* appinfo) dup;
		public function c_int(AppInfo* appinfo1, AppInfo* appinfo2) equal;
		public function char8*(AppInfo* appinfo) get_id;
		public function char8*(AppInfo* appinfo) get_name;
		public function char8*(AppInfo* appinfo) get_description;
		public function char8*(AppInfo* appinfo) get_executable;
		public function Icon*(AppInfo* appinfo) get_icon;
		public function c_int(AppInfo* appinfo, GLib.List* files, AppLaunchContext* context) launch;
		public function c_int(AppInfo* appinfo) supports_uris;
		public function c_int(AppInfo* appinfo) supports_files;
		public function c_int(AppInfo* appinfo, GLib.List* uris, AppLaunchContext* context) launch_uris;
		public function c_int(AppInfo* appinfo) should_show;
		public function c_int(AppInfo* appinfo, char8* content_type) set_as_default_for_type;
		public function c_int(AppInfo* appinfo, char8* extension_) set_as_default_for_extension;
		public function c_int(AppInfo* appinfo, char8* content_type) add_supports_type;
		public function c_int(AppInfo* appinfo) can_remove_supports_type;
		public function c_int(AppInfo* appinfo, char8* content_type) remove_supports_type;
		public function c_int(AppInfo* appinfo) can_delete;
		public function c_int(AppInfo* appinfo) do_delete;
		public function char8*(AppInfo* appinfo) get_commandline;
		public function char8*(AppInfo* appinfo) get_display_name;
		public function c_int(AppInfo* appinfo, char8* content_type) set_as_last_used_for_type;
		public function char8**(AppInfo* appinfo) get_supported_types;
		public function void(AppInfo* appinfo, GLib.List* uris, AppLaunchContext* context, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) launch_uris_async;
		public function c_int(AppInfo* appinfo, AsyncResult* result) launch_uris_finish;
	}
	[CRepr]
	public struct AppLaunchContextClass
	{
		public GObject.ObjectClass parent_class;
		public function char8*(AppLaunchContext* context, AppInfo* info, GLib.List* files) get_display;
		public function char8*(AppLaunchContext* context, AppInfo* info, GLib.List* files) get_startup_notify_id;
		public function void(AppLaunchContext* context, char8* startup_notify_id) launch_failed;
		public function void(AppLaunchContext* context, AppInfo* info, GLib.Variant* platform_data) launched;
		public function void(AppLaunchContext* context, AppInfo* info, GLib.Variant* platform_data) launch_started;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
	}
	[CRepr]
	public struct AppLaunchContextPrivate : int
	{
	}
	[CRepr]
	public struct ApplicationClass
	{
		public GObject.ObjectClass parent_class;
		public function void(Application* application) startup;
		public function void(Application* application) activate;
		public function void(Application* application, File** files, c_int n_files, char8* hint) open;
		public function c_int(Application* application, ApplicationCommandLine* command_line) command_line;
		public function c_int(Application* application, char8*** arguments, c_int* exit_status) local_command_line;
		public function void(Application* application, GLib.Variant* platform_data) before_emit;
		public function void(Application* application, GLib.Variant* platform_data) after_emit;
		public function void(Application* application, GLib.VariantBuilder* builder) add_platform_data;
		public function void(Application* application) quit_mainloop;
		public function void(Application* application) run_mainloop;
		public function void(Application* application) shutdown;
		public function c_int(Application* application, DBusConnection* connection, char8* object_path) dbus_register;
		public function void(Application* application, DBusConnection* connection, char8* object_path) dbus_unregister;
		public function c_int(Application* application, GLib.VariantDict* options) handle_local_options;
		public function c_int(Application* application) name_lost;
		public void* padding;
	}
	[CRepr]
	public struct ApplicationCommandLineClass
	{
		public GObject.ObjectClass parent_class;
		public function void(ApplicationCommandLine* cmdline, char8* message) print_literal;
		public function void(ApplicationCommandLine* cmdline, char8* message) printerr_literal;
		public function InputStream*(ApplicationCommandLine* cmdline) get_stdin;
		public void* padding;
	}
	[CRepr]
	public struct ApplicationCommandLinePrivate : int
	{
	}
	[CRepr]
	public struct ApplicationPrivate : int
	{
	}
	[CRepr]
	public struct AsyncInitableIface
	{
		public GObject.TypeInterface g_iface;
		public function void(AsyncInitable* initable, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) init_async;
		public function c_int(AsyncInitable* initable, AsyncResult* res) init_finish;
	}
	[CRepr]
	public struct AsyncResultIface
	{
		public GObject.TypeInterface g_iface;
		public function void*(AsyncResult* res) get_user_data;
		public function GObject.Object*(AsyncResult* res) get_source_object;
		public function c_int(AsyncResult* res, void* source_tag) is_tagged;
	}
	[CRepr]
	public struct BufferedInputStreamClass
	{
		public FilterInputStreamClass parent_class;
		public function c_long(BufferedInputStream* stream, c_long count, Cancellable* cancellable) fill;
		public function void(BufferedInputStream* stream, c_long count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) fill_async;
		public function c_long(BufferedInputStream* stream, AsyncResult* result) fill_finish;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct BufferedInputStreamPrivate : int
	{
	}
	[CRepr]
	public struct BufferedOutputStreamClass
	{
		public FilterOutputStreamClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
	}
	[CRepr]
	public struct BufferedOutputStreamPrivate : int
	{
	}
	[CRepr]
	public struct CancellableClass
	{
		public GObject.ObjectClass parent_class;
		public function void(Cancellable* cancellable) cancelled;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct CancellablePrivate : int
	{
	}
	[CRepr]
	public struct CharsetConverterClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ConverterIface
	{
		public GObject.TypeInterface g_iface;
		public function ConverterResult(Converter* converter, c_uchar* inbuf, c_ulong inbuf_size, c_uchar* outbuf, c_ulong outbuf_size, ConverterFlags flags, c_ulong* bytes_read, c_ulong* bytes_written) convert;
		public function void(Converter* converter) reset;
	}
	[CRepr]
	public struct ConverterInputStreamClass
	{
		public FilterInputStreamClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct ConverterInputStreamPrivate : int
	{
	}
	[CRepr]
	public struct ConverterOutputStreamClass
	{
		public FilterOutputStreamClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct ConverterOutputStreamPrivate : int
	{
	}
	[CRepr]
	public struct CredentialsClass : int
	{
	}
	[CRepr]
	public struct DBusAnnotationInfo
	{
		public c_int ref_count;
		public char8* key;
		public char8* value;
		public DBusAnnotationInfo** annotations;
		[LinkName("g_dbus_annotation_info_ref")]
		public static extern DBusAnnotationInfo* Ref(DBusAnnotationInfo* info);
		[LinkName("g_dbus_annotation_info_unref")]
		public static extern void Unref(DBusAnnotationInfo* info);
	}
	[CRepr]
	public struct DBusArgInfo
	{
		public c_int ref_count;
		public char8* name;
		public char8* signature;
		public DBusAnnotationInfo** annotations;
		[LinkName("g_dbus_arg_info_ref")]
		public static extern DBusArgInfo* Ref(DBusArgInfo* info);
		[LinkName("g_dbus_arg_info_unref")]
		public static extern void Unref(DBusArgInfo* info);
	}
	[CRepr]
	public struct DBusErrorEntry
	{
		public c_int error_code;
		public char8* dbus_error_name;
	}
	[CRepr]
	public struct DBusInterfaceIface
	{
		public GObject.TypeInterface parent_iface;
		public function DBusInterfaceInfo*(DBusInterface* interface_) get_info;
		public function DBusObject*(DBusInterface* interface_) get_object;
		public function void(DBusInterface* interface_, DBusObject* object) set_object;
		public function DBusObject*(DBusInterface* interface_) dup_object;
	}
	[CRepr]
	public struct DBusInterfaceInfo
	{
		public c_int ref_count;
		public char8* name;
		public DBusMethodInfo** methods;
		public DBusSignalInfo** signals;
		public DBusPropertyInfo** properties;
		public DBusAnnotationInfo** annotations;
		[LinkName("g_dbus_interface_info_cache_build")]
		public static extern void CacheBuild(DBusInterfaceInfo* info);
		[LinkName("g_dbus_interface_info_cache_release")]
		public static extern void CacheRelease(DBusInterfaceInfo* info);
		[LinkName("g_dbus_interface_info_generate_xml")]
		public static extern void GenerateXml(DBusInterfaceInfo* info, c_uint indent, GLib.String* string_builder);
		[LinkName("g_dbus_interface_info_lookup_method")]
		public static extern DBusMethodInfo* LookupMethod(DBusInterfaceInfo* info, char8* name);
		[LinkName("g_dbus_interface_info_lookup_property")]
		public static extern DBusPropertyInfo* LookupProperty(DBusInterfaceInfo* info, char8* name);
		[LinkName("g_dbus_interface_info_lookup_signal")]
		public static extern DBusSignalInfo* LookupSignal(DBusInterfaceInfo* info, char8* name);
		[LinkName("g_dbus_interface_info_ref")]
		public static extern DBusInterfaceInfo* Ref(DBusInterfaceInfo* info);
		[LinkName("g_dbus_interface_info_unref")]
		public static extern void Unref(DBusInterfaceInfo* info);
	}
	[CRepr]
	public struct DBusInterfaceSkeletonClass
	{
		public GObject.ObjectClass parent_class;
		public function DBusInterfaceInfo*(DBusInterfaceSkeleton* interface_) get_info;
		public function DBusInterfaceVTable*(DBusInterfaceSkeleton* interface_) get_vtable;
		public function GLib.Variant*(DBusInterfaceSkeleton* interface_) get_properties;
		public function void(DBusInterfaceSkeleton* interface_) flush;
		public void* vfunc_padding;
		public function c_int(DBusInterfaceSkeleton* interface_, DBusMethodInvocation* invocation) g_authorize_method;
		public void* signal_padding;
	}
	[CRepr]
	public struct DBusInterfaceSkeletonPrivate : int
	{
	}
	[CRepr]
	public struct DBusInterfaceVTable
	{
		public DBusInterfaceMethodCallFunc method_call;
		public DBusInterfaceGetPropertyFunc get_property;
		public DBusInterfaceSetPropertyFunc set_property;
		public void* padding;
	}
	[CRepr]
	public struct DBusMethodInfo
	{
		public c_int ref_count;
		public char8* name;
		public DBusArgInfo** in_args;
		public DBusArgInfo** out_args;
		public DBusAnnotationInfo** annotations;
		[LinkName("g_dbus_method_info_ref")]
		public static extern DBusMethodInfo* Ref(DBusMethodInfo* info);
		[LinkName("g_dbus_method_info_unref")]
		public static extern void Unref(DBusMethodInfo* info);
	}
	[CRepr]
	public struct DBusNodeInfo
	{
		public c_int ref_count;
		public char8* path;
		public DBusInterfaceInfo** interfaces;
		public DBusNodeInfo** nodes;
		public DBusAnnotationInfo** annotations;
		[LinkName("g_dbus_node_info_new_for_xml")]
		public static extern DBusNodeInfo* NewForXml(char8* xml_data);
		[LinkName("g_dbus_node_info_generate_xml")]
		public static extern void GenerateXml(DBusNodeInfo* info, c_uint indent, GLib.String* string_builder);
		[LinkName("g_dbus_node_info_lookup_interface")]
		public static extern DBusInterfaceInfo* LookupInterface(DBusNodeInfo* info, char8* name);
		[LinkName("g_dbus_node_info_ref")]
		public static extern DBusNodeInfo* Ref(DBusNodeInfo* info);
		[LinkName("g_dbus_node_info_unref")]
		public static extern void Unref(DBusNodeInfo* info);
	}
	[CRepr]
	public struct DBusObjectIface
	{
		public GObject.TypeInterface parent_iface;
		public function char8*(DBusObject* object) get_object_path;
		public function GLib.List*(DBusObject* object) get_interfaces;
		public function DBusInterface*(DBusObject* object, char8* interface_name) get_interface;
		public function void(DBusObject* object, DBusInterface* interface_) interface_added;
		public function void(DBusObject* object, DBusInterface* interface_) interface_removed;
	}
	[CRepr]
	public struct DBusObjectManagerClientClass
	{
		public GObject.ObjectClass parent_class;
		public function void(DBusObjectManagerClient* manager, DBusObjectProxy* object_proxy, DBusProxy* interface_proxy, char8* sender_name, char8* signal_name, GLib.Variant* parameters) interface_proxy_signal;
		public function void(DBusObjectManagerClient* manager, DBusObjectProxy* object_proxy, DBusProxy* interface_proxy, GLib.Variant* changed_properties, char8** invalidated_properties) interface_proxy_properties_changed;
		public void* padding;
	}
	[CRepr]
	public struct DBusObjectManagerClientPrivate : int
	{
	}
	[CRepr]
	public struct DBusObjectManagerIface
	{
		public GObject.TypeInterface parent_iface;
		public function char8*(DBusObjectManager* manager) get_object_path;
		public function GLib.List*(DBusObjectManager* manager) get_objects;
		public function DBusObject*(DBusObjectManager* manager, char8* object_path) get_object;
		public function DBusInterface*(DBusObjectManager* manager, char8* object_path, char8* interface_name) get_interface;
		public function void(DBusObjectManager* manager, DBusObject* object) object_added;
		public function void(DBusObjectManager* manager, DBusObject* object) object_removed;
		public function void(DBusObjectManager* manager, DBusObject* object, DBusInterface* interface_) interface_added;
		public function void(DBusObjectManager* manager, DBusObject* object, DBusInterface* interface_) interface_removed;
	}
	[CRepr]
	public struct DBusObjectManagerServerClass
	{
		public GObject.ObjectClass parent_class;
		public void* padding;
	}
	[CRepr]
	public struct DBusObjectManagerServerPrivate : int
	{
	}
	[CRepr]
	public struct DBusObjectProxyClass
	{
		public GObject.ObjectClass parent_class;
		public void* padding;
	}
	[CRepr]
	public struct DBusObjectProxyPrivate : int
	{
	}
	[CRepr]
	public struct DBusObjectSkeletonClass
	{
		public GObject.ObjectClass parent_class;
		public function c_int(DBusObjectSkeleton* object, DBusInterfaceSkeleton* interface_, DBusMethodInvocation* invocation) authorize_method;
		public void* padding;
	}
	[CRepr]
	public struct DBusObjectSkeletonPrivate : int
	{
	}
	[CRepr]
	public struct DBusPropertyInfo
	{
		public c_int ref_count;
		public char8* name;
		public char8* signature;
		public DBusPropertyInfoFlags flags;
		public DBusAnnotationInfo** annotations;
		[LinkName("g_dbus_property_info_ref")]
		public static extern DBusPropertyInfo* Ref(DBusPropertyInfo* info);
		[LinkName("g_dbus_property_info_unref")]
		public static extern void Unref(DBusPropertyInfo* info);
	}
	[CRepr]
	public struct DBusProxyClass
	{
		public GObject.ObjectClass parent_class;
		public function void(DBusProxy* proxy, GLib.Variant* changed_properties, char8** invalidated_properties) g_properties_changed;
		public function void(DBusProxy* proxy, char8* sender_name, char8* signal_name, GLib.Variant* parameters) g_signal;
		public void* padding;
	}
	[CRepr]
	public struct DBusProxyPrivate : int
	{
	}
	[CRepr]
	public struct DBusSignalInfo
	{
		public c_int ref_count;
		public char8* name;
		public DBusArgInfo** args;
		public DBusAnnotationInfo** annotations;
		[LinkName("g_dbus_signal_info_ref")]
		public static extern DBusSignalInfo* Ref(DBusSignalInfo* info);
		[LinkName("g_dbus_signal_info_unref")]
		public static extern void Unref(DBusSignalInfo* info);
	}
	[CRepr]
	public struct DBusSubtreeVTable
	{
		public DBusSubtreeEnumerateFunc enumerate;
		public DBusSubtreeIntrospectFunc introspect;
		public DBusSubtreeDispatchFunc dispatch;
		public void* padding;
	}
	[CRepr]
	public struct DataInputStreamClass
	{
		public BufferedInputStreamClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct DataInputStreamPrivate : int
	{
	}
	[CRepr]
	public struct DataOutputStreamClass
	{
		public FilterOutputStreamClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct DataOutputStreamPrivate : int
	{
	}
	[CRepr]
	public struct DatagramBasedInterface
	{
		public GObject.TypeInterface g_iface;
		public function c_int(DatagramBased* datagram_based, InputMessage* messages, c_uint num_messages, c_int flags, c_longlong timeout, Cancellable* cancellable) receive_messages;
		public function c_int(DatagramBased* datagram_based, OutputMessage* messages, c_uint num_messages, c_int flags, c_longlong timeout, Cancellable* cancellable) send_messages;
		public function GLib.Source*(DatagramBased* datagram_based, GLib.IOCondition condition, Cancellable* cancellable) create_source;
		public function GLib.IOCondition(DatagramBased* datagram_based, GLib.IOCondition condition) condition_check;
		public function c_int(DatagramBased* datagram_based, GLib.IOCondition condition, c_longlong timeout, Cancellable* cancellable) condition_wait;
	}
	[CRepr]
	public struct DebugControllerDBusClass
	{
		public GObject.ObjectClass parent_class;
		public function c_int(DebugControllerDBus* controller, DBusMethodInvocation* invocation) authorize;
		public void* padding;
	}
	[CRepr]
	public struct DebugControllerInterface
	{
		public GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct DesktopAppInfoClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct DesktopAppInfoLookupIface
	{
		public GObject.TypeInterface g_iface;
		public function AppInfo*(DesktopAppInfoLookup* lookup, char8* uri_scheme) get_default_for_uri_scheme;
	}
	[CRepr]
	public struct DriveIface
	{
		public GObject.TypeInterface g_iface;
		public function void(Drive* drive) changed;
		public function void(Drive* drive) disconnected;
		public function void(Drive* drive) eject_button;
		public function char8*(Drive* drive) get_name;
		public function Icon*(Drive* drive) get_icon;
		public function c_int(Drive* drive) has_volumes;
		public function GLib.List*(Drive* drive) get_volumes;
		public function c_int(Drive* drive) is_media_removable;
		public function c_int(Drive* drive) has_media;
		public function c_int(Drive* drive) is_media_check_automatic;
		public function c_int(Drive* drive) can_eject;
		public function c_int(Drive* drive) can_poll_for_media;
		public function void(Drive* drive, MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) eject;
		public function c_int(Drive* drive, AsyncResult* result) eject_finish;
		public function void(Drive* drive, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) poll_for_media;
		public function c_int(Drive* drive, AsyncResult* result) poll_for_media_finish;
		public function char8*(Drive* drive, char8* kind) get_identifier;
		public function char8**(Drive* drive) enumerate_identifiers;
		public function DriveStartStopType(Drive* drive) get_start_stop_type;
		public function c_int(Drive* drive) can_start;
		public function c_int(Drive* drive) can_start_degraded;
		public function void(Drive* drive, DriveStartFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) start;
		public function c_int(Drive* drive, AsyncResult* result) start_finish;
		public function c_int(Drive* drive) can_stop;
		public function void(Drive* drive, MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) stop;
		public function c_int(Drive* drive, AsyncResult* result) stop_finish;
		public function void(Drive* drive) stop_button;
		public function void(Drive* drive, MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) eject_with_operation;
		public function c_int(Drive* drive, AsyncResult* result) eject_with_operation_finish;
		public function char8*(Drive* drive) get_sort_key;
		public function Icon*(Drive* drive) get_symbolic_icon;
		public function c_int(Drive* drive) is_removable;
	}
	[CRepr]
	public struct DtlsClientConnectionInterface
	{
		public GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct DtlsConnectionInterface
	{
		public GObject.TypeInterface g_iface;
		public function c_int(DtlsConnection* connection, TlsCertificate* peer_cert, TlsCertificateFlags errors) accept_certificate;
		public function c_int(DtlsConnection* conn, Cancellable* cancellable) handshake;
		public function void(DtlsConnection* conn, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) handshake_async;
		public function c_int(DtlsConnection* conn, AsyncResult* result) handshake_finish;
		public function c_int(DtlsConnection* conn, c_int shutdown_read, c_int shutdown_write, Cancellable* cancellable) shutdown;
		public function void(DtlsConnection* conn, c_int shutdown_read, c_int shutdown_write, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) shutdown_async;
		public function c_int(DtlsConnection* conn, AsyncResult* result) shutdown_finish;
		public function void(DtlsConnection* conn, char8** protocols) set_advertised_protocols;
		public function char8*(DtlsConnection* conn) get_negotiated_protocol;
		public function c_int(DtlsConnection* conn, TlsChannelBindingType type, c_uchar* data) get_binding_data;
	}
	[CRepr]
	public struct DtlsServerConnectionInterface
	{
		public GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct EmblemClass : int
	{
	}
	[CRepr]
	public struct EmblemedIconClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct EmblemedIconPrivate : int
	{
	}
	[CRepr]
	public struct FileAttributeInfo
	{
		public char8* name;
		public FileAttributeType type;
		public FileAttributeInfoFlags flags;
	}
	[CRepr]
	public struct FileAttributeInfoList
	{
		public FileAttributeInfo* infos;
		public c_int n_infos;
		[LinkName("g_file_attribute_info_list_new")]
		public static extern FileAttributeInfoList* New();
		[LinkName("g_file_attribute_info_list_add")]
		public static extern void Add(FileAttributeInfoList* list, char8* name, FileAttributeType type, FileAttributeInfoFlags flags);
		[LinkName("g_file_attribute_info_list_dup")]
		public static extern FileAttributeInfoList* Dup(FileAttributeInfoList* list);
		[LinkName("g_file_attribute_info_list_lookup")]
		public static extern FileAttributeInfo* Lookup(FileAttributeInfoList* list, char8* name);
		[LinkName("g_file_attribute_info_list_ref")]
		public static extern FileAttributeInfoList* Ref(FileAttributeInfoList* list);
		[LinkName("g_file_attribute_info_list_unref")]
		public static extern void Unref(FileAttributeInfoList* list);
	}
	[CRepr]
	public struct FileAttributeMatcher
	{
		[LinkName("g_file_attribute_matcher_new")]
		public static extern FileAttributeMatcher* New(char8* attributes);
		[LinkName("g_file_attribute_matcher_enumerate_namespace")]
		public static extern c_int EnumerateNamespace(FileAttributeMatcher* matcher, char8* ns);
		[LinkName("g_file_attribute_matcher_enumerate_next")]
		public static extern char8* EnumerateNext(FileAttributeMatcher* matcher);
		[LinkName("g_file_attribute_matcher_matches")]
		public static extern c_int Matches(FileAttributeMatcher* matcher, char8* attribute);
		[LinkName("g_file_attribute_matcher_matches_only")]
		public static extern c_int MatchesOnly(FileAttributeMatcher* matcher, char8* attribute);
		[LinkName("g_file_attribute_matcher_ref")]
		public static extern FileAttributeMatcher* Ref(FileAttributeMatcher* matcher);
		[LinkName("g_file_attribute_matcher_subtract")]
		public static extern FileAttributeMatcher* Subtract(FileAttributeMatcher* matcher, FileAttributeMatcher* subtract);
		[LinkName("g_file_attribute_matcher_to_string")]
		public static extern char8* ToString(FileAttributeMatcher* matcher);
		[LinkName("g_file_attribute_matcher_unref")]
		public static extern void Unref(FileAttributeMatcher* matcher);
	}
	[CRepr]
	public struct FileDescriptorBasedIface
	{
		public GObject.TypeInterface g_iface;
		public function c_int(FileDescriptorBased* fd_based) get_fd;
	}
	[CRepr]
	public struct FileEnumeratorClass
	{
		public GObject.ObjectClass parent_class;
		public function FileInfo*(FileEnumerator* enumerator, Cancellable* cancellable) next_file;
		public function c_int(FileEnumerator* enumerator, Cancellable* cancellable) close_fn;
		public function void(FileEnumerator* enumerator, c_int num_files, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) next_files_async;
		public function GLib.List*(FileEnumerator* enumerator, AsyncResult* result) next_files_finish;
		public function void(FileEnumerator* enumerator, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) close_async;
		public function c_int(FileEnumerator* enumerator, AsyncResult* result) close_finish;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
		public function void() _g_reserved6;
		public function void() _g_reserved7;
	}
	[CRepr]
	public struct FileEnumeratorPrivate : int
	{
	}
	[CRepr]
	public struct FileIOStreamClass
	{
		public IOStreamClass parent_class;
		public function c_longlong(FileIOStream* stream) tell;
		public function c_int(FileIOStream* stream) can_seek;
		public function c_int(FileIOStream* stream, c_longlong offset, GLib.SeekType type, Cancellable* cancellable) seek;
		public function c_int(FileIOStream* stream) can_truncate;
		public function c_int(FileIOStream* stream, c_longlong size, Cancellable* cancellable) truncate_fn;
		public function FileInfo*(FileIOStream* stream, char8* attributes, Cancellable* cancellable) query_info;
		public function void(FileIOStream* stream, char8* attributes, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) query_info_async;
		public function FileInfo*(FileIOStream* stream, AsyncResult* result) query_info_finish;
		public function char8*(FileIOStream* stream) get_etag;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct FileIOStreamPrivate : int
	{
	}
	[CRepr]
	public struct FileIconClass : int
	{
	}
	[CRepr]
	public struct FileIface
	{
		public GObject.TypeInterface g_iface;
		public function File*(File* file) dup;
		public function c_uint(File* file) hash;
		public function c_int(File* file1, File* file2) equal;
		public function c_int(File* file) is_native;
		public function c_int(File* file, char8* uri_scheme) has_uri_scheme;
		public function char8*(File* file) get_uri_scheme;
		public function char8*(File* file) get_basename;
		public function char8*(File* file) get_path;
		public function char8*(File* file) get_uri;
		public function char8*(File* file) get_parse_name;
		public function File*(File* file) get_parent;
		public function c_int(File* prefix, File* file) prefix_matches;
		public function char8*(File* parent, File* descendant) get_relative_path;
		public function File*(File* file, char8* relative_path) resolve_relative_path;
		public function File*(File* file, char8* display_name) get_child_for_display_name;
		public function FileEnumerator*(File* file, char8* attributes, FileQueryInfoFlags flags, Cancellable* cancellable) enumerate_children;
		public function void(File* file, char8* attributes, FileQueryInfoFlags flags, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) enumerate_children_async;
		public function FileEnumerator*(File* file, AsyncResult* res) enumerate_children_finish;
		public function FileInfo*(File* file, char8* attributes, FileQueryInfoFlags flags, Cancellable* cancellable) query_info;
		public function void(File* file, char8* attributes, FileQueryInfoFlags flags, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) query_info_async;
		public function FileInfo*(File* file, AsyncResult* res) query_info_finish;
		public function FileInfo*(File* file, char8* attributes, Cancellable* cancellable) query_filesystem_info;
		public function void(File* file, char8* attributes, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) query_filesystem_info_async;
		public function FileInfo*(File* file, AsyncResult* res) query_filesystem_info_finish;
		public function Mount*(File* file, Cancellable* cancellable) find_enclosing_mount;
		public function void(File* file, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) find_enclosing_mount_async;
		public function Mount*(File* file, AsyncResult* res) find_enclosing_mount_finish;
		public function File*(File* file, char8* display_name, Cancellable* cancellable) set_display_name;
		public function void(File* file, char8* display_name, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) set_display_name_async;
		public function File*(File* file, AsyncResult* res) set_display_name_finish;
		public function FileAttributeInfoList*(File* file, Cancellable* cancellable) query_settable_attributes;
		public function void() _query_settable_attributes_async;
		public function void() _query_settable_attributes_finish;
		public function FileAttributeInfoList*(File* file, Cancellable* cancellable) query_writable_namespaces;
		public function void() _query_writable_namespaces_async;
		public function void() _query_writable_namespaces_finish;
		public function c_int(File* file, char8* attribute, FileAttributeType type, void* value_p, FileQueryInfoFlags flags, Cancellable* cancellable) set_attribute;
		public function c_int(File* file, FileInfo* info, FileQueryInfoFlags flags, Cancellable* cancellable) set_attributes_from_info;
		public function void(File* file, FileInfo* info, FileQueryInfoFlags flags, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) set_attributes_async;
		public function c_int(File* file, AsyncResult* result, FileInfo** info) set_attributes_finish;
		public function FileInputStream*(File* file, Cancellable* cancellable) read_fn;
		public function void(File* file, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) read_async;
		public function FileInputStream*(File* file, AsyncResult* res) read_finish;
		public function FileOutputStream*(File* file, FileCreateFlags flags, Cancellable* cancellable) append_to;
		public function void(File* file, FileCreateFlags flags, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) append_to_async;
		public function FileOutputStream*(File* file, AsyncResult* res) append_to_finish;
		public function FileOutputStream*(File* file, FileCreateFlags flags, Cancellable* cancellable) create;
		public function void(File* file, FileCreateFlags flags, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) create_async;
		public function FileOutputStream*(File* file, AsyncResult* res) create_finish;
		public function FileOutputStream*(File* file, char8* etag, c_int make_backup, FileCreateFlags flags, Cancellable* cancellable) replace;
		public function void(File* file, char8* etag, c_int make_backup, FileCreateFlags flags, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) replace_async;
		public function FileOutputStream*(File* file, AsyncResult* res) replace_finish;
		public function c_int(File* file, Cancellable* cancellable) delete_file;
		public function void(File* file, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) delete_file_async;
		public function c_int(File* file, AsyncResult* result) delete_file_finish;
		public function c_int(File* file, Cancellable* cancellable) trash;
		public function void(File* file, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) trash_async;
		public function c_int(File* file, AsyncResult* result) trash_finish;
		public function c_int(File* file, Cancellable* cancellable) make_directory;
		public function void(File* file, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) make_directory_async;
		public function c_int(File* file, AsyncResult* result) make_directory_finish;
		public function c_int(File* file, char8* symlink_value, Cancellable* cancellable) make_symbolic_link;
		public function void(File* file, char8* symlink_value, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) make_symbolic_link_async;
		public function c_int(File* file, AsyncResult* result) make_symbolic_link_finish;
		public function c_int(File* source, File* destination, FileCopyFlags flags, Cancellable* cancellable, FileProgressCallback progress_callback, void* progress_callback_data) copy;
		public function void(File* source, File* destination, FileCopyFlags flags, c_int io_priority, Cancellable* cancellable, FileProgressCallback progress_callback, void* progress_callback_data, AsyncReadyCallback callback, void* user_data) copy_async;
		public function c_int(File* file, AsyncResult* res) copy_finish;
		public function c_int(File* source, File* destination, FileCopyFlags flags, Cancellable* cancellable, FileProgressCallback progress_callback, void* progress_callback_data) move;
		public function void(File* source, File* destination, FileCopyFlags flags, c_int io_priority, Cancellable* cancellable, FileProgressCallback progress_callback, void* progress_callback_data, AsyncReadyCallback callback, void* user_data) move_async;
		public function c_int(File* file, AsyncResult* result) move_finish;
		public function void(File* file, MountMountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) mount_mountable;
		public function File*(File* file, AsyncResult* result) mount_mountable_finish;
		public function void(File* file, MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) unmount_mountable;
		public function c_int(File* file, AsyncResult* result) unmount_mountable_finish;
		public function void(File* file, MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) eject_mountable;
		public function c_int(File* file, AsyncResult* result) eject_mountable_finish;
		public function void(File* location, MountMountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) mount_enclosing_volume;
		public function c_int(File* location, AsyncResult* result) mount_enclosing_volume_finish;
		public function FileMonitor*(File* file, FileMonitorFlags flags, Cancellable* cancellable) monitor_dir;
		public function FileMonitor*(File* file, FileMonitorFlags flags, Cancellable* cancellable) monitor_file;
		public function FileIOStream*(File* file, Cancellable* cancellable) open_readwrite;
		public function void(File* file, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) open_readwrite_async;
		public function FileIOStream*(File* file, AsyncResult* res) open_readwrite_finish;
		public function FileIOStream*(File* file, FileCreateFlags flags, Cancellable* cancellable) create_readwrite;
		public function void(File* file, FileCreateFlags flags, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) create_readwrite_async;
		public function FileIOStream*(File* file, AsyncResult* res) create_readwrite_finish;
		public function FileIOStream*(File* file, char8* etag, c_int make_backup, FileCreateFlags flags, Cancellable* cancellable) replace_readwrite;
		public function void(File* file, char8* etag, c_int make_backup, FileCreateFlags flags, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) replace_readwrite_async;
		public function FileIOStream*(File* file, AsyncResult* res) replace_readwrite_finish;
		public function void(File* file, DriveStartFlags flags, MountOperation* start_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) start_mountable;
		public function c_int(File* file, AsyncResult* result) start_mountable_finish;
		public function void(File* file, MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) stop_mountable;
		public function c_int(File* file, AsyncResult* result) stop_mountable_finish;
		public c_int supports_thread_contexts;
		public function void(File* file, MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) unmount_mountable_with_operation;
		public function c_int(File* file, AsyncResult* result) unmount_mountable_with_operation_finish;
		public function void(File* file, MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) eject_mountable_with_operation;
		public function c_int(File* file, AsyncResult* result) eject_mountable_with_operation_finish;
		public function void(File* file, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) poll_mountable;
		public function c_int(File* file, AsyncResult* result) poll_mountable_finish;
		public function c_int(File* file, FileMeasureFlags flags, Cancellable* cancellable, FileMeasureProgressCallback progress_callback, void* progress_data, c_ulonglong* disk_usage, c_ulonglong* num_dirs, c_ulonglong* num_files) measure_disk_usage;
		public function void(File* file, FileMeasureFlags flags, c_int io_priority, Cancellable* cancellable, FileMeasureProgressCallback progress_callback, void* progress_data, AsyncReadyCallback callback, void* user_data) measure_disk_usage_async;
		public function c_int(File* file, AsyncResult* result, c_ulonglong* disk_usage, c_ulonglong* num_dirs, c_ulonglong* num_files) measure_disk_usage_finish;
	}
	[CRepr]
	public struct FileInfoClass : int
	{
	}
	[CRepr]
	public struct FileInputStreamClass
	{
		public InputStreamClass parent_class;
		public function c_longlong(FileInputStream* stream) tell;
		public function c_int(FileInputStream* stream) can_seek;
		public function c_int(FileInputStream* stream, c_longlong offset, GLib.SeekType type, Cancellable* cancellable) seek;
		public function FileInfo*(FileInputStream* stream, char8* attributes, Cancellable* cancellable) query_info;
		public function void(FileInputStream* stream, char8* attributes, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) query_info_async;
		public function FileInfo*(FileInputStream* stream, AsyncResult* result) query_info_finish;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct FileInputStreamPrivate : int
	{
	}
	[CRepr]
	public struct FileMonitorClass
	{
		public GObject.ObjectClass parent_class;
		public function void(FileMonitor* monitor, File* file, File* other_file, FileMonitorEvent event_type) changed;
		public function c_int(FileMonitor* monitor) cancel;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct FileMonitorPrivate : int
	{
	}
	[CRepr]
	public struct FileOutputStreamClass
	{
		public OutputStreamClass parent_class;
		public function c_longlong(FileOutputStream* stream) tell;
		public function c_int(FileOutputStream* stream) can_seek;
		public function c_int(FileOutputStream* stream, c_longlong offset, GLib.SeekType type, Cancellable* cancellable) seek;
		public function c_int(FileOutputStream* stream) can_truncate;
		public function c_int(FileOutputStream* stream, c_longlong size, Cancellable* cancellable) truncate_fn;
		public function FileInfo*(FileOutputStream* stream, char8* attributes, Cancellable* cancellable) query_info;
		public function void(FileOutputStream* stream, char8* attributes, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) query_info_async;
		public function FileInfo*(FileOutputStream* stream, AsyncResult* result) query_info_finish;
		public function char8*(FileOutputStream* stream) get_etag;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct FileOutputStreamPrivate : int
	{
	}
	[CRepr]
	public struct FilenameCompleterClass
	{
		public GObject.ObjectClass parent_class;
		public function void(FilenameCompleter* filename_completer) got_completion_data;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
	}
	[CRepr]
	public struct FilterInputStreamClass
	{
		public InputStreamClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
	}
	[CRepr]
	public struct FilterOutputStreamClass
	{
		public OutputStreamClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
	}
	[CRepr]
	public struct IOExtension : int
	{
		[LinkName("g_io_extension_get_name")]
		public static extern char8* GetName(IOExtension* extension_);
		[LinkName("g_io_extension_get_priority")]
		public static extern c_int GetPriority(IOExtension* extension_);
		[LinkName("g_io_extension_get_type")]
		public static extern GLib.Type GetType(IOExtension* extension_);
	}
	[CRepr]
	public struct IOExtensionPoint : int
	{
		[LinkName("g_io_extension_point_get_extension_by_name")]
		public static extern IOExtension* GetExtensionByName(IOExtensionPoint* extension_point, char8* name);
		[LinkName("g_io_extension_point_get_extensions")]
		public static extern GLib.List* GetExtensions(IOExtensionPoint* extension_point);
		[LinkName("g_io_extension_point_get_required_type")]
		public static extern GLib.Type GetRequiredType(IOExtensionPoint* extension_point);
		[LinkName("g_io_extension_point_set_required_type")]
		public static extern void SetRequiredType(IOExtensionPoint* extension_point, GLib.Type type);
	}
	[CRepr]
	public struct IOModuleClass : int
	{
	}
	[CRepr]
	public struct IOModuleScope : int
	{
		[LinkName("g_io_module_scope_block")]
		public static extern void Block(IOModuleScope* scope_, char8* basename);
		[LinkName("g_io_module_scope_free")]
		public static extern void Free(IOModuleScope* scope_);
	}
	[CRepr]
	public struct IOSchedulerJob : int
	{
		[LinkName("g_io_scheduler_job_send_to_mainloop")]
		public static extern c_int SendToMainloop(IOSchedulerJob* job, GLib.SourceFunc func, void* user_data, GLib.DestroyNotify notify);
		[LinkName("g_io_scheduler_job_send_to_mainloop_async")]
		public static extern void SendToMainloopAsync(IOSchedulerJob* job, GLib.SourceFunc func, void* user_data, GLib.DestroyNotify notify);
	}
	[CRepr]
	public struct IOStreamAdapter : int
	{
	}
	[CRepr]
	public struct IOStreamClass
	{
		public GObject.ObjectClass parent_class;
		public function InputStream*(IOStream* stream) get_input_stream;
		public function OutputStream*(IOStream* stream) get_output_stream;
		public function c_int(IOStream* stream, Cancellable* cancellable) close_fn;
		public function void(IOStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) close_async;
		public function c_int(IOStream* stream, AsyncResult* result) close_finish;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
		public function void() _g_reserved6;
		public function void() _g_reserved7;
		public function void() _g_reserved8;
		public function void() _g_reserved9;
		public function void() _g_reserved10;
	}
	[CRepr]
	public struct IOStreamPrivate : int
	{
	}
	[CRepr]
	public struct IconIface
	{
		public GObject.TypeInterface g_iface;
		public function c_uint(Icon* icon) hash;
		public function c_int(Icon* icon1, Icon* icon2) equal;
		public function c_int(Icon* icon, char8* tokens, c_int* out_version) to_tokens;
		public function Icon*(char8** tokens, c_int num_tokens, c_int version) from_tokens;
		public function GLib.Variant*(Icon* icon) serialize;
	}
	[CRepr]
	public struct InetAddressClass
	{
		public GObject.ObjectClass parent_class;
		public function char8*(InetAddress* address) to_string;
		public function c_uchar*(InetAddress* address) to_bytes;
	}
	[CRepr]
	public struct InetAddressMaskClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct InetAddressMaskPrivate : int
	{
	}
	[CRepr]
	public struct InetAddressPrivate : int
	{
	}
	[CRepr]
	public struct InetSocketAddressClass
	{
		public SocketAddressClass parent_class;
	}
	[CRepr]
	public struct InetSocketAddressPrivate : int
	{
	}
	[CRepr]
	public struct InitableIface
	{
		public GObject.TypeInterface g_iface;
		public function c_int(Initable* initable, Cancellable* cancellable) init;
	}
	[CRepr]
	public struct InputMessage
	{
		public SocketAddress** address;
		public InputVector* vectors;
		public c_uint num_vectors;
		public c_ulong bytes_received;
		public c_int flags;
		public SocketControlMessage*** control_messages;
		public c_uint* num_control_messages;
	}
	[CRepr]
	public struct InputStreamClass
	{
		public GObject.ObjectClass parent_class;
		public function c_long(InputStream* stream, void** buffer, c_ulong count, Cancellable* cancellable) read_fn;
		public function c_long(InputStream* stream, c_ulong count, Cancellable* cancellable) skip;
		public function c_int(InputStream* stream, Cancellable* cancellable) close_fn;
		public function void(InputStream* stream, c_uchar* buffer, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) read_async;
		public function c_long(InputStream* stream, AsyncResult* result) read_finish;
		public function void(InputStream* stream, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) skip_async;
		public function c_long(InputStream* stream, AsyncResult* result) skip_finish;
		public function void(InputStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) close_async;
		public function c_int(InputStream* stream, AsyncResult* result) close_finish;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct InputStreamPrivate : int
	{
	}
	[CRepr]
	public struct InputVector
	{
		public void* buffer;
		public c_ulong size;
	}
	[CRepr]
	public struct ListModelInterface
	{
		public GObject.TypeInterface g_iface;
		public function GLib.Type(ListModel* list) get_item_type;
		public function c_uint(ListModel* list) get_n_items;
		public function GObject.Object*(ListModel* list, c_uint position) get_item;
	}
	[CRepr]
	public struct ListStoreClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct LoadableIconIface
	{
		public GObject.TypeInterface g_iface;
		public function InputStream*(LoadableIcon* icon, c_int size, char8** type, Cancellable* cancellable) load;
		public function void(LoadableIcon* icon, c_int size, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) load_async;
		public function InputStream*(LoadableIcon* icon, AsyncResult* res, char8** type) load_finish;
	}
	[CRepr]
	public struct MemoryInputStreamClass
	{
		public InputStreamClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct MemoryInputStreamPrivate : int
	{
	}
	[CRepr]
	public struct MemoryMonitorInterface
	{
		public GObject.TypeInterface g_iface;
		public function void(MemoryMonitor* monitor, MemoryMonitorWarningLevel level) low_memory_warning;
	}
	[CRepr]
	public struct MemoryOutputStreamClass
	{
		public OutputStreamClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct MemoryOutputStreamPrivate : int
	{
	}
	[CRepr]
	public struct MenuAttributeIterClass
	{
		public GObject.ObjectClass parent_class;
		public function c_int(MenuAttributeIter* iter, char8** out_name, GLib.Variant** value) get_next;
	}
	[CRepr]
	public struct MenuAttributeIterPrivate : int
	{
	}
	[CRepr]
	public struct MenuLinkIterClass
	{
		public GObject.ObjectClass parent_class;
		public function c_int(MenuLinkIter* iter, char8** out_link, MenuModel** value) get_next;
	}
	[CRepr]
	public struct MenuLinkIterPrivate : int
	{
	}
	[CRepr]
	public struct MenuModelClass
	{
		public GObject.ObjectClass parent_class;
		public function c_int(MenuModel* model) is_mutable;
		public function c_int(MenuModel* model) get_n_items;
		public function void(MenuModel* model, c_int item_index, GLib.HashTable** attributes) get_item_attributes;
		public function MenuAttributeIter*(MenuModel* model, c_int item_index) iterate_item_attributes;
		public function GLib.Variant*(MenuModel* model, c_int item_index, char8* attribute, GLib.VariantType* expected_type) get_item_attribute_value;
		public function void(MenuModel* model, c_int item_index, GLib.HashTable** links) get_item_links;
		public function MenuLinkIter*(MenuModel* model, c_int item_index) iterate_item_links;
		public function MenuModel*(MenuModel* model, c_int item_index, char8* link) get_item_link;
	}
	[CRepr]
	public struct MenuModelPrivate : int
	{
	}
	[CRepr]
	public struct MountIface
	{
		public GObject.TypeInterface g_iface;
		public function void(Mount* mount) changed;
		public function void(Mount* mount) unmounted;
		public function File*(Mount* mount) get_root;
		public function char8*(Mount* mount) get_name;
		public function Icon*(Mount* mount) get_icon;
		public function char8*(Mount* mount) get_uuid;
		public function Volume*(Mount* mount) get_volume;
		public function Drive*(Mount* mount) get_drive;
		public function c_int(Mount* mount) can_unmount;
		public function c_int(Mount* mount) can_eject;
		public function void(Mount* mount, MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) unmount;
		public function c_int(Mount* mount, AsyncResult* result) unmount_finish;
		public function void(Mount* mount, MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) eject;
		public function c_int(Mount* mount, AsyncResult* result) eject_finish;
		public function void(Mount* mount, MountMountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) remount;
		public function c_int(Mount* mount, AsyncResult* result) remount_finish;
		public function void(Mount* mount, c_int force_rescan, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) guess_content_type;
		public function char8**(Mount* mount, AsyncResult* result) guess_content_type_finish;
		public function char8**(Mount* mount, c_int force_rescan, Cancellable* cancellable) guess_content_type_sync;
		public function void(Mount* mount) pre_unmount;
		public function void(Mount* mount, MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) unmount_with_operation;
		public function c_int(Mount* mount, AsyncResult* result) unmount_with_operation_finish;
		public function void(Mount* mount, MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) eject_with_operation;
		public function c_int(Mount* mount, AsyncResult* result) eject_with_operation_finish;
		public function File*(Mount* mount) get_default_location;
		public function char8*(Mount* mount) get_sort_key;
		public function Icon*(Mount* mount) get_symbolic_icon;
	}
	[CRepr]
	public struct MountOperationClass
	{
		public GObject.ObjectClass parent_class;
		public function void(MountOperation* op, char8* message, char8* default_user, char8* default_domain, AskPasswordFlags flags) ask_password;
		public function void(MountOperation* op, char8* message, char8** choices) ask_question;
		public function void(MountOperation* op, MountOperationResult result) reply;
		public function void(MountOperation* op) aborted;
		public function void(MountOperation* op, char8* message, GLib.Pid* processes, char8** choices) show_processes;
		public function void(MountOperation* op, char8* message, c_longlong time_left, c_longlong bytes_left) show_unmount_progress;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
		public function void() _g_reserved6;
		public function void() _g_reserved7;
		public function void() _g_reserved8;
		public function void() _g_reserved9;
	}
	[CRepr]
	public struct MountOperationPrivate : int
	{
	}
	[CRepr]
	public struct NativeSocketAddressClass
	{
		public SocketAddressClass parent_class;
	}
	[CRepr]
	public struct NativeSocketAddressPrivate : int
	{
	}
	[CRepr]
	public struct NativeVolumeMonitorClass
	{
		public VolumeMonitorClass parent_class;
		public function Mount*(char8* mount_path, Cancellable* cancellable) get_mount_for_mount_path;
	}
	[CRepr]
	public struct NetworkAddressClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct NetworkAddressPrivate : int
	{
	}
	[CRepr]
	public struct NetworkMonitorInterface
	{
		public GObject.TypeInterface g_iface;
		public function void(NetworkMonitor* monitor, c_int network_available) network_changed;
		public function c_int(NetworkMonitor* monitor, SocketConnectable* connectable, Cancellable* cancellable) can_reach;
		public function void(NetworkMonitor* monitor, SocketConnectable* connectable, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) can_reach_async;
		public function c_int(NetworkMonitor* monitor, AsyncResult* result) can_reach_finish;
	}
	[CRepr]
	public struct NetworkServiceClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct NetworkServicePrivate : int
	{
	}
	[CRepr]
	public struct OutputMessage
	{
		public SocketAddress* address;
		public OutputVector* vectors;
		public c_uint num_vectors;
		public c_uint bytes_sent;
		public SocketControlMessage** control_messages;
		public c_uint num_control_messages;
	}
	[CRepr]
	public struct OutputStreamClass
	{
		public GObject.ObjectClass parent_class;
		public function c_long(OutputStream* stream, c_uchar* buffer, c_ulong count, Cancellable* cancellable) write_fn;
		public function c_long(OutputStream* stream, InputStream* source, OutputStreamSpliceFlags flags, Cancellable* cancellable) splice;
		public function c_int(OutputStream* stream, Cancellable* cancellable) flush;
		public function c_int(OutputStream* stream, Cancellable* cancellable) close_fn;
		public function void(OutputStream* stream, c_uchar* buffer, c_ulong count, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) write_async;
		public function c_long(OutputStream* stream, AsyncResult* result) write_finish;
		public function void(OutputStream* stream, InputStream* source, OutputStreamSpliceFlags flags, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) splice_async;
		public function c_long(OutputStream* stream, AsyncResult* result) splice_finish;
		public function void(OutputStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) flush_async;
		public function c_int(OutputStream* stream, AsyncResult* result) flush_finish;
		public function void(OutputStream* stream, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) close_async;
		public function c_int(OutputStream* stream, AsyncResult* result) close_finish;
		public function c_int(OutputStream* stream, OutputVector* vectors, c_ulong n_vectors, c_ulong* bytes_written, Cancellable* cancellable) writev_fn;
		public function void(OutputStream* stream, OutputVector* vectors, c_ulong n_vectors, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) writev_async;
		public function c_int(OutputStream* stream, AsyncResult* result, c_ulong* bytes_written) writev_finish;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
		public function void() _g_reserved6;
		public function void() _g_reserved7;
		public function void() _g_reserved8;
	}
	[CRepr]
	public struct OutputStreamPrivate : int
	{
	}
	[CRepr]
	public struct OutputVector
	{
		public void* buffer;
		public c_ulong size;
	}
	[CRepr]
	public struct PermissionClass
	{
		public GObject.ObjectClass parent_class;
		public function c_int(Permission* permission, Cancellable* cancellable) acquire;
		public function void(Permission* permission, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) acquire_async;
		public function c_int(Permission* permission, AsyncResult* result) acquire_finish;
		public function c_int(Permission* permission, Cancellable* cancellable) release;
		public function void(Permission* permission, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) release_async;
		public function c_int(Permission* permission, AsyncResult* result) release_finish;
		public void* reserved;
	}
	[CRepr]
	public struct PermissionPrivate : int
	{
	}
	[CRepr]
	public struct PollableInputStreamInterface
	{
		public GObject.TypeInterface g_iface;
		public function c_int(PollableInputStream* stream) can_poll;
		public function c_int(PollableInputStream* stream) is_readable;
		public function GLib.Source*(PollableInputStream* stream, Cancellable* cancellable) create_source;
		public function c_long(PollableInputStream* stream, c_uchar* buffer, c_ulong count) read_nonblocking;
	}
	[CRepr]
	public struct PollableOutputStreamInterface
	{
		public GObject.TypeInterface g_iface;
		public function c_int(PollableOutputStream* stream) can_poll;
		public function c_int(PollableOutputStream* stream) is_writable;
		public function GLib.Source*(PollableOutputStream* stream, Cancellable* cancellable) create_source;
		public function c_long(PollableOutputStream* stream, c_uchar* buffer, c_ulong count) write_nonblocking;
		public function PollableReturn(PollableOutputStream* stream, OutputVector* vectors, c_ulong n_vectors, c_ulong* bytes_written) writev_nonblocking;
	}
	[CRepr]
	public struct PowerProfileMonitorInterface
	{
		public GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct ProxyAddressClass
	{
		public InetSocketAddressClass parent_class;
	}
	[CRepr]
	public struct ProxyAddressEnumeratorClass
	{
		public SocketAddressEnumeratorClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
		public function void() _g_reserved6;
		public function void() _g_reserved7;
	}
	[CRepr]
	public struct ProxyAddressEnumeratorPrivate : int
	{
	}
	[CRepr]
	public struct ProxyAddressPrivate : int
	{
	}
	[CRepr]
	public struct ProxyInterface
	{
		public GObject.TypeInterface g_iface;
		public function IOStream*(Proxy* proxy, IOStream* connection, ProxyAddress* proxy_address, Cancellable* cancellable) connect;
		public function void(Proxy* proxy, IOStream* connection, ProxyAddress* proxy_address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) connect_async;
		public function IOStream*(Proxy* proxy, AsyncResult* result) connect_finish;
		public function c_int(Proxy* proxy) supports_hostname;
	}
	[CRepr]
	public struct ProxyResolverInterface
	{
		public GObject.TypeInterface g_iface;
		public function c_int(ProxyResolver* resolver) is_supported;
		public function char8**(ProxyResolver* resolver, char8* uri, Cancellable* cancellable) lookup;
		public function void(ProxyResolver* resolver, char8* uri, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) lookup_async;
		public function char8**(ProxyResolver* resolver, AsyncResult* result) lookup_finish;
	}
	[CRepr]
	public struct RemoteActionGroupInterface
	{
		public GObject.TypeInterface g_iface;
		public function void(RemoteActionGroup* remote, char8* action_name, GLib.Variant* parameter, GLib.Variant* platform_data) activate_action_full;
		public function void(RemoteActionGroup* remote, char8* action_name, GLib.Variant* value, GLib.Variant* platform_data) change_action_state_full;
	}
	[CRepr]
	public struct ResolverClass
	{
		public GObject.ObjectClass parent_class;
		public function void(Resolver* resolver) reload;
		public function GLib.List*(Resolver* resolver, char8* hostname, Cancellable* cancellable) lookup_by_name;
		public function void(Resolver* resolver, char8* hostname, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) lookup_by_name_async;
		public function GLib.List*(Resolver* resolver, AsyncResult* result) lookup_by_name_finish;
		public function char8*(Resolver* resolver, InetAddress* address, Cancellable* cancellable) lookup_by_address;
		public function void(Resolver* resolver, InetAddress* address, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) lookup_by_address_async;
		public function char8*(Resolver* resolver, AsyncResult* result) lookup_by_address_finish;
		public function GLib.List*(Resolver* resolver, char8* rrname, Cancellable* cancellable) lookup_service;
		public function void(Resolver* resolver, char8* rrname, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) lookup_service_async;
		public function GLib.List*(Resolver* resolver, AsyncResult* result) lookup_service_finish;
		public function GLib.List*(Resolver* resolver, char8* rrname, ResolverRecordType record_type, Cancellable* cancellable) lookup_records;
		public function void(Resolver* resolver, char8* rrname, ResolverRecordType record_type, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) lookup_records_async;
		public function GLib.List*(Resolver* resolver, AsyncResult* result) lookup_records_finish;
		public function void(Resolver* resolver, char8* hostname, ResolverNameLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) lookup_by_name_with_flags_async;
		public function GLib.List*(Resolver* resolver, AsyncResult* result) lookup_by_name_with_flags_finish;
		public function GLib.List*(Resolver* resolver, char8* hostname, ResolverNameLookupFlags flags, Cancellable* cancellable) lookup_by_name_with_flags;
	}
	[CRepr]
	public struct ResolverPrivate : int
	{
	}
	[CRepr]
	public struct Resource
	{
		[LinkName("g_resource_new_from_data")]
		public static extern Resource* NewFromData(GLib.Bytes* data);
		[LinkName("g_resources_register")]
		public static extern void Register(Resource* resource);
		[LinkName("g_resources_unregister")]
		public static extern void Unregister(Resource* resource);
		[LinkName("g_resource_enumerate_children")]
		public static extern char8** EnumerateChildren(Resource* resource, char8* path, ResourceLookupFlags lookup_flags);
		[LinkName("g_resource_get_info")]
		public static extern c_int GetInfo(Resource* resource, char8* path, ResourceLookupFlags lookup_flags, c_ulong* size, c_uint* flags);
		[LinkName("g_resource_lookup_data")]
		public static extern GLib.Bytes* LookupData(Resource* resource, char8* path, ResourceLookupFlags lookup_flags);
		[LinkName("g_resource_open_stream")]
		public static extern InputStream* OpenStream(Resource* resource, char8* path, ResourceLookupFlags lookup_flags);
		[LinkName("g_resource_ref")]
		public static extern Resource* Ref(Resource* resource);
		[LinkName("g_resource_unref")]
		public static extern void Unref(Resource* resource);
	}
	[CRepr]
	public struct SeekableIface
	{
		public GObject.TypeInterface g_iface;
		public function c_longlong(Seekable* seekable) tell;
		public function c_int(Seekable* seekable) can_seek;
		public function c_int(Seekable* seekable, c_longlong offset, GLib.SeekType type, Cancellable* cancellable) seek;
		public function c_int(Seekable* seekable) can_truncate;
		public function c_int(Seekable* seekable, c_longlong offset, Cancellable* cancellable) truncate_fn;
	}
	[CRepr]
	public struct SettingsBackendClass
	{
		public GObject.ObjectClass parent_class;
		public function GLib.Variant*(SettingsBackend* backend, char8* key, GLib.VariantType* expected_type, c_int default_value) read;
		public function c_int(SettingsBackend* backend, char8* key) get_writable;
		public function c_int(SettingsBackend* backend, char8* key, GLib.Variant* value, void* origin_tag) write;
		public function c_int(SettingsBackend* backend, GLib.Tree* tree, void* origin_tag) write_tree;
		public function void(SettingsBackend* backend, char8* key, void* origin_tag) reset;
		public function void(SettingsBackend* backend, char8* name) subscribe;
		public function void(SettingsBackend* backend, char8* name) unsubscribe;
		public function void(SettingsBackend* backend) sync;
		public function Permission*(SettingsBackend* backend, char8* path) get_permission;
		public function GLib.Variant*(SettingsBackend* backend, char8* key, GLib.VariantType* expected_type) read_user_value;
		public void* padding;
	}
	[CRepr]
	public struct SettingsBackendPrivate : int
	{
	}
	[CRepr]
	public struct SettingsClass
	{
		public GObject.ObjectClass parent_class;
		public function void(Settings* settings, char8* key) writable_changed;
		public function void(Settings* settings, char8* key) changed;
		public function c_int(Settings* settings, GLib.Quark key) writable_change_event;
		public function c_int(Settings* settings, GLib.Quark* keys, c_int n_keys) change_event;
		public void* padding;
	}
	[CRepr]
	public struct SettingsPrivate : int
	{
	}
	[CRepr]
	public struct SettingsSchema
	{
		[LinkName("g_settings_schema_get_id")]
		public static extern char8* GetId(SettingsSchema* schema);
		[LinkName("g_settings_schema_get_key")]
		public static extern SettingsSchemaKey* GetKey(SettingsSchema* schema, char8* name);
		[LinkName("g_settings_schema_get_path")]
		public static extern char8* GetPath(SettingsSchema* schema);
		[LinkName("g_settings_schema_has_key")]
		public static extern c_int HasKey(SettingsSchema* schema, char8* name);
		[LinkName("g_settings_schema_list_children")]
		public static extern char8** ListChildren(SettingsSchema* schema);
		[LinkName("g_settings_schema_list_keys")]
		public static extern char8** ListKeys(SettingsSchema* schema);
		[LinkName("g_settings_schema_ref")]
		public static extern SettingsSchema* Ref(SettingsSchema* schema);
		[LinkName("g_settings_schema_unref")]
		public static extern void Unref(SettingsSchema* schema);
	}
	[CRepr]
	public struct SettingsSchemaKey
	{
		[LinkName("g_settings_schema_key_get_default_value")]
		public static extern GLib.Variant* GetDefaultValue(SettingsSchemaKey* key);
		[LinkName("g_settings_schema_key_get_description")]
		public static extern char8* GetDescription(SettingsSchemaKey* key);
		[LinkName("g_settings_schema_key_get_name")]
		public static extern char8* GetName(SettingsSchemaKey* key);
		[LinkName("g_settings_schema_key_get_range")]
		public static extern GLib.Variant* GetRange(SettingsSchemaKey* key);
		[LinkName("g_settings_schema_key_get_summary")]
		public static extern char8* GetSummary(SettingsSchemaKey* key);
		[LinkName("g_settings_schema_key_get_value_type")]
		public static extern GLib.VariantType* GetValueType(SettingsSchemaKey* key);
		[LinkName("g_settings_schema_key_range_check")]
		public static extern c_int RangeCheck(SettingsSchemaKey* key, GLib.Variant* value);
		[LinkName("g_settings_schema_key_ref")]
		public static extern SettingsSchemaKey* Ref(SettingsSchemaKey* key);
		[LinkName("g_settings_schema_key_unref")]
		public static extern void Unref(SettingsSchemaKey* key);
	}
	[CRepr]
	public struct SettingsSchemaSource
	{
		[LinkName("g_settings_schema_source_new_from_directory")]
		public static extern SettingsSchemaSource* NewFromDirectory(char8* directory, SettingsSchemaSource* parent, c_int trusted);
		[LinkName("g_settings_schema_source_list_schemas")]
		public static extern void ListSchemas(SettingsSchemaSource* source, c_int recursive, char8*** non_relocatable, char8*** relocatable);
		[LinkName("g_settings_schema_source_lookup")]
		public static extern SettingsSchema* Lookup(SettingsSchemaSource* source, char8* schema_id, c_int recursive);
		[LinkName("g_settings_schema_source_ref")]
		public static extern SettingsSchemaSource* Ref(SettingsSchemaSource* source);
		[LinkName("g_settings_schema_source_unref")]
		public static extern void Unref(SettingsSchemaSource* source);
	}
	[CRepr]
	public struct SimpleActionGroupClass
	{
		public GObject.ObjectClass parent_class;
		public void* padding;
	}
	[CRepr]
	public struct SimpleActionGroupPrivate : int
	{
	}
	[CRepr]
	public struct SimpleAsyncResultClass : int
	{
	}
	[CRepr]
	public struct SimpleProxyResolverClass
	{
		public GObject.ObjectClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct SimpleProxyResolverPrivate : int
	{
	}
	[CRepr]
	public struct SocketAddressClass
	{
		public GObject.ObjectClass parent_class;
		public function SocketFamily(SocketAddress* address) get_family;
		public function c_long(SocketAddress* address) get_native_size;
		public function c_int(SocketAddress* address, void* dest, c_ulong destlen) to_native;
	}
	[CRepr]
	public struct SocketAddressEnumeratorClass
	{
		public GObject.ObjectClass parent_class;
		public function SocketAddress*(SocketAddressEnumerator* enumerator, Cancellable* cancellable) next;
		public function void(SocketAddressEnumerator* enumerator, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) next_async;
		public function SocketAddress*(SocketAddressEnumerator* enumerator, AsyncResult* result) next_finish;
	}
	[CRepr]
	public struct SocketClass
	{
		public GObject.ObjectClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
		public function void() _g_reserved6;
		public function void() _g_reserved7;
		public function void() _g_reserved8;
		public function void() _g_reserved9;
		public function void() _g_reserved10;
	}
	[CRepr]
	public struct SocketClientClass
	{
		public GObject.ObjectClass parent_class;
		public function void(SocketClient* client, SocketClientEvent event, SocketConnectable* connectable, IOStream* connection) event;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
	}
	[CRepr]
	public struct SocketClientPrivate : int
	{
	}
	[CRepr]
	public struct SocketConnectableIface
	{
		public GObject.TypeInterface g_iface;
		public function SocketAddressEnumerator*(SocketConnectable* connectable) enumerate;
		public function SocketAddressEnumerator*(SocketConnectable* connectable) proxy_enumerate;
		public function char8*(SocketConnectable* connectable) to_string;
	}
	[CRepr]
	public struct SocketConnectionClass
	{
		public IOStreamClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
		public function void() _g_reserved6;
	}
	[CRepr]
	public struct SocketConnectionPrivate : int
	{
	}
	[CRepr]
	public struct SocketControlMessageClass
	{
		public GObject.ObjectClass parent_class;
		public function c_ulong(SocketControlMessage* message) get_size;
		public function c_int(SocketControlMessage* message) get_level;
		public function c_int(SocketControlMessage* message) get_type;
		public function void(SocketControlMessage* message, void* data) serialize;
		public function SocketControlMessage*(c_int level, c_int type, c_ulong size, void* data) deserialize;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct SocketControlMessagePrivate : int
	{
	}
	[CRepr]
	public struct SocketListenerClass
	{
		public GObject.ObjectClass parent_class;
		public function void(SocketListener* listener) changed;
		public function void(SocketListener* listener, SocketListenerEvent event, Socket* socket) event;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
		public function void() _g_reserved6;
	}
	[CRepr]
	public struct SocketListenerPrivate : int
	{
	}
	[CRepr]
	public struct SocketPrivate : int
	{
	}
	[CRepr]
	public struct SocketServiceClass
	{
		public SocketListenerClass parent_class;
		public function c_int(SocketService* service, SocketConnection* connection, GObject.Object* source_object) incoming;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
		public function void() _g_reserved6;
	}
	[CRepr]
	public struct SocketServicePrivate : int
	{
	}
	[CRepr]
	public struct SrvTarget
	{
		[LinkName("g_srv_target_new")]
		public static extern SrvTarget* New(char8* hostname, c_ushort port, c_ushort priority, c_ushort weight);
		[LinkName("g_srv_target_copy")]
		public static extern SrvTarget* Copy(SrvTarget* target);
		[LinkName("g_srv_target_free")]
		public static extern void Free(SrvTarget* target);
		[LinkName("g_srv_target_get_hostname")]
		public static extern char8* GetHostname(SrvTarget* target);
		[LinkName("g_srv_target_get_port")]
		public static extern c_ushort GetPort(SrvTarget* target);
		[LinkName("g_srv_target_get_priority")]
		public static extern c_ushort GetPriority(SrvTarget* target);
		[LinkName("g_srv_target_get_weight")]
		public static extern c_ushort GetWeight(SrvTarget* target);
	}
	[CRepr]
	public struct StaticResource
	{
		public c_uchar* data;
		public c_ulong data_len;
		public Resource* resource;
		public StaticResource* next;
		public void* padding;
		[LinkName("g_static_resource_fini")]
		public static extern void Fini(StaticResource* static_resource);
		[LinkName("g_static_resource_get_resource")]
		public static extern Resource* GetResource(StaticResource* static_resource);
		[LinkName("g_static_resource_init")]
		public static extern void Init(StaticResource* static_resource);
	}
	[CRepr]
	public struct TaskClass : int
	{
	}
	[CRepr]
	public struct TcpConnectionClass
	{
		public SocketConnectionClass parent_class;
	}
	[CRepr]
	public struct TcpConnectionPrivate : int
	{
	}
	[CRepr]
	public struct TcpWrapperConnectionClass
	{
		public TcpConnectionClass parent_class;
	}
	[CRepr]
	public struct TcpWrapperConnectionPrivate : int
	{
	}
	[CRepr]
	public struct ThemedIconClass : int
	{
	}
	[CRepr]
	public struct ThreadedSocketServiceClass
	{
		public SocketServiceClass parent_class;
		public function c_int(ThreadedSocketService* service, SocketConnection* connection, GObject.Object* source_object) run;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct ThreadedSocketServicePrivate : int
	{
	}
	[CRepr]
	public struct TlsBackendInterface
	{
		public GObject.TypeInterface g_iface;
		public function c_int(TlsBackend* backend) supports_tls;
		public function GLib.Type() get_certificate_type;
		public function GLib.Type() get_client_connection_type;
		public function GLib.Type() get_server_connection_type;
		public function GLib.Type() get_file_database_type;
		public function TlsDatabase*(TlsBackend* backend) get_default_database;
		public function c_int(TlsBackend* backend) supports_dtls;
		public function GLib.Type() get_dtls_client_connection_type;
		public function GLib.Type() get_dtls_server_connection_type;
	}
	[CRepr]
	public struct TlsCertificateClass
	{
		public GObject.ObjectClass parent_class;
		public function TlsCertificateFlags(TlsCertificate* cert, SocketConnectable* identity, TlsCertificate* trusted_ca) verify;
		public void* padding;
	}
	[CRepr]
	public struct TlsCertificatePrivate : int
	{
	}
	[CRepr]
	public struct TlsClientConnectionInterface
	{
		public GObject.TypeInterface g_iface;
		public function void(TlsClientConnection* conn, TlsClientConnection* source) copy_session_state;
	}
	[CRepr]
	public struct TlsConnectionClass
	{
		public IOStreamClass parent_class;
		public function c_int(TlsConnection* connection, TlsCertificate* peer_cert, TlsCertificateFlags errors) accept_certificate;
		public function c_int(TlsConnection* conn, Cancellable* cancellable) handshake;
		public function void(TlsConnection* conn, c_int io_priority, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) handshake_async;
		public function c_int(TlsConnection* conn, AsyncResult* result) handshake_finish;
		public function c_int(TlsConnection* conn, TlsChannelBindingType type, c_uchar* data) get_binding_data;
		public function char8*(TlsConnection* conn) get_negotiated_protocol;
		public void* padding;
	}
	[CRepr]
	public struct TlsConnectionPrivate : int
	{
	}
	[CRepr]
	public struct TlsDatabaseClass
	{
		public GObject.ObjectClass parent_class;
		public function TlsCertificateFlags(TlsDatabase* self, TlsCertificate* chain, char8* purpose, SocketConnectable* identity, TlsInteraction* interaction, TlsDatabaseVerifyFlags flags, Cancellable* cancellable) verify_chain;
		public function void(TlsDatabase* self, TlsCertificate* chain, char8* purpose, SocketConnectable* identity, TlsInteraction* interaction, TlsDatabaseVerifyFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) verify_chain_async;
		public function TlsCertificateFlags(TlsDatabase* self, AsyncResult* result) verify_chain_finish;
		public function char8*(TlsDatabase* self, TlsCertificate* certificate) create_certificate_handle;
		public function TlsCertificate*(TlsDatabase* self, char8* handle, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable) lookup_certificate_for_handle;
		public function void(TlsDatabase* self, char8* handle, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) lookup_certificate_for_handle_async;
		public function TlsCertificate*(TlsDatabase* self, AsyncResult* result) lookup_certificate_for_handle_finish;
		public function TlsCertificate*(TlsDatabase* self, TlsCertificate* certificate, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable) lookup_certificate_issuer;
		public function void(TlsDatabase* self, TlsCertificate* certificate, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) lookup_certificate_issuer_async;
		public function TlsCertificate*(TlsDatabase* self, AsyncResult* result) lookup_certificate_issuer_finish;
		public function GLib.List*(TlsDatabase* self, c_uchar* issuer_raw_dn, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable) lookup_certificates_issued_by;
		public function void(TlsDatabase* self, c_uchar* issuer_raw_dn, TlsInteraction* interaction, TlsDatabaseLookupFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) lookup_certificates_issued_by_async;
		public function GLib.List*(TlsDatabase* self, AsyncResult* result) lookup_certificates_issued_by_finish;
		public void* padding;
	}
	[CRepr]
	public struct TlsDatabasePrivate : int
	{
	}
	[CRepr]
	public struct TlsFileDatabaseInterface
	{
		public GObject.TypeInterface g_iface;
		public void* padding;
	}
	[CRepr]
	public struct TlsInteractionClass
	{
		public GObject.ObjectClass parent_class;
		public function TlsInteractionResult(TlsInteraction* interaction, TlsPassword* password, Cancellable* cancellable) ask_password;
		public function void(TlsInteraction* interaction, TlsPassword* password, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) ask_password_async;
		public function TlsInteractionResult(TlsInteraction* interaction, AsyncResult* result) ask_password_finish;
		public function TlsInteractionResult(TlsInteraction* interaction, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable) request_certificate;
		public function void(TlsInteraction* interaction, TlsConnection* connection, TlsCertificateRequestFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) request_certificate_async;
		public function TlsInteractionResult(TlsInteraction* interaction, AsyncResult* result) request_certificate_finish;
		public void* padding;
	}
	[CRepr]
	public struct TlsInteractionPrivate : int
	{
	}
	[CRepr]
	public struct TlsPasswordClass
	{
		public GObject.ObjectClass parent_class;
		public function c_uchar*(TlsPassword* password, c_ulong* length) get_value;
		public function void(TlsPassword* password, c_uchar* value, c_long length, GLib.DestroyNotify destroy) set_value;
		public function char8*(TlsPassword* password) get_default_warning;
		public void* padding;
	}
	[CRepr]
	public struct TlsPasswordPrivate : int
	{
	}
	[CRepr]
	public struct TlsServerConnectionInterface
	{
		public GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct UnixConnectionClass
	{
		public SocketConnectionClass parent_class;
	}
	[CRepr]
	public struct UnixConnectionPrivate : int
	{
	}
	[CRepr]
	public struct UnixCredentialsMessageClass
	{
		public SocketControlMessageClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
	}
	[CRepr]
	public struct UnixCredentialsMessagePrivate : int
	{
	}
	[CRepr]
	public struct UnixFDListClass
	{
		public GObject.ObjectClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct UnixFDListPrivate : int
	{
	}
	[CRepr]
	public struct UnixFDMessageClass
	{
		public SocketControlMessageClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
	}
	[CRepr]
	public struct UnixFDMessagePrivate : int
	{
	}
	[CRepr]
	public struct UnixInputStreamClass
	{
		public InputStreamClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct UnixInputStreamPrivate : int
	{
	}
	[CRepr]
	public struct UnixMountEntry
	{
	}
	[CRepr]
	public struct UnixMountMonitorClass : int
	{
	}
	[CRepr]
	public struct UnixMountPoint
	{
		[LinkName("g_unix_mount_point_compare")]
		public static extern c_int Compare(UnixMountPoint* mount1, UnixMountPoint* mount2);
		[LinkName("g_unix_mount_point_copy")]
		public static extern UnixMountPoint* Copy(UnixMountPoint* mount_point);
		[LinkName("g_unix_mount_point_free")]
		public static extern void Free(UnixMountPoint* mount_point);
		[LinkName("g_unix_mount_point_get_device_path")]
		public static extern char8* GetDevicePath(UnixMountPoint* mount_point);
		[LinkName("g_unix_mount_point_get_fs_type")]
		public static extern char8* GetFsType(UnixMountPoint* mount_point);
		[LinkName("g_unix_mount_point_get_mount_path")]
		public static extern char8* GetMountPath(UnixMountPoint* mount_point);
		[LinkName("g_unix_mount_point_get_options")]
		public static extern char8* GetOptions(UnixMountPoint* mount_point);
		[LinkName("g_unix_mount_point_guess_can_eject")]
		public static extern c_int GuessCanEject(UnixMountPoint* mount_point);
		[LinkName("g_unix_mount_point_guess_icon")]
		public static extern Icon* GuessIcon(UnixMountPoint* mount_point);
		[LinkName("g_unix_mount_point_guess_name")]
		public static extern char8* GuessName(UnixMountPoint* mount_point);
		[LinkName("g_unix_mount_point_guess_symbolic_icon")]
		public static extern Icon* GuessSymbolicIcon(UnixMountPoint* mount_point);
		[LinkName("g_unix_mount_point_is_loopback")]
		public static extern c_int IsLoopback(UnixMountPoint* mount_point);
		[LinkName("g_unix_mount_point_is_readonly")]
		public static extern c_int IsReadonly(UnixMountPoint* mount_point);
		[LinkName("g_unix_mount_point_is_user_mountable")]
		public static extern c_int IsUserMountable(UnixMountPoint* mount_point);
	}
	[CRepr]
	public struct UnixOutputStreamClass
	{
		public OutputStreamClass parent_class;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
	}
	[CRepr]
	public struct UnixOutputStreamPrivate : int
	{
	}
	[CRepr]
	public struct UnixSocketAddressClass
	{
		public SocketAddressClass parent_class;
	}
	[CRepr]
	public struct UnixSocketAddressPrivate : int
	{
	}
	[CRepr]
	public struct VfsClass
	{
		public GObject.ObjectClass parent_class;
		public function c_int(Vfs* vfs) is_active;
		public function File*(Vfs* vfs, char8* path) get_file_for_path;
		public function File*(Vfs* vfs, char8* uri) get_file_for_uri;
		public function char8*(Vfs* vfs) get_supported_uri_schemes;
		public function File*(Vfs* vfs, char8* parse_name) parse_name;
		public function void(Vfs* vfs, char8* filename, c_ulonglong device, FileAttributeMatcher* attribute_matcher, FileInfo* info, Cancellable* cancellable, void** extra_data, GLib.DestroyNotify* free_extra_data) local_file_add_info;
		public function void(Vfs* vfs, FileAttributeInfoList* list) add_writable_namespaces;
		public function c_int(Vfs* vfs, char8* filename, FileInfo* info, FileQueryInfoFlags flags, Cancellable* cancellable) local_file_set_attributes;
		public function void(Vfs* vfs, char8* filename) local_file_removed;
		public function void(Vfs* vfs, char8* source, char8* dest) local_file_moved;
		public function Icon*(Vfs* vfs, GLib.Variant* value) deserialize_icon;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
		public function void() _g_reserved6;
	}
	[CRepr]
	public struct VolumeIface
	{
		public GObject.TypeInterface g_iface;
		public function void(Volume* volume) changed;
		public function void(Volume* volume) removed;
		public function char8*(Volume* volume) get_name;
		public function Icon*(Volume* volume) get_icon;
		public function char8*(Volume* volume) get_uuid;
		public function Drive*(Volume* volume) get_drive;
		public function Mount*(Volume* volume) get_mount;
		public function c_int(Volume* volume) can_mount;
		public function c_int(Volume* volume) can_eject;
		public function void(Volume* volume, MountMountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) mount_fn;
		public function c_int(Volume* volume, AsyncResult* result) mount_finish;
		public function void(Volume* volume, MountUnmountFlags flags, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) eject;
		public function c_int(Volume* volume, AsyncResult* result) eject_finish;
		public function char8*(Volume* volume, char8* kind) get_identifier;
		public function char8**(Volume* volume) enumerate_identifiers;
		public function c_int(Volume* volume) should_automount;
		public function File*(Volume* volume) get_activation_root;
		public function void(Volume* volume, MountUnmountFlags flags, MountOperation* mount_operation, Cancellable* cancellable, AsyncReadyCallback callback, void* user_data) eject_with_operation;
		public function c_int(Volume* volume, AsyncResult* result) eject_with_operation_finish;
		public function char8*(Volume* volume) get_sort_key;
		public function Icon*(Volume* volume) get_symbolic_icon;
	}
	[CRepr]
	public struct VolumeMonitorClass
	{
		public GObject.ObjectClass parent_class;
		public function void(VolumeMonitor* volume_monitor, Volume* volume) volume_added;
		public function void(VolumeMonitor* volume_monitor, Volume* volume) volume_removed;
		public function void(VolumeMonitor* volume_monitor, Volume* volume) volume_changed;
		public function void(VolumeMonitor* volume_monitor, Mount* mount) mount_added;
		public function void(VolumeMonitor* volume_monitor, Mount* mount) mount_removed;
		public function void(VolumeMonitor* volume_monitor, Mount* mount) mount_pre_unmount;
		public function void(VolumeMonitor* volume_monitor, Mount* mount) mount_changed;
		public function void(VolumeMonitor* volume_monitor, Drive* drive) drive_connected;
		public function void(VolumeMonitor* volume_monitor, Drive* drive) drive_disconnected;
		public function void(VolumeMonitor* volume_monitor, Drive* drive) drive_changed;
		public function c_int() is_supported;
		public function GLib.List*(VolumeMonitor* volume_monitor) get_connected_drives;
		public function GLib.List*(VolumeMonitor* volume_monitor) get_volumes;
		public function GLib.List*(VolumeMonitor* volume_monitor) get_mounts;
		public function Volume*(VolumeMonitor* volume_monitor, char8* uuid) get_volume_for_uuid;
		public function Mount*(VolumeMonitor* volume_monitor, char8* uuid) get_mount_for_uuid;
		public function Volume*(Mount* mount, VolumeMonitor* volume_monitor) adopt_orphan_mount;
		public function void(VolumeMonitor* volume_monitor, Drive* drive) drive_eject_button;
		public function void(VolumeMonitor* volume_monitor, Drive* drive) drive_stop_button;
		public function void() _g_reserved1;
		public function void() _g_reserved2;
		public function void() _g_reserved3;
		public function void() _g_reserved4;
		public function void() _g_reserved5;
		public function void() _g_reserved6;
	}
	[CRepr]
	public struct ZlibCompressorClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ZlibDecompressorClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr, AllowDuplicates]
	public enum AppInfoCreateFlags
	{
		None = 0,
		NeedsTerminal = 1,
		SupportsUris = 2,
		SupportsStartupNotification = 4
	}
	[CRepr, AllowDuplicates]
	public enum ApplicationFlags
	{
		FlagsNone = 0,
		DefaultFlags = 0,
		IsService = 1,
		IsLauncher = 2,
		HandlesOpen = 4,
		HandlesCommandLine = 8,
		SendEnvironment = 16,
		NonUnique = 32,
		CanOverrideAppId = 64,
		AllowReplacement = 128,
		Replace = 256
	}
	[CRepr, AllowDuplicates]
	public enum AskPasswordFlags
	{
		NeedPassword = 1,
		NeedUsername = 2,
		NeedDomain = 4,
		SavingSupported = 8,
		AnonymousSupported = 16,
		Tcrypt = 32
	}
	[CRepr, AllowDuplicates]
	public enum BusNameOwnerFlags
	{
		None = 0,
		AllowReplacement = 1,
		Replace = 2,
		DoNotQueue = 4
	}
	[CRepr, AllowDuplicates]
	public enum BusNameWatcherFlags
	{
		None = 0,
		AutoStart = 1
	}
	[CRepr, AllowDuplicates]
	public enum BusType
	{
		Starter = -1,
		None = 0,
		System = 1,
		Session = 2
	}
	[CRepr, AllowDuplicates]
	public enum ConverterFlags
	{
		None = 0,
		InputAtEnd = 1,
		Flush = 2
	}
	[CRepr, AllowDuplicates]
	public enum ConverterResult
	{
		Error = 0,
		Converted = 1,
		Finished = 2,
		Flushed = 3
	}
	[CRepr, AllowDuplicates]
	public enum CredentialsType
	{
		Invalid = 0,
		LinuxUcred = 1,
		FreebsdCmsgcred = 2,
		OpenbsdSockpeercred = 3,
		SolarisUcred = 4,
		NetbsdUnpcbid = 5,
		AppleXucred = 6,
		Win32Pid = 7
	}
	[CRepr, AllowDuplicates]
	public enum DBusCallFlags
	{
		None = 0,
		NoAutoStart = 1,
		AllowInteractiveAuthorization = 2
	}
	[CRepr, AllowDuplicates]
	public enum DBusCapabilityFlags
	{
		None = 0,
		UnixFdPassing = 1
	}
	[CRepr, AllowDuplicates]
	public enum DBusConnectionFlags
	{
		None = 0,
		AuthenticationClient = 1,
		AuthenticationServer = 2,
		AuthenticationAllowAnonymous = 4,
		MessageBusConnection = 8,
		DelayMessageProcessing = 16,
		AuthenticationRequireSameUser = 32,
		CrossNamespace = 64
	}
	[CRepr, AllowDuplicates]
	public enum DBusError
	{
		Failed = 0,
		NoMemory = 1,
		ServiceUnknown = 2,
		NameHasNoOwner = 3,
		NoReply = 4,
		IoError = 5,
		BadAddress = 6,
		NotSupported = 7,
		LimitsExceeded = 8,
		AccessDenied = 9,
		AuthFailed = 10,
		NoServer = 11,
		Timeout = 12,
		NoNetwork = 13,
		AddressInUse = 14,
		Disconnected = 15,
		InvalidArgs = 16,
		FileNotFound = 17,
		FileExists = 18,
		UnknownMethod = 19,
		TimedOut = 20,
		MatchRuleNotFound = 21,
		MatchRuleInvalid = 22,
		SpawnExecFailed = 23,
		SpawnForkFailed = 24,
		SpawnChildExited = 25,
		SpawnChildSignaled = 26,
		SpawnFailed = 27,
		SpawnSetupFailed = 28,
		SpawnConfigInvalid = 29,
		SpawnServiceInvalid = 30,
		SpawnServiceNotFound = 31,
		SpawnPermissionsInvalid = 32,
		SpawnFileInvalid = 33,
		SpawnNoMemory = 34,
		UnixProcessIdUnknown = 35,
		InvalidSignature = 36,
		InvalidFileContent = 37,
		SelinuxSecurityContextUnknown = 38,
		AdtAuditDataUnknown = 39,
		ObjectPathInUse = 40,
		UnknownObject = 41,
		UnknownInterface = 42,
		UnknownProperty = 43,
		PropertyReadOnly = 44
	}
	[CRepr, AllowDuplicates]
	public enum DBusInterfaceSkeletonFlags
	{
		None = 0,
		HandleMethodInvocationsInThread = 1
	}
	[CRepr, AllowDuplicates]
	public enum DBusMessageByteOrder
	{
		BigEndian = 66,
		LittleEndian = 108
	}
	[CRepr, AllowDuplicates]
	public enum DBusMessageFlags
	{
		None = 0,
		NoReplyExpected = 1,
		NoAutoStart = 2,
		AllowInteractiveAuthorization = 4
	}
	[CRepr, AllowDuplicates]
	public enum DBusMessageHeaderField
	{
		Invalid = 0,
		Path = 1,
		Interface = 2,
		Member = 3,
		ErrorName = 4,
		ReplySerial = 5,
		Destination = 6,
		Sender = 7,
		Signature = 8,
		NumUnixFds = 9
	}
	[CRepr, AllowDuplicates]
	public enum DBusMessageType
	{
		Invalid = 0,
		MethodCall = 1,
		MethodReturn = 2,
		Error = 3,
		Signal = 4
	}
	[CRepr, AllowDuplicates]
	public enum DBusObjectManagerClientFlags
	{
		None = 0,
		DoNotAutoStart = 1
	}
	[CRepr, AllowDuplicates]
	public enum DBusPropertyInfoFlags
	{
		None = 0,
		Readable = 1,
		Writable = 2
	}
	[CRepr, AllowDuplicates]
	public enum DBusProxyFlags
	{
		None = 0,
		DoNotLoadProperties = 1,
		DoNotConnectSignals = 2,
		DoNotAutoStart = 4,
		GetInvalidatedProperties = 8,
		DoNotAutoStartAtConstruction = 16,
		NoMatchRule = 32
	}
	[CRepr, AllowDuplicates]
	public enum DBusSendMessageFlags
	{
		None = 0,
		PreserveSerial = 1
	}
	[CRepr, AllowDuplicates]
	public enum DBusServerFlags
	{
		None = 0,
		RunInThread = 1,
		AuthenticationAllowAnonymous = 2,
		AuthenticationRequireSameUser = 4
	}
	[CRepr, AllowDuplicates]
	public enum DBusSignalFlags
	{
		None = 0,
		NoMatchRule = 1,
		MatchArg0Namespace = 2,
		MatchArg0Path = 4
	}
	[CRepr, AllowDuplicates]
	public enum DBusSubtreeFlags
	{
		None = 0,
		DispatchToUnenumeratedNodes = 1
	}
	[CRepr, AllowDuplicates]
	public enum DataStreamByteOrder
	{
		BigEndian = 0,
		LittleEndian = 1,
		HostEndian = 2
	}
	[CRepr, AllowDuplicates]
	public enum DataStreamNewlineType
	{
		Lf = 0,
		Cr = 1,
		CrLf = 2,
		Any = 3
	}
	[CRepr, AllowDuplicates]
	public enum DriveStartFlags
	{
		None = 0
	}
	[CRepr, AllowDuplicates]
	public enum DriveStartStopType
	{
		Unknown = 0,
		Shutdown = 1,
		Network = 2,
		Multidisk = 3,
		Password = 4
	}
	[CRepr, AllowDuplicates]
	public enum EmblemOrigin
	{
		Unknown = 0,
		Device = 1,
		Livemetadata = 2,
		Tag = 3
	}
	[CRepr, AllowDuplicates]
	public enum FileAttributeInfoFlags
	{
		None = 0,
		CopyWithFile = 1,
		CopyWhenMoved = 2
	}
	[CRepr, AllowDuplicates]
	public enum FileAttributeStatus
	{
		Unset = 0,
		Set = 1,
		ErrorSetting = 2
	}
	[CRepr, AllowDuplicates]
	public enum FileAttributeType
	{
		Invalid = 0,
		String = 1,
		ByteString = 2,
		Boolean = 3,
		Uint32 = 4,
		Int32 = 5,
		Uint64 = 6,
		Int64 = 7,
		Object = 8,
		Stringv = 9
	}
	[CRepr, AllowDuplicates]
	public enum FileCopyFlags
	{
		None = 0,
		Overwrite = 1,
		Backup = 2,
		NofollowSymlinks = 4,
		AllMetadata = 8,
		NoFallbackForMove = 16,
		TargetDefaultPerms = 32
	}
	[CRepr, AllowDuplicates]
	public enum FileCreateFlags
	{
		None = 0,
		Private = 1,
		ReplaceDestination = 2
	}
	[CRepr, AllowDuplicates]
	public enum FileMeasureFlags
	{
		None = 0,
		ReportAnyError = 2,
		ApparentSize = 4,
		NoXdev = 8
	}
	[CRepr, AllowDuplicates]
	public enum FileMonitorEvent
	{
		Changed = 0,
		ChangesDoneHint = 1,
		Deleted = 2,
		Created = 3,
		AttributeChanged = 4,
		PreUnmount = 5,
		Unmounted = 6,
		Moved = 7,
		Renamed = 8,
		MovedIn = 9,
		MovedOut = 10
	}
	[CRepr, AllowDuplicates]
	public enum FileMonitorFlags
	{
		None = 0,
		WatchMounts = 1,
		SendMoved = 2,
		WatchHardLinks = 4,
		WatchMoves = 8
	}
	[CRepr, AllowDuplicates]
	public enum FileQueryInfoFlags
	{
		None = 0,
		NofollowSymlinks = 1
	}
	[CRepr, AllowDuplicates]
	public enum FileType
	{
		Unknown = 0,
		Regular = 1,
		Directory = 2,
		SymbolicLink = 3,
		Special = 4,
		Shortcut = 5,
		Mountable = 6
	}
	[CRepr, AllowDuplicates]
	public enum FilesystemPreviewType
	{
		IfAlways = 0,
		IfLocal = 1,
		Never = 2
	}
	[CRepr, AllowDuplicates]
	public enum IOErrorEnum
	{
		Failed = 0,
		NotFound = 1,
		Exists = 2,
		IsDirectory = 3,
		NotDirectory = 4,
		NotEmpty = 5,
		NotRegularFile = 6,
		NotSymbolicLink = 7,
		NotMountableFile = 8,
		FilenameTooLong = 9,
		InvalidFilename = 10,
		TooManyLinks = 11,
		NoSpace = 12,
		InvalidArgument = 13,
		PermissionDenied = 14,
		NotSupported = 15,
		NotMounted = 16,
		AlreadyMounted = 17,
		Closed = 18,
		Cancelled = 19,
		Pending = 20,
		ReadOnly = 21,
		CantCreateBackup = 22,
		WrongEtag = 23,
		TimedOut = 24,
		WouldRecurse = 25,
		Busy = 26,
		WouldBlock = 27,
		HostNotFound = 28,
		WouldMerge = 29,
		FailedHandled = 30,
		TooManyOpenFiles = 31,
		NotInitialized = 32,
		AddressInUse = 33,
		PartialInput = 34,
		InvalidData = 35,
		DbusError = 36,
		HostUnreachable = 37,
		NetworkUnreachable = 38,
		ConnectionRefused = 39,
		ProxyFailed = 40,
		ProxyAuthFailed = 41,
		ProxyNeedAuth = 42,
		ProxyNotAllowed = 43,
		BrokenPipe = 44,
		ConnectionClosed = 44,
		NotConnected = 45,
		MessageTooLarge = 46,
		NoSuchDevice = 47
	}
	[CRepr, AllowDuplicates]
	public enum IOModuleScopeFlags
	{
		None = 0,
		BlockDuplicates = 1
	}
	[CRepr, AllowDuplicates]
	public enum IOStreamSpliceFlags
	{
		None = 0,
		CloseStream1 = 1,
		CloseStream2 = 2,
		WaitForBoth = 4
	}
	[CRepr, AllowDuplicates]
	public enum MemoryMonitorWarningLevel
	{
		Low = 50,
		Medium = 100,
		Critical = 255
	}
	[CRepr, AllowDuplicates]
	public enum MountMountFlags
	{
		None = 0
	}
	[CRepr, AllowDuplicates]
	public enum MountOperationResult
	{
		Handled = 0,
		Aborted = 1,
		Unhandled = 2
	}
	[CRepr, AllowDuplicates]
	public enum MountUnmountFlags
	{
		None = 0,
		Force = 1
	}
	[CRepr, AllowDuplicates]
	public enum NetworkConnectivity
	{
		Local = 1,
		Limited = 2,
		Portal = 3,
		Full = 4
	}
	[CRepr, AllowDuplicates]
	public enum NotificationPriority
	{
		Normal = 0,
		Low = 1,
		High = 2,
		Urgent = 3
	}
	[CRepr, AllowDuplicates]
	public enum OutputStreamSpliceFlags
	{
		None = 0,
		CloseSource = 1,
		CloseTarget = 2
	}
	[CRepr, AllowDuplicates]
	public enum PasswordSave
	{
		Never = 0,
		ForSession = 1,
		Permanently = 2
	}
	[CRepr, AllowDuplicates]
	public enum PollableReturn
	{
		Failed = 0,
		Ok = 1,
		WouldBlock = -27
	}
	[CRepr, AllowDuplicates]
	public enum ResolverError
	{
		NotFound = 0,
		TemporaryFailure = 1,
		Internal = 2
	}
	[CRepr, AllowDuplicates]
	public enum ResolverNameLookupFlags
	{
		Default = 0,
		Ipv4Only = 1,
		Ipv6Only = 2
	}
	[CRepr, AllowDuplicates]
	public enum ResolverRecordType
	{
		Srv = 1,
		Mx = 2,
		Txt = 3,
		Soa = 4,
		Ns = 5
	}
	[CRepr, AllowDuplicates]
	public enum ResourceError
	{
		NotFound = 0,
		Internal = 1
	}
	[CRepr, AllowDuplicates]
	public enum ResourceFlags
	{
		None = 0,
		Compressed = 1
	}
	[CRepr, AllowDuplicates]
	public enum ResourceLookupFlags
	{
		None = 0
	}
	[CRepr, AllowDuplicates]
	public enum SettingsBindFlags
	{
		Default = 0,
		Get = 1,
		Set = 2,
		NoSensitivity = 4,
		GetNoChanges = 8,
		InvertBoolean = 16
	}
	[CRepr, AllowDuplicates]
	public enum SocketClientEvent
	{
		Resolving = 0,
		Resolved = 1,
		Connecting = 2,
		Connected = 3,
		ProxyNegotiating = 4,
		ProxyNegotiated = 5,
		TlsHandshaking = 6,
		TlsHandshaked = 7,
		Complete = 8
	}
	[CRepr, AllowDuplicates]
	public enum SocketFamily
	{
		Invalid = 0,
		Unix = 1,
		Ipv4 = 2,
		Ipv6 = 10
	}
	[CRepr, AllowDuplicates]
	public enum SocketListenerEvent
	{
		Binding = 0,
		Bound = 1,
		Listening = 2,
		Listened = 3
	}
	[CRepr, AllowDuplicates]
	public enum SocketMsgFlags
	{
		None = 0,
		Oob = 1,
		Peek = 2,
		Dontroute = 4
	}
	[CRepr, AllowDuplicates]
	public enum SocketProtocol
	{
		Unknown = -1,
		Default = 0,
		Tcp = 6,
		Udp = 17,
		Sctp = 132
	}
	[CRepr, AllowDuplicates]
	public enum SocketType
	{
		Invalid = 0,
		Stream = 1,
		Datagram = 2,
		Seqpacket = 3
	}
	[CRepr, AllowDuplicates]
	public enum SubprocessFlags
	{
		None = 0,
		StdinPipe = 1,
		StdinInherit = 2,
		StdoutPipe = 4,
		StdoutSilence = 8,
		StderrPipe = 16,
		StderrSilence = 32,
		StderrMerge = 64,
		InheritFds = 128,
		SearchPathFromEnvp = 256
	}
	[CRepr, AllowDuplicates]
	public enum TestDBusFlags
	{
		None = 0
	}
	[CRepr, AllowDuplicates]
	public enum TlsAuthenticationMode
	{
		None = 0,
		Requested = 1,
		Required = 2
	}
	[CRepr, AllowDuplicates]
	public enum TlsCertificateFlags
	{
		NoFlags = 0,
		UnknownCa = 1,
		BadIdentity = 2,
		NotActivated = 4,
		Expired = 8,
		Revoked = 16,
		Insecure = 32,
		GenericError = 64,
		ValidateAll = 127
	}
	[CRepr, AllowDuplicates]
	public enum TlsCertificateRequestFlags
	{
		None = 0
	}
	[CRepr, AllowDuplicates]
	public enum TlsChannelBindingError
	{
		NotImplemented = 0,
		InvalidState = 1,
		NotAvailable = 2,
		NotSupported = 3,
		GeneralError = 4
	}
	[CRepr, AllowDuplicates]
	public enum TlsChannelBindingType
	{
		Unique = 0,
		ServerEndPoint = 1,
		Exporter = 2
	}
	[CRepr, AllowDuplicates]
	public enum TlsDatabaseLookupFlags
	{
		None = 0,
		Keypair = 1
	}
	[CRepr, AllowDuplicates]
	public enum TlsDatabaseVerifyFlags
	{
		None = 0
	}
	[CRepr, AllowDuplicates]
	public enum TlsError
	{
		Unavailable = 0,
		Misc = 1,
		BadCertificate = 2,
		NotTls = 3,
		Handshake = 4,
		CertificateRequired = 5,
		Eof = 6,
		InappropriateFallback = 7,
		BadCertificatePassword = 8
	}
	[CRepr, AllowDuplicates]
	public enum TlsInteractionResult
	{
		Unhandled = 0,
		Handled = 1,
		Failed = 2
	}
	[CRepr, AllowDuplicates]
	public enum TlsPasswordFlags
	{
		None = 0,
		Retry = 2,
		ManyTries = 4,
		FinalTry = 8,
		Pkcs11User = 16,
		Pkcs11SecurityOfficer = 32,
		Pkcs11ContextSpecific = 64
	}
	[CRepr, AllowDuplicates]
	public enum TlsProtocolVersion
	{
		Unknown = 0,
		Ssl30 = 1,
		Tls10 = 2,
		Tls11 = 3,
		Tls12 = 4,
		Tls13 = 5,
		Dtls10 = 201,
		Dtls12 = 202
	}
	[CRepr, AllowDuplicates]
	public enum TlsRehandshakeMode
	{
		Never = 0,
		Safely = 1,
		Unsafely = 2
	}
	[CRepr, AllowDuplicates]
	public enum UnixSocketAddressType
	{
		Invalid = 0,
		Anonymous = 1,
		Path = 2,
		Abstract = 3,
		AbstractPadded = 4
	}
	[CRepr, AllowDuplicates]
	public enum ZlibCompressorFormat
	{
		Zlib = 0,
		Gzip = 1,
		Raw = 2
	}
	public struct Action;
	public struct ActionGroup;
	public struct ActionMap;
	public struct AppInfo;
	public struct AsyncInitable;
	public struct AsyncResult;
	public struct Converter;
	public struct DBusInterface;
	public struct DBusObject;
	public struct DBusObjectManager;
	public struct DatagramBased;
	public struct DebugController;
	public struct DesktopAppInfoLookup;
	public struct Drive;
	public struct DtlsClientConnection;
	public struct DtlsConnection;
	public struct DtlsServerConnection;
	public struct File;
	public struct FileDescriptorBased;
	public struct Icon;
	public struct Initable;
	public struct ListModel;
	public struct LoadableIcon;
	public struct MemoryMonitor;
	public struct Mount;
	public struct NetworkMonitor;
	public struct PollableInputStream;
	public struct PollableOutputStream;
	public struct PowerProfileMonitor;
	public struct Proxy;
	public struct ProxyResolver;
	public struct RemoteActionGroup;
	public struct Seekable;
	public struct SocketConnectable;
	public struct TlsBackend;
	public struct TlsClientConnection;
	public struct TlsFileDatabase;
	public struct TlsServerConnection;
	public struct Volume;
	public function void AsyncReadyCallback(GObject.Object* source_object, AsyncResult* res, void* data);
	public function void BusAcquiredCallback(DBusConnection* connection, char8* name, void* user_data);
	public function void BusNameAcquiredCallback(DBusConnection* connection, char8* name, void* user_data);
	public function void BusNameAppearedCallback(DBusConnection* connection, char8* name, char8* name_owner, void* user_data);
	public function void BusNameLostCallback(DBusConnection* connection, char8* name, void* user_data);
	public function void BusNameVanishedCallback(DBusConnection* connection, char8* name, void* user_data);
	public function c_int CancellableSourceFunc(Cancellable* cancellable, void* data);
	public function GLib.Variant* DBusInterfaceGetPropertyFunc(DBusConnection* connection, char8* sender, char8* object_path, char8* interface_name, char8* property_name, GLib.Error** error, void* user_data);
	public function void DBusInterfaceMethodCallFunc(DBusConnection* connection, char8* sender, char8* object_path, char8* interface_name, char8* method_name, GLib.Variant* parameters, DBusMethodInvocation* invocation, void* user_data);
	public function c_int DBusInterfaceSetPropertyFunc(DBusConnection* connection, char8* sender, char8* object_path, char8* interface_name, char8* property_name, GLib.Variant* value, GLib.Error** error, void* user_data);
	public function DBusMessage* DBusMessageFilterFunction(DBusConnection* connection, DBusMessage* message, c_int incoming, void* user_data);
	public function GLib.Type DBusProxyTypeFunc(DBusObjectManagerClient* manager, char8* object_path, char8* interface_name, void* data);
	public function void DBusSignalCallback(DBusConnection* connection, char8* sender_name, char8* object_path, char8* interface_name, char8* signal_name, GLib.Variant* parameters, void* user_data);
	public function DBusInterfaceVTable* DBusSubtreeDispatchFunc(DBusConnection* connection, char8* sender, char8* object_path, char8* interface_name, char8* node, void** out_user_data, void* user_data);
	public function char8** DBusSubtreeEnumerateFunc(DBusConnection* connection, char8* sender, char8* object_path, void* user_data);
	public function DBusInterfaceInfo** DBusSubtreeIntrospectFunc(DBusConnection* connection, char8* sender, char8* object_path, char8* node, void* user_data);
	public function c_int DatagramBasedSourceFunc(DatagramBased* datagram_based, GLib.IOCondition condition, void* data);
	public function void DesktopAppLaunchCallback(DesktopAppInfo* appinfo, GLib.Pid pid, void* user_data);
	public function void FileMeasureProgressCallback(c_int reporting, c_ulonglong current_size, c_ulonglong num_dirs, c_ulonglong num_files, void* data);
	public function void FileProgressCallback(c_longlong current_num_bytes, c_longlong total_num_bytes, void* data);
	public function c_int FileReadMoreCallback(char8* file_contents, c_longlong file_size, void* callback_data);
	public function c_int IOSchedulerJobFunc(IOSchedulerJob* job, Cancellable* cancellable, void* data);
	public function c_int PollableSourceFunc(GObject.Object* pollable_stream, void* data);
	public function void* ReallocFunc(void* data, c_ulong size);
	public function c_int SettingsBindGetMapping(GObject.Value* value, GLib.Variant* variant, void* user_data);
	public function GLib.Variant* SettingsBindSetMapping(GObject.Value* value, GLib.VariantType* expected_type, void* user_data);
	public function c_int SettingsGetMapping(GLib.Variant* value, void** result, void* user_data);
	public function void SimpleAsyncThreadFunc(SimpleAsyncResult* res, GObject.Object* object, Cancellable* cancellable);
	public function c_int SocketSourceFunc(Socket* socket, GLib.IOCondition condition, void* data);
	public function void TaskThreadFunc(Task* task, GObject.Object* source_object, void* task_data, Cancellable* cancellable);
	public function File* VfsFileLookupFunc(Vfs* vfs, char8* identifier, void* user_data);
}
