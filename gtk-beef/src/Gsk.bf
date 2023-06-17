namespace Gsk;

using System;
using System.Interop;

using static Gio.Gio;
using static GLib.GLib;
using static GObject.GObject;
using static Gdk.Gdk;
using static Graphene.Graphene;
using static Pango.Pango;
using static Cairo.Cairo;

class Gsk
{
	public enum GskBlendMode : c_int
	{
		GSK_BLEND_MODE_DEFAULT,
		GSK_BLEND_MODE_MULTIPLY,
		GSK_BLEND_MODE_SCREEN,
		GSK_BLEND_MODE_OVERLAY,
		GSK_BLEND_MODE_DARKEN,
		GSK_BLEND_MODE_LIGHTEN,
		GSK_BLEND_MODE_COLOR_DODGE,
		GSK_BLEND_MODE_COLOR_BURN,
		GSK_BLEND_MODE_HARD_LIGHT,
		GSK_BLEND_MODE_SOFT_LIGHT,
		GSK_BLEND_MODE_DIFFERENCE,
		GSK_BLEND_MODE_EXCLUSION,
		GSK_BLEND_MODE_COLOR,
		GSK_BLEND_MODE_HUE,
		GSK_BLEND_MODE_SATURATION,
		GSK_BLEND_MODE_LUMINOSITY
	}
	[CRepr]
	public struct GskBlendNode;
	[LinkName("gsk_blend_node_new")]
	public static extern GskRenderNode* blend_node_new(GskRenderNode* bottom, GskRenderNode* top, GskBlendMode blend_mode);
	[LinkName("gsk_blend_node_get_blend_mode")]
	public static extern GskBlendMode blend_node_get_blend_mode( GskRenderNode* node);
	[LinkName("gsk_blend_node_get_bottom_child")]
	public static extern GskRenderNode* blend_node_get_bottom_child( GskRenderNode* node);
	[LinkName("gsk_blend_node_get_top_child")]
	public static extern GskRenderNode* blend_node_get_top_child( GskRenderNode* node);
	[CRepr]
	public struct GskBlurNode;
	[LinkName("gsk_blur_node_new")]
	public static extern GskRenderNode* blur_node_new(GskRenderNode* child, float radius);
	[LinkName("gsk_blur_node_get_child")]
	public static extern GskRenderNode* blur_node_get_child( GskRenderNode* node);
	[LinkName("gsk_blur_node_get_radius")]
	public static extern float blur_node_get_radius( GskRenderNode* node);
	[CRepr]
	public struct GskBorderNode;
	[LinkName("gsk_border_node_new")]
	public static extern GskRenderNode* border_node_new( GskRoundedRect* outline);
	[LinkName("gsk_border_node_get_colors")]
	public static extern  GdkRGBA* border_node_get_colors( GskRenderNode* node);
	[LinkName("gsk_border_node_get_outline")]
	public static extern  GskRoundedRect* border_node_get_outline( GskRenderNode* node);
	[LinkName("gsk_border_node_get_widths")]
	public static extern  float* border_node_get_widths( GskRenderNode* node);
	[CRepr]
	public struct GskCairoNode;
	[LinkName("gsk_cairo_node_new")]
	public static extern GskRenderNode* cairo_node_new( graphene_rect_t* bounds);
	[LinkName("gsk_cairo_node_get_draw_context")]
	public static extern cairo_t* cairo_node_get_draw_context(GskRenderNode* node);
	[LinkName("gsk_cairo_node_get_surface")]
	public static extern cairo_surface_t* cairo_node_get_surface(GskRenderNode* node);
	[CRepr]
	public struct GskCairoRenderer;
	[LinkName("gsk_cairo_renderer_new")]
	public static extern GskRenderer* cairo_renderer_new();
	[CRepr]
	public struct GskCairoRendererClass
	{
	}
	[CRepr]
	public struct GskClipNode;
	[LinkName("gsk_clip_node_new")]
	public static extern GskRenderNode* clip_node_new(GskRenderNode* child,  graphene_rect_t* clip);
	[LinkName("gsk_clip_node_get_child")]
	public static extern GskRenderNode* clip_node_get_child( GskRenderNode* node);
	[LinkName("gsk_clip_node_get_clip")]
	public static extern  graphene_rect_t* clip_node_get_clip( GskRenderNode* node);
	[CRepr]
	public struct GskColorMatrixNode;
	[LinkName("gsk_color_matrix_node_new")]
	public static extern GskRenderNode* color_matrix_node_new(GskRenderNode* child,  graphene_matrix_t* color_matrix,  graphene_vec4_t* color_offset);
	[LinkName("gsk_color_matrix_node_get_child")]
	public static extern GskRenderNode* color_matrix_node_get_child( GskRenderNode* node);
	[LinkName("gsk_color_matrix_node_get_color_matrix")]
	public static extern  graphene_matrix_t* color_matrix_node_get_color_matrix( GskRenderNode* node);
	[LinkName("gsk_color_matrix_node_get_color_offset")]
	public static extern  graphene_vec4_t* color_matrix_node_get_color_offset( GskRenderNode* node);
	[CRepr]
	public struct GskColorNode;
	[LinkName("gsk_color_node_new")]
	public static extern GskRenderNode* color_node_new( GdkRGBA* rgba,  graphene_rect_t* bounds);
	[LinkName("gsk_color_node_get_color")]
	public static extern  GdkRGBA* color_node_get_color( GskRenderNode* node);
	[CRepr]
	public struct GskColorStop
	{
		float offset;
		GdkRGBA color;
	}
	[CRepr]
	public struct GskConicGradientNode;
	[LinkName("gsk_conic_gradient_node_new")]
	public static extern GskRenderNode* conic_gradient_node_new( graphene_rect_t* bounds,  graphene_point_t* center, float rotation, c_ulong n_color_stops);
	[LinkName("gsk_conic_gradient_node_get_angle")]
	public static extern float conic_gradient_node_get_angle( GskRenderNode* node);
	[LinkName("gsk_conic_gradient_node_get_center")]
	public static extern  graphene_point_t* conic_gradient_node_get_center( GskRenderNode* node);
	[LinkName("gsk_conic_gradient_node_get_color_stops")]
	public static extern  GskColorStop* conic_gradient_node_get_color_stops( GskRenderNode* node, c_ulong* n_stops);
	[LinkName("gsk_conic_gradient_node_get_n_color_stops")]
	public static extern c_ulong conic_gradient_node_get_n_color_stops( GskRenderNode* node);
	[LinkName("gsk_conic_gradient_node_get_rotation")]
	public static extern float conic_gradient_node_get_rotation( GskRenderNode* node);
	[CRepr]
	public struct GskContainerNode;
	[LinkName("gsk_container_node_new")]
	public static extern GskRenderNode* container_node_new(c_uint n_children);
	[LinkName("gsk_container_node_get_child")]
	public static extern GskRenderNode* container_node_get_child( GskRenderNode* node, c_uint idx);
	[LinkName("gsk_container_node_get_n_children")]
	public static extern c_uint container_node_get_n_children( GskRenderNode* node);
	public enum GskCorner : c_int
	{
		GSK_CORNER_TOP_LEFT,
		GSK_CORNER_TOP_RIGHT,
		GSK_CORNER_BOTTOM_RIGHT,
		GSK_CORNER_BOTTOM_LEFT
	}
	[CRepr]
	public struct GskCrossFadeNode;
	[LinkName("gsk_cross_fade_node_new")]
	public static extern GskRenderNode* cross_fade_node_new(GskRenderNode* start, GskRenderNode* end, float progress);
	[LinkName("gsk_cross_fade_node_get_end_child")]
	public static extern GskRenderNode* cross_fade_node_get_end_child( GskRenderNode* node);
	[LinkName("gsk_cross_fade_node_get_progress")]
	public static extern float cross_fade_node_get_progress( GskRenderNode* node);
	[LinkName("gsk_cross_fade_node_get_start_child")]
	public static extern GskRenderNode* cross_fade_node_get_start_child( GskRenderNode* node);
	[CRepr]
	public struct GskDebugNode;
	[LinkName("gsk_debug_node_new")]
	public static extern GskRenderNode* debug_node_new(GskRenderNode* child, c_char* message);
	[LinkName("gsk_debug_node_get_child")]
	public static extern GskRenderNode* debug_node_get_child( GskRenderNode* node);
	[LinkName("gsk_debug_node_get_message")]
	public static extern  c_char* debug_node_get_message( GskRenderNode* node);
	[CRepr]
	public struct GskGLRenderer;
	[LinkName("gsk_gl_renderer_new")]
	public static extern GskRenderer* gl_renderer_new();
	[CRepr]
	public struct GskGLRendererClass
	{
	}
	[CRepr]
	public struct GskGLShader;
	[LinkName("gsk_gl_shader_new_from_bytes")]
	public static extern GskGLShader* gl_shader_new_from_bytes(GBytes* sourcecode);
	[LinkName("gsk_gl_shader_new_from_resource")]
	public static extern GskGLShader* gl_shader_new_from_resource( c_char* resource_path);
	[LinkName("gsk_gl_shader_compile")]
	public static extern c_int gl_shader_compile(GskGLShader* shader, GskRenderer* renderer);
	[LinkName("gsk_gl_shader_find_uniform_by_name")]
	public static extern c_int gl_shader_find_uniform_by_name(GskGLShader* shader,  c_char* name);
	[LinkName("gsk_gl_shader_format_args")]
	public static extern GBytes* gl_shader_format_args(GskGLShader* shader);
	[LinkName("gsk_gl_shader_format_args_va")]
	public static extern GBytes* gl_shader_format_args_va(GskGLShader* shader, VarArgs uniforms);
	[LinkName("gsk_gl_shader_get_arg_bool")]
	public static extern c_int gl_shader_get_arg_bool(GskGLShader* shader, GBytes* args, c_int idx);
	[LinkName("gsk_gl_shader_get_arg_float")]
	public static extern float gl_shader_get_arg_float(GskGLShader* shader, GBytes* args, c_int idx);
	[LinkName("gsk_gl_shader_get_arg_int")]
	public static extern c_int gl_shader_get_arg_int(GskGLShader* shader, GBytes* args, c_int idx);
	[LinkName("gsk_gl_shader_get_arg_uint")]
	public static extern c_uint gl_shader_get_arg_uint(GskGLShader* shader, GBytes* args, c_int idx);
	[LinkName("gsk_gl_shader_get_arg_vec2")]
	public static extern void gl_shader_get_arg_vec2(GskGLShader* shader, GBytes* args, c_int idx, graphene_vec2_t* out_value);
	[LinkName("gsk_gl_shader_get_arg_vec3")]
	public static extern void gl_shader_get_arg_vec3(GskGLShader* shader, GBytes* args, c_int idx, graphene_vec3_t* out_value);
	[LinkName("gsk_gl_shader_get_arg_vec4")]
	public static extern void gl_shader_get_arg_vec4(GskGLShader* shader, GBytes* args, c_int idx, graphene_vec4_t* out_value);
	[LinkName("gsk_gl_shader_get_args_size")]
	public static extern c_ulong gl_shader_get_args_size(GskGLShader* shader);
	[LinkName("gsk_gl_shader_get_n_textures")]
	public static extern c_int gl_shader_get_n_textures(GskGLShader* shader);
	[LinkName("gsk_gl_shader_get_n_uniforms")]
	public static extern c_int gl_shader_get_n_uniforms(GskGLShader* shader);
	[LinkName("gsk_gl_shader_get_resource")]
	public static extern  c_char* gl_shader_get_resource(GskGLShader* shader);
	[LinkName("gsk_gl_shader_get_source")]
	public static extern GBytes* gl_shader_get_source(GskGLShader* shader);
	[LinkName("gsk_gl_shader_get_uniform_name")]
	public static extern  c_char* gl_shader_get_uniform_name(GskGLShader* shader, c_int idx);
	[LinkName("gsk_gl_shader_get_uniform_offset")]
	public static extern c_int gl_shader_get_uniform_offset(GskGLShader* shader, c_int idx);
	[LinkName("gsk_gl_shader_get_uniform_type")]
	public static extern GskGLUniformType gl_shader_get_uniform_type(GskGLShader* shader, c_int idx);
	[CRepr]
	public struct GskGLShaderClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GskGLShaderNode;
	[LinkName("gsk_gl_shader_node_new")]
	public static extern GskRenderNode* gl_shader_node_new(GskGLShader* shader,  graphene_rect_t* bounds, GBytes* args, c_uint n_children);
	[LinkName("gsk_gl_shader_node_get_args")]
	public static extern GBytes* gl_shader_node_get_args( GskRenderNode* node);
	[LinkName("gsk_gl_shader_node_get_child")]
	public static extern GskRenderNode* gl_shader_node_get_child( GskRenderNode* node, c_uint idx);
	[LinkName("gsk_gl_shader_node_get_n_children")]
	public static extern c_uint gl_shader_node_get_n_children( GskRenderNode* node);
	[LinkName("gsk_gl_shader_node_get_shader")]
	public static extern GskGLShader* gl_shader_node_get_shader( GskRenderNode* node);
	public enum GskGLUniformType : c_int
	{
		GSK_GL_UNIFORM_TYPE_NONE,
		GSK_GL_UNIFORM_TYPE_FLOAT,
		GSK_GL_UNIFORM_TYPE_INT,
		GSK_GL_UNIFORM_TYPE_UINT,
		GSK_GL_UNIFORM_TYPE_BOOL,
		GSK_GL_UNIFORM_TYPE_VEC2,
		GSK_GL_UNIFORM_TYPE_VEC3,
		GSK_GL_UNIFORM_TYPE_VEC4
	}
	[CRepr]
	public struct GskInsetShadowNode;
	[LinkName("gsk_inset_shadow_node_new")]
	public static extern GskRenderNode* inset_shadow_node_new( GskRoundedRect* outline,  GdkRGBA* color, float dx, float dy, float spread, float blur_radius);
	[LinkName("gsk_inset_shadow_node_get_blur_radius")]
	public static extern float inset_shadow_node_get_blur_radius( GskRenderNode* node);
	[LinkName("gsk_inset_shadow_node_get_color")]
	public static extern  GdkRGBA* inset_shadow_node_get_color( GskRenderNode* node);
	[LinkName("gsk_inset_shadow_node_get_dx")]
	public static extern float inset_shadow_node_get_dx( GskRenderNode* node);
	[LinkName("gsk_inset_shadow_node_get_dy")]
	public static extern float inset_shadow_node_get_dy( GskRenderNode* node);
	[LinkName("gsk_inset_shadow_node_get_outline")]
	public static extern  GskRoundedRect* inset_shadow_node_get_outline( GskRenderNode* node);
	[LinkName("gsk_inset_shadow_node_get_spread")]
	public static extern float inset_shadow_node_get_spread( GskRenderNode* node);
	[CRepr]
	public struct GskLinearGradientNode;
	[LinkName("gsk_linear_gradient_node_new")]
	public static extern GskRenderNode* linear_gradient_node_new( graphene_rect_t* bounds,  graphene_point_t* start,  graphene_point_t* end, c_ulong n_color_stops);
	[LinkName("gsk_linear_gradient_node_get_color_stops")]
	public static extern  GskColorStop* linear_gradient_node_get_color_stops( GskRenderNode* node, c_ulong* n_stops);
	[LinkName("gsk_linear_gradient_node_get_end")]
	public static extern  graphene_point_t* linear_gradient_node_get_end( GskRenderNode* node);
	[LinkName("gsk_linear_gradient_node_get_n_color_stops")]
	public static extern c_ulong linear_gradient_node_get_n_color_stops( GskRenderNode* node);
	[LinkName("gsk_linear_gradient_node_get_start")]
	public static extern  graphene_point_t* linear_gradient_node_get_start( GskRenderNode* node);
	public enum GskMaskMode : c_int
	{
		GSK_MASK_MODE_ALPHA,
		GSK_MASK_MODE_INVERTED_ALPHA,
		GSK_MASK_MODE_LUMINANCE,
		GSK_MASK_MODE_INVERTED_LUMINANCE
	}
	[CRepr]
	public struct GskMaskNode;
	[LinkName("gsk_mask_node_new")]
	public static extern GskRenderNode* mask_node_new(GskRenderNode* source, GskRenderNode* mask, GskMaskMode mask_mode);
	[LinkName("gsk_mask_node_get_mask")]
	public static extern GskRenderNode* mask_node_get_mask( GskRenderNode* node);
	[LinkName("gsk_mask_node_get_mask_mode")]
	public static extern GskMaskMode mask_node_get_mask_mode( GskRenderNode* node);
	[LinkName("gsk_mask_node_get_source")]
	public static extern GskRenderNode* mask_node_get_source( GskRenderNode* node);
	[CRepr]
	public struct GskNglRenderer;
	[LinkName("gsk_ngl_renderer_new")]
	public static extern GskRenderer* ngl_renderer_new();
	[CRepr]
	public struct GskOpacityNode;
	[LinkName("gsk_opacity_node_new")]
	public static extern GskRenderNode* opacity_node_new(GskRenderNode* child, float opacity);
	[LinkName("gsk_opacity_node_get_child")]
	public static extern GskRenderNode* opacity_node_get_child( GskRenderNode* node);
	[LinkName("gsk_opacity_node_get_opacity")]
	public static extern float opacity_node_get_opacity( GskRenderNode* node);
	[CRepr]
	public struct GskOutsetShadowNode;
	[LinkName("gsk_outset_shadow_node_new")]
	public static extern GskRenderNode* outset_shadow_node_new( GskRoundedRect* outline,  GdkRGBA* color, float dx, float dy, float spread, float blur_radius);
	[LinkName("gsk_outset_shadow_node_get_blur_radius")]
	public static extern float outset_shadow_node_get_blur_radius( GskRenderNode* node);
	[LinkName("gsk_outset_shadow_node_get_color")]
	public static extern  GdkRGBA* outset_shadow_node_get_color( GskRenderNode* node);
	[LinkName("gsk_outset_shadow_node_get_dx")]
	public static extern float outset_shadow_node_get_dx( GskRenderNode* node);
	[LinkName("gsk_outset_shadow_node_get_dy")]
	public static extern float outset_shadow_node_get_dy( GskRenderNode* node);
	[LinkName("gsk_outset_shadow_node_get_outline")]
	public static extern  GskRoundedRect* outset_shadow_node_get_outline( GskRenderNode* node);
	[LinkName("gsk_outset_shadow_node_get_spread")]
	public static extern float outset_shadow_node_get_spread( GskRenderNode* node);
	public function void GskParseErrorFunc( GskParseLocation* start,  GskParseLocation* end,  GError* error, void* user_data);
	[CRepr]
	public struct GskParseLocation
	{
		c_ulong bytes;
		c_ulong chars;
		c_ulong lines;
		c_ulong line_bytes;
		c_ulong line_chars;
	}
	[CRepr]
	public struct GskRadialGradientNode;
	[LinkName("gsk_radial_gradient_node_new")]
	public static extern GskRenderNode* radial_gradient_node_new( graphene_rect_t* bounds,  graphene_point_t* center, float hradius, float vradius, float start, float end, c_ulong n_color_stops);
	[LinkName("gsk_radial_gradient_node_get_center")]
	public static extern  graphene_point_t* radial_gradient_node_get_center( GskRenderNode* node);
	[LinkName("gsk_radial_gradient_node_get_color_stops")]
	public static extern  GskColorStop* radial_gradient_node_get_color_stops( GskRenderNode* node, c_ulong* n_stops);
	[LinkName("gsk_radial_gradient_node_get_end")]
	public static extern float radial_gradient_node_get_end( GskRenderNode* node);
	[LinkName("gsk_radial_gradient_node_get_hradius")]
	public static extern float radial_gradient_node_get_hradius( GskRenderNode* node);
	[LinkName("gsk_radial_gradient_node_get_n_color_stops")]
	public static extern c_ulong radial_gradient_node_get_n_color_stops( GskRenderNode* node);
	[LinkName("gsk_radial_gradient_node_get_start")]
	public static extern float radial_gradient_node_get_start( GskRenderNode* node);
	[LinkName("gsk_radial_gradient_node_get_vradius")]
	public static extern float radial_gradient_node_get_vradius( GskRenderNode* node);
	[CRepr]
	public struct GskRenderNode;
	[LinkName("gsk_render_node_draw")]
	public static extern void render_node_draw(GskRenderNode* node, cairo_t* cr);
	[LinkName("gsk_render_node_get_bounds")]
	public static extern void render_node_get_bounds(GskRenderNode* node, graphene_rect_t* bounds);
	[LinkName("gsk_render_node_get_node_type")]
	public static extern GskRenderNodeType render_node_get_node_type( GskRenderNode* node);
	[LinkName("gsk_render_node_ref")]
	public static extern GskRenderNode* render_node_ref(GskRenderNode* node);
	[LinkName("gsk_render_node_serialize")]
	public static extern GBytes* render_node_serialize(GskRenderNode* node);
	[LinkName("gsk_render_node_unref")]
	public static extern void render_node_unref(GskRenderNode* node);
	[LinkName("gsk_render_node_write_to_file")]
	public static extern c_int render_node_write_to_file(GskRenderNode* node,  c_char* filename);
	public enum GskRenderNodeType : c_int
	{
		GSK_NOT_A_RENDER_NODE,
		GSK_CONTAINER_NODE,
		GSK_CAIRO_NODE,
		GSK_COLOR_NODE,
		GSK_LINEAR_GRADIENT_NODE,
		GSK_REPEATING_LINEAR_GRADIENT_NODE,
		GSK_RADIAL_GRADIENT_NODE,
		GSK_REPEATING_RADIAL_GRADIENT_NODE,
		GSK_CONIC_GRADIENT_NODE,
		GSK_BORDER_NODE,
		GSK_TEXTURE_NODE,
		GSK_INSET_SHADOW_NODE,
		GSK_OUTSET_SHADOW_NODE,
		GSK_TRANSFORM_NODE,
		GSK_OPACITY_NODE,
		GSK_COLOR_MATRIX_NODE,
		GSK_REPEAT_NODE,
		GSK_CLIP_NODE,
		GSK_ROUNDED_CLIP_NODE,
		GSK_SHADOW_NODE,
		GSK_BLEND_NODE,
		GSK_CROSS_FADE_NODE,
		GSK_TEXT_NODE,
		GSK_BLUR_NODE,
		GSK_DEBUG_NODE,
		GSK_GL_SHADER_NODE,
		GSK_TEXTURE_SCALE_NODE,
		GSK_MASK_NODE
	}
	[CRepr]
	public struct GskRenderer;
	[LinkName("gsk_renderer_new_for_surface")]
	public static extern GskRenderer* renderer_new_for_surface(GdkSurface* surface);
	[LinkName("gsk_renderer_get_surface")]
	public static extern GdkSurface* renderer_get_surface(GskRenderer* renderer);
	[LinkName("gsk_renderer_is_realized")]
	public static extern c_int renderer_is_realized(GskRenderer* renderer);
	[LinkName("gsk_renderer_realize")]
	public static extern c_int renderer_realize(GskRenderer* renderer, GdkSurface* surface);
	[LinkName("gsk_renderer_render")]
	public static extern void renderer_render(GskRenderer* renderer, GskRenderNode* root,  cairo_region_t* region);
	[LinkName("gsk_renderer_render_texture")]
	public static extern GdkTexture* renderer_render_texture(GskRenderer* renderer, GskRenderNode* root,  graphene_rect_t* viewport);
	[LinkName("gsk_renderer_unrealize")]
	public static extern void renderer_unrealize(GskRenderer* renderer);
	[CRepr]
	public struct GskRendererClass
	{
	}
	[CRepr]
	public struct GskRepeatNode;
	[LinkName("gsk_repeat_node_new")]
	public static extern GskRenderNode* repeat_node_new( graphene_rect_t* bounds, GskRenderNode* child,  graphene_rect_t* child_bounds);
	[LinkName("gsk_repeat_node_get_child")]
	public static extern GskRenderNode* repeat_node_get_child( GskRenderNode* node);
	[LinkName("gsk_repeat_node_get_child_bounds")]
	public static extern  graphene_rect_t* repeat_node_get_child_bounds( GskRenderNode* node);
	[CRepr]
	public struct GskRepeatingLinearGradientNode;
	[LinkName("gsk_repeating_linear_gradient_node_new")]
	public static extern GskRenderNode* repeating_linear_gradient_node_new( graphene_rect_t* bounds,  graphene_point_t* start,  graphene_point_t* end, c_ulong n_color_stops);
	[CRepr]
	public struct GskRepeatingRadialGradientNode;
	[LinkName("gsk_repeating_radial_gradient_node_new")]
	public static extern GskRenderNode* repeating_radial_gradient_node_new( graphene_rect_t* bounds,  graphene_point_t* center, float hradius, float vradius, float start, float end, c_ulong n_color_stops);
	[CRepr]
	public struct GskRoundedClipNode;
	[LinkName("gsk_rounded_clip_node_new")]
	public static extern GskRenderNode* rounded_clip_node_new(GskRenderNode* child,  GskRoundedRect* clip);
	[LinkName("gsk_rounded_clip_node_get_child")]
	public static extern GskRenderNode* rounded_clip_node_get_child( GskRenderNode* node);
	[LinkName("gsk_rounded_clip_node_get_clip")]
	public static extern  GskRoundedRect* rounded_clip_node_get_clip( GskRenderNode* node);
	[CRepr]
	public struct GskRoundedRect
	{
		graphene_rect_t bounds;
	}
	public enum GskScalingFilter : c_int
	{
		GSK_SCALING_FILTER_LINEAR,
		GSK_SCALING_FILTER_NEAREST,
		GSK_SCALING_FILTER_TRILINEAR
	}
	public enum GskSerializationError : c_int
	{
		GSK_SERIALIZATION_UNSUPPORTED_FORMAT,
		GSK_SERIALIZATION_UNSUPPORTED_VERSION,
		GSK_SERIALIZATION_INVALID_DATA
	}
	[CRepr]
	public struct GskShaderArgsBuilder
	{
	}
	[CRepr]
	public struct GskShadow
	{
		GdkRGBA color;
		float dx;
		float dy;
		float radius;
	}
	[CRepr]
	public struct GskShadowNode;
	[LinkName("gsk_shadow_node_new")]
	public static extern GskRenderNode* shadow_node_new(GskRenderNode* child, c_ulong n_shadows);
	[LinkName("gsk_shadow_node_get_child")]
	public static extern GskRenderNode* shadow_node_get_child( GskRenderNode* node);
	[LinkName("gsk_shadow_node_get_n_shadows")]
	public static extern c_ulong shadow_node_get_n_shadows( GskRenderNode* node);
	[LinkName("gsk_shadow_node_get_shadow")]
	public static extern  GskShadow* shadow_node_get_shadow( GskRenderNode* node, c_ulong i);
	[CRepr]
	public struct GskTextNode;
	[LinkName("gsk_text_node_new")]
	public static extern GskRenderNode* text_node_new(PangoFont* font, PangoGlyphString* glyphs,  GdkRGBA* color,  graphene_point_t* offset);
	[LinkName("gsk_text_node_get_color")]
	public static extern  GdkRGBA* text_node_get_color( GskRenderNode* node);
	[LinkName("gsk_text_node_get_font")]
	public static extern PangoFont* text_node_get_font( GskRenderNode* node);
	[LinkName("gsk_text_node_get_glyphs")]
	public static extern  PangoGlyphInfo* text_node_get_glyphs( GskRenderNode* node, c_uint* n_glyphs);
	[LinkName("gsk_text_node_get_num_glyphs")]
	public static extern c_uint text_node_get_num_glyphs( GskRenderNode* node);
	[LinkName("gsk_text_node_get_offset")]
	public static extern  graphene_point_t* text_node_get_offset( GskRenderNode* node);
	[LinkName("gsk_text_node_has_color_glyphs")]
	public static extern c_int text_node_has_color_glyphs( GskRenderNode* node);
	[CRepr]
	public struct GskTextureNode;
	[LinkName("gsk_texture_node_new")]
	public static extern GskRenderNode* texture_node_new(GdkTexture* texture,  graphene_rect_t* bounds);
	[LinkName("gsk_texture_node_get_texture")]
	public static extern GdkTexture* texture_node_get_texture( GskRenderNode* node);
	[CRepr]
	public struct GskTextureScaleNode;
	[LinkName("gsk_texture_scale_node_new")]
	public static extern GskRenderNode* texture_scale_node_new(GdkTexture* texture,  graphene_rect_t* bounds, GskScalingFilter filter);
	[LinkName("gsk_texture_scale_node_get_filter")]
	public static extern GskScalingFilter texture_scale_node_get_filter( GskRenderNode* node);
	[LinkName("gsk_texture_scale_node_get_texture")]
	public static extern GdkTexture* texture_scale_node_get_texture( GskRenderNode* node);
	[CRepr]
	public struct GskTransform
	{
	}
	public enum GskTransformCategory : c_int
	{
		GSK_TRANSFORM_CATEGORY_UNKNOWN,
		GSK_TRANSFORM_CATEGORY_ANY,
		GSK_TRANSFORM_CATEGORY_3D,
		GSK_TRANSFORM_CATEGORY_2D,
		GSK_TRANSFORM_CATEGORY_2D_AFFINE,
		GSK_TRANSFORM_CATEGORY_2D_TRANSLATE,
		GSK_TRANSFORM_CATEGORY_IDENTITY
	}
	[CRepr]
	public struct GskTransformNode;
	[LinkName("gsk_transform_node_new")]
	public static extern GskRenderNode* transform_node_new(GskRenderNode* child, GskTransform* transform);
	[LinkName("gsk_transform_node_get_child")]
	public static extern GskRenderNode* transform_node_get_child( GskRenderNode* node);
	[LinkName("gsk_transform_node_get_transform")]
	public static extern GskTransform* transform_node_get_transform( GskRenderNode* node);
}