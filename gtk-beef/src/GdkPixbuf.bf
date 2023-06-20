namespace Gtk;

using System;
using System.Interop;

class GdkPixbuf
{
	public enum Colorspace : c_int
	{
		rgb = 0
	}
	public enum InterpType : c_int
	{
		nearest = 0,
		tiles = 1,
		bilinear = 2,
		hyper = 3
	}
	[CRepr]
	public struct Pixbuf;
	[LinkName("gdk_pixbuf_new")]
	public static extern Pixbuf* PixbufNew(Colorspace colorspace, c_int has_alpha, c_int bits_per_sample, c_int width, c_int height);
	[LinkName("gdk_pixbuf_new_from_bytes")]
	public static extern Pixbuf* PixbufNewFromBytes(GLib.Bytes* data, Colorspace colorspace, c_int has_alpha, c_int bits_per_sample, c_int width, c_int height, c_int rowstride);
	[LinkName("gdk_pixbuf_new_from_data")]
	public static extern Pixbuf* PixbufNewFromData(c_uchar* data, Colorspace colorspace, c_int has_alpha, c_int bits_per_sample, c_int width, c_int height, c_int rowstride, PixbufDestroyNotify destroy_fn, void* destroy_fn_data);
	[LinkName("gdk_pixbuf_new_from_file")]
	public static extern Pixbuf* PixbufNewFromFile(char8* filename);
	[LinkName("gdk_pixbuf_new_from_file_at_scale")]
	public static extern Pixbuf* PixbufNewFromFileAtScale(char8* filename, c_int width, c_int height, c_int preserve_aspect_ratio);
	[LinkName("gdk_pixbuf_new_from_file_at_size")]
	public static extern Pixbuf* PixbufNewFromFileAtSize(char8* filename, c_int width, c_int height);
	[LinkName("gdk_pixbuf_new_from_inline")]
	public static extern Pixbuf* PixbufNewFromInline(c_int data_length, c_uchar* data, c_int copy_pixels);
	[LinkName("gdk_pixbuf_new_from_resource")]
	public static extern Pixbuf* PixbufNewFromResource(char8* resource_path);
	[LinkName("gdk_pixbuf_new_from_resource_at_scale")]
	public static extern Pixbuf* PixbufNewFromResourceAtScale(char8* resource_path, c_int width, c_int height, c_int preserve_aspect_ratio);
	[LinkName("gdk_pixbuf_new_from_stream")]
	public static extern Pixbuf* PixbufNewFromStream(Gio.InputStream* stream, Gio.Cancellable* cancellable);
	[LinkName("gdk_pixbuf_new_from_stream_at_scale")]
	public static extern Pixbuf* PixbufNewFromStreamAtScale(Gio.InputStream* stream, c_int width, c_int height, c_int preserve_aspect_ratio, Gio.Cancellable* cancellable);
	[LinkName("gdk_pixbuf_new_from_stream_finish")]
	public static extern Pixbuf* PixbufNewFromStreamFinish(Gio.AsyncResult* async_result);
	[LinkName("gdk_pixbuf_new_from_xpm_data")]
	public static extern Pixbuf* PixbufNewFromXpmData(char8* data);
	[LinkName("gdk_pixbuf_calculate_rowstride")]
	public static extern c_int PixbufCalculateRowstride(Colorspace colorspace, c_int has_alpha, c_int bits_per_sample, c_int width, c_int height);
	[LinkName("gdk_pixbuf_get_file_info")]
	public static extern PixbufFormat* PixbufGetFileInfo(char8* filename, c_int* width, c_int* height);
	[LinkName("gdk_pixbuf_get_file_info_async")]
	public static extern void PixbufGetFileInfoAsync(char8* filename, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_pixbuf_get_file_info_finish")]
	public static extern PixbufFormat* PixbufGetFileInfoFinish(Gio.AsyncResult* async_result, c_int* width, c_int* height);
	[LinkName("gdk_pixbuf_get_formats")]
	public static extern GLib.SList* PixbufGetFormats();
	[LinkName("gdk_pixbuf_init_modules")]
	public static extern c_int PixbufInitModules(char8* path);
	[LinkName("gdk_pixbuf_new_from_stream_async")]
	public static extern void PixbufNewFromStreamAsync(Gio.InputStream* stream, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_pixbuf_new_from_stream_at_scale_async")]
	public static extern void PixbufNewFromStreamAtScaleAsync(Gio.InputStream* stream, c_int width, c_int height, c_int preserve_aspect_ratio, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_pixbuf_save_to_stream_finish")]
	public static extern c_int PixbufSaveToStreamFinish(Gio.AsyncResult* async_result);
	[LinkName("gdk_pixbuf_add_alpha")]
	public static extern Pixbuf* PixbufAddAlpha(Pixbuf* pixbuf, c_int substitute_color, c_uchar r, c_uchar g, c_uchar b);
	[LinkName("gdk_pixbuf_apply_embedded_orientation")]
	public static extern Pixbuf* PixbufApplyEmbeddedOrientation(Pixbuf* src);
	[LinkName("gdk_pixbuf_composite")]
	public static extern void PixbufComposite(Pixbuf* src, Pixbuf* dest, c_int dest_x, c_int dest_y, c_int dest_width, c_int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, InterpType interp_type, c_int overall_alpha);
	[LinkName("gdk_pixbuf_composite_color")]
	public static extern void PixbufCompositeColor(Pixbuf* src, Pixbuf* dest, c_int dest_x, c_int dest_y, c_int dest_width, c_int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, InterpType interp_type, c_int overall_alpha, c_int check_x, c_int check_y, c_int check_size, c_uint color1, c_uint color2);
	[LinkName("gdk_pixbuf_composite_color_simple")]
	public static extern Pixbuf* PixbufCompositeColorSimple(Pixbuf* src, c_int dest_width, c_int dest_height, InterpType interp_type, c_int overall_alpha, c_int check_size, c_uint color1, c_uint color2);
	[LinkName("gdk_pixbuf_copy")]
	public static extern Pixbuf* PixbufCopy(Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_copy_area")]
	public static extern void PixbufCopyArea(Pixbuf* src_pixbuf, c_int src_x, c_int src_y, c_int width, c_int height, Pixbuf* dest_pixbuf, c_int dest_x, c_int dest_y);
	[LinkName("gdk_pixbuf_copy_options")]
	public static extern c_int PixbufCopyOptions(Pixbuf* src_pixbuf, Pixbuf* dest_pixbuf);
	[LinkName("gdk_pixbuf_fill")]
	public static extern void PixbufFill(Pixbuf* pixbuf, c_uint pixel);
	[LinkName("gdk_pixbuf_flip")]
	public static extern Pixbuf* PixbufFlip(Pixbuf* src, c_int horizontal);
	[LinkName("gdk_pixbuf_get_bits_per_sample")]
	public static extern c_int PixbufGetBitsPerSample(Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_byte_length")]
	public static extern c_ulong PixbufGetByteLength(Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_colorspace")]
	public static extern Colorspace PixbufGetColorspace(Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_has_alpha")]
	public static extern c_int PixbufGetHasAlpha(Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_height")]
	public static extern c_int PixbufGetHeight(Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_n_channels")]
	public static extern c_int PixbufGetNChannels(Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_option")]
	public static extern char8* PixbufGetOption(Pixbuf* pixbuf, char8* key);
	[LinkName("gdk_pixbuf_get_options")]
	public static extern GLib.HashTable* PixbufGetOptions(Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_pixels")]
	public static extern c_uchar PixbufGetPixels(Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_pixels_with_length")]
	public static extern c_uchar PixbufGetPixelsWithLength(Pixbuf* pixbuf, c_uint* length);
	[LinkName("gdk_pixbuf_get_rowstride")]
	public static extern c_int PixbufGetRowstride(Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_width")]
	public static extern c_int PixbufGetWidth(Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_new_subpixbuf")]
	public static extern Pixbuf* PixbufNewSubpixbuf(Pixbuf* src_pixbuf, c_int src_x, c_int src_y, c_int width, c_int height);
	[LinkName("gdk_pixbuf_read_pixel_bytes")]
	public static extern GLib.Bytes* PixbufReadPixelBytes(Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_read_pixels")]
	public static extern c_uchar* PixbufReadPixels(Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_remove_option")]
	public static extern c_int PixbufRemoveOption(Pixbuf* pixbuf, char8* key);
	[LinkName("gdk_pixbuf_rotate_simple")]
	public static extern Pixbuf* PixbufRotateSimple(Pixbuf* src, PixbufRotation angle);
	[LinkName("gdk_pixbuf_saturate_and_pixelate")]
	public static extern void PixbufSaturateAndPixelate(Pixbuf* src, Pixbuf* dest, float saturation, c_int pixelate);
	[LinkName("gdk_pixbuf_save_to_bufferv")]
	public static extern c_int PixbufSaveToBufferv(Pixbuf* pixbuf, c_uchar** buffer, c_ulong* buffer_size, char8* type, char8* option_keys, char8* option_values);
	[LinkName("gdk_pixbuf_save_to_callbackv")]
	public static extern c_int PixbufSaveToCallbackv(Pixbuf* pixbuf, PixbufSaveFunc save_func, void* user_data, char8* type, char8* option_keys, char8* option_values);
	[LinkName("gdk_pixbuf_save_to_streamv")]
	public static extern c_int PixbufSaveToStreamv(Pixbuf* pixbuf, Gio.OutputStream* stream, char8* type, char8* option_keys, char8* option_values, Gio.Cancellable* cancellable);
	[LinkName("gdk_pixbuf_save_to_streamv_async")]
	public static extern void PixbufSaveToStreamvAsync(Pixbuf* pixbuf, Gio.OutputStream* stream, char8* type, char8* option_keys, char8* option_values, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_pixbuf_savev")]
	public static extern c_int PixbufSavev(Pixbuf* pixbuf, char8* filename, char8* type, char8* option_keys, char8* option_values);
	[LinkName("gdk_pixbuf_scale")]
	public static extern void PixbufScale(Pixbuf* src, Pixbuf* dest, c_int dest_x, c_int dest_y, c_int dest_width, c_int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, InterpType interp_type);
	[LinkName("gdk_pixbuf_scale_simple")]
	public static extern Pixbuf* PixbufScaleSimple(Pixbuf* src, c_int dest_width, c_int dest_height, InterpType interp_type);
	[LinkName("gdk_pixbuf_set_option")]
	public static extern c_int PixbufSetOption(Pixbuf* pixbuf, char8* key, char8* value);
	public enum PixbufAlphaMode : c_int
	{
		bilevel = 0,
		full = 1
	}
	[CRepr]
	public struct PixbufAnimation;
	[LinkName("gdk_pixbuf_animation_new_from_file")]
	public static extern PixbufAnimation* PixbufAnimationNewFromFile(char8* filename);
	[LinkName("gdk_pixbuf_animation_new_from_resource")]
	public static extern PixbufAnimation* PixbufAnimationNewFromResource(char8* resource_path);
	[LinkName("gdk_pixbuf_animation_new_from_stream")]
	public static extern PixbufAnimation* PixbufAnimationNewFromStream(Gio.InputStream* stream, Gio.Cancellable* cancellable);
	[LinkName("gdk_pixbuf_animation_new_from_stream_finish")]
	public static extern PixbufAnimation* PixbufAnimationNewFromStreamFinish(Gio.AsyncResult* async_result);
	[LinkName("gdk_pixbuf_animation_new_from_stream_async")]
	public static extern void PixbufAnimationNewFromStreamAsync(Gio.InputStream* stream, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_pixbuf_animation_get_height")]
	public static extern c_int PixbufAnimationGetHeight(PixbufAnimation* animation);
	[LinkName("gdk_pixbuf_animation_get_iter")]
	public static extern PixbufAnimationIter* PixbufAnimationGetIter(PixbufAnimation* animation, GLib.TimeVal* start_time);
	[LinkName("gdk_pixbuf_animation_get_static_image")]
	public static extern Pixbuf* PixbufAnimationGetStaticImage(PixbufAnimation* animation);
	[LinkName("gdk_pixbuf_animation_get_width")]
	public static extern c_int PixbufAnimationGetWidth(PixbufAnimation* animation);
	[LinkName("gdk_pixbuf_animation_is_static_image")]
	public static extern c_int PixbufAnimationIsStaticImage(PixbufAnimation* animation);
	[CRepr]
	public struct PixbufAnimationClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct PixbufAnimationIter;
	[LinkName("gdk_pixbuf_animation_iter_advance")]
	public static extern c_int PixbufAnimationIterAdvance(PixbufAnimationIter* iter, GLib.TimeVal* current_time);
	[LinkName("gdk_pixbuf_animation_iter_get_delay_time")]
	public static extern c_int PixbufAnimationIterGetDelayTime(PixbufAnimationIter* iter);
	[LinkName("gdk_pixbuf_animation_iter_get_pixbuf")]
	public static extern Pixbuf* PixbufAnimationIterGetPixbuf(PixbufAnimationIter* iter);
	[LinkName("gdk_pixbuf_animation_iter_on_currently_loading_frame")]
	public static extern c_int PixbufAnimationIterOnCurrentlyLoadingFrame(PixbufAnimationIter* iter);
	[CRepr]
	public struct PixbufAnimationIterClass
	{
		GObject.ObjectClass parent_class;
	}
	public function void PixbufDestroyNotify(void* data);
	public enum PixbufError : c_int
	{
		corrupt_image = 0,
		insufficient_memory = 1,
		bad_option = 2,
		unknown_type = 3,
		unsupported_operation = 4,
		failed = 5,
		incomplete_animation = 6
	}
	[CRepr]
	public struct PixbufFormat
	{
		char8* name;
		PixbufModulePattern signature;
		char8* domain;
		char8* description;
		c_uint flags;
		c_int disabled;
		char8* license;
	}
	[CRepr]
	public enum PixbufFormatFlags : int
	{
		writable = 1,
		scalable = 2,
		threadsafe = 4
	}
	[CRepr]
	public struct PixbufLoader;
	[LinkName("gdk_pixbuf_loader_new")]
	public static extern PixbufLoader* PixbufLoaderNew();
	[LinkName("gdk_pixbuf_loader_new_with_mime_type")]
	public static extern PixbufLoader* PixbufLoaderNewWithMimeType(char8* mime_type);
	[LinkName("gdk_pixbuf_loader_new_with_type")]
	public static extern PixbufLoader* PixbufLoaderNewWithType(char8* image_type);
	[LinkName("gdk_pixbuf_loader_close")]
	public static extern c_int PixbufLoaderClose(PixbufLoader* loader);
	[LinkName("gdk_pixbuf_loader_get_animation")]
	public static extern PixbufAnimation* PixbufLoaderGetAnimation(PixbufLoader* loader);
	[LinkName("gdk_pixbuf_loader_get_format")]
	public static extern PixbufFormat* PixbufLoaderGetFormat(PixbufLoader* loader);
	[LinkName("gdk_pixbuf_loader_get_pixbuf")]
	public static extern Pixbuf* PixbufLoaderGetPixbuf(PixbufLoader* loader);
	[LinkName("gdk_pixbuf_loader_set_size")]
	public static extern void PixbufLoaderSetSize(PixbufLoader* loader, c_int width, c_int height);
	[LinkName("gdk_pixbuf_loader_write")]
	public static extern c_int PixbufLoaderWrite(PixbufLoader* loader, c_uchar* buf, c_ulong count);
	[LinkName("gdk_pixbuf_loader_write_bytes")]
	public static extern c_int PixbufLoaderWriteBytes(PixbufLoader* loader, GLib.Bytes* buffer);
	[CRepr]
	public struct PixbufLoaderClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct PixbufModule
	{
		char8* module_name;
		char8* module_path;
		void* module;
		PixbufFormat info;
		PixbufModuleLoadFunc load;
		PixbufModuleLoadXpmDataFunc load_xpm_data;
		PixbufModuleBeginLoadFunc begin_load;
		PixbufModuleStopLoadFunc stop_load;
		PixbufModuleIncrementLoadFunc load_increment;
		PixbufModuleLoadAnimationFunc load_animation;
		PixbufModuleSaveFunc save;
		PixbufModuleSaveCallbackFunc save_to_callback;
		PixbufModuleSaveOptionSupportedFunc is_save_option_supported;
	}
	public function void* PixbufModuleBeginLoadFunc(PixbufModuleSizeFunc size_func, PixbufModulePreparedFunc prepared_func, PixbufModuleUpdatedFunc updated_func, void* user_data);
	public function void PixbufModuleFillInfoFunc(PixbufFormat info);
	public function void PixbufModuleFillVtableFunc(PixbufModule module);
	public function c_int PixbufModuleIncrementLoadFunc(void* context, c_uint size);
	public function PixbufAnimation PixbufModuleLoadAnimationFunc(void* f);
	public function Pixbuf PixbufModuleLoadFunc(void* f);
	public function Pixbuf PixbufModuleLoadXpmDataFunc();
	[CRepr]
	public struct PixbufModulePattern
	{
		char8* prefix;
		char8* mask;
		c_int relevance;
	}
	public function void PixbufModulePreparedFunc(Pixbuf pixbuf, PixbufAnimation anim, void* user_data);
	public function c_int PixbufModuleSaveCallbackFunc(PixbufSaveFunc save_func, void* user_data, Pixbuf pixbuf);
	public function c_int PixbufModuleSaveFunc(void* f, Pixbuf pixbuf);
	public function c_int PixbufModuleSaveOptionSupportedFunc(char8* option_key);
	public function void PixbufModuleSizeFunc(c_int width, c_int height, void* user_data);
	public function c_int PixbufModuleStopLoadFunc(void* context);
	public function void PixbufModuleUpdatedFunc(Pixbuf pixbuf, c_int x, c_int y, c_int width, c_int height, void* user_data);
	[CRepr]
	public struct PixbufNonAnim;
	[LinkName("gdk_pixbuf_non_anim_new")]
	public static extern PixbufAnimation* PixbufNonAnimNew(Pixbuf* pixbuf);
	public enum PixbufRotation : c_int
	{
		none = 0,
		counterclockwise = 90,
		upsidedown = 180,
		clockwise = 270
	}
	public function c_int PixbufSaveFunc(c_ulong count, GLib.Error error, void* data);
	[CRepr]
	public struct PixbufSimpleAnim;
	[LinkName("gdk_pixbuf_simple_anim_new")]
	public static extern PixbufSimpleAnim* PixbufSimpleAnimNew(c_int width, c_int height, float rate);
	[LinkName("gdk_pixbuf_simple_anim_add_frame")]
	public static extern void PixbufSimpleAnimAddFrame(PixbufSimpleAnim* animation, Pixbuf* pixbuf);
	[LinkName("gdk_pixbuf_simple_anim_get_loop")]
	public static extern c_int PixbufSimpleAnimGetLoop(PixbufSimpleAnim* animation);
	[LinkName("gdk_pixbuf_simple_anim_set_loop")]
	public static extern void PixbufSimpleAnimSetLoop(PixbufSimpleAnim* animation, c_int loop);
	[CRepr]
	public struct PixbufSimpleAnimClass
	{
	}
	[CRepr]
	public struct PixbufSimpleAnimIter;
	[LinkName("gdk_pixbuf_error_quark")]
	public static extern GLib.Quark PixbufErrorQuark();
}