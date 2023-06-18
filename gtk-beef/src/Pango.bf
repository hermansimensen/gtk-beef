namespace Pango;

using System;
using System.Interop;

using GLib;
using HarfBuzz;
using GObject;

class Pango
{
	public typealias Glyph = c_uint;
	public typealias GlyphUnit = c_int;
	public typealias LayoutRun = GlyphItem;
	public enum Alignment : c_int
	{
		PANGO_ALIGN_LEFT,
		PANGO_ALIGN_CENTER,
		PANGO_ALIGN_RIGHT
	}
	[CRepr]
	public struct Analysis
	{
		void* shape_engine;
		void* lang_engine;
		Font font;
		c_uchar level;
		c_uchar gravity;
		c_uchar flags;
		c_uchar script;
		Language language;
		GLib.SList extra_attrs;
	}
	[CRepr]
	public struct AttrClass
	{
		AttrType type;
	}
	[CRepr]
	public struct AttrColor
	{
		Attribute attr;
		Color color;
	}
	public function void* AttrDataCopyFunc(void* user_data);
	public function c_int AttrFilterFunc(Attribute attribute, void* user_data);
	[CRepr]
	public struct AttrFloat
	{
		Attribute attr;
		double value;
	}
	[CRepr]
	public struct AttrFontDesc
	{
		Attribute attr;
		FontDescription desc;
	}
	[CRepr]
	public struct AttrFontFeatures
	{
		Attribute attr;
		char8* features;
	}
	[CRepr]
	public struct AttrInt
	{
		Attribute attr;
		c_int value;
	}
	[CRepr]
	public struct AttrIterator
	{
	}
	[CRepr]
	public struct AttrLanguage
	{
		Attribute attr;
		Language value;
	}
	[CRepr]
	public struct AttrList
	{
	}
	[CRepr]
	public struct AttrShape
	{
		Attribute attr;
		Rectangle ink_rect;
		Rectangle logical_rect;
		void* data;
		AttrDataCopyFunc copy_func;
		GLib.DestroyNotify destroy_func;
	}
	[CRepr]
	public struct AttrSize
	{
		Attribute attr;
		c_int size;
		c_uint absolute;
	}
	[CRepr]
	public struct AttrString
	{
		Attribute attr;
		char8* value;
	}
	public enum AttrType : c_int
	{
		PANGO_ATTR_INVALID,
		PANGO_ATTR_LANGUAGE,
		PANGO_ATTR_FAMILY,
		PANGO_ATTR_STYLE,
		PANGO_ATTR_WEIGHT,
		PANGO_ATTR_VARIANT,
		PANGO_ATTR_STRETCH,
		PANGO_ATTR_SIZE,
		PANGO_ATTR_FONT_DESC,
		PANGO_ATTR_FOREGROUND,
		PANGO_ATTR_BACKGROUND,
		PANGO_ATTR_UNDERLINE,
		PANGO_ATTR_STRIKETHROUGH,
		PANGO_ATTR_RISE,
		PANGO_ATTR_SHAPE,
		PANGO_ATTR_SCALE,
		PANGO_ATTR_FALLBACK,
		PANGO_ATTR_LETTER_SPACING,
		PANGO_ATTR_UNDERLINE_COLOR,
		PANGO_ATTR_STRIKETHROUGH_COLOR,
		PANGO_ATTR_ABSOLUTE_SIZE,
		PANGO_ATTR_GRAVITY,
		PANGO_ATTR_GRAVITY_HINT,
		PANGO_ATTR_FONT_FEATURES,
		PANGO_ATTR_FOREGROUND_ALPHA,
		PANGO_ATTR_BACKGROUND_ALPHA,
		PANGO_ATTR_ALLOW_BREAKS,
		PANGO_ATTR_SHOW,
		PANGO_ATTR_INSERT_HYPHENS,
		PANGO_ATTR_OVERLINE,
		PANGO_ATTR_OVERLINE_COLOR,
		PANGO_ATTR_LINE_HEIGHT,
		PANGO_ATTR_ABSOLUTE_LINE_HEIGHT,
		PANGO_ATTR_TEXT_TRANSFORM,
		PANGO_ATTR_WORD,
		PANGO_ATTR_SENTENCE,
		PANGO_ATTR_BASELINE_SHIFT,
		PANGO_ATTR_FONT_SCALE
	}
	[CRepr]
	public struct Attribute
	{
		AttrClass klass;
		c_uint start_index;
		c_uint end_index;
	}
	public enum BaselineShift : c_int
	{
		PANGO_BASELINE_SHIFT_NONE,
		PANGO_BASELINE_SHIFT_SUPERSCRIPT,
		PANGO_BASELINE_SHIFT_SUBSCRIPT
	}
	public enum BidiType : c_int
	{
		PANGO_BIDI_TYPE_L,
		PANGO_BIDI_TYPE_LRE,
		PANGO_BIDI_TYPE_LRO,
		PANGO_BIDI_TYPE_R,
		PANGO_BIDI_TYPE_AL,
		PANGO_BIDI_TYPE_RLE,
		PANGO_BIDI_TYPE_RLO,
		PANGO_BIDI_TYPE_PDF,
		PANGO_BIDI_TYPE_EN,
		PANGO_BIDI_TYPE_ES,
		PANGO_BIDI_TYPE_ET,
		PANGO_BIDI_TYPE_AN,
		PANGO_BIDI_TYPE_CS,
		PANGO_BIDI_TYPE_NSM,
		PANGO_BIDI_TYPE_BN,
		PANGO_BIDI_TYPE_B,
		PANGO_BIDI_TYPE_S,
		PANGO_BIDI_TYPE_WS,
		PANGO_BIDI_TYPE_ON,
		PANGO_BIDI_TYPE_LRI,
		PANGO_BIDI_TYPE_RLI,
		PANGO_BIDI_TYPE_FSI,
		PANGO_BIDI_TYPE_PDI
	}
	[CRepr]
	public struct Color
	{
		c_ushort red;
		c_ushort green;
		c_ushort blue;
	}
	[CRepr]
	public struct Context;
	[LinkName("pango_context_new")]
	public static extern Context* ContextNew();
	[LinkName("pango_context_changed")]
	public static extern void ContextChanged(Context context);
	[LinkName("pango_context_get_base_dir")]
	public static extern Direction ContextGetBaseDir(Context context);
	[LinkName("pango_context_get_base_gravity")]
	public static extern Gravity ContextGetBaseGravity(Context context);
	[LinkName("pango_context_get_font_description")]
	public static extern FontDescription* ContextGetFontDescription(Context context);
	[LinkName("pango_context_get_font_map")]
	public static extern FontMap* ContextGetFontMap(Context context);
	[LinkName("pango_context_get_gravity")]
	public static extern Gravity ContextGetGravity(Context context);
	[LinkName("pango_context_get_gravity_hint")]
	public static extern GravityHint ContextGetGravityHint(Context context);
	[LinkName("pango_context_get_language")]
	public static extern Language* ContextGetLanguage(Context context);
	[LinkName("pango_context_get_matrix")]
	public static extern Matrix* ContextGetMatrix(Context context);
	[LinkName("pango_context_get_metrics")]
	public static extern FontMetrics* ContextGetMetrics(Context context, FontDescription desc, Language language);
	[LinkName("pango_context_get_round_glyph_positions")]
	public static extern c_int ContextGetRoundGlyphPositions(Context context);
	[LinkName("pango_context_get_serial")]
	public static extern c_uint ContextGetSerial(Context context);
	[LinkName("pango_context_list_families")]
	public static extern void ContextListFamilies(Context context, c_int n_families);
	[LinkName("pango_context_load_font")]
	public static extern Font* ContextLoadFont(Context context, FontDescription desc);
	[LinkName("pango_context_load_fontset")]
	public static extern Fontset* ContextLoadFontset(Context context, FontDescription desc, Language language);
	[LinkName("pango_context_set_base_dir")]
	public static extern void ContextSetBaseDir(Context context, Direction direction);
	[LinkName("pango_context_set_base_gravity")]
	public static extern void ContextSetBaseGravity(Context context, Gravity gravity);
	[LinkName("pango_context_set_font_description")]
	public static extern void ContextSetFontDescription(Context context, FontDescription desc);
	[LinkName("pango_context_set_font_map")]
	public static extern void ContextSetFontMap(Context context, FontMap font_map);
	[LinkName("pango_context_set_gravity_hint")]
	public static extern void ContextSetGravityHint(Context context, GravityHint hint);
	[LinkName("pango_context_set_language")]
	public static extern void ContextSetLanguage(Context context, Language language);
	[LinkName("pango_context_set_matrix")]
	public static extern void ContextSetMatrix(Context context, Matrix matrix);
	[LinkName("pango_context_set_round_glyph_positions")]
	public static extern void ContextSetRoundGlyphPositions(Context context, c_int round_positions);
	[CRepr]
	public struct ContextClass
	{
	}
	[CRepr]
	public struct Coverage;
	[LinkName("pango_coverage_new")]
	public static extern Coverage* CoverageNew();
	[LinkName("pango_coverage_copy")]
	public static extern Coverage* CoverageCopy(Coverage coverage);
	[LinkName("pango_coverage_get")]
	public static extern CoverageLevel CoverageGet(Coverage coverage, c_int index_);
	[LinkName("pango_coverage_max")]
	public static extern void CoverageMax(Coverage coverage, Coverage other);
	[LinkName("pango_coverage_ref")]
	public static extern Coverage* CoverageRef(Coverage coverage);
	[LinkName("pango_coverage_set")]
	public static extern void CoverageSet(Coverage coverage, c_int index_, CoverageLevel level);
	[LinkName("pango_coverage_to_bytes")]
	public static extern void CoverageToBytes(Coverage coverage, c_int n_bytes);
	[LinkName("pango_coverage_unref")]
	public static extern void CoverageUnref(Coverage coverage);
	public enum CoverageLevel : c_int
	{
		PANGO_COVERAGE_NONE,
		PANGO_COVERAGE_FALLBACK,
		PANGO_COVERAGE_APPROXIMATE,
		PANGO_COVERAGE_EXACT
	}
	public enum Direction : c_int
	{
		PANGO_DIRECTION_LTR,
		PANGO_DIRECTION_RTL,
		PANGO_DIRECTION_TTB_LTR,
		PANGO_DIRECTION_TTB_RTL,
		PANGO_DIRECTION_WEAK_LTR,
		PANGO_DIRECTION_WEAK_RTL,
		PANGO_DIRECTION_NEUTRAL
	}
	public enum EllipsizeMode : c_int
	{
		PANGO_ELLIPSIZE_NONE,
		PANGO_ELLIPSIZE_START,
		PANGO_ELLIPSIZE_MIDDLE,
		PANGO_ELLIPSIZE_END
	}
	[CRepr]
	public struct Font;
	[LinkName("pango_font_describe")]
	public static extern FontDescription* FontDescribe(Font font);
	[LinkName("pango_font_describe_with_absolute_size")]
	public static extern FontDescription* FontDescribeWithAbsoluteSize(Font font);
	[LinkName("pango_font_get_coverage")]
	public static extern Coverage* FontGetCoverage(Font font, Language language);
	[LinkName("pango_font_get_face")]
	public static extern FontFace* FontGetFace(Font font);
	[LinkName("pango_font_get_features")]
	public static extern void FontGetFeatures(Font font, void* features, c_uint len, c_uint num_features);
	[LinkName("pango_font_get_font_map")]
	public static extern FontMap* FontGetFontMap(Font font);
	[LinkName("pango_font_get_glyph_extents")]
	public static extern void FontGetGlyphExtents(Font font, Glyph glyph, Rectangle ink_rect, Rectangle logical_rect);
	[LinkName("pango_font_get_hb_font")]
	public static extern HarfBuzz.font_t FontGetHbFont(Font font);
	[LinkName("pango_font_get_languages")]
	public static extern Language FontGetLanguages(Font font);
	[LinkName("pango_font_get_metrics")]
	public static extern FontMetrics* FontGetMetrics(Font font, Language language);
	[LinkName("pango_font_has_char")]
	public static extern c_int FontHasChar(Font font, c_uint wc);
	[LinkName("pango_font_serialize")]
	public static extern GLib.Bytes* FontSerialize(Font font);
	[CRepr]
	public struct FontClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FontDescription
	{
	}
	[CRepr]
	public struct FontFace;
	[LinkName("pango_font_face_describe")]
	public static extern FontDescription* FontFaceDescribe(FontFace face);
	[LinkName("pango_font_face_get_face_name")]
	public static extern char8** FontFaceGetFaceName(FontFace face);
	[LinkName("pango_font_face_get_family")]
	public static extern FontFamily* FontFaceGetFamily(FontFace face);
	[LinkName("pango_font_face_is_synthesized")]
	public static extern c_int FontFaceIsSynthesized(FontFace face);
	[LinkName("pango_font_face_list_sizes")]
	public static extern void FontFaceListSizes(FontFace face, c_int n_sizes);
	[CRepr]
	public struct FontFaceClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FontFamily;
	[LinkName("pango_font_family_get_face")]
	public static extern FontFace* FontFamilyGetFace(FontFamily family, char8* name);
	[LinkName("pango_font_family_get_name")]
	public static extern char8** FontFamilyGetName(FontFamily family);
	[LinkName("pango_font_family_is_monospace")]
	public static extern c_int FontFamilyIsMonospace(FontFamily family);
	[LinkName("pango_font_family_is_variable")]
	public static extern c_int FontFamilyIsVariable(FontFamily family);
	[LinkName("pango_font_family_list_faces")]
	public static extern void FontFamilyListFaces(FontFamily family, c_int n_faces);
	[CRepr]
	public struct FontFamilyClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FontMap;
	[LinkName("pango_font_map_changed")]
	public static extern void FontMapChanged(FontMap fontmap);
	[LinkName("pango_font_map_create_context")]
	public static extern Context* FontMapCreateContext(FontMap fontmap);
	[LinkName("pango_font_map_get_family")]
	public static extern FontFamily* FontMapGetFamily(FontMap fontmap, char8* name);
	[LinkName("pango_font_map_get_serial")]
	public static extern c_uint FontMapGetSerial(FontMap fontmap);
	[LinkName("pango_font_map_list_families")]
	public static extern void FontMapListFamilies(FontMap fontmap, c_int n_families);
	[LinkName("pango_font_map_load_font")]
	public static extern Font* FontMapLoadFont(FontMap fontmap, Context context, FontDescription desc);
	[LinkName("pango_font_map_load_fontset")]
	public static extern Fontset* FontMapLoadFontset(FontMap fontmap, Context context, FontDescription desc, Language language);
	[CRepr]
	public struct FontMapClass
	{
		GObject.ObjectClass parent_class;
		char8* shape_engine_type;
	}
	[CRepr]
	public struct FontMask
	{
		public const int PANGO_FONT_MASK_FAMILY = 1;
		public const int PANGO_FONT_MASK_STYLE = 2;
		public const int PANGO_FONT_MASK_VARIANT = 4;
		public const int PANGO_FONT_MASK_WEIGHT = 8;
		public const int PANGO_FONT_MASK_STRETCH = 16;
		public const int PANGO_FONT_MASK_SIZE = 32;
		public const int PANGO_FONT_MASK_GRAVITY = 64;
		public const int PANGO_FONT_MASK_VARIATIONS = 128;
	}
	[CRepr]
	public struct FontMetrics
	{
		c_uint ref_count;
		c_int ascent;
		c_int descent;
		c_int height;
		c_int approximate_char_width;
		c_int approximate_digit_width;
		c_int underline_position;
		c_int underline_thickness;
		c_int strikethrough_position;
		c_int strikethrough_thickness;
	}
	public enum FontScale : c_int
	{
		PANGO_FONT_SCALE_NONE,
		PANGO_FONT_SCALE_SUPERSCRIPT,
		PANGO_FONT_SCALE_SUBSCRIPT,
		PANGO_FONT_SCALE_SMALL_CAPS
	}
	[CRepr]
	public struct Fontset;
	[LinkName("pango_fontset_foreach")]
	public static extern void FontsetForeach(Fontset fontset, FontsetForeachFunc func, void* data);
	[LinkName("pango_fontset_get_font")]
	public static extern Font* FontsetGetFont(Fontset fontset, c_uint wc);
	[LinkName("pango_fontset_get_metrics")]
	public static extern FontMetrics* FontsetGetMetrics(Fontset fontset);
	[CRepr]
	public struct FontsetClass
	{
		GObject.ObjectClass parent_class;
	}
	public function c_int FontsetForeachFunc(Fontset fontset, Font font, void* user_data);
	[CRepr]
	public struct FontsetSimple;
	[LinkName("pango_fontset_simple_new")]
	public static extern FontsetSimple* FontsetSimpleNew(Language language);
	[LinkName("pango_fontset_simple_append")]
	public static extern void FontsetSimpleAppend(FontsetSimple fontset, Font font);
	[LinkName("pango_fontset_simple_size")]
	public static extern c_int FontsetSimpleSize(FontsetSimple fontset);
	[CRepr]
	public struct FontsetSimpleClass
	{
	}
	[CRepr]
	public struct GlyphGeometry
	{
		GlyphUnit width;
		GlyphUnit x_offset;
		GlyphUnit y_offset;
	}
	[CRepr]
	public struct GlyphInfo
	{
		Glyph glyph;
		GlyphGeometry geometry;
		GlyphVisAttr attr;
	}
	[CRepr]
	public struct GlyphItem
	{
		Item item;
		GlyphString glyphs;
		c_int y_offset;
		c_int start_x_offset;
		c_int end_x_offset;
	}
	[CRepr]
	public struct GlyphItemIter
	{
		GlyphItem glyph_item;
		char8* text;
		c_int start_glyph;
		c_int start_index;
		c_int start_char;
		c_int end_glyph;
		c_int end_index;
		c_int end_char;
	}
	[CRepr]
	public struct GlyphString
	{
		c_int num_glyphs;
		c_int log_clusters;
		c_int space;
	}
	[CRepr]
	public struct GlyphVisAttr
	{
		c_uint is_cluster_start;
	}
	public enum Gravity : c_int
	{
		PANGO_GRAVITY_SOUTH,
		PANGO_GRAVITY_EAST,
		PANGO_GRAVITY_NORTH,
		PANGO_GRAVITY_WEST,
		PANGO_GRAVITY_AUTO
	}
	public enum GravityHint : c_int
	{
		PANGO_GRAVITY_HINT_NATURAL,
		PANGO_GRAVITY_HINT_STRONG,
		PANGO_GRAVITY_HINT_LINE
	}
	[CRepr]
	public struct Item
	{
		c_int offset;
		c_int length;
		c_int num_chars;
		Analysis analysis;
	}
	[CRepr]
	public struct Language
	{
	}
	[CRepr]
	public struct Layout;
	[LinkName("pango_layout_new")]
	public static extern Layout* LayoutNew(Context context);
	[LinkName("pango_layout_context_changed")]
	public static extern void LayoutContextChanged(Layout layout);
	[LinkName("pango_layout_copy")]
	public static extern Layout* LayoutCopy(Layout src);
	[LinkName("pango_layout_get_alignment")]
	public static extern Alignment LayoutGetAlignment(Layout layout);
	[LinkName("pango_layout_get_attributes")]
	public static extern AttrList* LayoutGetAttributes(Layout layout);
	[LinkName("pango_layout_get_auto_dir")]
	public static extern c_int LayoutGetAutoDir(Layout layout);
	[LinkName("pango_layout_get_baseline")]
	public static extern c_int LayoutGetBaseline(Layout layout);
	[LinkName("pango_layout_get_caret_pos")]
	public static extern void LayoutGetCaretPos(Layout layout, c_int index_, Rectangle strong_pos, Rectangle weak_pos);
	[LinkName("pango_layout_get_character_count")]
	public static extern c_int LayoutGetCharacterCount(Layout layout);
	[LinkName("pango_layout_get_context")]
	public static extern Context* LayoutGetContext(Layout layout);
	[LinkName("pango_layout_get_cursor_pos")]
	public static extern void LayoutGetCursorPos(Layout layout, c_int index_, Rectangle strong_pos, Rectangle weak_pos);
	[LinkName("pango_layout_get_direction")]
	public static extern Direction LayoutGetDirection(Layout layout, c_int index);
	[LinkName("pango_layout_get_ellipsize")]
	public static extern EllipsizeMode LayoutGetEllipsize(Layout layout);
	[LinkName("pango_layout_get_extents")]
	public static extern void LayoutGetExtents(Layout layout, Rectangle ink_rect, Rectangle logical_rect);
	[LinkName("pango_layout_get_font_description")]
	public static extern FontDescription* LayoutGetFontDescription(Layout layout);
	[LinkName("pango_layout_get_height")]
	public static extern c_int LayoutGetHeight(Layout layout);
	[LinkName("pango_layout_get_indent")]
	public static extern c_int LayoutGetIndent(Layout layout);
	[LinkName("pango_layout_get_iter")]
	public static extern LayoutIter* LayoutGetIter(Layout layout);
	[LinkName("pango_layout_get_justify")]
	public static extern c_int LayoutGetJustify(Layout layout);
	[LinkName("pango_layout_get_justify_last_line")]
	public static extern c_int LayoutGetJustifyLastLine(Layout layout);
	[LinkName("pango_layout_get_line")]
	public static extern LayoutLine* LayoutGetLine(Layout layout, c_int line);
	[LinkName("pango_layout_get_line_count")]
	public static extern c_int LayoutGetLineCount(Layout layout);
	[LinkName("pango_layout_get_line_readonly")]
	public static extern LayoutLine* LayoutGetLineReadonly(Layout layout, c_int line);
	[LinkName("pango_layout_get_line_spacing")]
	public static extern float LayoutGetLineSpacing(Layout layout);
	[LinkName("pango_layout_get_lines")]
	public static extern GLib.SList* LayoutGetLines(Layout layout);
	[LinkName("pango_layout_get_lines_readonly")]
	public static extern GLib.SList* LayoutGetLinesReadonly(Layout layout);
	[LinkName("pango_layout_get_log_attrs")]
	public static extern void LayoutGetLogAttrs(Layout layout, c_int n_attrs);
	[LinkName("pango_layout_get_log_attrs_readonly")]
	public static extern LogAttr LayoutGetLogAttrsReadonly(Layout layout, c_int n_attrs);
	[LinkName("pango_layout_get_pixel_extents")]
	public static extern void LayoutGetPixelExtents(Layout layout, Rectangle ink_rect, Rectangle logical_rect);
	[LinkName("pango_layout_get_pixel_size")]
	public static extern void LayoutGetPixelSize(Layout layout, c_int width, c_int height);
	[LinkName("pango_layout_get_serial")]
	public static extern c_uint LayoutGetSerial(Layout layout);
	[LinkName("pango_layout_get_single_paragraph_mode")]
	public static extern c_int LayoutGetSingleParagraphMode(Layout layout);
	[LinkName("pango_layout_get_size")]
	public static extern void LayoutGetSize(Layout layout, c_int width, c_int height);
	[LinkName("pango_layout_get_spacing")]
	public static extern c_int LayoutGetSpacing(Layout layout);
	[LinkName("pango_layout_get_tabs")]
	public static extern TabArray* LayoutGetTabs(Layout layout);
	[LinkName("pango_layout_get_text")]
	public static extern char8** LayoutGetText(Layout layout);
	[LinkName("pango_layout_get_unknown_glyphs_count")]
	public static extern c_int LayoutGetUnknownGlyphsCount(Layout layout);
	[LinkName("pango_layout_get_width")]
	public static extern c_int LayoutGetWidth(Layout layout);
	[LinkName("pango_layout_get_wrap")]
	public static extern WrapMode LayoutGetWrap(Layout layout);
	[LinkName("pango_layout_index_to_line_x")]
	public static extern void LayoutIndexToLineX(Layout layout, c_int index_, c_int trailing, c_int line, c_int x_pos);
	[LinkName("pango_layout_index_to_pos")]
	public static extern void LayoutIndexToPos(Layout layout, c_int index_, Rectangle pos);
	[LinkName("pango_layout_is_ellipsized")]
	public static extern c_int LayoutIsEllipsized(Layout layout);
	[LinkName("pango_layout_is_wrapped")]
	public static extern c_int LayoutIsWrapped(Layout layout);
	[LinkName("pango_layout_move_cursor_visually")]
	public static extern void LayoutMoveCursorVisually(Layout layout, c_int strong, c_int old_index, c_int old_trailing, c_int direction, c_int new_index, c_int new_trailing);
	[LinkName("pango_layout_serialize")]
	public static extern GLib.Bytes* LayoutSerialize(Layout layout, LayoutSerializeFlags flags);
	[LinkName("pango_layout_set_alignment")]
	public static extern void LayoutSetAlignment(Layout layout, Alignment alignment);
	[LinkName("pango_layout_set_attributes")]
	public static extern void LayoutSetAttributes(Layout layout, AttrList attrs);
	[LinkName("pango_layout_set_auto_dir")]
	public static extern void LayoutSetAutoDir(Layout layout, c_int auto_dir);
	[LinkName("pango_layout_set_ellipsize")]
	public static extern void LayoutSetEllipsize(Layout layout, EllipsizeMode ellipsize);
	[LinkName("pango_layout_set_font_description")]
	public static extern void LayoutSetFontDescription(Layout layout, FontDescription desc);
	[LinkName("pango_layout_set_height")]
	public static extern void LayoutSetHeight(Layout layout, c_int height);
	[LinkName("pango_layout_set_indent")]
	public static extern void LayoutSetIndent(Layout layout, c_int indent);
	[LinkName("pango_layout_set_justify")]
	public static extern void LayoutSetJustify(Layout layout, c_int justify);
	[LinkName("pango_layout_set_justify_last_line")]
	public static extern void LayoutSetJustifyLastLine(Layout layout, c_int justify);
	[LinkName("pango_layout_set_line_spacing")]
	public static extern void LayoutSetLineSpacing(Layout layout, float factor);
	[LinkName("pango_layout_set_markup")]
	public static extern void LayoutSetMarkup(Layout layout, char8* markup, c_int length);
	[LinkName("pango_layout_set_markup_with_accel")]
	public static extern void LayoutSetMarkupWithAccel(Layout layout, char8* markup, c_int length, c_uint accel_marker, c_uint accel_char);
	[LinkName("pango_layout_set_single_paragraph_mode")]
	public static extern void LayoutSetSingleParagraphMode(Layout layout, c_int setting);
	[LinkName("pango_layout_set_spacing")]
	public static extern void LayoutSetSpacing(Layout layout, c_int spacing);
	[LinkName("pango_layout_set_tabs")]
	public static extern void LayoutSetTabs(Layout layout, TabArray tabs);
	[LinkName("pango_layout_set_text")]
	public static extern void LayoutSetText(Layout layout, char8* text, c_int length);
	[LinkName("pango_layout_set_width")]
	public static extern void LayoutSetWidth(Layout layout, c_int width);
	[LinkName("pango_layout_set_wrap")]
	public static extern void LayoutSetWrap(Layout layout, WrapMode wrap);
	[LinkName("pango_layout_write_to_file")]
	public static extern c_int LayoutWriteToFile(Layout layout, LayoutSerializeFlags flags, char8* filename);
	[LinkName("pango_layout_xy_to_index")]
	public static extern c_int LayoutXyToIndex(Layout layout, c_int x, c_int y, c_int index_, c_int trailing);
	[CRepr]
	public struct LayoutClass
	{
	}
	public enum LayoutDeserializeError : c_int
	{
		PANGO_LAYOUT_DESERIALIZE_INVALID,
		PANGO_LAYOUT_DESERIALIZE_INVALID_VALUE,
		PANGO_LAYOUT_DESERIALIZE_MISSING_VALUE
	}
	[CRepr]
	public struct LayoutDeserializeFlags
	{
		public const int PANGO_LAYOUT_DESERIALIZE_DEFAULT = 0;
		public const int PANGO_LAYOUT_DESERIALIZE_CONTEXT = 1;
	}
	[CRepr]
	public struct LayoutIter
	{
	}
	[CRepr]
	public struct LayoutLine
	{
		Layout layout;
		c_int start_index;
		c_int length;
		GLib.SList runs;
		c_uint is_paragraph_start;
		c_uint resolved_dir;
	}
	[CRepr]
	public struct LayoutSerializeFlags
	{
		public const int PANGO_LAYOUT_SERIALIZE_DEFAULT = 0;
		public const int PANGO_LAYOUT_SERIALIZE_CONTEXT = 1;
		public const int PANGO_LAYOUT_SERIALIZE_OUTPUT = 2;
	}
	[CRepr]
	public struct LogAttr
	{
		c_uint is_line_break;
		c_uint is_mandatory_break;
		c_uint is_char_break;
		c_uint is_white;
		c_uint is_cursor_position;
		c_uint is_word_start;
		c_uint is_word_end;
		c_uint is_sentence_boundary;
		c_uint is_sentence_start;
		c_uint is_sentence_end;
		c_uint backspace_deletes_character;
		c_uint is_expandable_space;
		c_uint is_word_boundary;
		c_uint break_inserts_hyphen;
		c_uint break_removes_preceding;
		c_uint reserved;
	}
	[CRepr]
	public struct Matrix
	{
		double xx;
		double xy;
		double yx;
		double yy;
		double x0;
		double y0;
	}
	public enum Overline : c_int
	{
		PANGO_OVERLINE_NONE,
		PANGO_OVERLINE_SINGLE
	}
	[CRepr]
	public struct Rectangle
	{
		c_int x;
		c_int y;
		c_int width;
		c_int height;
	}
	public enum RenderPart : c_int
	{
		PANGO_RENDER_PART_FOREGROUND,
		PANGO_RENDER_PART_BACKGROUND,
		PANGO_RENDER_PART_UNDERLINE,
		PANGO_RENDER_PART_STRIKETHROUGH,
		PANGO_RENDER_PART_OVERLINE
	}
	[CRepr]
	public struct Renderer;
	[LinkName("pango_renderer_activate")]
	public static extern void RendererActivate(Renderer renderer);
	[LinkName("pango_renderer_deactivate")]
	public static extern void RendererDeactivate(Renderer renderer);
	[LinkName("pango_renderer_draw_error_underline")]
	public static extern void RendererDrawErrorUnderline(Renderer renderer, c_int x, c_int y, c_int width, c_int height);
	[LinkName("pango_renderer_draw_glyph")]
	public static extern void RendererDrawGlyph(Renderer renderer, Font font, Glyph glyph, double x, double y);
	[LinkName("pango_renderer_draw_glyph_item")]
	public static extern void RendererDrawGlyphItem(Renderer renderer, char8* text, GlyphItem glyph_item, c_int x, c_int y);
	[LinkName("pango_renderer_draw_glyphs")]
	public static extern void RendererDrawGlyphs(Renderer renderer, Font font, GlyphString glyphs, c_int x, c_int y);
	[LinkName("pango_renderer_draw_layout")]
	public static extern void RendererDrawLayout(Renderer renderer, Layout layout, c_int x, c_int y);
	[LinkName("pango_renderer_draw_layout_line")]
	public static extern void RendererDrawLayoutLine(Renderer renderer, LayoutLine line, c_int x, c_int y);
	[LinkName("pango_renderer_draw_rectangle")]
	public static extern void RendererDrawRectangle(Renderer renderer, RenderPart part, c_int x, c_int y, c_int width, c_int height);
	[LinkName("pango_renderer_draw_trapezoid")]
	public static extern void RendererDrawTrapezoid(Renderer renderer, RenderPart part, double y1_, double x11, double x21, double y2, double x12, double x22);
	[LinkName("pango_renderer_get_alpha")]
	public static extern c_ushort RendererGetAlpha(Renderer renderer, RenderPart part);
	[LinkName("pango_renderer_get_color")]
	public static extern Color* RendererGetColor(Renderer renderer, RenderPart part);
	[LinkName("pango_renderer_get_layout")]
	public static extern Layout* RendererGetLayout(Renderer renderer);
	[LinkName("pango_renderer_get_layout_line")]
	public static extern LayoutLine* RendererGetLayoutLine(Renderer renderer);
	[LinkName("pango_renderer_get_matrix")]
	public static extern Matrix* RendererGetMatrix(Renderer renderer);
	[LinkName("pango_renderer_part_changed")]
	public static extern void RendererPartChanged(Renderer renderer, RenderPart part);
	[LinkName("pango_renderer_set_alpha")]
	public static extern void RendererSetAlpha(Renderer renderer, RenderPart part, c_ushort alpha);
	[LinkName("pango_renderer_set_color")]
	public static extern void RendererSetColor(Renderer renderer, RenderPart part, Color color);
	[LinkName("pango_renderer_set_matrix")]
	public static extern void RendererSetMatrix(Renderer renderer, Matrix matrix);
	[CRepr]
	public struct RendererClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct RendererPrivate
	{
	}
	public enum Script : c_int
	{
		PANGO_SCRIPT_INVALID_CODE,
		PANGO_SCRIPT_COMMON,
		PANGO_SCRIPT_INHERITED,
		PANGO_SCRIPT_ARABIC,
		PANGO_SCRIPT_ARMENIAN,
		PANGO_SCRIPT_BENGALI,
		PANGO_SCRIPT_BOPOMOFO,
		PANGO_SCRIPT_CHEROKEE,
		PANGO_SCRIPT_COPTIC,
		PANGO_SCRIPT_CYRILLIC,
		PANGO_SCRIPT_DESERET,
		PANGO_SCRIPT_DEVANAGARI,
		PANGO_SCRIPT_ETHIOPIC,
		PANGO_SCRIPT_GEORGIAN,
		PANGO_SCRIPT_GOTHIC,
		PANGO_SCRIPT_GREEK,
		PANGO_SCRIPT_GUJARATI,
		PANGO_SCRIPT_GURMUKHI,
		PANGO_SCRIPT_HAN,
		PANGO_SCRIPT_HANGUL,
		PANGO_SCRIPT_HEBREW,
		PANGO_SCRIPT_HIRAGANA,
		PANGO_SCRIPT_KANNADA,
		PANGO_SCRIPT_KATAKANA,
		PANGO_SCRIPT_KHMER,
		PANGO_SCRIPT_LAO,
		PANGO_SCRIPT_LATIN,
		PANGO_SCRIPT_MALAYALAM,
		PANGO_SCRIPT_MONGOLIAN,
		PANGO_SCRIPT_MYANMAR,
		PANGO_SCRIPT_OGHAM,
		PANGO_SCRIPT_OLD_ITALIC,
		PANGO_SCRIPT_ORIYA,
		PANGO_SCRIPT_RUNIC,
		PANGO_SCRIPT_SINHALA,
		PANGO_SCRIPT_SYRIAC,
		PANGO_SCRIPT_TAMIL,
		PANGO_SCRIPT_TELUGU,
		PANGO_SCRIPT_THAANA,
		PANGO_SCRIPT_THAI,
		PANGO_SCRIPT_TIBETAN,
		PANGO_SCRIPT_CANADIAN_ABORIGINAL,
		PANGO_SCRIPT_YI,
		PANGO_SCRIPT_TAGALOG,
		PANGO_SCRIPT_HANUNOO,
		PANGO_SCRIPT_BUHID,
		PANGO_SCRIPT_TAGBANWA,
		PANGO_SCRIPT_BRAILLE,
		PANGO_SCRIPT_CYPRIOT,
		PANGO_SCRIPT_LIMBU,
		PANGO_SCRIPT_OSMANYA,
		PANGO_SCRIPT_SHAVIAN,
		PANGO_SCRIPT_LINEAR_B,
		PANGO_SCRIPT_TAI_LE,
		PANGO_SCRIPT_UGARITIC,
		PANGO_SCRIPT_NEW_TAI_LUE,
		PANGO_SCRIPT_BUGINESE,
		PANGO_SCRIPT_GLAGOLITIC,
		PANGO_SCRIPT_TIFINAGH,
		PANGO_SCRIPT_SYLOTI_NAGRI,
		PANGO_SCRIPT_OLD_PERSIAN,
		PANGO_SCRIPT_KHAROSHTHI,
		PANGO_SCRIPT_UNKNOWN,
		PANGO_SCRIPT_BALINESE,
		PANGO_SCRIPT_CUNEIFORM,
		PANGO_SCRIPT_PHOENICIAN,
		PANGO_SCRIPT_PHAGS_PA,
		PANGO_SCRIPT_NKO,
		PANGO_SCRIPT_KAYAH_LI,
		PANGO_SCRIPT_LEPCHA,
		PANGO_SCRIPT_REJANG,
		PANGO_SCRIPT_SUNDANESE,
		PANGO_SCRIPT_SAURASHTRA,
		PANGO_SCRIPT_CHAM,
		PANGO_SCRIPT_OL_CHIKI,
		PANGO_SCRIPT_VAI,
		PANGO_SCRIPT_CARIAN,
		PANGO_SCRIPT_LYCIAN,
		PANGO_SCRIPT_LYDIAN,
		PANGO_SCRIPT_BATAK,
		PANGO_SCRIPT_BRAHMI,
		PANGO_SCRIPT_MANDAIC,
		PANGO_SCRIPT_CHAKMA,
		PANGO_SCRIPT_MEROITIC_CURSIVE,
		PANGO_SCRIPT_MEROITIC_HIEROGLYPHS,
		PANGO_SCRIPT_MIAO,
		PANGO_SCRIPT_SHARADA,
		PANGO_SCRIPT_SORA_SOMPENG,
		PANGO_SCRIPT_TAKRI,
		PANGO_SCRIPT_BASSA_VAH,
		PANGO_SCRIPT_CAUCASIAN_ALBANIAN,
		PANGO_SCRIPT_DUPLOYAN,
		PANGO_SCRIPT_ELBASAN,
		PANGO_SCRIPT_GRANTHA,
		PANGO_SCRIPT_KHOJKI,
		PANGO_SCRIPT_KHUDAWADI,
		PANGO_SCRIPT_LINEAR_A,
		PANGO_SCRIPT_MAHAJANI,
		PANGO_SCRIPT_MANICHAEAN,
		PANGO_SCRIPT_MENDE_KIKAKUI,
		PANGO_SCRIPT_MODI,
		PANGO_SCRIPT_MRO,
		PANGO_SCRIPT_NABATAEAN,
		PANGO_SCRIPT_OLD_NORTH_ARABIAN,
		PANGO_SCRIPT_OLD_PERMIC,
		PANGO_SCRIPT_PAHAWH_HMONG,
		PANGO_SCRIPT_PALMYRENE,
		PANGO_SCRIPT_PAU_CIN_HAU,
		PANGO_SCRIPT_PSALTER_PAHLAVI,
		PANGO_SCRIPT_SIDDHAM,
		PANGO_SCRIPT_TIRHUTA,
		PANGO_SCRIPT_WARANG_CITI,
		PANGO_SCRIPT_AHOM,
		PANGO_SCRIPT_ANATOLIAN_HIEROGLYPHS,
		PANGO_SCRIPT_HATRAN,
		PANGO_SCRIPT_MULTANI,
		PANGO_SCRIPT_OLD_HUNGARIAN,
		PANGO_SCRIPT_SIGNWRITING
	}
	[CRepr]
	public struct ScriptIter
	{
	}
	[CRepr]
	public struct ShapeFlags
	{
		public const int PANGO_SHAPE_NONE = 0;
		public const int PANGO_SHAPE_ROUND_POSITIONS = 1;
	}
	[CRepr]
	public struct ShowFlags
	{
		public const int PANGO_SHOW_NONE = 0;
		public const int PANGO_SHOW_SPACES = 1;
		public const int PANGO_SHOW_LINE_BREAKS = 2;
		public const int PANGO_SHOW_IGNORABLES = 4;
	}
	public enum Stretch : c_int
	{
		PANGO_STRETCH_ULTRA_CONDENSED,
		PANGO_STRETCH_EXTRA_CONDENSED,
		PANGO_STRETCH_CONDENSED,
		PANGO_STRETCH_SEMI_CONDENSED,
		PANGO_STRETCH_NORMAL,
		PANGO_STRETCH_SEMI_EXPANDED,
		PANGO_STRETCH_EXPANDED,
		PANGO_STRETCH_EXTRA_EXPANDED,
		PANGO_STRETCH_ULTRA_EXPANDED
	}
	public enum Style : c_int
	{
		PANGO_STYLE_NORMAL,
		PANGO_STYLE_OBLIQUE,
		PANGO_STYLE_ITALIC
	}
	public enum TabAlign : c_int
	{
		PANGO_TAB_LEFT,
		PANGO_TAB_RIGHT,
		PANGO_TAB_CENTER,
		PANGO_TAB_DECIMAL
	}
	[CRepr]
	public struct TabArray
	{
	}
	public enum TextTransform : c_int
	{
		PANGO_TEXT_TRANSFORM_NONE,
		PANGO_TEXT_TRANSFORM_LOWERCASE,
		PANGO_TEXT_TRANSFORM_UPPERCASE,
		PANGO_TEXT_TRANSFORM_CAPITALIZE
	}
	public enum Underline : c_int
	{
		PANGO_UNDERLINE_NONE,
		PANGO_UNDERLINE_SINGLE,
		PANGO_UNDERLINE_DOUBLE,
		PANGO_UNDERLINE_LOW,
		PANGO_UNDERLINE_ERROR,
		PANGO_UNDERLINE_SINGLE_LINE,
		PANGO_UNDERLINE_DOUBLE_LINE,
		PANGO_UNDERLINE_ERROR_LINE
	}
	public enum Variant : c_int
	{
		PANGO_VARIANT_NORMAL,
		PANGO_VARIANT_SMALL_CAPS,
		PANGO_VARIANT_ALL_SMALL_CAPS,
		PANGO_VARIANT_PETITE_CAPS,
		PANGO_VARIANT_ALL_PETITE_CAPS,
		PANGO_VARIANT_UNICASE,
		PANGO_VARIANT_TITLE_CAPS
	}
	public enum Weight : c_int
	{
		PANGO_WEIGHT_THIN,
		PANGO_WEIGHT_ULTRALIGHT,
		PANGO_WEIGHT_LIGHT,
		PANGO_WEIGHT_SEMILIGHT,
		PANGO_WEIGHT_BOOK,
		PANGO_WEIGHT_NORMAL,
		PANGO_WEIGHT_MEDIUM,
		PANGO_WEIGHT_SEMIBOLD,
		PANGO_WEIGHT_BOLD,
		PANGO_WEIGHT_ULTRABOLD,
		PANGO_WEIGHT_HEAVY,
		PANGO_WEIGHT_ULTRAHEAVY
	}
	public enum WrapMode : c_int
	{
		PANGO_WRAP_WORD,
		PANGO_WRAP_CHAR,
		PANGO_WRAP_WORD_CHAR
	}
}