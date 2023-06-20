namespace Gtk;

using System;
using System.Interop;

class Pango
{
	public typealias Glyph = c_uint;
	public typealias GlyphUnit = c_int;
	public typealias LayoutRun = GlyphItem;
	public enum Alignment : c_int
	{
		left = 0,
		center = 1,
		right = 2
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
		invalid = 0,
		language = 1,
		family = 2,
		style = 3,
		weight = 4,
		variant = 5,
		stretch = 6,
		size = 7,
		font_desc = 8,
		foreground = 9,
		background = 10,
		underline = 11,
		strikethrough = 12,
		rise = 13,
		shape = 14,
		scale = 15,
		fallback = 16,
		letter_spacing = 17,
		underline_color = 18,
		strikethrough_color = 19,
		absolute_size = 20,
		gravity = 21,
		gravity_hint = 22,
		font_features = 23,
		foreground_alpha = 24,
		background_alpha = 25,
		allow_breaks = 26,
		show = 27,
		insert_hyphens = 28,
		overline = 29,
		overline_color = 30,
		line_height = 31,
		absolute_line_height = 32,
		text_transform = 33,
		word = 34,
		sentence = 35,
		baseline_shift = 36,
		font_scale = 37
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
		none = 0,
		superscript = 1,
		subscript = 2
	}
	public enum BidiType : c_int
	{
		l = 0,
		lre = 1,
		lro = 2,
		r = 3,
		al = 4,
		rle = 5,
		rlo = 6,
		pdf = 7,
		en = 8,
		es = 9,
		et = 10,
		an = 11,
		cs = 12,
		nsm = 13,
		bn = 14,
		b = 15,
		s = 16,
		ws = 17,
		on = 18,
		lri = 19,
		rli = 20,
		fsi = 21,
		pdi = 22
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
	public static extern void ContextChanged(Context* context);
	[LinkName("pango_context_get_base_dir")]
	public static extern Direction ContextGetBaseDir(Context* context);
	[LinkName("pango_context_get_base_gravity")]
	public static extern Gravity ContextGetBaseGravity(Context* context);
	[LinkName("pango_context_get_font_description")]
	public static extern FontDescription* ContextGetFontDescription(Context* context);
	[LinkName("pango_context_get_font_map")]
	public static extern FontMap* ContextGetFontMap(Context* context);
	[LinkName("pango_context_get_gravity")]
	public static extern Gravity ContextGetGravity(Context* context);
	[LinkName("pango_context_get_gravity_hint")]
	public static extern GravityHint ContextGetGravityHint(Context* context);
	[LinkName("pango_context_get_language")]
	public static extern Language* ContextGetLanguage(Context* context);
	[LinkName("pango_context_get_matrix")]
	public static extern Matrix* ContextGetMatrix(Context* context);
	[LinkName("pango_context_get_metrics")]
	public static extern FontMetrics* ContextGetMetrics(Context* context, FontDescription* desc, Language* language);
	[LinkName("pango_context_get_round_glyph_positions")]
	public static extern c_int ContextGetRoundGlyphPositions(Context* context);
	[LinkName("pango_context_get_serial")]
	public static extern c_uint ContextGetSerial(Context* context);
	[LinkName("pango_context_list_families")]
	public static extern void ContextListFamilies(Context* context, FontFamily*** families, c_int* n_families);
	[LinkName("pango_context_load_font")]
	public static extern Font* ContextLoadFont(Context* context, FontDescription* desc);
	[LinkName("pango_context_load_fontset")]
	public static extern Fontset* ContextLoadFontset(Context* context, FontDescription* desc, Language* language);
	[LinkName("pango_context_set_base_dir")]
	public static extern void ContextSetBaseDir(Context* context, Direction direction);
	[LinkName("pango_context_set_base_gravity")]
	public static extern void ContextSetBaseGravity(Context* context, Gravity gravity);
	[LinkName("pango_context_set_font_description")]
	public static extern void ContextSetFontDescription(Context* context, FontDescription* desc);
	[LinkName("pango_context_set_font_map")]
	public static extern void ContextSetFontMap(Context* context, FontMap* font_map);
	[LinkName("pango_context_set_gravity_hint")]
	public static extern void ContextSetGravityHint(Context* context, GravityHint hint);
	[LinkName("pango_context_set_language")]
	public static extern void ContextSetLanguage(Context* context, Language* language);
	[LinkName("pango_context_set_matrix")]
	public static extern void ContextSetMatrix(Context* context, Matrix* matrix);
	[LinkName("pango_context_set_round_glyph_positions")]
	public static extern void ContextSetRoundGlyphPositions(Context* context, c_int round_positions);
	[CRepr]
	public struct ContextClass
	{
	}
	[CRepr]
	public struct Coverage;
	[LinkName("pango_coverage_new")]
	public static extern Coverage* CoverageNew();
	[LinkName("pango_coverage_from_bytes")]
	public static extern Coverage* CoverageFromBytes(c_uchar* bytes, c_int n_bytes);
	[LinkName("pango_coverage_copy")]
	public static extern Coverage* CoverageCopy(Coverage* coverage);
	[LinkName("pango_coverage_get")]
	public static extern CoverageLevel CoverageGet(Coverage* coverage, c_int index_);
	[LinkName("pango_coverage_max")]
	public static extern void CoverageMax(Coverage* coverage, Coverage* other);
	[LinkName("pango_coverage_ref")]
	public static extern Coverage* CoverageRef(Coverage* coverage);
	[LinkName("pango_coverage_set")]
	public static extern void CoverageSet(Coverage* coverage, c_int index_, CoverageLevel level);
	[LinkName("pango_coverage_to_bytes")]
	public static extern void CoverageToBytes(Coverage* coverage, c_uchar** bytes, c_int* n_bytes);
	[LinkName("pango_coverage_unref")]
	public static extern void CoverageUnref(Coverage* coverage);
	public enum CoverageLevel : c_int
	{
		none = 0,
		fallback = 1,
		approximate = 2,
		exact = 3
	}
	public enum Direction : c_int
	{
		ltr = 0,
		rtl = 1,
		ttb_ltr = 2,
		ttb_rtl = 3,
		weak_ltr = 4,
		weak_rtl = 5,
		neutral = 6
	}
	public enum EllipsizeMode : c_int
	{
		none = 0,
		start = 1,
		middle = 2,
		end = 3
	}
	[CRepr]
	public struct Font;
	[LinkName("pango_font_descriptions_free")]
	public static extern void FontDescriptionsFree(FontDescription** descs, c_int n_descs);
	[LinkName("pango_font_deserialize")]
	public static extern Font* FontDeserialize(Context* context, GLib.Bytes* bytes);
	[LinkName("pango_font_describe")]
	public static extern FontDescription* FontDescribe(Font* font);
	[LinkName("pango_font_describe_with_absolute_size")]
	public static extern FontDescription* FontDescribeWithAbsoluteSize(Font* font);
	[LinkName("pango_font_get_coverage")]
	public static extern Coverage* FontGetCoverage(Font* font, Language* language);
	[LinkName("pango_font_get_face")]
	public static extern FontFace* FontGetFace(Font* font);
	[LinkName("pango_font_get_features")]
	public static extern void FontGetFeatures(Font* font, void* features, c_uint len, c_uint* num_features);
	[LinkName("pango_font_get_font_map")]
	public static extern FontMap* FontGetFontMap(Font* font);
	[LinkName("pango_font_get_glyph_extents")]
	public static extern void FontGetGlyphExtents(Font* font, Glyph glyph, Rectangle* ink_rect, Rectangle* logical_rect);
	[LinkName("pango_font_get_languages")]
	public static extern Language FontGetLanguages(Font* font);
	[LinkName("pango_font_get_metrics")]
	public static extern FontMetrics* FontGetMetrics(Font* font, Language* language);
	[LinkName("pango_font_has_char")]
	public static extern c_int FontHasChar(Font* font, c_uint wc);
	[LinkName("pango_font_serialize")]
	public static extern GLib.Bytes* FontSerialize(Font* font);
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
	public static extern FontDescription* FontFaceDescribe(FontFace* face);
	[LinkName("pango_font_face_get_face_name")]
	public static extern char8* FontFaceGetFaceName(FontFace* face);
	[LinkName("pango_font_face_get_family")]
	public static extern FontFamily* FontFaceGetFamily(FontFace* face);
	[LinkName("pango_font_face_is_synthesized")]
	public static extern c_int FontFaceIsSynthesized(FontFace* face);
	[LinkName("pango_font_face_list_sizes")]
	public static extern void FontFaceListSizes(FontFace* face, c_int** sizes, c_int* n_sizes);
	[CRepr]
	public struct FontFaceClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FontFamily;
	[LinkName("pango_font_family_get_face")]
	public static extern FontFace* FontFamilyGetFace(FontFamily* family, char8* name);
	[LinkName("pango_font_family_get_name")]
	public static extern char8* FontFamilyGetName(FontFamily* family);
	[LinkName("pango_font_family_is_monospace")]
	public static extern c_int FontFamilyIsMonospace(FontFamily* family);
	[LinkName("pango_font_family_is_variable")]
	public static extern c_int FontFamilyIsVariable(FontFamily* family);
	[LinkName("pango_font_family_list_faces")]
	public static extern void FontFamilyListFaces(FontFamily* family, FontFace*** faces, c_int* n_faces);
	[CRepr]
	public struct FontFamilyClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FontMap;
	[LinkName("pango_font_map_changed")]
	public static extern void FontMapChanged(FontMap* fontmap);
	[LinkName("pango_font_map_create_context")]
	public static extern Context* FontMapCreateContext(FontMap* fontmap);
	[LinkName("pango_font_map_get_family")]
	public static extern FontFamily* FontMapGetFamily(FontMap* fontmap, char8* name);
	[LinkName("pango_font_map_get_serial")]
	public static extern c_uint FontMapGetSerial(FontMap* fontmap);
	[LinkName("pango_font_map_list_families")]
	public static extern void FontMapListFamilies(FontMap* fontmap, FontFamily*** families, c_int* n_families);
	[LinkName("pango_font_map_load_font")]
	public static extern Font* FontMapLoadFont(FontMap* fontmap, Context* context, FontDescription* desc);
	[LinkName("pango_font_map_load_fontset")]
	public static extern Fontset* FontMapLoadFontset(FontMap* fontmap, Context* context, FontDescription* desc, Language* language);
	[CRepr]
	public struct FontMapClass
	{
		GObject.ObjectClass parent_class;
		char8* shape_engine_type;
	}
	[CRepr]
	public enum FontMask : int
	{
		family = 1,
		style = 2,
		variant = 4,
		weight = 8,
		stretch = 16,
		size = 32,
		gravity = 64,
		variations = 128
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
		none = 0,
		superscript = 1,
		subscript = 2,
		small_caps = 3
	}
	[CRepr]
	public struct Fontset;
	[LinkName("pango_fontset_foreach")]
	public static extern void FontsetForeach(Fontset* fontset, FontsetForeachFunc func, void* data);
	[LinkName("pango_fontset_get_font")]
	public static extern Font* FontsetGetFont(Fontset* fontset, c_uint wc);
	[LinkName("pango_fontset_get_metrics")]
	public static extern FontMetrics* FontsetGetMetrics(Fontset* fontset);
	[CRepr]
	public struct FontsetClass
	{
		GObject.ObjectClass parent_class;
	}
	public function c_int FontsetForeachFunc(Fontset fontset, Font font, void* user_data);
	[CRepr]
	public struct FontsetSimple;
	[LinkName("pango_fontset_simple_new")]
	public static extern FontsetSimple* FontsetSimpleNew(Language* language);
	[LinkName("pango_fontset_simple_append")]
	public static extern void FontsetSimpleAppend(FontsetSimple* fontset, Font* font);
	[LinkName("pango_fontset_simple_size")]
	public static extern c_int FontsetSimpleSize(FontsetSimple* fontset);
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
		south = 0,
		east = 1,
		north = 2,
		west = 3,
		auto = 4
	}
	public enum GravityHint : c_int
	{
		natural = 0,
		strong = 1,
		line = 2
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
	public static extern Layout* LayoutNew(Context* context);
	[LinkName("pango_layout_deserialize")]
	public static extern Layout* LayoutDeserialize(Context* context, GLib.Bytes* bytes, LayoutDeserializeFlags flags);
	[LinkName("pango_layout_context_changed")]
	public static extern void LayoutContextChanged(Layout* layout);
	[LinkName("pango_layout_copy")]
	public static extern Layout* LayoutCopy(Layout* src);
	[LinkName("pango_layout_get_alignment")]
	public static extern Alignment LayoutGetAlignment(Layout* layout);
	[LinkName("pango_layout_get_attributes")]
	public static extern AttrList* LayoutGetAttributes(Layout* layout);
	[LinkName("pango_layout_get_auto_dir")]
	public static extern c_int LayoutGetAutoDir(Layout* layout);
	[LinkName("pango_layout_get_baseline")]
	public static extern c_int LayoutGetBaseline(Layout* layout);
	[LinkName("pango_layout_get_caret_pos")]
	public static extern void LayoutGetCaretPos(Layout* layout, c_int index_, Rectangle* strong_pos, Rectangle* weak_pos);
	[LinkName("pango_layout_get_character_count")]
	public static extern c_int LayoutGetCharacterCount(Layout* layout);
	[LinkName("pango_layout_get_context")]
	public static extern Context* LayoutGetContext(Layout* layout);
	[LinkName("pango_layout_get_cursor_pos")]
	public static extern void LayoutGetCursorPos(Layout* layout, c_int index_, Rectangle* strong_pos, Rectangle* weak_pos);
	[LinkName("pango_layout_get_direction")]
	public static extern Direction LayoutGetDirection(Layout* layout, c_int index);
	[LinkName("pango_layout_get_ellipsize")]
	public static extern EllipsizeMode LayoutGetEllipsize(Layout* layout);
	[LinkName("pango_layout_get_extents")]
	public static extern void LayoutGetExtents(Layout* layout, Rectangle* ink_rect, Rectangle* logical_rect);
	[LinkName("pango_layout_get_font_description")]
	public static extern FontDescription* LayoutGetFontDescription(Layout* layout);
	[LinkName("pango_layout_get_height")]
	public static extern c_int LayoutGetHeight(Layout* layout);
	[LinkName("pango_layout_get_indent")]
	public static extern c_int LayoutGetIndent(Layout* layout);
	[LinkName("pango_layout_get_iter")]
	public static extern LayoutIter* LayoutGetIter(Layout* layout);
	[LinkName("pango_layout_get_justify")]
	public static extern c_int LayoutGetJustify(Layout* layout);
	[LinkName("pango_layout_get_justify_last_line")]
	public static extern c_int LayoutGetJustifyLastLine(Layout* layout);
	[LinkName("pango_layout_get_line")]
	public static extern LayoutLine* LayoutGetLine(Layout* layout, c_int line);
	[LinkName("pango_layout_get_line_count")]
	public static extern c_int LayoutGetLineCount(Layout* layout);
	[LinkName("pango_layout_get_line_readonly")]
	public static extern LayoutLine* LayoutGetLineReadonly(Layout* layout, c_int line);
	[LinkName("pango_layout_get_line_spacing")]
	public static extern float LayoutGetLineSpacing(Layout* layout);
	[LinkName("pango_layout_get_lines")]
	public static extern GLib.SList* LayoutGetLines(Layout* layout);
	[LinkName("pango_layout_get_lines_readonly")]
	public static extern GLib.SList* LayoutGetLinesReadonly(Layout* layout);
	[LinkName("pango_layout_get_log_attrs")]
	public static extern void LayoutGetLogAttrs(Layout* layout, LogAttr** attrs, c_int* n_attrs);
	[LinkName("pango_layout_get_log_attrs_readonly")]
	public static extern LogAttr LayoutGetLogAttrsReadonly(Layout* layout, c_int* n_attrs);
	[LinkName("pango_layout_get_pixel_extents")]
	public static extern void LayoutGetPixelExtents(Layout* layout, Rectangle* ink_rect, Rectangle* logical_rect);
	[LinkName("pango_layout_get_pixel_size")]
	public static extern void LayoutGetPixelSize(Layout* layout, c_int* width, c_int* height);
	[LinkName("pango_layout_get_serial")]
	public static extern c_uint LayoutGetSerial(Layout* layout);
	[LinkName("pango_layout_get_single_paragraph_mode")]
	public static extern c_int LayoutGetSingleParagraphMode(Layout* layout);
	[LinkName("pango_layout_get_size")]
	public static extern void LayoutGetSize(Layout* layout, c_int* width, c_int* height);
	[LinkName("pango_layout_get_spacing")]
	public static extern c_int LayoutGetSpacing(Layout* layout);
	[LinkName("pango_layout_get_tabs")]
	public static extern TabArray* LayoutGetTabs(Layout* layout);
	[LinkName("pango_layout_get_text")]
	public static extern char8* LayoutGetText(Layout* layout);
	[LinkName("pango_layout_get_unknown_glyphs_count")]
	public static extern c_int LayoutGetUnknownGlyphsCount(Layout* layout);
	[LinkName("pango_layout_get_width")]
	public static extern c_int LayoutGetWidth(Layout* layout);
	[LinkName("pango_layout_get_wrap")]
	public static extern WrapMode LayoutGetWrap(Layout* layout);
	[LinkName("pango_layout_index_to_line_x")]
	public static extern void LayoutIndexToLineX(Layout* layout, c_int index_, c_int trailing, c_int* line, c_int* x_pos);
	[LinkName("pango_layout_index_to_pos")]
	public static extern void LayoutIndexToPos(Layout* layout, c_int index_, Rectangle* pos);
	[LinkName("pango_layout_is_ellipsized")]
	public static extern c_int LayoutIsEllipsized(Layout* layout);
	[LinkName("pango_layout_is_wrapped")]
	public static extern c_int LayoutIsWrapped(Layout* layout);
	[LinkName("pango_layout_move_cursor_visually")]
	public static extern void LayoutMoveCursorVisually(Layout* layout, c_int strong, c_int old_index, c_int old_trailing, c_int direction, c_int* new_index, c_int* new_trailing);
	[LinkName("pango_layout_serialize")]
	public static extern GLib.Bytes* LayoutSerialize(Layout* layout, LayoutSerializeFlags flags);
	[LinkName("pango_layout_set_alignment")]
	public static extern void LayoutSetAlignment(Layout* layout, Alignment alignment);
	[LinkName("pango_layout_set_attributes")]
	public static extern void LayoutSetAttributes(Layout* layout, AttrList* attrs);
	[LinkName("pango_layout_set_auto_dir")]
	public static extern void LayoutSetAutoDir(Layout* layout, c_int auto_dir);
	[LinkName("pango_layout_set_ellipsize")]
	public static extern void LayoutSetEllipsize(Layout* layout, EllipsizeMode ellipsize);
	[LinkName("pango_layout_set_font_description")]
	public static extern void LayoutSetFontDescription(Layout* layout, FontDescription* desc);
	[LinkName("pango_layout_set_height")]
	public static extern void LayoutSetHeight(Layout* layout, c_int height);
	[LinkName("pango_layout_set_indent")]
	public static extern void LayoutSetIndent(Layout* layout, c_int indent);
	[LinkName("pango_layout_set_justify")]
	public static extern void LayoutSetJustify(Layout* layout, c_int justify);
	[LinkName("pango_layout_set_justify_last_line")]
	public static extern void LayoutSetJustifyLastLine(Layout* layout, c_int justify);
	[LinkName("pango_layout_set_line_spacing")]
	public static extern void LayoutSetLineSpacing(Layout* layout, float factor);
	[LinkName("pango_layout_set_markup")]
	public static extern void LayoutSetMarkup(Layout* layout, char8* markup, c_int length);
	[LinkName("pango_layout_set_markup_with_accel")]
	public static extern void LayoutSetMarkupWithAccel(Layout* layout, char8* markup, c_int length, c_uint accel_marker, c_uint* accel_char);
	[LinkName("pango_layout_set_single_paragraph_mode")]
	public static extern void LayoutSetSingleParagraphMode(Layout* layout, c_int setting);
	[LinkName("pango_layout_set_spacing")]
	public static extern void LayoutSetSpacing(Layout* layout, c_int spacing);
	[LinkName("pango_layout_set_tabs")]
	public static extern void LayoutSetTabs(Layout* layout, TabArray* tabs);
	[LinkName("pango_layout_set_text")]
	public static extern void LayoutSetText(Layout* layout, char8* text, c_int length);
	[LinkName("pango_layout_set_width")]
	public static extern void LayoutSetWidth(Layout* layout, c_int width);
	[LinkName("pango_layout_set_wrap")]
	public static extern void LayoutSetWrap(Layout* layout, WrapMode wrap);
	[LinkName("pango_layout_write_to_file")]
	public static extern c_int LayoutWriteToFile(Layout* layout, LayoutSerializeFlags flags, char8* filename);
	[LinkName("pango_layout_xy_to_index")]
	public static extern c_int LayoutXyToIndex(Layout* layout, c_int x, c_int y, c_int* index_, c_int* trailing);
	[CRepr]
	public struct LayoutClass
	{
	}
	public enum LayoutDeserializeError : c_int
	{
		invalid = 0,
		invalid_value = 1,
		missing_value = 2
	}
	[CRepr]
	public enum LayoutDeserializeFlags : int
	{
		default_ = 0,
		context = 1
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
	public enum LayoutSerializeFlags : int
	{
		default_ = 0,
		context = 1,
		output = 2
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
		none = 0,
		single = 1
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
		foreground = 0,
		background = 1,
		underline = 2,
		strikethrough = 3,
		overline = 4
	}
	[CRepr]
	public struct Renderer;
	[LinkName("pango_renderer_activate")]
	public static extern void RendererActivate(Renderer* renderer);
	[LinkName("pango_renderer_deactivate")]
	public static extern void RendererDeactivate(Renderer* renderer);
	[LinkName("pango_renderer_draw_error_underline")]
	public static extern void RendererDrawErrorUnderline(Renderer* renderer, c_int x, c_int y, c_int width, c_int height);
	[LinkName("pango_renderer_draw_glyph")]
	public static extern void RendererDrawGlyph(Renderer* renderer, Font* font, Glyph glyph, double x, double y);
	[LinkName("pango_renderer_draw_glyph_item")]
	public static extern void RendererDrawGlyphItem(Renderer* renderer, char8* text, GlyphItem* glyph_item, c_int x, c_int y);
	[LinkName("pango_renderer_draw_glyphs")]
	public static extern void RendererDrawGlyphs(Renderer* renderer, Font* font, GlyphString* glyphs, c_int x, c_int y);
	[LinkName("pango_renderer_draw_layout")]
	public static extern void RendererDrawLayout(Renderer* renderer, Layout* layout, c_int x, c_int y);
	[LinkName("pango_renderer_draw_layout_line")]
	public static extern void RendererDrawLayoutLine(Renderer* renderer, LayoutLine* line, c_int x, c_int y);
	[LinkName("pango_renderer_draw_rectangle")]
	public static extern void RendererDrawRectangle(Renderer* renderer, RenderPart part, c_int x, c_int y, c_int width, c_int height);
	[LinkName("pango_renderer_draw_trapezoid")]
	public static extern void RendererDrawTrapezoid(Renderer* renderer, RenderPart part, double y1_, double x11, double x21, double y2, double x12, double x22);
	[LinkName("pango_renderer_get_alpha")]
	public static extern c_ushort RendererGetAlpha(Renderer* renderer, RenderPart part);
	[LinkName("pango_renderer_get_color")]
	public static extern Color* RendererGetColor(Renderer* renderer, RenderPart part);
	[LinkName("pango_renderer_get_layout")]
	public static extern Layout* RendererGetLayout(Renderer* renderer);
	[LinkName("pango_renderer_get_layout_line")]
	public static extern LayoutLine* RendererGetLayoutLine(Renderer* renderer);
	[LinkName("pango_renderer_get_matrix")]
	public static extern Matrix* RendererGetMatrix(Renderer* renderer);
	[LinkName("pango_renderer_part_changed")]
	public static extern void RendererPartChanged(Renderer* renderer, RenderPart part);
	[LinkName("pango_renderer_set_alpha")]
	public static extern void RendererSetAlpha(Renderer* renderer, RenderPart part, c_ushort alpha);
	[LinkName("pango_renderer_set_color")]
	public static extern void RendererSetColor(Renderer* renderer, RenderPart part, Color* color);
	[LinkName("pango_renderer_set_matrix")]
	public static extern void RendererSetMatrix(Renderer* renderer, Matrix* matrix);
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
		invalid_code = -1,
		common = 0,
		inherited = 1,
		arabic = 2,
		armenian = 3,
		bengali = 4,
		bopomofo = 5,
		cherokee = 6,
		coptic = 7,
		cyrillic = 8,
		deseret = 9,
		devanagari = 10,
		ethiopic = 11,
		georgian = 12,
		gothic = 13,
		greek = 14,
		gujarati = 15,
		gurmukhi = 16,
		han = 17,
		hangul = 18,
		hebrew = 19,
		hiragana = 20,
		kannada = 21,
		katakana = 22,
		khmer = 23,
		lao = 24,
		latin = 25,
		malayalam = 26,
		mongolian = 27,
		myanmar = 28,
		ogham = 29,
		old_italic = 30,
		oriya = 31,
		runic = 32,
		sinhala = 33,
		syriac = 34,
		tamil = 35,
		telugu = 36,
		thaana = 37,
		thai = 38,
		tibetan = 39,
		canadian_aboriginal = 40,
		yi = 41,
		tagalog = 42,
		hanunoo = 43,
		buhid = 44,
		tagbanwa = 45,
		braille = 46,
		cypriot = 47,
		limbu = 48,
		osmanya = 49,
		shavian = 50,
		linear_b = 51,
		tai_le = 52,
		ugaritic = 53,
		new_tai_lue = 54,
		buginese = 55,
		glagolitic = 56,
		tifinagh = 57,
		syloti_nagri = 58,
		old_persian = 59,
		kharoshthi = 60,
		unknown = 61,
		balinese = 62,
		cuneiform = 63,
		phoenician = 64,
		phags_pa = 65,
		nko = 66,
		kayah_li = 67,
		lepcha = 68,
		rejang = 69,
		sundanese = 70,
		saurashtra = 71,
		cham = 72,
		ol_chiki = 73,
		vai = 74,
		carian = 75,
		lycian = 76,
		lydian = 77,
		batak = 78,
		brahmi = 79,
		mandaic = 80,
		chakma = 81,
		meroitic_cursive = 82,
		meroitic_hieroglyphs = 83,
		miao = 84,
		sharada = 85,
		sora_sompeng = 86,
		takri = 87,
		bassa_vah = 88,
		caucasian_albanian = 89,
		duployan = 90,
		elbasan = 91,
		grantha = 92,
		khojki = 93,
		khudawadi = 94,
		linear_a = 95,
		mahajani = 96,
		manichaean = 97,
		mende_kikakui = 98,
		modi = 99,
		mro = 100,
		nabataean = 101,
		old_north_arabian = 102,
		old_permic = 103,
		pahawh_hmong = 104,
		palmyrene = 105,
		pau_cin_hau = 106,
		psalter_pahlavi = 107,
		siddham = 108,
		tirhuta = 109,
		warang_citi = 110,
		ahom = 111,
		anatolian_hieroglyphs = 112,
		hatran = 113,
		multani = 114,
		old_hungarian = 115,
		signwriting = 116
	}
	[CRepr]
	public struct ScriptIter
	{
	}
	[CRepr]
	public enum ShapeFlags : int
	{
		none = 0,
		round_positions = 1
	}
	[CRepr]
	public enum ShowFlags : int
	{
		none = 0,
		spaces = 1,
		line_breaks = 2,
		ignorables = 4
	}
	public enum Stretch : c_int
	{
		ultra_condensed = 0,
		extra_condensed = 1,
		condensed = 2,
		semi_condensed = 3,
		normal = 4,
		semi_expanded = 5,
		expanded = 6,
		extra_expanded = 7,
		ultra_expanded = 8
	}
	public enum Style : c_int
	{
		normal = 0,
		oblique = 1,
		italic = 2
	}
	public enum TabAlign : c_int
	{
		left = 0,
		right = 1,
		center = 2,
		decimal = 3
	}
	[CRepr]
	public struct TabArray
	{
	}
	public enum TextTransform : c_int
	{
		none = 0,
		lowercase = 1,
		uppercase = 2,
		capitalize = 3
	}
	public enum Underline : c_int
	{
		none = 0,
		single = 1,
		double = 2,
		low = 3,
		error = 4,
		single_line = 5,
		double_line = 6,
		error_line = 7
	}
	public enum Variant : c_int
	{
		normal = 0,
		small_caps = 1,
		all_small_caps = 2,
		petite_caps = 3,
		all_petite_caps = 4,
		unicase = 5,
		title_caps = 6
	}
	public enum Weight : c_int
	{
		thin = 100,
		ultralight = 200,
		light = 300,
		semilight = 350,
		book = 380,
		normal = 400,
		medium = 500,
		semibold = 600,
		bold = 700,
		ultrabold = 800,
		heavy = 900,
		ultraheavy = 1000
	}
	public enum WrapMode : c_int
	{
		word = 0,
		char = 1,
		word_char = 2
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
	public static extern Language LanguageGetPreferred();
	[LinkName("pango_layout_deserialize_error_quark")]
	public static extern GLib.Quark LayoutDeserializeErrorQuark();
	[LinkName("pango_log2vis_get_embedding_levels")]
	public static extern c_uchar* Log2visGetEmbeddingLevels(char8* text, c_int length, Direction* pbase_dir);
	[LinkName("pango_markup_parser_finish")]
	public static extern c_int MarkupParserFinish(GLib.MarkupParseContext* context, AttrList* attr_list, char8* text, c_uint* accel_char);
	[LinkName("pango_markup_parser_new")]
	public static extern GLib.MarkupParseContext* MarkupParserNew(c_uint accel_marker);
	[LinkName("pango_parse_enum")]
	public static extern c_int ParseEnum(GLib.Type type, char8* str, c_int* value, c_int warn, char8* possible_values);
	[LinkName("pango_parse_markup")]
	public static extern c_int ParseMarkup(char8* markup_text, c_int length, c_uint accel_marker, AttrList* attr_list, char8* text, c_uint* accel_char);
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
	public static extern c_int ReadLine(void* stream, GLib.String* str);
	[LinkName("pango_reorder_items")]
	public static extern GLib.List* ReorderItems(GLib.List* items);
	[LinkName("pango_scan_int")]
	public static extern c_int ScanInt(char8* pos, c_int* out_);
	[LinkName("pango_scan_string")]
	public static extern c_int ScanString(char8* pos, GLib.String* out_);
	[LinkName("pango_scan_word")]
	public static extern c_int ScanWord(char8* pos, GLib.String* out_);
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
	public static extern c_int SkipSpace(char8* pos);
	[LinkName("pango_split_file_list")]
	public static extern char8* SplitFileList(char8* str);
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
}