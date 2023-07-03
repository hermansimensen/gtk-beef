namespace Gtk;

using System;
using System.Interop;

class HarfBuzz
{
	public typealias bool_t = c_int;
	public typealias codepoint_t = c_uint;
	public typealias color_t = c_uint;
	public typealias font_get_font_h_extents_func_t = font_get_font_extents_func_t;
	public typealias font_get_font_v_extents_func_t = font_get_font_extents_func_t;
	public typealias font_get_glyph_h_advance_func_t = font_get_glyph_advance_func_t;
	public typealias font_get_glyph_h_advances_func_t = font_get_glyph_advances_func_t;
	public typealias font_get_glyph_h_kerning_func_t = font_get_glyph_kerning_func_t;
	public typealias font_get_glyph_h_origin_func_t = font_get_glyph_origin_func_t;
	public typealias font_get_glyph_v_advance_func_t = font_get_glyph_advance_func_t;
	public typealias font_get_glyph_v_advances_func_t = font_get_glyph_advances_func_t;
	public typealias font_get_glyph_v_kerning_func_t = font_get_glyph_kerning_func_t;
	public typealias font_get_glyph_v_origin_func_t = font_get_glyph_origin_func_t;
	public typealias mask_t = c_uint;
	public typealias ot_name_id_t = c_uint;
	public typealias position_t = c_int;
	public typealias tag_t = c_uint;

