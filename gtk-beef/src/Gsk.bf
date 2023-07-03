namespace Gtk;

using System;
using System.Interop;

class Gsk
{

	[CRepr]
	public struct BlendNode : RenderNode
	{
		[LinkName("gsk_blend_node_new")]
		public static extern BlendNode* New(RenderNode* bottom, RenderNode* top, BlendMode blend_mode);
		[LinkName("gsk_blend_node_get_blend_mode")]
		public static extern BlendMode GetBlendMode(BlendNode* node);
		[LinkName("gsk_blend_node_get_bottom_child")]
		public static extern RenderNode* GetBottomChild(BlendNode* node);
		[LinkName("gsk_blend_node_get_top_child")]
		public static extern RenderNode* GetTopChild(BlendNode* node);
	}
	[CRepr]
	public struct BlurNode : RenderNode
	{
		[LinkName("gsk_blur_node_new")]
		public static extern BlurNode* New(RenderNode* child, float radius);
		[LinkName("gsk_blur_node_get_child")]
		public static extern RenderNode* GetChild(BlurNode* node);
		[LinkName("gsk_blur_node_get_radius")]
		public static extern float GetRadius(BlurNode* node);
	}
	[CRepr]
	public struct BorderNode : RenderNode
	{
		[LinkName("gsk_border_node_new")]
		public static extern BorderNode* New(RoundedRect* outline, float* border_width, Gdk.RGBA* border_color);
		[LinkName("gsk_border_node_get_colors")]
		public static extern Gdk.RGBA* GetColors(BorderNode* node);
		[LinkName("gsk_border_node_get_outline")]
		public static extern RoundedRect* GetOutline(BorderNode* node);
		[LinkName("gsk_border_node_get_widths")]
		public static extern float* GetWidths(BorderNode* node);
	}
	[CRepr]
	public struct CairoNode : RenderNode
	{
		[LinkName("gsk_cairo_node_new")]
		public static extern CairoNode* New(Graphene.Rect* bounds);
		[LinkName("gsk_cairo_node_get_draw_context")]
		public static extern cairo.Context* GetDrawContext(CairoNode* node);
		[LinkName("gsk_cairo_node_get_surface")]
		public static extern cairo.Surface* GetSurface(CairoNode* node);
	}
	[CRepr]
	public struct CairoRenderer : Renderer
	{
		[LinkName("gsk_cairo_renderer_new")]
		public static extern Renderer* New();
	}
	[CRepr]
	public struct ClipNode : RenderNode
	{
		[LinkName("gsk_clip_node_new")]
		public static extern ClipNode* New(RenderNode* child, Graphene.Rect* clip);
		[LinkName("gsk_clip_node_get_child")]
		public static extern RenderNode* GetChild(ClipNode* node);
		[LinkName("gsk_clip_node_get_clip")]
		public static extern Graphene.Rect* GetClip(ClipNode* node);
	}
	[CRepr]
	public struct ColorMatrixNode : RenderNode
	{
		[LinkName("gsk_color_matrix_node_new")]
		public static extern ColorMatrixNode* New(RenderNode* child, Graphene.Matrix* color_matrix, Graphene.Vec4* color_offset);
		[LinkName("gsk_color_matrix_node_get_child")]
		public static extern RenderNode* GetChild(ColorMatrixNode* node);
		[LinkName("gsk_color_matrix_node_get_color_matrix")]
		public static extern Graphene.Matrix* GetColorMatrix(ColorMatrixNode* node);
		[LinkName("gsk_color_matrix_node_get_color_offset")]
		public static extern Graphene.Vec4* GetColorOffset(ColorMatrixNode* node);
	}
	[CRepr]
	public struct ColorNode : RenderNode
	{
		[LinkName("gsk_color_node_new")]
		public static extern ColorNode* New(Gdk.RGBA* rgba, Graphene.Rect* bounds);
		[LinkName("gsk_color_node_get_color")]
		public static extern Gdk.RGBA* GetColor(ColorNode* node);
	}
	[CRepr]
	public struct ConicGradientNode : RenderNode
	{
		[LinkName("gsk_conic_gradient_node_new")]
		public static extern ConicGradientNode* New(Graphene.Rect* bounds, Graphene.Point* center, float rotation, ColorStop* color_stops, c_ulong n_color_stops);
		[LinkName("gsk_conic_gradient_node_get_angle")]
		public static extern float GetAngle(ConicGradientNode* node);
		[LinkName("gsk_conic_gradient_node_get_center")]
		public static extern Graphene.Point* GetCenter(ConicGradientNode* node);
		[LinkName("gsk_conic_gradient_node_get_color_stops")]
		public static extern ColorStop* GetColorStops(ConicGradientNode* node, c_ulong* n_stops);
		[LinkName("gsk_conic_gradient_node_get_n_color_stops")]
		public static extern c_ulong GetNColorStops(ConicGradientNode* node);
		[LinkName("gsk_conic_gradient_node_get_rotation")]
		public static extern float GetRotation(ConicGradientNode* node);
	}
	[CRepr]
	public struct ContainerNode : RenderNode
	{
		[LinkName("gsk_container_node_new")]
		public static extern ContainerNode* New(RenderNode** children, c_uint n_children);
		[LinkName("gsk_container_node_get_child")]
		public static extern RenderNode* GetChild(ContainerNode* node, c_uint idx);
		[LinkName("gsk_container_node_get_n_children")]
		public static extern c_uint GetNChildren(ContainerNode* node);
	}
	[CRepr]
	public struct CrossFadeNode : RenderNode
	{
		[LinkName("gsk_cross_fade_node_new")]
		public static extern CrossFadeNode* New(RenderNode* start, RenderNode* end, float progress);
		[LinkName("gsk_cross_fade_node_get_end_child")]
		public static extern RenderNode* GetEndChild(CrossFadeNode* node);
		[LinkName("gsk_cross_fade_node_get_progress")]
		public static extern float GetProgress(CrossFadeNode* node);
		[LinkName("gsk_cross_fade_node_get_start_child")]
		public static extern RenderNode* GetStartChild(CrossFadeNode* node);
	}
	[CRepr]
	public struct DebugNode : RenderNode
	{
		[LinkName("gsk_debug_node_new")]
		public static extern DebugNode* New(RenderNode* child, char8* message);
		[LinkName("gsk_debug_node_get_child")]
		public static extern RenderNode* GetChild(DebugNode* node);
		[LinkName("gsk_debug_node_get_message")]
		public static extern char8* GetMessage(DebugNode* node);
	}
	[CRepr]
	public struct GLRenderer : Renderer
	{
		[LinkName("gsk_gl_renderer_new")]
		public static extern Renderer* New();
	}
	[CRepr]
	public struct GLShader : GObject.Object
	{
		[LinkName("gsk_gl_shader_new_from_bytes")]
		public static extern GLShader* NewFromBytes(GLib.Bytes* sourcecode);
		[LinkName("gsk_gl_shader_new_from_resource")]
		public static extern GLShader* NewFromResource(char8* resource_path);
		[LinkName("gsk_gl_shader_compile")]
		public static extern c_int Compile(GLShader* shader, Renderer* renderer);
		[LinkName("gsk_gl_shader_find_uniform_by_name")]
		public static extern c_int FindUniformByName(GLShader* shader, char8* name);
		[LinkName("gsk_gl_shader_get_arg_bool")]
		public static extern c_int GetArgBool(GLShader* shader, GLib.Bytes* args, c_int idx);
		[LinkName("gsk_gl_shader_get_arg_float")]
		public static extern float GetArgFloat(GLShader* shader, GLib.Bytes* args, c_int idx);
		[LinkName("gsk_gl_shader_get_arg_int")]
		public static extern c_int GetArgInt(GLShader* shader, GLib.Bytes* args, c_int idx);
		[LinkName("gsk_gl_shader_get_arg_uint")]
		public static extern c_uint GetArgUint(GLShader* shader, GLib.Bytes* args, c_int idx);
		[LinkName("gsk_gl_shader_get_arg_vec2")]
		public static extern void GetArgVec2(GLShader* shader, GLib.Bytes* args, c_int idx, Graphene.Vec2* out_value);
		[LinkName("gsk_gl_shader_get_arg_vec3")]
		public static extern void GetArgVec3(GLShader* shader, GLib.Bytes* args, c_int idx, Graphene.Vec3* out_value);
		[LinkName("gsk_gl_shader_get_arg_vec4")]
		public static extern void GetArgVec4(GLShader* shader, GLib.Bytes* args, c_int idx, Graphene.Vec4* out_value);
		[LinkName("gsk_gl_shader_get_args_size")]
		public static extern c_ulong GetArgsSize(GLShader* shader);
		[LinkName("gsk_gl_shader_get_n_textures")]
		public static extern c_int GetNTextures(GLShader* shader);
		[LinkName("gsk_gl_shader_get_n_uniforms")]
		public static extern c_int GetNUniforms(GLShader* shader);
		[LinkName("gsk_gl_shader_get_resource")]
		public static extern char8* GetResource(GLShader* shader);
		[LinkName("gsk_gl_shader_get_source")]
		public static extern GLib.Bytes* GetSource(GLShader* shader);
		[LinkName("gsk_gl_shader_get_uniform_name")]
		public static extern char8* GetUniformName(GLShader* shader, c_int idx);
		[LinkName("gsk_gl_shader_get_uniform_offset")]
		public static extern c_int GetUniformOffset(GLShader* shader, c_int idx);
		[LinkName("gsk_gl_shader_get_uniform_type")]
		public static extern GLUniformType GetUniformType(GLShader* shader, c_int idx);
	}
	[CRepr]
	public struct GLShaderNode : RenderNode
	{
		[LinkName("gsk_gl_shader_node_new")]
		public static extern GLShaderNode* New(GLShader* shader, Graphene.Rect* bounds, GLib.Bytes* args, RenderNode** children, c_uint n_children);
		[LinkName("gsk_gl_shader_node_get_args")]
		public static extern GLib.Bytes* GetArgs(GLShaderNode* node);
		[LinkName("gsk_gl_shader_node_get_child")]
		public static extern RenderNode* GetChild(GLShaderNode* node, c_uint idx);
		[LinkName("gsk_gl_shader_node_get_n_children")]
		public static extern c_uint GetNChildren(GLShaderNode* node);
		[LinkName("gsk_gl_shader_node_get_shader")]
		public static extern GLShader* GetShader(GLShaderNode* node);
	}
	[CRepr]
	public struct InsetShadowNode : RenderNode
	{
		[LinkName("gsk_inset_shadow_node_new")]
		public static extern InsetShadowNode* New(RoundedRect* outline, Gdk.RGBA* color, float dx, float dy, float spread, float blur_radius);
		[LinkName("gsk_inset_shadow_node_get_blur_radius")]
		public static extern float GetBlurRadius(InsetShadowNode* node);
		[LinkName("gsk_inset_shadow_node_get_color")]
		public static extern Gdk.RGBA* GetColor(InsetShadowNode* node);
		[LinkName("gsk_inset_shadow_node_get_dx")]
		public static extern float GetDx(InsetShadowNode* node);
		[LinkName("gsk_inset_shadow_node_get_dy")]
		public static extern float GetDy(InsetShadowNode* node);
		[LinkName("gsk_inset_shadow_node_get_outline")]
		public static extern RoundedRect* GetOutline(InsetShadowNode* node);
		[LinkName("gsk_inset_shadow_node_get_spread")]
		public static extern float GetSpread(InsetShadowNode* node);
	}
	[CRepr]
	public struct LinearGradientNode : RenderNode
	{
		[LinkName("gsk_linear_gradient_node_new")]
		public static extern LinearGradientNode* New(Graphene.Rect* bounds, Graphene.Point* start, Graphene.Point* end, ColorStop* color_stops, c_ulong n_color_stops);
		[LinkName("gsk_linear_gradient_node_get_color_stops")]
		public static extern ColorStop* GetColorStops(LinearGradientNode* node, c_ulong* n_stops);
		[LinkName("gsk_linear_gradient_node_get_end")]
		public static extern Graphene.Point* GetEnd(LinearGradientNode* node);
		[LinkName("gsk_linear_gradient_node_get_n_color_stops")]
		public static extern c_ulong GetNColorStops(LinearGradientNode* node);
		[LinkName("gsk_linear_gradient_node_get_start")]
		public static extern Graphene.Point* GetStart(LinearGradientNode* node);
	}
	[CRepr]
	public struct MaskNode : RenderNode
	{
		[LinkName("gsk_mask_node_new")]
		public static extern MaskNode* New(RenderNode* source, RenderNode* mask, MaskMode mask_mode);
		[LinkName("gsk_mask_node_get_mask")]
		public static extern RenderNode* GetMask(MaskNode* node);
		[LinkName("gsk_mask_node_get_mask_mode")]
		public static extern MaskMode GetMaskMode(MaskNode* node);
		[LinkName("gsk_mask_node_get_source")]
		public static extern RenderNode* GetSource(MaskNode* node);
	}
	[CRepr]
	public struct NglRenderer : Renderer
	{
		[LinkName("gsk_ngl_renderer_new")]
		public static extern Renderer* New();
	}
	[CRepr]
	public struct OpacityNode : RenderNode
	{
		[LinkName("gsk_opacity_node_new")]
		public static extern OpacityNode* New(RenderNode* child, float opacity);
		[LinkName("gsk_opacity_node_get_child")]
		public static extern RenderNode* GetChild(OpacityNode* node);
		[LinkName("gsk_opacity_node_get_opacity")]
		public static extern float GetOpacity(OpacityNode* node);
	}
	[CRepr]
	public struct OutsetShadowNode : RenderNode
	{
		[LinkName("gsk_outset_shadow_node_new")]
		public static extern OutsetShadowNode* New(RoundedRect* outline, Gdk.RGBA* color, float dx, float dy, float spread, float blur_radius);
		[LinkName("gsk_outset_shadow_node_get_blur_radius")]
		public static extern float GetBlurRadius(OutsetShadowNode* node);
		[LinkName("gsk_outset_shadow_node_get_color")]
		public static extern Gdk.RGBA* GetColor(OutsetShadowNode* node);
		[LinkName("gsk_outset_shadow_node_get_dx")]
		public static extern float GetDx(OutsetShadowNode* node);
		[LinkName("gsk_outset_shadow_node_get_dy")]
		public static extern float GetDy(OutsetShadowNode* node);
		[LinkName("gsk_outset_shadow_node_get_outline")]
		public static extern RoundedRect* GetOutline(OutsetShadowNode* node);
		[LinkName("gsk_outset_shadow_node_get_spread")]
		public static extern float GetSpread(OutsetShadowNode* node);
	}
	[CRepr]
	public struct RadialGradientNode : RenderNode
	{
		[LinkName("gsk_radial_gradient_node_new")]
		public static extern RadialGradientNode* New(Graphene.Rect* bounds, Graphene.Point* center, float hradius, float vradius, float start, float end, ColorStop* color_stops, c_ulong n_color_stops);
		[LinkName("gsk_radial_gradient_node_get_center")]
		public static extern Graphene.Point* GetCenter(RadialGradientNode* node);
		[LinkName("gsk_radial_gradient_node_get_color_stops")]
		public static extern ColorStop* GetColorStops(RadialGradientNode* node, c_ulong* n_stops);
		[LinkName("gsk_radial_gradient_node_get_end")]
		public static extern float GetEnd(RadialGradientNode* node);
		[LinkName("gsk_radial_gradient_node_get_hradius")]
		public static extern float GetHradius(RadialGradientNode* node);
		[LinkName("gsk_radial_gradient_node_get_n_color_stops")]
		public static extern c_ulong GetNColorStops(RadialGradientNode* node);
		[LinkName("gsk_radial_gradient_node_get_start")]
		public static extern float GetStart(RadialGradientNode* node);
		[LinkName("gsk_radial_gradient_node_get_vradius")]
		public static extern float GetVradius(RadialGradientNode* node);
	}
	[CRepr]
	public struct RenderNode
	{
		[LinkName("gsk_render_node_draw")]
		public static extern void Draw(RenderNode* node, cairo.Context* cr);
		[LinkName("gsk_render_node_get_bounds")]
		public static extern void GetBounds(RenderNode* node, Graphene.Rect* bounds);
		[LinkName("gsk_render_node_get_node_type")]
		public static extern RenderNodeType GetNodeType(RenderNode* node);
		[LinkName("gsk_render_node_ref")]
		public static extern RenderNode* Ref(RenderNode* node);
		[LinkName("gsk_render_node_serialize")]
		public static extern GLib.Bytes* Serialize(RenderNode* node);
		[LinkName("gsk_render_node_unref")]
		public static extern void Unref(RenderNode* node);
		[LinkName("gsk_render_node_write_to_file")]
		public static extern c_int WriteToFile(RenderNode* node, char8* filename);
	}
	[CRepr]
	public struct Renderer : GObject.Object
	{
		[LinkName("gsk_renderer_new_for_surface")]
		public static extern Renderer* NewForSurface(Gdk.Surface* surface);
		[LinkName("gsk_renderer_get_surface")]
		public static extern Gdk.Surface* GetSurface(Renderer* renderer);
		[LinkName("gsk_renderer_is_realized")]
		public static extern c_int IsRealized(Renderer* renderer);
		[LinkName("gsk_renderer_realize")]
		public static extern c_int Realize(Renderer* renderer, Gdk.Surface* surface);
		[LinkName("gsk_renderer_render")]
		public static extern void Render(Renderer* renderer, RenderNode* root, cairo.Region* region);
		[LinkName("gsk_renderer_render_texture")]
		public static extern Gdk.Texture* RenderTexture(Renderer* renderer, RenderNode* root, Graphene.Rect* viewport);
		[LinkName("gsk_renderer_unrealize")]
		public static extern void Unrealize(Renderer* renderer);
	}
	[CRepr]
	public struct RepeatNode : RenderNode
	{
		[LinkName("gsk_repeat_node_new")]
		public static extern RepeatNode* New(Graphene.Rect* bounds, RenderNode* child, Graphene.Rect* child_bounds);
		[LinkName("gsk_repeat_node_get_child")]
		public static extern RenderNode* GetChild(RepeatNode* node);
		[LinkName("gsk_repeat_node_get_child_bounds")]
		public static extern Graphene.Rect* GetChildBounds(RepeatNode* node);
	}
	[CRepr]
	public struct RepeatingLinearGradientNode : RenderNode
	{
		[LinkName("gsk_repeating_linear_gradient_node_new")]
		public static extern RepeatingLinearGradientNode* New(Graphene.Rect* bounds, Graphene.Point* start, Graphene.Point* end, ColorStop* color_stops, c_ulong n_color_stops);
	}
	[CRepr]
	public struct RepeatingRadialGradientNode : RenderNode
	{
		[LinkName("gsk_repeating_radial_gradient_node_new")]
		public static extern RepeatingRadialGradientNode* New(Graphene.Rect* bounds, Graphene.Point* center, float hradius, float vradius, float start, float end, ColorStop* color_stops, c_ulong n_color_stops);
	}
	[CRepr]
	public struct RoundedClipNode : RenderNode
	{
		[LinkName("gsk_rounded_clip_node_new")]
		public static extern RoundedClipNode* New(RenderNode* child, RoundedRect* clip);
		[LinkName("gsk_rounded_clip_node_get_child")]
		public static extern RenderNode* GetChild(RoundedClipNode* node);
		[LinkName("gsk_rounded_clip_node_get_clip")]
		public static extern RoundedRect* GetClip(RoundedClipNode* node);
	}
	[CRepr]
	public struct ShadowNode : RenderNode
	{
		[LinkName("gsk_shadow_node_new")]
		public static extern ShadowNode* New(RenderNode* child, Shadow* shadows, c_ulong n_shadows);
		[LinkName("gsk_shadow_node_get_child")]
		public static extern RenderNode* GetChild(ShadowNode* node);
		[LinkName("gsk_shadow_node_get_n_shadows")]
		public static extern c_ulong GetNShadows(ShadowNode* node);
		[LinkName("gsk_shadow_node_get_shadow")]
		public static extern Shadow* GetShadow(ShadowNode* node, c_ulong i);
	}
	[CRepr]
	public struct TextNode : RenderNode
	{
		[LinkName("gsk_text_node_new")]
		public static extern TextNode* New(Pango.Font* font, Pango.GlyphString* glyphs, Gdk.RGBA* color, Graphene.Point* offset);
		[LinkName("gsk_text_node_get_color")]
		public static extern Gdk.RGBA* GetColor(TextNode* node);
		[LinkName("gsk_text_node_get_font")]
		public static extern Pango.Font* GetFont(TextNode* node);
		[LinkName("gsk_text_node_get_glyphs")]
		public static extern Pango.GlyphInfo* GetGlyphs(TextNode* node, c_uint* n_glyphs);
		[LinkName("gsk_text_node_get_num_glyphs")]
		public static extern c_uint GetNumGlyphs(TextNode* node);
		[LinkName("gsk_text_node_get_offset")]
		public static extern Graphene.Point* GetOffset(TextNode* node);
		[LinkName("gsk_text_node_has_color_glyphs")]
		public static extern c_int HasColorGlyphs(TextNode* node);
	}
	[CRepr]
	public struct TextureNode : RenderNode
	{
		[LinkName("gsk_texture_node_new")]
		public static extern TextureNode* New(Gdk.Texture* texture, Graphene.Rect* bounds);
		[LinkName("gsk_texture_node_get_texture")]
		public static extern Gdk.Texture* GetTexture(TextureNode* node);
	}
	[CRepr]
	public struct TextureScaleNode : RenderNode
	{
		[LinkName("gsk_texture_scale_node_new")]
		public static extern TextureScaleNode* New(Gdk.Texture* texture, Graphene.Rect* bounds, ScalingFilter filter);
		[LinkName("gsk_texture_scale_node_get_filter")]
		public static extern ScalingFilter GetFilter(TextureScaleNode* node);
		[LinkName("gsk_texture_scale_node_get_texture")]
		public static extern Gdk.Texture* GetTexture(TextureScaleNode* node);
	}
	[CRepr]
	public struct TransformNode : RenderNode
	{
		[LinkName("gsk_transform_node_new")]
		public static extern TransformNode* New(RenderNode* child, Transform* transform);
		[LinkName("gsk_transform_node_get_child")]
		public static extern RenderNode* GetChild(TransformNode* node);
		[LinkName("gsk_transform_node_get_transform")]
		public static extern Transform* GetTransform(TransformNode* node);
	}
		[LinkName("gsk_serialization_error_quark")]
		public static extern GLib.Quark SerializationErrorQuark();
		[LinkName("gsk_transform_parse")]
		public static extern c_int TransformParse(char8* string, Transform** out_transform);
		[LinkName("gsk_value_dup_render_node")]
		public static extern RenderNode* ValueDupRenderNode(GObject.Value* value);
		[LinkName("gsk_value_get_render_node")]
		public static extern RenderNode* ValueGetRenderNode(GObject.Value* value);
		[LinkName("gsk_value_set_render_node")]
		public static extern void ValueSetRenderNode(GObject.Value* value, RenderNode* node);
		[LinkName("gsk_value_take_render_node")]
		public static extern void ValueTakeRenderNode(GObject.Value* value, RenderNode* node);
	[CRepr]
	public struct CairoRendererClass : int
	{
	}
	[CRepr]
	public struct ColorStop
	{
		public float offset;
		public Gdk.RGBA color;
	}
	[CRepr]
	public struct GLRendererClass : int
	{
	}
	[CRepr]
	public struct GLShaderClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ParseLocation
	{
		public c_ulong bytes;
		public c_ulong chars;
		public c_ulong lines;
		public c_ulong line_bytes;
		public c_ulong line_chars;
	}
	[CRepr]
	public struct RendererClass : int
	{
	}
	[CRepr]
	public struct RoundedRect
	{
		public Graphene.Rect bounds;
		public Graphene.Size corner;
		[LinkName("gsk_rounded_rect_contains_point")]
		public static extern c_int ContainsPoint(RoundedRect* self, Graphene.Point* point);
		[LinkName("gsk_rounded_rect_contains_rect")]
		public static extern c_int ContainsRect(RoundedRect* self, Graphene.Rect* rect);
		[LinkName("gsk_rounded_rect_init")]
		public static extern RoundedRect* Init(RoundedRect* self, Graphene.Rect* bounds, Graphene.Size* top_left, Graphene.Size* top_right, Graphene.Size* bottom_right, Graphene.Size* bottom_left);
		[LinkName("gsk_rounded_rect_init_copy")]
		public static extern RoundedRect* InitCopy(RoundedRect* self, RoundedRect* src);
		[LinkName("gsk_rounded_rect_init_from_rect")]
		public static extern RoundedRect* InitFromRect(RoundedRect* self, Graphene.Rect* bounds, float radius);
		[LinkName("gsk_rounded_rect_intersects_rect")]
		public static extern c_int IntersectsRect(RoundedRect* self, Graphene.Rect* rect);
		[LinkName("gsk_rounded_rect_is_rectilinear")]
		public static extern c_int IsRectilinear(RoundedRect* self);
		[LinkName("gsk_rounded_rect_normalize")]
		public static extern RoundedRect* Normalize(RoundedRect* self);
		[LinkName("gsk_rounded_rect_offset")]
		public static extern RoundedRect* Offset(RoundedRect* self, float dx, float dy);
		[LinkName("gsk_rounded_rect_shrink")]
		public static extern RoundedRect* Shrink(RoundedRect* self, float top, float right, float bottom, float left);
	}
	[CRepr]
	public struct ShaderArgsBuilder
	{
		[LinkName("gsk_shader_args_builder_new")]
		public static extern ShaderArgsBuilder* New(GLShader* shader, GLib.Bytes* initial_values);
		[LinkName("gsk_shader_args_builder_ref")]
		public static extern ShaderArgsBuilder* Ref(ShaderArgsBuilder* builder);
		[LinkName("gsk_shader_args_builder_set_bool")]
		public static extern void SetBool(ShaderArgsBuilder* builder, c_int idx, c_int value);
		[LinkName("gsk_shader_args_builder_set_float")]
		public static extern void SetFloat(ShaderArgsBuilder* builder, c_int idx, float value);
		[LinkName("gsk_shader_args_builder_set_int")]
		public static extern void SetInt(ShaderArgsBuilder* builder, c_int idx, c_int value);
		[LinkName("gsk_shader_args_builder_set_uint")]
		public static extern void SetUint(ShaderArgsBuilder* builder, c_int idx, c_uint value);
		[LinkName("gsk_shader_args_builder_set_vec2")]
		public static extern void SetVec2(ShaderArgsBuilder* builder, c_int idx, Graphene.Vec2* value);
		[LinkName("gsk_shader_args_builder_set_vec3")]
		public static extern void SetVec3(ShaderArgsBuilder* builder, c_int idx, Graphene.Vec3* value);
		[LinkName("gsk_shader_args_builder_set_vec4")]
		public static extern void SetVec4(ShaderArgsBuilder* builder, c_int idx, Graphene.Vec4* value);
		[LinkName("gsk_shader_args_builder_to_args")]
		public static extern GLib.Bytes* ToArgs(ShaderArgsBuilder* builder);
		[LinkName("gsk_shader_args_builder_unref")]
		public static extern void Unref(ShaderArgsBuilder* builder);
	}
	[CRepr]
	public struct Shadow
	{
		public Gdk.RGBA color;
		public float dx;
		public float dy;
		public float radius;
	}
	[CRepr]
	public struct Transform
	{
		[LinkName("gsk_transform_new")]
		public static extern Transform* New();
		[LinkName("gsk_transform_equal")]
		public static extern c_int Equal(Transform* first, Transform* second);
		[LinkName("gsk_transform_get_category")]
		public static extern TransformCategory GetCategory(Transform* self);
		[LinkName("gsk_transform_invert")]
		public static extern Transform* Invert(Transform* self);
		[LinkName("gsk_transform_matrix")]
		public static extern Transform* Matrix(Transform* next, Graphene.Matrix* matrix);
		[LinkName("gsk_transform_perspective")]
		public static extern Transform* Perspective(Transform* next, float depth);
		[LinkName("gsk_transform_print")]
		public static extern void Print(Transform* self, GLib.String* string);
		[LinkName("gsk_transform_ref")]
		public static extern Transform* Ref(Transform* self);
		[LinkName("gsk_transform_rotate")]
		public static extern Transform* Rotate(Transform* next, float angle);
		[LinkName("gsk_transform_rotate_3d")]
		public static extern Transform* Rotate3d(Transform* next, float angle, Graphene.Vec3* axis);
		[LinkName("gsk_transform_scale")]
		public static extern Transform* Scale(Transform* next, float factor_x, float factor_y);
		[LinkName("gsk_transform_scale_3d")]
		public static extern Transform* Scale3d(Transform* next, float factor_x, float factor_y, float factor_z);
		[LinkName("gsk_transform_skew")]
		public static extern Transform* Skew(Transform* next, float skew_x, float skew_y);
		[LinkName("gsk_transform_to_2d")]
		public static extern void To2d(Transform* self, float* out_xx, float* out_yx, float* out_xy, float* out_yy, float* out_dx, float* out_dy);
		[LinkName("gsk_transform_to_2d_components")]
		public static extern void To2dComponents(Transform* self, float* out_skew_x, float* out_skew_y, float* out_scale_x, float* out_scale_y, float* out_angle, float* out_dx, float* out_dy);
		[LinkName("gsk_transform_to_affine")]
		public static extern void ToAffine(Transform* self, float* out_scale_x, float* out_scale_y, float* out_dx, float* out_dy);
		[LinkName("gsk_transform_to_matrix")]
		public static extern void ToMatrix(Transform* self, Graphene.Matrix* out_matrix);
		[LinkName("gsk_transform_to_string")]
		public static extern char8* ToString(Transform* self);
		[LinkName("gsk_transform_to_translate")]
		public static extern void ToTranslate(Transform* self, float* out_dx, float* out_dy);
		[LinkName("gsk_transform_transform")]
		public static extern Transform* Transform(Transform* next, Transform* other);
		[LinkName("gsk_transform_transform_bounds")]
		public static extern void TransformBounds(Transform* self, Graphene.Rect* rect, Graphene.Rect* out_rect);
		[LinkName("gsk_transform_transform_point")]
		public static extern void TransformPoint(Transform* self, Graphene.Point* point, Graphene.Point* out_point);
		[LinkName("gsk_transform_translate")]
		public static extern Transform* Translate(Transform* next, Graphene.Point* point);
		[LinkName("gsk_transform_translate_3d")]
		public static extern Transform* Translate3d(Transform* next, Graphene.Point3D* point);
		[LinkName("gsk_transform_unref")]
		public static extern void Unref(Transform* self);
	}
	[CRepr, AllowDuplicates]
	public enum BlendMode
	{
		Default = 0,
		Multiply = 1,
		Screen = 2,
		Overlay = 3,
		Darken = 4,
		Lighten = 5,
		ColorDodge = 6,
		ColorBurn = 7,
		HardLight = 8,
		SoftLight = 9,
		Difference = 10,
		Exclusion = 11,
		Color = 12,
		Hue = 13,
		Saturation = 14,
		Luminosity = 15
	}
	[CRepr, AllowDuplicates]
	public enum Corner
	{
		TopLeft = 0,
		TopRight = 1,
		BottomRight = 2,
		BottomLeft = 3
	}
	[CRepr, AllowDuplicates]
	public enum GLUniformType
	{
		None = 0,
		Float = 1,
		Int = 2,
		Uint = 3,
		Bool = 4,
		Vec2 = 5,
		Vec3 = 6,
		Vec4 = 7
	}
	[CRepr, AllowDuplicates]
	public enum MaskMode
	{
		Alpha = 0,
		InvertedAlpha = 1,
		Luminance = 2,
		InvertedLuminance = 3
	}
	[CRepr, AllowDuplicates]
	public enum RenderNodeType
	{
		NotARenderNode = 0,
		ContainerNode = 1,
		CairoNode = 2,
		ColorNode = 3,
		LinearGradientNode = 4,
		RepeatingLinearGradientNode = 5,
		RadialGradientNode = 6,
		RepeatingRadialGradientNode = 7,
		ConicGradientNode = 8,
		BorderNode = 9,
		TextureNode = 10,
		InsetShadowNode = 11,
		OutsetShadowNode = 12,
		TransformNode = 13,
		OpacityNode = 14,
		ColorMatrixNode = 15,
		RepeatNode = 16,
		ClipNode = 17,
		RoundedClipNode = 18,
		ShadowNode = 19,
		BlendNode = 20,
		CrossFadeNode = 21,
		TextNode = 22,
		BlurNode = 23,
		DebugNode = 24,
		GlShaderNode = 25,
		TextureScaleNode = 26,
		MaskNode = 27
	}
	[CRepr, AllowDuplicates]
	public enum ScalingFilter
	{
		Linear = 0,
		Nearest = 1,
		Trilinear = 2
	}
	[CRepr, AllowDuplicates]
	public enum SerializationError
	{
		UnsupportedFormat = 0,
		UnsupportedVersion = 1,
		InvalidData = 2
	}
	[CRepr, AllowDuplicates]
	public enum TransformCategory
	{
		Unknown = 0,
		Any = 1,
		_3d = 2,
		_2d = 3,
		_2dAffine = 4,
		_2dTranslate = 5,
		Identity = 6
	}
	public function void ParseErrorFunc(ParseLocation* start, ParseLocation* end, GLib.Error* error, void* user_data);
}
