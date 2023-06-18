namespace HarfBuzz;

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
	[CRepr]
	public struct aat_layout_feature_selector_info_t
	{
		ot_name_id_t name_id;
		aat_layout_feature_selector_t enable;
		aat_layout_feature_selector_t disable;
		c_uint reserved;
	}
	[AllowDuplicates]
	public enum aat_layout_feature_selector_t : c_int
	{
		invalid = 65535,
		all_type_features_on = 0,
		all_type_features_off = 1,
		required_ligatures_on = 0,
		required_ligatures_off = 1,
		common_ligatures_on = 2,
		common_ligatures_off = 3,
		rare_ligatures_on = 4,
		rare_ligatures_off = 5,
		logos_on = 6,
		logos_off = 7,
		rebus_pictures_on = 8,
		rebus_pictures_off = 9,
		diphthong_ligatures_on = 10,
		diphthong_ligatures_off = 11,
		squared_ligatures_on = 12,
		squared_ligatures_off = 13,
		abbrev_squared_ligatures_on = 14,
		abbrev_squared_ligatures_off = 15,
		symbol_ligatures_on = 16,
		symbol_ligatures_off = 17,
		contextual_ligatures_on = 18,
		contextual_ligatures_off = 19,
		historical_ligatures_on = 20,
		historical_ligatures_off = 21,
		unconnected = 0,
		partially_connected = 1,
		cursive = 2,
		upper_and_lower_case = 0,
		all_caps = 1,
		all_lower_case = 2,
		small_caps = 3,
		initial_caps = 4,
		initial_caps_and_small_caps = 5,
		substitute_vertical_forms_on = 0,
		substitute_vertical_forms_off = 1,
		linguistic_rearrangement_on = 0,
		linguistic_rearrangement_off = 1,
		monospaced_numbers = 0,
		proportional_numbers = 1,
		third_width_numbers = 2,
		quarter_width_numbers = 3,
		word_initial_swashes_on = 0,
		word_initial_swashes_off = 1,
		word_final_swashes_on = 2,
		word_final_swashes_off = 3,
		line_initial_swashes_on = 4,
		line_initial_swashes_off = 5,
		line_final_swashes_on = 6,
		line_final_swashes_off = 7,
		non_final_swashes_on = 8,
		non_final_swashes_off = 9,
		show_diacritics = 0,
		hide_diacritics = 1,
		decompose_diacritics = 2,
		normal_position = 0,
		superiors = 1,
		inferiors = 2,
		ordinals = 3,
		scientific_inferiors = 4,
		no_fractions = 0,
		vertical_fractions = 1,
		diagonal_fractions = 2,
		prevent_overlap_on = 0,
		prevent_overlap_off = 1,
		hyphens_to_em_dash_on = 0,
		hyphens_to_em_dash_off = 1,
		hyphen_to_en_dash_on = 2,
		hyphen_to_en_dash_off = 3,
		slashed_zero_on = 4,
		slashed_zero_off = 5,
		form_interrobang_on = 6,
		form_interrobang_off = 7,
		smart_quotes_on = 8,
		smart_quotes_off = 9,
		periods_to_ellipsis_on = 10,
		periods_to_ellipsis_off = 11,
		hyphen_to_minus_on = 0,
		hyphen_to_minus_off = 1,
		asterisk_to_multiply_on = 2,
		asterisk_to_multiply_off = 3,
		slash_to_divide_on = 4,
		slash_to_divide_off = 5,
		inequality_ligatures_on = 6,
		inequality_ligatures_off = 7,
		exponents_on = 8,
		exponents_off = 9,
		mathematical_greek_on = 10,
		mathematical_greek_off = 11,
		no_ornaments = 0,
		dingbats = 1,
		pi_characters = 2,
		fleurons = 3,
		decorative_borders = 4,
		international_symbols = 5,
		math_symbols = 6,
		no_alternates = 0,
		design_level1 = 0,
		design_level2 = 1,
		design_level3 = 2,
		design_level4 = 3,
		design_level5 = 4,
		no_style_options = 0,
		display_text = 1,
		engraved_text = 2,
		illuminated_caps = 3,
		titling_caps = 4,
		tall_caps = 5,
		traditional_characters = 0,
		simplified_characters = 1,
		jis1978_characters = 2,
		jis1983_characters = 3,
		jis1990_characters = 4,
		traditional_alt_one = 5,
		traditional_alt_two = 6,
		traditional_alt_three = 7,
		traditional_alt_four = 8,
		traditional_alt_five = 9,
		expert_characters = 10,
		jis2004_characters = 11,
		hojo_characters = 12,
		nlccharacters = 13,
		traditional_names_characters = 14,
		lower_case_numbers = 0,
		upper_case_numbers = 1,
		proportional_text = 0,
		monospaced_text = 1,
		half_width_text = 2,
		third_width_text = 3,
		quarter_width_text = 4,
		alt_proportional_text = 5,
		alt_half_width_text = 6,
		no_transliteration = 0,
		hanja_to_hangul = 1,
		hiragana_to_katakana = 2,
		katakana_to_hiragana = 3,
		kana_to_romanization = 4,
		romanization_to_hiragana = 5,
		romanization_to_katakana = 6,
		hanja_to_hangul_alt_one = 7,
		hanja_to_hangul_alt_two = 8,
		hanja_to_hangul_alt_three = 9,
		no_annotation = 0,
		box_annotation = 1,
		rounded_box_annotation = 2,
		circle_annotation = 3,
		inverted_circle_annotation = 4,
		parenthesis_annotation = 5,
		period_annotation = 6,
		roman_numeral_annotation = 7,
		diamond_annotation = 8,
		inverted_box_annotation = 9,
		inverted_rounded_box_annotation = 10,
		full_width_kana = 0,
		proportional_kana = 1,
		full_width_ideographs = 0,
		proportional_ideographs = 1,
		half_width_ideographs = 2,
		canonical_composition_on = 0,
		canonical_composition_off = 1,
		compatibility_composition_on = 2,
		compatibility_composition_off = 3,
		transcoding_composition_on = 4,
		transcoding_composition_off = 5,
		no_ruby_kana = 0,
		ruby_kana = 1,
		ruby_kana_on = 2,
		ruby_kana_off = 3,
		no_cjk_symbol_alternatives = 0,
		cjk_symbol_alt_one = 1,
		cjk_symbol_alt_two = 2,
		cjk_symbol_alt_three = 3,
		cjk_symbol_alt_four = 4,
		cjk_symbol_alt_five = 5,
		no_ideographic_alternatives = 0,
		ideographic_alt_one = 1,
		ideographic_alt_two = 2,
		ideographic_alt_three = 3,
		ideographic_alt_four = 4,
		ideographic_alt_five = 5,
		cjk_vertical_roman_centered = 0,
		cjk_vertical_roman_hbaseline = 1,
		no_cjk_italic_roman = 0,
		cjk_italic_roman = 1,
		cjk_italic_roman_on = 2,
		cjk_italic_roman_off = 3,
		case_sensitive_layout_on = 0,
		case_sensitive_layout_off = 1,
		case_sensitive_spacing_on = 2,
		case_sensitive_spacing_off = 3,
		alternate_horiz_kana_on = 0,
		alternate_horiz_kana_off = 1,
		alternate_vert_kana_on = 2,
		alternate_vert_kana_off = 3,
		no_stylistic_alternates = 0,
		stylistic_alt_one_on = 2,
		stylistic_alt_one_off = 3,
		stylistic_alt_two_on = 4,
		stylistic_alt_two_off = 5,
		stylistic_alt_three_on = 6,
		stylistic_alt_three_off = 7,
		stylistic_alt_four_on = 8,
		stylistic_alt_four_off = 9,
		stylistic_alt_five_on = 10,
		stylistic_alt_five_off = 11,
		stylistic_alt_six_on = 12,
		stylistic_alt_six_off = 13,
		stylistic_alt_seven_on = 14,
		stylistic_alt_seven_off = 15,
		stylistic_alt_eight_on = 16,
		stylistic_alt_eight_off = 17,
		stylistic_alt_nine_on = 18,
		stylistic_alt_nine_off = 19,
		stylistic_alt_ten_on = 20,
		stylistic_alt_ten_off = 21,
		stylistic_alt_eleven_on = 22,
		stylistic_alt_eleven_off = 23,
		stylistic_alt_twelve_on = 24,
		stylistic_alt_twelve_off = 25,
		stylistic_alt_thirteen_on = 26,
		stylistic_alt_thirteen_off = 27,
		stylistic_alt_fourteen_on = 28,
		stylistic_alt_fourteen_off = 29,
		stylistic_alt_fifteen_on = 30,
		stylistic_alt_fifteen_off = 31,
		stylistic_alt_sixteen_on = 32,
		stylistic_alt_sixteen_off = 33,
		stylistic_alt_seventeen_on = 34,
		stylistic_alt_seventeen_off = 35,
		stylistic_alt_eighteen_on = 36,
		stylistic_alt_eighteen_off = 37,
		stylistic_alt_nineteen_on = 38,
		stylistic_alt_nineteen_off = 39,
		stylistic_alt_twenty_on = 40,
		stylistic_alt_twenty_off = 41,
		contextual_alternates_on = 0,
		contextual_alternates_off = 1,
		swash_alternates_on = 2,
		swash_alternates_off = 3,
		contextual_swash_alternates_on = 4,
		contextual_swash_alternates_off = 5,
		default_lower_case = 0,
		lower_case_small_caps = 1,
		lower_case_petite_caps = 2,
		default_upper_case = 0,
		upper_case_small_caps = 1,
		upper_case_petite_caps = 2,
		half_width_cjk_roman = 0,
		proportional_cjk_roman = 1,
		default_cjk_roman = 2,
		full_width_cjk_roman = 3
	}
	public enum aat_layout_feature_type_t : c_int
	{
		invalid = 65535,
		all_typographic = 0,
		ligatures = 1,
		curisve_connection = 2,
		letter_case = 3,
		vertical_substitution = 4,
		linguistic_rearrangement = 5,
		number_spacing = 6,
		smart_swash_type = 8,
		diacritics_type = 9,
		vertical_position = 10,
		fractions = 11,
		overlapping_characters_type = 13,
		typographic_extras = 14,
		mathematical_extras = 15,
		ornament_sets_type = 16,
		character_alternatives = 17,
		design_complexity_type = 18,
		style_options = 19,
		character_shape = 20,
		number_case = 21,
		text_spacing = 22,
		transliteration = 23,
		annotation_type = 24,
		kana_spacing_type = 25,
		ideographic_spacing_type = 26,
		unicode_decomposition_type = 27,
		ruby_kana = 28,
		cjk_symbol_alternatives_type = 29,
		ideographic_alternatives_type = 30,
		cjk_vertical_roman_placement_type = 31,
		italic_cjk_roman = 32,
		case_sensitive_layout = 33,
		alternate_kana = 34,
		stylistic_alternatives = 35,
		contextual_alternatives = 36,
		lower_case = 37,
		upper_case = 38,
		language_tag_type = 39,
		cjk_roman_spacing_type = 103
	}
	[CRepr]
	public struct blob_t
	{
	}
	[AllowDuplicates]
	public enum buffer_cluster_level_t : c_int
	{
		monotone_graphemes = 0,
		monotone_characters = 1,
		characters = 2,
		default_ = 0
	}
	public enum buffer_content_type_t : c_int
	{
		invalid = 0,
		unicode = 1,
		glyphs = 2
	}
	[CRepr]
	public enum buffer_diff_flags_t : int
	{
		equal = 0,
		content_type_mismatch = 1,
		length_mismatch = 2,
		notdef_present = 4,
		dotted_circle_present = 8,
		codepoint_mismatch = 16,
		cluster_mismatch = 32,
		glyph_flags_mismatch = 64,
		position_mismatch = 128
	}
	[CRepr]
	public enum buffer_flags_t : int
	{
		default_ = 0,
		bot = 1,
		eot = 2,
		preserve_default_ignorables = 4,
		remove_default_ignorables = 8,
		do_not_insert_dotted_circle = 16,
		verify = 32,
		produce_unsafe_to_concat = 64,
		produce_safe_to_insert_tatweel = 128,
		defined = 255
	}
	public function bool_t buffer_message_func_t(buffer_t buffer, font_t font, char8* message, void* user_data);
	[CRepr]
	public enum buffer_serialize_flags_t : int
	{
		default_ = 0,
		no_clusters = 1,
		no_positions = 2,
		no_glyph_names = 4,
		glyph_extents = 8,
		glyph_flags = 16,
		no_advances = 32,
		defined = 63
	}
	public enum buffer_serialize_format_t : c_int
	{
		text = 1413830740,
		json = 1246973774,
		invalid = 0
	}
	[CRepr]
	public struct buffer_t
	{
	}
	public function void destroy_func_t(void* user_data);
	public enum direction_t : c_int
	{
		invalid = 0,
		ltr = 4,
		rtl = 5,
		ttb = 6,
		btt = 7
	}
	public function void draw_close_path_func_t(draw_funcs_t dfuncs, void* draw_data, draw_state_t st, void* user_data);
	public function void draw_cubic_to_func_t(draw_funcs_t dfuncs, void* draw_data, draw_state_t st, float control1_x, float control1_y, float control2_x, float control2_y, float to_x, float to_y, void* user_data);
	[CRepr]
	public struct draw_funcs_t
	{
	}
	public function void draw_line_to_func_t(draw_funcs_t dfuncs, void* draw_data, draw_state_t st, float to_x, float to_y, void* user_data);
	public function void draw_move_to_func_t(draw_funcs_t dfuncs, void* draw_data, draw_state_t st, float to_x, float to_y, void* user_data);
	public function void draw_quadratic_to_func_t(draw_funcs_t dfuncs, void* draw_data, draw_state_t st, float control_x, float control_y, float to_x, float to_y, void* user_data);
	[CRepr]
	public struct draw_state_t
	{
		bool_t path_open;
		float path_start_x;
		float path_start_y;
		float current_x;
		float current_y;
		var_num_t reserved1;
		var_num_t reserved2;
		var_num_t reserved3;
		var_num_t reserved4;
		var_num_t reserved5;
		var_num_t reserved6;
		var_num_t reserved7;
	}
	[CRepr]
	public struct face_t
	{
	}
	[CRepr]
	public struct feature_t
	{
		tag_t tag;
		c_uint value;
		c_uint start;
		c_uint end;
	}
	[CRepr]
	public struct font_extents_t
	{
		position_t ascender;
		position_t descender;
		position_t line_gap;
		position_t reserved9;
		position_t reserved8;
		position_t reserved7;
		position_t reserved6;
		position_t reserved5;
		position_t reserved4;
		position_t reserved3;
		position_t reserved2;
		position_t reserved1;
	}
	[CRepr]
	public struct font_funcs_t
	{
	}
	public function bool_t font_get_font_extents_func_t(font_t font, void* font_data, font_extents_t extents, void* user_data);
	public function position_t font_get_glyph_advance_func_t(font_t font, void* font_data, codepoint_t glyph, void* user_data);
	public function void font_get_glyph_advances_func_t(font_t font, void* font_data, c_uint count, codepoint_t first_glyph, c_uint glyph_stride, position_t first_advance, c_uint advance_stride, void* user_data);
	public function bool_t font_get_glyph_contour_point_func_t(font_t font, void* font_data, codepoint_t glyph, c_uint point_index, position_t x, position_t y, void* user_data);
	public function bool_t font_get_glyph_extents_func_t(font_t font, void* font_data, codepoint_t glyph, glyph_extents_t extents, void* user_data);
	public function bool_t font_get_glyph_from_name_func_t(font_t font, void* font_data, c_int len, codepoint_t glyph, void* user_data);
	public function bool_t font_get_glyph_func_t(font_t font, void* font_data, codepoint_t unicode, codepoint_t variation_selector, codepoint_t glyph, void* user_data);
	public function position_t font_get_glyph_kerning_func_t(font_t font, void* font_data, codepoint_t first_glyph, codepoint_t second_glyph, void* user_data);
	public function bool_t font_get_glyph_name_func_t(font_t font, void* font_data, codepoint_t glyph, c_uint size, void* user_data);
	public function bool_t font_get_glyph_origin_func_t(font_t font, void* font_data, codepoint_t glyph, position_t x, position_t y, void* user_data);
	public function void font_get_glyph_shape_func_t(font_t font, void* font_data, codepoint_t glyph, draw_funcs_t draw_funcs, void* draw_data, void* user_data);
	public function bool_t font_get_nominal_glyph_func_t(font_t font, void* font_data, codepoint_t unicode, codepoint_t glyph, void* user_data);
	public function c_uint font_get_nominal_glyphs_func_t(font_t font, void* font_data, c_uint count, codepoint_t first_unicode, c_uint unicode_stride, codepoint_t first_glyph, c_uint glyph_stride, void* user_data);
	public function bool_t font_get_variation_glyph_func_t(font_t font, void* font_data, codepoint_t unicode, codepoint_t variation_selector, codepoint_t glyph, void* user_data);
	[CRepr]
	public struct font_t
	{
	}
	[CRepr]
	public struct glyph_extents_t
	{
		position_t x_bearing;
		position_t y_bearing;
		position_t width;
		position_t height;
	}
	[CRepr]
	public enum glyph_flags_t : int
	{
		unsafe_to_break = 1,
		unsafe_to_concat = 2,
		safe_to_insert_tatweel = 4,
		defined = 7
	}
	[CRepr]
	public struct glyph_info_t
	{
		codepoint_t codepoint;
		mask_t mask;
		c_uint cluster;
		var_int_t var1;
		var_int_t var2;
	}
	[CRepr]
	public struct glyph_position_t
	{
		position_t x_advance;
		position_t y_advance;
		position_t x_offset;
		position_t y_offset;
		var_int_t var_;
	}
	[CRepr]
	public struct language_t
	{
	}
	[CRepr]
	public struct map_t
	{
	}
	public enum memory_mode_t : c_int
	{
		duplicate = 0,
		readonly_ = 1,
		writable = 2,
		readonly_may_make_writable = 3
	}
	[CRepr]
	public struct ot_color_layer_t
	{
		codepoint_t glyph;
		c_uint color_index;
	}
	[CRepr]
	public enum ot_color_palette_flags_t : int
	{
		default_ = 0,
		usable_with_light_background = 1,
		usable_with_dark_background = 2
	}
	public enum ot_layout_baseline_tag_t : c_int
	{
		roman = 1919905134,
		hanging = 1751215719,
		ideo_face_bottom_or_left = 1768121954,
		ideo_face_top_or_right = 1768121972,
		ideo_face_central = 1231251043,
		ideo_embox_bottom_or_left = 1768187247,
		ideo_embox_top_or_right = 1768191088,
		ideo_embox_central = 1231315813,
		math = 1835103336
	}
	public enum ot_layout_glyph_class_t : c_int
	{
		unclassified = 0,
		base_glyph = 1,
		ligature = 2,
		mark = 3,
		component = 4
	}
	public enum ot_math_constant_t : c_int
	{
		script_percent_scale_down = 0,
		script_script_percent_scale_down = 1,
		delimited_sub_formula_min_height = 2,
		display_operator_min_height = 3,
		math_leading = 4,
		axis_height = 5,
		accent_base_height = 6,
		flattened_accent_base_height = 7,
		subscript_shift_down = 8,
		subscript_top_max = 9,
		subscript_baseline_drop_min = 10,
		superscript_shift_up = 11,
		superscript_shift_up_cramped = 12,
		superscript_bottom_min = 13,
		superscript_baseline_drop_max = 14,
		sub_superscript_gap_min = 15,
		superscript_bottom_max_with_subscript = 16,
		space_after_script = 17,
		upper_limit_gap_min = 18,
		upper_limit_baseline_rise_min = 19,
		lower_limit_gap_min = 20,
		lower_limit_baseline_drop_min = 21,
		stack_top_shift_up = 22,
		stack_top_display_style_shift_up = 23,
		stack_bottom_shift_down = 24,
		stack_bottom_display_style_shift_down = 25,
		stack_gap_min = 26,
		stack_display_style_gap_min = 27,
		stretch_stack_top_shift_up = 28,
		stretch_stack_bottom_shift_down = 29,
		stretch_stack_gap_above_min = 30,
		stretch_stack_gap_below_min = 31,
		fraction_numerator_shift_up = 32,
		fraction_numerator_display_style_shift_up = 33,
		fraction_denominator_shift_down = 34,
		fraction_denominator_display_style_shift_down = 35,
		fraction_numerator_gap_min = 36,
		fraction_num_display_style_gap_min = 37,
		fraction_rule_thickness = 38,
		fraction_denominator_gap_min = 39,
		fraction_denom_display_style_gap_min = 40,
		skewed_fraction_horizontal_gap = 41,
		skewed_fraction_vertical_gap = 42,
		overbar_vertical_gap = 43,
		overbar_rule_thickness = 44,
		overbar_extra_ascender = 45,
		underbar_vertical_gap = 46,
		underbar_rule_thickness = 47,
		underbar_extra_descender = 48,
		radical_vertical_gap = 49,
		radical_display_style_vertical_gap = 50,
		radical_rule_thickness = 51,
		radical_extra_ascender = 52,
		radical_kern_before_degree = 53,
		radical_kern_after_degree = 54,
		radical_degree_bottom_raise_percent = 55
	}
	[CRepr]
	public enum ot_math_glyph_part_flags_t : int
	{
		extender = 1
	}
	[CRepr]
	public struct ot_math_glyph_part_t
	{
		codepoint_t glyph;
		position_t start_connector_length;
		position_t end_connector_length;
		position_t full_advance;
		ot_math_glyph_part_flags_t flags;
	}
	[CRepr]
	public struct ot_math_glyph_variant_t
	{
		codepoint_t glyph;
		position_t advance;
	}
	[CRepr]
	public struct ot_math_kern_entry_t
	{
		position_t max_correction_height;
		position_t kern_value;
	}
	public enum ot_math_kern_t : c_int
	{
		top_right = 0,
		top_left = 1,
		bottom_right = 2,
		bottom_left = 3
	}
	public enum ot_meta_tag_t : c_int
	{
		design_languages = 1684827751,
		supported_languages = 1936485991
	}
	public enum ot_metrics_tag_t : c_int
	{
		horizontal_ascender = 1751216995,
		horizontal_descender = 1751413603,
		horizontal_line_gap = 1751934832,
		horizontal_clipping_ascent = 1751346273,
		horizontal_clipping_descent = 1751346276,
		vertical_ascender = 1986098019,
		vertical_descender = 1986294627,
		vertical_line_gap = 1986815856,
		horizontal_caret_rise = 1751347827,
		horizontal_caret_run = 1751347822,
		horizontal_caret_offset = 1751347046,
		vertical_caret_rise = 1986228851,
		vertical_caret_run = 1986228846,
		vertical_caret_offset = 1986228070,
		x_height = 2020108148,
		cap_height = 1668311156,
		subscript_em_x_size = 1935833203,
		subscript_em_y_size = 1935833459,
		subscript_em_x_offset = 1935833199,
		subscript_em_y_offset = 1935833455,
		superscript_em_x_size = 1936750707,
		superscript_em_y_size = 1936750963,
		superscript_em_x_offset = 1936750703,
		superscript_em_y_offset = 1936750959,
		strikeout_size = 1937011315,
		strikeout_offset = 1937011311,
		underline_size = 1970168947,
		underline_offset = 1970168943
	}
	[CRepr]
	public struct ot_name_entry_t
	{
		ot_name_id_t name_id;
		var_int_t var_;
		language_t language;
	}
	[CRepr]
	public enum ot_var_axis_flags_t : int
	{
		hidden = 1
	}
	[CRepr]
	public struct ot_var_axis_info_t
	{
		c_uint axis_index;
		tag_t tag;
		ot_name_id_t name_id;
		ot_var_axis_flags_t flags;
		float min_value;
		float default_value;
		float max_value;
		c_uint reserved;
	}
	[CRepr]
	public struct ot_var_axis_t
	{
		tag_t tag;
		ot_name_id_t name_id;
		float min_value;
		float default_value;
		float max_value;
	}
	public function blob_t reference_table_func_t(face_t face, tag_t tag, void* user_data);
	public enum script_t : c_int
	{
		common = 1517910393,
		inherited = 1516858984,
		unknown = 1517976186,
		arabic = 1098015074,
		armenian = 1098018158,
		bengali = 1113943655,
		cyrillic = 1132032620,
		devanagari = 1147500129,
		georgian = 1197830002,
		greek = 1198679403,
		gujarati = 1198877298,
		gurmukhi = 1198879349,
		hangul = 1214344807,
		han = 1214344809,
		hebrew = 1214603890,
		hiragana = 1214870113,
		kannada = 1265525857,
		katakana = 1264676449,
		lao = 1281453935,
		latin = 1281455214,
		malayalam = 1298954605,
		oriya = 1332902241,
		tamil = 1415671148,
		telugu = 1415933045,
		thai = 1416126825,
		tibetan = 1416192628,
		bopomofo = 1114599535,
		braille = 1114792297,
		canadian_syllabics = 1130458739,
		cherokee = 1130915186,
		ethiopic = 1165256809,
		khmer = 1265134962,
		mongolian = 1299148391,
		myanmar = 1299803506,
		ogham = 1332175213,
		runic = 1383427698,
		sinhala = 1399418472,
		syriac = 1400468067,
		thaana = 1416126817,
		yi = 1500080489,
		deseret = 1148416628,
		gothic = 1198486632,
		old_italic = 1232363884,
		buhid = 1114990692,
		hanunoo = 1214344815,
		tagalog = 1416064103,
		tagbanwa = 1415669602,
		cypriot = 1131442804,
		limbu = 1281977698,
		linear_b = 1281977954,
		osmanya = 1332964705,
		shavian = 1399349623,
		tai_le = 1415670885,
		ugaritic = 1432838514,
		buginese = 1114990441,
		coptic = 1131376756,
		glagolitic = 1198285159,
		kharoshthi = 1265131890,
		new_tai_lue = 1415670901,
		old_persian = 1483761007,
		syloti_nagri = 1400466543,
		tifinagh = 1415999079,
		balinese = 1113681001,
		cuneiform = 1483961720,
		nko = 1315663727,
		phags_pa = 1349017959,
		phoenician = 1349021304,
		carian = 1130459753,
		cham = 1130914157,
		kayah_li = 1264675945,
		lepcha = 1281716323,
		lycian = 1283023721,
		lydian = 1283023977,
		ol_chiki = 1332503403,
		rejang = 1382706791,
		saurashtra = 1398895986,
		sundanese = 1400204900,
		vai = 1449224553,
		avestan = 1098281844,
		bamum = 1113681269,
		egyptian_hieroglyphs = 1164409200,
		imperial_aramaic = 1098018153,
		inscriptional_pahlavi = 1349020777,
		inscriptional_parthian = 1349678185,
		javanese = 1247901281,
		kaithi = 1265920105,
		lisu = 1281979253,
		meetei_mayek = 1299473769,
		old_south_arabian = 1398895202,
		old_turkic = 1332898664,
		samaritan = 1398893938,
		tai_tham = 1281453665,
		tai_viet = 1415673460,
		batak = 1113683051,
		brahmi = 1114792296,
		mandaic = 1298230884,
		chakma = 1130457965,
		meroitic_cursive = 1298494051,
		meroitic_hieroglyphs = 1298494063,
		miao = 1349284452,
		sharada = 1399353956,
		sora_sompeng = 1399812705,
		takri = 1415670642,
		bassa_vah = 1113682803,
		caucasian_albanian = 1097295970,
		duployan = 1148547180,
		elbasan = 1164730977,
		grantha = 1198678382,
		khojki = 1265135466,
		khudawadi = 1399418468,
		linear_a = 1281977953,
		mahajani = 1298229354,
		manichaean = 1298230889,
		mende_kikakui = 1298493028,
		modi = 1299145833,
		mro = 1299345263,
		nabataean = 1315070324,
		old_north_arabian = 1315009122,
		old_permic = 1348825709,
		pahawh_hmong = 1215131239,
		palmyrene = 1348562029,
		pau_cin_hau = 1348564323,
		psalter_pahlavi = 1349020784,
		siddham = 1399415908,
		tirhuta = 1416196712,
		warang_citi = 1466004065,
		ahom = 1097363309,
		anatolian_hieroglyphs = 1215067511,
		hatran = 1214346354,
		multani = 1299541108,
		old_hungarian = 1215655527,
		signwriting = 1399287415,
		adlam = 1097100397,
		bhaiksuki = 1114139507,
		marchen = 1298231907,
		osage = 1332963173,
		tangut = 1415671399,
		newa = 1315272545,
		masaram_gondi = 1198485101,
		nushu = 1316186229,
		soyombo = 1399814511,
		zanabazar_square = 1516334690,
		dogra = 1148151666,
		gunjala_gondi = 1198485095,
		hanifi_rohingya = 1383032935,
		makasar = 1298230113,
		medefaidrin = 1298490470,
		old_sogdian = 1399809903,
		sogdian = 1399809892,
		elymaic = 1164736877,
		nandinagari = 1315008100,
		nyiakeng_puachue_hmong = 1215131248,
		wancho = 1466132591,
		chorasmian = 1130918515,
		dives_akuru = 1147756907,
		khitan_small_script = 1265202291,
		yezidi = 1499822697,
		cypro_minoan = 1131441518,
		old_uyghur = 1333094258,
		tangsa = 1416524641,
		toto = 1416590447,
		vithkuqi = 1449751656,
		math = 1517122664,
		kawi = 1264678761,
		nag_mundari = 1315006317,
		invalid = 0
	}
	[CRepr]
	public struct segment_properties_t
	{
		direction_t direction;
		script_t script;
		language_t language;
		void* reserved1;
		void* reserved2;
	}
	[CRepr]
	public struct set_t
	{
	}
	[CRepr]
	public struct shape_plan_t
	{
	}
	public enum style_tag_t : c_int
	{
		italic = 1769234796,
		optical_size = 1869640570,
		slant_angle = 1936486004,
		slant_ratio = 1399615092,
		width = 2003072104,
		weight = 2003265652
	}
	public function unicode_combining_class_t unicode_combining_class_func_t(unicode_funcs_t ufuncs, codepoint_t unicode, void* user_data);
	public enum unicode_combining_class_t : c_int
	{
		not_reordered = 0,
		overlay = 1,
		nukta = 7,
		kana_voicing = 8,
		virama = 9,
		ccc10 = 10,
		ccc11 = 11,
		ccc12 = 12,
		ccc13 = 13,
		ccc14 = 14,
		ccc15 = 15,
		ccc16 = 16,
		ccc17 = 17,
		ccc18 = 18,
		ccc19 = 19,
		ccc20 = 20,
		ccc21 = 21,
		ccc22 = 22,
		ccc23 = 23,
		ccc24 = 24,
		ccc25 = 25,
		ccc26 = 26,
		ccc27 = 27,
		ccc28 = 28,
		ccc29 = 29,
		ccc30 = 30,
		ccc31 = 31,
		ccc32 = 32,
		ccc33 = 33,
		ccc34 = 34,
		ccc35 = 35,
		ccc36 = 36,
		ccc84 = 84,
		ccc91 = 91,
		ccc103 = 103,
		ccc107 = 107,
		ccc118 = 118,
		ccc122 = 122,
		ccc129 = 129,
		ccc130 = 130,
		ccc133 = 132,
		attached_below_left = 200,
		attached_below = 202,
		attached_above = 214,
		attached_above_right = 216,
		below_left = 218,
		below = 220,
		below_right = 222,
		left = 224,
		right = 226,
		above_left = 228,
		above = 230,
		above_right = 232,
		double_below = 233,
		double_above = 234,
		iota_subscript = 240,
		invalid = 255
	}
	public function bool_t unicode_compose_func_t(unicode_funcs_t ufuncs, codepoint_t a, codepoint_t b, codepoint_t ab, void* user_data);
	public function c_uint unicode_decompose_compatibility_func_t(unicode_funcs_t ufuncs, codepoint_t u, codepoint_t decomposed, void* user_data);
	public function bool_t unicode_decompose_func_t(unicode_funcs_t ufuncs, codepoint_t ab, codepoint_t a, codepoint_t b, void* user_data);
	public function c_uint unicode_eastasian_width_func_t(unicode_funcs_t ufuncs, codepoint_t unicode, void* user_data);
	[CRepr]
	public struct unicode_funcs_t
	{
	}
	public function unicode_general_category_t unicode_general_category_func_t(unicode_funcs_t ufuncs, codepoint_t unicode, void* user_data);
	public enum unicode_general_category_t : c_int
	{
		control = 0,
		format = 1,
		unassigned = 2,
		private_use = 3,
		surrogate = 4,
		lowercase_letter = 5,
		modifier_letter = 6,
		other_letter = 7,
		titlecase_letter = 8,
		uppercase_letter = 9,
		spacing_mark = 10,
		enclosing_mark = 11,
		non_spacing_mark = 12,
		decimal_number = 13,
		letter_number = 14,
		other_number = 15,
		connect_punctuation = 16,
		dash_punctuation = 17,
		close_punctuation = 18,
		final_punctuation = 19,
		initial_punctuation = 20,
		other_punctuation = 21,
		open_punctuation = 22,
		currency_symbol = 23,
		modifier_symbol = 24,
		math_symbol = 25,
		other_symbol = 26,
		line_separator = 27,
		paragraph_separator = 28,
		space_separator = 29
	}
	public function codepoint_t unicode_mirroring_func_t(unicode_funcs_t ufuncs, codepoint_t unicode, void* user_data);
	public function script_t unicode_script_func_t(unicode_funcs_t ufuncs, codepoint_t unicode, void* user_data);
	[CRepr]
	public struct user_data_key_t
	{
		c_char unused;
	}
	[Union]
	public struct var_int_t
	{
		public c_uint u32;
		public c_int i32;
	}
	[Union]
	public struct var_num_t
	{
		public float f;
		public c_uint u32;
		public c_int i32;
	}
	[CRepr]
	public struct variation_t
	{
		tag_t tag;
		float value;
	}
}