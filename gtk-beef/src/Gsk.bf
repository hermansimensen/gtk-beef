namespace Gsk;

using System;
using System.Interop;
using GLib;
using Graphene;
using GObject;
using Gdk;
using Pango;
using cairo;

class Gsk
{
	public enum BlendMode : c_int
	{
		default_ = 0,
		multiply = 1,
		screen = 2,
		overlay = 3,
		darken = 4,
		lighten = 5,
		color_dodge = 6,
		color_burn = 7,
		hard_light = 8,
		soft_light = 9,
		difference = 10,
		exclusion = 11,
		color = 12,
		hue = 13,
		saturation = 14,
		luminosity = 15
	}
	[CRepr]
	public struct BlendNode;
	[LinkName("gsk_blend_node_new")]
	public static extern BlendNode* BlendNodeNew(RenderNode* bottom, RenderNode* top, BlendMode blend_mode);
	[LinkName("gsk_blend_node_get_blend_mode")]
	public static extern BlendMode BlendNodeGetBlendMode(BlendNode* node);
	[LinkName("gsk_blend_node_get_bottom_child")]
	public static extern RenderNode* BlendNodeGetBottomChild(BlendNode* node);
	[LinkName("gsk_blend_node_get_top_child")]
	public static extern RenderNode* BlendNodeGetTopChild(BlendNode* node);
	[CRepr]
	public struct BlurNode;
	[LinkName("gsk_blur_node_new")]
	public static extern BlurNode* BlurNodeNew(RenderNode* child, float radius);
	[LinkName("gsk_blur_node_get_child")]
	public static extern RenderNode* BlurNodeGetChild(BlurNode* node);
	[LinkName("gsk_blur_node_get_radius")]
	public static extern float BlurNodeGetRadius(BlurNode* node);
	[CRepr]
	public struct BorderNode;
	[LinkName("gsk_border_node_new")]
	public static extern BorderNode* BorderNodeNew(RoundedRect* outline);
	[LinkName("gsk_border_node_get_colors")]
	public static extern Gdk.RGBA* BorderNodeGetColors(BorderNode* node);
	[LinkName("gsk_border_node_get_outline")]
	public static extern RoundedRect* BorderNodeGetOutline(BorderNode* node);
	[LinkName("gsk_border_node_get_widths")]
	public static extern float BorderNodeGetWidths(BorderNode* node);
	[CRepr]
	public struct CairoNode;
	[LinkName("gsk_cairo_node_new")]
	public static extern CairoNode* CairoNodeNew(Graphene.Rect* bounds);
	[LinkName("gsk_cairo_node_get_draw_context")]
	public static extern cairo.Context* CairoNodeGetDrawContext(CairoNode* node);
	[LinkName("gsk_cairo_node_get_surface")]
	public static extern cairo.Surface* CairoNodeGetSurface(CairoNode* node);
	[CRepr]
	public struct CairoRenderer;
	[LinkName("gsk_cairo_renderer_new")]
	public static extern Renderer* CairoRendererNew();
	[CRepr]
	public struct CairoRendererClass
	{
	}
	[CRepr]
	public struct ClipNode;
	[LinkName("gsk_clip_node_new")]
	public static extern ClipNode* ClipNodeNew(RenderNode* child, Graphene.Rect* clip);
	[LinkName("gsk_clip_node_get_child")]
	public static extern RenderNode* ClipNodeGetChild(ClipNode* node);
	[LinkName("gsk_clip_node_get_clip")]
	public static extern Graphene.Rect* ClipNodeGetClip(ClipNode* node);
	[CRepr]
	public struct ColorMatrixNode;
	[LinkName("gsk_color_matrix_node_new")]
	public static extern ColorMatrixNode* ColorMatrixNodeNew(RenderNode* child, Graphene.Matrix* color_matrix, Graphene.Vec4* color_offset);
	[LinkName("gsk_color_matrix_node_get_child")]
	public static extern RenderNode* ColorMatrixNodeGetChild(ColorMatrixNode* node);
	[LinkName("gsk_color_matrix_node_get_color_matrix")]
	public static extern Graphene.Matrix* ColorMatrixNodeGetColorMatrix(ColorMatrixNode* node);
	[LinkName("gsk_color_matrix_node_get_color_offset")]
	public static extern Graphene.Vec4* ColorMatrixNodeGetColorOffset(ColorMatrixNode* node);
	[CRepr]
	public struct ColorNode;
	[LinkName("gsk_color_node_new")]
	public static extern ColorNode* ColorNodeNew(Gdk.RGBA* rgba, Graphene.Rect* bounds);
	[LinkName("gsk_color_node_get_color")]
	public static extern Gdk.RGBA* ColorNodeGetColor(ColorNode* node);
	[CRepr]
	public struct ColorStop
	{
		float offset;
		Gdk.RGBA color;
	}
	[CRepr]
	public struct ConicGradientNode;
	[LinkName("gsk_conic_gradient_node_new")]
	public static extern ConicGradientNode* ConicGradientNodeNew(Graphene.Rect* bounds, Graphene.Point* center, float rotation, c_ulong n_color_stops);
	[LinkName("gsk_conic_gradient_node_get_angle")]
	public static extern float ConicGradientNodeGetAngle(ConicGradientNode* node);
	[LinkName("gsk_conic_gradient_node_get_center")]
	public static extern Graphene.Point* ConicGradientNodeGetCenter(ConicGradientNode* node);
	[LinkName("gsk_conic_gradient_node_get_color_stops")]
	public static extern ColorStop ConicGradientNodeGetColorStops(ConicGradientNode* node, c_ulong* n_stops);
	[LinkName("gsk_conic_gradient_node_get_n_color_stops")]
	public static extern c_ulong ConicGradientNodeGetNColorStops(ConicGradientNode* node);
	[LinkName("gsk_conic_gradient_node_get_rotation")]
	public static extern float ConicGradientNodeGetRotation(ConicGradientNode* node);
	[CRepr]
	public struct ContainerNode;
	[LinkName("gsk_container_node_new")]
	public static extern ContainerNode* ContainerNodeNew(c_uint n_children);
	[LinkName("gsk_container_node_get_child")]
	public static extern RenderNode* ContainerNodeGetChild(ContainerNode* node, c_uint idx);
	[LinkName("gsk_container_node_get_n_children")]
	public static extern c_uint ContainerNodeGetNChildren(ContainerNode* node);
	public enum Corner : c_int
	{
		top_left = 0,
		top_right = 1,
		bottom_right = 2,
		bottom_left = 3
	}
	[CRepr]
	public struct CrossFadeNode;
	[LinkName("gsk_cross_fade_node_new")]
	public static extern CrossFadeNode* CrossFadeNodeNew(RenderNode* start, RenderNode* end, float progress);
	[LinkName("gsk_cross_fade_node_get_end_child")]
	public static extern RenderNode* CrossFadeNodeGetEndChild(CrossFadeNode* node);
	[LinkName("gsk_cross_fade_node_get_progress")]
	public static extern float CrossFadeNodeGetProgress(CrossFadeNode* node);
	[LinkName("gsk_cross_fade_node_get_start_child")]
	public static extern RenderNode* CrossFadeNodeGetStartChild(CrossFadeNode* node);
	[CRepr]
	public struct DebugNode;
	[LinkName("gsk_debug_node_new")]
	public static extern DebugNode* DebugNodeNew(RenderNode* child, char8* message);
	[LinkName("gsk_debug_node_get_child")]
	public static extern RenderNode* DebugNodeGetChild(DebugNode* node);
	[LinkName("gsk_debug_node_get_message")]
	public static extern char8* DebugNodeGetMessage(DebugNode* node);
	[CRepr]
	public struct GLRenderer;
	[LinkName("gsk_gl_renderer_new")]
	public static extern Renderer* GlRendererNew();
	[CRepr]
	public struct GLRendererClass
	{
	}
	[CRepr]
	public struct GLShader;
	[LinkName("gsk_gl_shader_new_from_bytes")]
	public static extern GLShader* GlShaderNewFromBytes(GLib.Bytes* sourcecode);
	[LinkName("gsk_gl_shader_new_from_resource")]
	public static extern GLShader* GlShaderNewFromResource(char8* resource_path);
	[LinkName("gsk_gl_shader_compile")]
	public static extern c_int GlShaderCompile(GLShader* shader, Renderer* renderer);
	[LinkName("gsk_gl_shader_find_uniform_by_name")]
	public static extern c_int GlShaderFindUniformByName(GLShader* shader, char8* name);
	[LinkName("gsk_gl_shader_get_arg_bool")]
	public static extern c_int GlShaderGetArgBool(GLShader* shader, GLib.Bytes* args, c_int idx);
	[LinkName("gsk_gl_shader_get_arg_float")]
	public static extern float GlShaderGetArgFloat(GLShader* shader, GLib.Bytes* args, c_int idx);
	[LinkName("gsk_gl_shader_get_arg_int")]
	public static extern c_int GlShaderGetArgInt(GLShader* shader, GLib.Bytes* args, c_int idx);
	[LinkName("gsk_gl_shader_get_arg_uint")]
	public static extern c_uint GlShaderGetArgUint(GLShader* shader, GLib.Bytes* args, c_int idx);
	[LinkName("gsk_gl_shader_get_arg_vec2")]
	public static extern void GlShaderGetArgVec2(GLShader* shader, GLib.Bytes* args, c_int idx, Graphene.Vec2* out_value);
	[LinkName("gsk_gl_shader_get_arg_vec3")]
	public static extern void GlShaderGetArgVec3(GLShader* shader, GLib.Bytes* args, c_int idx, Graphene.Vec3* out_value);
	[LinkName("gsk_gl_shader_get_arg_vec4")]
	public static extern void GlShaderGetArgVec4(GLShader* shader, GLib.Bytes* args, c_int idx, Graphene.Vec4* out_value);
	[LinkName("gsk_gl_shader_get_args_size")]
	public static extern c_ulong GlShaderGetArgsSize(GLShader* shader);
	[LinkName("gsk_gl_shader_get_n_textures")]
	public static extern c_int GlShaderGetNTextures(GLShader* shader);
	[LinkName("gsk_gl_shader_get_n_uniforms")]
	public static extern c_int GlShaderGetNUniforms(GLShader* shader);
	[LinkName("gsk_gl_shader_get_resource")]
	public static extern char8* GlShaderGetResource(GLShader* shader);
	[LinkName("gsk_gl_shader_get_source")]
	public static extern GLib.Bytes* GlShaderGetSource(GLShader* shader);
	[LinkName("gsk_gl_shader_get_uniform_name")]
	public static extern char8* GlShaderGetUniformName(GLShader* shader, c_int idx);
	[LinkName("gsk_gl_shader_get_uniform_offset")]
	public static extern c_int GlShaderGetUniformOffset(GLShader* shader, c_int idx);
	[LinkName("gsk_gl_shader_get_uniform_type")]
	public static extern GLUniformType GlShaderGetUniformType(GLShader* shader, c_int idx);
	[CRepr]
	public struct GLShaderClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct GLShaderNode;
	[LinkName("gsk_gl_shader_node_new")]
	public static extern GLShaderNode* GlShaderNodeNew(GLShader* shader, Graphene.Rect* bounds, GLib.Bytes* args, c_uint n_children);
	[LinkName("gsk_gl_shader_node_get_args")]
	public static extern GLib.Bytes* GlShaderNodeGetArgs(GLShaderNode* node);
	[LinkName("gsk_gl_shader_node_get_child")]
	public static extern RenderNode* GlShaderNodeGetChild(GLShaderNode* node, c_uint idx);
	[LinkName("gsk_gl_shader_node_get_n_children")]
	public static extern c_uint GlShaderNodeGetNChildren(GLShaderNode* node);
	[LinkName("gsk_gl_shader_node_get_shader")]
	public static extern GLShader* GlShaderNodeGetShader(GLShaderNode* node);
	public enum GLUniformType : c_int
	{
		none = 0,
		float = 1,
		int = 2,
		uint = 3,
		bool = 4,
		vec2 = 5,
		vec3 = 6,
		vec4 = 7
	}
	[CRepr]
	public struct InsetShadowNode;
	[LinkName("gsk_inset_shadow_node_new")]
	public static extern InsetShadowNode* InsetShadowNodeNew(RoundedRect* outline, Gdk.RGBA* color, float dx, float dy, float spread, float blur_radius);
	[LinkName("gsk_inset_shadow_node_get_blur_radius")]
	public static extern float InsetShadowNodeGetBlurRadius(InsetShadowNode* node);
	[LinkName("gsk_inset_shadow_node_get_color")]
	public static extern Gdk.RGBA* InsetShadowNodeGetColor(InsetShadowNode* node);
	[LinkName("gsk_inset_shadow_node_get_dx")]
	public static extern float InsetShadowNodeGetDx(InsetShadowNode* node);
	[LinkName("gsk_inset_shadow_node_get_dy")]
	public static extern float InsetShadowNodeGetDy(InsetShadowNode* node);
	[LinkName("gsk_inset_shadow_node_get_outline")]
	public static extern RoundedRect* InsetShadowNodeGetOutline(InsetShadowNode* node);
	[LinkName("gsk_inset_shadow_node_get_spread")]
	public static extern float InsetShadowNodeGetSpread(InsetShadowNode* node);
	[CRepr]
	public struct LinearGradientNode;
	[LinkName("gsk_linear_gradient_node_new")]
	public static extern LinearGradientNode* LinearGradientNodeNew(Graphene.Rect* bounds, Graphene.Point* start, Graphene.Point* end, c_ulong n_color_stops);
	[LinkName("gsk_linear_gradient_node_get_color_stops")]
	public static extern ColorStop LinearGradientNodeGetColorStops(LinearGradientNode* node, c_ulong* n_stops);
	[LinkName("gsk_linear_gradient_node_get_end")]
	public static extern Graphene.Point* LinearGradientNodeGetEnd(LinearGradientNode* node);
	[LinkName("gsk_linear_gradient_node_get_n_color_stops")]
	public static extern c_ulong LinearGradientNodeGetNColorStops(LinearGradientNode* node);
	[LinkName("gsk_linear_gradient_node_get_start")]
	public static extern Graphene.Point* LinearGradientNodeGetStart(LinearGradientNode* node);
	public enum MaskMode : c_int
	{
		alpha = 0,
		inverted_alpha = 1,
		luminance = 2,
		inverted_luminance = 3
	}
	[CRepr]
	public struct MaskNode;
	[LinkName("gsk_mask_node_new")]
	public static extern MaskNode* MaskNodeNew(RenderNode* source, RenderNode* mask, MaskMode mask_mode);
	[LinkName("gsk_mask_node_get_mask")]
	public static extern RenderNode* MaskNodeGetMask(MaskNode* node);
	[LinkName("gsk_mask_node_get_mask_mode")]
	public static extern MaskMode MaskNodeGetMaskMode(MaskNode* node);
	[LinkName("gsk_mask_node_get_source")]
	public static extern RenderNode* MaskNodeGetSource(MaskNode* node);
	[CRepr]
	public struct NglRenderer;
	[LinkName("gsk_ngl_renderer_new")]
	public static extern Renderer* NglRendererNew();
	[CRepr]
	public struct OpacityNode;
	[LinkName("gsk_opacity_node_new")]
	public static extern OpacityNode* OpacityNodeNew(RenderNode* child, float opacity);
	[LinkName("gsk_opacity_node_get_child")]
	public static extern RenderNode* OpacityNodeGetChild(OpacityNode* node);
	[LinkName("gsk_opacity_node_get_opacity")]
	public static extern float OpacityNodeGetOpacity(OpacityNode* node);
	[CRepr]
	public struct OutsetShadowNode;
	[LinkName("gsk_outset_shadow_node_new")]
	public static extern OutsetShadowNode* OutsetShadowNodeNew(RoundedRect* outline, Gdk.RGBA* color, float dx, float dy, float spread, float blur_radius);
	[LinkName("gsk_outset_shadow_node_get_blur_radius")]
	public static extern float OutsetShadowNodeGetBlurRadius(OutsetShadowNode* node);
	[LinkName("gsk_outset_shadow_node_get_color")]
	public static extern Gdk.RGBA* OutsetShadowNodeGetColor(OutsetShadowNode* node);
	[LinkName("gsk_outset_shadow_node_get_dx")]
	public static extern float OutsetShadowNodeGetDx(OutsetShadowNode* node);
	[LinkName("gsk_outset_shadow_node_get_dy")]
	public static extern float OutsetShadowNodeGetDy(OutsetShadowNode* node);
	[LinkName("gsk_outset_shadow_node_get_outline")]
	public static extern RoundedRect* OutsetShadowNodeGetOutline(OutsetShadowNode* node);
	[LinkName("gsk_outset_shadow_node_get_spread")]
	public static extern float OutsetShadowNodeGetSpread(OutsetShadowNode* node);
	public function void ParseErrorFunc(ParseLocation start, ParseLocation end, GLib.Error error, void* user_data);
	[CRepr]
	public struct ParseLocation
	{
		c_ulong bytes;
		c_ulong chars;
		c_ulong lines;
		c_ulong line_bytes;
		c_ulong line_chars;
	}
	[CRepr]
	public struct RadialGradientNode;
	[LinkName("gsk_radial_gradient_node_new")]
	public static extern RadialGradientNode* RadialGradientNodeNew(Graphene.Rect* bounds, Graphene.Point* center, float hradius, float vradius, float start, float end, c_ulong n_color_stops);
	[LinkName("gsk_radial_gradient_node_get_center")]
	public static extern Graphene.Point* RadialGradientNodeGetCenter(RadialGradientNode* node);
	[LinkName("gsk_radial_gradient_node_get_color_stops")]
	public static extern ColorStop RadialGradientNodeGetColorStops(RadialGradientNode* node, c_ulong* n_stops);
	[LinkName("gsk_radial_gradient_node_get_end")]
	public static extern float RadialGradientNodeGetEnd(RadialGradientNode* node);
	[LinkName("gsk_radial_gradient_node_get_hradius")]
	public static extern float RadialGradientNodeGetHradius(RadialGradientNode* node);
	[LinkName("gsk_radial_gradient_node_get_n_color_stops")]
	public static extern c_ulong RadialGradientNodeGetNColorStops(RadialGradientNode* node);
	[LinkName("gsk_radial_gradient_node_get_start")]
	public static extern float RadialGradientNodeGetStart(RadialGradientNode* node);
	[LinkName("gsk_radial_gradient_node_get_vradius")]
	public static extern float RadialGradientNodeGetVradius(RadialGradientNode* node);
	[CRepr]
	public struct RenderNode;
	[LinkName("gsk_render_node_deserialize")]
	public static extern RenderNode* RenderNodeDeserialize(GLib.Bytes* bytes, ParseErrorFunc error_func, void* user_data);
	[LinkName("gsk_render_node_draw")]
	public static extern void RenderNodeDraw(RenderNode* node, cairo.Context* cr);
	[LinkName("gsk_render_node_get_bounds")]
	public static extern void RenderNodeGetBounds(RenderNode* node, Graphene.Rect* bounds);
	[LinkName("gsk_render_node_get_node_type")]
	public static extern RenderNodeType RenderNodeGetNodeType(RenderNode* node);
	[LinkName("gsk_render_node_ref")]
	public static extern RenderNode* RenderNodeRef(RenderNode* node);
	[LinkName("gsk_render_node_serialize")]
	public static extern GLib.Bytes* RenderNodeSerialize(RenderNode* node);
	[LinkName("gsk_render_node_unref")]
	public static extern void RenderNodeUnref(RenderNode* node);
	[LinkName("gsk_render_node_write_to_file")]
	public static extern c_int RenderNodeWriteToFile(RenderNode* node, char8* filename);
	public enum RenderNodeType : c_int
	{
		not_a_render_node = 0,
		container_node = 1,
		cairo_node = 2,
		color_node = 3,
		linear_gradient_node = 4,
		repeating_linear_gradient_node = 5,
		radial_gradient_node = 6,
		repeating_radial_gradient_node = 7,
		conic_gradient_node = 8,
		border_node = 9,
		texture_node = 10,
		inset_shadow_node = 11,
		outset_shadow_node = 12,
		transform_node = 13,
		opacity_node = 14,
		color_matrix_node = 15,
		repeat_node = 16,
		clip_node = 17,
		rounded_clip_node = 18,
		shadow_node = 19,
		blend_node = 20,
		cross_fade_node = 21,
		text_node = 22,
		blur_node = 23,
		debug_node = 24,
		gl_shader_node = 25,
		texture_scale_node = 26,
		mask_node = 27
	}
	[CRepr]
	public struct Renderer;
	[LinkName("gsk_renderer_new_for_surface")]
	public static extern Renderer* RendererNewForSurface(Gdk.Surface* surface);
	[LinkName("gsk_renderer_get_surface")]
	public static extern Gdk.Surface* RendererGetSurface(Renderer* renderer);
	[LinkName("gsk_renderer_is_realized")]
	public static extern c_int RendererIsRealized(Renderer* renderer);
	[LinkName("gsk_renderer_realize")]
	public static extern c_int RendererRealize(Renderer* renderer, Gdk.Surface* surface);
	[LinkName("gsk_renderer_render")]
	public static extern void RendererRender(Renderer* renderer, RenderNode* root, cairo.Region* region);
	[LinkName("gsk_renderer_render_texture")]
	public static extern Gdk.Texture* RendererRenderTexture(Renderer* renderer, RenderNode* root, Graphene.Rect* viewport);
	[LinkName("gsk_renderer_unrealize")]
	public static extern void RendererUnrealize(Renderer* renderer);
	[CRepr]
	public struct RendererClass
	{
	}
	[CRepr]
	public struct RepeatNode;
	[LinkName("gsk_repeat_node_new")]
	public static extern RepeatNode* RepeatNodeNew(Graphene.Rect* bounds, RenderNode* child, Graphene.Rect* child_bounds);
	[LinkName("gsk_repeat_node_get_child")]
	public static extern RenderNode* RepeatNodeGetChild(RepeatNode* node);
	[LinkName("gsk_repeat_node_get_child_bounds")]
	public static extern Graphene.Rect* RepeatNodeGetChildBounds(RepeatNode* node);
	[CRepr]
	public struct RepeatingLinearGradientNode;
	[LinkName("gsk_repeating_linear_gradient_node_new")]
	public static extern RepeatingLinearGradientNode* RepeatingLinearGradientNodeNew(Graphene.Rect* bounds, Graphene.Point* start, Graphene.Point* end, c_ulong n_color_stops);
	[CRepr]
	public struct RepeatingRadialGradientNode;
	[LinkName("gsk_repeating_radial_gradient_node_new")]
	public static extern RepeatingRadialGradientNode* RepeatingRadialGradientNodeNew(Graphene.Rect* bounds, Graphene.Point* center, float hradius, float vradius, float start, float end, c_ulong n_color_stops);
	[CRepr]
	public struct RoundedClipNode;
	[LinkName("gsk_rounded_clip_node_new")]
	public static extern RoundedClipNode* RoundedClipNodeNew(RenderNode* child, RoundedRect* clip);
	[LinkName("gsk_rounded_clip_node_get_child")]
	public static extern RenderNode* RoundedClipNodeGetChild(RoundedClipNode* node);
	[LinkName("gsk_rounded_clip_node_get_clip")]
	public static extern RoundedRect* RoundedClipNodeGetClip(RoundedClipNode* node);
	[CRepr]
	public struct RoundedRect
	{
		Graphene.Rect bounds;
	}
	public enum ScalingFilter : c_int
	{
		linear = 0,
		nearest = 1,
		trilinear = 2
	}
	public enum SerializationError : c_int
	{
		unsupported_format = 0,
		unsupported_version = 1,
		invalid_data = 2
	}
	[CRepr]
	public struct ShaderArgsBuilder
	{
	}
	[CRepr]
	public struct Shadow
	{
		Gdk.RGBA color;
		float dx;
		float dy;
		float radius;
	}
	[CRepr]
	public struct ShadowNode;
	[LinkName("gsk_shadow_node_new")]
	public static extern ShadowNode* ShadowNodeNew(RenderNode* child, c_ulong n_shadows);
	[LinkName("gsk_shadow_node_get_child")]
	public static extern RenderNode* ShadowNodeGetChild(ShadowNode* node);
	[LinkName("gsk_shadow_node_get_n_shadows")]
	public static extern c_ulong ShadowNodeGetNShadows(ShadowNode* node);
	[LinkName("gsk_shadow_node_get_shadow")]
	public static extern Shadow* ShadowNodeGetShadow(ShadowNode* node, c_ulong i);
	[CRepr]
	public struct TextNode;
	[LinkName("gsk_text_node_new")]
	public static extern TextNode* TextNodeNew(Pango.Font* font, Pango.GlyphString* glyphs, Gdk.RGBA* color, Graphene.Point* offset);
	[LinkName("gsk_text_node_get_color")]
	public static extern Gdk.RGBA* TextNodeGetColor(TextNode* node);
	[LinkName("gsk_text_node_get_font")]
	public static extern Pango.Font* TextNodeGetFont(TextNode* node);
	[LinkName("gsk_text_node_get_glyphs")]
	public static extern Pango.GlyphInfo TextNodeGetGlyphs(TextNode* node, c_uint* n_glyphs);
	[LinkName("gsk_text_node_get_num_glyphs")]
	public static extern c_uint TextNodeGetNumGlyphs(TextNode* node);
	[LinkName("gsk_text_node_get_offset")]
	public static extern Graphene.Point* TextNodeGetOffset(TextNode* node);
	[LinkName("gsk_text_node_has_color_glyphs")]
	public static extern c_int TextNodeHasColorGlyphs(TextNode* node);
	[CRepr]
	public struct TextureNode;
	[LinkName("gsk_texture_node_new")]
	public static extern TextureNode* TextureNodeNew(Gdk.Texture* texture, Graphene.Rect* bounds);
	[LinkName("gsk_texture_node_get_texture")]
	public static extern Gdk.Texture* TextureNodeGetTexture(TextureNode* node);
	[CRepr]
	public struct TextureScaleNode;
	[LinkName("gsk_texture_scale_node_new")]
	public static extern TextureScaleNode* TextureScaleNodeNew(Gdk.Texture* texture, Graphene.Rect* bounds, ScalingFilter filter);
	[LinkName("gsk_texture_scale_node_get_filter")]
	public static extern ScalingFilter TextureScaleNodeGetFilter(TextureScaleNode* node);
	[LinkName("gsk_texture_scale_node_get_texture")]
	public static extern Gdk.Texture* TextureScaleNodeGetTexture(TextureScaleNode* node);
	[CRepr]
	public struct Transform
	{
	}
	public enum TransformCategory : c_int
	{
		unknown = 0,
		any = 1,
		_3d = 2,
		_2d = 3,
		_2d_affine = 4,
		_2d_translate = 5,
		identity = 6
	}
	[CRepr]
	public struct TransformNode;
	[LinkName("gsk_transform_node_new")]
	public static extern TransformNode* TransformNodeNew(RenderNode* child, Transform* transform);
	[LinkName("gsk_transform_node_get_child")]
	public static extern RenderNode* TransformNodeGetChild(TransformNode* node);
	[LinkName("gsk_transform_node_get_transform")]
	public static extern Transform* TransformNodeGetTransform(TransformNode* node);
	[LinkName("gsk_serialization_error_quark")]
	public static extern GLib.Quark SerializationErrorQuark();
	[LinkName("gsk_transform_parse")]
	public static extern c_int TransformParse(char8* string, Transform* out_transform);
	[LinkName("gsk_value_dup_render_node")]
	public static extern RenderNode* ValueDupRenderNode(GObject.Value* value);
	[LinkName("gsk_value_get_render_node")]
	public static extern RenderNode* ValueGetRenderNode(GObject.Value* value);
	[LinkName("gsk_value_set_render_node")]
	public static extern void ValueSetRenderNode(GObject.Value* value, RenderNode* node);
	[LinkName("gsk_value_take_render_node")]
	public static extern void ValueTakeRenderNode(GObject.Value* value, RenderNode* node);
}