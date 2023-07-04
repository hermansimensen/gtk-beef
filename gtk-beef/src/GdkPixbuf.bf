namespace Gtk;

using System;
using System.Interop;

class GdkPixbuf
{

	const c_int PIXBUF_MAJOR = (.)2;
	const c_int PIXBUF_MICRO = (.)11;
	const c_int PIXBUF_MINOR = (.)42;
	const char8* PIXBUF_VERSION = (.)"2.42.11";
	[CRepr]
	public struct Pixbuf : GObject.Object
	{
		[LinkName("gdk_pixbuf_new")]
		public static extern Pixbuf* New(Colorspace colorspace, c_int has_alpha, c_int bits_per_sample, c_int width, c_int height);
		[LinkName("gdk_pixbuf_new_from_bytes")]
		public static extern Pixbuf* NewFromBytes(GLib.Bytes* data, Colorspace colorspace, c_int has_alpha, c_int bits_per_sample, c_int width, c_int height, c_int rowstride);
		[LinkName("gdk_pixbuf_new_from_data")]
		public static extern Pixbuf* NewFromData(c_uchar* data, Colorspace colorspace, c_int has_alpha, c_int bits_per_sample, c_int width, c_int height, c_int rowstride, PixbufDestroyNotify destroy_fn, void* destroy_fn_data);
		[LinkName("gdk_pixbuf_new_from_file")]
		public static extern Pixbuf* NewFromFile(char8* filename);
		[LinkName("gdk_pixbuf_new_from_file_at_scale")]
		public static extern Pixbuf* NewFromFileAtScale(char8* filename, c_int width, c_int height, c_int preserve_aspect_ratio);
		[LinkName("gdk_pixbuf_new_from_file_at_size")]
		public static extern Pixbuf* NewFromFileAtSize(char8* filename, c_int width, c_int height);
		[LinkName("gdk_pixbuf_new_from_inline")]
		public static extern Pixbuf* NewFromInline(c_int data_length, c_uchar* data, c_int copy_pixels);
		[LinkName("gdk_pixbuf_new_from_resource")]
		public static extern Pixbuf* NewFromResource(char8* resource_path);
		[LinkName("gdk_pixbuf_new_from_resource_at_scale")]
		public static extern Pixbuf* NewFromResourceAtScale(char8* resource_path, c_int width, c_int height, c_int preserve_aspect_ratio);
		[LinkName("gdk_pixbuf_new_from_stream")]
		public static extern Pixbuf* NewFromStream(Gio.InputStream* stream, Gio.Cancellable* cancellable);
		[LinkName("gdk_pixbuf_new_from_stream_at_scale")]
		public static extern Pixbuf* NewFromStreamAtScale(Gio.InputStream* stream, c_int width, c_int height, c_int preserve_aspect_ratio, Gio.Cancellable* cancellable);
		[LinkName("gdk_pixbuf_new_from_stream_finish")]
		public static extern Pixbuf* NewFromStreamFinish(Gio.AsyncResult* async_result);
		[LinkName("gdk_pixbuf_new_from_xpm_data")]
		public static extern Pixbuf* NewFromXpmData(char8** data);
		[LinkName("gdk_pixbuf_add_alpha")]
		public static extern Pixbuf* AddAlpha(Pixbuf* pixbuf, c_int substitute_color, c_uchar r, c_uchar g, c_uchar b);
		[LinkName("gdk_pixbuf_apply_embedded_orientation")]
		public static extern Pixbuf* ApplyEmbeddedOrientation(Pixbuf* src);
		[LinkName("gdk_pixbuf_composite")]
		public static extern void Composite(Pixbuf* src, Pixbuf* dest, c_int dest_x, c_int dest_y, c_int dest_width, c_int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, InterpType interp_type, c_int overall_alpha);
		[LinkName("gdk_pixbuf_composite_color")]
		public static extern void CompositeColor(Pixbuf* src, Pixbuf* dest, c_int dest_x, c_int dest_y, c_int dest_width, c_int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, InterpType interp_type, c_int overall_alpha, c_int check_x, c_int check_y, c_int check_size, c_uint color1, c_uint color2);
		[LinkName("gdk_pixbuf_composite_color_simple")]
		public static extern Pixbuf* CompositeColorSimple(Pixbuf* src, c_int dest_width, c_int dest_height, InterpType interp_type, c_int overall_alpha, c_int check_size, c_uint color1, c_uint color2);
		[LinkName("gdk_pixbuf_copy")]
		public static extern Pixbuf* Copy(Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_copy_area")]
		public static extern void CopyArea(Pixbuf* src_pixbuf, c_int src_x, c_int src_y, c_int width, c_int height, Pixbuf* dest_pixbuf, c_int dest_x, c_int dest_y);
		[LinkName("gdk_pixbuf_copy_options")]
		public static extern c_int CopyOptions(Pixbuf* src_pixbuf, Pixbuf* dest_pixbuf);
		[LinkName("gdk_pixbuf_fill")]
		public static extern void Fill(Pixbuf* pixbuf, c_uint pixel);
		[LinkName("gdk_pixbuf_flip")]
		public static extern Pixbuf* Flip(Pixbuf* src, c_int horizontal);
		[LinkName("gdk_pixbuf_get_bits_per_sample")]
		public static extern c_int GetBitsPerSample(Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_get_byte_length")]
		public static extern c_ulong GetByteLength(Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_get_colorspace")]
		public static extern Colorspace GetColorspace(Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_get_has_alpha")]
		public static extern c_int GetHasAlpha(Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_get_height")]
		public static extern c_int GetHeight(Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_get_n_channels")]
		public static extern c_int GetNChannels(Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_get_option")]
		public static extern char8* GetOption(Pixbuf* pixbuf, char8* key);
		[LinkName("gdk_pixbuf_get_options")]
		public static extern GLib.HashTable* GetOptions(Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_get_pixels")]
		public static extern c_uchar* GetPixels(Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_get_pixels_with_length")]
		public static extern c_uchar* GetPixelsWithLength(Pixbuf* pixbuf, c_uint* length);
		[LinkName("gdk_pixbuf_get_rowstride")]
		public static extern c_int GetRowstride(Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_get_width")]
		public static extern c_int GetWidth(Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_new_subpixbuf")]
		public static extern Pixbuf* NewSubpixbuf(Pixbuf* src_pixbuf, c_int src_x, c_int src_y, c_int width, c_int height);
		[LinkName("gdk_pixbuf_read_pixel_bytes")]
		public static extern GLib.Bytes* ReadPixelBytes(Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_read_pixels")]
		public static extern c_uchar* ReadPixels(Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_remove_option")]
		public static extern c_int RemoveOption(Pixbuf* pixbuf, char8* key);
		[LinkName("gdk_pixbuf_rotate_simple")]
		public static extern Pixbuf* RotateSimple(Pixbuf* src, PixbufRotation angle);
		[LinkName("gdk_pixbuf_saturate_and_pixelate")]
		public static extern void SaturateAndPixelate(Pixbuf* src, Pixbuf* dest, float saturation, c_int pixelate);
		[LinkName("gdk_pixbuf_save_to_bufferv")]
		public static extern c_int SaveToBufferv(Pixbuf* pixbuf, c_uchar** buffer, c_ulong* buffer_size, char8* type, char8** option_keys, char8** option_values);
		[LinkName("gdk_pixbuf_save_to_callbackv")]
		public static extern c_int SaveToCallbackv(Pixbuf* pixbuf, PixbufSaveFunc save_func, void* user_data, char8* type, char8** option_keys, char8** option_values);
		[LinkName("gdk_pixbuf_save_to_streamv")]
		public static extern c_int SaveToStreamv(Pixbuf* pixbuf, Gio.OutputStream* stream, char8* type, char8** option_keys, char8** option_values, Gio.Cancellable* cancellable);
		[LinkName("gdk_pixbuf_save_to_streamv_async")]
		public static extern void SaveToStreamvAsync(Pixbuf* pixbuf, Gio.OutputStream* stream, char8* type, char8** option_keys, char8** option_values, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gdk_pixbuf_savev")]
		public static extern c_int Savev(Pixbuf* pixbuf, char8* filename, char8* type, char8** option_keys, char8** option_values);
		[LinkName("gdk_pixbuf_scale")]
		public static extern void Scale(Pixbuf* src, Pixbuf* dest, c_int dest_x, c_int dest_y, c_int dest_width, c_int dest_height, double offset_x, double offset_y, double scale_x, double scale_y, InterpType interp_type);
		[LinkName("gdk_pixbuf_scale_simple")]
		public static extern Pixbuf* ScaleSimple(Pixbuf* src, c_int dest_width, c_int dest_height, InterpType interp_type);
		[LinkName("gdk_pixbuf_set_option")]
		public static extern c_int SetOption(Pixbuf* pixbuf, char8* key, char8* value);
	}
	[CRepr]
	public struct PixbufAnimation : GObject.Object
	{
		[LinkName("gdk_pixbuf_animation_new_from_file")]
		public static extern PixbufAnimation* NewFromFile(char8* filename);
		[LinkName("gdk_pixbuf_animation_new_from_resource")]
		public static extern PixbufAnimation* NewFromResource(char8* resource_path);
		[LinkName("gdk_pixbuf_animation_new_from_stream")]
		public static extern PixbufAnimation* NewFromStream(Gio.InputStream* stream, Gio.Cancellable* cancellable);
		[LinkName("gdk_pixbuf_animation_new_from_stream_finish")]
		public static extern PixbufAnimation* NewFromStreamFinish(Gio.AsyncResult* async_result);
		[LinkName("gdk_pixbuf_animation_get_height")]
		public static extern c_int GetHeight(PixbufAnimation* animation);
		[LinkName("gdk_pixbuf_animation_get_iter")]
		public static extern PixbufAnimationIter* GetIter(PixbufAnimation* animation, GLib.TimeVal* start_time);
		[LinkName("gdk_pixbuf_animation_get_static_image")]
		public static extern Pixbuf* GetStaticImage(PixbufAnimation* animation);
		[LinkName("gdk_pixbuf_animation_get_width")]
		public static extern c_int GetWidth(PixbufAnimation* animation);
		[LinkName("gdk_pixbuf_animation_is_static_image")]
		public static extern c_int IsStaticImage(PixbufAnimation* animation);
	}
	[CRepr]
	public struct PixbufAnimationIter : GObject.Object
	{
		[LinkName("gdk_pixbuf_animation_iter_advance")]
		public static extern c_int Advance(PixbufAnimationIter* iter, GLib.TimeVal* current_time);
		[LinkName("gdk_pixbuf_animation_iter_get_delay_time")]
		public static extern c_int GetDelayTime(PixbufAnimationIter* iter);
		[LinkName("gdk_pixbuf_animation_iter_get_pixbuf")]
		public static extern Pixbuf* GetPixbuf(PixbufAnimationIter* iter);
		[LinkName("gdk_pixbuf_animation_iter_on_currently_loading_frame")]
		public static extern c_int OnCurrentlyLoadingFrame(PixbufAnimationIter* iter);
	}
	[CRepr]
	public struct PixbufLoader : GObject.Object
	{
		[LinkName("gdk_pixbuf_loader_new")]
		public static extern PixbufLoader* New();
		[LinkName("gdk_pixbuf_loader_new_with_mime_type")]
		public static extern PixbufLoader* NewWithMimeType(char8* mime_type);
		[LinkName("gdk_pixbuf_loader_new_with_type")]
		public static extern PixbufLoader* NewWithType(char8* image_type);
		[LinkName("gdk_pixbuf_loader_close")]
		public static extern c_int Close(PixbufLoader* loader);
		[LinkName("gdk_pixbuf_loader_get_animation")]
		public static extern PixbufAnimation* GetAnimation(PixbufLoader* loader);
		[LinkName("gdk_pixbuf_loader_get_format")]
		public static extern PixbufFormat* GetFormat(PixbufLoader* loader);
		[LinkName("gdk_pixbuf_loader_get_pixbuf")]
		public static extern Pixbuf* GetPixbuf(PixbufLoader* loader);
		[LinkName("gdk_pixbuf_loader_set_size")]
		public static extern void SetSize(PixbufLoader* loader, c_int width, c_int height);
		[LinkName("gdk_pixbuf_loader_write")]
		public static extern c_int Write(PixbufLoader* loader, c_uchar* buf, c_ulong count);
		[LinkName("gdk_pixbuf_loader_write_bytes")]
		public static extern c_int WriteBytes(PixbufLoader* loader, GLib.Bytes* buffer);
		public function void AreaPreparedFunc(PixbufLoader* self, void* user_data);
		public function void AreaUpdatedFunc(PixbufLoader* self, c_int x, c_int y, c_int width, c_int height, void* user_data);
		public function void ClosedFunc(PixbufLoader* self, void* user_data);
		public function void SizePreparedFunc(PixbufLoader* self, c_int width, c_int height, void* user_data);
	}
	[CRepr]
	public struct PixbufNonAnim : PixbufAnimation
	{
		[LinkName("gdk_pixbuf_non_anim_new")]
		public static extern PixbufAnimation* New(Pixbuf* pixbuf);
	}
	[CRepr]
	public struct PixbufSimpleAnim : PixbufAnimation
	{
		[LinkName("gdk_pixbuf_simple_anim_new")]
		public static extern PixbufSimpleAnim* New(c_int width, c_int height, float rate);
		[LinkName("gdk_pixbuf_simple_anim_add_frame")]
		public static extern void AddFrame(PixbufSimpleAnim* animation, Pixbuf* pixbuf);
		[LinkName("gdk_pixbuf_simple_anim_get_loop")]
		public static extern c_int GetLoop(PixbufSimpleAnim* animation);
		[LinkName("gdk_pixbuf_simple_anim_set_loop")]
		public static extern void SetLoop(PixbufSimpleAnim* animation, c_int loop);
	}
	[CRepr]
	public struct PixbufSimpleAnimIter : PixbufAnimationIter
	{
	}
		[LinkName("gdk_pixbuf_error_quark")]
		public static extern GLib.Quark PixbufErrorQuark();
	[CRepr]
	public struct PixbufAnimationClass
	{
		public GObject.ObjectClass parent_class;
		public function c_int(PixbufAnimation* animation) is_static_image;
		public function Pixbuf*(PixbufAnimation* animation) get_static_image;
		public function void(PixbufAnimation* animation, c_int* width, c_int* height) get_size;
		public function PixbufAnimationIter*(PixbufAnimation* animation, GLib.TimeVal* start_time) get_iter;
	}
	[CRepr]
	public struct PixbufAnimationIterClass
	{
		public GObject.ObjectClass parent_class;
		public function c_int(PixbufAnimationIter* iter) get_delay_time;
		public function Pixbuf*(PixbufAnimationIter* iter) get_pixbuf;
		public function c_int(PixbufAnimationIter* iter) on_currently_loading_frame;
		public function c_int(PixbufAnimationIter* iter, GLib.TimeVal* current_time) advance;
	}
	[CRepr]
	public struct PixbufFormat
	{
		public char8* name;
		public PixbufModulePattern* signature;
		public char8* domain;
		public char8* description;
		public char8** mime_types;
		public char8** extensions;
		public c_uint flags;
		public c_int disabled;
		public char8* license;
		[LinkName("gdk_pixbuf_format_copy")]
		public static extern PixbufFormat* Copy(PixbufFormat* format);
		[LinkName("gdk_pixbuf_format_free")]
		public static extern void Free(PixbufFormat* format);
		[LinkName("gdk_pixbuf_format_get_description")]
		public static extern char8* GetDescription(PixbufFormat* format);
		[LinkName("gdk_pixbuf_format_get_extensions")]
		public static extern char8** GetExtensions(PixbufFormat* format);
		[LinkName("gdk_pixbuf_format_get_license")]
		public static extern char8* GetLicense(PixbufFormat* format);
		[LinkName("gdk_pixbuf_format_get_mime_types")]
		public static extern char8** GetMimeTypes(PixbufFormat* format);
		[LinkName("gdk_pixbuf_format_get_name")]
		public static extern char8* GetName(PixbufFormat* format);
		[LinkName("gdk_pixbuf_format_is_disabled")]
		public static extern c_int IsDisabled(PixbufFormat* format);
		[LinkName("gdk_pixbuf_format_is_save_option_supported")]
		public static extern c_int IsSaveOptionSupported(PixbufFormat* format, char8* option_key);
		[LinkName("gdk_pixbuf_format_is_scalable")]
		public static extern c_int IsScalable(PixbufFormat* format);
		[LinkName("gdk_pixbuf_format_is_writable")]
		public static extern c_int IsWritable(PixbufFormat* format);
		[LinkName("gdk_pixbuf_format_set_disabled")]
		public static extern void SetDisabled(PixbufFormat* format, c_int disabled);
	}
	[CRepr]
	public struct PixbufLoaderClass
	{
		public GObject.ObjectClass parent_class;
		public function void(PixbufLoader* loader, c_int width, c_int height) size_prepared;
		public function void(PixbufLoader* loader) area_prepared;
		public function void(PixbufLoader* loader, c_int x, c_int y, c_int width, c_int height) area_updated;
		public function void(PixbufLoader* loader) closed;
	}
	[CRepr]
	public struct PixbufModule
	{
		public char8* module_name;
		public char8* module_path;
		public void* module;
		public PixbufFormat* info;
		public PixbufModuleLoadFunc load;
		public PixbufModuleLoadXpmDataFunc load_xpm_data;
		public PixbufModuleBeginLoadFunc begin_load;
		public PixbufModuleStopLoadFunc stop_load;
		public PixbufModuleIncrementLoadFunc load_increment;
		public PixbufModuleLoadAnimationFunc load_animation;
		public PixbufModuleSaveFunc save;
		public PixbufModuleSaveCallbackFunc save_to_callback;
		public PixbufModuleSaveOptionSupportedFunc is_save_option_supported;
		public function void() _reserved1;
		public function void() _reserved2;
		public function void() _reserved3;
		public function void() _reserved4;
	}
	[CRepr]
	public struct PixbufModulePattern
	{
		public char8* prefix;
		public char8* mask;
		public c_int relevance;
	}
	[CRepr]
	public struct PixbufSimpleAnimClass : int
	{
	}
	[CRepr, AllowDuplicates]
	public enum Colorspace
	{
		Rgb = 0
	}
	[CRepr, AllowDuplicates]
	public enum InterpType
	{
		Nearest = 0,
		Tiles = 1,
		Bilinear = 2,
		Hyper = 3
	}
	[CRepr, AllowDuplicates]
	public enum PixbufAlphaMode
	{
		Bilevel = 0,
		Full = 1
	}
	[CRepr, AllowDuplicates]
	public enum PixbufError
	{
		CorruptImage = 0,
		InsufficientMemory = 1,
		BadOption = 2,
		UnknownType = 3,
		UnsupportedOperation = 4,
		Failed = 5,
		IncompleteAnimation = 6
	}
	[CRepr, AllowDuplicates]
	public enum PixbufFormatFlags
	{
		Writable = 1,
		Scalable = 2,
		Threadsafe = 4
	}
	[CRepr, AllowDuplicates]
	public enum PixbufRotation
	{
		None = 0,
		Counterclockwise = 90,
		Upsidedown = 180,
		Clockwise = 270
	}
	public function void PixbufDestroyNotify(c_uchar* pixels, void* data);
	public function void* PixbufModuleBeginLoadFunc(PixbufModuleSizeFunc size_func, PixbufModulePreparedFunc prepared_func, PixbufModuleUpdatedFunc updated_func, void* user_data);
	public function void PixbufModuleFillInfoFunc(PixbufFormat* info);
	public function void PixbufModuleFillVtableFunc(PixbufModule* module);
	public function c_int PixbufModuleIncrementLoadFunc(void* context, c_uchar* buf, c_uint size);
	public function PixbufAnimation* PixbufModuleLoadAnimationFunc(void** f);
	public function Pixbuf* PixbufModuleLoadFunc(void** f);
	public function Pixbuf* PixbufModuleLoadXpmDataFunc(char8** data);
	public function void PixbufModulePreparedFunc(Pixbuf* pixbuf, PixbufAnimation* anim, void* user_data);
	public function c_int PixbufModuleSaveCallbackFunc(PixbufSaveFunc save_func, void* user_data, Pixbuf* pixbuf, char8** option_keys, char8** option_values);
	public function c_int PixbufModuleSaveFunc(void** f, Pixbuf* pixbuf, char8** param_keys, char8** param_values);
	public function c_int PixbufModuleSaveOptionSupportedFunc(char8* option_key);
	public function void PixbufModuleSizeFunc(c_int* width, c_int* height, void* user_data);
	public function c_int PixbufModuleStopLoadFunc(void* context);
	public function void PixbufModuleUpdatedFunc(Pixbuf* pixbuf, c_int x, c_int y, c_int width, c_int height, void* user_data);
	public function c_int PixbufSaveFunc(c_uchar* buf, c_ulong count, GLib.Error** error, void* data);
}
