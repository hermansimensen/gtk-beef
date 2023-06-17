namespace Cairo;

using System;
using System.Interop;

class Cairo
{
	[CRepr]
	public struct cairo_t
	{
	}
	[CRepr]
	public struct cairo_device_t
	{
	}
	[CRepr]
	public struct cairo_surface_t
	{
	}
	[CRepr]
	public struct cairo_matrix_t
	{
	}
	[CRepr]
	public struct cairo_pattern_t
	{
	}
	[CRepr]
	public struct cairo_region_t
	{
	}
	public enum cairo_status_t : c_int
	{
		CAIRO_STATUS_SUCCESS,
		CAIRO_STATUS_NO_MEMORY,
		CAIRO_STATUS_INVALID_RESTORE,
		CAIRO_STATUS_INVALID_POP_GROUP,
		CAIRO_STATUS_NO_CURRENT_POINT,
		CAIRO_STATUS_INVALID_MATRIX,
		CAIRO_STATUS_INVALID_STATUS,
		CAIRO_STATUS_NULL_POINTER,
		CAIRO_STATUS_INVALID_STRING,
		CAIRO_STATUS_INVALID_PATH_DATA,
		CAIRO_STATUS_READ_ERROR,
		CAIRO_STATUS_WRITE_ERROR,
		CAIRO_STATUS_SURFACE_FINISHED,
		CAIRO_STATUS_SURFACE_TYPE_MISMATCH,
		CAIRO_STATUS_PATTERN_TYPE_MISMATCH,
		CAIRO_STATUS_INVALID_CONTENT,
		CAIRO_STATUS_INVALID_FORMAT,
		CAIRO_STATUS_INVALID_VISUAL,
		CAIRO_STATUS_FILE_NOT_FOUND,
		CAIRO_STATUS_INVALID_DASH,
		CAIRO_STATUS_INVALID_DSC_COMMENT,
		CAIRO_STATUS_INVALID_INDEX,
		CAIRO_STATUS_CLIP_NOT_REPRESENTABLE,
		CAIRO_STATUS_TEMP_FILE_ERROR,
		CAIRO_STATUS_INVALID_STRIDE,
		CAIRO_STATUS_FONT_TYPE_MISMATCH,
		CAIRO_STATUS_USER_FONT_IMMUTABLE,
		CAIRO_STATUS_USER_FONT_ERROR,
		CAIRO_STATUS_NEGATIVE_COUNT,
		CAIRO_STATUS_INVALID_CLUSTERS,
		CAIRO_STATUS_INVALID_SLANT,
		CAIRO_STATUS_INVALID_WEIGHT,
		CAIRO_STATUS_INVALID_SIZE,
		CAIRO_STATUS_USER_FONT_NOT_IMPLEMENTED,
		CAIRO_STATUS_DEVICE_TYPE_MISMATCH,
		CAIRO_STATUS_DEVICE_ERROR,
		CAIRO_STATUS_INVALID_MESH_CONSTRUCTION,
		CAIRO_STATUS_DEVICE_FINISHED,
		CAIRO_STATUS_JBIG2_GLOBAL_MISSING
	}
	public enum cairo_content_t : c_int
	{
		CAIRO_CONTENT_COLOR,
		CAIRO_CONTENT_ALPHA,
		CAIRO_CONTENT_COLOR_ALPHA
	}
	public enum cairo_operator_t : c_int
	{
		CAIRO_OPERATOR_CLEAR,
		CAIRO_OPERATOR_SOURCE,
		CAIRO_OPERATOR_OVER,
		CAIRO_OPERATOR_IN,
		CAIRO_OPERATOR_OUT,
		CAIRO_OPERATOR_ATOP,
		CAIRO_OPERATOR_DEST,
		CAIRO_OPERATOR_DEST_OVER,
		CAIRO_OPERATOR_DEST_IN,
		CAIRO_OPERATOR_DEST_OUT,
		CAIRO_OPERATOR_DEST_ATOP,
		CAIRO_OPERATOR_XOR,
		CAIRO_OPERATOR_ADD,
		CAIRO_OPERATOR_SATURATE,
		CAIRO_OPERATOR_MULTIPLY,
		CAIRO_OPERATOR_SCREEN,
		CAIRO_OPERATOR_OVERLAY,
		CAIRO_OPERATOR_DARKEN,
		CAIRO_OPERATOR_LIGHTEN,
		CAIRO_OPERATOR_COLOR_DODGE,
		CAIRO_OPERATOR_COLOR_BURN,
		CAIRO_OPERATOR_HARD_LIGHT,
		CAIRO_OPERATOR_SOFT_LIGHT,
		CAIRO_OPERATOR_DIFFERENCE,
		CAIRO_OPERATOR_EXCLUSION,
		CAIRO_OPERATOR_HSL_HUE,
		CAIRO_OPERATOR_HSL_SATURATION,
		CAIRO_OPERATOR_HSL_COLOR,
		CAIRO_OPERATOR_HSL_LUMINOSITY
	}
	public enum cairo_antialias_t : c_int
	{
		CAIRO_ANTIALIAS_DEFAULT,
		CAIRO_ANTIALIAS_NONE,
		CAIRO_ANTIALIAS_GRAY,
		CAIRO_ANTIALIAS_SUBPIXEL,
		CAIRO_ANTIALIAS_FAST,
		CAIRO_ANTIALIAS_GOOD,
		CAIRO_ANTIALIAS_BEST
	}
	public enum cairo_fill_rule_t : c_int
	{
		CAIRO_FILL_RULE_WINDING,
		CAIRO_FILL_RULE_EVEN_ODD
	}
	public enum cairo_line_cap_t : c_int
	{
		CAIRO_LINE_CAP_BUTT,
		CAIRO_LINE_CAP_ROUND,
		CAIRO_LINE_CAP_SQUARE
	}
	public enum cairo_line_join_t : c_int
	{
		CAIRO_LINE_JOIN_MITER,
		CAIRO_LINE_JOIN_ROUND,
		CAIRO_LINE_JOIN_BEVEL
	}
	public enum cairo_text_cluster_flags_t : c_int
	{
		CAIRO_TEXT_CLUSTER_FLAG_BACKWARD
	}
	public enum cairo_font_slant_t : c_int
	{
		CAIRO_FONT_SLANT_NORMAL,
		CAIRO_FONT_SLANT_ITALIC,
		CAIRO_FONT_SLANT_OBLIQUE
	}
	public enum cairo_font_weight_t : c_int
	{
		CAIRO_FONT_WEIGHT_NORMAL,
		CAIRO_FONT_WEIGHT_BOLD
	}
	public enum cairo_subpixel_order_t : c_int
	{
		CAIRO_SUBPIXEL_ORDER_DEFAULT,
		CAIRO_SUBPIXEL_ORDER_RGB,
		CAIRO_SUBPIXEL_ORDER_BGR,
		CAIRO_SUBPIXEL_ORDER_VRGB,
		CAIRO_SUBPIXEL_ORDER_VBGR
	}
	public enum cairo_hint_style_t : c_int
	{
		CAIRO_HINT_STYLE_DEFAULT,
		CAIRO_HINT_STYLE_NONE,
		CAIRO_HINT_STYLE_SLIGHT,
		CAIRO_HINT_STYLE_MEDIUM,
		CAIRO_HINT_STYLE_FULL
	}
	public enum cairo_hint_metrics_t : c_int
	{
		CAIRO_HINT_METRICS_DEFAULT,
		CAIRO_HINT_METRICS_OFF,
		CAIRO_HINT_METRICS_ON
	}
	[CRepr]
	public struct cairo_font_options_t
	{
	}
	public enum cairo_font_type_t : c_int
	{
		CAIRO_FONT_TYPE_TOY,
		CAIRO_FONT_TYPE_FT,
		CAIRO_FONT_TYPE_WIN32,
		CAIRO_FONT_TYPE_QUARTZ,
		CAIRO_FONT_TYPE_USER
	}
	public enum cairo_path_data_type_t : c_int
	{
		CAIRO_PATH_MOVE_TO,
		CAIRO_PATH_LINE_TO,
		CAIRO_PATH_CURVE_TO,
		CAIRO_PATH_CLOSE_PATH
	}
	public enum cairo_device_type_t : c_int
	{
		CAIRO_DEVICE_TYPE_DRM,
		CAIRO_DEVICE_TYPE_GL,
		CAIRO_DEVICE_TYPE_SCRIPT,
		CAIRO_DEVICE_TYPE_XCB,
		CAIRO_DEVICE_TYPE_XLIB,
		CAIRO_DEVICE_TYPE_XML,
		CAIRO_DEVICE_TYPE_COGL,
		CAIRO_DEVICE_TYPE_WIN32,
		CAIRO_DEVICE_TYPE_INVALID
	}
	public enum cairo_surface_type_t : c_int
	{
		CAIRO_SURFACE_TYPE_IMAGE,
		CAIRO_SURFACE_TYPE_PDF,
		CAIRO_SURFACE_TYPE_PS,
		CAIRO_SURFACE_TYPE_XLIB,
		CAIRO_SURFACE_TYPE_XCB,
		CAIRO_SURFACE_TYPE_GLITZ,
		CAIRO_SURFACE_TYPE_QUARTZ,
		CAIRO_SURFACE_TYPE_WIN32,
		CAIRO_SURFACE_TYPE_BEOS,
		CAIRO_SURFACE_TYPE_DIRECTFB,
		CAIRO_SURFACE_TYPE_SVG,
		CAIRO_SURFACE_TYPE_OS2,
		CAIRO_SURFACE_TYPE_WIN32_PRINTING,
		CAIRO_SURFACE_TYPE_QUARTZ_IMAGE,
		CAIRO_SURFACE_TYPE_SCRIPT,
		CAIRO_SURFACE_TYPE_QT,
		CAIRO_SURFACE_TYPE_RECORDING,
		CAIRO_SURFACE_TYPE_VG,
		CAIRO_SURFACE_TYPE_GL,
		CAIRO_SURFACE_TYPE_DRM,
		CAIRO_SURFACE_TYPE_TEE,
		CAIRO_SURFACE_TYPE_XML,
		CAIRO_SURFACE_TYPE_SKIA,
		CAIRO_SURFACE_TYPE_SUBSURFACE,
		CAIRO_SURFACE_TYPE_COGL
	}
	public enum cairo_format_t : c_int
	{
		CAIRO_FORMAT_INVALID,
		CAIRO_FORMAT_ARGB32,
		CAIRO_FORMAT_RGB24,
		CAIRO_FORMAT_A8,
		CAIRO_FORMAT_A1,
		CAIRO_FORMAT_RGB16_565,
		CAIRO_FORMAT_RGB30
	}
	public enum cairo_pattern_type_t : c_int
	{
		CAIRO_PATTERN_TYPE_SOLID,
		CAIRO_PATTERN_TYPE_SURFACE,
		CAIRO_PATTERN_TYPE_LINEAR,
		CAIRO_PATTERN_TYPE_RADIAL,
		CAIRO_PATTERN_TYPE_MESH,
		CAIRO_PATTERN_TYPE_RASTER_SOURCE
	}
	public enum cairo_extend_t : c_int
	{
		CAIRO_EXTEND_NONE,
		CAIRO_EXTEND_REPEAT,
		CAIRO_EXTEND_REFLECT,
		CAIRO_EXTEND_PAD
	}
	public enum cairo_filter_t : c_int
	{
		CAIRO_FILTER_FAST,
		CAIRO_FILTER_GOOD,
		CAIRO_FILTER_BEST,
		CAIRO_FILTER_NEAREST,
		CAIRO_FILTER_BILINEAR,
		CAIRO_FILTER_GAUSSIAN
	}
	public enum cairo_region_overlap_t : c_int
	{
		CAIRO_REGION_OVERLAP_IN,
		CAIRO_REGION_OVERLAP_OUT,
		CAIRO_REGION_OVERLAP_PART
	}
	[CRepr]
	public struct cairo_font_face_t
	{
	}
	[CRepr]
	public struct cairo_scaled_font_t
	{
	}
	[CRepr]
	public struct cairo_path_t
	{
	}
	[CRepr]
	public struct cairo_rectangle_t
	{
		double x;
		double y;
		double width;
		double height;
	}
	[CRepr]
	public struct cairo_rectangle_int_t
	{
		c_int x;
		c_int y;
		c_int width;
		c_int height;
	}
}