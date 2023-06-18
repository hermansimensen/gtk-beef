namespace Gdk;

using System;
using System.Interop;
using Gio;
using GLib;
using GObject;
using cairo;
using Pango;
using GdkPixbuf;

class Gdk
{
	[CRepr]
	public enum AnchorHints : int
	{
		flip_x = 1,
		flip_y = 2,
		slide_x = 4,
		slide_y = 8,
		resize_x = 16,
		resize_y = 32,
		flip = 3,
		slide = 12,
		resize = 48
	}
	[CRepr]
	public struct AppLaunchContext;
	[LinkName("gdk_app_launch_context_get_display")]
	public static extern Display* AppLaunchContextGetDisplay(AppLaunchContext* context);
	[LinkName("gdk_app_launch_context_set_desktop")]
	public static extern void AppLaunchContextSetDesktop(AppLaunchContext* context, c_int desktop);
	[LinkName("gdk_app_launch_context_set_icon")]
	public static extern void AppLaunchContextSetIcon(AppLaunchContext* context, Gio.Icon* icon);
	[LinkName("gdk_app_launch_context_set_icon_name")]
	public static extern void AppLaunchContextSetIconName(AppLaunchContext* context, char8* icon_name);
	[LinkName("gdk_app_launch_context_set_timestamp")]
	public static extern void AppLaunchContextSetTimestamp(AppLaunchContext* context, c_uint timestamp);
	[CRepr]
	public enum AxisFlags : int
	{
		x = 2,
		y = 4,
		delta_x = 8,
		delta_y = 16,
		pressure = 32,
		xtilt = 64,
		ytilt = 128,
		wheel = 256,
		distance = 512,
		rotation = 1024,
		slider = 2048
	}
	public enum AxisUse : c_int
	{
		ignore = 0,
		x = 1,
		y = 2,
		delta_x = 3,
		delta_y = 4,
		pressure = 5,
		xtilt = 6,
		ytilt = 7,
		wheel = 8,
		distance = 9,
		rotation = 10,
		slider = 11,
		last = 12
	}
	[CRepr]
	public struct ButtonEvent;
	[LinkName("gdk_button_event_get_button")]
	public static extern c_uint ButtonEventGetButton(ButtonEvent* event);
	[CRepr]
	public struct CairoContext;
	[LinkName("gdk_cairo_context_cairo_create")]
	public static extern cairo.Context* CairoContextCairoCreate(CairoContext* self);
	[CRepr]
	public struct Clipboard;
	[LinkName("gdk_clipboard_get_content")]
	public static extern ContentProvider* ClipboardGetContent(Clipboard* clipboard);
	[LinkName("gdk_clipboard_get_display")]
	public static extern Display* ClipboardGetDisplay(Clipboard* clipboard);
	[LinkName("gdk_clipboard_get_formats")]
	public static extern ContentFormats* ClipboardGetFormats(Clipboard* clipboard);
	[LinkName("gdk_clipboard_is_local")]
	public static extern c_int ClipboardIsLocal(Clipboard* clipboard);
	[LinkName("gdk_clipboard_read_async")]
	public static extern void ClipboardReadAsync(Clipboard* clipboard, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_clipboard_read_finish")]
	public static extern Gio.InputStream* ClipboardReadFinish(Clipboard* clipboard, Gio.AsyncResult* result, char8* out_mime_type);
	[LinkName("gdk_clipboard_read_text_async")]
	public static extern void ClipboardReadTextAsync(Clipboard* clipboard, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_clipboard_read_text_finish")]
	public static extern char8* ClipboardReadTextFinish(Clipboard* clipboard, Gio.AsyncResult* result);
	[LinkName("gdk_clipboard_read_texture_async")]
	public static extern void ClipboardReadTextureAsync(Clipboard* clipboard, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_clipboard_read_texture_finish")]
	public static extern Texture* ClipboardReadTextureFinish(Clipboard* clipboard, Gio.AsyncResult* result);
	[LinkName("gdk_clipboard_read_value_async")]
	public static extern void ClipboardReadValueAsync(Clipboard* clipboard, GLib.Type type, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_clipboard_read_value_finish")]
	public static extern GObject.Value* ClipboardReadValueFinish(Clipboard* clipboard, Gio.AsyncResult* result);
	[LinkName("gdk_clipboard_set")]
	public static extern void ClipboardSet(Clipboard* clipboard, GLib.Type type);
	[LinkName("gdk_clipboard_set_content")]
	public static extern c_int ClipboardSetContent(Clipboard* clipboard, ContentProvider* provider);
	[LinkName("gdk_clipboard_set_text")]
	public static extern void ClipboardSetText(Clipboard* clipboard, char8* text);
	[LinkName("gdk_clipboard_set_texture")]
	public static extern void ClipboardSetTexture(Clipboard* clipboard, Texture* texture);
	[LinkName("gdk_clipboard_set_valist")]
	public static extern void ClipboardSetValist(Clipboard* clipboard, GLib.Type type, VarArgs args);
	[LinkName("gdk_clipboard_set_value")]
	public static extern void ClipboardSetValue(Clipboard* clipboard, GObject.Value* value);
	[LinkName("gdk_clipboard_store_async")]
	public static extern void ClipboardStoreAsync(Clipboard* clipboard, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_clipboard_store_finish")]
	public static extern c_int ClipboardStoreFinish(Clipboard* clipboard, Gio.AsyncResult* result);
	public function void ContentDeserializeFunc(ContentDeserializer deserializer);
	[CRepr]
	public struct ContentDeserializer;
	[LinkName("gdk_content_deserializer_get_cancellable")]
	public static extern Gio.Cancellable* ContentDeserializerGetCancellable(ContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_gtype")]
	public static extern GLib.Type ContentDeserializerGetGtype(ContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_input_stream")]
	public static extern Gio.InputStream* ContentDeserializerGetInputStream(ContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_mime_type")]
	public static extern char8* ContentDeserializerGetMimeType(ContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_priority")]
	public static extern c_int ContentDeserializerGetPriority(ContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_task_data")]
	public static extern void* ContentDeserializerGetTaskData(ContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_user_data")]
	public static extern void* ContentDeserializerGetUserData(ContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_get_value")]
	public static extern GObject.Value* ContentDeserializerGetValue(ContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_return_error")]
	public static extern void ContentDeserializerReturnError(ContentDeserializer* deserializer, GLib.Error* error);
	[LinkName("gdk_content_deserializer_return_success")]
	public static extern void ContentDeserializerReturnSuccess(ContentDeserializer* deserializer);
	[LinkName("gdk_content_deserializer_set_task_data")]
	public static extern void ContentDeserializerSetTaskData(ContentDeserializer* deserializer, void* data, GLib.DestroyNotify notify);
	[CRepr]
	public struct ContentFormats
	{
	}
	[CRepr]
	public struct ContentFormatsBuilder
	{
	}
	[CRepr]
	public struct ContentProvider;
	[LinkName("gdk_content_provider_new_for_bytes")]
	public static extern ContentProvider* ContentProviderNewForBytes(char8* mime_type, GLib.Bytes* bytes);
	[LinkName("gdk_content_provider_new_for_value")]
	public static extern ContentProvider* ContentProviderNewForValue(GObject.Value* value);
	[LinkName("gdk_content_provider_new_typed")]
	public static extern ContentProvider* ContentProviderNewTyped(GLib.Type type);
	[LinkName("gdk_content_provider_new_union")]
	public static extern ContentProvider* ContentProviderNewUnion(c_ulong n_providers);
	[LinkName("gdk_content_provider_content_changed")]
	public static extern void ContentProviderContentChanged(ContentProvider* provider);
	[LinkName("gdk_content_provider_get_value")]
	public static extern c_int ContentProviderGetValue(ContentProvider* provider, GObject.Value* value);
	[LinkName("gdk_content_provider_ref_formats")]
	public static extern ContentFormats* ContentProviderRefFormats(ContentProvider* provider);
	[LinkName("gdk_content_provider_ref_storable_formats")]
	public static extern ContentFormats* ContentProviderRefStorableFormats(ContentProvider* provider);
	[LinkName("gdk_content_provider_write_mime_type_async")]
	public static extern void ContentProviderWriteMimeTypeAsync(ContentProvider* provider, char8* mime_type, Gio.OutputStream* stream, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_content_provider_write_mime_type_finish")]
	public static extern c_int ContentProviderWriteMimeTypeFinish(ContentProvider* provider, Gio.AsyncResult* result);
	[CRepr]
	public struct ContentProviderClass
	{
		GObject.ObjectClass parent_class;
	}
	public function void ContentSerializeFunc(ContentSerializer serializer);
	[CRepr]
	public struct ContentSerializer;
	[LinkName("gdk_content_serializer_get_cancellable")]
	public static extern Gio.Cancellable* ContentSerializerGetCancellable(ContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_gtype")]
	public static extern GLib.Type ContentSerializerGetGtype(ContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_mime_type")]
	public static extern char8* ContentSerializerGetMimeType(ContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_output_stream")]
	public static extern Gio.OutputStream* ContentSerializerGetOutputStream(ContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_priority")]
	public static extern c_int ContentSerializerGetPriority(ContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_task_data")]
	public static extern void* ContentSerializerGetTaskData(ContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_user_data")]
	public static extern void* ContentSerializerGetUserData(ContentSerializer* serializer);
	[LinkName("gdk_content_serializer_get_value")]
	public static extern GObject.Value* ContentSerializerGetValue(ContentSerializer* serializer);
	[LinkName("gdk_content_serializer_return_error")]
	public static extern void ContentSerializerReturnError(ContentSerializer* serializer, GLib.Error* error);
	[LinkName("gdk_content_serializer_return_success")]
	public static extern void ContentSerializerReturnSuccess(ContentSerializer* serializer);
	[LinkName("gdk_content_serializer_set_task_data")]
	public static extern void ContentSerializerSetTaskData(ContentSerializer* serializer, void* data, GLib.DestroyNotify notify);
	[CRepr]
	public struct CrossingEvent;
	[LinkName("gdk_crossing_event_get_detail")]
	public static extern NotifyType CrossingEventGetDetail(CrossingEvent* event);
	[LinkName("gdk_crossing_event_get_focus")]
	public static extern c_int CrossingEventGetFocus(CrossingEvent* event);
	[LinkName("gdk_crossing_event_get_mode")]
	public static extern CrossingMode CrossingEventGetMode(CrossingEvent* event);
	public enum CrossingMode : c_int
	{
		normal = 0,
		grab = 1,
		ungrab = 2,
		gtk_grab = 3,
		gtk_ungrab = 4,
		state_changed = 5,
		touch_begin = 6,
		touch_end = 7,
		device_switch = 8
	}
	[CRepr]
	public struct Cursor;
	[LinkName("gdk_cursor_new_from_name")]
	public static extern Cursor* CursorNewFromName(char8* name, Cursor* fallback);
	[LinkName("gdk_cursor_new_from_texture")]
	public static extern Cursor* CursorNewFromTexture(Texture* texture, c_int hotspot_x, c_int hotspot_y, Cursor* fallback);
	[LinkName("gdk_cursor_get_fallback")]
	public static extern Cursor* CursorGetFallback(Cursor* cursor);
	[LinkName("gdk_cursor_get_hotspot_x")]
	public static extern c_int CursorGetHotspotX(Cursor* cursor);
	[LinkName("gdk_cursor_get_hotspot_y")]
	public static extern c_int CursorGetHotspotY(Cursor* cursor);
	[LinkName("gdk_cursor_get_name")]
	public static extern char8* CursorGetName(Cursor* cursor);
	[LinkName("gdk_cursor_get_texture")]
	public static extern Texture* CursorGetTexture(Cursor* cursor);
	[CRepr]
	public struct DNDEvent;
	[LinkName("gdk_dnd_event_get_drop")]
	public static extern Drop* DndEventGetDrop(DNDEvent* event);
	[CRepr]
	public struct DeleteEvent;
	[CRepr]
	public struct Device;
	[LinkName("gdk_device_get_caps_lock_state")]
	public static extern c_int DeviceGetCapsLockState(Device* device);
	[LinkName("gdk_device_get_device_tool")]
	public static extern DeviceTool* DeviceGetDeviceTool(Device* device);
	[LinkName("gdk_device_get_direction")]
	public static extern Pango.Direction DeviceGetDirection(Device* device);
	[LinkName("gdk_device_get_display")]
	public static extern Display* DeviceGetDisplay(Device* device);
	[LinkName("gdk_device_get_has_cursor")]
	public static extern c_int DeviceGetHasCursor(Device* device);
	[LinkName("gdk_device_get_modifier_state")]
	public static extern ModifierType DeviceGetModifierState(Device* device);
	[LinkName("gdk_device_get_name")]
	public static extern char8* DeviceGetName(Device* device);
	[LinkName("gdk_device_get_num_lock_state")]
	public static extern c_int DeviceGetNumLockState(Device* device);
	[LinkName("gdk_device_get_num_touches")]
	public static extern c_uint DeviceGetNumTouches(Device* device);
	[LinkName("gdk_device_get_product_id")]
	public static extern char8* DeviceGetProductId(Device* device);
	[LinkName("gdk_device_get_scroll_lock_state")]
	public static extern c_int DeviceGetScrollLockState(Device* device);
	[LinkName("gdk_device_get_seat")]
	public static extern Seat* DeviceGetSeat(Device* device);
	[LinkName("gdk_device_get_source")]
	public static extern InputSource DeviceGetSource(Device* device);
	[LinkName("gdk_device_get_surface_at_position")]
	public static extern Surface* DeviceGetSurfaceAtPosition(Device* device, double* win_x, double* win_y);
	[LinkName("gdk_device_get_timestamp")]
	public static extern c_uint DeviceGetTimestamp(Device* device);
	[LinkName("gdk_device_get_vendor_id")]
	public static extern char8* DeviceGetVendorId(Device* device);
	[LinkName("gdk_device_has_bidi_layouts")]
	public static extern c_int DeviceHasBidiLayouts(Device* device);
	[CRepr]
	public struct DevicePad
	{	}
	public enum DevicePadFeature : c_int
	{
		button = 0,
		ring = 1,
		strip = 2
	}
	[CRepr]
	public struct DevicePadInterface
	{
	}
	[CRepr]
	public struct DeviceTool;
	[LinkName("gdk_device_tool_get_axes")]
	public static extern AxisFlags DeviceToolGetAxes(DeviceTool* tool);
	[LinkName("gdk_device_tool_get_hardware_id")]
	public static extern c_ulonglong DeviceToolGetHardwareId(DeviceTool* tool);
	[LinkName("gdk_device_tool_get_serial")]
	public static extern c_ulonglong DeviceToolGetSerial(DeviceTool* tool);
	[LinkName("gdk_device_tool_get_tool_type")]
	public static extern DeviceToolType DeviceToolGetToolType(DeviceTool* tool);
	public enum DeviceToolType : c_int
	{
		unknown = 0,
		pen = 1,
		eraser = 2,
		brush = 3,
		pencil = 4,
		airbrush = 5,
		mouse = 6,
		lens = 7
	}
	[CRepr]
	public struct Display;
	[LinkName("gdk_display_beep")]
	public static extern void DisplayBeep(Display* display);
	[LinkName("gdk_display_close")]
	public static extern void DisplayClose(Display* display);
	[LinkName("gdk_display_create_gl_context")]
	public static extern GLContext* DisplayCreateGlContext(Display* self);
	[LinkName("gdk_display_device_is_grabbed")]
	public static extern c_int DisplayDeviceIsGrabbed(Display* display, Device* device);
	[LinkName("gdk_display_flush")]
	public static extern void DisplayFlush(Display* display);
	[LinkName("gdk_display_get_app_launch_context")]
	public static extern AppLaunchContext* DisplayGetAppLaunchContext(Display* display);
	[LinkName("gdk_display_get_clipboard")]
	public static extern Clipboard* DisplayGetClipboard(Display* display);
	[LinkName("gdk_display_get_default_seat")]
	public static extern Seat* DisplayGetDefaultSeat(Display* display);
	[LinkName("gdk_display_get_monitor_at_surface")]
	public static extern Monitor* DisplayGetMonitorAtSurface(Display* display, Surface* surface);
	[LinkName("gdk_display_get_monitors")]
	public static extern Gio.ListModel* DisplayGetMonitors(Display* self);
	[LinkName("gdk_display_get_name")]
	public static extern char8* DisplayGetName(Display* display);
	[LinkName("gdk_display_get_primary_clipboard")]
	public static extern Clipboard* DisplayGetPrimaryClipboard(Display* display);
	[LinkName("gdk_display_get_setting")]
	public static extern c_int DisplayGetSetting(Display* display, char8* name, GObject.Value* value);
	[LinkName("gdk_display_get_startup_notification_id")]
	public static extern char8* DisplayGetStartupNotificationId(Display* display);
	[LinkName("gdk_display_is_closed")]
	public static extern c_int DisplayIsClosed(Display* display);
	[LinkName("gdk_display_is_composited")]
	public static extern c_int DisplayIsComposited(Display* display);
	[LinkName("gdk_display_is_rgba")]
	public static extern c_int DisplayIsRgba(Display* display);
	[LinkName("gdk_display_list_seats")]
	public static extern GLib.List* DisplayListSeats(Display* display);
	[LinkName("gdk_display_map_keycode")]
	public static extern c_int DisplayMapKeycode(Display* display, c_uint keycode, c_int* n_entries);
	[LinkName("gdk_display_map_keyval")]
	public static extern c_int DisplayMapKeyval(Display* display, c_uint keyval, c_int* n_keys);
	[LinkName("gdk_display_notify_startup_complete")]
	public static extern void DisplayNotifyStartupComplete(Display* display, char8* startup_id);
	[LinkName("gdk_display_prepare_gl")]
	public static extern c_int DisplayPrepareGl(Display* self);
	[LinkName("gdk_display_put_event")]
	public static extern void DisplayPutEvent(Display* display, Event* event);
	[LinkName("gdk_display_supports_input_shapes")]
	public static extern c_int DisplaySupportsInputShapes(Display* display);
	[LinkName("gdk_display_sync")]
	public static extern void DisplaySync(Display* display);
	[LinkName("gdk_display_translate_key")]
	public static extern c_int DisplayTranslateKey(Display* display, c_uint keycode, ModifierType state, c_int group, c_uint* keyval, c_int* effective_group, c_int* level, ModifierType* consumed);
	[CRepr]
	public struct DisplayManager;
	[LinkName("gdk_display_manager_get_default_display")]
	public static extern Display* DisplayManagerGetDefaultDisplay(DisplayManager* manager);
	[LinkName("gdk_display_manager_list_displays")]
	public static extern GLib.SList* DisplayManagerListDisplays(DisplayManager* manager);
	[LinkName("gdk_display_manager_open_display")]
	public static extern Display* DisplayManagerOpenDisplay(DisplayManager* manager, char8* name);
	[LinkName("gdk_display_manager_set_default_display")]
	public static extern void DisplayManagerSetDefaultDisplay(DisplayManager* manager, Display* display);
	[CRepr]
	public struct Drag;
	[LinkName("gdk_drag_drop_done")]
	public static extern void DragDropDone(Drag* drag, c_int success);
	[LinkName("gdk_drag_get_actions")]
	public static extern DragAction DragGetActions(Drag* drag);
	[LinkName("gdk_drag_get_content")]
	public static extern ContentProvider* DragGetContent(Drag* drag);
	[LinkName("gdk_drag_get_device")]
	public static extern Device* DragGetDevice(Drag* drag);
	[LinkName("gdk_drag_get_display")]
	public static extern Display* DragGetDisplay(Drag* drag);
	[LinkName("gdk_drag_get_drag_surface")]
	public static extern Surface* DragGetDragSurface(Drag* drag);
	[LinkName("gdk_drag_get_formats")]
	public static extern ContentFormats* DragGetFormats(Drag* drag);
	[LinkName("gdk_drag_get_selected_action")]
	public static extern DragAction DragGetSelectedAction(Drag* drag);
	[LinkName("gdk_drag_get_surface")]
	public static extern Surface* DragGetSurface(Drag* drag);
	[LinkName("gdk_drag_set_hotspot")]
	public static extern void DragSetHotspot(Drag* drag, c_int hot_x, c_int hot_y);
	[CRepr]
	public enum DragAction : int
	{
		copy = 1,
		move = 2,
		link = 4,
		ask = 8
	}
	public enum DragCancelReason : c_int
	{
		no_target = 0,
		user_cancelled = 1,
		error = 2
	}
	[CRepr]
	public struct DragSurface
	{	}
	[CRepr]
	public struct DragSurfaceInterface
	{
	}
	[CRepr]
	public struct DragSurfaceSize
	{
	}
	[CRepr]
	public struct DrawContext;
	[LinkName("gdk_draw_context_begin_frame")]
	public static extern void DrawContextBeginFrame(DrawContext* context, cairo.Region* region);
	[LinkName("gdk_draw_context_end_frame")]
	public static extern void DrawContextEndFrame(DrawContext* context);
	[LinkName("gdk_draw_context_get_display")]
	public static extern Display* DrawContextGetDisplay(DrawContext* context);
	[LinkName("gdk_draw_context_get_frame_region")]
	public static extern cairo.Region* DrawContextGetFrameRegion(DrawContext* context);
	[LinkName("gdk_draw_context_get_surface")]
	public static extern Surface* DrawContextGetSurface(DrawContext* context);
	[LinkName("gdk_draw_context_is_in_frame")]
	public static extern c_int DrawContextIsInFrame(DrawContext* context);
	[CRepr]
	public struct Drop;
	[LinkName("gdk_drop_finish")]
	public static extern void DropFinish(Drop* self, DragAction action);
	[LinkName("gdk_drop_get_actions")]
	public static extern DragAction DropGetActions(Drop* self);
	[LinkName("gdk_drop_get_device")]
	public static extern Device* DropGetDevice(Drop* self);
	[LinkName("gdk_drop_get_display")]
	public static extern Display* DropGetDisplay(Drop* self);
	[LinkName("gdk_drop_get_drag")]
	public static extern Drag* DropGetDrag(Drop* self);
	[LinkName("gdk_drop_get_formats")]
	public static extern ContentFormats* DropGetFormats(Drop* self);
	[LinkName("gdk_drop_get_surface")]
	public static extern Surface* DropGetSurface(Drop* self);
	[LinkName("gdk_drop_read_async")]
	public static extern void DropReadAsync(Drop* self, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_drop_read_finish")]
	public static extern Gio.InputStream* DropReadFinish(Drop* self, Gio.AsyncResult* result, char8* out_mime_type);
	[LinkName("gdk_drop_read_value_async")]
	public static extern void DropReadValueAsync(Drop* self, GLib.Type type, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_drop_read_value_finish")]
	public static extern GObject.Value* DropReadValueFinish(Drop* self, Gio.AsyncResult* result);
	[LinkName("gdk_drop_status")]
	public static extern void DropStatus(Drop* self, DragAction actions, DragAction preferred);
	[CRepr]
	public struct Event;
	[LinkName("gdk_events_get_angle")]
	public static extern c_int EventsGetAngle(Event* event1, Event* event2, double* angle);
	[LinkName("gdk_events_get_center")]
	public static extern c_int EventsGetCenter(Event* event1, Event* event2, double* x, double* y);
	[LinkName("gdk_events_get_distance")]
	public static extern c_int EventsGetDistance(Event* event1, Event* event2, double* distance);
	[LinkName("gdk_event_get_axes")]
	public static extern c_int EventGetAxes(Event* event, c_uint* n_axes);
	[LinkName("gdk_event_get_axis")]
	public static extern c_int EventGetAxis(Event* event, AxisUse axis_use, double* value);
	[LinkName("gdk_event_get_device")]
	public static extern Device* EventGetDevice(Event* event);
	[LinkName("gdk_event_get_device_tool")]
	public static extern DeviceTool* EventGetDeviceTool(Event* event);
	[LinkName("gdk_event_get_display")]
	public static extern Display* EventGetDisplay(Event* event);
	[LinkName("gdk_event_get_event_sequence")]
	public static extern EventSequence* EventGetEventSequence(Event* event);
	[LinkName("gdk_event_get_event_type")]
	public static extern EventType EventGetEventType(Event* event);
	[LinkName("gdk_event_get_history")]
	public static extern TimeCoord EventGetHistory(Event* event, c_uint* out_n_coords);
	[LinkName("gdk_event_get_modifier_state")]
	public static extern ModifierType EventGetModifierState(Event* event);
	[LinkName("gdk_event_get_pointer_emulated")]
	public static extern c_int EventGetPointerEmulated(Event* event);
	[LinkName("gdk_event_get_position")]
	public static extern c_int EventGetPosition(Event* event, double* x, double* y);
	[LinkName("gdk_event_get_seat")]
	public static extern Seat* EventGetSeat(Event* event);
	[LinkName("gdk_event_get_surface")]
	public static extern Surface* EventGetSurface(Event* event);
	[LinkName("gdk_event_get_time")]
	public static extern c_uint EventGetTime(Event* event);
	[LinkName("gdk_event_ref")]
	public static extern Event* EventRef(Event* event);
	[LinkName("gdk_event_triggers_context_menu")]
	public static extern c_int EventTriggersContextMenu(Event* event);
	[LinkName("gdk_event_unref")]
	public static extern void EventUnref(Event* event);
	[CRepr]
	public struct EventSequence
	{
	}
	public enum EventType : c_int
	{
		delete_ = 0,
		motion_notify = 1,
		button_press = 2,
		button_release = 3,
		key_press = 4,
		key_release = 5,
		enter_notify = 6,
		leave_notify = 7,
		focus_change = 8,
		proximity_in = 9,
		proximity_out = 10,
		drag_enter = 11,
		drag_leave = 12,
		drag_motion = 13,
		drop_start = 14,
		scroll = 15,
		grab_broken = 16,
		touch_begin = 17,
		touch_update = 18,
		touch_end = 19,
		touch_cancel = 20,
		touchpad_swipe = 21,
		touchpad_pinch = 22,
		pad_button_press = 23,
		pad_button_release = 24,
		pad_ring = 25,
		pad_strip = 26,
		pad_group_mode = 27,
		touchpad_hold = 28,
		event_last = 29
	}
	[CRepr]
	public struct FileList
	{
	}
	[CRepr]
	public struct FocusEvent;
	[LinkName("gdk_focus_event_get_in")]
	public static extern c_int FocusEventGetIn(FocusEvent* event);
	[CRepr]
	public struct FrameClock;
	[LinkName("gdk_frame_clock_begin_updating")]
	public static extern void FrameClockBeginUpdating(FrameClock* frame_clock);
	[LinkName("gdk_frame_clock_end_updating")]
	public static extern void FrameClockEndUpdating(FrameClock* frame_clock);
	[LinkName("gdk_frame_clock_get_current_timings")]
	public static extern FrameTimings* FrameClockGetCurrentTimings(FrameClock* frame_clock);
	[LinkName("gdk_frame_clock_get_fps")]
	public static extern double FrameClockGetFps(FrameClock* frame_clock);
	[LinkName("gdk_frame_clock_get_frame_counter")]
	public static extern c_longlong FrameClockGetFrameCounter(FrameClock* frame_clock);
	[LinkName("gdk_frame_clock_get_frame_time")]
	public static extern c_longlong FrameClockGetFrameTime(FrameClock* frame_clock);
	[LinkName("gdk_frame_clock_get_history_start")]
	public static extern c_longlong FrameClockGetHistoryStart(FrameClock* frame_clock);
	[LinkName("gdk_frame_clock_get_refresh_info")]
	public static extern void FrameClockGetRefreshInfo(FrameClock* frame_clock, c_longlong base_time, c_longlong* refresh_interval_return, c_longlong* presentation_time_return);
	[LinkName("gdk_frame_clock_get_timings")]
	public static extern FrameTimings* FrameClockGetTimings(FrameClock* frame_clock, c_longlong frame_counter);
	[LinkName("gdk_frame_clock_request_phase")]
	public static extern void FrameClockRequestPhase(FrameClock* frame_clock, FrameClockPhase phase);
	[CRepr]
	public struct FrameClockClass
	{
	}
	[CRepr]
	public enum FrameClockPhase : int
	{
		none = 0,
		flush_events = 1,
		before_paint = 2,
		update = 4,
		layout = 8,
		paint = 16,
		resume_events = 32,
		after_paint = 64
	}
	[CRepr]
	public struct FrameClockPrivate
	{
	}
	[CRepr]
	public struct FrameTimings
	{
	}
	public enum FullscreenMode : c_int
	{
		current_monitor = 0,
		all_monitors = 1
	}
	[CRepr]
	public enum GLAPI : int
	{
		gl = 1,
		gles = 2
	}
	[CRepr]
	public struct GLContext;
	[LinkName("gdk_gl_context_get_allowed_apis")]
	public static extern GLAPI GlContextGetAllowedApis(GLContext* self);
	[LinkName("gdk_gl_context_get_api")]
	public static extern GLAPI GlContextGetApi(GLContext* self);
	[LinkName("gdk_gl_context_get_debug_enabled")]
	public static extern c_int GlContextGetDebugEnabled(GLContext* context);
	[LinkName("gdk_gl_context_get_display")]
	public static extern Display* GlContextGetDisplay(GLContext* context);
	[LinkName("gdk_gl_context_get_forward_compatible")]
	public static extern c_int GlContextGetForwardCompatible(GLContext* context);
	[LinkName("gdk_gl_context_get_required_version")]
	public static extern void GlContextGetRequiredVersion(GLContext* context, c_int* major, c_int* minor);
	[LinkName("gdk_gl_context_get_shared_context")]
	public static extern GLContext* GlContextGetSharedContext(GLContext* context);
	[LinkName("gdk_gl_context_get_surface")]
	public static extern Surface* GlContextGetSurface(GLContext* context);
	[LinkName("gdk_gl_context_get_use_es")]
	public static extern c_int GlContextGetUseEs(GLContext* context);
	[LinkName("gdk_gl_context_get_version")]
	public static extern void GlContextGetVersion(GLContext* context, c_int* major, c_int* minor);
	[LinkName("gdk_gl_context_is_legacy")]
	public static extern c_int GlContextIsLegacy(GLContext* context);
	[LinkName("gdk_gl_context_is_shared")]
	public static extern c_int GlContextIsShared(GLContext* self, GLContext* other);
	[LinkName("gdk_gl_context_make_current")]
	public static extern void GlContextMakeCurrent(GLContext* context);
	[LinkName("gdk_gl_context_realize")]
	public static extern c_int GlContextRealize(GLContext* context);
	[LinkName("gdk_gl_context_set_allowed_apis")]
	public static extern void GlContextSetAllowedApis(GLContext* self, GLAPI apis);
	[LinkName("gdk_gl_context_set_debug_enabled")]
	public static extern void GlContextSetDebugEnabled(GLContext* context, c_int enabled);
	[LinkName("gdk_gl_context_set_forward_compatible")]
	public static extern void GlContextSetForwardCompatible(GLContext* context, c_int compatible);
	[LinkName("gdk_gl_context_set_required_version")]
	public static extern void GlContextSetRequiredVersion(GLContext* context, c_int major, c_int minor);
	[LinkName("gdk_gl_context_set_use_es")]
	public static extern void GlContextSetUseEs(GLContext* context, c_int use_es);
	public enum GLError : c_int
	{
		not_available = 0,
		unsupported_format = 1,
		unsupported_profile = 2,
		compilation_failed = 3,
		link_failed = 4
	}
	[CRepr]
	public struct GLTexture;
	[LinkName("gdk_gl_texture_new")]
	public static extern GLTexture* GlTextureNew(GLContext* context, c_uint id, c_int width, c_int height, GLib.DestroyNotify destroy, void* data);
	[LinkName("gdk_gl_texture_release")]
	public static extern void GlTextureRelease(GLTexture* self);
	[CRepr]
	public struct GLTextureBuilder;
	[LinkName("gdk_gl_texture_builder_new")]
	public static extern GLTextureBuilder* GlTextureBuilderNew();
	[LinkName("gdk_gl_texture_builder_build")]
	public static extern Texture* GlTextureBuilderBuild(GLTextureBuilder* self, GLib.DestroyNotify destroy, void* data);
	[LinkName("gdk_gl_texture_builder_get_context")]
	public static extern GLContext* GlTextureBuilderGetContext(GLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_format")]
	public static extern MemoryFormat GlTextureBuilderGetFormat(GLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_has_mipmap")]
	public static extern c_int GlTextureBuilderGetHasMipmap(GLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_height")]
	public static extern c_int GlTextureBuilderGetHeight(GLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_id")]
	public static extern c_uint GlTextureBuilderGetId(GLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_sync")]
	public static extern void* GlTextureBuilderGetSync(GLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_update_region")]
	public static extern cairo.Region* GlTextureBuilderGetUpdateRegion(GLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_update_texture")]
	public static extern Texture* GlTextureBuilderGetUpdateTexture(GLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_get_width")]
	public static extern c_int GlTextureBuilderGetWidth(GLTextureBuilder* self);
	[LinkName("gdk_gl_texture_builder_set_context")]
	public static extern void GlTextureBuilderSetContext(GLTextureBuilder* self, GLContext* context);
	[LinkName("gdk_gl_texture_builder_set_format")]
	public static extern void GlTextureBuilderSetFormat(GLTextureBuilder* self, MemoryFormat format);
	[LinkName("gdk_gl_texture_builder_set_has_mipmap")]
	public static extern void GlTextureBuilderSetHasMipmap(GLTextureBuilder* self, c_int has_mipmap);
	[LinkName("gdk_gl_texture_builder_set_height")]
	public static extern void GlTextureBuilderSetHeight(GLTextureBuilder* self, c_int height);
	[LinkName("gdk_gl_texture_builder_set_id")]
	public static extern void GlTextureBuilderSetId(GLTextureBuilder* self, c_uint id);
	[LinkName("gdk_gl_texture_builder_set_sync")]
	public static extern void GlTextureBuilderSetSync(GLTextureBuilder* self, void* sync);
	[LinkName("gdk_gl_texture_builder_set_update_region")]
	public static extern void GlTextureBuilderSetUpdateRegion(GLTextureBuilder* self, cairo.Region* region);
	[LinkName("gdk_gl_texture_builder_set_update_texture")]
	public static extern void GlTextureBuilderSetUpdateTexture(GLTextureBuilder* self, Texture* texture);
	[LinkName("gdk_gl_texture_builder_set_width")]
	public static extern void GlTextureBuilderSetWidth(GLTextureBuilder* self, c_int width);
	[CRepr]
	public struct GLTextureBuilderClass
	{
	}
	[CRepr]
	public struct GLTextureClass
	{
	}
	[CRepr]
	public struct GrabBrokenEvent;
	[LinkName("gdk_grab_broken_event_get_grab_surface")]
	public static extern Surface* GrabBrokenEventGetGrabSurface(GrabBrokenEvent* event);
	[LinkName("gdk_grab_broken_event_get_implicit")]
	public static extern c_int GrabBrokenEventGetImplicit(GrabBrokenEvent* event);
	public enum Gravity : c_int
	{
		north_west = 1,
		north = 2,
		north_east = 3,
		west = 4,
		center = 5,
		east = 6,
		south_west = 7,
		south = 8,
		south_east = 9,
		static_ = 10
	}
	public enum InputSource : c_int
	{
		mouse = 0,
		pen = 1,
		keyboard = 2,
		touchscreen = 3,
		touchpad = 4,
		trackpoint = 5,
		tablet_pad = 6
	}
	[CRepr]
	public struct KeyEvent;
	[LinkName("gdk_key_event_get_consumed_modifiers")]
	public static extern ModifierType KeyEventGetConsumedModifiers(KeyEvent* event);
	[LinkName("gdk_key_event_get_keycode")]
	public static extern c_uint KeyEventGetKeycode(KeyEvent* event);
	[LinkName("gdk_key_event_get_keyval")]
	public static extern c_uint KeyEventGetKeyval(KeyEvent* event);
	[LinkName("gdk_key_event_get_layout")]
	public static extern c_uint KeyEventGetLayout(KeyEvent* event);
	[LinkName("gdk_key_event_get_level")]
	public static extern c_uint KeyEventGetLevel(KeyEvent* event);
	[LinkName("gdk_key_event_get_match")]
	public static extern c_int KeyEventGetMatch(KeyEvent* event, c_uint* keyval, ModifierType* modifiers);
	[LinkName("gdk_key_event_is_modifier")]
	public static extern c_int KeyEventIsModifier(KeyEvent* event);
	[LinkName("gdk_key_event_matches")]
	public static extern KeyMatch KeyEventMatches(KeyEvent* event, c_uint keyval, ModifierType modifiers);
	public enum KeyMatch : c_int
	{
		none = 0,
		partial = 1,
		exact = 2
	}
	[CRepr]
	public struct KeymapKey
	{
		c_uint keycode;
		c_int group;
		c_int level;
	}
	public enum MemoryFormat : c_int
	{
		b8g8r8a8_premultiplied = 0,
		a8r8g8b8_premultiplied = 1,
		r8g8b8a8_premultiplied = 2,
		b8g8r8a8 = 3,
		a8r8g8b8 = 4,
		r8g8b8a8 = 5,
		a8b8g8r8 = 6,
		r8g8b8 = 7,
		b8g8r8 = 8,
		r16g16b16 = 9,
		r16g16b16a16_premultiplied = 10,
		r16g16b16a16 = 11,
		r16g16b16_float = 12,
		r16g16b16a16_float_premultiplied = 13,
		r16g16b16a16_float = 14,
		r32g32b32_float = 15,
		r32g32b32a32_float_premultiplied = 16,
		r32g32b32a32_float = 17,
		g8a8_premultiplied = 18,
		g8a8 = 19,
		g8 = 20,
		g16a16_premultiplied = 21,
		g16a16 = 22,
		g16 = 23,
		a8 = 24,
		a16 = 25,
		n_formats = 26
	}
	[CRepr]
	public struct MemoryTexture;
	[LinkName("gdk_memory_texture_new")]
	public static extern MemoryTexture* MemoryTextureNew(c_int width, c_int height, MemoryFormat format, GLib.Bytes* bytes, c_ulong stride);
	[CRepr]
	public struct MemoryTextureClass
	{
	}
	[CRepr]
	public enum ModifierType : int
	{
		shift_mask = 1,
		lock_mask = 2,
		control_mask = 4,
		alt_mask = 8,
		button1_mask = 256,
		button2_mask = 512,
		button3_mask = 1024,
		button4_mask = 2048,
		button5_mask = 4096,
		super_mask = 67108864,
		hyper_mask = 134217728,
		meta_mask = 268435456
	}
	[CRepr]
	public struct Monitor;
	[LinkName("gdk_monitor_get_connector")]
	public static extern char8* MonitorGetConnector(Monitor* monitor);
	[LinkName("gdk_monitor_get_description")]
	public static extern char8* MonitorGetDescription(Monitor* monitor);
	[LinkName("gdk_monitor_get_display")]
	public static extern Display* MonitorGetDisplay(Monitor* monitor);
	[LinkName("gdk_monitor_get_geometry")]
	public static extern void MonitorGetGeometry(Monitor* monitor, Rectangle* geometry);
	[LinkName("gdk_monitor_get_height_mm")]
	public static extern c_int MonitorGetHeightMm(Monitor* monitor);
	[LinkName("gdk_monitor_get_manufacturer")]
	public static extern char8* MonitorGetManufacturer(Monitor* monitor);
	[LinkName("gdk_monitor_get_model")]
	public static extern char8* MonitorGetModel(Monitor* monitor);
	[LinkName("gdk_monitor_get_refresh_rate")]
	public static extern c_int MonitorGetRefreshRate(Monitor* monitor);
	[LinkName("gdk_monitor_get_scale_factor")]
	public static extern c_int MonitorGetScaleFactor(Monitor* monitor);
	[LinkName("gdk_monitor_get_subpixel_layout")]
	public static extern SubpixelLayout MonitorGetSubpixelLayout(Monitor* monitor);
	[LinkName("gdk_monitor_get_width_mm")]
	public static extern c_int MonitorGetWidthMm(Monitor* monitor);
	[LinkName("gdk_monitor_is_valid")]
	public static extern c_int MonitorIsValid(Monitor* monitor);
	[CRepr]
	public struct MonitorClass
	{
	}
	[CRepr]
	public struct MotionEvent;
	public enum NotifyType : c_int
	{
		ancestor = 0,
		virtual_ = 1,
		inferior = 2,
		nonlinear = 3,
		nonlinear_virtual = 4,
		unknown = 5
	}
	[CRepr]
	public struct PadEvent;
	[LinkName("gdk_pad_event_get_axis_value")]
	public static extern void PadEventGetAxisValue(PadEvent* event, c_uint* index, double* value);
	[LinkName("gdk_pad_event_get_button")]
	public static extern c_uint PadEventGetButton(PadEvent* event);
	[LinkName("gdk_pad_event_get_group_mode")]
	public static extern void PadEventGetGroupMode(PadEvent* event, c_uint* group, c_uint* mode);
	[CRepr]
	public struct Paintable
	{
		public function Paintable(Paintable paintable) get_current_image;

		public function PaintableFlags(Paintable paintable) get_flags;

		public function double(Paintable paintable) get_intrinsic_aspect_ratio;

		public function c_int(Paintable paintable) get_intrinsic_height;

		public function c_int(Paintable paintable) get_intrinsic_width;

		public function void(Paintable paintable, Snapshot snapshot, double width, double height) snapshot;
	}
	[CRepr]
	public enum PaintableFlags : int
	{
		size = 1,
		contents = 2
	}
	[CRepr]
	public struct PaintableInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct Popup
	{	}
	[CRepr]
	public struct PopupInterface
	{
	}
	[CRepr]
	public struct PopupLayout
	{
	}
	[CRepr]
	public struct ProximityEvent;
	[CRepr]
	public struct RGBA
	{
		float red;
		float green;
		float blue;
		float alpha;
	}
	[CRepr]
	public struct Rectangle
	{
		c_int x;
		c_int y;
		c_int width;
		c_int height;
	}
	public enum ScrollDirection : c_int
	{
		up = 0,
		down = 1,
		left = 2,
		right = 3,
		smooth = 4
	}
	[CRepr]
	public struct ScrollEvent;
	[LinkName("gdk_scroll_event_get_deltas")]
	public static extern void ScrollEventGetDeltas(ScrollEvent* event, double* delta_x, double* delta_y);
	[LinkName("gdk_scroll_event_get_direction")]
	public static extern ScrollDirection ScrollEventGetDirection(ScrollEvent* event);
	[LinkName("gdk_scroll_event_get_unit")]
	public static extern ScrollUnit ScrollEventGetUnit(ScrollEvent* event);
	[LinkName("gdk_scroll_event_is_stop")]
	public static extern c_int ScrollEventIsStop(ScrollEvent* event);
	public enum ScrollUnit : c_int
	{
		wheel = 0,
		surface = 1
	}
	[CRepr]
	public struct Seat;
	[LinkName("gdk_seat_get_capabilities")]
	public static extern SeatCapabilities SeatGetCapabilities(Seat* seat);
	[LinkName("gdk_seat_get_devices")]
	public static extern GLib.List* SeatGetDevices(Seat* seat, SeatCapabilities capabilities);
	[LinkName("gdk_seat_get_display")]
	public static extern Display* SeatGetDisplay(Seat* seat);
	[LinkName("gdk_seat_get_keyboard")]
	public static extern Device* SeatGetKeyboard(Seat* seat);
	[LinkName("gdk_seat_get_pointer")]
	public static extern Device* SeatGetPointer(Seat* seat);
	[LinkName("gdk_seat_get_tools")]
	public static extern GLib.List* SeatGetTools(Seat* seat);
	[CRepr]
	public enum SeatCapabilities : int
	{
		none = 0,
		pointer = 1,
		touch = 2,
		tablet_stylus = 4,
		keyboard = 8,
		tablet_pad = 16,
		all_pointing = 7,
		all = 15
	}
	[CRepr]
	public struct Snapshot;
	[CRepr]
	public struct SnapshotClass
	{
	}
	public enum SubpixelLayout : c_int
	{
		unknown = 0,
		none = 1,
		horizontal_rgb = 2,
		horizontal_bgr = 3,
		vertical_rgb = 4,
		vertical_bgr = 5
	}
	[CRepr]
	public struct Surface;
	[LinkName("gdk_surface_new_popup")]
	public static extern Surface* SurfaceNewPopup(Surface* parent, c_int autohide);
	[LinkName("gdk_surface_new_toplevel")]
	public static extern Surface* SurfaceNewToplevel(Display* display);
	[LinkName("gdk_surface_beep")]
	public static extern void SurfaceBeep(Surface* surface);
	[LinkName("gdk_surface_create_cairo_context")]
	public static extern CairoContext* SurfaceCreateCairoContext(Surface* surface);
	[LinkName("gdk_surface_create_gl_context")]
	public static extern GLContext* SurfaceCreateGlContext(Surface* surface);
	[LinkName("gdk_surface_create_similar_surface")]
	public static extern cairo.Surface* SurfaceCreateSimilarSurface(Surface* surface, cairo.Content content, c_int width, c_int height);
	[LinkName("gdk_surface_create_vulkan_context")]
	public static extern VulkanContext* SurfaceCreateVulkanContext(Surface* surface);
	[LinkName("gdk_surface_destroy")]
	public static extern void SurfaceDestroy(Surface* surface);
	[LinkName("gdk_surface_get_cursor")]
	public static extern Cursor* SurfaceGetCursor(Surface* surface);
	[LinkName("gdk_surface_get_device_cursor")]
	public static extern Cursor* SurfaceGetDeviceCursor(Surface* surface, Device* device);
	[LinkName("gdk_surface_get_device_position")]
	public static extern c_int SurfaceGetDevicePosition(Surface* surface, Device* device, double* x, double* y, ModifierType* mask);
	[LinkName("gdk_surface_get_display")]
	public static extern Display* SurfaceGetDisplay(Surface* surface);
	[LinkName("gdk_surface_get_frame_clock")]
	public static extern FrameClock* SurfaceGetFrameClock(Surface* surface);
	[LinkName("gdk_surface_get_height")]
	public static extern c_int SurfaceGetHeight(Surface* surface);
	[LinkName("gdk_surface_get_mapped")]
	public static extern c_int SurfaceGetMapped(Surface* surface);
	[LinkName("gdk_surface_get_scale")]
	public static extern double SurfaceGetScale(Surface* surface);
	[LinkName("gdk_surface_get_scale_factor")]
	public static extern c_int SurfaceGetScaleFactor(Surface* surface);
	[LinkName("gdk_surface_get_width")]
	public static extern c_int SurfaceGetWidth(Surface* surface);
	[LinkName("gdk_surface_hide")]
	public static extern void SurfaceHide(Surface* surface);
	[LinkName("gdk_surface_is_destroyed")]
	public static extern c_int SurfaceIsDestroyed(Surface* surface);
	[LinkName("gdk_surface_queue_render")]
	public static extern void SurfaceQueueRender(Surface* surface);
	[LinkName("gdk_surface_request_layout")]
	public static extern void SurfaceRequestLayout(Surface* surface);
	[LinkName("gdk_surface_set_cursor")]
	public static extern void SurfaceSetCursor(Surface* surface, Cursor* cursor);
	[LinkName("gdk_surface_set_device_cursor")]
	public static extern void SurfaceSetDeviceCursor(Surface* surface, Device* device, Cursor* cursor);
	[LinkName("gdk_surface_set_input_region")]
	public static extern void SurfaceSetInputRegion(Surface* surface, cairo.Region* region);
	[LinkName("gdk_surface_set_opaque_region")]
	public static extern void SurfaceSetOpaqueRegion(Surface* surface, cairo.Region* region);
	[LinkName("gdk_surface_translate_coordinates")]
	public static extern c_int SurfaceTranslateCoordinates(Surface* from, Surface* to, double* x, double* y);
	[CRepr]
	public struct SurfaceClass
	{
	}
	public enum SurfaceEdge : c_int
	{
		north_west = 0,
		north = 1,
		north_east = 2,
		west = 3,
		east = 4,
		south_west = 5,
		south = 6,
		south_east = 7
	}
	[CRepr]
	public struct Texture;
	[LinkName("gdk_texture_new_for_pixbuf")]
	public static extern Texture* TextureNewForPixbuf(GdkPixbuf.Pixbuf* pixbuf);
	[LinkName("gdk_texture_new_from_bytes")]
	public static extern Texture* TextureNewFromBytes(GLib.Bytes* bytes);
	[LinkName("gdk_texture_new_from_file")]
	public static extern Texture* TextureNewFromFile(Gio.File* file);
	[LinkName("gdk_texture_new_from_filename")]
	public static extern Texture* TextureNewFromFilename(char8* path);
	[LinkName("gdk_texture_new_from_resource")]
	public static extern Texture* TextureNewFromResource(char8* resource_path);
	[LinkName("gdk_texture_download")]
	public static extern void TextureDownload(Texture* texture, c_ulong stride);
	[LinkName("gdk_texture_get_format")]
	public static extern MemoryFormat TextureGetFormat(Texture* self);
	[LinkName("gdk_texture_get_height")]
	public static extern c_int TextureGetHeight(Texture* texture);
	[LinkName("gdk_texture_get_width")]
	public static extern c_int TextureGetWidth(Texture* texture);
	[LinkName("gdk_texture_save_to_png")]
	public static extern c_int TextureSaveToPng(Texture* texture, char8* filename);
	[LinkName("gdk_texture_save_to_png_bytes")]
	public static extern GLib.Bytes* TextureSaveToPngBytes(Texture* texture);
	[LinkName("gdk_texture_save_to_tiff")]
	public static extern c_int TextureSaveToTiff(Texture* texture, char8* filename);
	[LinkName("gdk_texture_save_to_tiff_bytes")]
	public static extern GLib.Bytes* TextureSaveToTiffBytes(Texture* texture);
	[CRepr]
	public struct TextureClass
	{
	}
	[CRepr]
	public struct TextureDownloader
	{
	}
	public enum TextureError : c_int
	{
		too_large = 0,
		corrupt_image = 1,
		unsupported_content = 2,
		unsupported_format = 3
	}
	[CRepr]
	public struct TimeCoord
	{
		c_uint time;
		AxisFlags flags;
	}
	public enum TitlebarGesture : c_int
	{
		double_click = 1,
		right_click = 2,
		middle_click = 3
	}
	[CRepr]
	public struct Toplevel
	{	}
	[CRepr]
	public struct ToplevelInterface
	{
	}
	[CRepr]
	public struct ToplevelLayout
	{
	}
	[CRepr]
	public struct ToplevelSize
	{
	}
	[CRepr]
	public enum ToplevelState : int
	{
		minimized = 1,
		maximized = 2,
		sticky = 4,
		fullscreen = 8,
		above = 16,
		below = 32,
		focused = 64,
		tiled = 128,
		top_tiled = 256,
		top_resizable = 512,
		right_tiled = 1024,
		right_resizable = 2048,
		bottom_tiled = 4096,
		bottom_resizable = 8192,
		left_tiled = 16384,
		left_resizable = 32768
	}
	[CRepr]
	public struct TouchEvent;
	[LinkName("gdk_touch_event_get_emulating_pointer")]
	public static extern c_int TouchEventGetEmulatingPointer(TouchEvent* event);
	[CRepr]
	public struct TouchpadEvent;
	[LinkName("gdk_touchpad_event_get_deltas")]
	public static extern void TouchpadEventGetDeltas(TouchpadEvent* event, double* dx, double* dy);
	[LinkName("gdk_touchpad_event_get_gesture_phase")]
	public static extern TouchpadGesturePhase TouchpadEventGetGesturePhase(TouchpadEvent* event);
	[LinkName("gdk_touchpad_event_get_n_fingers")]
	public static extern c_uint TouchpadEventGetNFingers(TouchpadEvent* event);
	[LinkName("gdk_touchpad_event_get_pinch_angle_delta")]
	public static extern double TouchpadEventGetPinchAngleDelta(TouchpadEvent* event);
	[LinkName("gdk_touchpad_event_get_pinch_scale")]
	public static extern double TouchpadEventGetPinchScale(TouchpadEvent* event);
	public enum TouchpadGesturePhase : c_int
	{
		begin = 0,
		update = 1,
		end = 2,
		cancel = 3
	}
	[CRepr]
	public struct VulkanContext;
	public enum VulkanError : c_int
	{
		unsupported = 0,
		not_available = 1
	}
}