namespace cairo;

using System;
using System.Interop;

class cairo
{
	[CRepr]
	public struct Context
	{
	}
	[CRepr]
	public struct Device
	{
	}
	[CRepr]
	public struct Surface
	{
	}
	[CRepr]
	public struct Matrix
	{
	}
	[CRepr]
	public struct Pattern
	{
	}
	[CRepr]
	public struct Region
	{
	}
	public enum Status : c_int
	{
		success = 0,
		no_memory = 1,
		invalid_restore = 2,
		invalid_pop_group = 3,
		no_current_point = 4,
		invalid_matrix = 5,
		invalid_status = 6,
		null_pointer = 7,
		invalid_string = 8,
		invalid_path_data = 9,
		read_error = 10,
		write_error = 11,
		surface_finished = 12,
		surface_type_mismatch = 13,
		pattern_type_mismatch = 14,
		invalid_content = 15,
		invalid_format = 16,
		invalid_visual = 17,
		file_not_found = 18,
		invalid_dash = 19,
		invalid_dsc_comment = 20,
		invalid_index = 21,
		clip_not_representable = 22,
		temp_file_error = 23,
		invalid_stride = 24,
		font_type_mismatch = 25,
		user_font_immutable = 26,
		user_font_error = 27,
		negative_count = 28,
		invalid_clusters = 29,
		invalid_slant = 30,
		invalid_weight = 31,
		invalid_size = 32,
		user_font_not_implemented = 33,
		device_type_mismatch = 34,
		device_error = 35,
		invalid_mesh_construction = 36,
		device_finished = 37,
		jbig2_global_missing = 38
	}
	public enum Content : c_int
	{
		color = 4096,
		alpha = 8192,
		color_alpha = 12288
	}
	public enum Operator : c_int
	{
		clear = 0,
		source = 1,
		over = 2,
		in_ = 3,
		out_ = 4,
		atop = 5,
		dest = 6,
		dest_over = 7,
		dest_in = 8,
		dest_out = 9,
		dest_atop = 10,
		xor = 11,
		add = 12,
		saturate = 13,
		multiply = 14,
		screen = 15,
		overlay = 16,
		darken = 17,
		lighten = 18,
		color_dodge = 19,
		color_burn = 20,
		hard_light = 21,
		soft_light = 22,
		difference = 23,
		exclusion = 24,
		hsl_hue = 25,
		hsl_saturation = 26,
		hsl_color = 27,
		hsl_luminosity = 28
	}
	public enum Antialias : c_int
	{
		default_ = 0,
		none = 1,
		gray = 2,
		subpixel = 3,
		fast = 4,
		good = 5,
		best = 6
	}
	public enum FillRule : c_int
	{
		winding = 0,
		even_odd = 1
	}
	public enum LineCap : c_int
	{
		butt = 0,
		round = 1,
		square = 2
	}
	public enum LineJoin : c_int
	{
		miter = 0,
		round = 1,
		bevel = 2
	}
	public enum TextClusterFlags : c_int
	{
		backward = 1
	}
	public enum FontSlant : c_int
	{
		normal = 0,
		italic = 1,
		oblique = 2
	}
	public enum FontWeight : c_int
	{
		normal = 0,
		bold = 1
	}
	public enum SubpixelOrder : c_int
	{
		default_ = 0,
		rgb = 1,
		bgr = 2,
		vrgb = 3,
		vbgr = 4
	}
	public enum HintStyle : c_int
	{
		default_ = 0,
		none = 1,
		slight = 2,
		medium = 3,
		full = 4
	}
	public enum HintMetrics : c_int
	{
		default_ = 0,
		off = 1,
		on = 2
	}
	[CRepr]
	public struct FontOptions
	{
	}
	public enum FontType : c_int
	{
		toy = 0,
		ft = 1,
		win32 = 2,
		quartz = 3,
		user = 4
	}
	public enum PathDataType : c_int
	{
		move_to = 0,
		line_to = 1,
		curve_to = 2,
		close_path = 3
	}
	public enum DeviceType : c_int
	{
		drm = 0,
		gl = 1,
		script = 2,
		xcb = 3,
		xlib = 4,
		xml = 5,
		cogl = 6,
		win32 = 7,
		invalid = -1
	}
	public enum SurfaceType : c_int
	{
		image = 0,
		pdf = 1,
		ps = 2,
		xlib = 3,
		xcb = 4,
		glitz = 5,
		quartz = 6,
		win32 = 7,
		beos = 8,
		directfb = 9,
		svg = 10,
		os2 = 11,
		win32_printing = 12,
		quartz_image = 13,
		script = 14,
		qt = 15,
		recording = 16,
		vg = 17,
		gl = 18,
		drm = 19,
		tee = 20,
		xml = 21,
		skia = 22,
		subsurface = 23,
		cogl = 24
	}
	public enum Format : c_int
	{
		invalid = -1,
		argb32 = 0,
		rgb24 = 1,
		a8 = 2,
		a1 = 3,
		rgb16_565 = 4,
		rgb30 = 5
	}
	public enum PatternType : c_int
	{
		solid = 0,
		surface = 1,
		linear = 2,
		radial = 3,
		mesh = 4,
		raster_source = 5
	}
	public enum Extend : c_int
	{
		none = 0,
		repeat_ = 1,
		reflect = 2,
		pad = 3
	}
	public enum Filter : c_int
	{
		fast = 0,
		good = 1,
		best = 2,
		nearest = 3,
		bilinear = 4,
		gaussian = 5
	}
	public enum RegionOverlap : c_int
	{
		in_ = 0,
		out_ = 1,
		part = 2
	}
	[CRepr]
	public struct FontFace
	{
	}
	[CRepr]
	public struct ScaledFont
	{
	}
	[CRepr]
	public struct Path
	{
	}
	[CRepr]
	public struct Rectangle
	{
		double x;
		double y;
		double width;
		double height;
	}
	[CRepr]
	public struct RectangleInt
	{
		c_int x;
		c_int y;
		c_int width;
		c_int height;
	}
	[LinkName("cairo_image_surface_create")]
	public static extern void ImageSurfaceCreate();
}