	const c_int AAT_LAYOUT_NO_SELECTOR_INDEX = (.)65535;
	const c_int BUFFER_REPLACEMENT_CODEPOINT_DEFAULT = (.)65533;
	const c_int FEATURE_GLOBAL_START = (.)0;
	const language_t LANGUAGE_INVALID = (.)0;
	const codepoint_t MAP_VALUE_INVALID = (.)4294967295;
	const c_int OT_LAYOUT_DEFAULT_LANGUAGE_INDEX = (.)65535;
	const c_int OT_LAYOUT_NO_FEATURE_INDEX = (.)65535;
	const c_int OT_LAYOUT_NO_SCRIPT_INDEX = (.)65535;
	const c_int OT_LAYOUT_NO_VARIATIONS_INDEX = (.)4294967295;
	const c_int OT_MAX_TAGS_PER_LANGUAGE = (.)3;
	const c_int OT_MAX_TAGS_PER_SCRIPT = (.)3;
	const c_int OT_VAR_NO_AXIS_INDEX = (.)4294967295;
	const codepoint_t SET_VALUE_INVALID = (.)4294967295;
	const c_int UNICODE_MAX = (.)1114111;
	const c_int UNICODE_MAX_DECOMPOSITION_LEN = (.)19;
	const c_int VERSION_MAJOR = (.)5;
	const c_int VERSION_MICRO = (.)0;
	const c_int VERSION_MINOR = (.)2;
	const char8* VERSION_STRING = (.)"5.2.0";
		[LinkName("hb_aat_layout_feature_type_get_name_id")]
		public static extern ot_name_id_t AatLayoutFeatureTypeGetNameId(face_t* face, aat_layout_feature_type_t feature_type);
		[LinkName("hb_aat_layout_feature_type_get_selector_infos")]
		public static extern c_uint AatLayoutFeatureTypeGetSelectorInfos(face_t* face, aat_layout_feature_type_t feature_type, c_uint start_offset, c_uint* selector_count, aat_layout_feature_selector_info_t* selectors, c_uint* default_index);
		[LinkName("hb_aat_layout_get_feature_types")]
		public static extern c_uint AatLayoutGetFeatureTypes(face_t* face, c_uint start_offset, c_uint* feature_count, aat_layout_feature_type_t* features);
		[LinkName("hb_aat_layout_has_positioning")]
		public static extern bool_t AatLayoutHasPositioning(face_t* face);
		[LinkName("hb_aat_layout_has_substitution")]
		public static extern bool_t AatLayoutHasSubstitution(face_t* face);
		[LinkName("hb_aat_layout_has_tracking")]
		public static extern bool_t AatLayoutHasTracking(face_t* face);
		[LinkName("hb_blob_copy_writable_or_fail")]
		public static extern blob_t* BlobCopyWritableOrFail(blob_t* blob);
		[LinkName("hb_blob_create_from_file")]
		public static extern blob_t* BlobCreateFromFile(char8* file_name);
		[LinkName("hb_blob_create_from_file_or_fail")]
		public static extern blob_t* BlobCreateFromFileOrFail(char8* file_name);
		[LinkName("hb_blob_create_sub_blob")]
		public static extern blob_t* BlobCreateSubBlob(blob_t* parent, c_uint offset, c_uint length);
		[LinkName("hb_blob_get_data")]
		public static extern char8* BlobGetData(blob_t* blob, c_uint* length);
		[LinkName("hb_blob_get_data_writable")]
		public static extern char8* BlobGetDataWritable(blob_t* blob, c_uint* length);
		[LinkName("hb_blob_get_empty")]
		public static extern blob_t* BlobGetEmpty();
		[LinkName("hb_blob_get_length")]
		public static extern c_uint BlobGetLength(blob_t* blob);
		[LinkName("hb_blob_is_immutable")]
		public static extern bool_t BlobIsImmutable(blob_t* blob);
		[LinkName("hb_blob_make_immutable")]
		public static extern void BlobMakeImmutable(blob_t* blob);
		[LinkName("hb_buffer_add")]
		public static extern void BufferAdd(buffer_t* buffer, codepoint_t codepoint, c_uint cluster);
		[LinkName("hb_buffer_add_codepoints")]
		public static extern void BufferAddCodepoints(buffer_t* buffer, codepoint_t* text, c_int text_length, c_uint item_offset, c_int item_length);
		[LinkName("hb_buffer_add_latin1")]
		public static extern void BufferAddLatin1(buffer_t* buffer, c_uchar* text, c_int text_length, c_uint item_offset, c_int item_length);
		[LinkName("hb_buffer_add_utf16")]
		public static extern void BufferAddUtf16(buffer_t* buffer, c_ushort* text, c_int text_length, c_uint item_offset, c_int item_length);
		[LinkName("hb_buffer_add_utf32")]
		public static extern void BufferAddUtf32(buffer_t* buffer, c_uint* text, c_int text_length, c_uint item_offset, c_int item_length);
		[LinkName("hb_buffer_add_utf8")]
		public static extern void BufferAddUtf8(buffer_t* buffer, c_uchar* text, c_int text_length, c_uint item_offset, c_int item_length);
		[LinkName("hb_buffer_allocation_successful")]
		public static extern bool_t BufferAllocationSuccessful(buffer_t* buffer);
		[LinkName("hb_buffer_append")]
		public static extern void BufferAppend(buffer_t* buffer, buffer_t* source, c_uint start, c_uint end);
		[LinkName("hb_buffer_clear_contents")]
		public static extern void BufferClearContents(buffer_t* buffer);
		[LinkName("hb_buffer_create")]
		public static extern buffer_t* BufferCreate();
		[LinkName("hb_buffer_create_similar")]
		public static extern buffer_t* BufferCreateSimilar(buffer_t* src);
		[LinkName("hb_buffer_deserialize_glyphs")]
		public static extern bool_t BufferDeserializeGlyphs(buffer_t* buffer, char8* buf, c_int buf_len, char8** end_ptr, font_t* font, buffer_serialize_format_t format);
		[LinkName("hb_buffer_deserialize_unicode")]
		public static extern bool_t BufferDeserializeUnicode(buffer_t* buffer, char8* buf, c_int buf_len, char8** end_ptr, buffer_serialize_format_t format);
		[LinkName("hb_buffer_diff")]
		public static extern buffer_diff_flags_t BufferDiff(buffer_t* buffer, buffer_t* reference, codepoint_t dottedcircle_glyph, c_uint position_fuzz);
		[LinkName("hb_buffer_get_cluster_level")]
		public static extern buffer_cluster_level_t BufferGetClusterLevel(buffer_t* buffer);
		[LinkName("hb_buffer_get_content_type")]
		public static extern buffer_content_type_t BufferGetContentType(buffer_t* buffer);
		[LinkName("hb_buffer_get_direction")]
		public static extern direction_t BufferGetDirection(buffer_t* buffer);
		[LinkName("hb_buffer_get_empty")]
		public static extern buffer_t* BufferGetEmpty();
		[LinkName("hb_buffer_get_flags")]
		public static extern buffer_flags_t BufferGetFlags(buffer_t* buffer);
		[LinkName("hb_buffer_get_glyph_infos")]
		public static extern glyph_info_t* BufferGetGlyphInfos(buffer_t* buffer, c_uint* length);
		[LinkName("hb_buffer_get_glyph_positions")]
		public static extern glyph_position_t* BufferGetGlyphPositions(buffer_t* buffer, c_uint* length);
		[LinkName("hb_buffer_get_invisible_glyph")]
		public static extern codepoint_t BufferGetInvisibleGlyph(buffer_t* buffer);
		[LinkName("hb_buffer_get_language")]
		public static extern language_t BufferGetLanguage(buffer_t* buffer);
		[LinkName("hb_buffer_get_length")]
		public static extern c_uint BufferGetLength(buffer_t* buffer);
		[LinkName("hb_buffer_get_not_found_glyph")]
		public static extern codepoint_t BufferGetNotFoundGlyph(buffer_t* buffer);
		[LinkName("hb_buffer_get_replacement_codepoint")]
		public static extern codepoint_t BufferGetReplacementCodepoint(buffer_t* buffer);
		[LinkName("hb_buffer_get_script")]
		public static extern script_t BufferGetScript(buffer_t* buffer);
		[LinkName("hb_buffer_get_segment_properties")]
		public static extern void BufferGetSegmentProperties(buffer_t* buffer, segment_properties_t* props);
		[LinkName("hb_buffer_get_unicode_funcs")]
		public static extern unicode_funcs_t* BufferGetUnicodeFuncs(buffer_t* buffer);
		[LinkName("hb_buffer_guess_segment_properties")]
		public static extern void BufferGuessSegmentProperties(buffer_t* buffer);
		[LinkName("hb_buffer_has_positions")]
		public static extern bool_t BufferHasPositions(buffer_t* buffer);
		[LinkName("hb_buffer_normalize_glyphs")]
		public static extern void BufferNormalizeGlyphs(buffer_t* buffer);
		[LinkName("hb_buffer_pre_allocate")]
		public static extern bool_t BufferPreAllocate(buffer_t* buffer, c_uint size);
		[LinkName("hb_buffer_reset")]
		public static extern void BufferReset(buffer_t* buffer);
		[LinkName("hb_buffer_reverse")]
		public static extern void BufferReverse(buffer_t* buffer);
		[LinkName("hb_buffer_reverse_clusters")]
		public static extern void BufferReverseClusters(buffer_t* buffer);
		[LinkName("hb_buffer_reverse_range")]
		public static extern void BufferReverseRange(buffer_t* buffer, c_uint start, c_uint end);
		[LinkName("hb_buffer_serialize")]
		public static extern c_uint BufferSerialize(buffer_t* buffer, c_uint start, c_uint end, c_uchar* buf, c_uint buf_size, c_uint* buf_consumed, font_t* font, buffer_serialize_format_t format, buffer_serialize_flags_t flags);
		[LinkName("hb_buffer_serialize_format_from_string")]
		public static extern buffer_serialize_format_t BufferSerializeFormatFromString(c_uchar* str, c_int len);
		[LinkName("hb_buffer_serialize_format_to_string")]
		public static extern char8* BufferSerializeFormatToString(buffer_serialize_format_t format);
		[LinkName("hb_buffer_serialize_glyphs")]
		public static extern c_uint BufferSerializeGlyphs(buffer_t* buffer, c_uint start, c_uint end, c_uchar* buf, c_uint buf_size, c_uint* buf_consumed, font_t* font, buffer_serialize_format_t format, buffer_serialize_flags_t flags);
		[LinkName("hb_buffer_serialize_list_formats")]
		public static extern char8** BufferSerializeListFormats();
		[LinkName("hb_buffer_serialize_unicode")]
		public static extern c_uint BufferSerializeUnicode(buffer_t* buffer, c_uint start, c_uint end, c_uchar* buf, c_uint buf_size, c_uint* buf_consumed, buffer_serialize_format_t format, buffer_serialize_flags_t flags);
		[LinkName("hb_buffer_set_cluster_level")]
		public static extern void BufferSetClusterLevel(buffer_t* buffer, buffer_cluster_level_t cluster_level);
		[LinkName("hb_buffer_set_content_type")]
		public static extern void BufferSetContentType(buffer_t* buffer, buffer_content_type_t content_type);
		[LinkName("hb_buffer_set_direction")]
		public static extern void BufferSetDirection(buffer_t* buffer, direction_t direction);
		[LinkName("hb_buffer_set_flags")]
		public static extern void BufferSetFlags(buffer_t* buffer, buffer_flags_t flags);
		[LinkName("hb_buffer_set_invisible_glyph")]
		public static extern void BufferSetInvisibleGlyph(buffer_t* buffer, codepoint_t invisible);
		[LinkName("hb_buffer_set_language")]
		public static extern void BufferSetLanguage(buffer_t* buffer, language_t language);
		[LinkName("hb_buffer_set_length")]
		public static extern bool_t BufferSetLength(buffer_t* buffer, c_uint length);
		[LinkName("hb_buffer_set_message_func")]
		public static extern void BufferSetMessageFunc(buffer_t* buffer, buffer_message_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_buffer_set_not_found_glyph")]
		public static extern void BufferSetNotFoundGlyph(buffer_t* buffer, codepoint_t not_found);
		[LinkName("hb_buffer_set_replacement_codepoint")]
		public static extern void BufferSetReplacementCodepoint(buffer_t* buffer, codepoint_t replacement);
		[LinkName("hb_buffer_set_script")]
		public static extern void BufferSetScript(buffer_t* buffer, script_t script);
		[LinkName("hb_buffer_set_segment_properties")]
		public static extern void BufferSetSegmentProperties(buffer_t* buffer, segment_properties_t* props);
		[LinkName("hb_buffer_set_unicode_funcs")]
		public static extern void BufferSetUnicodeFuncs(buffer_t* buffer, unicode_funcs_t* unicode_funcs);
		[LinkName("hb_color_get_alpha")]
		public static extern c_uchar ColorGetAlpha(color_t color);
		[LinkName("hb_color_get_blue")]
		public static extern c_uchar ColorGetBlue(color_t color);
		[LinkName("hb_color_get_green")]
		public static extern c_uchar ColorGetGreen(color_t color);
		[LinkName("hb_color_get_red")]
		public static extern c_uchar ColorGetRed(color_t color);
		[LinkName("hb_direction_from_string")]
		public static extern direction_t DirectionFromString(c_uchar* str, c_int len);
		[LinkName("hb_direction_to_string")]
		public static extern char8* DirectionToString(direction_t direction);
		[LinkName("hb_draw_close_path")]
		public static extern void DrawClosePath(draw_funcs_t* dfuncs, void** draw_data, draw_state_t* st);
		[LinkName("hb_draw_cubic_to")]
		public static extern void DrawCubicTo(draw_funcs_t* dfuncs, void** draw_data, draw_state_t* st, float control1_x, float control1_y, float control2_x, float control2_y, float to_x, float to_y);
		[LinkName("hb_draw_funcs_create")]
		public static extern draw_funcs_t* DrawFuncsCreate();
		[LinkName("hb_draw_funcs_is_immutable")]
		public static extern bool_t DrawFuncsIsImmutable(draw_funcs_t* dfuncs);
		[LinkName("hb_draw_funcs_make_immutable")]
		public static extern void DrawFuncsMakeImmutable(draw_funcs_t* dfuncs);
		[LinkName("hb_draw_funcs_set_close_path_func")]
		public static extern void DrawFuncsSetClosePathFunc(draw_funcs_t* dfuncs, draw_close_path_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_draw_funcs_set_cubic_to_func")]
		public static extern void DrawFuncsSetCubicToFunc(draw_funcs_t* dfuncs, draw_cubic_to_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_draw_funcs_set_line_to_func")]
		public static extern void DrawFuncsSetLineToFunc(draw_funcs_t* dfuncs, draw_line_to_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_draw_funcs_set_move_to_func")]
		public static extern void DrawFuncsSetMoveToFunc(draw_funcs_t* dfuncs, draw_move_to_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_draw_funcs_set_quadratic_to_func")]
		public static extern void DrawFuncsSetQuadraticToFunc(draw_funcs_t* dfuncs, draw_quadratic_to_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_draw_line_to")]
		public static extern void DrawLineTo(draw_funcs_t* dfuncs, void** draw_data, draw_state_t* st, float to_x, float to_y);
		[LinkName("hb_draw_move_to")]
		public static extern void DrawMoveTo(draw_funcs_t* dfuncs, void** draw_data, draw_state_t* st, float to_x, float to_y);
		[LinkName("hb_draw_quadratic_to")]
		public static extern void DrawQuadraticTo(draw_funcs_t* dfuncs, void** draw_data, draw_state_t* st, float control_x, float control_y, float to_x, float to_y);
		[LinkName("hb_face_builder_add_table")]
		public static extern bool_t FaceBuilderAddTable(face_t* face, tag_t tag, blob_t* blob);
		[LinkName("hb_face_builder_create")]
		public static extern face_t* FaceBuilderCreate();
		[LinkName("hb_face_collect_unicodes")]
		public static extern void FaceCollectUnicodes(face_t* face, set_t* out_);
		[LinkName("hb_face_collect_variation_selectors")]
		public static extern void FaceCollectVariationSelectors(face_t* face, set_t* out_);
		[LinkName("hb_face_collect_variation_unicodes")]
		public static extern void FaceCollectVariationUnicodes(face_t* face, codepoint_t variation_selector, set_t* out_);
		[LinkName("hb_face_count")]
		public static extern c_uint FaceCount(blob_t* blob);
		[LinkName("hb_face_create")]
		public static extern face_t* FaceCreate(blob_t* blob, c_uint index);
		[LinkName("hb_face_create_for_tables")]
		public static extern face_t* FaceCreateForTables(reference_table_func_t reference_table_func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_face_get_empty")]
		public static extern face_t* FaceGetEmpty();
		[LinkName("hb_face_get_glyph_count")]
		public static extern c_uint FaceGetGlyphCount(face_t* face);
		[LinkName("hb_face_get_index")]
		public static extern c_uint FaceGetIndex(face_t* face);
		[LinkName("hb_face_get_table_tags")]
		public static extern c_uint FaceGetTableTags(face_t* face, c_uint start_offset, c_uint* table_count, tag_t* table_tags);
		[LinkName("hb_face_get_upem")]
		public static extern c_uint FaceGetUpem(face_t* face);
		[LinkName("hb_face_is_immutable")]
		public static extern bool_t FaceIsImmutable(face_t* face);
		[LinkName("hb_face_make_immutable")]
		public static extern void FaceMakeImmutable(face_t* face);
		[LinkName("hb_face_reference_blob")]
		public static extern blob_t* FaceReferenceBlob(face_t* face);
		[LinkName("hb_face_reference_table")]
		public static extern blob_t* FaceReferenceTable(face_t* face, tag_t tag);
		[LinkName("hb_face_set_glyph_count")]
		public static extern void FaceSetGlyphCount(face_t* face, c_uint glyph_count);
		[LinkName("hb_face_set_index")]
		public static extern void FaceSetIndex(face_t* face, c_uint index);
		[LinkName("hb_face_set_upem")]
		public static extern void FaceSetUpem(face_t* face, c_uint upem);
		[LinkName("hb_feature_from_string")]
		public static extern bool_t FeatureFromString(c_uchar* str, c_int len, feature_t* feature);
		[LinkName("hb_feature_to_string")]
		public static extern void FeatureToString(feature_t* feature, char8* buf, c_uint size);
		[LinkName("hb_font_add_glyph_origin_for_direction")]
		public static extern void FontAddGlyphOriginForDirection(font_t* font, codepoint_t glyph, direction_t direction, position_t* x, position_t* y);
		[LinkName("hb_font_changed")]
		public static extern void FontChanged(font_t* font);
		[LinkName("hb_font_create")]
		public static extern font_t* FontCreate(face_t* face);
		[LinkName("hb_font_create_sub_font")]
		public static extern font_t* FontCreateSubFont(font_t* parent);
		[LinkName("hb_font_funcs_create")]
		public static extern font_funcs_t* FontFuncsCreate();
		[LinkName("hb_font_funcs_get_empty")]
		public static extern font_funcs_t* FontFuncsGetEmpty();
		[LinkName("hb_font_funcs_is_immutable")]
		public static extern bool_t FontFuncsIsImmutable(font_funcs_t* ffuncs);
		[LinkName("hb_font_funcs_make_immutable")]
		public static extern void FontFuncsMakeImmutable(font_funcs_t* ffuncs);
		[LinkName("hb_font_funcs_set_font_h_extents_func")]
		public static extern void FontFuncsSetFontHExtentsFunc(font_funcs_t* ffuncs, font_get_font_h_extents_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_font_v_extents_func")]
		public static extern void FontFuncsSetFontVExtentsFunc(font_funcs_t* ffuncs, font_get_font_v_extents_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_contour_point_func")]
		public static extern void FontFuncsSetGlyphContourPointFunc(font_funcs_t* ffuncs, font_get_glyph_contour_point_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_extents_func")]
		public static extern void FontFuncsSetGlyphExtentsFunc(font_funcs_t* ffuncs, font_get_glyph_extents_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_from_name_func")]
		public static extern void FontFuncsSetGlyphFromNameFunc(font_funcs_t* ffuncs, font_get_glyph_from_name_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_func")]
		public static extern void FontFuncsSetGlyphFunc(font_funcs_t* ffuncs, font_get_glyph_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_h_advance_func")]
		public static extern void FontFuncsSetGlyphHAdvanceFunc(font_funcs_t* ffuncs, font_get_glyph_h_advance_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_h_advances_func")]
		public static extern void FontFuncsSetGlyphHAdvancesFunc(font_funcs_t* ffuncs, font_get_glyph_h_advances_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_h_kerning_func")]
		public static extern void FontFuncsSetGlyphHKerningFunc(font_funcs_t* ffuncs, font_get_glyph_h_kerning_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_h_origin_func")]
		public static extern void FontFuncsSetGlyphHOriginFunc(font_funcs_t* ffuncs, font_get_glyph_h_origin_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_name_func")]
		public static extern void FontFuncsSetGlyphNameFunc(font_funcs_t* ffuncs, font_get_glyph_name_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_shape_func")]
		public static extern void FontFuncsSetGlyphShapeFunc(font_funcs_t* ffuncs, font_get_glyph_shape_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_v_advance_func")]
		public static extern void FontFuncsSetGlyphVAdvanceFunc(font_funcs_t* ffuncs, font_get_glyph_v_advance_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_v_advances_func")]
		public static extern void FontFuncsSetGlyphVAdvancesFunc(font_funcs_t* ffuncs, font_get_glyph_v_advances_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_v_kerning_func")]
		public static extern void FontFuncsSetGlyphVKerningFunc(font_funcs_t* ffuncs, font_get_glyph_v_kerning_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_glyph_v_origin_func")]
		public static extern void FontFuncsSetGlyphVOriginFunc(font_funcs_t* ffuncs, font_get_glyph_v_origin_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_nominal_glyph_func")]
		public static extern void FontFuncsSetNominalGlyphFunc(font_funcs_t* ffuncs, font_get_nominal_glyph_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_nominal_glyphs_func")]
		public static extern void FontFuncsSetNominalGlyphsFunc(font_funcs_t* ffuncs, font_get_nominal_glyphs_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_funcs_set_variation_glyph_func")]
		public static extern void FontFuncsSetVariationGlyphFunc(font_funcs_t* ffuncs, font_get_variation_glyph_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_font_get_empty")]
		public static extern font_t* FontGetEmpty();
		[LinkName("hb_font_get_extents_for_direction")]
		public static extern void FontGetExtentsForDirection(font_t* font, direction_t direction, font_extents_t* extents);
		[LinkName("hb_font_get_face")]
		public static extern face_t* FontGetFace(font_t* font);
		[LinkName("hb_font_get_glyph")]
		public static extern bool_t FontGetGlyph(font_t* font, codepoint_t unicode, codepoint_t variation_selector, codepoint_t* glyph);
		[LinkName("hb_font_get_glyph_advance_for_direction")]
		public static extern void FontGetGlyphAdvanceForDirection(font_t* font, codepoint_t glyph, direction_t direction, position_t* x, position_t* y);
		[LinkName("hb_font_get_glyph_advances_for_direction")]
		public static extern void FontGetGlyphAdvancesForDirection(font_t* font, direction_t direction, c_uint count, codepoint_t* first_glyph, c_uint glyph_stride, position_t* first_advance, c_uint advance_stride);
		[LinkName("hb_font_get_glyph_contour_point")]
		public static extern bool_t FontGetGlyphContourPoint(font_t* font, codepoint_t glyph, c_uint point_index, position_t* x, position_t* y);
		[LinkName("hb_font_get_glyph_contour_point_for_origin")]
		public static extern bool_t FontGetGlyphContourPointForOrigin(font_t* font, codepoint_t glyph, c_uint point_index, direction_t direction, position_t* x, position_t* y);
		[LinkName("hb_font_get_glyph_extents")]
		public static extern bool_t FontGetGlyphExtents(font_t* font, codepoint_t glyph, glyph_extents_t* extents);
		[LinkName("hb_font_get_glyph_extents_for_origin")]
		public static extern bool_t FontGetGlyphExtentsForOrigin(font_t* font, codepoint_t glyph, direction_t direction, glyph_extents_t* extents);
		[LinkName("hb_font_get_glyph_from_name")]
		public static extern bool_t FontGetGlyphFromName(font_t* font, char8* name, c_int len, codepoint_t* glyph);
		[LinkName("hb_font_get_glyph_h_advance")]
		public static extern position_t FontGetGlyphHAdvance(font_t* font, codepoint_t glyph);
		[LinkName("hb_font_get_glyph_h_advances")]
		public static extern void FontGetGlyphHAdvances(font_t* font, c_uint count, codepoint_t* first_glyph, c_uint glyph_stride, position_t* first_advance, c_uint advance_stride);
		[LinkName("hb_font_get_glyph_h_kerning")]
		public static extern position_t FontGetGlyphHKerning(font_t* font, codepoint_t left_glyph, codepoint_t right_glyph);
		[LinkName("hb_font_get_glyph_h_origin")]
		public static extern bool_t FontGetGlyphHOrigin(font_t* font, codepoint_t glyph, position_t* x, position_t* y);
		[LinkName("hb_font_get_glyph_kerning_for_direction")]
		public static extern void FontGetGlyphKerningForDirection(font_t* font, codepoint_t first_glyph, codepoint_t second_glyph, direction_t direction, position_t* x, position_t* y);
		[LinkName("hb_font_get_glyph_name")]
		public static extern bool_t FontGetGlyphName(font_t* font, codepoint_t glyph, char8* name, c_uint size);
		[LinkName("hb_font_get_glyph_origin_for_direction")]
		public static extern void FontGetGlyphOriginForDirection(font_t* font, codepoint_t glyph, direction_t direction, position_t* x, position_t* y);
		[LinkName("hb_font_get_glyph_shape")]
		public static extern void FontGetGlyphShape(font_t* font, codepoint_t glyph, draw_funcs_t* dfuncs, void** draw_data);
		[LinkName("hb_font_get_glyph_v_advance")]
		public static extern position_t FontGetGlyphVAdvance(font_t* font, codepoint_t glyph);
		[LinkName("hb_font_get_glyph_v_advances")]
		public static extern void FontGetGlyphVAdvances(font_t* font, c_uint count, codepoint_t* first_glyph, c_uint glyph_stride, position_t* first_advance, c_uint advance_stride);
		[LinkName("hb_font_get_glyph_v_kerning")]
		public static extern position_t FontGetGlyphVKerning(font_t* font, codepoint_t top_glyph, codepoint_t bottom_glyph);
		[LinkName("hb_font_get_glyph_v_origin")]
		public static extern bool_t FontGetGlyphVOrigin(font_t* font, codepoint_t glyph, position_t* x, position_t* y);
		[LinkName("hb_font_get_h_extents")]
		public static extern bool_t FontGetHExtents(font_t* font, font_extents_t* extents);
		[LinkName("hb_font_get_nominal_glyph")]
		public static extern bool_t FontGetNominalGlyph(font_t* font, codepoint_t unicode, codepoint_t* glyph);
		[LinkName("hb_font_get_nominal_glyphs")]
		public static extern c_uint FontGetNominalGlyphs(font_t* font, c_uint count, codepoint_t* first_unicode, c_uint unicode_stride, codepoint_t* first_glyph, c_uint glyph_stride);
		[LinkName("hb_font_get_parent")]
		public static extern font_t* FontGetParent(font_t* font);
		[LinkName("hb_font_get_ppem")]
		public static extern void FontGetPpem(font_t* font, c_uint* x_ppem, c_uint* y_ppem);
		[LinkName("hb_font_get_ptem")]
		public static extern float FontGetPtem(font_t* font);
		[LinkName("hb_font_get_scale")]
		public static extern void FontGetScale(font_t* font, c_int* x_scale, c_int* y_scale);
		[LinkName("hb_font_get_serial")]
		public static extern c_uint FontGetSerial(font_t* font);
		[LinkName("hb_font_get_synthetic_slant")]
		public static extern float FontGetSyntheticSlant(font_t* font);
		[LinkName("hb_font_get_v_extents")]
		public static extern bool_t FontGetVExtents(font_t* font, font_extents_t* extents);
		[LinkName("hb_font_get_var_coords_design")]
		public static extern float* FontGetVarCoordsDesign(font_t* font, c_uint* length);
		[LinkName("hb_font_get_var_coords_normalized")]
		public static extern c_int* FontGetVarCoordsNormalized(font_t* font, c_uint* length);
		[LinkName("hb_font_get_variation_glyph")]
		public static extern bool_t FontGetVariationGlyph(font_t* font, codepoint_t unicode, codepoint_t variation_selector, codepoint_t* glyph);
		[LinkName("hb_font_glyph_from_string")]
		public static extern bool_t FontGlyphFromString(font_t* font, c_uchar* s, c_int len, codepoint_t* glyph);
		[LinkName("hb_font_glyph_to_string")]
		public static extern void FontGlyphToString(font_t* font, codepoint_t glyph, char8* s, c_uint size);
		[LinkName("hb_font_is_immutable")]
		public static extern bool_t FontIsImmutable(font_t* font);
		[LinkName("hb_font_make_immutable")]
		public static extern void FontMakeImmutable(font_t* font);
		[LinkName("hb_font_set_face")]
		public static extern void FontSetFace(font_t* font, face_t* face);
		[LinkName("hb_font_set_funcs")]
		public static extern void FontSetFuncs(font_t* font, font_funcs_t* klass, void** font_data, destroy_func_t destroy);
		[LinkName("hb_font_set_funcs_data")]
		public static extern void FontSetFuncsData(font_t* font, void** font_data, destroy_func_t destroy);
		[LinkName("hb_font_set_parent")]
		public static extern void FontSetParent(font_t* font, font_t* parent);
		[LinkName("hb_font_set_ppem")]
		public static extern void FontSetPpem(font_t* font, c_uint x_ppem, c_uint y_ppem);
		[LinkName("hb_font_set_ptem")]
		public static extern void FontSetPtem(font_t* font, float ptem);
		[LinkName("hb_font_set_scale")]
		public static extern void FontSetScale(font_t* font, c_int x_scale, c_int y_scale);
		[LinkName("hb_font_set_synthetic_slant")]
		public static extern void FontSetSyntheticSlant(font_t* font, float slant);
		[LinkName("hb_font_set_var_coords_design")]
		public static extern void FontSetVarCoordsDesign(font_t* font, float* coords, c_uint coords_length);
		[LinkName("hb_font_set_var_coords_normalized")]
		public static extern void FontSetVarCoordsNormalized(font_t* font, c_int* coords, c_uint coords_length);
		[LinkName("hb_font_set_var_named_instance")]
		public static extern void FontSetVarNamedInstance(font_t* font, c_uint instance_index);
		[LinkName("hb_font_set_variations")]
		public static extern void FontSetVariations(font_t* font, variation_t* variations, c_uint variations_length);
		[LinkName("hb_font_subtract_glyph_origin_for_direction")]
		public static extern void FontSubtractGlyphOriginForDirection(font_t* font, codepoint_t glyph, direction_t direction, position_t* x, position_t* y);
		[LinkName("hb_ft_font_changed")]
		public static extern void FtFontChanged(font_t* font);
		[LinkName("hb_ft_font_get_load_flags")]
		public static extern c_int FtFontGetLoadFlags(font_t* font);
		[LinkName("hb_ft_font_set_funcs")]
		public static extern void FtFontSetFuncs(font_t* font);
		[LinkName("hb_ft_font_set_load_flags")]
		public static extern void FtFontSetLoadFlags(font_t* font, c_int load_flags);
		[LinkName("hb_ft_hb_font_changed")]
		public static extern bool_t FtHbFontChanged(font_t* font);
		[LinkName("hb_glib_blob_create")]
		public static extern blob_t* GlibBlobCreate(GLib.Bytes* gbytes);
		[LinkName("hb_glib_get_unicode_funcs")]
		public static extern unicode_funcs_t* GlibGetUnicodeFuncs();
		[LinkName("hb_glib_script_from_script")]
		public static extern GLib.UnicodeScript GlibScriptFromScript(script_t script);
		[LinkName("hb_glib_script_to_script")]
		public static extern script_t GlibScriptToScript(GLib.UnicodeScript script);
		[LinkName("hb_glyph_info_get_glyph_flags")]
		public static extern glyph_flags_t GlyphInfoGetGlyphFlags(glyph_info_t* info);
		[LinkName("hb_language_from_string")]
		public static extern language_t LanguageFromString(c_uchar* str, c_int len);
		[LinkName("hb_language_get_default")]
		public static extern language_t LanguageGetDefault();
		[LinkName("hb_language_matches")]
		public static extern bool_t LanguageMatches(language_t language, language_t specific);
		[LinkName("hb_language_to_string")]
		public static extern char8* LanguageToString(language_t language);
		[LinkName("hb_map_allocation_successful")]
		public static extern bool_t MapAllocationSuccessful(map_t* map);
		[LinkName("hb_map_clear")]
		public static extern void MapClear(map_t* map);
		[LinkName("hb_map_copy")]
		public static extern map_t* MapCopy(map_t* map);
		[LinkName("hb_map_create")]
		public static extern map_t* MapCreate();
		[LinkName("hb_map_del")]
		public static extern void MapDel(map_t* map, codepoint_t key);
		[LinkName("hb_map_get")]
		public static extern codepoint_t MapGet(map_t* map, codepoint_t key);
		[LinkName("hb_map_get_empty")]
		public static extern map_t* MapGetEmpty();
		[LinkName("hb_map_get_population")]
		public static extern c_uint MapGetPopulation(map_t* map);
		[LinkName("hb_map_has")]
		public static extern bool_t MapHas(map_t* map, codepoint_t key);
		[LinkName("hb_map_hash")]
		public static extern c_uint MapHash(map_t* map);
		[LinkName("hb_map_is_empty")]
		public static extern bool_t MapIsEmpty(map_t* map);
		[LinkName("hb_map_is_equal")]
		public static extern bool_t MapIsEqual(map_t* map, map_t* other);
		[LinkName("hb_map_set")]
		public static extern void MapSet(map_t* map, codepoint_t key, codepoint_t value);
		[LinkName("hb_ot_color_glyph_get_layers")]
		public static extern c_uint OtColorGlyphGetLayers(face_t* face, codepoint_t glyph, c_uint start_offset, c_uint* layer_count, ot_color_layer_t* layers);
		[LinkName("hb_ot_color_glyph_reference_png")]
		public static extern blob_t* OtColorGlyphReferencePng(font_t* font, codepoint_t glyph);
		[LinkName("hb_ot_color_glyph_reference_svg")]
		public static extern blob_t* OtColorGlyphReferenceSvg(face_t* face, codepoint_t glyph);
		[LinkName("hb_ot_color_has_layers")]
		public static extern bool_t OtColorHasLayers(face_t* face);
		[LinkName("hb_ot_color_has_palettes")]
		public static extern bool_t OtColorHasPalettes(face_t* face);
		[LinkName("hb_ot_color_has_png")]
		public static extern bool_t OtColorHasPng(face_t* face);
		[LinkName("hb_ot_color_has_svg")]
		public static extern bool_t OtColorHasSvg(face_t* face);
		[LinkName("hb_ot_color_palette_color_get_name_id")]
		public static extern ot_name_id_t OtColorPaletteColorGetNameId(face_t* face, c_uint color_index);
		[LinkName("hb_ot_color_palette_get_colors")]
		public static extern c_uint OtColorPaletteGetColors(face_t* face, c_uint palette_index, c_uint start_offset, c_uint* color_count, color_t* colors);
		[LinkName("hb_ot_color_palette_get_count")]
		public static extern c_uint OtColorPaletteGetCount(face_t* face);
		[LinkName("hb_ot_color_palette_get_flags")]
		public static extern ot_color_palette_flags_t OtColorPaletteGetFlags(face_t* face, c_uint palette_index);
		[LinkName("hb_ot_color_palette_get_name_id")]
		public static extern ot_name_id_t OtColorPaletteGetNameId(face_t* face, c_uint palette_index);
		[LinkName("hb_ot_font_set_funcs")]
		public static extern void OtFontSetFuncs(font_t* font);
		[LinkName("hb_ot_layout_collect_features")]
		public static extern void OtLayoutCollectFeatures(face_t* face, tag_t table_tag, tag_t* scripts, tag_t* languages, tag_t* features, set_t* feature_indexes);
		[LinkName("hb_ot_layout_collect_lookups")]
		public static extern void OtLayoutCollectLookups(face_t* face, tag_t table_tag, tag_t* scripts, tag_t* languages, tag_t* features, set_t* lookup_indexes);
		[LinkName("hb_ot_layout_feature_get_characters")]
		public static extern c_uint OtLayoutFeatureGetCharacters(face_t* face, tag_t table_tag, c_uint feature_index, c_uint start_offset, c_uint* char_count, codepoint_t* characters);
		[LinkName("hb_ot_layout_feature_get_lookups")]
		public static extern c_uint OtLayoutFeatureGetLookups(face_t* face, tag_t table_tag, c_uint feature_index, c_uint start_offset, c_uint* lookup_count, c_uint* lookup_indexes);
		[LinkName("hb_ot_layout_feature_get_name_ids")]
		public static extern bool_t OtLayoutFeatureGetNameIds(face_t* face, tag_t table_tag, c_uint feature_index, ot_name_id_t* label_id, ot_name_id_t* tooltip_id, ot_name_id_t* sample_id, c_uint* num_named_parameters, ot_name_id_t* first_param_id);
		[LinkName("hb_ot_layout_feature_with_variations_get_lookups")]
		public static extern c_uint OtLayoutFeatureWithVariationsGetLookups(face_t* face, tag_t table_tag, c_uint feature_index, c_uint variations_index, c_uint start_offset, c_uint* lookup_count, c_uint* lookup_indexes);
		[LinkName("hb_ot_layout_get_attach_points")]
		public static extern c_uint OtLayoutGetAttachPoints(face_t* face, codepoint_t glyph, c_uint start_offset, c_uint* point_count, c_uint* point_array);
		[LinkName("hb_ot_layout_get_baseline")]
		public static extern bool_t OtLayoutGetBaseline(font_t* font, ot_layout_baseline_tag_t baseline_tag, direction_t direction, tag_t script_tag, tag_t language_tag, position_t* coord);
		[LinkName("hb_ot_layout_get_baseline_with_fallback")]
		public static extern void OtLayoutGetBaselineWithFallback(font_t* font, ot_layout_baseline_tag_t baseline_tag, direction_t direction, tag_t script_tag, tag_t language_tag, position_t* coord);
		[LinkName("hb_ot_layout_get_glyph_class")]
		public static extern ot_layout_glyph_class_t OtLayoutGetGlyphClass(face_t* face, codepoint_t glyph);
		[LinkName("hb_ot_layout_get_glyphs_in_class")]
		public static extern void OtLayoutGetGlyphsInClass(face_t* face, ot_layout_glyph_class_t klass, set_t* glyphs);
		[LinkName("hb_ot_layout_get_horizontal_baseline_tag_for_script")]
		public static extern ot_layout_baseline_tag_t OtLayoutGetHorizontalBaselineTagForScript(script_t script);
		[LinkName("hb_ot_layout_get_ligature_carets")]
		public static extern c_uint OtLayoutGetLigatureCarets(font_t* font, direction_t direction, codepoint_t glyph, c_uint start_offset, c_uint* caret_count, position_t* caret_array);
		[LinkName("hb_ot_layout_get_size_params")]
		public static extern bool_t OtLayoutGetSizeParams(face_t* face, c_uint* design_size, c_uint* subfamily_id, ot_name_id_t* subfamily_name_id, c_uint* range_start, c_uint* range_end);
		[LinkName("hb_ot_layout_has_glyph_classes")]
		public static extern bool_t OtLayoutHasGlyphClasses(face_t* face);
		[LinkName("hb_ot_layout_has_positioning")]
		public static extern bool_t OtLayoutHasPositioning(face_t* face);
		[LinkName("hb_ot_layout_has_substitution")]
		public static extern bool_t OtLayoutHasSubstitution(face_t* face);
		[LinkName("hb_ot_layout_language_find_feature")]
		public static extern bool_t OtLayoutLanguageFindFeature(face_t* face, tag_t table_tag, c_uint script_index, c_uint language_index, tag_t feature_tag, c_uint* feature_index);
		[LinkName("hb_ot_layout_language_get_feature_indexes")]
		public static extern c_uint OtLayoutLanguageGetFeatureIndexes(face_t* face, tag_t table_tag, c_uint script_index, c_uint language_index, c_uint start_offset, c_uint* feature_count, c_uint* feature_indexes);
		[LinkName("hb_ot_layout_language_get_feature_tags")]
		public static extern c_uint OtLayoutLanguageGetFeatureTags(face_t* face, tag_t table_tag, c_uint script_index, c_uint language_index, c_uint start_offset, c_uint* feature_count, tag_t* feature_tags);
		[LinkName("hb_ot_layout_language_get_required_feature")]
		public static extern bool_t OtLayoutLanguageGetRequiredFeature(face_t* face, tag_t table_tag, c_uint script_index, c_uint language_index, c_uint* feature_index, tag_t* feature_tag);
		[LinkName("hb_ot_layout_language_get_required_feature_index")]
		public static extern bool_t OtLayoutLanguageGetRequiredFeatureIndex(face_t* face, tag_t table_tag, c_uint script_index, c_uint language_index, c_uint* feature_index);
		[LinkName("hb_ot_layout_lookup_collect_glyphs")]
		public static extern void OtLayoutLookupCollectGlyphs(face_t* face, tag_t table_tag, c_uint lookup_index, set_t* glyphs_before, set_t* glyphs_input, set_t* glyphs_after, set_t* glyphs_output);
		[LinkName("hb_ot_layout_lookup_get_glyph_alternates")]
		public static extern c_uint OtLayoutLookupGetGlyphAlternates(face_t* face, c_uint lookup_index, codepoint_t glyph, c_uint start_offset, c_uint* alternate_count, codepoint_t* alternate_glyphs);
		[LinkName("hb_ot_layout_lookup_substitute_closure")]
		public static extern void OtLayoutLookupSubstituteClosure(face_t* face, c_uint lookup_index, set_t* glyphs);
		[LinkName("hb_ot_layout_lookup_would_substitute")]
		public static extern bool_t OtLayoutLookupWouldSubstitute(face_t* face, c_uint lookup_index, codepoint_t* glyphs, c_uint glyphs_length, bool_t zero_context);
		[LinkName("hb_ot_layout_lookups_substitute_closure")]
		public static extern void OtLayoutLookupsSubstituteClosure(face_t* face, set_t* lookups, set_t* glyphs);
		[LinkName("hb_ot_layout_script_find_language")]
		public static extern bool_t OtLayoutScriptFindLanguage(face_t* face, tag_t table_tag, c_uint script_index, tag_t language_tag, c_uint* language_index);
		[LinkName("hb_ot_layout_script_get_language_tags")]
		public static extern c_uint OtLayoutScriptGetLanguageTags(face_t* face, tag_t table_tag, c_uint script_index, c_uint start_offset, c_uint* language_count, tag_t* language_tags);
		[LinkName("hb_ot_layout_script_select_language")]
		public static extern bool_t OtLayoutScriptSelectLanguage(face_t* face, tag_t table_tag, c_uint script_index, c_uint language_count, tag_t* language_tags, c_uint* language_index);
		[LinkName("hb_ot_layout_table_choose_script")]
		public static extern bool_t OtLayoutTableChooseScript(face_t* face, tag_t table_tag, tag_t* script_tags, c_uint* script_index, tag_t* chosen_script);
		[LinkName("hb_ot_layout_table_find_feature_variations")]
		public static extern bool_t OtLayoutTableFindFeatureVariations(face_t* face, tag_t table_tag, c_int* coords, c_uint num_coords, c_uint* variations_index);
		[LinkName("hb_ot_layout_table_find_script")]
		public static extern bool_t OtLayoutTableFindScript(face_t* face, tag_t table_tag, tag_t script_tag, c_uint* script_index);
		[LinkName("hb_ot_layout_table_get_feature_tags")]
		public static extern c_uint OtLayoutTableGetFeatureTags(face_t* face, tag_t table_tag, c_uint start_offset, c_uint* feature_count, tag_t* feature_tags);
		[LinkName("hb_ot_layout_table_get_lookup_count")]
		public static extern c_uint OtLayoutTableGetLookupCount(face_t* face, tag_t table_tag);
		[LinkName("hb_ot_layout_table_get_script_tags")]
		public static extern c_uint OtLayoutTableGetScriptTags(face_t* face, tag_t table_tag, c_uint start_offset, c_uint* script_count, tag_t* script_tags);
		[LinkName("hb_ot_layout_table_select_script")]
		public static extern bool_t OtLayoutTableSelectScript(face_t* face, tag_t table_tag, c_uint script_count, tag_t* script_tags, c_uint* script_index, tag_t* chosen_script);
		[LinkName("hb_ot_math_get_constant")]
		public static extern position_t OtMathGetConstant(font_t* font, ot_math_constant_t constant);
		[LinkName("hb_ot_math_get_glyph_assembly")]
		public static extern c_uint OtMathGetGlyphAssembly(font_t* font, codepoint_t glyph, direction_t direction, c_uint start_offset, c_uint* parts_count, ot_math_glyph_part_t* parts, position_t* italics_correction);
		[LinkName("hb_ot_math_get_glyph_italics_correction")]
		public static extern position_t OtMathGetGlyphItalicsCorrection(font_t* font, codepoint_t glyph);
		[LinkName("hb_ot_math_get_glyph_kerning")]
		public static extern position_t OtMathGetGlyphKerning(font_t* font, codepoint_t glyph, ot_math_kern_t kern, position_t correction_height);
		[LinkName("hb_ot_math_get_glyph_kernings")]
		public static extern c_uint OtMathGetGlyphKernings(font_t* font, codepoint_t glyph, ot_math_kern_t kern, c_uint start_offset, c_uint* entries_count, ot_math_kern_entry_t* kern_entries);
		[LinkName("hb_ot_math_get_glyph_top_accent_attachment")]
		public static extern position_t OtMathGetGlyphTopAccentAttachment(font_t* font, codepoint_t glyph);
		[LinkName("hb_ot_math_get_glyph_variants")]
		public static extern c_uint OtMathGetGlyphVariants(font_t* font, codepoint_t glyph, direction_t direction, c_uint start_offset, c_uint* variants_count, ot_math_glyph_variant_t* variants);
		[LinkName("hb_ot_math_get_min_connector_overlap")]
		public static extern position_t OtMathGetMinConnectorOverlap(font_t* font, direction_t direction);
		[LinkName("hb_ot_math_has_data")]
		public static extern bool_t OtMathHasData(face_t* face);
		[LinkName("hb_ot_math_is_glyph_extended_shape")]
		public static extern bool_t OtMathIsGlyphExtendedShape(face_t* face, codepoint_t glyph);
		[LinkName("hb_ot_meta_get_entry_tags")]
		public static extern c_uint OtMetaGetEntryTags(face_t* face, c_uint start_offset, c_uint* entries_count, ot_meta_tag_t* entries);
		[LinkName("hb_ot_meta_reference_entry")]
		public static extern blob_t* OtMetaReferenceEntry(face_t* face, ot_meta_tag_t meta_tag);
		[LinkName("hb_ot_metrics_get_position")]
		public static extern bool_t OtMetricsGetPosition(font_t* font, ot_metrics_tag_t metrics_tag, position_t* position);
		[LinkName("hb_ot_metrics_get_position_with_fallback")]
		public static extern void OtMetricsGetPositionWithFallback(font_t* font, ot_metrics_tag_t metrics_tag, position_t* position);
		[LinkName("hb_ot_metrics_get_variation")]
		public static extern float OtMetricsGetVariation(font_t* font, ot_metrics_tag_t metrics_tag);
		[LinkName("hb_ot_metrics_get_x_variation")]
		public static extern position_t OtMetricsGetXVariation(font_t* font, ot_metrics_tag_t metrics_tag);
		[LinkName("hb_ot_metrics_get_y_variation")]
		public static extern position_t OtMetricsGetYVariation(font_t* font, ot_metrics_tag_t metrics_tag);
		[LinkName("hb_ot_name_get_utf16")]
		public static extern c_uint OtNameGetUtf16(face_t* face, ot_name_id_t name_id, language_t language, c_uint* text_size, c_ushort* text);
		[LinkName("hb_ot_name_get_utf32")]
		public static extern c_uint OtNameGetUtf32(face_t* face, ot_name_id_t name_id, language_t language, c_uint* text_size, c_uint* text);
		[LinkName("hb_ot_name_get_utf8")]
		public static extern c_uint OtNameGetUtf8(face_t* face, ot_name_id_t name_id, language_t language, c_uint* text_size, char8* text);
		[LinkName("hb_ot_name_list_names")]
		public static extern ot_name_entry_t* OtNameListNames(face_t* face, c_uint* num_entries);
		[LinkName("hb_ot_shape_glyphs_closure")]
		public static extern void OtShapeGlyphsClosure(font_t* font, buffer_t* buffer, feature_t* features, c_uint num_features, set_t* glyphs);
		[LinkName("hb_ot_shape_plan_collect_lookups")]
		public static extern void OtShapePlanCollectLookups(shape_plan_t* shape_plan, tag_t table_tag, set_t* lookup_indexes);
		[LinkName("hb_ot_tag_from_language")]
		public static extern tag_t OtTagFromLanguage(language_t language);
		[LinkName("hb_ot_tag_to_language")]
		public static extern language_t OtTagToLanguage(tag_t tag);
		[LinkName("hb_ot_tag_to_script")]
		public static extern script_t OtTagToScript(tag_t tag);
		[LinkName("hb_ot_tags_from_script")]
		public static extern void OtTagsFromScript(script_t script, tag_t* script_tag_1, tag_t* script_tag_2);
		[LinkName("hb_ot_tags_from_script_and_language")]
		public static extern void OtTagsFromScriptAndLanguage(script_t script, language_t language, c_uint* script_count, tag_t* script_tags, c_uint* language_count, tag_t* language_tags);
		[LinkName("hb_ot_tags_to_script_and_language")]
		public static extern void OtTagsToScriptAndLanguage(tag_t script_tag, tag_t language_tag, script_t* script, language_t* language);
		[LinkName("hb_ot_var_find_axis")]
		public static extern bool_t OtVarFindAxis(face_t* face, tag_t axis_tag, c_uint* axis_index, ot_var_axis_t* axis_info);
		[LinkName("hb_ot_var_find_axis_info")]
		public static extern bool_t OtVarFindAxisInfo(face_t* face, tag_t axis_tag, ot_var_axis_info_t* axis_info);
		[LinkName("hb_ot_var_get_axes")]
		public static extern c_uint OtVarGetAxes(face_t* face, c_uint start_offset, c_uint* axes_count, ot_var_axis_t* axes_array);
		[LinkName("hb_ot_var_get_axis_count")]
		public static extern c_uint OtVarGetAxisCount(face_t* face);
		[LinkName("hb_ot_var_get_axis_infos")]
		public static extern c_uint OtVarGetAxisInfos(face_t* face, c_uint start_offset, c_uint* axes_count, ot_var_axis_info_t* axes_array);
		[LinkName("hb_ot_var_get_named_instance_count")]
		public static extern c_uint OtVarGetNamedInstanceCount(face_t* face);
		[LinkName("hb_ot_var_has_data")]
		public static extern bool_t OtVarHasData(face_t* face);
		[LinkName("hb_ot_var_named_instance_get_design_coords")]
		public static extern c_uint OtVarNamedInstanceGetDesignCoords(face_t* face, c_uint instance_index, c_uint* coords_length, float* coords);
		[LinkName("hb_ot_var_named_instance_get_postscript_name_id")]
		public static extern ot_name_id_t OtVarNamedInstanceGetPostscriptNameId(face_t* face, c_uint instance_index);
		[LinkName("hb_ot_var_named_instance_get_subfamily_name_id")]
		public static extern ot_name_id_t OtVarNamedInstanceGetSubfamilyNameId(face_t* face, c_uint instance_index);
		[LinkName("hb_ot_var_normalize_coords")]
		public static extern void OtVarNormalizeCoords(face_t* face, c_uint coords_length, float* design_coords, c_int* normalized_coords);
		[LinkName("hb_ot_var_normalize_variations")]
		public static extern void OtVarNormalizeVariations(face_t* face, variation_t* variations, c_uint variations_length, c_int* coords, c_uint coords_length);
		[LinkName("hb_script_from_iso15924_tag")]
		public static extern script_t ScriptFromIso15924Tag(tag_t tag);
		[LinkName("hb_script_from_string")]
		public static extern script_t ScriptFromString(c_uchar* str, c_int len);
		[LinkName("hb_script_get_horizontal_direction")]
		public static extern direction_t ScriptGetHorizontalDirection(script_t script);
		[LinkName("hb_script_to_iso15924_tag")]
		public static extern tag_t ScriptToIso15924Tag(script_t script);
		[LinkName("hb_segment_properties_equal")]
		public static extern bool_t SegmentPropertiesEqual(segment_properties_t* a, segment_properties_t* b);
		[LinkName("hb_segment_properties_hash")]
		public static extern c_uint SegmentPropertiesHash(segment_properties_t* p);
		[LinkName("hb_segment_properties_overlay")]
		public static extern void SegmentPropertiesOverlay(segment_properties_t* p, segment_properties_t* src);
		[LinkName("hb_set_add")]
		public static extern void SetAdd(set_t* set, codepoint_t codepoint);
		[LinkName("hb_set_add_range")]
		public static extern void SetAddRange(set_t* set, codepoint_t first, codepoint_t last);
		[LinkName("hb_set_add_sorted_array")]
		public static extern void SetAddSortedArray(set_t* set, codepoint_t* sorted_codepoints, c_uint num_codepoints);
		[LinkName("hb_set_allocation_successful")]
		public static extern bool_t SetAllocationSuccessful(set_t* set);
		[LinkName("hb_set_clear")]
		public static extern void SetClear(set_t* set);
		[LinkName("hb_set_copy")]
		public static extern set_t* SetCopy(set_t* set);
		[LinkName("hb_set_create")]
		public static extern set_t* SetCreate();
		[LinkName("hb_set_del")]
		public static extern void SetDel(set_t* set, codepoint_t codepoint);
		[LinkName("hb_set_del_range")]
		public static extern void SetDelRange(set_t* set, codepoint_t first, codepoint_t last);
		[LinkName("hb_set_get_empty")]
		public static extern set_t* SetGetEmpty();
		[LinkName("hb_set_get_max")]
		public static extern codepoint_t SetGetMax(set_t* set);
		[LinkName("hb_set_get_min")]
		public static extern codepoint_t SetGetMin(set_t* set);
		[LinkName("hb_set_get_population")]
		public static extern c_uint SetGetPopulation(set_t* set);
		[LinkName("hb_set_has")]
		public static extern bool_t SetHas(set_t* set, codepoint_t codepoint);
		[LinkName("hb_set_hash")]
		public static extern c_uint SetHash(set_t* set);
		[LinkName("hb_set_intersect")]
		public static extern void SetIntersect(set_t* set, set_t* other);
		[LinkName("hb_set_invert")]
		public static extern void SetInvert(set_t* set);
		[LinkName("hb_set_is_empty")]
		public static extern bool_t SetIsEmpty(set_t* set);
		[LinkName("hb_set_is_equal")]
		public static extern bool_t SetIsEqual(set_t* set, set_t* other);
		[LinkName("hb_set_is_subset")]
		public static extern bool_t SetIsSubset(set_t* set, set_t* larger_set);
		[LinkName("hb_set_next")]
		public static extern bool_t SetNext(set_t* set, codepoint_t* codepoint);
		[LinkName("hb_set_next_many")]
		public static extern c_uint SetNextMany(set_t* set, codepoint_t codepoint, codepoint_t* out_, c_uint size);
		[LinkName("hb_set_next_range")]
		public static extern bool_t SetNextRange(set_t* set, codepoint_t* first, codepoint_t* last);
		[LinkName("hb_set_previous")]
		public static extern bool_t SetPrevious(set_t* set, codepoint_t* codepoint);
		[LinkName("hb_set_previous_range")]
		public static extern bool_t SetPreviousRange(set_t* set, codepoint_t* first, codepoint_t* last);
		[LinkName("hb_set_set")]
		public static extern void SetSet(set_t* set, set_t* other);
		[LinkName("hb_set_subtract")]
		public static extern void SetSubtract(set_t* set, set_t* other);
		[LinkName("hb_set_symmetric_difference")]
		public static extern void SetSymmetricDifference(set_t* set, set_t* other);
		[LinkName("hb_set_union")]
		public static extern void SetUnion(set_t* set, set_t* other);
		[LinkName("hb_shape")]
		public static extern void Shape(font_t* font, buffer_t* buffer, feature_t* features, c_uint num_features);
		[LinkName("hb_shape_full")]
		public static extern bool_t ShapeFull(font_t* font, buffer_t* buffer, feature_t* features, c_uint num_features, char8** shaper_list);
		[LinkName("hb_shape_list_shapers")]
		public static extern char8** ShapeListShapers();
		[LinkName("hb_shape_plan_create")]
		public static extern shape_plan_t* ShapePlanCreate(face_t* face, segment_properties_t* props, feature_t* user_features, c_uint num_user_features, char8** shaper_list);
		[LinkName("hb_shape_plan_create2")]
		public static extern shape_plan_t* ShapePlanCreate2(face_t* face, segment_properties_t* props, feature_t* user_features, c_uint num_user_features, c_int* coords, c_uint num_coords, char8** shaper_list);
		[LinkName("hb_shape_plan_create_cached")]
		public static extern shape_plan_t* ShapePlanCreateCached(face_t* face, segment_properties_t* props, feature_t* user_features, c_uint num_user_features, char8** shaper_list);
		[LinkName("hb_shape_plan_create_cached2")]
		public static extern shape_plan_t* ShapePlanCreateCached2(face_t* face, segment_properties_t* props, feature_t* user_features, c_uint num_user_features, c_int* coords, c_uint num_coords, char8** shaper_list);
		[LinkName("hb_shape_plan_execute")]
		public static extern bool_t ShapePlanExecute(shape_plan_t* shape_plan, font_t* font, buffer_t* buffer, feature_t* features, c_uint num_features);
		[LinkName("hb_shape_plan_get_empty")]
		public static extern shape_plan_t* ShapePlanGetEmpty();
		[LinkName("hb_shape_plan_get_shaper")]
		public static extern char8* ShapePlanGetShaper(shape_plan_t* shape_plan);
		[LinkName("hb_style_get_value")]
		public static extern float StyleGetValue(font_t* font, style_tag_t style_tag);
		[LinkName("hb_tag_from_string")]
		public static extern tag_t TagFromString(c_uchar* str, c_int len);
		[LinkName("hb_tag_to_string")]
		public static extern void TagToString(tag_t tag, c_uchar* buf);
		[LinkName("hb_unicode_combining_class")]
		public static extern unicode_combining_class_t UnicodeCombiningClass(unicode_funcs_t* ufuncs, codepoint_t unicode);
		[LinkName("hb_unicode_compose")]
		public static extern bool_t UnicodeCompose(unicode_funcs_t* ufuncs, codepoint_t a, codepoint_t b, codepoint_t* ab);
		[LinkName("hb_unicode_decompose")]
		public static extern bool_t UnicodeDecompose(unicode_funcs_t* ufuncs, codepoint_t ab, codepoint_t* a, codepoint_t* b);
		[LinkName("hb_unicode_decompose_compatibility")]
		public static extern c_uint UnicodeDecomposeCompatibility(unicode_funcs_t* ufuncs, codepoint_t u, codepoint_t* decomposed);
		[LinkName("hb_unicode_eastasian_width")]
		public static extern c_uint UnicodeEastasianWidth(unicode_funcs_t* ufuncs, codepoint_t unicode);
		[LinkName("hb_unicode_funcs_create")]
		public static extern unicode_funcs_t* UnicodeFuncsCreate(unicode_funcs_t* parent);
		[LinkName("hb_unicode_funcs_get_default")]
		public static extern unicode_funcs_t* UnicodeFuncsGetDefault();
		[LinkName("hb_unicode_funcs_get_empty")]
		public static extern unicode_funcs_t* UnicodeFuncsGetEmpty();
		[LinkName("hb_unicode_funcs_get_parent")]
		public static extern unicode_funcs_t* UnicodeFuncsGetParent(unicode_funcs_t* ufuncs);
		[LinkName("hb_unicode_funcs_is_immutable")]
		public static extern bool_t UnicodeFuncsIsImmutable(unicode_funcs_t* ufuncs);
		[LinkName("hb_unicode_funcs_make_immutable")]
		public static extern void UnicodeFuncsMakeImmutable(unicode_funcs_t* ufuncs);
		[LinkName("hb_unicode_funcs_set_combining_class_func")]
		public static extern void UnicodeFuncsSetCombiningClassFunc(unicode_funcs_t* ufuncs, unicode_combining_class_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_unicode_funcs_set_compose_func")]
		public static extern void UnicodeFuncsSetComposeFunc(unicode_funcs_t* ufuncs, unicode_compose_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_unicode_funcs_set_decompose_compatibility_func")]
		public static extern void UnicodeFuncsSetDecomposeCompatibilityFunc(unicode_funcs_t* ufuncs, unicode_decompose_compatibility_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_unicode_funcs_set_decompose_func")]
		public static extern void UnicodeFuncsSetDecomposeFunc(unicode_funcs_t* ufuncs, unicode_decompose_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_unicode_funcs_set_eastasian_width_func")]
		public static extern void UnicodeFuncsSetEastasianWidthFunc(unicode_funcs_t* ufuncs, unicode_eastasian_width_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_unicode_funcs_set_general_category_func")]
		public static extern void UnicodeFuncsSetGeneralCategoryFunc(unicode_funcs_t* ufuncs, unicode_general_category_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_unicode_funcs_set_mirroring_func")]
		public static extern void UnicodeFuncsSetMirroringFunc(unicode_funcs_t* ufuncs, unicode_mirroring_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_unicode_funcs_set_script_func")]
		public static extern void UnicodeFuncsSetScriptFunc(unicode_funcs_t* ufuncs, unicode_script_func_t func, void** user_data, destroy_func_t destroy);
		[LinkName("hb_unicode_general_category")]
		public static extern unicode_general_category_t UnicodeGeneralCategory(unicode_funcs_t* ufuncs, codepoint_t unicode);
		[LinkName("hb_unicode_mirroring")]
		public static extern codepoint_t UnicodeMirroring(unicode_funcs_t* ufuncs, codepoint_t unicode);
		[LinkName("hb_unicode_script")]
		public static extern script_t UnicodeScript(unicode_funcs_t* ufuncs, codepoint_t unicode);
		[LinkName("hb_variation_from_string")]
		public static extern bool_t VariationFromString(c_uchar* str, c_int len, variation_t* variation);
		[LinkName("hb_variation_to_string")]
		public static extern void VariationToString(variation_t* variation, char8* buf, c_uint size);
		[LinkName("hb_version")]
		public static extern void Version(c_uint* major, c_uint* minor, c_uint* micro);
		[LinkName("hb_version_atleast")]
		public static extern bool_t VersionAtleast(c_uint major, c_uint minor, c_uint micro);
		[LinkName("hb_version_string")]
		public static extern char8* VersionString();
	[CRepr]
	public struct aat_layout_feature_selector_info_t
	{
		public ot_name_id_t name_id;
		public aat_layout_feature_selector_t enable;
		public aat_layout_feature_selector_t disable;
		public c_uint reserved;
	}
	[CRepr]
	public struct blob_t
	{
	}
	[CRepr]
	public struct buffer_t
	{
	}
	[CRepr]
	public struct draw_funcs_t
	{
	}
	[CRepr]
	public struct draw_state_t
	{
		public bool_t path_open;
		public float path_start_x;
		public float path_start_y;
		public float current_x;
		public float current_y;
		public var_num_t reserved1;
		public var_num_t reserved2;
		public var_num_t reserved3;
		public var_num_t reserved4;
		public var_num_t reserved5;
		public var_num_t reserved6;
		public var_num_t reserved7;
	}
	[CRepr]
	public struct face_t
	{
	}
	[CRepr]
	public struct feature_t
	{
		public tag_t tag;
		public c_uint value;
		public c_uint start;
		public c_uint end;
		[LinkName("hb_feature_to_string")]
		public static extern void String(feature_t* feature, char8* buf, c_uint size);
	}
	[CRepr]
	public struct font_extents_t
	{
		public position_t ascender;
		public position_t descender;
		public position_t line_gap;
		public position_t reserved9;
		public position_t reserved8;
		public position_t reserved7;
		public position_t reserved6;
		public position_t reserved5;
		public position_t reserved4;
		public position_t reserved3;
		public position_t reserved2;
		public position_t reserved1;
	}
	[CRepr]
	public struct font_funcs_t
	{
	}
	[CRepr]
	public struct font_t
	{
	}
	[CRepr]
	public struct glyph_extents_t
	{
		public position_t x_bearing;
		public position_t y_bearing;
		public position_t width;
		public position_t height;
	}
	[CRepr]
	public struct glyph_info_t
	{
		public codepoint_t codepoint;
		public mask_t mask;
		public c_uint cluster;
		public var_int_t var1;
		public var_int_t var2;
	}
	[CRepr]
	public struct glyph_position_t
	{
		public position_t x_advance;
		public position_t y_advance;
		public position_t x_offset;
		public position_t y_offset;
		public var_int_t _var;
	}
	[CRepr]
	public struct language_t : int
	{
		[LinkName("hb_language_to_string")]
		public static extern char8* String(language_t language);
	}
	[CRepr]
	public struct map_t
	{
	}
	[CRepr]
	public struct ot_color_layer_t
	{
		public codepoint_t glyph;
		public c_uint color_index;
	}
	[CRepr]
	public struct ot_math_glyph_part_t
	{
		public codepoint_t glyph;
		public position_t start_connector_length;
		public position_t end_connector_length;
		public position_t full_advance;
		public ot_math_glyph_part_flags_t flags;
	}
	[CRepr]
	public struct ot_math_glyph_variant_t
	{
		public codepoint_t glyph;
		public position_t advance;
	}
	[CRepr]
	public struct ot_math_kern_entry_t
	{
		public position_t max_correction_height;
		public position_t kern_value;
	}
	[CRepr]
	public struct ot_name_entry_t
	{
		public ot_name_id_t name_id;
		public var_int_t _var;
		public language_t language;
	}
	[CRepr]
	public struct ot_var_axis_info_t
	{
		public c_uint axis_index;
		public tag_t tag;
		public ot_name_id_t name_id;
		public ot_var_axis_flags_t flags;
		public float min_value;
		public float default_value;
		public float max_value;
		public c_uint reserved;
	}
	[CRepr]
	public struct ot_var_axis_t
	{
		public tag_t tag;
		public ot_name_id_t name_id;
		public float min_value;
		public float default_value;
		public float max_value;
	}
	[CRepr]
	public struct segment_properties_t
	{
		public direction_t direction;
		public script_t script;
		public language_t language;
		public void** reserved1;
		public void** reserved2;
	}
	[CRepr]
	public struct set_t
	{
	}
	[CRepr]
	public struct shape_plan_t
	{
	}
	[CRepr]
	public struct unicode_funcs_t
	{
	}
	[CRepr]
	public struct user_data_key_t
	{
		public c_char unused;
	}
	[CRepr]
	public struct variation_t
	{
		public tag_t tag;
		public float value;
		[LinkName("hb_variation_to_string")]
		public static extern void String(variation_t* variation, char8* buf, c_uint size);
	}
	[CRepr, AllowDuplicates]
	public enum aat_layout_feature_selector_t
	{
		Invalid = 65535,
		AllTypeFeaturesOn = 0,
		AllTypeFeaturesOff = 1,
		RequiredLigaturesOn = 0,
		RequiredLigaturesOff = 1,
		CommonLigaturesOn = 2,
		CommonLigaturesOff = 3,
		RareLigaturesOn = 4,
		RareLigaturesOff = 5,
		LogosOn = 6,
		LogosOff = 7,
		RebusPicturesOn = 8,
		RebusPicturesOff = 9,
		DiphthongLigaturesOn = 10,
		DiphthongLigaturesOff = 11,
		SquaredLigaturesOn = 12,
		SquaredLigaturesOff = 13,
		AbbrevSquaredLigaturesOn = 14,
		AbbrevSquaredLigaturesOff = 15,
		SymbolLigaturesOn = 16,
		SymbolLigaturesOff = 17,
		ContextualLigaturesOn = 18,
		ContextualLigaturesOff = 19,
		HistoricalLigaturesOn = 20,
		HistoricalLigaturesOff = 21,
		Unconnected = 0,
		PartiallyConnected = 1,
		Cursive = 2,
		UpperAndLowerCase = 0,
		AllCaps = 1,
		AllLowerCase = 2,
		SmallCaps = 3,
		InitialCaps = 4,
		InitialCapsAndSmallCaps = 5,
		SubstituteVerticalFormsOn = 0,
		SubstituteVerticalFormsOff = 1,
		LinguisticRearrangementOn = 0,
		LinguisticRearrangementOff = 1,
		MonospacedNumbers = 0,
		ProportionalNumbers = 1,
		ThirdWidthNumbers = 2,
		QuarterWidthNumbers = 3,
		WordInitialSwashesOn = 0,
		WordInitialSwashesOff = 1,
		WordFinalSwashesOn = 2,
		WordFinalSwashesOff = 3,
		LineInitialSwashesOn = 4,
		LineInitialSwashesOff = 5,
		LineFinalSwashesOn = 6,
		LineFinalSwashesOff = 7,
		NonFinalSwashesOn = 8,
		NonFinalSwashesOff = 9,
		ShowDiacritics = 0,
		HideDiacritics = 1,
		DecomposeDiacritics = 2,
		NormalPosition = 0,
		Superiors = 1,
		Inferiors = 2,
		Ordinals = 3,
		ScientificInferiors = 4,
		NoFractions = 0,
		VerticalFractions = 1,
		DiagonalFractions = 2,
		PreventOverlapOn = 0,
		PreventOverlapOff = 1,
		HyphensToEmDashOn = 0,
		HyphensToEmDashOff = 1,
		HyphenToEnDashOn = 2,
		HyphenToEnDashOff = 3,
		SlashedZeroOn = 4,
		SlashedZeroOff = 5,
		FormInterrobangOn = 6,
		FormInterrobangOff = 7,
		SmartQuotesOn = 8,
		SmartQuotesOff = 9,
		PeriodsToEllipsisOn = 10,
		PeriodsToEllipsisOff = 11,
		HyphenToMinusOn = 0,
		HyphenToMinusOff = 1,
		AsteriskToMultiplyOn = 2,
		AsteriskToMultiplyOff = 3,
		SlashToDivideOn = 4,
		SlashToDivideOff = 5,
		InequalityLigaturesOn = 6,
		InequalityLigaturesOff = 7,
		ExponentsOn = 8,
		ExponentsOff = 9,
		MathematicalGreekOn = 10,
		MathematicalGreekOff = 11,
		NoOrnaments = 0,
		Dingbats = 1,
		PiCharacters = 2,
		Fleurons = 3,
		DecorativeBorders = 4,
		InternationalSymbols = 5,
		MathSymbols = 6,
		NoAlternates = 0,
		DesignLevel1 = 0,
		DesignLevel2 = 1,
		DesignLevel3 = 2,
		DesignLevel4 = 3,
		DesignLevel5 = 4,
		NoStyleOptions = 0,
		DisplayText = 1,
		EngravedText = 2,
		IlluminatedCaps = 3,
		TitlingCaps = 4,
		TallCaps = 5,
		TraditionalCharacters = 0,
		SimplifiedCharacters = 1,
		Jis1978Characters = 2,
		Jis1983Characters = 3,
		Jis1990Characters = 4,
		TraditionalAltOne = 5,
		TraditionalAltTwo = 6,
		TraditionalAltThree = 7,
		TraditionalAltFour = 8,
		TraditionalAltFive = 9,
		ExpertCharacters = 10,
		Jis2004Characters = 11,
		HojoCharacters = 12,
		Nlccharacters = 13,
		TraditionalNamesCharacters = 14,
		LowerCaseNumbers = 0,
		UpperCaseNumbers = 1,
		ProportionalText = 0,
		MonospacedText = 1,
		HalfWidthText = 2,
		ThirdWidthText = 3,
		QuarterWidthText = 4,
		AltProportionalText = 5,
		AltHalfWidthText = 6,
		NoTransliteration = 0,
		HanjaToHangul = 1,
		HiraganaToKatakana = 2,
		KatakanaToHiragana = 3,
		KanaToRomanization = 4,
		RomanizationToHiragana = 5,
		RomanizationToKatakana = 6,
		HanjaToHangulAltOne = 7,
		HanjaToHangulAltTwo = 8,
		HanjaToHangulAltThree = 9,
		NoAnnotation = 0,
		BoxAnnotation = 1,
		RoundedBoxAnnotation = 2,
		CircleAnnotation = 3,
		InvertedCircleAnnotation = 4,
		ParenthesisAnnotation = 5,
		PeriodAnnotation = 6,
		RomanNumeralAnnotation = 7,
		DiamondAnnotation = 8,
		InvertedBoxAnnotation = 9,
		InvertedRoundedBoxAnnotation = 10,
		FullWidthKana = 0,
		ProportionalKana = 1,
		FullWidthIdeographs = 0,
		ProportionalIdeographs = 1,
		HalfWidthIdeographs = 2,
		CanonicalCompositionOn = 0,
		CanonicalCompositionOff = 1,
		CompatibilityCompositionOn = 2,
		CompatibilityCompositionOff = 3,
		TranscodingCompositionOn = 4,
		TranscodingCompositionOff = 5,
		NoRubyKana = 0,
		RubyKana = 1,
		RubyKanaOn = 2,
		RubyKanaOff = 3,
		NoCjkSymbolAlternatives = 0,
		CjkSymbolAltOne = 1,
		CjkSymbolAltTwo = 2,
		CjkSymbolAltThree = 3,
		CjkSymbolAltFour = 4,
		CjkSymbolAltFive = 5,
		NoIdeographicAlternatives = 0,
		IdeographicAltOne = 1,
		IdeographicAltTwo = 2,
		IdeographicAltThree = 3,
		IdeographicAltFour = 4,
		IdeographicAltFive = 5,
		CjkVerticalRomanCentered = 0,
		CjkVerticalRomanHbaseline = 1,
		NoCjkItalicRoman = 0,
		CjkItalicRoman = 1,
		CjkItalicRomanOn = 2,
		CjkItalicRomanOff = 3,
		CaseSensitiveLayoutOn = 0,
		CaseSensitiveLayoutOff = 1,
		CaseSensitiveSpacingOn = 2,
		CaseSensitiveSpacingOff = 3,
		AlternateHorizKanaOn = 0,
		AlternateHorizKanaOff = 1,
		AlternateVertKanaOn = 2,
		AlternateVertKanaOff = 3,
		NoStylisticAlternates = 0,
		StylisticAltOneOn = 2,
		StylisticAltOneOff = 3,
		StylisticAltTwoOn = 4,
		StylisticAltTwoOff = 5,
		StylisticAltThreeOn = 6,
		StylisticAltThreeOff = 7,
		StylisticAltFourOn = 8,
		StylisticAltFourOff = 9,
		StylisticAltFiveOn = 10,
		StylisticAltFiveOff = 11,
		StylisticAltSixOn = 12,
		StylisticAltSixOff = 13,
		StylisticAltSevenOn = 14,
		StylisticAltSevenOff = 15,
		StylisticAltEightOn = 16,
		StylisticAltEightOff = 17,
		StylisticAltNineOn = 18,
		StylisticAltNineOff = 19,
		StylisticAltTenOn = 20,
		StylisticAltTenOff = 21,
		StylisticAltElevenOn = 22,
		StylisticAltElevenOff = 23,
		StylisticAltTwelveOn = 24,
		StylisticAltTwelveOff = 25,
		StylisticAltThirteenOn = 26,
		StylisticAltThirteenOff = 27,
		StylisticAltFourteenOn = 28,
		StylisticAltFourteenOff = 29,
		StylisticAltFifteenOn = 30,
		StylisticAltFifteenOff = 31,
		StylisticAltSixteenOn = 32,
		StylisticAltSixteenOff = 33,
		StylisticAltSeventeenOn = 34,
		StylisticAltSeventeenOff = 35,
		StylisticAltEighteenOn = 36,
		StylisticAltEighteenOff = 37,
		StylisticAltNineteenOn = 38,
		StylisticAltNineteenOff = 39,
		StylisticAltTwentyOn = 40,
		StylisticAltTwentyOff = 41,
		ContextualAlternatesOn = 0,
		ContextualAlternatesOff = 1,
		SwashAlternatesOn = 2,
		SwashAlternatesOff = 3,
		ContextualSwashAlternatesOn = 4,
		ContextualSwashAlternatesOff = 5,
		DefaultLowerCase = 0,
		LowerCaseSmallCaps = 1,
		LowerCasePetiteCaps = 2,
		DefaultUpperCase = 0,
		UpperCaseSmallCaps = 1,
		UpperCasePetiteCaps = 2,
		HalfWidthCjkRoman = 0,
		ProportionalCjkRoman = 1,
		DefaultCjkRoman = 2,
		FullWidthCjkRoman = 3
	}
	[CRepr, AllowDuplicates]
	public enum aat_layout_feature_type_t
	{
		Invalid = 65535,
		AllTypographic = 0,
		Ligatures = 1,
		CurisveConnection = 2,
		LetterCase = 3,
		VerticalSubstitution = 4,
		LinguisticRearrangement = 5,
		NumberSpacing = 6,
		SmartSwashType = 8,
		DiacriticsType = 9,
		VerticalPosition = 10,
		Fractions = 11,
		OverlappingCharactersType = 13,
		TypographicExtras = 14,
		MathematicalExtras = 15,
		OrnamentSetsType = 16,
		CharacterAlternatives = 17,
		DesignComplexityType = 18,
		StyleOptions = 19,
		CharacterShape = 20,
		NumberCase = 21,
		TextSpacing = 22,
		Transliteration = 23,
		AnnotationType = 24,
		KanaSpacingType = 25,
		IdeographicSpacingType = 26,
		UnicodeDecompositionType = 27,
		RubyKana = 28,
		CjkSymbolAlternativesType = 29,
		IdeographicAlternativesType = 30,
		CjkVerticalRomanPlacementType = 31,
		ItalicCjkRoman = 32,
		CaseSensitiveLayout = 33,
		AlternateKana = 34,
		StylisticAlternatives = 35,
		ContextualAlternatives = 36,
		LowerCase = 37,
		UpperCase = 38,
		LanguageTagType = 39,
		CjkRomanSpacingType = 103
	}
	[CRepr, AllowDuplicates]
	public enum buffer_cluster_level_t
	{
		MonotoneGraphemes = 0,
		MonotoneCharacters = 1,
		Characters = 2,
		Default = 0
	}
	[CRepr, AllowDuplicates]
	public enum buffer_content_type_t
	{
		Invalid = 0,
		Unicode = 1,
		Glyphs = 2
	}
	[CRepr, AllowDuplicates]
	public enum buffer_diff_flags_t
	{
		Equal = 0,
		ContentTypeMismatch = 1,
		LengthMismatch = 2,
		NotdefPresent = 4,
		DottedCirclePresent = 8,
		CodepointMismatch = 16,
		ClusterMismatch = 32,
		GlyphFlagsMismatch = 64,
		PositionMismatch = 128
	}
	[CRepr, AllowDuplicates]
	public enum buffer_flags_t
	{
		Default = 0,
		Bot = 1,
		Eot = 2,
		PreserveDefaultIgnorables = 4,
		RemoveDefaultIgnorables = 8,
		DoNotInsertDottedCircle = 16,
		Verify = 32,
		ProduceUnsafeToConcat = 64,
		ProduceSafeToInsertTatweel = 128,
		Defined = 255
	}
	[CRepr, AllowDuplicates]
	public enum buffer_serialize_flags_t
	{
		Default = 0,
		NoClusters = 1,
		NoPositions = 2,
		NoGlyphNames = 4,
		GlyphExtents = 8,
		GlyphFlags = 16,
		NoAdvances = 32,
		Defined = 63
	}
	[CRepr, AllowDuplicates]
	public enum buffer_serialize_format_t
	{
		Text = 1413830740,
		Json = 1246973774,
		Invalid = 0
	}
	[CRepr, AllowDuplicates]
	public enum direction_t
	{
		Invalid = 0,
		Ltr = 4,
		Rtl = 5,
		Ttb = 6,
		Btt = 7
	}
	[CRepr, AllowDuplicates]
	public enum glyph_flags_t
	{
		UnsafeToBreak = 1,
		UnsafeToConcat = 2,
		SafeToInsertTatweel = 4,
		Defined = 7
	}
	[CRepr, AllowDuplicates]
	public enum memory_mode_t
	{
		Duplicate = 0,
		Readonly = 1,
		Writable = 2,
		ReadonlyMayMakeWritable = 3
	}
	[CRepr, AllowDuplicates]
	public enum ot_color_palette_flags_t
	{
		Default = 0,
		UsableWithLightBackground = 1,
		UsableWithDarkBackground = 2
	}
	[CRepr, AllowDuplicates]
	public enum ot_layout_baseline_tag_t
	{
		Roman = 1919905134,
		Hanging = 1751215719,
		IdeoFaceBottomOrLeft = 1768121954,
		IdeoFaceTopOrRight = 1768121972,
		IdeoFaceCentral = 1231251043,
		IdeoEmboxBottomOrLeft = 1768187247,
		IdeoEmboxTopOrRight = 1768191088,
		IdeoEmboxCentral = 1231315813,
		Math = 1835103336
	}
	[CRepr, AllowDuplicates]
	public enum ot_layout_glyph_class_t
	{
		Unclassified = 0,
		BaseGlyph = 1,
		Ligature = 2,
		Mark = 3,
		Component = 4
	}
	[CRepr, AllowDuplicates]
	public enum ot_math_constant_t
	{
		ScriptPercentScaleDown = 0,
		ScriptScriptPercentScaleDown = 1,
		DelimitedSubFormulaMinHeight = 2,
		DisplayOperatorMinHeight = 3,
		MathLeading = 4,
		AxisHeight = 5,
		AccentBaseHeight = 6,
		FlattenedAccentBaseHeight = 7,
		SubscriptShiftDown = 8,
		SubscriptTopMax = 9,
		SubscriptBaselineDropMin = 10,
		SuperscriptShiftUp = 11,
		SuperscriptShiftUpCramped = 12,
		SuperscriptBottomMin = 13,
		SuperscriptBaselineDropMax = 14,
		SubSuperscriptGapMin = 15,
		SuperscriptBottomMaxWithSubscript = 16,
		SpaceAfterScript = 17,
		UpperLimitGapMin = 18,
		UpperLimitBaselineRiseMin = 19,
		LowerLimitGapMin = 20,
		LowerLimitBaselineDropMin = 21,
		StackTopShiftUp = 22,
		StackTopDisplayStyleShiftUp = 23,
		StackBottomShiftDown = 24,
		StackBottomDisplayStyleShiftDown = 25,
		StackGapMin = 26,
		StackDisplayStyleGapMin = 27,
		StretchStackTopShiftUp = 28,
		StretchStackBottomShiftDown = 29,
		StretchStackGapAboveMin = 30,
		StretchStackGapBelowMin = 31,
		FractionNumeratorShiftUp = 32,
		FractionNumeratorDisplayStyleShiftUp = 33,
		FractionDenominatorShiftDown = 34,
		FractionDenominatorDisplayStyleShiftDown = 35,
		FractionNumeratorGapMin = 36,
		FractionNumDisplayStyleGapMin = 37,
		FractionRuleThickness = 38,
		FractionDenominatorGapMin = 39,
		FractionDenomDisplayStyleGapMin = 40,
		SkewedFractionHorizontalGap = 41,
		SkewedFractionVerticalGap = 42,
		OverbarVerticalGap = 43,
		OverbarRuleThickness = 44,
		OverbarExtraAscender = 45,
		UnderbarVerticalGap = 46,
		UnderbarRuleThickness = 47,
		UnderbarExtraDescender = 48,
		RadicalVerticalGap = 49,
		RadicalDisplayStyleVerticalGap = 50,
		RadicalRuleThickness = 51,
		RadicalExtraAscender = 52,
		RadicalKernBeforeDegree = 53,
		RadicalKernAfterDegree = 54,
		RadicalDegreeBottomRaisePercent = 55
	}
	[CRepr, AllowDuplicates]
	public enum ot_math_glyph_part_flags_t
	{
		Extender = 1
	}
	[CRepr, AllowDuplicates]
	public enum ot_math_kern_t
	{
		TopRight = 0,
		TopLeft = 1,
		BottomRight = 2,
		BottomLeft = 3
	}
	[CRepr, AllowDuplicates]
	public enum ot_meta_tag_t
	{
		DesignLanguages = 1684827751,
		SupportedLanguages = 1936485991
	}
	[CRepr, AllowDuplicates]
	public enum ot_metrics_tag_t
	{
		HorizontalAscender = 1751216995,
		HorizontalDescender = 1751413603,
		HorizontalLineGap = 1751934832,
		HorizontalClippingAscent = 1751346273,
		HorizontalClippingDescent = 1751346276,
		VerticalAscender = 1986098019,
		VerticalDescender = 1986294627,
		VerticalLineGap = 1986815856,
		HorizontalCaretRise = 1751347827,
		HorizontalCaretRun = 1751347822,
		HorizontalCaretOffset = 1751347046,
		VerticalCaretRise = 1986228851,
		VerticalCaretRun = 1986228846,
		VerticalCaretOffset = 1986228070,
		XHeight = 2020108148,
		CapHeight = 1668311156,
		SubscriptEmXSize = 1935833203,
		SubscriptEmYSize = 1935833459,
		SubscriptEmXOffset = 1935833199,
		SubscriptEmYOffset = 1935833455,
		SuperscriptEmXSize = 1936750707,
		SuperscriptEmYSize = 1936750963,
		SuperscriptEmXOffset = 1936750703,
		SuperscriptEmYOffset = 1936750959,
		StrikeoutSize = 1937011315,
		StrikeoutOffset = 1937011311,
		UnderlineSize = 1970168947,
		UnderlineOffset = 1970168943
	}
	[CRepr, AllowDuplicates]
	public enum ot_var_axis_flags_t
	{
		Hidden = 1
	}
	[CRepr, AllowDuplicates]
	public enum script_t
	{
		Common = 1517910393,
		Inherited = 1516858984,
		Unknown = 1517976186,
		Arabic = 1098015074,
		Armenian = 1098018158,
		Bengali = 1113943655,
		Cyrillic = 1132032620,
		Devanagari = 1147500129,
		Georgian = 1197830002,
		Greek = 1198679403,
		Gujarati = 1198877298,
		Gurmukhi = 1198879349,
		Hangul = 1214344807,
		Han = 1214344809,
		Hebrew = 1214603890,
		Hiragana = 1214870113,
		Kannada = 1265525857,
		Katakana = 1264676449,
		Lao = 1281453935,
		Latin = 1281455214,
		Malayalam = 1298954605,
		Oriya = 1332902241,
		Tamil = 1415671148,
		Telugu = 1415933045,
		Thai = 1416126825,
		Tibetan = 1416192628,
		Bopomofo = 1114599535,
		Braille = 1114792297,
		CanadianSyllabics = 1130458739,
		Cherokee = 1130915186,
		Ethiopic = 1165256809,
		Khmer = 1265134962,
		Mongolian = 1299148391,
		Myanmar = 1299803506,
		Ogham = 1332175213,
		Runic = 1383427698,
		Sinhala = 1399418472,
		Syriac = 1400468067,
		Thaana = 1416126817,
		Yi = 1500080489,
		Deseret = 1148416628,
		Gothic = 1198486632,
		OldItalic = 1232363884,
		Buhid = 1114990692,
		Hanunoo = 1214344815,
		Tagalog = 1416064103,
		Tagbanwa = 1415669602,
		Cypriot = 1131442804,
		Limbu = 1281977698,
		LinearB = 1281977954,
		Osmanya = 1332964705,
		Shavian = 1399349623,
		TaiLe = 1415670885,
		Ugaritic = 1432838514,
		Buginese = 1114990441,
		Coptic = 1131376756,
		Glagolitic = 1198285159,
		Kharoshthi = 1265131890,
		NewTaiLue = 1415670901,
		OldPersian = 1483761007,
		SylotiNagri = 1400466543,
		Tifinagh = 1415999079,
		Balinese = 1113681001,
		Cuneiform = 1483961720,
		Nko = 1315663727,
		PhagsPa = 1349017959,
		Phoenician = 1349021304,
		Carian = 1130459753,
		Cham = 1130914157,
		KayahLi = 1264675945,
		Lepcha = 1281716323,
		Lycian = 1283023721,
		Lydian = 1283023977,
		OlChiki = 1332503403,
		Rejang = 1382706791,
		Saurashtra = 1398895986,
		Sundanese = 1400204900,
		Vai = 1449224553,
		Avestan = 1098281844,
		Bamum = 1113681269,
		EgyptianHieroglyphs = 1164409200,
		ImperialAramaic = 1098018153,
		InscriptionalPahlavi = 1349020777,
		InscriptionalParthian = 1349678185,
		Javanese = 1247901281,
		Kaithi = 1265920105,
		Lisu = 1281979253,
		MeeteiMayek = 1299473769,
		OldSouthArabian = 1398895202,
		OldTurkic = 1332898664,
		Samaritan = 1398893938,
		TaiTham = 1281453665,
		TaiViet = 1415673460,
		Batak = 1113683051,
		Brahmi = 1114792296,
		Mandaic = 1298230884,
		Chakma = 1130457965,
		MeroiticCursive = 1298494051,
		MeroiticHieroglyphs = 1298494063,
		Miao = 1349284452,
		Sharada = 1399353956,
		SoraSompeng = 1399812705,
		Takri = 1415670642,
		BassaVah = 1113682803,
		CaucasianAlbanian = 1097295970,
		Duployan = 1148547180,
		Elbasan = 1164730977,
		Grantha = 1198678382,
		Khojki = 1265135466,
		Khudawadi = 1399418468,
		LinearA = 1281977953,
		Mahajani = 1298229354,
		Manichaean = 1298230889,
		MendeKikakui = 1298493028,
		Modi = 1299145833,
		Mro = 1299345263,
		Nabataean = 1315070324,
		OldNorthArabian = 1315009122,
		OldPermic = 1348825709,
		PahawhHmong = 1215131239,
		Palmyrene = 1348562029,
		PauCinHau = 1348564323,
		PsalterPahlavi = 1349020784,
		Siddham = 1399415908,
		Tirhuta = 1416196712,
		WarangCiti = 1466004065,
		Ahom = 1097363309,
		AnatolianHieroglyphs = 1215067511,
		Hatran = 1214346354,
		Multani = 1299541108,
		OldHungarian = 1215655527,
		Signwriting = 1399287415,
		Adlam = 1097100397,
		Bhaiksuki = 1114139507,
		Marchen = 1298231907,
		Osage = 1332963173,
		Tangut = 1415671399,
		Newa = 1315272545,
		MasaramGondi = 1198485101,
		Nushu = 1316186229,
		Soyombo = 1399814511,
		ZanabazarSquare = 1516334690,
		Dogra = 1148151666,
		GunjalaGondi = 1198485095,
		HanifiRohingya = 1383032935,
		Makasar = 1298230113,
		Medefaidrin = 1298490470,
		OldSogdian = 1399809903,
		Sogdian = 1399809892,
		Elymaic = 1164736877,
		Nandinagari = 1315008100,
		NyiakengPuachueHmong = 1215131248,
		Wancho = 1466132591,
		Chorasmian = 1130918515,
		DivesAkuru = 1147756907,
		KhitanSmallScript = 1265202291,
		Yezidi = 1499822697,
		CyproMinoan = 1131441518,
		OldUyghur = 1333094258,
		Tangsa = 1416524641,
		Toto = 1416590447,
		Vithkuqi = 1449751656,
		Math = 1517122664,
		Kawi = 1264678761,
		NagMundari = 1315006317,
		Invalid = 0
	}
	[CRepr, AllowDuplicates]
	public enum style_tag_t
	{
		Italic = 1769234796,
		OpticalSize = 1869640570,
		SlantAngle = 1936486004,
		SlantRatio = 1399615092,
		Width = 2003072104,
		Weight = 2003265652
	}
	[CRepr, AllowDuplicates]
	public enum unicode_combining_class_t
	{
		NotReordered = 0,
		Overlay = 1,
		Nukta = 7,
		KanaVoicing = 8,
		Virama = 9,
		Ccc10 = 10,
		Ccc11 = 11,
		Ccc12 = 12,
		Ccc13 = 13,
		Ccc14 = 14,
		Ccc15 = 15,
		Ccc16 = 16,
		Ccc17 = 17,
		Ccc18 = 18,
		Ccc19 = 19,
		Ccc20 = 20,
		Ccc21 = 21,
		Ccc22 = 22,
		Ccc23 = 23,
		Ccc24 = 24,
		Ccc25 = 25,
		Ccc26 = 26,
		Ccc27 = 27,
		Ccc28 = 28,
		Ccc29 = 29,
		Ccc30 = 30,
		Ccc31 = 31,
		Ccc32 = 32,
		Ccc33 = 33,
		Ccc34 = 34,
		Ccc35 = 35,
		Ccc36 = 36,
		Ccc84 = 84,
		Ccc91 = 91,
		Ccc103 = 103,
		Ccc107 = 107,
		Ccc118 = 118,
		Ccc122 = 122,
		Ccc129 = 129,
		Ccc130 = 130,
		Ccc133 = 132,
		AttachedBelowLeft = 200,
		AttachedBelow = 202,
		AttachedAbove = 214,
		AttachedAboveRight = 216,
		BelowLeft = 218,
		Below = 220,
		BelowRight = 222,
		Left = 224,
		Right = 226,
		AboveLeft = 228,
		Above = 230,
		AboveRight = 232,
		DoubleBelow = 233,
		DoubleAbove = 234,
		IotaSubscript = 240,
		Invalid = 255
	}
	[CRepr, AllowDuplicates]
	public enum unicode_general_category_t
	{
		Control = 0,
		Format = 1,
		Unassigned = 2,
		PrivateUse = 3,
		Surrogate = 4,
		LowercaseLetter = 5,
		ModifierLetter = 6,
		OtherLetter = 7,
		TitlecaseLetter = 8,
		UppercaseLetter = 9,
		SpacingMark = 10,
		EnclosingMark = 11,
		NonSpacingMark = 12,
		DecimalNumber = 13,
		LetterNumber = 14,
		OtherNumber = 15,
		ConnectPunctuation = 16,
		DashPunctuation = 17,
		ClosePunctuation = 18,
		FinalPunctuation = 19,
		InitialPunctuation = 20,
		OtherPunctuation = 21,
		OpenPunctuation = 22,
		CurrencySymbol = 23,
		ModifierSymbol = 24,
		MathSymbol = 25,
		OtherSymbol = 26,
		LineSeparator = 27,
		ParagraphSeparator = 28,
		SpaceSeparator = 29
	}
	public function bool_t buffer_message_func_t(buffer_t* buffer, font_t* font, char8* message, void** user_data);
	public function void destroy_func_t(void** user_data);
	public function void draw_close_path_func_t(draw_funcs_t* dfuncs, void** draw_data, draw_state_t* st, void** user_data);
	public function void draw_cubic_to_func_t(draw_funcs_t* dfuncs, void** draw_data, draw_state_t* st, float control1_x, float control1_y, float control2_x, float control2_y, float to_x, float to_y, void** user_data);
	public function void draw_line_to_func_t(draw_funcs_t* dfuncs, void** draw_data, draw_state_t* st, float to_x, float to_y, void** user_data);
	public function void draw_move_to_func_t(draw_funcs_t* dfuncs, void** draw_data, draw_state_t* st, float to_x, float to_y, void** user_data);
	public function void draw_quadratic_to_func_t(draw_funcs_t* dfuncs, void** draw_data, draw_state_t* st, float control_x, float control_y, float to_x, float to_y, void** user_data);
	public function bool_t font_get_font_extents_func_t(font_t* font, void** font_data, font_extents_t* extents, void** user_data);
	public function position_t font_get_glyph_advance_func_t(font_t* font, void** font_data, codepoint_t glyph, void** user_data);
	public function void font_get_glyph_advances_func_t(font_t* font, void** font_data, c_uint count, codepoint_t* first_glyph, c_uint glyph_stride, position_t* first_advance, c_uint advance_stride, void** user_data);
	public function bool_t font_get_glyph_contour_point_func_t(font_t* font, void** font_data, codepoint_t glyph, c_uint point_index, position_t* x, position_t* y, void** user_data);
	public function bool_t font_get_glyph_extents_func_t(font_t* font, void** font_data, codepoint_t glyph, glyph_extents_t* extents, void** user_data);
	public function bool_t font_get_glyph_from_name_func_t(font_t* font, void** font_data, char8* name, c_int len, codepoint_t* glyph, void** user_data);
	public function bool_t font_get_glyph_func_t(font_t* font, void** font_data, codepoint_t unicode, codepoint_t variation_selector, codepoint_t* glyph, void** user_data);
	public function position_t font_get_glyph_kerning_func_t(font_t* font, void** font_data, codepoint_t first_glyph, codepoint_t second_glyph, void** user_data);
	public function bool_t font_get_glyph_name_func_t(font_t* font, void** font_data, codepoint_t glyph, char8* name, c_uint size, void** user_data);
	public function bool_t font_get_glyph_origin_func_t(font_t* font, void** font_data, codepoint_t glyph, position_t* x, position_t* y, void** user_data);
	public function void font_get_glyph_shape_func_t(font_t* font, void** font_data, codepoint_t glyph, draw_funcs_t* draw_funcs, void** draw_data, void** user_data);
	public function bool_t font_get_nominal_glyph_func_t(font_t* font, void** font_data, codepoint_t unicode, codepoint_t* glyph, void** user_data);
	public function c_uint font_get_nominal_glyphs_func_t(font_t* font, void** font_data, c_uint count, codepoint_t* first_unicode, c_uint unicode_stride, codepoint_t* first_glyph, c_uint glyph_stride, void** user_data);
	public function bool_t font_get_variation_glyph_func_t(font_t* font, void** font_data, codepoint_t unicode, codepoint_t variation_selector, codepoint_t* glyph, void** user_data);
	public function blob_t* reference_table_func_t(face_t* face, tag_t tag, void** user_data);
	public function unicode_combining_class_t unicode_combining_class_func_t(unicode_funcs_t* ufuncs, codepoint_t unicode, void** user_data);
	public function bool_t unicode_compose_func_t(unicode_funcs_t* ufuncs, codepoint_t a, codepoint_t b, codepoint_t* ab, void** user_data);
	public function c_uint unicode_decompose_compatibility_func_t(unicode_funcs_t* ufuncs, codepoint_t u, codepoint_t* decomposed, void** user_data);
	public function bool_t unicode_decompose_func_t(unicode_funcs_t* ufuncs, codepoint_t ab, codepoint_t* a, codepoint_t* b, void** user_data);
	public function c_uint unicode_eastasian_width_func_t(unicode_funcs_t* ufuncs, codepoint_t unicode, void** user_data);
	public function unicode_general_category_t unicode_general_category_func_t(unicode_funcs_t* ufuncs, codepoint_t unicode, void** user_data);
	public function codepoint_t unicode_mirroring_func_t(unicode_funcs_t* ufuncs, codepoint_t unicode, void** user_data);
	public function script_t unicode_script_func_t(unicode_funcs_t* ufuncs, codepoint_t unicode, void** user_data);
	[Union]
	public struct var_int_t
	{
	public c_uint u32;
	public c_int i32;
	public c_ushort u16;
	public c_short i16;
	public c_uchar u8;
	public c_char i8;
	}
	[Union]
	public struct var_num_t
	{
	public float f;
	public c_uint u32;
	public c_int i32;
	public c_ushort u16;
	public c_short i16;
	public c_uchar u8;
	public c_char i8;
	}
}
