namespace Gdk;

using System;
using System.Interop;

using static Gio.Gio;
using static GLib.GLib;
using static GdkPixbuf.GdkPixbuf;
using static Cairo.Cairo;
using static GObject.GObject;
using static Pango.Pango;

class Gdk
{
	[CRepr]
	public struct GdkAnchorHints
	{
		public const int GDK_ANCHOR_FLIP_X = 1;
		public const int GDK_ANCHOR_FLIP_Y = 2;
		public const int GDK_ANCHOR_SLIDE_X = 4;
		public const int GDK_ANCHOR_SLIDE_Y = 8;
		public const int GDK_ANCHOR_RESIZE_X = 16;
		public const int GDK_ANCHOR_RESIZE_Y = 32;
		public const int GDK_ANCHOR_FLIP = 3;
		public const int GDK_ANCHOR_SLIDE = 12;
		public const int GDK_ANCHOR_RESIZE = 48;
	}
	[CRepr]
	public struct GdkAppLaunchContext;
	[LinkName("gdk_app_launch_context_get_display")]
	public static extern GdkDisplay* app_launch_context_get_display(GdkAppLaunchContext* context);
	[LinkName("gdk_app_launch_context_set_desktop")]
	public static extern void app_launch_context_set_desktop(GdkAppLaunchContext* context, c_int desktop);
	[LinkName("gdk_app_launch_context_set_icon")]
	public static extern void app_launch_context_set_icon(GdkAppLaunchContext* context, GIcon* icon);
	[LinkName("gdk_app_launch_context_set_icon_name")]
	public static extern void app_launch_context_set_icon_name(GdkAppLaunchContext* context,  c_char* icon_name);
	[LinkName("gdk_app_launch_context_set_timestamp")]
	public static extern void app_launch_context_set_timestamp(GdkAppLaunchContext* context, c_uint timestamp);
	[CRepr]
	public struct GdkAxisFlags
	{
		public const int GDK_AXIS_FLAG_X = 2;
		public const int GDK_AXIS_FLAG_Y = 4;
		public const int GDK_AXIS_FLAG_DELTA_X = 8;
		public const int GDK_AXIS_FLAG_DELTA_Y = 16;
		public const int GDK_AXIS_FLAG_PRESSURE = 32;
		public const int GDK_AXIS_FLAG_XTILT = 64;
		public const int GDK_AXIS_FLAG_YTILT = 128;
		public const int GDK_AXIS_FLAG_WHEEL = 256;
		public const int GDK_AXIS_FLAG_DISTANCE = 512;
		public const int GDK_AXIS_FLAG_ROTATION = 1024;
		public const int GDK_AXIS_FLAG_SLIDER = 2048;
	}
	public enum GdkAxisUse : c_int
	{
		GDK_AXIS_IGNORE,
		GDK_AXIS_X,
		GDK_AXIS_Y,
		GDK_AXIS_DELTA_X,
		GDK_AXIS_DELTA_Y,
		GDK_AXIS_PRESSURE,
		GDK_AXIS_XTILT,
		GDK_AXIS_YTILT,
		GDK_AXIS_WHEEL,
		GDK_AXIS_DISTANCE,
		GDK_AXIS_ROTATION,
		GDK_AXIS_SLIDER,
		GDK_AXIS_LAST
	}
	[CRepr]
	public struct GdkButtonEvent;
	[LinkName("gdk_button_event_get_button")]
	public static extern c_uint button_event_get_button(GdkEvent* event);
	[CRepr]
	public struct GdkCairoContext;
	[LinkName("gdk_cairo_context_cairo_create")]
	public static extern cairo_t* cairo_context_cairo_create(GdkCairoContext* self);
	[CRepr]
	public struct GdkClipboard;
	[LinkName("gdk_clipboard_get_content")]
	public static extern GdkContentProvider* clipboard_get_content(GdkClipboard* clipboard);
	[LinkName("gdk_clipboard_get_display")]
	public static extern GdkDisplay* clipboard_get_display(GdkClipboard* clipboard);
	[LinkName("gdk_clipboard_get_formats")]
	public static extern GdkContentFormats* clipboard_get_formats(GdkClipboard* clipboard);
	[LinkName("gdk_clipboard_is_local")]
	public static extern c_int clipboard_is_local(GdkClipboard* clipboard);
	[LinkName("gdk_clipboard_read_async")]
	public static extern void clipboard_read_async(GdkClipboard* clipboard, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_clipboard_read_finish")]
	public static extern GInputStream* clipboard_read_finish(GdkClipboard* clipboard, GAsyncResult* result,  c_char** out_mime_type);
	[LinkName("gdk_clipboard_read_text_async")]
	public static extern void clipboard_read_text_async(GdkClipboard* clipboard, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_clipboard_read_text_finish")]
	public static extern c_char* clipboard_read_text_finish(GdkClipboard* clipboard, GAsyncResult* result);
	[LinkName("gdk_clipboard_read_texture_async")]
	public static extern void clipboard_read_texture_async(GdkClipboard* clipboard, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_clipboard_read_texture_finish")]
	public static extern GdkTexture* clipboard_read_texture_finish(GdkClipboard* clipboard, GAsyncResult* result);
	[LinkName("gdk_clipboard_read_value_async")]
	public static extern void clipboard_read_value_async(GdkClipboard* clipboard, GType type, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_clipboard_read_value_finish")]
	public static extern  GValue* clipboard_read_value_finish(GdkClipboard* clipboard, GAsyncResult* result);
	[LinkName("gdk_clipboard_set")]
	public static extern void clipboard_set(GdkClipboard* clipboard, GType type);
	[LinkName("gdk_clipboard_set_content")]
	public static extern c_int clipboard_set_content(GdkClipboard* clipboard, GdkContentProvider* provider);
	[LinkName("gdk_clipboard_set_text")]
	public static extern void clipboard_set_text(GdkClipboard* clipboard,  c_char* text);
	[LinkName("gdk_clipboard_set_texture")]
	public static extern void clipboard_set_texture(GdkClipboard* clipboard, GdkTexture* texture);
	[LinkName("gdk_clipboard_set_valist")]
	public static extern void clipboard_set_valist(GdkClipboard* clipboard, GType type, VarArgs args);
	[LinkName("gdk_clipboard_set_value")]
	public static extern void clipboard_set_value(GdkClipboard* clipboard,  GValue* value);
	[LinkName("gdk_clipboard_store_async")]
	public static extern void clipboard_store_async(GdkClipboard* clipboard, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_clipboard_store_finish")]
	public static extern c_int clipboard_store_finish(GdkClipboard* clipboard, GAsyncResult* result);
	public function void GdkContentDeserializeFunc(GdkContentDeserializer* deserializer);
	[CRepr]
	public struct GdkContentDeserializer;
	[LinkName("gdk_content_deserializer_get_cancellable")]
	public static extern GCancellable* content_deserializer_get_cancellable(GdkContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_gtype")]
	public static extern GType content_deserializer_get_gtype(GdkContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_input_stream")]
	public static extern GInputStream* content_deserializer_get_input_stream(GdkContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_mime_type")]
	public static extern  c_char* content_deserializer_get_mime_type(GdkContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_priority")]
	public static extern c_int content_deserializer_get_priority(GdkContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_task_data")]
	public static extern void* content_deserializer_get_task_data(GdkContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_user_data")]
	public static extern void* content_deserializer_get_user_data(GdkContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_value")]
	public static extern GValue* content_deserializer_get_value(GdkContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_return_error")]
	public static extern void content_deserializer_return_error(GdkContentDeserializer* deserializer, GError* error);
	[LinkName("gdk_content_deserializer_return_success")]
	public static extern void content_deserializer_return_success(GdkContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_set_task_data")]
	public static extern void content_deserializer_set_task_data(GdkContentDeserializer* deserializer, void* data, GDestroyNotify notify);
	[CRepr]
	public struct GdkContentFormats
	{
	}
	[CRepr]
	public struct GdkContentFormatsBuilder
	{
	}
	[CRepr]
	public struct GdkContentProvider;
	[LinkName("gdk_content_provider_new_for_bytes")]
	public static extern GdkContentProvider* content_provider_new_for_bytes( c_char* mime_type, GBytes* bytes);
	[LinkName("gdk_content_provider_new_for_value")]
	public static extern GdkContentProvider* content_provider_new_for_value( GValue* value);
	[LinkName("gdk_content_provider_new_typed")]
	public static extern GdkContentProvider* content_provider_new_typed(GType type);
	[LinkName("gdk_content_provider_new_union")]
	public static extern GdkContentProvider* content_provider_new_union(c_ulong n_providers);
	[LinkName("gdk_content_provider_content_changed")]
	public static extern void content_provider_content_changed(GdkContentProvider* provider);
	[LinkName("gdk_content_provider_get_value")]
	public static extern c_int content_provider_get_value(GdkContentProvider* provider, GValue* value);
	[LinkName("gdk_content_provider_ref_formats")]
	public static extern GdkContentFormats* content_provider_ref_formats(GdkContentProvider* provider);
	[LinkName("gdk_content_provider_ref_storable_formats")]
	public static extern GdkContentFormats* content_provider_ref_storable_formats(GdkContentProvider* provider);
	[LinkName("gdk_content_provider_write_mime_type_async")]
	public static extern void content_provider_write_mime_type_async(GdkContentProvider* provider,  c_char* mime_type, GOutputStream* stream, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_content_provider_write_mime_type_finish")]
	public static extern c_int content_provider_write_mime_type_finish(GdkContentProvider* provider, GAsyncResult* result);
	[CRepr]
	public struct GdkContentProviderClass
	{
		GObjectClass parent_class;
	}
	public function void GdkContentSerializeFunc(GdkContentSerializer* serializer);
	[CRepr]
	public struct GdkContentSerializer;
	[LinkName("gdk_content_serializer_get_cancellable")]
	public static extern GCancellable* content_serializer_get_cancellable(GdkContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_gtype")]
	public static extern GType content_serializer_get_gtype(GdkContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_mime_type")]
	public static extern  c_char* content_serializer_get_mime_type(GdkContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_output_stream")]
	public static extern GOutputStream* content_serializer_get_output_stream(GdkContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_priority")]
	public static extern c_int content_serializer_get_priority(GdkContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_task_data")]
	public static extern void* content_serializer_get_task_data(GdkContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_user_data")]
	public static extern void* content_serializer_get_user_data(GdkContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_value")]
	public static extern  GValue* content_serializer_get_value(GdkContentSerializer* serializer);
	[LinkName("gdk_content_serializer_return_error")]
	public static extern void content_serializer_return_error(GdkContentSerializer* serializer, GError* error);
	[LinkName("gdk_content_serializer_return_success")]
	public static extern void content_serializer_return_success(GdkContentSerializer* serializer);
	[LinkName("gdk_content_serializer_set_task_data")]
	public static extern void content_serializer_set_task_data(GdkContentSerializer* serializer, void* data, GDestroyNotify notify);
	[CRepr]
	public struct GdkCrossingEvent;
	[LinkName("gdk_crossing_event_get_detail")]
	public static extern GdkNotifyType crossing_event_get_detail(GdkEvent* event);
	[LinkName("gdk_crossing_event_get_focus")]
	public static extern c_int crossing_event_get_focus(GdkEvent* event);
	[LinkName("gdk_crossing_event_get_mode")]
	public static extern GdkCrossingMode crossing_event_get_mode(GdkEvent* event);
	public enum GdkCrossingMode : c_int
	{
		GDK_CROSSING_NORMAL,
		GDK_CROSSING_GRAB,
		GDK_CROSSING_UNGRAB,
		GDK_CROSSING_GTK_GRAB,
		GDK_CROSSING_GTK_UNGRAB,
		GDK_CROSSING_STATE_CHANGED,
		GDK_CROSSING_TOUCH_BEGIN,
		GDK_CROSSING_TOUCH_END,
		GDK_CROSSING_DEVICE_SWITCH
	}
	[CRepr]
	public struct GdkCursor;
	[LinkName("gdk_cursor_new_from_name")]
	public static extern GdkCursor* cursor_new_from_name( c_char* name, GdkCursor* fallback);
	[LinkName("gdk_cursor_new_from_texture")]
	public static extern GdkCursor* cursor_new_from_texture(GdkTexture* texture, c_int hotspot_x, c_int hotspot_y, GdkCursor* fallback);
	[LinkName("gdk_cursor_get_fallback")]
	public static extern GdkCursor* cursor_get_fallback(GdkCursor* cursor);
	[LinkName("gdk_cursor_get_hotspot_x")]
	public static extern c_int cursor_get_hotspot_x(GdkCursor* cursor);
	[LinkName("gdk_cursor_get_hotspot_y")]
	public static extern c_int cursor_get_hotspot_y(GdkCursor* cursor);
	[LinkName("gdk_cursor_get_name")]
	public static extern  c_char* cursor_get_name(GdkCursor* cursor);
	[LinkName("gdk_cursor_get_texture")]
	public static extern GdkTexture* cursor_get_texture(GdkCursor* cursor);
	[CRepr]
	public struct GdkDNDEvent;
	[LinkName("gdk_dnd_event_get_drop")]
	public static extern GdkDrop* dnd_event_get_drop(GdkEvent* event);
	[CRepr]
	public struct GdkDeleteEvent;
	[CRepr]
	public struct GdkDevice;
	[LinkName("gdk_device_get_caps_lock_state")]
	public static extern c_int device_get_caps_lock_state(GdkDevice* device);
	[LinkName("gdk_device_get_device_tool")]
	public static extern GdkDeviceTool* device_get_device_tool(GdkDevice* device);
	[LinkName("gdk_device_get_direction")]
	public static extern PangoDirection device_get_direction(GdkDevice* device);
	[LinkName("gdk_device_get_display")]
	public static extern GdkDisplay* device_get_display(GdkDevice* device);
	[LinkName("gdk_device_get_has_cursor")]
	public static extern c_int device_get_has_cursor(GdkDevice* device);
	[LinkName("gdk_device_get_modifier_state")]
	public static extern GdkModifierType device_get_modifier_state(GdkDevice* device);
	[LinkName("gdk_device_get_name")]
	public static extern  c_char* device_get_name(GdkDevice* device);
	[LinkName("gdk_device_get_num_lock_state")]
	public static extern c_int device_get_num_lock_state(GdkDevice* device);
	[LinkName("gdk_device_get_num_touches")]
	public static extern c_uint device_get_num_touches(GdkDevice* device);
	[LinkName("gdk_device_get_product_id")]
	public static extern  c_char* device_get_product_id(GdkDevice* device);
	[LinkName("gdk_device_get_scroll_lock_state")]
	public static extern c_int device_get_scroll_lock_state(GdkDevice* device);
	[LinkName("gdk_device_get_seat")]
	public static extern GdkSeat* device_get_seat(GdkDevice* device);
	[LinkName("gdk_device_get_source")]
	public static extern GdkInputSource device_get_source(GdkDevice* device);
	[LinkName("gdk_device_get_surface_at_position")]
	public static extern GdkSurface* device_get_surface_at_position(GdkDevice* device, double* win_x, double* win_y);
	[LinkName("gdk_device_get_timestamp")]
	public static extern c_uint device_get_timestamp(GdkDevice* device);
	[LinkName("gdk_device_get_vendor_id")]
	public static extern  c_char* device_get_vendor_id(GdkDevice* device);
	[LinkName("gdk_device_has_bidi_layouts")]
	public static extern c_int device_has_bidi_layouts(GdkDevice* device);
	[CRepr]
	public struct GdkDevicePad
	{	}
	public enum GdkDevicePadFeature : c_int
	{
		GDK_DEVICE_PAD_FEATURE_BUTTON,
		GDK_DEVICE_PAD_FEATURE_RING,
		GDK_DEVICE_PAD_FEATURE_STRIP
	}
	[CRepr]
	public struct GdkDevicePadInterface
	{
	}
	[CRepr]
	public struct GdkDeviceTool;
	[LinkName("gdk_device_tool_get_axes")]
	public static extern GdkAxisFlags device_tool_get_axes(GdkDeviceTool* tool);
	[LinkName("gdk_device_tool_get_hardware_id")]
	public static extern c_ulonglong device_tool_get_hardware_id(GdkDeviceTool* tool);
	[LinkName("gdk_device_tool_get_serial")]
	public static extern c_ulonglong device_tool_get_serial(GdkDeviceTool* tool);
	[LinkName("gdk_device_tool_get_tool_type")]
	public static extern GdkDeviceToolType device_tool_get_tool_type(GdkDeviceTool* tool);
	public enum GdkDeviceToolType : c_int
	{
		GDK_DEVICE_TOOL_TYPE_UNKNOWN,
		GDK_DEVICE_TOOL_TYPE_PEN,
		GDK_DEVICE_TOOL_TYPE_ERASER,
		GDK_DEVICE_TOOL_TYPE_BRUSH,
		GDK_DEVICE_TOOL_TYPE_PENCIL,
		GDK_DEVICE_TOOL_TYPE_AIRBRUSH,
		GDK_DEVICE_TOOL_TYPE_MOUSE,
		GDK_DEVICE_TOOL_TYPE_LENS
	}
	[CRepr]
	public struct GdkDisplay;
	[LinkName("gdk_display_beep")]
	public static extern void display_beep(GdkDisplay* display);
	[LinkName("gdk_display_close")]
	public static extern void display_close(GdkDisplay* display);
	[LinkName("gdk_display_create_gl_context")]
	public static extern GdkGLContext* display_create_gl_context(GdkDisplay* self);
	[LinkName("gdk_display_device_is_grabbed")]
	public static extern c_int display_device_is_grabbed(GdkDisplay* display, GdkDevice* device);
	[LinkName("gdk_display_flush")]
	public static extern void display_flush(GdkDisplay* display);
	[LinkName("gdk_display_get_app_launch_context")]
	public static extern GdkAppLaunchContext* display_get_app_launch_context(GdkDisplay* display);
	[LinkName("gdk_display_get_clipboard")]
	public static extern GdkClipboard* display_get_clipboard(GdkDisplay* display);
	[LinkName("gdk_display_get_default_seat")]
	public static extern GdkSeat* display_get_default_seat(GdkDisplay* display);
	[LinkName("gdk_display_get_monitor_at_surface")]
	public static extern GdkMonitor* display_get_monitor_at_surface(GdkDisplay* display, GdkSurface* surface);
	[LinkName("gdk_display_get_monitors")]
	public static extern GListModel* display_get_monitors(GdkDisplay* self);
	[LinkName("gdk_display_get_name")]
	public static extern  c_char* display_get_name(GdkDisplay* display);
	[LinkName("gdk_display_get_primary_clipboard")]
	public static extern GdkClipboard* display_get_primary_clipboard(GdkDisplay* display);
	[LinkName("gdk_display_get_setting")]
	public static extern c_int display_get_setting(GdkDisplay* display,  c_char* name, GValue* value);
	[LinkName("gdk_display_get_startup_notification_id")]
	public static extern  c_char* display_get_startup_notification_id(GdkDisplay* display);
	[LinkName("gdk_display_is_closed")]
	public static extern c_int display_is_closed(GdkDisplay* display);
	[LinkName("gdk_display_is_composited")]
	public static extern c_int display_is_composited(GdkDisplay* display);
	[LinkName("gdk_display_is_rgba")]
	public static extern c_int display_is_rgba(GdkDisplay* display);
	[LinkName("gdk_display_list_seats")]
	public static extern GList* display_list_seats(GdkDisplay* display);
	[LinkName("gdk_display_map_keycode")]
	public static extern c_int display_map_keycode(GdkDisplay* display, c_uint keycode, c_int* n_entries);
	[LinkName("gdk_display_map_keyval")]
	public static extern c_int display_map_keyval(GdkDisplay* display, c_uint keyval, c_int* n_keys);
	[LinkName("gdk_display_notify_startup_complete")]
	public static extern void display_notify_startup_complete(GdkDisplay* display,  c_char* startup_id);
	[LinkName("gdk_display_prepare_gl")]
	public static extern c_int display_prepare_gl(GdkDisplay* self);
	[LinkName("gdk_display_put_event")]
	public static extern void display_put_event(GdkDisplay* display, GdkEvent* event);
	[LinkName("gdk_display_supports_input_shapes")]
	public static extern c_int display_supports_input_shapes(GdkDisplay* display);
	[LinkName("gdk_display_sync")]
	public static extern void display_sync(GdkDisplay* display);
	[LinkName("gdk_display_translate_key")]
	public static extern c_int display_translate_key(GdkDisplay* display, c_uint keycode, GdkModifierType state, c_int group, c_uint* keyval, c_int* effective_group, c_int* level, GdkModifierType* consumed);
	[CRepr]
	public struct GdkDisplayManager;
	[LinkName("gdk_display_manager_get_default_display")]
	public static extern GdkDisplay* display_manager_get_default_display(GdkDisplayManager* manager);
	[LinkName("gdk_display_manager_list_displays")]
	public static extern GSList* display_manager_list_displays(GdkDisplayManager* manager);
	[LinkName("gdk_display_manager_open_display")]
	public static extern GdkDisplay* display_manager_open_display(GdkDisplayManager* manager,  c_char* name);
	[LinkName("gdk_display_manager_set_default_display")]
	public static extern void display_manager_set_default_display(GdkDisplayManager* manager, GdkDisplay* display);
	[CRepr]
	public struct GdkDrag;
	[LinkName("gdk_drag_drop_done")]
	public static extern void drag_drop_done(GdkDrag* drag, c_int success);
	[LinkName("gdk_drag_get_actions")]
	public static extern GdkDragAction drag_get_actions(GdkDrag* drag);
	[LinkName("gdk_drag_get_content")]
	public static extern GdkContentProvider* drag_get_content(GdkDrag* drag);
	[LinkName("gdk_drag_get_device")]
	public static extern GdkDevice* drag_get_device(GdkDrag* drag);
	[LinkName("gdk_drag_get_display")]
	public static extern GdkDisplay* drag_get_display(GdkDrag* drag);
	[LinkName("gdk_drag_get_drag_surface")]
	public static extern GdkSurface* drag_get_drag_surface(GdkDrag* drag);
	[LinkName("gdk_drag_get_formats")]
	public static extern GdkContentFormats* drag_get_formats(GdkDrag* drag);
	[LinkName("gdk_drag_get_selected_action")]
	public static extern GdkDragAction drag_get_selected_action(GdkDrag* drag);
	[LinkName("gdk_drag_get_surface")]
	public static extern GdkSurface* drag_get_surface(GdkDrag* drag);
	[LinkName("gdk_drag_set_hotspot")]
	public static extern void drag_set_hotspot(GdkDrag* drag, c_int hot_x, c_int hot_y);
	[CRepr]
	public struct GdkDragAction
	{
		public const int GDK_ACTION_COPY = 1;
		public const int GDK_ACTION_MOVE = 2;
		public const int GDK_ACTION_LINK = 4;
		public const int GDK_ACTION_ASK = 8;
	}
	public enum GdkDragCancelReason : c_int
	{
		GDK_DRAG_CANCEL_NO_TARGET,
		GDK_DRAG_CANCEL_USER_CANCELLED,
		GDK_DRAG_CANCEL_ERROR
	}
	[CRepr]
	public struct GdkDragSurface
	{	}
	[CRepr]
	public struct GdkDragSurfaceInterface
	{
	}
	[CRepr]
	public struct GdkDragSurfaceSize
	{
	}
	[CRepr]
	public struct GdkDrawContext;
	[LinkName("gdk_draw_context_begin_frame")]
	public static extern void draw_context_begin_frame(GdkDrawContext* context,  cairo_region_t* region);
	[LinkName("gdk_draw_context_end_frame")]
	public static extern void draw_context_end_frame(GdkDrawContext* context);
	[LinkName("gdk_draw_context_get_display")]
	public static extern GdkDisplay* draw_context_get_display(GdkDrawContext* context);
	[LinkName("gdk_draw_context_get_frame_region")]
	public static extern  cairo_region_t* draw_context_get_frame_region(GdkDrawContext* context);
	[LinkName("gdk_draw_context_get_surface")]
	public static extern GdkSurface* draw_context_get_surface(GdkDrawContext* context);
	[LinkName("gdk_draw_context_is_in_frame")]
	public static extern c_int draw_context_is_in_frame(GdkDrawContext* context);
	[CRepr]
	public struct GdkDrop;
	[LinkName("gdk_drop_finish")]
	public static extern void drop_finish(GdkDrop* self, GdkDragAction action);
	[LinkName("gdk_drop_get_actions")]
	public static extern GdkDragAction drop_get_actions(GdkDrop* self);
	[LinkName("gdk_drop_get_device")]
	public static extern GdkDevice* drop_get_device(GdkDrop* self);
	[LinkName("gdk_drop_get_display")]
	public static extern GdkDisplay* drop_get_display(GdkDrop* self);
	[LinkName("gdk_drop_get_drag")]
	public static extern GdkDrag* drop_get_drag(GdkDrop* self);
	[LinkName("gdk_drop_get_formats")]
	public static extern GdkContentFormats* drop_get_formats(GdkDrop* self);
	[LinkName("gdk_drop_get_surface")]
	public static extern GdkSurface* drop_get_surface(GdkDrop* self);
	[LinkName("gdk_drop_read_async")]
	public static extern void drop_read_async(GdkDrop* self, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_drop_read_finish")]
	public static extern GInputStream* drop_read_finish(GdkDrop* self, GAsyncResult* result,  c_char** out_mime_type);
	[LinkName("gdk_drop_read_value_async")]
	public static extern void drop_read_value_async(GdkDrop* self, GType type, c_int io_priority, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_drop_read_value_finish")]
	public static extern  GValue* drop_read_value_finish(GdkDrop* self, GAsyncResult* result);
	[LinkName("gdk_drop_status")]
	public static extern void drop_status(GdkDrop* self, GdkDragAction actions, GdkDragAction preferred);
	[CRepr]
	public struct GdkEvent;
	[LinkName("gdk_events_get_angle")]
	public static extern c_int events_get_angle(GdkEvent* event1, GdkEvent* event2, double* angle);
	[LinkName("gdk_events_get_center")]
	public static extern c_int events_get_center(GdkEvent* event1, GdkEvent* event2, double* x, double* y);
	[LinkName("gdk_events_get_distance")]
	public static extern c_int events_get_distance(GdkEvent* event1, GdkEvent* event2, double* distance);
	[LinkName("gdk_event_get_axes")]
	public static extern c_int event_get_axes(GdkEvent* event, c_uint* n_axes);
	[LinkName("gdk_event_get_axis")]
	public static extern c_int event_get_axis(GdkEvent* event, GdkAxisUse axis_use, double* value);
	[LinkName("gdk_event_get_device")]
	public static extern GdkDevice* event_get_device(GdkEvent* event);
	[LinkName("gdk_event_get_device_tool")]
	public static extern GdkDeviceTool* event_get_device_tool(GdkEvent* event);
	[LinkName("gdk_event_get_display")]
	public static extern GdkDisplay* event_get_display(GdkEvent* event);
	[LinkName("gdk_event_get_event_sequence")]
	public static extern GdkEventSequence* event_get_event_sequence(GdkEvent* event);
	[LinkName("gdk_event_get_event_type")]
	public static extern GdkEventType event_get_event_type(GdkEvent* event);
	[LinkName("gdk_event_get_history")]
	public static extern GdkTimeCoord* event_get_history(GdkEvent* event, c_uint* out_n_coords);
	[LinkName("gdk_event_get_modifier_state")]
	public static extern GdkModifierType event_get_modifier_state(GdkEvent* event);
	[LinkName("gdk_event_get_pointer_emulated")]
	public static extern c_int event_get_pointer_emulated(GdkEvent* event);
	[LinkName("gdk_event_get_position")]
	public static extern c_int event_get_position(GdkEvent* event, double* x, double* y);
	[LinkName("gdk_event_get_seat")]
	public static extern GdkSeat* event_get_seat(GdkEvent* event);
	[LinkName("gdk_event_get_surface")]
	public static extern GdkSurface* event_get_surface(GdkEvent* event);
	[LinkName("gdk_event_get_time")]
	public static extern c_uint event_get_time(GdkEvent* event);
	[LinkName("gdk_event_ref")]
	public static extern GdkEvent* event_ref(GdkEvent* event);
	[LinkName("gdk_event_triggers_context_menu")]
	public static extern c_int event_triggers_context_menu(GdkEvent* event);
	[LinkName("gdk_event_unref")]
	public static extern void event_unref(GdkEvent* event);
	[CRepr]
	public struct GdkEventSequence
	{
	}
	public enum GdkEventType : c_int
	{
		GDK_DELETE,
		GDK_MOTION_NOTIFY,
		GDK_BUTTON_PRESS,
		GDK_BUTTON_RELEASE,
		GDK_KEY_PRESS,
		GDK_KEY_RELEASE,
		GDK_ENTER_NOTIFY,
		GDK_LEAVE_NOTIFY,
		GDK_FOCUS_CHANGE,
		GDK_PROXIMITY_IN,
		GDK_PROXIMITY_OUT,
		GDK_DRAG_ENTER,
		GDK_DRAG_LEAVE,
		GDK_DRAG_MOTION,
		GDK_DROP_START,
		GDK_SCROLL,
		GDK_GRAB_BROKEN,
		GDK_TOUCH_BEGIN,
		GDK_TOUCH_UPDATE,
		GDK_TOUCH_END,
		GDK_TOUCH_CANCEL,
		GDK_TOUCHPAD_SWIPE,
		GDK_TOUCHPAD_PINCH,
		GDK_PAD_BUTTON_PRESS,
		GDK_PAD_BUTTON_RELEASE,
		GDK_PAD_RING,
		GDK_PAD_STRIP,
		GDK_PAD_GROUP_MODE,
		GDK_TOUCHPAD_HOLD,
		GDK_EVENT_LAST
	}
	[CRepr]
	public struct GdkFileList
	{
	}
	[CRepr]
	public struct GdkFocusEvent;
	[LinkName("gdk_focus_event_get_in")]
	public static extern c_int focus_event_get_in(GdkEvent* event);
	[CRepr]
	public struct GdkFrameClock;
	[LinkName("gdk_frame_clock_begin_updating")]
	public static extern void frame_clock_begin_updating(GdkFrameClock* frame_clock);
	[LinkName("gdk_frame_clock_end_updating")]
	public static extern void frame_clock_end_updating(GdkFrameClock* frame_clock);
	[LinkName("gdk_frame_clock_get_current_timings")]
	public static extern GdkFrameTimings* frame_clock_get_current_timings(GdkFrameClock* frame_clock);
	[LinkName("gdk_frame_clock_get_fps")]
	public static extern double frame_clock_get_fps(GdkFrameClock* frame_clock);
	[LinkName("gdk_frame_clock_get_frame_counter")]
	public static extern c_longlong frame_clock_get_frame_counter(GdkFrameClock* frame_clock);
	[LinkName("gdk_frame_clock_get_frame_time")]
	public static extern c_longlong frame_clock_get_frame_time(GdkFrameClock* frame_clock);
	[LinkName("gdk_frame_clock_get_history_start")]
	public static extern c_longlong frame_clock_get_history_start(GdkFrameClock* frame_clock);
	[LinkName("gdk_frame_clock_get_refresh_info")]
	public static extern void frame_clock_get_refresh_info(GdkFrameClock* frame_clock, c_longlong base_time, c_longlong* refresh_interval_return, c_longlong* presentation_time_return);
	[LinkName("gdk_frame_clock_get_timings")]
	public static extern GdkFrameTimings* frame_clock_get_timings(GdkFrameClock* frame_clock, c_longlong frame_counter);
	[LinkName("gdk_frame_clock_request_phase")]
	public static extern void frame_clock_request_phase(GdkFrameClock* frame_clock, GdkFrameClockPhase phase);
	[CRepr]
	public struct GdkFrameClockClass
	{
	}
	[CRepr]
	public struct GdkFrameClockPhase
	{
		public const int GDK_FRAME_CLOCK_PHASE_NONE = 0;
		public const int GDK_FRAME_CLOCK_PHASE_FLUSH_EVENTS = 1;
		public const int GDK_FRAME_CLOCK_PHASE_BEFORE_PAINT = 2;
		public const int GDK_FRAME_CLOCK_PHASE_UPDATE = 4;
		public const int GDK_FRAME_CLOCK_PHASE_LAYOUT = 8;
		public const int GDK_FRAME_CLOCK_PHASE_PAINT = 16;
		public const int GDK_FRAME_CLOCK_PHASE_RESUME_EVENTS = 32;
		public const int GDK_FRAME_CLOCK_PHASE_AFTER_PAINT = 64;
	}
	[CRepr]
	public struct GdkFrameClockPrivate
	{
	}
	[CRepr]
	public struct GdkFrameTimings
	{
	}
	public enum GdkFullscreenMode : c_int
	{
		GDK_FULLSCREEN_ON_CURRENT_MONITOR,
		GDK_FULLSCREEN_ON_ALL_MONITORS
	}
	[CRepr]
	public struct GdkGLAPI
	{
		public const int GDK_GL_API_GL = 1;
		public const int GDK_GL_API_GLES = 2;
	}
	[CRepr]
	public struct GdkGLContext;
	[LinkName("gdk_gl_context_get_allowed_apis")]
	public static extern GdkGLAPI gl_context_get_allowed_apis(GdkGLContext* self);
	[LinkName("gdk_gl_context_get_api")]
	public static extern GdkGLAPI gl_context_get_api(GdkGLContext* self);
	[LinkName("gdk_gl_context_get_debug_enabled")]
	public static extern c_int gl_context_get_debug_enabled(GdkGLContext* context);
	[LinkName("gdk_gl_context_get_display")]
	public static extern GdkDisplay* gl_context_get_display(GdkGLContext* context);
	[LinkName("gdk_gl_context_get_forward_compatible")]
	public static extern c_int gl_context_get_forward_compatible(GdkGLContext* context);
	[LinkName("gdk_gl_context_get_required_version")]
	public static extern void gl_context_get_required_version(GdkGLContext* context, c_int* major, c_int* minor);
	[LinkName("gdk_gl_context_get_shared_context")]
	public static extern GdkGLContext* gl_context_get_shared_context(GdkGLContext* context);
	[LinkName("gdk_gl_context_get_surface")]
	public static extern GdkSurface* gl_context_get_surface(GdkGLContext* context);
	[LinkName("gdk_gl_context_get_use_es")]
	public static extern c_int gl_context_get_use_es(GdkGLContext* context);
	[LinkName("gdk_gl_context_get_version")]
	public static extern void gl_context_get_version(GdkGLContext* context, c_int* major, c_int* minor);
	[LinkName("gdk_gl_context_is_legacy")]
	public static extern c_int gl_context_is_legacy(GdkGLContext* context);
	[LinkName("gdk_gl_context_is_shared")]
	public static extern c_int gl_context_is_shared(GdkGLContext* self, GdkGLContext* other);
	[LinkName("gdk_gl_context_make_current")]
	public static extern void gl_context_make_current(GdkGLContext* context);
	[LinkName("gdk_gl_context_realize")]
	public static extern c_int gl_context_realize(GdkGLContext* context);
	[LinkName("gdk_gl_context_set_allowed_apis")]
	public static extern void gl_context_set_allowed_apis(GdkGLContext* self, GdkGLAPI apis);
	[LinkName("gdk_gl_context_set_debug_enabled")]
	public static extern void gl_context_set_debug_enabled(GdkGLContext* context, c_int enabled);
	[LinkName("gdk_gl_context_set_forward_compatible")]
	public static extern void gl_context_set_forward_compatible(GdkGLContext* context, c_int compatible);
	[LinkName("gdk_gl_context_set_required_version")]
	public static extern void gl_context_set_required_version(GdkGLContext* context, c_int major, c_int minor);
	[LinkName("gdk_gl_context_set_use_es")]
	public static extern void gl_context_set_use_es(GdkGLContext* context, c_int use_es);
	public enum GdkGLError : c_int
	{
		GDK_GL_ERROR_NOT_AVAILABLE,
		GDK_GL_ERROR_UNSUPPORTED_FORMAT,
		GDK_GL_ERROR_UNSUPPORTED_PROFILE,
		GDK_GL_ERROR_COMPILATION_FAILED,
		GDK_GL_ERROR_LINK_FAILED
	}
	[CRepr]
	public struct GdkGLTexture;
	[LinkName("gdk_gl_texture_new")]
	public static extern GdkTexture* gl_texture_new(GdkGLContext* context, c_uint id, c_int width, c_int height, GDestroyNotify destroy, void* data);
	[LinkName("gdk_gl_texture_release")]
	public static extern void gl_texture_release(GdkGLTexture* self);
	[CRepr]
	public struct GdkGLTextureBuilder;
	[LinkName("gdk_gl_texture_builder_new")]
	public static extern GdkGLTextureBuilder* gl_texture_builder_new();
	[LinkName("gdk_gl_texture_builder_build")]
	public static extern GdkTexture* gl_texture_builder_build(GdkGLTextureBuilder* self, GDestroyNotify destroy, void* data);
	[LinkName("gdk_gl_texture_builder_get_context")]
	public static extern GdkGLContext* gl_texture_builder_get_context(GdkGLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_format")]
	public static extern GdkMemoryFormat gl_texture_builder_get_format(GdkGLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_has_mipmap")]
	public static extern c_int gl_texture_builder_get_has_mipmap(GdkGLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_height")]
	public static extern c_int gl_texture_builder_get_height(GdkGLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_id")]
	public static extern c_uint gl_texture_builder_get_id(GdkGLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_sync")]
	public static extern void* gl_texture_builder_get_sync(GdkGLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_update_region")]
	public static extern cairo_region_t* gl_texture_builder_get_update_region(GdkGLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_update_texture")]
	public static extern GdkTexture* gl_texture_builder_get_update_texture(GdkGLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_width")]
	public static extern c_int gl_texture_builder_get_width(GdkGLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_set_context")]
	public static extern void gl_texture_builder_set_context(GdkGLTextureBuilder* self, GdkGLContext* context);
	[LinkName("gdk_gl_texture_builder_set_format")]
	public static extern void gl_texture_builder_set_format(GdkGLTextureBuilder* self, GdkMemoryFormat format);
	[LinkName("gdk_gl_texture_builder_set_has_mipmap")]
	public static extern void gl_texture_builder_set_has_mipmap(GdkGLTextureBuilder* self, c_int has_mipmap);
	[LinkName("gdk_gl_texture_builder_set_height")]
	public static extern void gl_texture_builder_set_height(GdkGLTextureBuilder* self, c_int height);
	[LinkName("gdk_gl_texture_builder_set_id")]
	public static extern void gl_texture_builder_set_id(GdkGLTextureBuilder* self, c_uint id);
	[LinkName("gdk_gl_texture_builder_set_sync")]
	public static extern void gl_texture_builder_set_sync(GdkGLTextureBuilder* self, void* sync);
	[LinkName("gdk_gl_texture_builder_set_update_region")]
	public static extern void gl_texture_builder_set_update_region(GdkGLTextureBuilder* self, cairo_region_t* region);
	[LinkName("gdk_gl_texture_builder_set_update_texture")]
	public static extern void gl_texture_builder_set_update_texture(GdkGLTextureBuilder* self, GdkTexture* texture);
	[LinkName("gdk_gl_texture_builder_set_width")]
	public static extern void gl_texture_builder_set_width(GdkGLTextureBuilder* self, c_int width);
	[CRepr]
	public struct GdkGLTextureBuilderClass
	{
	}
	[CRepr]
	public struct GdkGLTextureClass
	{
	}
	[CRepr]
	public struct GdkGrabBrokenEvent;
	[LinkName("gdk_grab_broken_event_get_grab_surface")]
	public static extern GdkSurface* grab_broken_event_get_grab_surface(GdkEvent* event);
	[LinkName("gdk_grab_broken_event_get_implicit")]
	public static extern c_int grab_broken_event_get_implicit(GdkEvent* event);
	public enum GdkGravity : c_int
	{
		GDK_GRAVITY_NORTH_WEST,
		GDK_GRAVITY_NORTH,
		GDK_GRAVITY_NORTH_EAST,
		GDK_GRAVITY_WEST,
		GDK_GRAVITY_CENTER,
		GDK_GRAVITY_EAST,
		GDK_GRAVITY_SOUTH_WEST,
		GDK_GRAVITY_SOUTH,
		GDK_GRAVITY_SOUTH_EAST,
		GDK_GRAVITY_STATIC
	}
	public enum GdkInputSource : c_int
	{
		GDK_SOURCE_MOUSE,
		GDK_SOURCE_PEN,
		GDK_SOURCE_KEYBOARD,
		GDK_SOURCE_TOUCHSCREEN,
		GDK_SOURCE_TOUCHPAD,
		GDK_SOURCE_TRACKPOINT,
		GDK_SOURCE_TABLET_PAD
	}
	[CRepr]
	public struct GdkKeyEvent;
	[LinkName("gdk_key_event_get_consumed_modifiers")]
	public static extern GdkModifierType key_event_get_consumed_modifiers(GdkEvent* event);
	[LinkName("gdk_key_event_get_keycode")]
	public static extern c_uint key_event_get_keycode(GdkEvent* event);
	[LinkName("gdk_key_event_get_keyval")]
	public static extern c_uint key_event_get_keyval(GdkEvent* event);
	[LinkName("gdk_key_event_get_layout")]
	public static extern c_uint key_event_get_layout(GdkEvent* event);
	[LinkName("gdk_key_event_get_level")]
	public static extern c_uint key_event_get_level(GdkEvent* event);
	[LinkName("gdk_key_event_get_match")]
	public static extern c_int key_event_get_match(GdkEvent* event, c_uint* keyval, GdkModifierType* modifiers);
	[LinkName("gdk_key_event_is_modifier")]
	public static extern c_int key_event_is_modifier(GdkEvent* event);
	[LinkName("gdk_key_event_matches")]
	public static extern GdkKeyMatch key_event_matches(GdkEvent* event, c_uint keyval, GdkModifierType modifiers);
	public enum GdkKeyMatch : c_int
	{
		GDK_KEY_MATCH_NONE,
		GDK_KEY_MATCH_PARTIAL,
		GDK_KEY_MATCH_EXACT
	}
	[CRepr]
	public struct GdkKeymapKey
	{
		c_uint keycode;
		c_int group;
		c_int level;
	}
	public enum GdkMemoryFormat : c_int
	{
		GDK_MEMORY_B8G8R8A8_PREMULTIPLIED,
		GDK_MEMORY_A8R8G8B8_PREMULTIPLIED,
		GDK_MEMORY_R8G8B8A8_PREMULTIPLIED,
		GDK_MEMORY_B8G8R8A8,
		GDK_MEMORY_A8R8G8B8,
		GDK_MEMORY_R8G8B8A8,
		GDK_MEMORY_A8B8G8R8,
		GDK_MEMORY_R8G8B8,
		GDK_MEMORY_B8G8R8,
		GDK_MEMORY_R16G16B16,
		GDK_MEMORY_R16G16B16A16_PREMULTIPLIED,
		GDK_MEMORY_R16G16B16A16,
		GDK_MEMORY_R16G16B16_FLOAT,
		GDK_MEMORY_R16G16B16A16_FLOAT_PREMULTIPLIED,
		GDK_MEMORY_R16G16B16A16_FLOAT,
		GDK_MEMORY_R32G32B32_FLOAT,
		GDK_MEMORY_R32G32B32A32_FLOAT_PREMULTIPLIED,
		GDK_MEMORY_R32G32B32A32_FLOAT,
		GDK_MEMORY_G8A8_PREMULTIPLIED,
		GDK_MEMORY_G8A8,
		GDK_MEMORY_G8,
		GDK_MEMORY_G16A16_PREMULTIPLIED,
		GDK_MEMORY_G16A16,
		GDK_MEMORY_G16,
		GDK_MEMORY_A8,
		GDK_MEMORY_A16,
		GDK_MEMORY_N_FORMATS
	}
	[CRepr]
	public struct GdkMemoryTexture;
	[LinkName("gdk_memory_texture_new")]
	public static extern GdkTexture* memory_texture_new(c_int width, c_int height, GdkMemoryFormat format, GBytes* bytes, c_ulong stride);
	[CRepr]
	public struct GdkMemoryTextureClass
	{
	}
	[CRepr]
	public struct GdkModifierType
	{
		public const int GDK_SHIFT_MASK = 1;
		public const int GDK_LOCK_MASK = 2;
		public const int GDK_CONTROL_MASK = 4;
		public const int GDK_ALT_MASK = 8;
		public const int GDK_BUTTON1_MASK = 256;
		public const int GDK_BUTTON2_MASK = 512;
		public const int GDK_BUTTON3_MASK = 1024;
		public const int GDK_BUTTON4_MASK = 2048;
		public const int GDK_BUTTON5_MASK = 4096;
		public const int GDK_SUPER_MASK = 67108864;
		public const int GDK_HYPER_MASK = 134217728;
		public const int GDK_META_MASK = 268435456;
	}
	[CRepr]
	public struct GdkMonitor;
	[LinkName("gdk_monitor_get_connector")]
	public static extern  c_char* monitor_get_connector(GdkMonitor* monitor);
	[LinkName("gdk_monitor_get_description")]
	public static extern  c_char* monitor_get_description(GdkMonitor* monitor);
	[LinkName("gdk_monitor_get_display")]
	public static extern GdkDisplay* monitor_get_display(GdkMonitor* monitor);
	[LinkName("gdk_monitor_get_geometry")]
	public static extern void monitor_get_geometry(GdkMonitor* monitor, GdkRectangle* geometry);
	[LinkName("gdk_monitor_get_height_mm")]
	public static extern c_int monitor_get_height_mm(GdkMonitor* monitor);
	[LinkName("gdk_monitor_get_manufacturer")]
	public static extern  c_char* monitor_get_manufacturer(GdkMonitor* monitor);
	[LinkName("gdk_monitor_get_model")]
	public static extern  c_char* monitor_get_model(GdkMonitor* monitor);
	[LinkName("gdk_monitor_get_refresh_rate")]
	public static extern c_int monitor_get_refresh_rate(GdkMonitor* monitor);
	[LinkName("gdk_monitor_get_scale_factor")]
	public static extern c_int monitor_get_scale_factor(GdkMonitor* monitor);
	[LinkName("gdk_monitor_get_subpixel_layout")]
	public static extern GdkSubpixelLayout monitor_get_subpixel_layout(GdkMonitor* monitor);
	[LinkName("gdk_monitor_get_width_mm")]
	public static extern c_int monitor_get_width_mm(GdkMonitor* monitor);
	[LinkName("gdk_monitor_is_valid")]
	public static extern c_int monitor_is_valid(GdkMonitor* monitor);
	[CRepr]
	public struct GdkMonitorClass
	{
	}
	[CRepr]
	public struct GdkMotionEvent;
	public enum GdkNotifyType : c_int
	{
		GDK_NOTIFY_ANCESTOR,
		GDK_NOTIFY_VIRTUAL,
		GDK_NOTIFY_INFERIOR,
		GDK_NOTIFY_NONLINEAR,
		GDK_NOTIFY_NONLINEAR_VIRTUAL,
		GDK_NOTIFY_UNKNOWN
	}
	[CRepr]
	public struct GdkPadEvent;
	[LinkName("gdk_pad_event_get_axis_value")]
	public static extern void pad_event_get_axis_value(GdkEvent* event, c_uint* index, double* value);
	[LinkName("gdk_pad_event_get_button")]
	public static extern c_uint pad_event_get_button(GdkEvent* event);
	[LinkName("gdk_pad_event_get_group_mode")]
	public static extern void pad_event_get_group_mode(GdkEvent* event, c_uint* group, c_uint* mode);
	[CRepr]
	public struct GdkPaintable
	{
		public function GdkPaintable*(GdkPaintable* paintable) get_current_image;

		public function GdkPaintableFlags(GdkPaintable* paintable) get_flags;

		public function double(GdkPaintable* paintable) get_intrinsic_aspect_ratio;

		public function c_int(GdkPaintable* paintable) get_intrinsic_height;

		public function c_int(GdkPaintable* paintable) get_intrinsic_width;

		public function void(GdkPaintable* paintable, GdkSnapshot* snapshot, double width, double height) snapshot;
	}
	[CRepr]
	public struct GdkPaintableFlags
	{
		public const int GDK_PAINTABLE_STATIC_SIZE = 1;
		public const int GDK_PAINTABLE_STATIC_CONTENTS = 2;
	}
	[CRepr]
	public struct GdkPaintableInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GdkPopup
	{	}
	[CRepr]
	public struct GdkPopupInterface
	{
	}
	[CRepr]
	public struct GdkPopupLayout
	{
	}
	[CRepr]
	public struct GdkProximityEvent;
	[CRepr]
	public struct GdkRGBA
	{
		float red;
		float green;
		float blue;
		float alpha;
	}
	[CRepr]
	public struct GdkRectangle
	{
		c_int x;
		c_int y;
		c_int width;
		c_int height;
	}
	public enum GdkScrollDirection : c_int
	{
		GDK_SCROLL_UP,
		GDK_SCROLL_DOWN,
		GDK_SCROLL_LEFT,
		GDK_SCROLL_RIGHT,
		GDK_SCROLL_SMOOTH
	}
	[CRepr]
	public struct GdkScrollEvent;
	[LinkName("gdk_scroll_event_get_deltas")]
	public static extern void scroll_event_get_deltas(GdkEvent* event, double* delta_x, double* delta_y);
	[LinkName("gdk_scroll_event_get_direction")]
	public static extern GdkScrollDirection scroll_event_get_direction(GdkEvent* event);
	[LinkName("gdk_scroll_event_get_unit")]
	public static extern GdkScrollUnit scroll_event_get_unit(GdkEvent* event);
	[LinkName("gdk_scroll_event_is_stop")]
	public static extern c_int scroll_event_is_stop(GdkEvent* event);
	public enum GdkScrollUnit : c_int
	{
		GDK_SCROLL_UNIT_WHEEL,
		GDK_SCROLL_UNIT_SURFACE
	}
	[CRepr]
	public struct GdkSeat;
	[LinkName("gdk_seat_get_capabilities")]
	public static extern GdkSeatCapabilities seat_get_capabilities(GdkSeat* seat);
	[LinkName("gdk_seat_get_devices")]
	public static extern GList* seat_get_devices(GdkSeat* seat, GdkSeatCapabilities capabilities);
	[LinkName("gdk_seat_get_display")]
	public static extern GdkDisplay* seat_get_display(GdkSeat* seat);
	[LinkName("gdk_seat_get_keyboard")]
	public static extern GdkDevice* seat_get_keyboard(GdkSeat* seat);
	[LinkName("gdk_seat_get_pointer")]
	public static extern GdkDevice* seat_get_pointer(GdkSeat* seat);
	[LinkName("gdk_seat_get_tools")]
	public static extern GList* seat_get_tools(GdkSeat* seat);
	[CRepr]
	public struct GdkSeatCapabilities
	{
		public const int GDK_SEAT_CAPABILITY_NONE = 0;
		public const int GDK_SEAT_CAPABILITY_POINTER = 1;
		public const int GDK_SEAT_CAPABILITY_TOUCH = 2;
		public const int GDK_SEAT_CAPABILITY_TABLET_STYLUS = 4;
		public const int GDK_SEAT_CAPABILITY_KEYBOARD = 8;
		public const int GDK_SEAT_CAPABILITY_TABLET_PAD = 16;
		public const int GDK_SEAT_CAPABILITY_ALL_POINTING = 7;
		public const int GDK_SEAT_CAPABILITY_ALL = 15;
	}
	[CRepr]
	public struct GdkSnapshot;
	[CRepr]
	public struct GdkSnapshotClass
	{
	}
	public enum GdkSubpixelLayout : c_int
	{
		GDK_SUBPIXEL_LAYOUT_UNKNOWN,
		GDK_SUBPIXEL_LAYOUT_NONE,
		GDK_SUBPIXEL_LAYOUT_HORIZONTAL_RGB,
		GDK_SUBPIXEL_LAYOUT_HORIZONTAL_BGR,
		GDK_SUBPIXEL_LAYOUT_VERTICAL_RGB,
		GDK_SUBPIXEL_LAYOUT_VERTICAL_BGR
	}
	[CRepr]
	public struct GdkSurface;
	[LinkName("gdk_surface_new_popup")]
	public static extern GdkSurface* surface_new_popup(GdkSurface* parent, c_int autohide);
	[LinkName("gdk_surface_new_toplevel")]
	public static extern GdkSurface* surface_new_toplevel(GdkDisplay* display);
	[LinkName("gdk_surface_beep")]
	public static extern void surface_beep(GdkSurface* surface);
	[LinkName("gdk_surface_create_cairo_context")]
	public static extern GdkCairoContext* surface_create_cairo_context(GdkSurface* surface);
	[LinkName("gdk_surface_create_gl_context")]
	public static extern GdkGLContext* surface_create_gl_context(GdkSurface* surface);
	[LinkName("gdk_surface_create_similar_surface")]
	public static extern cairo_surface_t* surface_create_similar_surface(GdkSurface* surface, cairo_content_t content, c_int width, c_int height);
	[LinkName("gdk_surface_create_vulkan_context")]
	public static extern GdkVulkanContext* surface_create_vulkan_context(GdkSurface* surface);
	[LinkName("gdk_surface_destroy")]
	public static extern void surface_destroy(GdkSurface* surface);
	[LinkName("gdk_surface_get_cursor")]
	public static extern GdkCursor* surface_get_cursor(GdkSurface* surface);
	[LinkName("gdk_surface_get_device_cursor")]
	public static extern GdkCursor* surface_get_device_cursor(GdkSurface* surface, GdkDevice* device);
	[LinkName("gdk_surface_get_device_position")]
	public static extern c_int surface_get_device_position(GdkSurface* surface, GdkDevice* device, double* x, double* y, GdkModifierType* mask);
	[LinkName("gdk_surface_get_display")]
	public static extern GdkDisplay* surface_get_display(GdkSurface* surface);
	[LinkName("gdk_surface_get_frame_clock")]
	public static extern GdkFrameClock* surface_get_frame_clock(GdkSurface* surface);
	[LinkName("gdk_surface_get_height")]
	public static extern c_int surface_get_height(GdkSurface* surface);
	[LinkName("gdk_surface_get_mapped")]
	public static extern c_int surface_get_mapped(GdkSurface* surface);
	[LinkName("gdk_surface_get_scale")]
	public static extern double surface_get_scale(GdkSurface* surface);
	[LinkName("gdk_surface_get_scale_factor")]
	public static extern c_int surface_get_scale_factor(GdkSurface* surface);
	[LinkName("gdk_surface_get_width")]
	public static extern c_int surface_get_width(GdkSurface* surface);
	[LinkName("gdk_surface_hide")]
	public static extern void surface_hide(GdkSurface* surface);
	[LinkName("gdk_surface_is_destroyed")]
	public static extern c_int surface_is_destroyed(GdkSurface* surface);
	[LinkName("gdk_surface_queue_render")]
	public static extern void surface_queue_render(GdkSurface* surface);
	[LinkName("gdk_surface_request_layout")]
	public static extern void surface_request_layout(GdkSurface* surface);
	[LinkName("gdk_surface_set_cursor")]
	public static extern void surface_set_cursor(GdkSurface* surface, GdkCursor* cursor);
	[LinkName("gdk_surface_set_device_cursor")]
	public static extern void surface_set_device_cursor(GdkSurface* surface, GdkDevice* device, GdkCursor* cursor);
	[LinkName("gdk_surface_set_input_region")]
	public static extern void surface_set_input_region(GdkSurface* surface, cairo_region_t* region);
	[LinkName("gdk_surface_set_opaque_region")]
	public static extern void surface_set_opaque_region(GdkSurface* surface, cairo_region_t* region);
	[LinkName("gdk_surface_translate_coordinates")]
	public static extern c_int surface_translate_coordinates(GdkSurface* from, GdkSurface* to, double* x, double* y);
	[CRepr]
	public struct GdkSurfaceClass
	{
	}
	public enum GdkSurfaceEdge : c_int
	{
		GDK_SURFACE_EDGE_NORTH_WEST,
		GDK_SURFACE_EDGE_NORTH,
		GDK_SURFACE_EDGE_NORTH_EAST,
		GDK_SURFACE_EDGE_WEST,
		GDK_SURFACE_EDGE_EAST,
		GDK_SURFACE_EDGE_SOUTH_WEST,
		GDK_SURFACE_EDGE_SOUTH,
		GDK_SURFACE_EDGE_SOUTH_EAST
	}
	[CRepr]
	public struct GdkTexture;
	[LinkName("gdk_texture_new_for_pixbuf")]
	public static extern GdkTexture* texture_new_for_pixbuf(GdkPixbuf* pixbuf);
	[LinkName("gdk_texture_new_from_bytes")]
	public static extern GdkTexture* texture_new_from_bytes(GBytes* bytes);
	[LinkName("gdk_texture_new_from_file")]
	public static extern GdkTexture* texture_new_from_file(GFile* file);
	[LinkName("gdk_texture_new_from_filename")]
	public static extern GdkTexture* texture_new_from_filename( c_char* path);
	[LinkName("gdk_texture_new_from_resource")]
	public static extern GdkTexture* texture_new_from_resource( c_char* resource_path);
	[LinkName("gdk_texture_download")]
	public static extern void texture_download(GdkTexture* texture, c_ulong stride);
	[LinkName("gdk_texture_get_format")]
	public static extern GdkMemoryFormat texture_get_format(GdkTexture* self);
	[LinkName("gdk_texture_get_height")]
	public static extern c_int texture_get_height(GdkTexture* texture);
	[LinkName("gdk_texture_get_width")]
	public static extern c_int texture_get_width(GdkTexture* texture);
	[LinkName("gdk_texture_save_to_png")]
	public static extern c_int texture_save_to_png(GdkTexture* texture,  c_char* filename);
	[LinkName("gdk_texture_save_to_png_bytes")]
	public static extern GBytes* texture_save_to_png_bytes(GdkTexture* texture);
	[LinkName("gdk_texture_save_to_tiff")]
	public static extern c_int texture_save_to_tiff(GdkTexture* texture,  c_char* filename);
	[LinkName("gdk_texture_save_to_tiff_bytes")]
	public static extern GBytes* texture_save_to_tiff_bytes(GdkTexture* texture);
	[CRepr]
	public struct GdkTextureClass
	{
	}
	[CRepr]
	public struct GdkTextureDownloader
	{
	}
	public enum GdkTextureError : c_int
	{
		GDK_TEXTURE_ERROR_TOO_LARGE,
		GDK_TEXTURE_ERROR_CORRUPT_IMAGE,
		GDK_TEXTURE_ERROR_UNSUPPORTED_CONTENT,
		GDK_TEXTURE_ERROR_UNSUPPORTED_FORMAT
	}
	[CRepr]
	public struct GdkTimeCoord
	{
		c_uint time;
		GdkAxisFlags flags;
	}
	public enum GdkTitlebarGesture : c_int
	{
		GDK_TITLEBAR_GESTURE_DOUBLE_CLICK,
		GDK_TITLEBAR_GESTURE_RIGHT_CLICK,
		GDK_TITLEBAR_GESTURE_MIDDLE_CLICK
	}
	[CRepr]
	public struct GdkToplevel
	{	}
	[CRepr]
	public struct GdkToplevelInterface
	{
	}
	[CRepr]
	public struct GdkToplevelLayout
	{
	}
	[CRepr]
	public struct GdkToplevelSize
	{
	}
	[CRepr]
	public struct GdkToplevelState
	{
		public const int GDK_TOPLEVEL_STATE_MINIMIZED = 1;
		public const int GDK_TOPLEVEL_STATE_MAXIMIZED = 2;
		public const int GDK_TOPLEVEL_STATE_STICKY = 4;
		public const int GDK_TOPLEVEL_STATE_FULLSCREEN = 8;
		public const int GDK_TOPLEVEL_STATE_ABOVE = 16;
		public const int GDK_TOPLEVEL_STATE_BELOW = 32;
		public const int GDK_TOPLEVEL_STATE_FOCUSED = 64;
		public const int GDK_TOPLEVEL_STATE_TILED = 128;
		public const int GDK_TOPLEVEL_STATE_TOP_TILED = 256;
		public const int GDK_TOPLEVEL_STATE_TOP_RESIZABLE = 512;
		public const int GDK_TOPLEVEL_STATE_RIGHT_TILED = 1024;
		public const int GDK_TOPLEVEL_STATE_RIGHT_RESIZABLE = 2048;
		public const int GDK_TOPLEVEL_STATE_BOTTOM_TILED = 4096;
		public const int GDK_TOPLEVEL_STATE_BOTTOM_RESIZABLE = 8192;
		public const int GDK_TOPLEVEL_STATE_LEFT_TILED = 16384;
		public const int GDK_TOPLEVEL_STATE_LEFT_RESIZABLE = 32768;
	}
	[CRepr]
	public struct GdkTouchEvent;
	[LinkName("gdk_touch_event_get_emulating_pointer")]
	public static extern c_int touch_event_get_emulating_pointer(GdkEvent* event);
	[CRepr]
	public struct GdkTouchpadEvent;
	[LinkName("gdk_touchpad_event_get_deltas")]
	public static extern void touchpad_event_get_deltas(GdkEvent* event, double* dx, double* dy);
	[LinkName("gdk_touchpad_event_get_gesture_phase")]
	public static extern GdkTouchpadGesturePhase touchpad_event_get_gesture_phase(GdkEvent* event);
	[LinkName("gdk_touchpad_event_get_n_fingers")]
	public static extern c_uint touchpad_event_get_n_fingers(GdkEvent* event);
	[LinkName("gdk_touchpad_event_get_pinch_angle_delta")]
	public static extern double touchpad_event_get_pinch_angle_delta(GdkEvent* event);
	[LinkName("gdk_touchpad_event_get_pinch_scale")]
	public static extern double touchpad_event_get_pinch_scale(GdkEvent* event);
	public enum GdkTouchpadGesturePhase : c_int
	{
		GDK_TOUCHPAD_GESTURE_PHASE_BEGIN,
		GDK_TOUCHPAD_GESTURE_PHASE_UPDATE,
		GDK_TOUCHPAD_GESTURE_PHASE_END,
		GDK_TOUCHPAD_GESTURE_PHASE_CANCEL
	}
	[CRepr]
	public struct GdkVulkanContext;
	public enum GdkVulkanError : c_int
	{
		GDK_VULKAN_ERROR_UNSUPPORTED,
		GDK_VULKAN_ERROR_NOT_AVAILABLE
	}
}