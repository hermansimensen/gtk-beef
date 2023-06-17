namespace Pango;

using System;
using System.Interop;

using static Gio.Gio;
using static GLib.GLib;
using static GObject.GObject;

class Pango
{
	public typealias PangoGlyph = c_uint;
	public typealias PangoGlyphUnit = c_int;
	public typealias PangoLayoutRun = PangoGlyphItem;
	public enum PangoAlignment : c_int
	{
		PANGO_ALIGN_LEFT,
		PANGO_ALIGN_CENTER,
		PANGO_ALIGN_RIGHT
	}
	[CRepr]
	public struct PangoAnalysis
	{
		void* shape_engine;
		void* lang_engine;
		PangoFont* font;
		c_uchar level;
		c_uchar gravity;
		c_uchar flags;
		c_uchar script;
		PangoLanguage* language;
		GSList* extra_attrs;
	}
	[CRepr]
	public struct PangoAttrClass
	{
		PangoAttrType type;
	}
	[CRepr]
	public struct PangoAttrColor
	{
		PangoAttribute attr;
		PangoColor color;
	}
	public function void* PangoAttrDataCopyFunc(void* user_data);
	public function c_int PangoAttrFilterFunc(PangoAttribute* attribute, void* user_data);
	[CRepr]
	public struct PangoAttrFloat
	{
		PangoAttribute attr;
		double value;
	}
	[CRepr]
	public struct PangoAttrFontDesc
	{
		PangoAttribute attr;
		PangoFontDescription* desc;
	}
	[CRepr]
	public struct PangoAttrFontFeatures
	{
		PangoAttribute attr;
		c_char* features;
	}
	[CRepr]
	public struct PangoAttrInt
	{
		PangoAttribute attr;
		c_int value;
	}
	[CRepr]
	public struct PangoAttrIterator
	{
	}
	[CRepr]
	public struct PangoAttrLanguage
	{
		PangoAttribute attr;
		PangoLanguage* value;
	}
	[CRepr]
	public struct PangoAttrList
	{
	}
	[CRepr]
	public struct PangoAttrShape
	{
		PangoAttribute attr;
		PangoRectangle ink_rect;
		PangoRectangle logical_rect;
		void* data;
		PangoAttrDataCopyFunc copy_func;
		GDestroyNotify destroy_func;
	}
	[CRepr]
	public struct PangoAttrSize
	{
		PangoAttribute attr;
		c_int size;
		c_uint absolute;
	}
	[CRepr]
	public struct PangoAttrString
	{
		PangoAttribute attr;
		c_char* value;
	}
	public enum PangoAttrType : c_int
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
	public struct PangoAttribute
	{
		 PangoAttrClass* klass;
		c_uint start_index;
		c_uint end_index;
	}
	public enum PangoBaselineShift : c_int
	{
		PANGO_BASELINE_SHIFT_NONE,
		PANGO_BASELINE_SHIFT_SUPERSCRIPT,
		PANGO_BASELINE_SHIFT_SUBSCRIPT
	}
	public enum PangoBidiType : c_int
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
	public struct PangoColor
	{
		c_ushort red;
		c_ushort green;
		c_ushort blue;
	}
	[CRepr]
	public struct PangoContext;
	[LinkName("pango_context_new")]
	public static extern PangoContext* context_new();
	[LinkName("pango_context_changed")]
	public static extern void context_changed(PangoContext* context);
	[LinkName("pango_context_get_base_dir")]
	public static extern PangoDirection context_get_base_dir(PangoContext* context);
	[LinkName("pango_context_get_base_gravity")]
	public static extern PangoGravity context_get_base_gravity(PangoContext* context);
	[LinkName("pango_context_get_font_description")]
	public static extern PangoFontDescription* context_get_font_description(PangoContext* context);
	[LinkName("pango_context_get_font_map")]
	public static extern PangoFontMap* context_get_font_map(PangoContext* context);
	[LinkName("pango_context_get_gravity")]
	public static extern PangoGravity context_get_gravity(PangoContext* context);
	[LinkName("pango_context_get_gravity_hint")]
	public static extern PangoGravityHint context_get_gravity_hint(PangoContext* context);
	[LinkName("pango_context_get_language")]
	public static extern PangoLanguage* context_get_language(PangoContext* context);
	[LinkName("pango_context_get_matrix")]
	public static extern  PangoMatrix* context_get_matrix(PangoContext* context);
	[LinkName("pango_context_get_metrics")]
	public static extern PangoFontMetrics* context_get_metrics(PangoContext* context,  PangoFontDescription* desc, PangoLanguage* language);
	[LinkName("pango_context_get_round_glyph_positions")]
	public static extern c_int context_get_round_glyph_positions(PangoContext* context);
	[LinkName("pango_context_get_serial")]
	public static extern c_uint context_get_serial(PangoContext* context);
	[LinkName("pango_context_list_families")]
	public static extern void context_list_families(PangoContext* context, c_int* n_families);
	[LinkName("pango_context_load_font")]
	public static extern PangoFont* context_load_font(PangoContext* context,  PangoFontDescription* desc);
	[LinkName("pango_context_load_fontset")]
	public static extern PangoFontset* context_load_fontset(PangoContext* context,  PangoFontDescription* desc, PangoLanguage* language);
	[LinkName("pango_context_set_base_dir")]
	public static extern void context_set_base_dir(PangoContext* context, PangoDirection direction);
	[LinkName("pango_context_set_base_gravity")]
	public static extern void context_set_base_gravity(PangoContext* context, PangoGravity gravity);
	[LinkName("pango_context_set_font_description")]
	public static extern void context_set_font_description(PangoContext* context,  PangoFontDescription* desc);
	[LinkName("pango_context_set_font_map")]
	public static extern void context_set_font_map(PangoContext* context, PangoFontMap* font_map);
	[LinkName("pango_context_set_gravity_hint")]
	public static extern void context_set_gravity_hint(PangoContext* context, PangoGravityHint hint);
	[LinkName("pango_context_set_language")]
	public static extern void context_set_language(PangoContext* context, PangoLanguage* language);
	[LinkName("pango_context_set_matrix")]
	public static extern void context_set_matrix(PangoContext* context,  PangoMatrix* matrix);
	[LinkName("pango_context_set_round_glyph_positions")]
	public static extern void context_set_round_glyph_positions(PangoContext* context, c_int round_positions);
	[CRepr]
	public struct PangoContextClass
	{
	}
	[CRepr]
	public struct PangoCoverage;
	[LinkName("pango_coverage_new")]
	public static extern PangoCoverage* coverage_new();
	[LinkName("pango_coverage_copy")]
	public static extern PangoCoverage* coverage_copy(PangoCoverage* coverage);
	[LinkName("pango_coverage_get")]
	public static extern PangoCoverageLevel coverage_get(PangoCoverage* coverage, c_int index_);
	[LinkName("pango_coverage_max")]
	public static extern void coverage_max(PangoCoverage* coverage, PangoCoverage* other);
	[LinkName("pango_coverage_ref")]
	public static extern PangoCoverage* coverage_ref(PangoCoverage* coverage);
	[LinkName("pango_coverage_set")]
	public static extern void coverage_set(PangoCoverage* coverage, c_int index_, PangoCoverageLevel level);
	[LinkName("pango_coverage_to_bytes")]
	public static extern void coverage_to_bytes(PangoCoverage* coverage, c_int* n_bytes);
	[LinkName("pango_coverage_unref")]
	public static extern void coverage_unref(PangoCoverage* coverage);
	public enum PangoCoverageLevel : c_int
	{
		PANGO_COVERAGE_NONE,
		PANGO_COVERAGE_FALLBACK,
		PANGO_COVERAGE_APPROXIMATE,
		PANGO_COVERAGE_EXACT
	}
	public enum PangoDirection : c_int
	{
		PANGO_DIRECTION_LTR,
		PANGO_DIRECTION_RTL,
		PANGO_DIRECTION_TTB_LTR,
		PANGO_DIRECTION_TTB_RTL,
		PANGO_DIRECTION_WEAK_LTR,
		PANGO_DIRECTION_WEAK_RTL,
		PANGO_DIRECTION_NEUTRAL
	}
	public enum PangoEllipsizeMode : c_int
	{
		PANGO_ELLIPSIZE_NONE,
		PANGO_ELLIPSIZE_START,
		PANGO_ELLIPSIZE_MIDDLE,
		PANGO_ELLIPSIZE_END
	}
	[CRepr]
	public struct PangoFont;
	[LinkName("pango_font_describe")]
	public static extern PangoFontDescription* font_describe(PangoFont* font);
	[LinkName("pango_font_describe_with_absolute_size")]
	public static extern PangoFontDescription* font_describe_with_absolute_size(PangoFont* font);
	[LinkName("pango_font_get_coverage")]
	public static extern PangoCoverage* font_get_coverage(PangoFont* font, PangoLanguage* language);
	[LinkName("pango_font_get_face")]
	public static extern PangoFontFace* font_get_face(PangoFont* font);
	[LinkName("pango_font_get_features")]
	public static extern void font_get_features(PangoFont* font, void* features, c_uint len, c_uint* num_features);
	[LinkName("pango_font_get_font_map")]
	public static extern PangoFontMap* font_get_font_map(PangoFont* font);
	[LinkName("pango_font_get_glyph_extents")]
	public static extern void font_get_glyph_extents(PangoFont* font, PangoGlyph glyph, PangoRectangle* ink_rect, PangoRectangle* logical_rect);
	[LinkName("pango_font_get_hb_font")]
	public static extern void* font_get_hb_font(PangoFont* font);
	[LinkName("pango_font_get_languages")]
	public static extern PangoLanguage** font_get_languages(PangoFont* font);
	[LinkName("pango_font_get_metrics")]
	public static extern PangoFontMetrics* font_get_metrics(PangoFont* font, PangoLanguage* language);
	[LinkName("pango_font_has_char")]
	public static extern c_int font_has_char(PangoFont* font, c_uint wc);
	[LinkName("pango_font_serialize")]
	public static extern GBytes* font_serialize(PangoFont* font);
	[CRepr]
	public struct PangoFontClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct PangoFontDescription
	{
	}
	[CRepr]
	public struct PangoFontFace;
	[LinkName("pango_font_face_describe")]
	public static extern PangoFontDescription* font_face_describe(PangoFontFace* face);
	[LinkName("pango_font_face_get_face_name")]
	public static extern  c_char* font_face_get_face_name(PangoFontFace* face);
	[LinkName("pango_font_face_get_family")]
	public static extern PangoFontFamily* font_face_get_family(PangoFontFace* face);
	[LinkName("pango_font_face_is_synthesized")]
	public static extern c_int font_face_is_synthesized(PangoFontFace* face);
	[LinkName("pango_font_face_list_sizes")]
	public static extern void font_face_list_sizes(PangoFontFace* face, c_int* n_sizes);
	[CRepr]
	public struct PangoFontFaceClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct PangoFontFamily;
	[LinkName("pango_font_family_get_face")]
	public static extern PangoFontFace* font_family_get_face(PangoFontFamily* family,  c_char* name);
	[LinkName("pango_font_family_get_name")]
	public static extern  c_char* font_family_get_name(PangoFontFamily* family);
	[LinkName("pango_font_family_is_monospace")]
	public static extern c_int font_family_is_monospace(PangoFontFamily* family);
	[LinkName("pango_font_family_is_variable")]
	public static extern c_int font_family_is_variable(PangoFontFamily* family);
	[LinkName("pango_font_family_list_faces")]
	public static extern void font_family_list_faces(PangoFontFamily* family, c_int* n_faces);
	[CRepr]
	public struct PangoFontFamilyClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct PangoFontMap;
	[LinkName("pango_font_map_changed")]
	public static extern void font_map_changed(PangoFontMap* fontmap);
	[LinkName("pango_font_map_create_context")]
	public static extern PangoContext* font_map_create_context(PangoFontMap* fontmap);
	[LinkName("pango_font_map_get_family")]
	public static extern PangoFontFamily* font_map_get_family(PangoFontMap* fontmap,  c_char* name);
	[LinkName("pango_font_map_get_serial")]
	public static extern c_uint font_map_get_serial(PangoFontMap* fontmap);
	[LinkName("pango_font_map_list_families")]
	public static extern void font_map_list_families(PangoFontMap* fontmap, c_int* n_families);
	[LinkName("pango_font_map_load_font")]
	public static extern PangoFont* font_map_load_font(PangoFontMap* fontmap, PangoContext* context,  PangoFontDescription* desc);
	[LinkName("pango_font_map_load_fontset")]
	public static extern PangoFontset* font_map_load_fontset(PangoFontMap* fontmap, PangoContext* context,  PangoFontDescription* desc, PangoLanguage* language);
	[CRepr]
	public struct PangoFontMapClass
	{
		GObjectClass parent_class;
		 c_char* shape_engine_type;
	}
	[CRepr]
	public struct PangoFontMask
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
	public struct PangoFontMetrics
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
	public enum PangoFontScale : c_int
	{
		PANGO_FONT_SCALE_NONE,
		PANGO_FONT_SCALE_SUPERSCRIPT,
		PANGO_FONT_SCALE_SUBSCRIPT,
		PANGO_FONT_SCALE_SMALL_CAPS
	}
	[CRepr]
	public struct PangoFontset;
	[LinkName("pango_fontset_foreach")]
	public static extern void fontset_foreach(PangoFontset* fontset, PangoFontsetForeachFunc func, void* data);
	[LinkName("pango_fontset_get_font")]
	public static extern PangoFont* fontset_get_font(PangoFontset* fontset, c_uint wc);
	[LinkName("pango_fontset_get_metrics")]
	public static extern PangoFontMetrics* fontset_get_metrics(PangoFontset* fontset);
	[CRepr]
	public struct PangoFontsetClass
	{
		GObjectClass parent_class;
	}
	public function c_int PangoFontsetForeachFunc(PangoFontset* fontset, PangoFont* font, void* user_data);
	[CRepr]
	public struct PangoFontsetSimple;
	[LinkName("pango_fontset_simple_new")]
	public static extern PangoFontsetSimple* fontset_simple_new(PangoLanguage* language);
	[LinkName("pango_fontset_simple_append")]
	public static extern void fontset_simple_append(PangoFontsetSimple* fontset, PangoFont* font);
	[LinkName("pango_fontset_simple_size")]
	public static extern c_int fontset_simple_size(PangoFontsetSimple* fontset);
	[CRepr]
	public struct PangoFontsetSimpleClass
	{
	}
	[CRepr]
	public struct PangoGlyphGeometry
	{
		PangoGlyphUnit width;
		PangoGlyphUnit x_offset;
		PangoGlyphUnit y_offset;
	}
	[CRepr]
	public struct PangoGlyphInfo
	{
		PangoGlyph glyph;
		PangoGlyphGeometry geometry;
		PangoGlyphVisAttr attr;
	}
	[CRepr]
	public struct PangoGlyphItem
	{
		PangoItem* item;
		PangoGlyphString* glyphs;
		c_int y_offset;
		c_int start_x_offset;
		c_int end_x_offset;
	}
	[CRepr]
	public struct PangoGlyphItemIter
	{
		PangoGlyphItem* glyph_item;
		 c_char* text;
		c_int start_glyph;
		c_int start_index;
		c_int start_char;
		c_int end_glyph;
		c_int end_index;
		c_int end_char;
	}
	[CRepr]
	public struct PangoGlyphString
	{
		c_int num_glyphs;
		c_int* log_clusters;
		c_int space;
	}
	[CRepr]
	public struct PangoGlyphVisAttr
	{
		c_uint is_cluster_start;
	}
	public enum PangoGravity : c_int
	{
		PANGO_GRAVITY_SOUTH,
		PANGO_GRAVITY_EAST,
		PANGO_GRAVITY_NORTH,
		PANGO_GRAVITY_WEST,
		PANGO_GRAVITY_AUTO
	}
	public enum PangoGravityHint : c_int
	{
		PANGO_GRAVITY_HINT_NATURAL,
		PANGO_GRAVITY_HINT_STRONG,
		PANGO_GRAVITY_HINT_LINE
	}
	[CRepr]
	public struct PangoItem
	{
		c_int offset;
		c_int length;
		c_int num_chars;
		PangoAnalysis analysis;
	}
	[CRepr]
	public struct PangoLanguage
	{
	}
	[CRepr]
	public struct PangoLayout;
	[LinkName("pango_layout_new")]
	public static extern PangoLayout* layout_new(PangoContext* context);
	[LinkName("pango_layout_context_changed")]
	public static extern void layout_context_changed(PangoLayout* layout);
	[LinkName("pango_layout_copy")]
	public static extern PangoLayout* layout_copy(PangoLayout* src);
	[LinkName("pango_layout_get_alignment")]
	public static extern PangoAlignment layout_get_alignment(PangoLayout* layout);
	[LinkName("pango_layout_get_attributes")]
	public static extern PangoAttrList* layout_get_attributes(PangoLayout* layout);
	[LinkName("pango_layout_get_auto_dir")]
	public static extern c_int layout_get_auto_dir(PangoLayout* layout);
	[LinkName("pango_layout_get_baseline")]
	public static extern c_int layout_get_baseline(PangoLayout* layout);
	[LinkName("pango_layout_get_caret_pos")]
	public static extern void layout_get_caret_pos(PangoLayout* layout, c_int index_, PangoRectangle* strong_pos, PangoRectangle* weak_pos);
	[LinkName("pango_layout_get_character_count")]
	public static extern c_int layout_get_character_count(PangoLayout* layout);
	[LinkName("pango_layout_get_context")]
	public static extern PangoContext* layout_get_context(PangoLayout* layout);
	[LinkName("pango_layout_get_cursor_pos")]
	public static extern void layout_get_cursor_pos(PangoLayout* layout, c_int index_, PangoRectangle* strong_pos, PangoRectangle* weak_pos);
	[LinkName("pango_layout_get_direction")]
	public static extern PangoDirection layout_get_direction(PangoLayout* layout, c_int index);
	[LinkName("pango_layout_get_ellipsize")]
	public static extern PangoEllipsizeMode layout_get_ellipsize(PangoLayout* layout);
	[LinkName("pango_layout_get_extents")]
	public static extern void layout_get_extents(PangoLayout* layout, PangoRectangle* ink_rect, PangoRectangle* logical_rect);
	[LinkName("pango_layout_get_font_description")]
	public static extern  PangoFontDescription* layout_get_font_description(PangoLayout* layout);
	[LinkName("pango_layout_get_height")]
	public static extern c_int layout_get_height(PangoLayout* layout);
	[LinkName("pango_layout_get_indent")]
	public static extern c_int layout_get_indent(PangoLayout* layout);
	[LinkName("pango_layout_get_iter")]
	public static extern PangoLayoutIter* layout_get_iter(PangoLayout* layout);
	[LinkName("pango_layout_get_justify")]
	public static extern c_int layout_get_justify(PangoLayout* layout);
	[LinkName("pango_layout_get_justify_last_line")]
	public static extern c_int layout_get_justify_last_line(PangoLayout* layout);
	[LinkName("pango_layout_get_line")]
	public static extern PangoLayoutLine* layout_get_line(PangoLayout* layout, c_int line);
	[LinkName("pango_layout_get_line_count")]
	public static extern c_int layout_get_line_count(PangoLayout* layout);
	[LinkName("pango_layout_get_line_readonly")]
	public static extern PangoLayoutLine* layout_get_line_readonly(PangoLayout* layout, c_int line);
	[LinkName("pango_layout_get_line_spacing")]
	public static extern float layout_get_line_spacing(PangoLayout* layout);
	[LinkName("pango_layout_get_lines")]
	public static extern GSList* layout_get_lines(PangoLayout* layout);
	[LinkName("pango_layout_get_lines_readonly")]
	public static extern GSList* layout_get_lines_readonly(PangoLayout* layout);
	[LinkName("pango_layout_get_log_attrs")]
	public static extern void layout_get_log_attrs(PangoLayout* layout, c_int* n_attrs);
	[LinkName("pango_layout_get_log_attrs_readonly")]
	public static extern  PangoLogAttr* layout_get_log_attrs_readonly(PangoLayout* layout, c_int* n_attrs);
	[LinkName("pango_layout_get_pixel_extents")]
	public static extern void layout_get_pixel_extents(PangoLayout* layout, PangoRectangle* ink_rect, PangoRectangle* logical_rect);
	[LinkName("pango_layout_get_pixel_size")]
	public static extern void layout_get_pixel_size(PangoLayout* layout, c_int* width, c_int* height);
	[LinkName("pango_layout_get_serial")]
	public static extern c_uint layout_get_serial(PangoLayout* layout);
	[LinkName("pango_layout_get_single_paragraph_mode")]
	public static extern c_int layout_get_single_paragraph_mode(PangoLayout* layout);
	[LinkName("pango_layout_get_size")]
	public static extern void layout_get_size(PangoLayout* layout, c_int* width, c_int* height);
	[LinkName("pango_layout_get_spacing")]
	public static extern c_int layout_get_spacing(PangoLayout* layout);
	[LinkName("pango_layout_get_tabs")]
	public static extern PangoTabArray* layout_get_tabs(PangoLayout* layout);
	[LinkName("pango_layout_get_text")]
	public static extern  c_char* layout_get_text(PangoLayout* layout);
	[LinkName("pango_layout_get_unknown_glyphs_count")]
	public static extern c_int layout_get_unknown_glyphs_count(PangoLayout* layout);
	[LinkName("pango_layout_get_width")]
	public static extern c_int layout_get_width(PangoLayout* layout);
	[LinkName("pango_layout_get_wrap")]
	public static extern PangoWrapMode layout_get_wrap(PangoLayout* layout);
	[LinkName("pango_layout_index_to_line_x")]
	public static extern void layout_index_to_line_x(PangoLayout* layout, c_int index_, c_int trailing, c_int* line, c_int* x_pos);
	[LinkName("pango_layout_index_to_pos")]
	public static extern void layout_index_to_pos(PangoLayout* layout, c_int index_, PangoRectangle* pos);
	[LinkName("pango_layout_is_ellipsized")]
	public static extern c_int layout_is_ellipsized(PangoLayout* layout);
	[LinkName("pango_layout_is_wrapped")]
	public static extern c_int layout_is_wrapped(PangoLayout* layout);
	[LinkName("pango_layout_move_cursor_visually")]
	public static extern void layout_move_cursor_visually(PangoLayout* layout, c_int strong, c_int old_index, c_int old_trailing, c_int direction, c_int* new_index, c_int* new_trailing);
	[LinkName("pango_layout_serialize")]
	public static extern GBytes* layout_serialize(PangoLayout* layout, PangoLayoutSerializeFlags flags);
	[LinkName("pango_layout_set_alignment")]
	public static extern void layout_set_alignment(PangoLayout* layout, PangoAlignment alignment);
	[LinkName("pango_layout_set_attributes")]
	public static extern void layout_set_attributes(PangoLayout* layout, PangoAttrList* attrs);
	[LinkName("pango_layout_set_auto_dir")]
	public static extern void layout_set_auto_dir(PangoLayout* layout, c_int auto_dir);
	[LinkName("pango_layout_set_ellipsize")]
	public static extern void layout_set_ellipsize(PangoLayout* layout, PangoEllipsizeMode ellipsize);
	[LinkName("pango_layout_set_font_description")]
	public static extern void layout_set_font_description(PangoLayout* layout,  PangoFontDescription* desc);
	[LinkName("pango_layout_set_height")]
	public static extern void layout_set_height(PangoLayout* layout, c_int height);
	[LinkName("pango_layout_set_indent")]
	public static extern void layout_set_indent(PangoLayout* layout, c_int indent);
	[LinkName("pango_layout_set_justify")]
	public static extern void layout_set_justify(PangoLayout* layout, c_int justify);
	[LinkName("pango_layout_set_justify_last_line")]
	public static extern void layout_set_justify_last_line(PangoLayout* layout, c_int justify);
	[LinkName("pango_layout_set_line_spacing")]
	public static extern void layout_set_line_spacing(PangoLayout* layout, float factor);
	[LinkName("pango_layout_set_markup")]
	public static extern void layout_set_markup(PangoLayout* layout,  c_char* markup, c_int length);
	[LinkName("pango_layout_set_markup_with_accel")]
	public static extern void layout_set_markup_with_accel(PangoLayout* layout,  c_char* markup, c_int length, c_uint accel_marker, c_uint* accel_char);
	[LinkName("pango_layout_set_single_paragraph_mode")]
	public static extern void layout_set_single_paragraph_mode(PangoLayout* layout, c_int setting);
	[LinkName("pango_layout_set_spacing")]
	public static extern void layout_set_spacing(PangoLayout* layout, c_int spacing);
	[LinkName("pango_layout_set_tabs")]
	public static extern void layout_set_tabs(PangoLayout* layout, PangoTabArray* tabs);
	[LinkName("pango_layout_set_text")]
	public static extern void layout_set_text(PangoLayout* layout,  c_char* text, c_int length);
	[LinkName("pango_layout_set_width")]
	public static extern void layout_set_width(PangoLayout* layout, c_int width);
	[LinkName("pango_layout_set_wrap")]
	public static extern void layout_set_wrap(PangoLayout* layout, PangoWrapMode wrap);
	[LinkName("pango_layout_write_to_file")]
	public static extern c_int layout_write_to_file(PangoLayout* layout, PangoLayoutSerializeFlags flags,  c_char* filename);
	[LinkName("pango_layout_xy_to_index")]
	public static extern c_int layout_xy_to_index(PangoLayout* layout, c_int x, c_int y, c_int* index_, c_int* trailing);
	[CRepr]
	public struct PangoLayoutClass
	{
	}
	public enum PangoLayoutDeserializeError : c_int
	{
		PANGO_LAYOUT_DESERIALIZE_INVALID,
		PANGO_LAYOUT_DESERIALIZE_INVALID_VALUE,
		PANGO_LAYOUT_DESERIALIZE_MISSING_VALUE
	}
	[CRepr]
	public struct PangoLayoutDeserializeFlags
	{
		public const int PANGO_LAYOUT_DESERIALIZE_DEFAULT = 0;
		public const int PANGO_LAYOUT_DESERIALIZE_CONTEXT = 1;
	}
	[CRepr]
	public struct PangoLayoutIter
	{
	}
	[CRepr]
	public struct PangoLayoutLine
	{
		PangoLayout* layout;
		c_int start_index;
		c_int length;
		GSList* runs;
		c_uint is_paragraph_start;
		c_uint resolved_dir;
	}
	[CRepr]
	public struct PangoLayoutSerializeFlags
	{
		public const int PANGO_LAYOUT_SERIALIZE_DEFAULT = 0;
		public const int PANGO_LAYOUT_SERIALIZE_CONTEXT = 1;
		public const int PANGO_LAYOUT_SERIALIZE_OUTPUT = 2;
	}
	[CRepr]
	public struct PangoLogAttr
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
	public struct PangoMatrix
	{
		double xx;
		double xy;
		double yx;
		double yy;
		double x0;
		double y0;
	}
	public enum PangoOverline : c_int
	{
		PANGO_OVERLINE_NONE,
		PANGO_OVERLINE_SINGLE
	}
	[CRepr]
	public struct PangoRectangle
	{
		c_int x;
		c_int y;
		c_int width;
		c_int height;
	}
	public enum PangoRenderPart : c_int
	{
		PANGO_RENDER_PART_FOREGROUND,
		PANGO_RENDER_PART_BACKGROUND,
		PANGO_RENDER_PART_UNDERLINE,
		PANGO_RENDER_PART_STRIKETHROUGH,
		PANGO_RENDER_PART_OVERLINE
	}
	[CRepr]
	public struct PangoRenderer;
	[LinkName("pango_renderer_activate")]
	public static extern void renderer_activate(PangoRenderer* renderer);
	[LinkName("pango_renderer_deactivate")]
	public static extern void renderer_deactivate(PangoRenderer* renderer);
	[LinkName("pango_renderer_draw_error_underline")]
	public static extern void renderer_draw_error_underline(PangoRenderer* renderer, c_int x, c_int y, c_int width, c_int height);
	[LinkName("pango_renderer_draw_glyph")]
	public static extern void renderer_draw_glyph(PangoRenderer* renderer, PangoFont* font, PangoGlyph glyph, double x, double y);
	[LinkName("pango_renderer_draw_glyph_item")]
	public static extern void renderer_draw_glyph_item(PangoRenderer* renderer,  c_char* text, PangoGlyphItem* glyph_item, c_int x, c_int y);
	[LinkName("pango_renderer_draw_glyphs")]
	public static extern void renderer_draw_glyphs(PangoRenderer* renderer, PangoFont* font, PangoGlyphString* glyphs, c_int x, c_int y);
	[LinkName("pango_renderer_draw_layout")]
	public static extern void renderer_draw_layout(PangoRenderer* renderer, PangoLayout* layout, c_int x, c_int y);
	[LinkName("pango_renderer_draw_layout_line")]
	public static extern void renderer_draw_layout_line(PangoRenderer* renderer, PangoLayoutLine* line, c_int x, c_int y);
	[LinkName("pango_renderer_draw_rectangle")]
	public static extern void renderer_draw_rectangle(PangoRenderer* renderer, PangoRenderPart part, c_int x, c_int y, c_int width, c_int height);
	[LinkName("pango_renderer_draw_trapezoid")]
	public static extern void renderer_draw_trapezoid(PangoRenderer* renderer, PangoRenderPart part, double y1_, double x11, double x21, double y2, double x12, double x22);
	[LinkName("pango_renderer_get_alpha")]
	public static extern c_ushort renderer_get_alpha(PangoRenderer* renderer, PangoRenderPart part);
	[LinkName("pango_renderer_get_color")]
	public static extern PangoColor* renderer_get_color(PangoRenderer* renderer, PangoRenderPart part);
	[LinkName("pango_renderer_get_layout")]
	public static extern PangoLayout* renderer_get_layout(PangoRenderer* renderer);
	[LinkName("pango_renderer_get_layout_line")]
	public static extern PangoLayoutLine* renderer_get_layout_line(PangoRenderer* renderer);
	[LinkName("pango_renderer_get_matrix")]
	public static extern  PangoMatrix* renderer_get_matrix(PangoRenderer* renderer);
	[LinkName("pango_renderer_part_changed")]
	public static extern void renderer_part_changed(PangoRenderer* renderer, PangoRenderPart part);
	[LinkName("pango_renderer_set_alpha")]
	public static extern void renderer_set_alpha(PangoRenderer* renderer, PangoRenderPart part, c_ushort alpha);
	[LinkName("pango_renderer_set_color")]
	public static extern void renderer_set_color(PangoRenderer* renderer, PangoRenderPart part,  PangoColor* color);
	[LinkName("pango_renderer_set_matrix")]
	public static extern void renderer_set_matrix(PangoRenderer* renderer,  PangoMatrix* matrix);
	[CRepr]
	public struct PangoRendererClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct PangoRendererPrivate
	{
	}
	public enum PangoScript : c_int
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
	public struct PangoScriptIter
	{
	}
	[CRepr]
	public struct PangoShapeFlags
	{
		public const int PANGO_SHAPE_NONE = 0;
		public const int PANGO_SHAPE_ROUND_POSITIONS = 1;
	}
	[CRepr]
	public struct PangoShowFlags
	{
		public const int PANGO_SHOW_NONE = 0;
		public const int PANGO_SHOW_SPACES = 1;
		public const int PANGO_SHOW_LINE_BREAKS = 2;
		public const int PANGO_SHOW_IGNORABLES = 4;
	}
	public enum PangoStretch : c_int
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
	public enum PangoStyle : c_int
	{
		PANGO_STYLE_NORMAL,
		PANGO_STYLE_OBLIQUE,
		PANGO_STYLE_ITALIC
	}
	public enum PangoTabAlign : c_int
	{
		PANGO_TAB_LEFT,
		PANGO_TAB_RIGHT,
		PANGO_TAB_CENTER,
		PANGO_TAB_DECIMAL
	}
	[CRepr]
	public struct PangoTabArray
	{
	}
	public enum PangoTextTransform : c_int
	{
		PANGO_TEXT_TRANSFORM_NONE,
		PANGO_TEXT_TRANSFORM_LOWERCASE,
		PANGO_TEXT_TRANSFORM_UPPERCASE,
		PANGO_TEXT_TRANSFORM_CAPITALIZE
	}
	public enum PangoUnderline : c_int
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
	public enum PangoVariant : c_int
	{
		PANGO_VARIANT_NORMAL,
		PANGO_VARIANT_SMALL_CAPS,
		PANGO_VARIANT_ALL_SMALL_CAPS,
		PANGO_VARIANT_PETITE_CAPS,
		PANGO_VARIANT_ALL_PETITE_CAPS,
		PANGO_VARIANT_UNICASE,
		PANGO_VARIANT_TITLE_CAPS
	}
	public enum PangoWeight : c_int
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
	public enum PangoWrapMode : c_int
	{
		PANGO_WRAP_WORD,
		PANGO_WRAP_CHAR,
		PANGO_WRAP_WORD_CHAR
	}
}