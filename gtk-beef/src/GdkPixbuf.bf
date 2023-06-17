namespace GdkPixbuf;

using System;
using System.Interop;

using static Gio.Gio;
using static GLib.GLib;
using static GObject.GObject;

class GdkPixbuf
{
	public enum GdkColorspace : c_int
	{
		GDK_COLORSPACE_RGB
	}
	public enum GdkInterpType : c_int
	{
		GDK_INTERP_NEAREST,
		GDK_INTERP_TILES,
		GDK_INTERP_BILINEAR,
		GDK_INTERP_HYPER
	}
	[CRepr]
	public struct GdkPixbuf;
	[LinkName("gdk_pixbuf_new")]
	public static extern GdkPixbuf* pixbuf_new(GdkColorspace colorspace, c_int has_alpha, c_int bits_per_sample, c_int width, c_int height);
	[LinkName("gdk_pixbuf_new_from_bytes")]
	public static extern GdkPixbuf* pixbuf_new_from_bytes(GBytes* data, GdkColorspace colorspace, c_int has_alpha, c_int bits_per_sample, c_int width, c_int height, c_int rowstride);
	[LinkName("gdk_pixbuf_new_from_data")]
	public static extern GdkPixbuf* pixbuf_new_from_data(GdkColorspace colorspace, c_int has_alpha, c_int bits_per_sample, c_int width, c_int height, c_int rowstride, GdkPixbufDestroyNotify destroy_fn, void* destroy_fn_data);
	[LinkName("gdk_pixbuf_new_from_file")]
	public static extern GdkPixbuf* pixbuf_new_from_file( c_char* filename);
	[LinkName("gdk_pixbuf_new_from_file_at_scale")]
	public static extern GdkPixbuf* pixbuf_new_from_file_at_scale( c_char* filename, c_int width, c_int height, c_int preserve_aspect_ratio);
	[LinkName("gdk_pixbuf_new_from_file_at_size")]
	public static extern GdkPixbuf* pixbuf_new_from_file_at_size( c_char* filename, c_int width, c_int height);
	[LinkName("gdk_pixbuf_new_from_inline")]
	public static extern GdkPixbuf* pixbuf_new_from_inline(c_int data_length, c_int copy_pixels);
	[LinkName("gdk_pixbuf_new_from_resource")]
	public static extern GdkPixbuf* pixbuf_new_from_resource( c_char* resource_path);
	[LinkName("gdk_pixbuf_new_from_resource_at_scale")]
	public static extern GdkPixbuf* pixbuf_new_from_resource_at_scale( c_char* resource_path, c_int width, c_int height, c_int preserve_aspect_ratio);
	[LinkName("gdk_pixbuf_new_from_stream")]
	public static extern GdkPixbuf* pixbuf_new_from_stream(GInputStream* stream, GCancellable* cancellable);
	[LinkName("gdk_pixbuf_new_from_stream_at_scale")]
	public static extern GdkPixbuf* pixbuf_new_from_stream_at_scale(GInputStream* stream, c_int width, c_int height, c_int preserve_aspect_ratio, GCancellable* cancellable);
	[LinkName("gdk_pixbuf_new_from_stream_finish")]
	public static extern GdkPixbuf* pixbuf_new_from_stream_finish(GAsyncResult* async_result);
	[LinkName("gdk_pixbuf_new_from_xpm_data")]
	public static extern GdkPixbuf* pixbuf_new_from_xpm_data();
	[LinkName("gdk_pixbuf_add_alpha")]
	public static extern GdkPixbuf* pixbuf_add_alpha( GdkPixbuf* pixbuf, c_int substitute_color, c_uchar r, c_uchar g, c_uchar b);
	[LinkName("gdk_pixbuf_apply_embedded_orientation")]
	public static extern GdkPixbuf* pixbuf_apply_embedded_orientation(GdkPixbuf* src);
	[LinkName("gdk_pixbuf_composite")]
	public static extern void pixbuf_composite( GdkPixbuf* src, GdkPixbuf* dest, c_int dest_x, c_int dest_y, c_int dest_width, c_int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, GdkInterpType interp_type, c_int overall_alpha);
	[LinkName("gdk_pixbuf_composite_color")]
	public static extern void pixbuf_composite_color( GdkPixbuf* src, GdkPixbuf* dest, c_int dest_x, c_int dest_y, c_int dest_width, c_int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, GdkInterpType interp_type, c_int overall_alpha, c_int check_x, c_int check_y, c_int check_size, c_uint color1, c_uint color2);
	[LinkName("gdk_pixbuf_composite_color_simple")]
	public static extern GdkPixbuf* pixbuf_composite_color_simple( GdkPixbuf* src, c_int dest_width, c_int dest_height, GdkInterpType interp_type, c_int overall_alpha, c_int check_size, c_uint color1, c_uint color2);
	[LinkName("gdk_pixbuf_copy")]
	public static extern GdkPixbuf* pixbuf_copy( GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_copy_area")]
	public static extern void pixbuf_copy_area( GdkPixbuf* src_pixbuf, c_int src_x, c_int src_y, c_int width, c_int height, GdkPixbuf* dest_pixbuf, c_int dest_x, c_int dest_y);
	[LinkName("gdk_pixbuf_copy_options")]
	public static extern c_int pixbuf_copy_options(GdkPixbuf* src_pixbuf, GdkPixbuf* dest_pixbuf);
	[LinkName("gdk_pixbuf_fill")]
	public static extern void pixbuf_fill(GdkPixbuf* pixbuf, c_uint pixel);
	[LinkName("gdk_pixbuf_flip")]
	public static extern GdkPixbuf* pixbuf_flip( GdkPixbuf* src, c_int horizontal);
	[LinkName("gdk_pixbuf_get_bits_per_sample")]
	public static extern c_int pixbuf_get_bits_per_sample( GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_byte_length")]
	public static extern c_ulong pixbuf_get_byte_length( GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_colorspace")]
	public static extern GdkColorspace pixbuf_get_colorspace( GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_has_alpha")]
	public static extern c_int pixbuf_get_has_alpha( GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_height")]
	public static extern c_int pixbuf_get_height( GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_n_channels")]
	public static extern c_int pixbuf_get_n_channels( GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_option")]
	public static extern  c_char* pixbuf_get_option(GdkPixbuf* pixbuf,  c_char* key);
	[LinkName("gdk_pixbuf_get_options")]
	public static extern GHashTable* pixbuf_get_options(GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_pixels")]
	public static extern c_uchar* pixbuf_get_pixels( GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_pixels_with_length")]
	public static extern c_uchar* pixbuf_get_pixels_with_length( GdkPixbuf* pixbuf, c_uint* length);
	[LinkName("gdk_pixbuf_get_rowstride")]
	public static extern c_int pixbuf_get_rowstride( GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_get_width")]
	public static extern c_int pixbuf_get_width( GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_new_subpixbuf")]
	public static extern GdkPixbuf* pixbuf_new_subpixbuf(GdkPixbuf* src_pixbuf, c_int src_x, c_int src_y, c_int width, c_int height);
	[LinkName("gdk_pixbuf_read_pixel_bytes")]
	public static extern GBytes* pixbuf_read_pixel_bytes( GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_read_pixels")]
	public static extern  c_uchar* pixbuf_read_pixels( GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_ref")]
	public static extern GdkPixbuf* pixbuf_ref(GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_remove_option")]
	public static extern c_int pixbuf_remove_option(GdkPixbuf* pixbuf,  c_char* key);
	[LinkName("gdk_pixbuf_rotate_simple")]
	public static extern GdkPixbuf* pixbuf_rotate_simple( GdkPixbuf* src, GdkPixbufRotation angle);
	[LinkName("gdk_pixbuf_saturate_and_pixelate")]
	public static extern void pixbuf_saturate_and_pixelate( GdkPixbuf* src, GdkPixbuf* dest, float saturation, c_int pixelate);
	[LinkName("gdk_pixbuf_save")]
	public static extern c_int pixbuf_save(GdkPixbuf* pixbuf,  c_char* filename,  c_char* type, GError** error);
	[LinkName("gdk_pixbuf_save_to_buffer")]
	public static extern c_int pixbuf_save_to_buffer(GdkPixbuf* pixbuf, c_ulong* buffer_size,  c_char* type, GError** error);
	[LinkName("gdk_pixbuf_save_to_bufferv")]
	public static extern c_int pixbuf_save_to_bufferv(GdkPixbuf* pixbuf, c_ulong* buffer_size,  c_char* type);
	[LinkName("gdk_pixbuf_save_to_callback")]
	public static extern c_int pixbuf_save_to_callback(GdkPixbuf* pixbuf, GdkPixbufSaveFunc save_func, void* user_data,  c_char* type, GError** error);
	[LinkName("gdk_pixbuf_save_to_callbackv")]
	public static extern c_int pixbuf_save_to_callbackv(GdkPixbuf* pixbuf, GdkPixbufSaveFunc save_func, void* user_data,  c_char* type);
	[LinkName("gdk_pixbuf_save_to_stream")]
	public static extern c_int pixbuf_save_to_stream(GdkPixbuf* pixbuf, GOutputStream* stream,  c_char* type, GCancellable* cancellable, GError** error);
	[LinkName("gdk_pixbuf_save_to_stream_async")]
	public static extern void pixbuf_save_to_stream_async(GdkPixbuf* pixbuf, GOutputStream* stream,  c_char* type, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_pixbuf_save_to_streamv")]
	public static extern c_int pixbuf_save_to_streamv(GdkPixbuf* pixbuf, GOutputStream* stream,  c_char* type, GCancellable* cancellable);
	[LinkName("gdk_pixbuf_save_to_streamv_async")]
	public static extern void pixbuf_save_to_streamv_async(GdkPixbuf* pixbuf, GOutputStream* stream,  c_char* type, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gdk_pixbuf_savev")]
	public static extern c_int pixbuf_savev(GdkPixbuf* pixbuf,  c_char* filename,  c_char* type);
	[LinkName("gdk_pixbuf_scale")]
	public static extern void pixbuf_scale( GdkPixbuf* src, GdkPixbuf* dest, c_int dest_x, c_int dest_y, c_int dest_width, c_int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, GdkInterpType interp_type);
	[LinkName("gdk_pixbuf_scale_simple")]
	public static extern GdkPixbuf* pixbuf_scale_simple( GdkPixbuf* src, c_int dest_width, c_int dest_height, GdkInterpType interp_type);
	[LinkName("gdk_pixbuf_set_option")]
	public static extern c_int pixbuf_set_option(GdkPixbuf* pixbuf,  c_char* key,  c_char* value);
	[LinkName("gdk_pixbuf_unref")]
	public static extern void pixbuf_unref(GdkPixbuf* pixbuf);
	public enum GdkPixbufAlphaMode : c_int
	{
		GDK_PIXBUF_ALPHA_BILEVEL,
		GDK_PIXBUF_ALPHA_FULL
	}
	[CRepr]
	public struct GdkPixbufAnimation;
	[LinkName("gdk_pixbuf_animation_new_from_file")]
	public static extern GdkPixbufAnimation* pixbuf_animation_new_from_file( c_char* filename);
	[LinkName("gdk_pixbuf_animation_new_from_resource")]
	public static extern GdkPixbufAnimation* pixbuf_animation_new_from_resource( c_char* resource_path);
	[LinkName("gdk_pixbuf_animation_new_from_stream")]
	public static extern GdkPixbufAnimation* pixbuf_animation_new_from_stream(GInputStream* stream, GCancellable* cancellable);
	[LinkName("gdk_pixbuf_animation_new_from_stream_finish")]
	public static extern GdkPixbufAnimation* pixbuf_animation_new_from_stream_finish(GAsyncResult* async_result);
	[LinkName("gdk_pixbuf_animation_get_height")]
	public static extern c_int pixbuf_animation_get_height(GdkPixbufAnimation* animation);
	[LinkName("gdk_pixbuf_animation_get_iter")]
	public static extern GdkPixbufAnimationIter* pixbuf_animation_get_iter(GdkPixbufAnimation* animation,  GTimeVal* start_time);
	[LinkName("gdk_pixbuf_animation_get_static_image")]
	public static extern GdkPixbuf* pixbuf_animation_get_static_image(GdkPixbufAnimation* animation);
	[LinkName("gdk_pixbuf_animation_get_width")]
	public static extern c_int pixbuf_animation_get_width(GdkPixbufAnimation* animation);
	[LinkName("gdk_pixbuf_animation_is_static_image")]
	public static extern c_int pixbuf_animation_is_static_image(GdkPixbufAnimation* animation);
	[LinkName("gdk_pixbuf_animation_ref")]
	public static extern GdkPixbufAnimation* pixbuf_animation_ref(GdkPixbufAnimation* animation);
	[LinkName("gdk_pixbuf_animation_unref")]
	public static extern void pixbuf_animation_unref(GdkPixbufAnimation* animation);
	[CRepr]
	public struct GdkPixbufAnimationClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GdkPixbufAnimationIter;
	[LinkName("gdk_pixbuf_animation_iter_advance")]
	public static extern c_int pixbuf_animation_iter_advance(GdkPixbufAnimationIter* iter,  GTimeVal* current_time);
	[LinkName("gdk_pixbuf_animation_iter_get_delay_time")]
	public static extern c_int pixbuf_animation_iter_get_delay_time(GdkPixbufAnimationIter* iter);
	[LinkName("gdk_pixbuf_animation_iter_get_pixbuf")]
	public static extern GdkPixbuf* pixbuf_animation_iter_get_pixbuf(GdkPixbufAnimationIter* iter);
	[LinkName("gdk_pixbuf_animation_iter_on_currently_loading_frame")]
	public static extern c_int pixbuf_animation_iter_on_currently_loading_frame(GdkPixbufAnimationIter* iter);
	[CRepr]
	public struct GdkPixbufAnimationIterClass
	{
		GObjectClass parent_class;
	}
	public function void GdkPixbufDestroyNotify(void* data);
	public enum GdkPixbufError : c_int
	{
		GDK_PIXBUF_ERROR_CORRUPT_IMAGE,
		GDK_PIXBUF_ERROR_INSUFFICIENT_MEMORY,
		GDK_PIXBUF_ERROR_BAD_OPTION,
		GDK_PIXBUF_ERROR_UNKNOWN_TYPE,
		GDK_PIXBUF_ERROR_UNSUPPORTED_OPERATION,
		GDK_PIXBUF_ERROR_FAILED,
		GDK_PIXBUF_ERROR_INCOMPLETE_ANIMATION
	}
	[CRepr]
	public struct GdkPixbufFormat
	{
		c_char* name;
		GdkPixbufModulePattern* signature;
		c_char* domain;
		c_char* description;
		c_uint flags;
		c_int disabled;
		c_char* license;
	}
	[CRepr]
	public struct GdkPixbufFormatFlags
	{
		public const int GDK_PIXBUF_FORMAT_WRITABLE = 1;
		public const int GDK_PIXBUF_FORMAT_SCALABLE = 2;
		public const int GDK_PIXBUF_FORMAT_THREADSAFE = 4;
	}
	[CRepr]
	public struct GdkPixbufLoader;
	[LinkName("gdk_pixbuf_loader_new")]
	public static extern GdkPixbufLoader* pixbuf_loader_new();
	[LinkName("gdk_pixbuf_loader_new_with_mime_type")]
	public static extern GdkPixbufLoader* pixbuf_loader_new_with_mime_type( c_char* mime_type);
	[LinkName("gdk_pixbuf_loader_new_with_type")]
	public static extern GdkPixbufLoader* pixbuf_loader_new_with_type( c_char* image_type);
	[LinkName("gdk_pixbuf_loader_close")]
	public static extern c_int pixbuf_loader_close(GdkPixbufLoader* loader);
	[LinkName("gdk_pixbuf_loader_get_animation")]
	public static extern GdkPixbufAnimation* pixbuf_loader_get_animation(GdkPixbufLoader* loader);
	[LinkName("gdk_pixbuf_loader_get_format")]
	public static extern GdkPixbufFormat* pixbuf_loader_get_format(GdkPixbufLoader* loader);
	[LinkName("gdk_pixbuf_loader_get_pixbuf")]
	public static extern GdkPixbuf* pixbuf_loader_get_pixbuf(GdkPixbufLoader* loader);
	[LinkName("gdk_pixbuf_loader_set_size")]
	public static extern void pixbuf_loader_set_size(GdkPixbufLoader* loader, c_int width, c_int height);
	[LinkName("gdk_pixbuf_loader_write")]
	public static extern c_int pixbuf_loader_write(GdkPixbufLoader* loader, c_ulong count);
	[LinkName("gdk_pixbuf_loader_write_bytes")]
	public static extern c_int pixbuf_loader_write_bytes(GdkPixbufLoader* loader, GBytes* buffer);
	[CRepr]
	public struct GdkPixbufLoaderClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GdkPixbufModule
	{
		c_char* module_name;
		c_char* module_path;
		void* module;
		GdkPixbufFormat* info;
		GdkPixbufModuleLoadFunc load;
		GdkPixbufModuleLoadXpmDataFunc load_xpm_data;
		GdkPixbufModuleBeginLoadFunc begin_load;
		GdkPixbufModuleStopLoadFunc stop_load;
		GdkPixbufModuleIncrementLoadFunc load_increment;
		GdkPixbufModuleLoadAnimationFunc load_animation;
		GdkPixbufModuleSaveFunc save;
		GdkPixbufModuleSaveCallbackFunc save_to_callback;
		GdkPixbufModuleSaveOptionSupportedFunc is_save_option_supported;
	}
	public function void* GdkPixbufModuleBeginLoadFunc(GdkPixbufModuleSizeFunc size_func, GdkPixbufModulePreparedFunc prepared_func, GdkPixbufModuleUpdatedFunc updated_func, void* user_data);
	public function void GdkPixbufModuleFillInfoFunc(GdkPixbufFormat* info);
	public function void GdkPixbufModuleFillVtableFunc(GdkPixbufModule* module);
	public function c_int GdkPixbufModuleIncrementLoadFunc(void* context, c_uint size);
	public function GdkPixbufAnimation* GdkPixbufModuleLoadAnimationFunc(void** f);
	public function GdkPixbuf* GdkPixbufModuleLoadFunc(void** f);
	public function GdkPixbuf* GdkPixbufModuleLoadXpmDataFunc();
	[CRepr]
	public struct GdkPixbufModulePattern
	{
		c_char* prefix;
		c_char* mask;
		c_int relevance;
	}
	public function void GdkPixbufModulePreparedFunc(GdkPixbuf* pixbuf, GdkPixbufAnimation* anim, void* user_data);
	public function c_int GdkPixbufModuleSaveCallbackFunc(GdkPixbufSaveFunc save_func, void* user_data, GdkPixbuf* pixbuf);
	public function c_int GdkPixbufModuleSaveFunc(void** f, GdkPixbuf* pixbuf);
	public function c_int GdkPixbufModuleSaveOptionSupportedFunc( c_char* option_key);
	public function void GdkPixbufModuleSizeFunc(c_int* width, c_int* height, void* user_data);
	public function c_int GdkPixbufModuleStopLoadFunc(void* context);
	public function void GdkPixbufModuleUpdatedFunc(GdkPixbuf* pixbuf, c_int x, c_int y, c_int width, c_int height, void* user_data);
	[CRepr]
	public struct GdkPixbufNonAnim;
	[LinkName("gdk_pixbuf_non_anim_new")]
	public static extern GdkPixbufAnimation* pixbuf_non_anim_new(GdkPixbuf* pixbuf);
	public enum GdkPixbufRotation : c_int
	{
		GDK_PIXBUF_ROTATE_NONE,
		GDK_PIXBUF_ROTATE_COUNTERCLOCKWISE,
		GDK_PIXBUF_ROTATE_UPSIDEDOWN,
		GDK_PIXBUF_ROTATE_CLOCKWISE
	}
	public function c_int GdkPixbufSaveFunc(c_ulong count, GError* error, void* data);
	[CRepr]
	public struct GdkPixbufSimpleAnim;
	[LinkName("gdk_pixbuf_simple_anim_new")]
	public static extern GdkPixbufSimpleAnim* pixbuf_simple_anim_new(c_int width, c_int height, float rate);
	[LinkName("gdk_pixbuf_simple_anim_add_frame")]
	public static extern void pixbuf_simple_anim_add_frame(GdkPixbufSimpleAnim* animation, GdkPixbuf* pixbuf);
	[LinkName("gdk_pixbuf_simple_anim_get_loop")]
	public static extern c_int pixbuf_simple_anim_get_loop(GdkPixbufSimpleAnim* animation);
	[LinkName("gdk_pixbuf_simple_anim_set_loop")]
	public static extern void pixbuf_simple_anim_set_loop(GdkPixbufSimpleAnim* animation, c_int loop);
	[CRepr]
	public struct GdkPixbufSimpleAnimClass
	{
	}
	[CRepr]
	public struct GdkPixbufSimpleAnimIter;
}