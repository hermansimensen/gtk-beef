namespace Gtk;

using System;
using System.Interop;

class Pango
{
	public typealias Glyph = c_uint;
	public typealias GlyphUnit = c_int;
	public typealias LayoutRun = GlyphItem;

	const c_int ANALYSIS_FLAG_CENTERED_BASELINE = (.)1;
	const c_int ANALYSIS_FLAG_IS_ELLIPSIS = (.)2;
	const c_int ANALYSIS_FLAG_NEED_HYPHEN = (.)4;
	const c_uint ATTR_INDEX_FROM_TEXT_BEGINNING = (.)0;
	const c_uint ATTR_INDEX_TO_TEXT_END = (.)4294967295;
	const Glyph GLYPH_EMPTY = (.)268435455;
	const Glyph GLYPH_INVALID_INPUT = (.)4294967295;
	const Glyph GLYPH_UNKNOWN_FLAG = (.)268435456;
	const c_int SCALE = (.)1024;
	const c_int VERSION_MAJOR = (.)1;
	const c_int VERSION_MICRO = (.)15;
	const c_int VERSION_MINOR = (.)50;
	const char8* VERSION_STRING = (.)"1.50.15";
	[CRepr]
	public struct Context : GObject.Object
	{
		[LinkName("pango_context_new")]
		public static extern Context* New();
		[LinkName("pango_context_changed")]
		public static extern void Changed(Context* context);
		[LinkName("pango_context_get_base_dir")]
		public static extern Direction GetBaseDir(Context* context);
		[LinkName("pango_context_get_base_gravity")]
		public static extern Gravity GetBaseGravity(Context* context);
		[LinkName("pango_context_get_font_description")]
		public static extern FontDescription* GetFontDescription(Context* context);
		[LinkName("pango_context_get_font_map")]
		public static extern FontMap* GetFontMap(Context* context);
		[LinkName("pango_context_get_gravity")]
		public static extern Gravity GetGravity(Context* context);
		[LinkName("pango_context_get_gravity_hint")]
		public static extern GravityHint GetGravityHint(Context* context);
		[LinkName("pango_context_get_language")]
		public static extern Language* GetLanguage(Context* context);
		[LinkName("pango_context_get_matrix")]
		public static extern Matrix* GetMatrix(Context* context);
		[LinkName("pango_context_get_metrics")]
		public static extern FontMetrics* GetMetrics(Context* context, FontDescription* desc, Language* language);
		[LinkName("pango_context_get_round_glyph_positions")]
		public static extern c_int GetRoundGlyphPositions(Context* context);
		[LinkName("pango_context_get_serial")]
		public static extern c_uint GetSerial(Context* context);
		[LinkName("pango_context_list_families")]
		public static extern void ListFamilies(Context* context, FontFamily*** families, c_int* n_families);
		[LinkName("pango_context_load_font")]
		public static extern Font* LoadFont(Context* context, FontDescription* desc);
		[LinkName("pango_context_load_fontset")]
		public static extern Fontset* LoadFontset(Context* context, FontDescription* desc, Language* language);
		[LinkName("pango_context_set_base_dir")]
		public static extern void SetBaseDir(Context* context, Direction direction);
		[LinkName("pango_context_set_base_gravity")]
		public static extern void SetBaseGravity(Context* context, Gravity gravity);
		[LinkName("pango_context_set_font_description")]
		public static extern void SetFontDescription(Context* context, FontDescription* desc);
		[LinkName("pango_context_set_font_map")]
		public static extern void SetFontMap(Context* context, FontMap* font_map);
		[LinkName("pango_context_set_gravity_hint")]
		public static extern void SetGravityHint(Context* context, GravityHint hint);
		[LinkName("pango_context_set_language")]
		public static extern void SetLanguage(Context* context, Language* language);
		[LinkName("pango_context_set_matrix")]
		public static extern void SetMatrix(Context* context, Matrix* matrix);
		[LinkName("pango_context_set_round_glyph_positions")]
		public static extern void SetRoundGlyphPositions(Context* context, c_int round_positions);
	}
	[CRepr]
	public struct Coverage : GObject.Object
	{
		[LinkName("pango_coverage_new")]
		public static extern Coverage* New();
		[LinkName("pango_coverage_copy")]
		public static extern Coverage* Copy(Coverage* coverage);
		[LinkName("pango_coverage_get")]
		public static extern CoverageLevel Get(Coverage* coverage, c_int index_);
		[LinkName("pango_coverage_max")]
		public static extern void Max(Coverage* coverage, Coverage* other);
		[LinkName("pango_coverage_ref")]
		public static extern Coverage* Ref(Coverage* coverage);
		[LinkName("pango_coverage_set")]
		public static extern void Set(Coverage* coverage, c_int index_, CoverageLevel level);
		[LinkName("pango_coverage_to_bytes")]
		public static extern void ToBytes(Coverage* coverage, c_uchar** bytes, c_int* n_bytes);
		[LinkName("pango_coverage_unref")]
		public static extern void Unref(Coverage* coverage);
	}
	[CRepr]
	public struct Font : GObject.Object
	{
		[LinkName("pango_font_describe")]
		public static extern FontDescription* Describe(Font* font);
		[LinkName("pango_font_describe_with_absolute_size")]
		public static extern FontDescription* DescribeWithAbsoluteSize(Font* font);
		[LinkName("pango_font_get_coverage")]
		public static extern Coverage* GetCoverage(Font* font, Language* language);
		[LinkName("pango_font_get_face")]
		public static extern FontFace* GetFace(Font* font);
		[LinkName("pango_font_get_features")]
		public static extern void GetFeatures(Font* font, void* features, c_uint len, c_uint* num_features);
		[LinkName("pango_font_get_font_map")]
		public static extern FontMap* GetFontMap(Font* font);
		[LinkName("pango_font_get_glyph_extents")]
		public static extern void GetGlyphExtents(Font* font, Glyph glyph, Rectangle* ink_rect, Rectangle* logical_rect);
		[LinkName("pango_font_get_languages")]
		public static extern Language** GetLanguages(Font* font);
		[LinkName("pango_font_get_metrics")]
		public static extern FontMetrics* GetMetrics(Font* font, Language* language);
		[LinkName("pango_font_has_char")]
		public static extern c_int HasChar(Font* font, c_uint wc);
		[LinkName("pango_font_serialize")]
		public static extern GLib.Bytes* Serialize(Font* font);
	}
	[CRepr]
	public struct FontFace : GObject.Object
	{
		[LinkName("pango_font_face_describe")]
		public static extern FontDescription* Describe(FontFace* face);
		[LinkName("pango_font_face_get_face_name")]
		public static extern char8* GetFaceName(FontFace* face);
		[LinkName("pango_font_face_get_family")]
		public static extern FontFamily* GetFamily(FontFace* face);
		[LinkName("pango_font_face_is_synthesized")]
		public static extern c_int IsSynthesized(FontFace* face);
		[LinkName("pango_font_face_list_sizes")]
		public static extern void ListSizes(FontFace* face, c_int** sizes, c_int* n_sizes);
	}
	[CRepr]
	public struct FontFamily : GObject.Object
	{
		[LinkName("pango_font_family_get_face")]
		public static extern FontFace* GetFace(FontFamily* family, char8* name);
		[LinkName("pango_font_family_get_name")]
		public static extern char8* GetName(FontFamily* family);
		[LinkName("pango_font_family_is_monospace")]
		public static extern c_int IsMonospace(FontFamily* family);
		[LinkName("pango_font_family_is_variable")]
		public static extern c_int IsVariable(FontFamily* family);
		[LinkName("pango_font_family_list_faces")]
		public static extern void ListFaces(FontFamily* family, FontFace*** faces, c_int* n_faces);
	}
	[CRepr]
	public struct FontMap : GObject.Object
	{
		[LinkName("pango_font_map_changed")]
		public static extern void Changed(FontMap* fontmap);
		[LinkName("pango_font_map_create_context")]
		public static extern Context* CreateContext(FontMap* fontmap);
		[LinkName("pango_font_map_get_family")]
		public static extern FontFamily* GetFamily(FontMap* fontmap, char8* name);
		[LinkName("pango_font_map_get_serial")]
		public static extern c_uint GetSerial(FontMap* fontmap);
		[LinkName("pango_font_map_list_families")]
		public static extern void ListFamilies(FontMap* fontmap, FontFamily*** families, c_int* n_families);
		[LinkName("pango_font_map_load_font")]
		public static extern Font* LoadFont(FontMap* fontmap, Context* context, FontDescription* desc);
		[LinkName("pango_font_map_load_fontset")]
		public static extern Fontset* LoadFontset(FontMap* fontmap, Context* context, FontDescription* desc, Language* language);
	}
	[CRepr]
	public struct Fontset : GObject.Object
	{
		[LinkName("pango_fontset_foreach")]
		public static extern void Foreach(Fontset* fontset, FontsetForeachFunc func, void* data);
		[LinkName("pango_fontset_get_font")]
		public static extern Font* GetFont(Fontset* fontset, c_uint wc);
		[LinkName("pango_fontset_get_metrics")]
		public static extern FontMetrics* GetMetrics(Fontset* fontset);
	}
	[CRepr]
	public struct FontsetSimple : Fontset
	{
		[LinkName("pango_fontset_simple_new")]
		public static extern FontsetSimple* New(Language* language);
		[LinkName("pango_fontset_simple_append")]
		public static extern void Append(FontsetSimple* fontset, Font* font);
		[LinkName("pango_fontset_simple_size")]
		public static extern c_int Size(FontsetSimple* fontset);
	}
	[CRepr]
	public struct Layout : GObject.Object
	{
		[LinkName("pango_layout_new")]
		public static extern Layout* New(Context* context);
		[LinkName("pango_layout_context_changed")]
		public static extern void ContextChanged(Layout* layout);
		[LinkName("pango_layout_copy")]
		public static extern Layout* Copy(Layout* src);
		[LinkName("pango_layout_get_alignment")]
		public static extern Alignment GetAlignment(Layout* layout);
		[LinkName("pango_layout_get_attributes")]
		public static extern AttrList* GetAttributes(Layout* layout);
		[LinkName("pango_layout_get_auto_dir")]
		public static extern c_int GetAutoDir(Layout* layout);
		[LinkName("pango_layout_get_baseline")]
		public static extern c_int GetBaseline(Layout* layout);
		[LinkName("pango_layout_get_caret_pos")]
		public static extern void GetCaretPos(Layout* layout, c_int index_, Rectangle* strong_pos, Rectangle* weak_pos);
		[LinkName("pango_layout_get_character_count")]
		public static extern c_int GetCharacterCount(Layout* layout);
		[LinkName("pango_layout_get_context")]
		public static extern Context* GetContext(Layout* layout);
		[LinkName("pango_layout_get_cursor_pos")]
		public static extern void GetCursorPos(Layout* layout, c_int index_, Rectangle* strong_pos, Rectangle* weak_pos);
		[LinkName("pango_layout_get_direction")]
		public static extern Direction GetDirection(Layout* layout, c_int index);
		[LinkName("pango_layout_get_ellipsize")]
		public static extern EllipsizeMode GetEllipsize(Layout* layout);
		[LinkName("pango_layout_get_extents")]
		public static extern void GetExtents(Layout* layout, Rectangle* ink_rect, Rectangle* logical_rect);
		[LinkName("pango_layout_get_font_description")]
		public static extern FontDescription* GetFontDescription(Layout* layout);
		[LinkName("pango_layout_get_height")]
		public static extern c_int GetHeight(Layout* layout);
		[LinkName("pango_layout_get_indent")]
		public static extern c_int GetIndent(Layout* layout);
		[LinkName("pango_layout_get_iter")]
		public static extern LayoutIter* GetIter(Layout* layout);
		[LinkName("pango_layout_get_justify")]
		public static extern c_int GetJustify(Layout* layout);
		[LinkName("pango_layout_get_justify_last_line")]
		public static extern c_int GetJustifyLastLine(Layout* layout);
		[LinkName("pango_layout_get_line")]
		public static extern LayoutLine* GetLine(Layout* layout, c_int line);
		[LinkName("pango_layout_get_line_count")]
		public static extern c_int GetLineCount(Layout* layout);
		[LinkName("pango_layout_get_line_readonly")]
		public static extern LayoutLine* GetLineReadonly(Layout* layout, c_int line);
		[LinkName("pango_layout_get_line_spacing")]
		public static extern float GetLineSpacing(Layout* layout);
		[LinkName("pango_layout_get_lines")]
		public static extern GLib.SList* GetLines(Layout* layout);
		[LinkName("pango_layout_get_lines_readonly")]
		public static extern GLib.SList* GetLinesReadonly(Layout* layout);
		[LinkName("pango_layout_get_log_attrs")]
		public static extern void GetLogAttrs(Layout* layout, LogAttr** attrs, c_int* n_attrs);
		[LinkName("pango_layout_get_log_attrs_readonly")]
		public static extern LogAttr* GetLogAttrsReadonly(Layout* layout, c_int* n_attrs);
		[LinkName("pango_layout_get_pixel_extents")]
		public static extern void GetPixelExtents(Layout* layout, Rectangle* ink_rect, Rectangle* logical_rect);
		[LinkName("pango_layout_get_pixel_size")]
		public static extern void GetPixelSize(Layout* layout, c_int* width, c_int* height);
		[LinkName("pango_layout_get_serial")]
		public static extern c_uint GetSerial(Layout* layout);
		[LinkName("pango_layout_get_single_paragraph_mode")]
		public static extern c_int GetSingleParagraphMode(Layout* layout);
		[LinkName("pango_layout_get_size")]
		public static extern void GetSize(Layout* layout, c_int* width, c_int* height);
		[LinkName("pango_layout_get_spacing")]
		public static extern c_int GetSpacing(Layout* layout);
		[LinkName("pango_layout_get_tabs")]
		public static extern TabArray* GetTabs(Layout* layout);
		[LinkName("pango_layout_get_text")]
		public static extern char8* GetText(Layout* layout);
		[LinkName("pango_layout_get_unknown_glyphs_count")]
		public static extern c_int GetUnknownGlyphsCount(Layout* layout);
		[LinkName("pango_layout_get_width")]
		public static extern c_int GetWidth(Layout* layout);
		[LinkName("pango_layout_get_wrap")]
		public static extern WrapMode GetWrap(Layout* layout);
		[LinkName("pango_layout_index_to_line_x")]
		public static extern void IndexToLineX(Layout* layout, c_int index_, c_int trailing, c_int* line, c_int* x_pos);
		[LinkName("pango_layout_index_to_pos")]
		public static extern void IndexToPos(Layout* layout, c_int index_, Rectangle* pos);
		[LinkName("pango_layout_is_ellipsized")]
		public static extern c_int IsEllipsized(Layout* layout);
		[LinkName("pango_layout_is_wrapped")]
		public static extern c_int IsWrapped(Layout* layout);
		[LinkName("pango_layout_move_cursor_visually")]
		public static extern void MoveCursorVisually(Layout* layout, c_int strong, c_int old_index, c_int old_trailing, c_int direction, c_int* new_index, c_int* new_trailing);
		[LinkName("pango_layout_serialize")]
		public static extern GLib.Bytes* Serialize(Layout* layout, LayoutSerializeFlags flags);
		[LinkName("pango_layout_set_alignment")]
		public static extern void SetAlignment(Layout* layout, Alignment alignment);
		[LinkName("pango_layout_set_attributes")]
		public static extern void SetAttributes(Layout* layout, AttrList* attrs);
		[LinkName("pango_layout_set_auto_dir")]
		public static extern void SetAutoDir(Layout* layout, c_int auto_dir);
		[LinkName("pango_layout_set_ellipsize")]
		public static extern void SetEllipsize(Layout* layout, EllipsizeMode ellipsize);
		[LinkName("pango_layout_set_font_description")]
		public static extern void SetFontDescription(Layout* layout, FontDescription* desc);
		[LinkName("pango_layout_set_height")]
		public static extern void SetHeight(Layout* layout, c_int height);
		[LinkName("pango_layout_set_indent")]
		public static extern void SetIndent(Layout* layout, c_int indent);
		[LinkName("pango_layout_set_justify")]
		public static extern void SetJustify(Layout* layout, c_int justify);
		[LinkName("pango_layout_set_justify_last_line")]
		public static extern void SetJustifyLastLine(Layout* layout, c_int justify);
		[LinkName("pango_layout_set_line_spacing")]
		public static extern void SetLineSpacing(Layout* layout, float factor);
		[LinkName("pango_layout_set_markup")]
		public static extern void SetMarkup(Layout* layout, char8* markup, c_int length);
		[LinkName("pango_layout_set_markup_with_accel")]
		public static extern void SetMarkupWithAccel(Layout* layout, char8* markup, c_int length, c_uint accel_marker, c_uint* accel_char);
		[LinkName("pango_layout_set_single_paragraph_mode")]
		public static extern void SetSingleParagraphMode(Layout* layout, c_int setting);
		[LinkName("pango_layout_set_spacing")]
		public static extern void SetSpacing(Layout* layout, c_int spacing);
		[LinkName("pango_layout_set_tabs")]
		public static extern void SetTabs(Layout* layout, TabArray* tabs);
		[LinkName("pango_layout_set_text")]
		public static extern void SetText(Layout* layout, char8* text, c_int length);
		[LinkName("pango_layout_set_width")]
		public static extern void SetWidth(Layout* layout, c_int width);
		[LinkName("pango_layout_set_wrap")]
		public static extern void SetWrap(Layout* layout, WrapMode wrap);
		[LinkName("pango_layout_write_to_file")]
		public static extern c_int WriteToFile(Layout* layout, LayoutSerializeFlags flags, char8* filename);
		[LinkName("pango_layout_xy_to_index")]
		public static extern c_int XyToIndex(Layout* layout, c_int x, c_int y, c_int* index_, c_int* trailing);
	}
	[CRepr]
	public struct Renderer : GObject.Object
	{
		[LinkName("pango_renderer_activate")]
		public static extern void Activate(Renderer* renderer);
		[LinkName("pango_renderer_deactivate")]
		public static extern void Deactivate(Renderer* renderer);
		[LinkName("pango_renderer_draw_error_underline")]
		public static extern void DrawErrorUnderline(Renderer* renderer, c_int x, c_int y, c_int width, c_int height);
		[LinkName("pango_renderer_draw_glyph")]
		public static extern void DrawGlyph(Renderer* renderer, Font* font, Glyph glyph, double x, double y);
		[LinkName("pango_renderer_draw_glyph_item")]
		public static extern void DrawGlyphItem(Renderer* renderer, char8* text, GlyphItem* glyph_item, c_int x, c_int y);
		[LinkName("pango_renderer_draw_glyphs")]
		public static extern void DrawGlyphs(Renderer* renderer, Font* font, GlyphString* glyphs, c_int x, c_int y);
		[LinkName("pango_renderer_draw_layout")]
		public static extern void DrawLayout(Renderer* renderer, Layout* layout, c_int x, c_int y);
		[LinkName("pango_renderer_draw_layout_line")]
		public static extern void DrawLayoutLine(Renderer* renderer, LayoutLine* line, c_int x, c_int y);
		[LinkName("pango_renderer_draw_rectangle")]
		public static extern void DrawRectangle(Renderer* renderer, RenderPart part, c_int x, c_int y, c_int width, c_int height);
		[LinkName("pango_renderer_draw_trapezoid")]
		public static extern void DrawTrapezoid(Renderer* renderer, RenderPart part, double y1_, double x11, double x21, double y2, double x12, double x22);
		[LinkName("pango_renderer_get_alpha")]
		public static extern c_ushort GetAlpha(Renderer* renderer, RenderPart part);
		[LinkName("pango_renderer_get_color")]
		public static extern Color* GetColor(Renderer* renderer, RenderPart part);
		[LinkName("pango_renderer_get_layout")]
		public static extern Layout* GetLayout(Renderer* renderer);
		[LinkName("pango_renderer_get_layout_line")]
		public static extern LayoutLine* GetLayoutLine(Renderer* renderer);
		[LinkName("pango_renderer_get_matrix")]
		public static extern Matrix* GetMatrix(Renderer* renderer);
		[LinkName("pango_renderer_part_changed")]
		public static extern void PartChanged(Renderer* renderer, RenderPart part);
		[LinkName("pango_renderer_set_alpha")]
		public static extern void SetAlpha(Renderer* renderer, RenderPart part, c_ushort alpha);
		[LinkName("pango_renderer_set_color")]
		public static extern void SetColor(Renderer* renderer, RenderPart part, Color* color);
		[LinkName("pango_renderer_set_matrix")]
		public static extern void SetMatrix(Renderer* renderer, Matrix* matrix);
	}
		[LinkName("pango_attr_allow_breaks_new")]
		public static extern Attribute* AttrAllowBreaksNew(c_int allow_breaks);
		[LinkName("pango_attr_background_alpha_new")]
		public static extern Attribute* AttrBackgroundAlphaNew(c_ushort alpha);
		[LinkName("pango_attr_background_new")]
		public static extern Attribute* AttrBackgroundNew(c_ushort red, c_ushort green, c_ushort blue);
		[LinkName("pango_attr_baseline_shift_new")]
		public static extern Attribute* AttrBaselineShiftNew(c_int shift);
		[LinkName("pango_attr_break")]
		public static extern void AttrBreak(char8* text, c_int length, AttrList* attr_list, c_int offset, LogAttr* attrs, c_int attrs_len);
		[LinkName("pango_attr_fallback_new")]
		public static extern Attribute* AttrFallbackNew(c_int enable_fallback);
		[LinkName("pango_attr_family_new")]
		public static extern Attribute* AttrFamilyNew(char8* family);
		[LinkName("pango_attr_font_desc_new")]
		public static extern Attribute* AttrFontDescNew(FontDescription* desc);
		[LinkName("pango_attr_font_features_new")]
		public static extern Attribute* AttrFontFeaturesNew(char8* features);
		[LinkName("pango_attr_font_scale_new")]
		public static extern Attribute* AttrFontScaleNew(FontScale scale);
		[LinkName("pango_attr_foreground_alpha_new")]
		public static extern Attribute* AttrForegroundAlphaNew(c_ushort alpha);
		[LinkName("pango_attr_foreground_new")]
		public static extern Attribute* AttrForegroundNew(c_ushort red, c_ushort green, c_ushort blue);
		[LinkName("pango_attr_gravity_hint_new")]
		public static extern Attribute* AttrGravityHintNew(GravityHint hint);
		[LinkName("pango_attr_gravity_new")]
		public static extern Attribute* AttrGravityNew(Gravity gravity);
		[LinkName("pango_attr_insert_hyphens_new")]
		public static extern Attribute* AttrInsertHyphensNew(c_int insert_hyphens);
		[LinkName("pango_attr_language_new")]
		public static extern Attribute* AttrLanguageNew(Language* language);
		[LinkName("pango_attr_letter_spacing_new")]
		public static extern Attribute* AttrLetterSpacingNew(c_int letter_spacing);
		[LinkName("pango_attr_line_height_new")]
		public static extern Attribute* AttrLineHeightNew(double factor);
		[LinkName("pango_attr_line_height_new_absolute")]
		public static extern Attribute* AttrLineHeightNewAbsolute(c_int height);
		[LinkName("pango_attr_list_from_string")]
		public static extern AttrList* AttrListFromString(char8* text);
		[LinkName("pango_attr_overline_color_new")]
		public static extern Attribute* AttrOverlineColorNew(c_ushort red, c_ushort green, c_ushort blue);
		[LinkName("pango_attr_overline_new")]
		public static extern Attribute* AttrOverlineNew(Overline overline);
		[LinkName("pango_attr_rise_new")]
		public static extern Attribute* AttrRiseNew(c_int rise);
		[LinkName("pango_attr_scale_new")]
		public static extern Attribute* AttrScaleNew(double scale_factor);
		[LinkName("pango_attr_sentence_new")]
		public static extern Attribute* AttrSentenceNew();
		[LinkName("pango_attr_shape_new")]
		public static extern Attribute* AttrShapeNew(Rectangle* ink_rect, Rectangle* logical_rect);
		[LinkName("pango_attr_shape_new_with_data")]
		public static extern Attribute* AttrShapeNewWithData(Rectangle* ink_rect, Rectangle* logical_rect, void* data, AttrDataCopyFunc copy_func, GLib.DestroyNotify destroy_func);
		[LinkName("pango_attr_show_new")]
		public static extern Attribute* AttrShowNew(ShowFlags flags);
		[LinkName("pango_attr_size_new")]
		public static extern Attribute* AttrSizeNew(c_int size);
		[LinkName("pango_attr_size_new_absolute")]
		public static extern Attribute* AttrSizeNewAbsolute(c_int size);
		[LinkName("pango_attr_stretch_new")]
		public static extern Attribute* AttrStretchNew(Stretch stretch);
		[LinkName("pango_attr_strikethrough_color_new")]
		public static extern Attribute* AttrStrikethroughColorNew(c_ushort red, c_ushort green, c_ushort blue);
		[LinkName("pango_attr_strikethrough_new")]
		public static extern Attribute* AttrStrikethroughNew(c_int strikethrough);
		[LinkName("pango_attr_style_new")]
		public static extern Attribute* AttrStyleNew(Style style);
		[LinkName("pango_attr_text_transform_new")]
		public static extern Attribute* AttrTextTransformNew(TextTransform transform);
		[LinkName("pango_attr_type_get_name")]
		public static extern char8* AttrTypeGetName(AttrType type);
		[LinkName("pango_attr_type_register")]
		public static extern AttrType AttrTypeRegister(char8* name);
		[LinkName("pango_attr_underline_color_new")]
		public static extern Attribute* AttrUnderlineColorNew(c_ushort red, c_ushort green, c_ushort blue);
		[LinkName("pango_attr_underline_new")]
		public static extern Attribute* AttrUnderlineNew(Underline underline);
		[LinkName("pango_attr_variant_new")]
		public static extern Attribute* AttrVariantNew(Variant variant);
		[LinkName("pango_attr_weight_new")]
		public static extern Attribute* AttrWeightNew(Weight weight);
		[LinkName("pango_attr_word_new")]
		public static extern Attribute* AttrWordNew();
		[LinkName("pango_bidi_type_for_unichar")]
		public static extern BidiType BidiTypeForUnichar(c_uint ch);
		[LinkName("pango_break")]
		public static extern void Break(char8* text, c_int length, Analysis* analysis, LogAttr* attrs, c_int attrs_len);
		[LinkName("pango_default_break")]
		public static extern void DefaultBreak(char8* text, c_int length, Analysis* analysis, LogAttr* attrs, c_int attrs_len);
		[LinkName("pango_extents_to_pixels")]
		public static extern void ExtentsToPixels(Rectangle* inclusive, Rectangle* nearest);
		[LinkName("pango_find_base_dir")]
		public static extern Direction FindBaseDir(char8* text, c_int length);
		[LinkName("pango_find_paragraph_boundary")]
		public static extern void FindParagraphBoundary(char8* text, c_int length, c_int* paragraph_delimiter_index, c_int* next_paragraph_start);
		[LinkName("pango_font_description_from_string")]
		public static extern FontDescription* FontDescriptionFromString(char8* str);
		[LinkName("pango_get_log_attrs")]
		public static extern void GetLogAttrs(char8* text, c_int length, c_int level, Language* language, LogAttr* attrs, c_int attrs_len);
		[LinkName("pango_get_mirror_char")]
		public static extern c_int GetMirrorChar(c_uint ch, c_uint* mirrored_ch);
		[LinkName("pango_gravity_get_for_matrix")]
		public static extern Gravity GravityGetForMatrix(Matrix* matrix);
		[LinkName("pango_gravity_get_for_script")]
		public static extern Gravity GravityGetForScript(Script script, Gravity base_gravity, GravityHint hint);
		[LinkName("pango_gravity_get_for_script_and_width")]
		public static extern Gravity GravityGetForScriptAndWidth(Script script, c_int wide, Gravity base_gravity, GravityHint hint);
		[LinkName("pango_gravity_to_rotation")]
		public static extern double GravityToRotation(Gravity gravity);
		[LinkName("pango_is_zero_width")]
		public static extern c_int IsZeroWidth(c_uint ch);
		[LinkName("pango_itemize")]
		public static extern GLib.List* Itemize(Context* context, char8* text, c_int start_index, c_int length, AttrList* attrs, AttrIterator* cached_iter);
		[LinkName("pango_itemize_with_base_dir")]
		public static extern GLib.List* ItemizeWithBaseDir(Context* context, Direction base_dir, char8* text, c_int start_index, c_int length, AttrList* attrs, AttrIterator* cached_iter);
		[LinkName("pango_language_from_string")]
		public static extern Language* LanguageFromString(char8* language);
		[LinkName("pango_language_get_default")]
		public static extern Language* LanguageGetDefault();
		[LinkName("pango_language_get_preferred")]
		public static extern Language** LanguageGetPreferred();
		[LinkName("pango_layout_deserialize_error_quark")]
		public static extern GLib.Quark LayoutDeserializeErrorQuark();
		[LinkName("pango_log2vis_get_embedding_levels")]
		public static extern c_uchar* Log2visGetEmbeddingLevels(char8* text, c_int length, Direction* pbase_dir);
		[LinkName("pango_markup_parser_finish")]
		public static extern c_int MarkupParserFinish(GLib.MarkupParseContext* context, AttrList** attr_list, char8** text, c_uint* accel_char);
		[LinkName("pango_markup_parser_new")]
		public static extern GLib.MarkupParseContext* MarkupParserNew(c_uint accel_marker);
		[LinkName("pango_parse_enum")]
		public static extern c_int ParseEnum(GLib.Type type, char8* str, c_int* value, c_int warn, char8** possible_values);
		[LinkName("pango_parse_markup")]
		public static extern c_int ParseMarkup(char8* markup_text, c_int length, c_uint accel_marker, AttrList** attr_list, char8** text, c_uint* accel_char);
		[LinkName("pango_parse_stretch")]
		public static extern c_int ParseStretch(char8* str, Stretch* stretch, c_int warn);
		[LinkName("pango_parse_style")]
		public static extern c_int ParseStyle(char8* str, Style* style, c_int warn);
		[LinkName("pango_parse_variant")]
		public static extern c_int ParseVariant(char8* str, Variant* variant, c_int warn);
		[LinkName("pango_parse_weight")]
		public static extern c_int ParseWeight(char8* str, Weight* weight, c_int warn);
		[LinkName("pango_quantize_line_geometry")]
		public static extern void QuantizeLineGeometry(c_int* thickness, c_int* position);
		[LinkName("pango_read_line")]
		public static extern c_int ReadLine(void** stream, GLib.String* str);
		[LinkName("pango_reorder_items")]
		public static extern GLib.List* ReorderItems(GLib.List* items);
		[LinkName("pango_scan_int")]
		public static extern c_int ScanInt(char8** pos, c_int* out_);
		[LinkName("pango_scan_string")]
		public static extern c_int ScanString(char8** pos, GLib.String* out_);
		[LinkName("pango_scan_word")]
		public static extern c_int ScanWord(char8** pos, GLib.String* out_);
		[LinkName("pango_script_for_unichar")]
		public static extern Script ScriptForUnichar(c_uint ch);
		[LinkName("pango_script_get_sample_language")]
		public static extern Language* ScriptGetSampleLanguage(Script script);
		[LinkName("pango_shape")]
		public static extern void Shape(char8* text, c_int length, Analysis* analysis, GlyphString* glyphs);
		[LinkName("pango_shape_full")]
		public static extern void ShapeFull(char8* item_text, c_int item_length, char8* paragraph_text, c_int paragraph_length, Analysis* analysis, GlyphString* glyphs);
		[LinkName("pango_shape_item")]
		public static extern void ShapeItem(Item* item, char8* paragraph_text, c_int paragraph_length, LogAttr* log_attrs, GlyphString* glyphs, ShapeFlags flags);
		[LinkName("pango_shape_with_flags")]
		public static extern void ShapeWithFlags(char8* item_text, c_int item_length, char8* paragraph_text, c_int paragraph_length, Analysis* analysis, GlyphString* glyphs, ShapeFlags flags);
		[LinkName("pango_skip_space")]
		public static extern c_int SkipSpace(char8** pos);
		[LinkName("pango_split_file_list")]
		public static extern char8** SplitFileList(char8* str);
		[LinkName("pango_tab_array_from_string")]
		public static extern TabArray* TabArrayFromString(char8* text);
		[LinkName("pango_tailor_break")]
		public static extern void TailorBreak(char8* text, c_int length, Analysis* analysis, c_int offset, LogAttr* attrs, c_int attrs_len);
		[LinkName("pango_trim_string")]
		public static extern char8* TrimString(char8* str);
		[LinkName("pango_unichar_direction")]
		public static extern Direction UnicharDirection(c_uint ch);
		[LinkName("pango_units_from_double")]
		public static extern c_int UnitsFromDouble(double d);
		[LinkName("pango_units_to_double")]
		public static extern double UnitsToDouble(c_int i);
		[LinkName("pango_version")]
		public static extern c_int Version();
		[LinkName("pango_version_check")]
		public static extern char8* VersionCheck(c_int required_major, c_int required_minor, c_int required_micro);
		[LinkName("pango_version_string")]
		public static extern char8* VersionString();
	[CRepr]
	public struct Analysis
	{
		public void* shape_engine;
		public void* lang_engine;
		public Font* font;
		public c_uchar level;
		public c_uchar gravity;
		public c_uchar flags;
		public c_uchar script;
		public Language* language;
		public GLib.SList* extra_attrs;
	}
	[CRepr]
	public struct AttrClass
	{
		public AttrType type;
		public function Attribute*(Attribute* attr) copy;
		public function void(Attribute* attr) destroy;
		public function c_int(Attribute* attr1, Attribute* attr2) equal;
	}
	[CRepr]
	public struct AttrColor
	{
		public Attribute attr;
		public Color color;
	}
	[CRepr]
	public struct AttrFloat
	{
		public Attribute attr;
		public double value;
	}
	[CRepr]
	public struct AttrFontDesc
	{
		public Attribute attr;
		public FontDescription* desc;
	}
	[CRepr]
	public struct AttrFontFeatures
	{
		public Attribute attr;
		public char8* features;
	}
	[CRepr]
	public struct AttrInt
	{
		public Attribute attr;
		public c_int value;
	}
	[CRepr]
	public struct AttrIterator
	{
		[LinkName("pango_attr_iterator_copy")]
		public static extern AttrIterator* Copy(AttrIterator* iterator);
		[LinkName("pango_attr_iterator_destroy")]
		public static extern void Destroy(AttrIterator* iterator);
		[LinkName("pango_attr_iterator_get")]
		public static extern Attribute* Get(AttrIterator* iterator, AttrType type);
		[LinkName("pango_attr_iterator_get_attrs")]
		public static extern GLib.SList* GetAttrs(AttrIterator* iterator);
		[LinkName("pango_attr_iterator_get_font")]
		public static extern void GetFont(AttrIterator* iterator, FontDescription* desc, Language** language, GLib.SList** extra_attrs);
		[LinkName("pango_attr_iterator_next")]
		public static extern c_int Next(AttrIterator* iterator);
		[LinkName("pango_attr_iterator_range")]
		public static extern void Range(AttrIterator* iterator, c_int* start, c_int* end);
	}
	[CRepr]
	public struct AttrLanguage
	{
		public Attribute attr;
		public Language* value;
	}
	[CRepr]
	public struct AttrList
	{
		[LinkName("pango_attr_list_new")]
		public static extern AttrList* New();
		[LinkName("pango_attr_list_change")]
		public static extern void Change(AttrList* list, Attribute* attr);
		[LinkName("pango_attr_list_copy")]
		public static extern AttrList* Copy(AttrList* list);
		[LinkName("pango_attr_list_equal")]
		public static extern c_int Equal(AttrList* list, AttrList* other_list);
		[LinkName("pango_attr_list_filter")]
		public static extern AttrList* Filter(AttrList* list, AttrFilterFunc func, void* data);
		[LinkName("pango_attr_list_get_attributes")]
		public static extern GLib.SList* GetAttributes(AttrList* list);
		[LinkName("pango_attr_list_get_iterator")]
		public static extern AttrIterator* GetIterator(AttrList* list);
		[LinkName("pango_attr_list_insert")]
		public static extern void Insert(AttrList* list, Attribute* attr);
		[LinkName("pango_attr_list_insert_before")]
		public static extern void InsertBefore(AttrList* list, Attribute* attr);
		[LinkName("pango_attr_list_ref")]
		public static extern AttrList* Ref(AttrList* list);
		[LinkName("pango_attr_list_splice")]
		public static extern void Splice(AttrList* list, AttrList* other, c_int pos, c_int len);
		[LinkName("pango_attr_list_to_string")]
		public static extern char8* ToString(AttrList* list);
		[LinkName("pango_attr_list_unref")]
		public static extern void Unref(AttrList* list);
		[LinkName("pango_attr_list_update")]
		public static extern void Update(AttrList* list, c_int pos, c_int remove, c_int add);
	}
	[CRepr]
	public struct AttrShape
	{
		public Attribute attr;
		public Rectangle ink_rect;
		public Rectangle logical_rect;
		public void* data;
		public AttrDataCopyFunc copy_func;
		public GLib.DestroyNotify destroy_func;
	}
	[CRepr]
	public struct AttrSize
	{
		public Attribute attr;
		public c_int size;
		[Bitfield<c_uint>(.Private, .Bits(1), "absolute")]
		private c_uint mBitfield;
	}
	[CRepr]
	public struct AttrString
	{
		public Attribute attr;
		public char8* value;
	}
	[CRepr]
	public struct Attribute
	{
		public AttrClass* klass;
		public c_uint start_index;
		public c_uint end_index;
		[LinkName("pango_attribute_as_color")]
		public static extern AttrColor* AsColor(Attribute* attr);
		[LinkName("pango_attribute_as_float")]
		public static extern AttrFloat* AsFloat(Attribute* attr);
		[LinkName("pango_attribute_as_font_desc")]
		public static extern AttrFontDesc* AsFontDesc(Attribute* attr);
		[LinkName("pango_attribute_as_font_features")]
		public static extern AttrFontFeatures* AsFontFeatures(Attribute* attr);
		[LinkName("pango_attribute_as_int")]
		public static extern AttrInt* AsInt(Attribute* attr);
		[LinkName("pango_attribute_as_language")]
		public static extern AttrLanguage* AsLanguage(Attribute* attr);
		[LinkName("pango_attribute_as_shape")]
		public static extern AttrShape* AsShape(Attribute* attr);
		[LinkName("pango_attribute_as_size")]
		public static extern AttrSize* AsSize(Attribute* attr);
		[LinkName("pango_attribute_as_string")]
		public static extern AttrString* AsString(Attribute* attr);
		[LinkName("pango_attribute_copy")]
		public static extern Attribute* Copy(Attribute* attr);
		[LinkName("pango_attribute_destroy")]
		public static extern void Destroy(Attribute* attr);
		[LinkName("pango_attribute_equal")]
		public static extern c_int Equal(Attribute* attr1, Attribute* attr2);
		[LinkName("pango_attribute_init")]
		public static extern void Init(Attribute* attr, AttrClass* klass);
	}
	[CRepr]
	public struct Color
	{
		public c_ushort red;
		public c_ushort green;
		public c_ushort blue;
		[LinkName("pango_color_copy")]
		public static extern Color* Copy(Color* src);
		[LinkName("pango_color_free")]
		public static extern void Free(Color* color);
		[LinkName("pango_color_parse")]
		public static extern c_int Parse(Color* color, char8* spec);
		[LinkName("pango_color_parse_with_alpha")]
		public static extern c_int ParseWithAlpha(Color* color, c_ushort* alpha, char8* spec);
		[LinkName("pango_color_to_string")]
		public static extern char8* ToString(Color* color);
	}
	[CRepr]
	public struct ContextClass : int
	{
	}
	[CRepr]
	public struct FontClass
	{
		public GObject.ObjectClass parent_class;
		public function FontDescription*(Font* font) describe;
		public function Coverage*(Font* font, Language* language) get_coverage;
		public function void(Font* font, Glyph glyph, Rectangle* ink_rect, Rectangle* logical_rect) get_glyph_extents;
		public function FontMetrics*(Font* font, Language* language) get_metrics;
		public function FontMap*(Font* font) get_font_map;
		public function FontDescription*(Font* font) describe_absolute;
		public function void(Font* font, void* features, c_uint len, c_uint* num_features) get_features;
		public function HarfBuzz.font_t(Font* font) create_hb_font;
	}
	[CRepr]
	public struct FontDescription
	{
		[LinkName("pango_font_description_new")]
		public static extern FontDescription* New();
		[LinkName("pango_font_description_better_match")]
		public static extern c_int BetterMatch(FontDescription* desc, FontDescription* old_match, FontDescription* new_match);
		[LinkName("pango_font_description_copy")]
		public static extern FontDescription* Copy(FontDescription* desc);
		[LinkName("pango_font_description_copy_static")]
		public static extern FontDescription* CopyStatic(FontDescription* desc);
		[LinkName("pango_font_description_equal")]
		public static extern c_int Equal(FontDescription* desc1, FontDescription* desc2);
		[LinkName("pango_font_description_free")]
		public static extern void Free(FontDescription* desc);
		[LinkName("pango_font_description_get_family")]
		public static extern char8* GetFamily(FontDescription* desc);
		[LinkName("pango_font_description_get_gravity")]
		public static extern Gravity GetGravity(FontDescription* desc);
		[LinkName("pango_font_description_get_set_fields")]
		public static extern FontMask GetSetFields(FontDescription* desc);
		[LinkName("pango_font_description_get_size")]
		public static extern c_int GetSize(FontDescription* desc);
		[LinkName("pango_font_description_get_size_is_absolute")]
		public static extern c_int GetSizeIsAbsolute(FontDescription* desc);
		[LinkName("pango_font_description_get_stretch")]
		public static extern Stretch GetStretch(FontDescription* desc);
		[LinkName("pango_font_description_get_style")]
		public static extern Style GetStyle(FontDescription* desc);
		[LinkName("pango_font_description_get_variant")]
		public static extern Variant GetVariant(FontDescription* desc);
		[LinkName("pango_font_description_get_variations")]
		public static extern char8* GetVariations(FontDescription* desc);
		[LinkName("pango_font_description_get_weight")]
		public static extern Weight GetWeight(FontDescription* desc);
		[LinkName("pango_font_description_hash")]
		public static extern c_uint Hash(FontDescription* desc);
		[LinkName("pango_font_description_merge")]
		public static extern void Merge(FontDescription* desc, FontDescription* desc_to_merge, c_int replace_existing);
		[LinkName("pango_font_description_merge_static")]
		public static extern void MergeStatic(FontDescription* desc, FontDescription* desc_to_merge, c_int replace_existing);
		[LinkName("pango_font_description_set_absolute_size")]
		public static extern void SetAbsoluteSize(FontDescription* desc, double size);
		[LinkName("pango_font_description_set_family")]
		public static extern void SetFamily(FontDescription* desc, char8* family);
		[LinkName("pango_font_description_set_family_static")]
		public static extern void SetFamilyStatic(FontDescription* desc, char8* family);
		[LinkName("pango_font_description_set_gravity")]
		public static extern void SetGravity(FontDescription* desc, Gravity gravity);
		[LinkName("pango_font_description_set_size")]
		public static extern void SetSize(FontDescription* desc, c_int size);
		[LinkName("pango_font_description_set_stretch")]
		public static extern void SetStretch(FontDescription* desc, Stretch stretch);
		[LinkName("pango_font_description_set_style")]
		public static extern void SetStyle(FontDescription* desc, Style style);
		[LinkName("pango_font_description_set_variant")]
		public static extern void SetVariant(FontDescription* desc, Variant variant);
		[LinkName("pango_font_description_set_variations")]
		public static extern void SetVariations(FontDescription* desc, char8* variations);
		[LinkName("pango_font_description_set_variations_static")]
		public static extern void SetVariationsStatic(FontDescription* desc, char8* variations);
		[LinkName("pango_font_description_set_weight")]
		public static extern void SetWeight(FontDescription* desc, Weight weight);
		[LinkName("pango_font_description_to_filename")]
		public static extern char8* ToFilename(FontDescription* desc);
		[LinkName("pango_font_description_to_string")]
		public static extern char8* ToString(FontDescription* desc);
		[LinkName("pango_font_description_unset_fields")]
		public static extern void UnsetFields(FontDescription* desc, FontMask to_unset);
	}
	[CRepr]
	public struct FontFaceClass
	{
		public GObject.ObjectClass parent_class;
		public function char8*(FontFace* face) get_face_name;
		public function FontDescription*(FontFace* face) describe;
		public function void(FontFace* face, c_int** sizes, c_int* n_sizes) list_sizes;
		public function c_int(FontFace* face) is_synthesized;
		public function FontFamily*(FontFace* face) get_family;
		public function void() _pango_reserved3;
		public function void() _pango_reserved4;
	}
	[CRepr]
	public struct FontFamilyClass
	{
		public GObject.ObjectClass parent_class;
		public function void(FontFamily* family, FontFace*** faces, c_int* n_faces) list_faces;
		public function char8*(FontFamily* family) get_name;
		public function c_int(FontFamily* family) is_monospace;
		public function c_int(FontFamily* family) is_variable;
		public function FontFace*(FontFamily* family, char8* name) get_face;
		public function void() _pango_reserved2;
	}
	[CRepr]
	public struct FontMapClass
	{
		public GObject.ObjectClass parent_class;
		public function Font*(FontMap* fontmap, Context* context, FontDescription* desc) load_font;
		public function void(FontMap* fontmap, FontFamily*** families, c_int* n_families) list_families;
		public function Fontset*(FontMap* fontmap, Context* context, FontDescription* desc, Language* language) load_fontset;
		public char8* shape_engine_type;
		public function c_uint(FontMap* fontmap) get_serial;
		public function void(FontMap* fontmap) changed;
		public function FontFamily*(FontMap* fontmap, char8* name) get_family;
		public function FontFace*(FontMap* fontmap, Font* font) get_face;
	}
	[CRepr]
	public struct FontMetrics
	{
		public c_uint ref_count;
		public c_int ascent;
		public c_int descent;
		public c_int height;
		public c_int approximate_char_width;
		public c_int approximate_digit_width;
		public c_int underline_position;
		public c_int underline_thickness;
		public c_int strikethrough_position;
		public c_int strikethrough_thickness;
		[LinkName("pango_font_metrics_get_approximate_char_width")]
		public static extern c_int GetApproximateCharWidth(FontMetrics* metrics);
		[LinkName("pango_font_metrics_get_approximate_digit_width")]
		public static extern c_int GetApproximateDigitWidth(FontMetrics* metrics);
		[LinkName("pango_font_metrics_get_ascent")]
		public static extern c_int GetAscent(FontMetrics* metrics);
		[LinkName("pango_font_metrics_get_descent")]
		public static extern c_int GetDescent(FontMetrics* metrics);
		[LinkName("pango_font_metrics_get_height")]
		public static extern c_int GetHeight(FontMetrics* metrics);
		[LinkName("pango_font_metrics_get_strikethrough_position")]
		public static extern c_int GetStrikethroughPosition(FontMetrics* metrics);
		[LinkName("pango_font_metrics_get_strikethrough_thickness")]
		public static extern c_int GetStrikethroughThickness(FontMetrics* metrics);
		[LinkName("pango_font_metrics_get_underline_position")]
		public static extern c_int GetUnderlinePosition(FontMetrics* metrics);
		[LinkName("pango_font_metrics_get_underline_thickness")]
		public static extern c_int GetUnderlineThickness(FontMetrics* metrics);
		[LinkName("pango_font_metrics_ref")]
		public static extern FontMetrics* Ref(FontMetrics* metrics);
		[LinkName("pango_font_metrics_unref")]
		public static extern void Unref(FontMetrics* metrics);
	}
	[CRepr]
	public struct FontsetClass
	{
		public GObject.ObjectClass parent_class;
		public function Font*(Fontset* fontset, c_uint wc) get_font;
		public function FontMetrics*(Fontset* fontset) get_metrics;
		public function Language*(Fontset* fontset) get_language;
		public function void(Fontset* fontset, FontsetForeachFunc func, void* data) _foreach;
		public function void() _pango_reserved1;
		public function void() _pango_reserved2;
		public function void() _pango_reserved3;
		public function void() _pango_reserved4;
	}
	[CRepr]
	public struct FontsetSimpleClass : int
	{
	}
	[CRepr]
	public struct GlyphGeometry
	{
		public GlyphUnit width;
		public GlyphUnit x_offset;
		public GlyphUnit y_offset;
	}
	[CRepr]
	public struct GlyphInfo
	{
		public Glyph glyph;
		public GlyphGeometry geometry;
		public GlyphVisAttr attr;
	}
	[CRepr]
	public struct GlyphItem
	{
		public Item* item;
		public GlyphString* glyphs;
		public c_int y_offset;
		public c_int start_x_offset;
		public c_int end_x_offset;
		[LinkName("pango_glyph_item_apply_attrs")]
		public static extern GLib.SList* ApplyAttrs(GlyphItem* glyph_item, char8* text, AttrList* list);
		[LinkName("pango_glyph_item_copy")]
		public static extern GlyphItem* Copy(GlyphItem* orig);
		[LinkName("pango_glyph_item_free")]
		public static extern void Free(GlyphItem* glyph_item);
		[LinkName("pango_glyph_item_get_logical_widths")]
		public static extern void GetLogicalWidths(GlyphItem* glyph_item, char8* text, c_int* logical_widths);
		[LinkName("pango_glyph_item_letter_space")]
		public static extern void LetterSpace(GlyphItem* glyph_item, char8* text, LogAttr* log_attrs, c_int letter_spacing);
		[LinkName("pango_glyph_item_split")]
		public static extern GlyphItem* Split(GlyphItem* orig, char8* text, c_int split_index);
	}
	[CRepr]
	public struct GlyphItemIter
	{
		public GlyphItem* glyph_item;
		public char8* text;
		public c_int start_glyph;
		public c_int start_index;
		public c_int start_char;
		public c_int end_glyph;
		public c_int end_index;
		public c_int end_char;
		[LinkName("pango_glyph_item_iter_copy")]
		public static extern GlyphItemIter* Copy(GlyphItemIter* orig);
		[LinkName("pango_glyph_item_iter_free")]
		public static extern void Free(GlyphItemIter* iter);
		[LinkName("pango_glyph_item_iter_init_end")]
		public static extern c_int InitEnd(GlyphItemIter* iter, GlyphItem* glyph_item, char8* text);
		[LinkName("pango_glyph_item_iter_init_start")]
		public static extern c_int InitStart(GlyphItemIter* iter, GlyphItem* glyph_item, char8* text);
		[LinkName("pango_glyph_item_iter_next_cluster")]
		public static extern c_int NextCluster(GlyphItemIter* iter);
		[LinkName("pango_glyph_item_iter_prev_cluster")]
		public static extern c_int PrevCluster(GlyphItemIter* iter);
	}
	[CRepr]
	public struct GlyphString
	{
		public c_int num_glyphs;
		public GlyphInfo* glyphs;
		public c_int* log_clusters;
		public c_int space;
		[LinkName("pango_glyph_string_new")]
		public static extern GlyphString* New();
		[LinkName("pango_glyph_string_copy")]
		public static extern GlyphString* Copy(GlyphString* string);
		[LinkName("pango_glyph_string_extents")]
		public static extern void Extents(GlyphString* glyphs, Font* font, Rectangle* ink_rect, Rectangle* logical_rect);
		[LinkName("pango_glyph_string_extents_range")]
		public static extern void ExtentsRange(GlyphString* glyphs, c_int start, c_int end, Font* font, Rectangle* ink_rect, Rectangle* logical_rect);
		[LinkName("pango_glyph_string_free")]
		public static extern void Free(GlyphString* string);
		[LinkName("pango_glyph_string_get_logical_widths")]
		public static extern void GetLogicalWidths(GlyphString* glyphs, char8* text, c_int length, c_int embedding_level, c_int* logical_widths);
		[LinkName("pango_glyph_string_get_width")]
		public static extern c_int GetWidth(GlyphString* glyphs);
		[LinkName("pango_glyph_string_index_to_x")]
		public static extern void IndexToX(GlyphString* glyphs, char8* text, c_int length, Analysis* analysis, c_int index_, c_int trailing, c_int* x_pos);
		[LinkName("pango_glyph_string_index_to_x_full")]
		public static extern void IndexToXFull(GlyphString* glyphs, char8* text, c_int length, Analysis* analysis, LogAttr* attrs, c_int index_, c_int trailing, c_int* x_pos);
		[LinkName("pango_glyph_string_set_size")]
		public static extern void SetSize(GlyphString* string, c_int new_len);
		[LinkName("pango_glyph_string_x_to_index")]
		public static extern void XToIndex(GlyphString* glyphs, char8* text, c_int length, Analysis* analysis, c_int x_pos, c_int* index_, c_int* trailing);
	}
	[CRepr]
	public struct GlyphVisAttr
	{
		public c_uint is_cluster_start;
	}
	[CRepr]
	public struct Item
	{
		public c_int offset;
		public c_int length;
		public c_int num_chars;
		public Analysis analysis;
		[LinkName("pango_item_new")]
		public static extern Item* New();
		[LinkName("pango_item_apply_attrs")]
		public static extern void ApplyAttrs(Item* item, AttrIterator* iter);
		[LinkName("pango_item_copy")]
		public static extern Item* Copy(Item* item);
		[LinkName("pango_item_free")]
		public static extern void Free(Item* item);
		[LinkName("pango_item_split")]
		public static extern Item* Split(Item* orig, c_int split_index, c_int split_offset);
	}
	[CRepr]
	public struct Language
	{
		[LinkName("pango_language_get_sample_string")]
		public static extern char8* GetSampleString(Language* language);
		[LinkName("pango_language_get_scripts")]
		public static extern Script* GetScripts(Language* language, c_int* num_scripts);
		[LinkName("pango_language_includes_script")]
		public static extern c_int IncludesScript(Language* language, Script script);
		[LinkName("pango_language_matches")]
		public static extern c_int Matches(Language* language, char8* range_list);
		[LinkName("pango_language_to_string")]
		public static extern char8* ToString(Language* language);
	}
	[CRepr]
	public struct LayoutClass : int
	{
	}
	[CRepr]
	public struct LayoutIter
	{
		[LinkName("pango_layout_iter_at_last_line")]
		public static extern c_int AtLastLine(LayoutIter* iter);
		[LinkName("pango_layout_iter_copy")]
		public static extern LayoutIter* Copy(LayoutIter* iter);
		[LinkName("pango_layout_iter_free")]
		public static extern void Free(LayoutIter* iter);
		[LinkName("pango_layout_iter_get_baseline")]
		public static extern c_int GetBaseline(LayoutIter* iter);
		[LinkName("pango_layout_iter_get_char_extents")]
		public static extern void GetCharExtents(LayoutIter* iter, Rectangle* logical_rect);
		[LinkName("pango_layout_iter_get_cluster_extents")]
		public static extern void GetClusterExtents(LayoutIter* iter, Rectangle* ink_rect, Rectangle* logical_rect);
		[LinkName("pango_layout_iter_get_index")]
		public static extern c_int GetIndex(LayoutIter* iter);
		[LinkName("pango_layout_iter_get_layout")]
		public static extern Layout* GetLayout(LayoutIter* iter);
		[LinkName("pango_layout_iter_get_layout_extents")]
		public static extern void GetLayoutExtents(LayoutIter* iter, Rectangle* ink_rect, Rectangle* logical_rect);
		[LinkName("pango_layout_iter_get_line")]
		public static extern LayoutLine* GetLine(LayoutIter* iter);
		[LinkName("pango_layout_iter_get_line_extents")]
		public static extern void GetLineExtents(LayoutIter* iter, Rectangle* ink_rect, Rectangle* logical_rect);
		[LinkName("pango_layout_iter_get_line_readonly")]
		public static extern LayoutLine* GetLineReadonly(LayoutIter* iter);
		[LinkName("pango_layout_iter_get_line_yrange")]
		public static extern void GetLineYrange(LayoutIter* iter, c_int* y0_, c_int* y1_);
		[LinkName("pango_layout_iter_get_run")]
		public static extern LayoutRun* GetRun(LayoutIter* iter);
		[LinkName("pango_layout_iter_get_run_baseline")]
		public static extern c_int GetRunBaseline(LayoutIter* iter);
		[LinkName("pango_layout_iter_get_run_extents")]
		public static extern void GetRunExtents(LayoutIter* iter, Rectangle* ink_rect, Rectangle* logical_rect);
		[LinkName("pango_layout_iter_get_run_readonly")]
		public static extern LayoutRun* GetRunReadonly(LayoutIter* iter);
		[LinkName("pango_layout_iter_next_char")]
		public static extern c_int NextChar(LayoutIter* iter);
		[LinkName("pango_layout_iter_next_cluster")]
		public static extern c_int NextCluster(LayoutIter* iter);
		[LinkName("pango_layout_iter_next_line")]
		public static extern c_int NextLine(LayoutIter* iter);
		[LinkName("pango_layout_iter_next_run")]
		public static extern c_int NextRun(LayoutIter* iter);
	}
	[CRepr]
	public struct LayoutLine
	{
		public Layout* layout;
		public c_int start_index;
		public c_int length;
		public GLib.SList* runs;
		[Bitfield<c_uint>(.Private, .Bits(1), "is_paragraph_start")]
		[Bitfield<c_uint>(.Private, .Bits(3), "resolved_dir")]
		private c_uint mBitfield;
		[LinkName("pango_layout_line_get_extents")]
		public static extern void GetExtents(LayoutLine* line, Rectangle* ink_rect, Rectangle* logical_rect);
		[LinkName("pango_layout_line_get_height")]
		public static extern void GetHeight(LayoutLine* line, c_int* height);
		[LinkName("pango_layout_line_get_length")]
		public static extern c_int GetLength(LayoutLine* line);
		[LinkName("pango_layout_line_get_pixel_extents")]
		public static extern void GetPixelExtents(LayoutLine* layout_line, Rectangle* ink_rect, Rectangle* logical_rect);
		[LinkName("pango_layout_line_get_resolved_direction")]
		public static extern Direction GetResolvedDirection(LayoutLine* line);
		[LinkName("pango_layout_line_get_start_index")]
		public static extern c_int GetStartIndex(LayoutLine* line);
		[LinkName("pango_layout_line_get_x_ranges")]
		public static extern void GetXRanges(LayoutLine* line, c_int start_index, c_int end_index, c_int** ranges, c_int* n_ranges);
		[LinkName("pango_layout_line_index_to_x")]
		public static extern void IndexToX(LayoutLine* line, c_int index_, c_int trailing, c_int* x_pos);
		[LinkName("pango_layout_line_is_paragraph_start")]
		public static extern c_int IsParagraphStart(LayoutLine* line);
		[LinkName("pango_layout_line_ref")]
		public static extern LayoutLine* Ref(LayoutLine* line);
		[LinkName("pango_layout_line_unref")]
		public static extern void Unref(LayoutLine* line);
		[LinkName("pango_layout_line_x_to_index")]
		public static extern c_int XToIndex(LayoutLine* line, c_int x_pos, c_int* index_, c_int* trailing);
	}
	[CRepr]
	public struct LogAttr
	{
		[Bitfield<c_uint>(.Private, .Bits(1), "is_line_break")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_mandatory_break")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_char_break")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_white")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_cursor_position")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_word_start")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_word_end")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_sentence_boundary")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_sentence_start")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_sentence_end")]
		[Bitfield<c_uint>(.Private, .Bits(1), "backspace_deletes_character")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_expandable_space")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_word_boundary")]
		[Bitfield<c_uint>(.Private, .Bits(1), "break_inserts_hyphen")]
		[Bitfield<c_uint>(.Private, .Bits(1), "break_removes_preceding")]
		[Bitfield<c_uint>(.Private, .Bits(17), "reserved")]
		private c_uint mBitfield;
	}
	[CRepr]
	public struct Matrix
	{
		public double xx;
		public double xy;
		public double yx;
		public double yy;
		public double x0;
		public double y0;
		[LinkName("pango_matrix_concat")]
		public static extern void Concat(Matrix* matrix, Matrix* new_matrix);
		[LinkName("pango_matrix_copy")]
		public static extern Matrix* Copy(Matrix* matrix);
		[LinkName("pango_matrix_free")]
		public static extern void Free(Matrix* matrix);
		[LinkName("pango_matrix_get_font_scale_factor")]
		public static extern double GetFontScaleFactor(Matrix* matrix);
		[LinkName("pango_matrix_get_font_scale_factors")]
		public static extern void GetFontScaleFactors(Matrix* matrix, double* xscale, double* yscale);
		[LinkName("pango_matrix_get_slant_ratio")]
		public static extern double GetSlantRatio(Matrix* matrix);
		[LinkName("pango_matrix_rotate")]
		public static extern void Rotate(Matrix* matrix, double degrees);
		[LinkName("pango_matrix_scale")]
		public static extern void Scale(Matrix* matrix, double scale_x, double scale_y);
		[LinkName("pango_matrix_transform_distance")]
		public static extern void TransformDistance(Matrix* matrix, double* dx, double* dy);
		[LinkName("pango_matrix_transform_pixel_rectangle")]
		public static extern void TransformPixelRectangle(Matrix* matrix, Rectangle* rect);
		[LinkName("pango_matrix_transform_point")]
		public static extern void TransformPoint(Matrix* matrix, double* x, double* y);
		[LinkName("pango_matrix_transform_rectangle")]
		public static extern void TransformRectangle(Matrix* matrix, Rectangle* rect);
		[LinkName("pango_matrix_translate")]
		public static extern void Translate(Matrix* matrix, double tx, double ty);
	}
	[CRepr]
	public struct Rectangle
	{
		public c_int x;
		public c_int y;
		public c_int width;
		public c_int height;
	}
	[CRepr]
	public struct RendererClass
	{
		public GObject.ObjectClass parent_class;
		public function void(Renderer* renderer, Font* font, GlyphString* glyphs, c_int x, c_int y) draw_glyphs;
		public function void(Renderer* renderer, RenderPart part, c_int x, c_int y, c_int width, c_int height) draw_rectangle;
		public function void(Renderer* renderer, c_int x, c_int y, c_int width, c_int height) draw_error_underline;
		public function void(Renderer* renderer, AttrShape* attr, c_int x, c_int y) draw_shape;
		public function void(Renderer* renderer, RenderPart part, double y1_, double x11, double x21, double y2, double x12, double x22) draw_trapezoid;
		public function void(Renderer* renderer, Font* font, Glyph glyph, double x, double y) draw_glyph;
		public function void(Renderer* renderer, RenderPart part) part_changed;
		public function void(Renderer* renderer) begin;
		public function void(Renderer* renderer) end;
		public function void(Renderer* renderer, LayoutRun* run) prepare_run;
		public function void(Renderer* renderer, char8* text, GlyphItem* glyph_item, c_int x, c_int y) draw_glyph_item;
		public function void() _pango_reserved2;
		public function void() _pango_reserved3;
		public function void() _pango_reserved4;
	}
	[CRepr]
	public struct RendererPrivate : int
	{
	}
	[CRepr]
	public struct ScriptIter
	{
		[LinkName("pango_script_iter_new")]
		public static extern ScriptIter* New(char8* text, c_int length);
		[LinkName("pango_script_iter_free")]
		public static extern void Free(ScriptIter* iter);
		[LinkName("pango_script_iter_get_range")]
		public static extern void GetRange(ScriptIter* iter, char8** start, char8** end, Script* script);
		[LinkName("pango_script_iter_next")]
		public static extern c_int Next(ScriptIter* iter);
	}
	[CRepr]
	public struct TabArray
	{
		[LinkName("pango_tab_array_new")]
		public static extern TabArray* New(c_int initial_size, c_int positions_in_pixels);
		[LinkName("pango_tab_array_copy")]
		public static extern TabArray* Copy(TabArray* src);
		[LinkName("pango_tab_array_free")]
		public static extern void Free(TabArray* tab_array);
		[LinkName("pango_tab_array_get_decimal_point")]
		public static extern c_uint GetDecimalPoint(TabArray* tab_array, c_int tab_index);
		[LinkName("pango_tab_array_get_positions_in_pixels")]
		public static extern c_int GetPositionsInPixels(TabArray* tab_array);
		[LinkName("pango_tab_array_get_size")]
		public static extern c_int GetSize(TabArray* tab_array);
		[LinkName("pango_tab_array_get_tab")]
		public static extern void GetTab(TabArray* tab_array, c_int tab_index, TabAlign* alignment, c_int* location);
		[LinkName("pango_tab_array_get_tabs")]
		public static extern void GetTabs(TabArray* tab_array, TabAlign** alignments, c_int** locations);
		[LinkName("pango_tab_array_resize")]
		public static extern void Resize(TabArray* tab_array, c_int new_size);
		[LinkName("pango_tab_array_set_decimal_point")]
		public static extern void SetDecimalPoint(TabArray* tab_array, c_int tab_index, c_uint decimal_point);
		[LinkName("pango_tab_array_set_positions_in_pixels")]
		public static extern void SetPositionsInPixels(TabArray* tab_array, c_int positions_in_pixels);
		[LinkName("pango_tab_array_set_tab")]
		public static extern void SetTab(TabArray* tab_array, c_int tab_index, TabAlign alignment, c_int location);
		[LinkName("pango_tab_array_sort")]
		public static extern void Sort(TabArray* tab_array);
		[LinkName("pango_tab_array_to_string")]
		public static extern char8* ToString(TabArray* tab_array);
	}
	[CRepr, AllowDuplicates]
	public enum Alignment
	{
		Left = 0,
		Center = 1,
		Right = 2
	}
	[CRepr, AllowDuplicates]
	public enum AttrType
	{
		Invalid = 0,
		Language = 1,
		Family = 2,
		Style = 3,
		Weight = 4,
		Variant = 5,
		Stretch = 6,
		Size = 7,
		FontDesc = 8,
		Foreground = 9,
		Background = 10,
		Underline = 11,
		Strikethrough = 12,
		Rise = 13,
		Shape = 14,
		Scale = 15,
		Fallback = 16,
		LetterSpacing = 17,
		UnderlineColor = 18,
		StrikethroughColor = 19,
		AbsoluteSize = 20,
		Gravity = 21,
		GravityHint = 22,
		FontFeatures = 23,
		ForegroundAlpha = 24,
		BackgroundAlpha = 25,
		AllowBreaks = 26,
		Show = 27,
		InsertHyphens = 28,
		Overline = 29,
		OverlineColor = 30,
		LineHeight = 31,
		AbsoluteLineHeight = 32,
		TextTransform = 33,
		Word = 34,
		Sentence = 35,
		BaselineShift = 36,
		FontScale = 37
	}
	[CRepr, AllowDuplicates]
	public enum BaselineShift
	{
		None = 0,
		Superscript = 1,
		Subscript = 2
	}
	[CRepr, AllowDuplicates]
	public enum BidiType
	{
		L = 0,
		Lre = 1,
		Lro = 2,
		R = 3,
		Al = 4,
		Rle = 5,
		Rlo = 6,
		Pdf = 7,
		En = 8,
		Es = 9,
		Et = 10,
		An = 11,
		Cs = 12,
		Nsm = 13,
		Bn = 14,
		B = 15,
		S = 16,
		Ws = 17,
		On = 18,
		Lri = 19,
		Rli = 20,
		Fsi = 21,
		Pdi = 22
	}
	[CRepr, AllowDuplicates]
	public enum CoverageLevel
	{
		None = 0,
		Fallback = 1,
		Approximate = 2,
		Exact = 3
	}
	[CRepr, AllowDuplicates]
	public enum Direction
	{
		Ltr = 0,
		Rtl = 1,
		TtbLtr = 2,
		TtbRtl = 3,
		WeakLtr = 4,
		WeakRtl = 5,
		Neutral = 6
	}
	[CRepr, AllowDuplicates]
	public enum EllipsizeMode
	{
		None = 0,
		Start = 1,
		Middle = 2,
		End = 3
	}
	[CRepr, AllowDuplicates]
	public enum FontMask
	{
		Family = 1,
		Style = 2,
		Variant = 4,
		Weight = 8,
		Stretch = 16,
		Size = 32,
		Gravity = 64,
		Variations = 128
	}
	[CRepr, AllowDuplicates]
	public enum FontScale
	{
		None = 0,
		Superscript = 1,
		Subscript = 2,
		SmallCaps = 3
	}
	[CRepr, AllowDuplicates]
	public enum Gravity
	{
		South = 0,
		East = 1,
		North = 2,
		West = 3,
		Auto = 4
	}
	[CRepr, AllowDuplicates]
	public enum GravityHint
	{
		Natural = 0,
		Strong = 1,
		Line = 2
	}
	[CRepr, AllowDuplicates]
	public enum LayoutDeserializeError
	{
		Invalid = 0,
		InvalidValue = 1,
		MissingValue = 2
	}
	[CRepr, AllowDuplicates]
	public enum LayoutDeserializeFlags
	{
		Default = 0,
		Context = 1
	}
	[CRepr, AllowDuplicates]
	public enum LayoutSerializeFlags
	{
		Default = 0,
		Context = 1,
		Output = 2
	}
	[CRepr, AllowDuplicates]
	public enum Overline
	{
		None = 0,
		Single = 1
	}
	[CRepr, AllowDuplicates]
	public enum RenderPart
	{
		Foreground = 0,
		Background = 1,
		Underline = 2,
		Strikethrough = 3,
		Overline = 4
	}
	[CRepr, AllowDuplicates]
	public enum Script
	{
		InvalidCode = -1,
		Common = 0,
		Inherited = 1,
		Arabic = 2,
		Armenian = 3,
		Bengali = 4,
		Bopomofo = 5,
		Cherokee = 6,
		Coptic = 7,
		Cyrillic = 8,
		Deseret = 9,
		Devanagari = 10,
		Ethiopic = 11,
		Georgian = 12,
		Gothic = 13,
		Greek = 14,
		Gujarati = 15,
		Gurmukhi = 16,
		Han = 17,
		Hangul = 18,
		Hebrew = 19,
		Hiragana = 20,
		Kannada = 21,
		Katakana = 22,
		Khmer = 23,
		Lao = 24,
		Latin = 25,
		Malayalam = 26,
		Mongolian = 27,
		Myanmar = 28,
		Ogham = 29,
		OldItalic = 30,
		Oriya = 31,
		Runic = 32,
		Sinhala = 33,
		Syriac = 34,
		Tamil = 35,
		Telugu = 36,
		Thaana = 37,
		Thai = 38,
		Tibetan = 39,
		CanadianAboriginal = 40,
		Yi = 41,
		Tagalog = 42,
		Hanunoo = 43,
		Buhid = 44,
		Tagbanwa = 45,
		Braille = 46,
		Cypriot = 47,
		Limbu = 48,
		Osmanya = 49,
		Shavian = 50,
		LinearB = 51,
		TaiLe = 52,
		Ugaritic = 53,
		NewTaiLue = 54,
		Buginese = 55,
		Glagolitic = 56,
		Tifinagh = 57,
		SylotiNagri = 58,
		OldPersian = 59,
		Kharoshthi = 60,
		Unknown = 61,
		Balinese = 62,
		Cuneiform = 63,
		Phoenician = 64,
		PhagsPa = 65,
		Nko = 66,
		KayahLi = 67,
		Lepcha = 68,
		Rejang = 69,
		Sundanese = 70,
		Saurashtra = 71,
		Cham = 72,
		OlChiki = 73,
		Vai = 74,
		Carian = 75,
		Lycian = 76,
		Lydian = 77,
		Batak = 78,
		Brahmi = 79,
		Mandaic = 80,
		Chakma = 81,
		MeroiticCursive = 82,
		MeroiticHieroglyphs = 83,
		Miao = 84,
		Sharada = 85,
		SoraSompeng = 86,
		Takri = 87,
		BassaVah = 88,
		CaucasianAlbanian = 89,
		Duployan = 90,
		Elbasan = 91,
		Grantha = 92,
		Khojki = 93,
		Khudawadi = 94,
		LinearA = 95,
		Mahajani = 96,
		Manichaean = 97,
		MendeKikakui = 98,
		Modi = 99,
		Mro = 100,
		Nabataean = 101,
		OldNorthArabian = 102,
		OldPermic = 103,
		PahawhHmong = 104,
		Palmyrene = 105,
		PauCinHau = 106,
		PsalterPahlavi = 107,
		Siddham = 108,
		Tirhuta = 109,
		WarangCiti = 110,
		Ahom = 111,
		AnatolianHieroglyphs = 112,
		Hatran = 113,
		Multani = 114,
		OldHungarian = 115,
		Signwriting = 116
	}
	[CRepr, AllowDuplicates]
	public enum ShapeFlags
	{
		None = 0,
		RoundPositions = 1
	}
	[CRepr, AllowDuplicates]
	public enum ShowFlags
	{
		None = 0,
		Spaces = 1,
		LineBreaks = 2,
		Ignorables = 4
	}
	[CRepr, AllowDuplicates]
	public enum Stretch
	{
		UltraCondensed = 0,
		ExtraCondensed = 1,
		Condensed = 2,
		SemiCondensed = 3,
		Normal = 4,
		SemiExpanded = 5,
		Expanded = 6,
		ExtraExpanded = 7,
		UltraExpanded = 8
	}
	[CRepr, AllowDuplicates]
	public enum Style
	{
		Normal = 0,
		Oblique = 1,
		Italic = 2
	}
	[CRepr, AllowDuplicates]
	public enum TabAlign
	{
		Left = 0,
		Right = 1,
		Center = 2,
		Decimal = 3
	}
	[CRepr, AllowDuplicates]
	public enum TextTransform
	{
		None = 0,
		Lowercase = 1,
		Uppercase = 2,
		Capitalize = 3
	}
	[CRepr, AllowDuplicates]
	public enum Underline
	{
		None = 0,
		Single = 1,
		Double = 2,
		Low = 3,
		Error = 4,
		SingleLine = 5,
		DoubleLine = 6,
		ErrorLine = 7
	}
	[CRepr, AllowDuplicates]
	public enum Variant
	{
		Normal = 0,
		SmallCaps = 1,
		AllSmallCaps = 2,
		PetiteCaps = 3,
		AllPetiteCaps = 4,
		Unicase = 5,
		TitleCaps = 6
	}
	[CRepr, AllowDuplicates]
	public enum Weight
	{
		Thin = 100,
		Ultralight = 200,
		Light = 300,
		Semilight = 350,
		Book = 380,
		Normal = 400,
		Medium = 500,
		Semibold = 600,
		Bold = 700,
		Ultrabold = 800,
		Heavy = 900,
		Ultraheavy = 1000
	}
	[CRepr, AllowDuplicates]
	public enum WrapMode
	{
		Word = 0,
		Char = 1,
		WordChar = 2
	}
	public function void* AttrDataCopyFunc(void* user_data);
	public function c_int AttrFilterFunc(Attribute* attribute, void* user_data);
	public function c_int FontsetForeachFunc(Fontset* fontset, Font* font, void* user_data);
}
