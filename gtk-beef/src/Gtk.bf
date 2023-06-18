namespace Gtk;

using System;
using System.Interop;
using Gdk;
using GObject;
using GLib;
using Gio;
using Gsk;
using Gdk;
using Pango;
using cairo;
using Graphene;
using GdkPixbuf;

class Gtk
{
	public typealias Allocation = Gdk.Rectangle;
	[CRepr]
	public struct ATContext;
	[LinkName("gtk_at_context_create")]
	public static extern ATContext* AtContextCreate(AccessibleRole accessible_role, Accessible accessible, Gdk.Display display);
	[LinkName("gtk_at_context_get_accessible")]
	public static extern Accessible* AtContextGetAccessible(ATContext self);
	[LinkName("gtk_at_context_get_accessible_role")]
	public static extern AccessibleRole AtContextGetAccessibleRole(ATContext self);
	[CRepr]
	public struct ATContextClass
	{
	}
	[CRepr]
	public struct AboutDialog;
	[LinkName("gtk_about_dialog_new")]
	public static extern Widget* AboutDialogNew();
	[LinkName("gtk_about_dialog_add_credit_section")]
	public static extern void AboutDialogAddCreditSection(AboutDialog about, char8* section_name);
	[LinkName("gtk_about_dialog_get_artists")]
	public static extern char8* AboutDialogGetArtists(AboutDialog about);
	[LinkName("gtk_about_dialog_get_authors")]
	public static extern char8* AboutDialogGetAuthors(AboutDialog about);
	[LinkName("gtk_about_dialog_get_comments")]
	public static extern char8** AboutDialogGetComments(AboutDialog about);
	[LinkName("gtk_about_dialog_get_copyright")]
	public static extern char8** AboutDialogGetCopyright(AboutDialog about);
	[LinkName("gtk_about_dialog_get_documenters")]
	public static extern char8* AboutDialogGetDocumenters(AboutDialog about);
	[LinkName("gtk_about_dialog_get_license")]
	public static extern char8** AboutDialogGetLicense(AboutDialog about);
	[LinkName("gtk_about_dialog_get_license_type")]
	public static extern License AboutDialogGetLicenseType(AboutDialog about);
	[LinkName("gtk_about_dialog_get_logo")]
	public static extern Gdk.Paintable* AboutDialogGetLogo(AboutDialog about);
	[LinkName("gtk_about_dialog_get_logo_icon_name")]
	public static extern char8** AboutDialogGetLogoIconName(AboutDialog about);
	[LinkName("gtk_about_dialog_get_program_name")]
	public static extern char8** AboutDialogGetProgramName(AboutDialog about);
	[LinkName("gtk_about_dialog_get_system_information")]
	public static extern char8** AboutDialogGetSystemInformation(AboutDialog about);
	[LinkName("gtk_about_dialog_get_translator_credits")]
	public static extern char8** AboutDialogGetTranslatorCredits(AboutDialog about);
	[LinkName("gtk_about_dialog_get_version")]
	public static extern char8** AboutDialogGetVersion(AboutDialog about);
	[LinkName("gtk_about_dialog_get_website")]
	public static extern char8** AboutDialogGetWebsite(AboutDialog about);
	[LinkName("gtk_about_dialog_get_website_label")]
	public static extern char8** AboutDialogGetWebsiteLabel(AboutDialog about);
	[LinkName("gtk_about_dialog_get_wrap_license")]
	public static extern c_int AboutDialogGetWrapLicense(AboutDialog about);
	[LinkName("gtk_about_dialog_set_artists")]
	public static extern void AboutDialogSetArtists(AboutDialog about);
	[LinkName("gtk_about_dialog_set_authors")]
	public static extern void AboutDialogSetAuthors(AboutDialog about);
	[LinkName("gtk_about_dialog_set_comments")]
	public static extern void AboutDialogSetComments(AboutDialog about, char8* comments);
	[LinkName("gtk_about_dialog_set_copyright")]
	public static extern void AboutDialogSetCopyright(AboutDialog about, char8* copyright);
	[LinkName("gtk_about_dialog_set_documenters")]
	public static extern void AboutDialogSetDocumenters(AboutDialog about);
	[LinkName("gtk_about_dialog_set_license")]
	public static extern void AboutDialogSetLicense(AboutDialog about, char8* license);
	[LinkName("gtk_about_dialog_set_license_type")]
	public static extern void AboutDialogSetLicenseType(AboutDialog about, License license_type);
	[LinkName("gtk_about_dialog_set_logo")]
	public static extern void AboutDialogSetLogo(AboutDialog about, Gdk.Paintable logo);
	[LinkName("gtk_about_dialog_set_logo_icon_name")]
	public static extern void AboutDialogSetLogoIconName(AboutDialog about, char8* icon_name);
	[LinkName("gtk_about_dialog_set_program_name")]
	public static extern void AboutDialogSetProgramName(AboutDialog about, char8* name);
	[LinkName("gtk_about_dialog_set_system_information")]
	public static extern void AboutDialogSetSystemInformation(AboutDialog about, char8* system_information);
	[LinkName("gtk_about_dialog_set_translator_credits")]
	public static extern void AboutDialogSetTranslatorCredits(AboutDialog about, char8* translator_credits);
	[LinkName("gtk_about_dialog_set_version")]
	public static extern void AboutDialogSetVersion(AboutDialog about, char8* version);
	[LinkName("gtk_about_dialog_set_website")]
	public static extern void AboutDialogSetWebsite(AboutDialog about, char8* website);
	[LinkName("gtk_about_dialog_set_website_label")]
	public static extern void AboutDialogSetWebsiteLabel(AboutDialog about, char8* website_label);
	[LinkName("gtk_about_dialog_set_wrap_license")]
	public static extern void AboutDialogSetWrapLicense(AboutDialog about, c_int wrap_license);
	[CRepr]
	public struct Accessible
	{
		public function Accessible(Accessible this) get_accessible_parent;

		public function ATContext(Accessible this) get_at_context;

		public function c_int(Accessible this, c_int x, c_int y, c_int width, c_int height) get_bounds;

		public function Accessible(Accessible this) get_first_accessible_child;

		public function Accessible(Accessible this) get_next_accessible_sibling;

		public function c_int(Accessible this, AccessiblePlatformState state) get_platform_state;
	}
	public enum AccessibleAutocomplete : c_int
	{
		none = 0,
		inline_ = 1,
		list = 2,
		both = 3
	}
	[CRepr]
	public struct AccessibleInterface
	{
		GObject.TypeInterface g_iface;
	}
	public enum AccessibleInvalidState : c_int
	{
		false_ = 0,
		true_ = 1,
		grammar = 2,
		spelling = 3
	}
	public enum AccessiblePlatformState : c_int
	{
		focusable = 0,
		focused = 1,
		active = 2
	}
	public enum AccessibleProperty : c_int
	{
		autocomplete = 0,
		description = 1,
		has_popup = 2,
		key_shortcuts = 3,
		label = 4,
		level = 5,
		modal = 6,
		multi_line = 7,
		multi_selectable = 8,
		orientation = 9,
		placeholder = 10,
		read_only = 11,
		required = 12,
		role_description = 13,
		sort = 14,
		value_max = 15,
		value_min = 16,
		value_now = 17,
		value_text = 18
	}
	[CRepr]
	public struct AccessibleRange
	{
		public function c_int(AccessibleRange this, double value) set_current_value;
	}
	[CRepr]
	public struct AccessibleRangeInterface
	{
		GObject.TypeInterface g_iface;
	}
	public enum AccessibleRelation : c_int
	{
		active_descendant = 0,
		col_count = 1,
		col_index = 2,
		col_index_text = 3,
		col_span = 4,
		controls = 5,
		described_by = 6,
		details = 7,
		error_message = 8,
		flow_to = 9,
		labelled_by = 10,
		owns = 11,
		pos_in_set = 12,
		row_count = 13,
		row_index = 14,
		row_index_text = 15,
		row_span = 16,
		set_size = 17
	}
	public enum AccessibleRole : c_int
	{
		alert = 0,
		alert_dialog = 1,
		banner = 2,
		button = 3,
		caption = 4,
		cell = 5,
		checkbox = 6,
		column_header = 7,
		combo_box = 8,
		command = 9,
		composite = 10,
		dialog = 11,
		document = 12,
		feed = 13,
		form = 14,
		generic = 15,
		grid = 16,
		grid_cell = 17,
		group = 18,
		heading = 19,
		img = 20,
		input = 21,
		label = 22,
		landmark = 23,
		legend = 24,
		link = 25,
		list = 26,
		list_box = 27,
		list_item = 28,
		log = 29,
		main = 30,
		marquee = 31,
		math = 32,
		meter = 33,
		menu = 34,
		menu_bar = 35,
		menu_item = 36,
		menu_item_checkbox = 37,
		menu_item_radio = 38,
		navigation = 39,
		none = 40,
		note = 41,
		option = 42,
		presentation = 43,
		progress_bar = 44,
		radio = 45,
		radio_group = 46,
		range = 47,
		region = 48,
		row = 49,
		row_group = 50,
		row_header = 51,
		scrollbar = 52,
		search = 53,
		search_box = 54,
		section = 55,
		section_head = 56,
		select = 57,
		separator = 58,
		slider = 59,
		spin_button = 60,
		status = 61,
		structure = 62,
		switch_ = 63,
		tab = 64,
		table = 65,
		tab_list = 66,
		tab_panel = 67,
		text_box = 68,
		time = 69,
		timer = 70,
		toolbar = 71,
		tooltip = 72,
		tree = 73,
		tree_grid = 74,
		tree_item = 75,
		widget = 76,
		window = 77,
		toggle_button = 78
	}
	public enum AccessibleSort : c_int
	{
		none = 0,
		ascending = 1,
		descending = 2,
		other = 3
	}
	public enum AccessibleState : c_int
	{
		busy = 0,
		checked_ = 1,
		disabled = 2,
		expanded = 3,
		hidden = 4,
		invalid = 5,
		pressed = 6,
		selected = 7,
		visited = 8
	}
	public enum AccessibleTristate : c_int
	{
		false_ = 0,
		true_ = 1,
		mixed = 2
	}
	[CRepr]
	public struct ActionBar;
	[LinkName("gtk_action_bar_new")]
	public static extern Widget* ActionBarNew();
	[LinkName("gtk_action_bar_get_center_widget")]
	public static extern Widget* ActionBarGetCenterWidget(ActionBar action_bar);
	[LinkName("gtk_action_bar_get_revealed")]
	public static extern c_int ActionBarGetRevealed(ActionBar action_bar);
	[LinkName("gtk_action_bar_pack_end")]
	public static extern void ActionBarPackEnd(ActionBar action_bar, Widget child);
	[LinkName("gtk_action_bar_pack_start")]
	public static extern void ActionBarPackStart(ActionBar action_bar, Widget child);
	[LinkName("gtk_action_bar_remove")]
	public static extern void ActionBarRemove(ActionBar action_bar, Widget child);
	[LinkName("gtk_action_bar_set_center_widget")]
	public static extern void ActionBarSetCenterWidget(ActionBar action_bar, Widget center_widget);
	[LinkName("gtk_action_bar_set_revealed")]
	public static extern void ActionBarSetRevealed(ActionBar action_bar, c_int revealed);
	[CRepr]
	public struct Actionable
	{
		public function char8*(Actionable actionable) get_action_name;

		public function GLib.Variant(Actionable actionable) get_action_target_value;

		public function void(Actionable actionable, char8* action_name) set_action_name;

		public function void(Actionable actionable, GLib.Variant target_value) set_action_target_value;
	}
	[CRepr]
	public struct ActionableInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct ActivateAction;
	[CRepr]
	public struct ActivateActionClass
	{
	}
	[CRepr]
	public struct Adjustment;
	[LinkName("gtk_adjustment_new")]
	public static extern Adjustment* AdjustmentNew(double value, double lower, double upper, double step_increment, double page_increment, double page_size);
	[LinkName("gtk_adjustment_clamp_page")]
	public static extern void AdjustmentClampPage(Adjustment adjustment, double lower, double upper);
	[LinkName("gtk_adjustment_configure")]
	public static extern void AdjustmentConfigure(Adjustment adjustment, double value, double lower, double upper, double step_increment, double page_increment, double page_size);
	[LinkName("gtk_adjustment_get_lower")]
	public static extern double AdjustmentGetLower(Adjustment adjustment);
	[LinkName("gtk_adjustment_get_minimum_increment")]
	public static extern double AdjustmentGetMinimumIncrement(Adjustment adjustment);
	[LinkName("gtk_adjustment_get_page_increment")]
	public static extern double AdjustmentGetPageIncrement(Adjustment adjustment);
	[LinkName("gtk_adjustment_get_page_size")]
	public static extern double AdjustmentGetPageSize(Adjustment adjustment);
	[LinkName("gtk_adjustment_get_step_increment")]
	public static extern double AdjustmentGetStepIncrement(Adjustment adjustment);
	[LinkName("gtk_adjustment_get_upper")]
	public static extern double AdjustmentGetUpper(Adjustment adjustment);
	[LinkName("gtk_adjustment_get_value")]
	public static extern double AdjustmentGetValue(Adjustment adjustment);
	[LinkName("gtk_adjustment_set_lower")]
	public static extern void AdjustmentSetLower(Adjustment adjustment, double lower);
	[LinkName("gtk_adjustment_set_page_increment")]
	public static extern void AdjustmentSetPageIncrement(Adjustment adjustment, double page_increment);
	[LinkName("gtk_adjustment_set_page_size")]
	public static extern void AdjustmentSetPageSize(Adjustment adjustment, double page_size);
	[LinkName("gtk_adjustment_set_step_increment")]
	public static extern void AdjustmentSetStepIncrement(Adjustment adjustment, double step_increment);
	[LinkName("gtk_adjustment_set_upper")]
	public static extern void AdjustmentSetUpper(Adjustment adjustment, double upper);
	[LinkName("gtk_adjustment_set_value")]
	public static extern void AdjustmentSetValue(Adjustment adjustment, double value);
	[CRepr]
	public struct AdjustmentClass
	{
		GObject.InitiallyUnownedClass parent_class;
	}
	[CRepr]
	public struct AlertDialog;
	[LinkName("gtk_alert_dialog_new")]
	public static extern AlertDialog* AlertDialogNew(char8* format);
	[LinkName("gtk_alert_dialog_choose")]
	public static extern void AlertDialogChoose(AlertDialog self, Window parent, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_alert_dialog_choose_finish")]
	public static extern c_int AlertDialogChooseFinish(AlertDialog self, Gio.AsyncResult result);
	[LinkName("gtk_alert_dialog_get_buttons")]
	public static extern char8* AlertDialogGetButtons(AlertDialog self);
	[LinkName("gtk_alert_dialog_get_cancel_button")]
	public static extern c_int AlertDialogGetCancelButton(AlertDialog self);
	[LinkName("gtk_alert_dialog_get_default_button")]
	public static extern c_int AlertDialogGetDefaultButton(AlertDialog self);
	[LinkName("gtk_alert_dialog_get_detail")]
	public static extern char8** AlertDialogGetDetail(AlertDialog self);
	[LinkName("gtk_alert_dialog_get_message")]
	public static extern char8** AlertDialogGetMessage(AlertDialog self);
	[LinkName("gtk_alert_dialog_get_modal")]
	public static extern c_int AlertDialogGetModal(AlertDialog self);
	[LinkName("gtk_alert_dialog_set_buttons")]
	public static extern void AlertDialogSetButtons(AlertDialog self);
	[LinkName("gtk_alert_dialog_set_cancel_button")]
	public static extern void AlertDialogSetCancelButton(AlertDialog self, c_int button);
	[LinkName("gtk_alert_dialog_set_default_button")]
	public static extern void AlertDialogSetDefaultButton(AlertDialog self, c_int button);
	[LinkName("gtk_alert_dialog_set_detail")]
	public static extern void AlertDialogSetDetail(AlertDialog self, char8* detail);
	[LinkName("gtk_alert_dialog_set_message")]
	public static extern void AlertDialogSetMessage(AlertDialog self, char8* message);
	[LinkName("gtk_alert_dialog_set_modal")]
	public static extern void AlertDialogSetModal(AlertDialog self, c_int modal);
	[LinkName("gtk_alert_dialog_show")]
	public static extern void AlertDialogShow(AlertDialog self, Window parent);
	[CRepr]
	public struct AlertDialogClass
	{
		GObject.ObjectClass parent_class;
	}
	[AllowDuplicates]
	public enum Align : c_int
	{
		fill = 0,
		start = 1,
		end = 2,
		center = 3,
		baseline_fill = 4,
		baseline = 4,
		baseline_center = 5
	}
	[CRepr]
	public struct AlternativeTrigger;
	[LinkName("gtk_alternative_trigger_new")]
	public static extern ShortcutTrigger* AlternativeTriggerNew(ShortcutTrigger first, ShortcutTrigger second);
	[LinkName("gtk_alternative_trigger_get_first")]
	public static extern ShortcutTrigger* AlternativeTriggerGetFirst(AlternativeTrigger self);
	[LinkName("gtk_alternative_trigger_get_second")]
	public static extern ShortcutTrigger* AlternativeTriggerGetSecond(AlternativeTrigger self);
	[CRepr]
	public struct AlternativeTriggerClass
	{
	}
	[CRepr]
	public struct AnyFilter;
	[LinkName("gtk_any_filter_new")]
	public static extern AnyFilter* AnyFilterNew();
	[CRepr]
	public struct AnyFilterClass
	{
	}
	[CRepr]
	public struct AppChooser
	{	}
	[CRepr]
	public struct AppChooserButton;
	[LinkName("gtk_app_chooser_button_new")]
	public static extern Widget* AppChooserButtonNew(char8* content_type);
	[LinkName("gtk_app_chooser_button_append_custom_item")]
	public static extern void AppChooserButtonAppendCustomItem(AppChooserButton self, char8* name, char8* label, Gio.Icon icon);
	[LinkName("gtk_app_chooser_button_append_separator")]
	public static extern void AppChooserButtonAppendSeparator(AppChooserButton self);
	[LinkName("gtk_app_chooser_button_get_heading")]
	public static extern char8** AppChooserButtonGetHeading(AppChooserButton self);
	[LinkName("gtk_app_chooser_button_get_modal")]
	public static extern c_int AppChooserButtonGetModal(AppChooserButton self);
	[LinkName("gtk_app_chooser_button_get_show_default_item")]
	public static extern c_int AppChooserButtonGetShowDefaultItem(AppChooserButton self);
	[LinkName("gtk_app_chooser_button_get_show_dialog_item")]
	public static extern c_int AppChooserButtonGetShowDialogItem(AppChooserButton self);
	[LinkName("gtk_app_chooser_button_set_active_custom_item")]
	public static extern void AppChooserButtonSetActiveCustomItem(AppChooserButton self, char8* name);
	[LinkName("gtk_app_chooser_button_set_heading")]
	public static extern void AppChooserButtonSetHeading(AppChooserButton self, char8* heading);
	[LinkName("gtk_app_chooser_button_set_modal")]
	public static extern void AppChooserButtonSetModal(AppChooserButton self, c_int modal);
	[LinkName("gtk_app_chooser_button_set_show_default_item")]
	public static extern void AppChooserButtonSetShowDefaultItem(AppChooserButton self, c_int setting);
	[LinkName("gtk_app_chooser_button_set_show_dialog_item")]
	public static extern void AppChooserButtonSetShowDialogItem(AppChooserButton self, c_int setting);
	[CRepr]
	public struct AppChooserDialog;
	[LinkName("gtk_app_chooser_dialog_new")]
	public static extern Widget* AppChooserDialogNew(Window parent, DialogFlags flags, Gio.File file);
	[LinkName("gtk_app_chooser_dialog_new_for_content_type")]
	public static extern Widget* AppChooserDialogNewForContentType(Window parent, DialogFlags flags, char8* content_type);
	[LinkName("gtk_app_chooser_dialog_get_heading")]
	public static extern char8** AppChooserDialogGetHeading(AppChooserDialog self);
	[LinkName("gtk_app_chooser_dialog_get_widget")]
	public static extern Widget* AppChooserDialogGetWidget(AppChooserDialog self);
	[LinkName("gtk_app_chooser_dialog_set_heading")]
	public static extern void AppChooserDialogSetHeading(AppChooserDialog self, char8* heading);
	[CRepr]
	public struct AppChooserWidget;
	[LinkName("gtk_app_chooser_widget_new")]
	public static extern Widget* AppChooserWidgetNew(char8* content_type);
	[LinkName("gtk_app_chooser_widget_get_default_text")]
	public static extern char8** AppChooserWidgetGetDefaultText(AppChooserWidget self);
	[LinkName("gtk_app_chooser_widget_get_show_all")]
	public static extern c_int AppChooserWidgetGetShowAll(AppChooserWidget self);
	[LinkName("gtk_app_chooser_widget_get_show_default")]
	public static extern c_int AppChooserWidgetGetShowDefault(AppChooserWidget self);
	[LinkName("gtk_app_chooser_widget_get_show_fallback")]
	public static extern c_int AppChooserWidgetGetShowFallback(AppChooserWidget self);
	[LinkName("gtk_app_chooser_widget_get_show_other")]
	public static extern c_int AppChooserWidgetGetShowOther(AppChooserWidget self);
	[LinkName("gtk_app_chooser_widget_get_show_recommended")]
	public static extern c_int AppChooserWidgetGetShowRecommended(AppChooserWidget self);
	[LinkName("gtk_app_chooser_widget_set_default_text")]
	public static extern void AppChooserWidgetSetDefaultText(AppChooserWidget self, char8* text);
	[LinkName("gtk_app_chooser_widget_set_show_all")]
	public static extern void AppChooserWidgetSetShowAll(AppChooserWidget self, c_int setting);
	[LinkName("gtk_app_chooser_widget_set_show_default")]
	public static extern void AppChooserWidgetSetShowDefault(AppChooserWidget self, c_int setting);
	[LinkName("gtk_app_chooser_widget_set_show_fallback")]
	public static extern void AppChooserWidgetSetShowFallback(AppChooserWidget self, c_int setting);
	[LinkName("gtk_app_chooser_widget_set_show_other")]
	public static extern void AppChooserWidgetSetShowOther(AppChooserWidget self, c_int setting);
	[LinkName("gtk_app_chooser_widget_set_show_recommended")]
	public static extern void AppChooserWidgetSetShowRecommended(AppChooserWidget self, c_int setting);
	[CRepr]
	public struct Application;
	[LinkName("gtk_application_new")]
	public static extern Application* ApplicationNew(char8* application_id, Gio.ApplicationFlags flags);
	[LinkName("gtk_application_add_window")]
	public static extern void ApplicationAddWindow(Application application, Window window);
	[LinkName("gtk_application_get_accels_for_action")]
	public static extern char8* ApplicationGetAccelsForAction(Application application, char8* detailed_action_name);
	[LinkName("gtk_application_get_actions_for_accel")]
	public static extern char8* ApplicationGetActionsForAccel(Application application, char8* accel);
	[LinkName("gtk_application_get_active_window")]
	public static extern Window* ApplicationGetActiveWindow(Application application);
	[LinkName("gtk_application_get_menu_by_id")]
	public static extern Gio.Menu* ApplicationGetMenuById(Application application, char8* id);
	[LinkName("gtk_application_get_menubar")]
	public static extern Gio.MenuModel* ApplicationGetMenubar(Application application);
	[LinkName("gtk_application_get_window_by_id")]
	public static extern Window* ApplicationGetWindowById(Application application, c_uint id);
	[LinkName("gtk_application_get_windows")]
	public static extern GLib.List* ApplicationGetWindows(Application application);
	[LinkName("gtk_application_inhibit")]
	public static extern c_uint ApplicationInhibit(Application application, Window window, ApplicationInhibitFlags flags, char8* reason);
	[LinkName("gtk_application_list_action_descriptions")]
	public static extern char8* ApplicationListActionDescriptions(Application application);
	[LinkName("gtk_application_remove_window")]
	public static extern void ApplicationRemoveWindow(Application application, Window window);
	[LinkName("gtk_application_set_accels_for_action")]
	public static extern void ApplicationSetAccelsForAction(Application application, char8* detailed_action_name);
	[LinkName("gtk_application_set_menubar")]
	public static extern void ApplicationSetMenubar(Application application, Gio.MenuModel menubar);
	[LinkName("gtk_application_uninhibit")]
	public static extern void ApplicationUninhibit(Application application, c_uint cookie);
	[CRepr]
	public struct ApplicationClass
	{
		Gio.ApplicationClass parent_class;
	}
	[CRepr]
	public enum ApplicationInhibitFlags : int
	{
		logout = 1,
		switch_ = 2,
		suspend = 4,
		idle = 8
	}
	[CRepr]
	public struct ApplicationWindow;
	[LinkName("gtk_application_window_new")]
	public static extern Widget* ApplicationWindowNew(Application application);
	[LinkName("gtk_application_window_get_help_overlay")]
	public static extern ShortcutsWindow* ApplicationWindowGetHelpOverlay(ApplicationWindow window);
	[LinkName("gtk_application_window_get_id")]
	public static extern c_uint ApplicationWindowGetId(ApplicationWindow window);
	[LinkName("gtk_application_window_get_show_menubar")]
	public static extern c_int ApplicationWindowGetShowMenubar(ApplicationWindow window);
	[LinkName("gtk_application_window_set_help_overlay")]
	public static extern void ApplicationWindowSetHelpOverlay(ApplicationWindow window, ShortcutsWindow help_overlay);
	[LinkName("gtk_application_window_set_show_menubar")]
	public static extern void ApplicationWindowSetShowMenubar(ApplicationWindow window, c_int show_menubar);
	[CRepr]
	public struct ApplicationWindowClass
	{
		WindowClass parent_class;
	}
	public enum ArrowType : c_int
	{
		up = 0,
		down = 1,
		left = 2,
		right = 3,
		none = 4
	}
	[CRepr]
	public struct AspectFrame;
	[LinkName("gtk_aspect_frame_new")]
	public static extern Widget* AspectFrameNew(float xalign, float yalign, float ratio, c_int obey_child);
	[LinkName("gtk_aspect_frame_get_child")]
	public static extern Widget* AspectFrameGetChild(AspectFrame self);
	[LinkName("gtk_aspect_frame_get_obey_child")]
	public static extern c_int AspectFrameGetObeyChild(AspectFrame self);
	[LinkName("gtk_aspect_frame_get_ratio")]
	public static extern float AspectFrameGetRatio(AspectFrame self);
	[LinkName("gtk_aspect_frame_get_xalign")]
	public static extern float AspectFrameGetXalign(AspectFrame self);
	[LinkName("gtk_aspect_frame_get_yalign")]
	public static extern float AspectFrameGetYalign(AspectFrame self);
	[LinkName("gtk_aspect_frame_set_child")]
	public static extern void AspectFrameSetChild(AspectFrame self, Widget child);
	[LinkName("gtk_aspect_frame_set_obey_child")]
	public static extern void AspectFrameSetObeyChild(AspectFrame self, c_int obey_child);
	[LinkName("gtk_aspect_frame_set_ratio")]
	public static extern void AspectFrameSetRatio(AspectFrame self, float ratio);
	[LinkName("gtk_aspect_frame_set_xalign")]
	public static extern void AspectFrameSetXalign(AspectFrame self, float xalign);
	[LinkName("gtk_aspect_frame_set_yalign")]
	public static extern void AspectFrameSetYalign(AspectFrame self, float yalign);
	[CRepr]
	public struct Assistant;
	[LinkName("gtk_assistant_new")]
	public static extern Widget* AssistantNew();
	[LinkName("gtk_assistant_add_action_widget")]
	public static extern void AssistantAddActionWidget(Assistant assistant, Widget child);
	[LinkName("gtk_assistant_append_page")]
	public static extern c_int AssistantAppendPage(Assistant assistant, Widget page);
	[LinkName("gtk_assistant_commit")]
	public static extern void AssistantCommit(Assistant assistant);
	[LinkName("gtk_assistant_get_current_page")]
	public static extern c_int AssistantGetCurrentPage(Assistant assistant);
	[LinkName("gtk_assistant_get_n_pages")]
	public static extern c_int AssistantGetNPages(Assistant assistant);
	[LinkName("gtk_assistant_get_nth_page")]
	public static extern Widget* AssistantGetNthPage(Assistant assistant, c_int page_num);
	[LinkName("gtk_assistant_get_page")]
	public static extern AssistantPage* AssistantGetPage(Assistant assistant, Widget child);
	[LinkName("gtk_assistant_get_page_complete")]
	public static extern c_int AssistantGetPageComplete(Assistant assistant, Widget page);
	[LinkName("gtk_assistant_get_page_title")]
	public static extern char8** AssistantGetPageTitle(Assistant assistant, Widget page);
	[LinkName("gtk_assistant_get_page_type")]
	public static extern AssistantPageType AssistantGetPageType(Assistant assistant, Widget page);
	[LinkName("gtk_assistant_get_pages")]
	public static extern Gio.ListModel* AssistantGetPages(Assistant assistant);
	[LinkName("gtk_assistant_insert_page")]
	public static extern c_int AssistantInsertPage(Assistant assistant, Widget page, c_int position);
	[LinkName("gtk_assistant_next_page")]
	public static extern void AssistantNextPage(Assistant assistant);
	[LinkName("gtk_assistant_prepend_page")]
	public static extern c_int AssistantPrependPage(Assistant assistant, Widget page);
	[LinkName("gtk_assistant_previous_page")]
	public static extern void AssistantPreviousPage(Assistant assistant);
	[LinkName("gtk_assistant_remove_action_widget")]
	public static extern void AssistantRemoveActionWidget(Assistant assistant, Widget child);
	[LinkName("gtk_assistant_remove_page")]
	public static extern void AssistantRemovePage(Assistant assistant, c_int page_num);
	[LinkName("gtk_assistant_set_current_page")]
	public static extern void AssistantSetCurrentPage(Assistant assistant, c_int page_num);
	[LinkName("gtk_assistant_set_forward_page_func")]
	public static extern void AssistantSetForwardPageFunc(Assistant assistant, AssistantPageFunc page_func, void* data, GLib.DestroyNotify destroy);
	[LinkName("gtk_assistant_set_page_complete")]
	public static extern void AssistantSetPageComplete(Assistant assistant, Widget page, c_int complete);
	[LinkName("gtk_assistant_set_page_title")]
	public static extern void AssistantSetPageTitle(Assistant assistant, Widget page, char8* title);
	[LinkName("gtk_assistant_set_page_type")]
	public static extern void AssistantSetPageType(Assistant assistant, Widget page, AssistantPageType type);
	[LinkName("gtk_assistant_update_buttons_state")]
	public static extern void AssistantUpdateButtonsState(Assistant assistant);
	[CRepr]
	public struct AssistantPage;
	[LinkName("gtk_assistant_page_get_child")]
	public static extern Widget* AssistantPageGetChild(AssistantPage page);
	public function c_int AssistantPageFunc(c_int current_page, void* data);
	public enum AssistantPageType : c_int
	{
		content = 0,
		intro = 1,
		confirm = 2,
		summary = 3,
		progress = 4,
		custom = 5
	}
	public enum BaselinePosition : c_int
	{
		top = 0,
		center = 1,
		bottom = 2
	}
	[CRepr]
	public struct BinLayout;
	[LinkName("gtk_bin_layout_new")]
	public static extern LayoutManager* BinLayoutNew();
	[CRepr]
	public struct BinLayoutClass
	{
		LayoutManagerClass parent_class;
	}
	[CRepr]
	public struct Bitset
	{
	}
	[CRepr]
	public struct BitsetIter
	{
	}
	[CRepr]
	public struct BookmarkList;
	[LinkName("gtk_bookmark_list_new")]
	public static extern BookmarkList* BookmarkListNew(char8* filename, char8* attributes);
	[LinkName("gtk_bookmark_list_get_attributes")]
	public static extern char8** BookmarkListGetAttributes(BookmarkList self);
	[LinkName("gtk_bookmark_list_get_filename")]
	public static extern char8** BookmarkListGetFilename(BookmarkList self);
	[LinkName("gtk_bookmark_list_get_io_priority")]
	public static extern c_int BookmarkListGetIoPriority(BookmarkList self);
	[LinkName("gtk_bookmark_list_is_loading")]
	public static extern c_int BookmarkListIsLoading(BookmarkList self);
	[LinkName("gtk_bookmark_list_set_attributes")]
	public static extern void BookmarkListSetAttributes(BookmarkList self, char8* attributes);
	[LinkName("gtk_bookmark_list_set_io_priority")]
	public static extern void BookmarkListSetIoPriority(BookmarkList self, c_int io_priority);
	[CRepr]
	public struct BookmarkListClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct BoolFilter;
	[LinkName("gtk_bool_filter_new")]
	public static extern BoolFilter* BoolFilterNew(Expression expression);
	[LinkName("gtk_bool_filter_get_expression")]
	public static extern Expression* BoolFilterGetExpression(BoolFilter self);
	[LinkName("gtk_bool_filter_get_invert")]
	public static extern c_int BoolFilterGetInvert(BoolFilter self);
	[LinkName("gtk_bool_filter_set_expression")]
	public static extern void BoolFilterSetExpression(BoolFilter self, Expression expression);
	[LinkName("gtk_bool_filter_set_invert")]
	public static extern void BoolFilterSetInvert(BoolFilter self, c_int invert);
	[CRepr]
	public struct BoolFilterClass
	{
		FilterClass parent_class;
	}
	[CRepr]
	public struct Border
	{
		c_short left;
		c_short right;
		c_short top;
		c_short bottom;
	}
	public enum BorderStyle : c_int
	{
		none = 0,
		hidden = 1,
		solid = 2,
		inset = 3,
		outset = 4,
		dotted = 5,
		dashed = 6,
		double = 7,
		groove = 8,
		ridge = 9
	}
	[CRepr]
	public struct Box;
	[LinkName("gtk_box_new")]
	public static extern Widget* BoxNew(Orientation orientation, c_int spacing);
	[LinkName("gtk_box_append")]
	public static extern void BoxAppend(Box box_, Widget child);
	[LinkName("gtk_box_get_baseline_child")]
	public static extern c_int BoxGetBaselineChild(Box box_);
	[LinkName("gtk_box_get_baseline_position")]
	public static extern BaselinePosition BoxGetBaselinePosition(Box box_);
	[LinkName("gtk_box_get_homogeneous")]
	public static extern c_int BoxGetHomogeneous(Box box_);
	[LinkName("gtk_box_get_spacing")]
	public static extern c_int BoxGetSpacing(Box box_);
	[LinkName("gtk_box_insert_child_after")]
	public static extern void BoxInsertChildAfter(Box box_, Widget child, Widget sibling);
	[LinkName("gtk_box_prepend")]
	public static extern void BoxPrepend(Box box_, Widget child);
	[LinkName("gtk_box_remove")]
	public static extern void BoxRemove(Box box_, Widget child);
	[LinkName("gtk_box_reorder_child_after")]
	public static extern void BoxReorderChildAfter(Box box_, Widget child, Widget sibling);
	[LinkName("gtk_box_set_baseline_child")]
	public static extern void BoxSetBaselineChild(Box box_, c_int child);
	[LinkName("gtk_box_set_baseline_position")]
	public static extern void BoxSetBaselinePosition(Box box_, BaselinePosition position);
	[LinkName("gtk_box_set_homogeneous")]
	public static extern void BoxSetHomogeneous(Box box_, c_int homogeneous);
	[LinkName("gtk_box_set_spacing")]
	public static extern void BoxSetSpacing(Box box_, c_int spacing);
	[CRepr]
	public struct BoxClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct BoxLayout;
	[LinkName("gtk_box_layout_new")]
	public static extern LayoutManager* BoxLayoutNew(Orientation orientation);
	[LinkName("gtk_box_layout_get_baseline_child")]
	public static extern c_int BoxLayoutGetBaselineChild(BoxLayout box_layout);
	[LinkName("gtk_box_layout_get_baseline_position")]
	public static extern BaselinePosition BoxLayoutGetBaselinePosition(BoxLayout box_layout);
	[LinkName("gtk_box_layout_get_homogeneous")]
	public static extern c_int BoxLayoutGetHomogeneous(BoxLayout box_layout);
	[LinkName("gtk_box_layout_get_spacing")]
	public static extern c_uint BoxLayoutGetSpacing(BoxLayout box_layout);
	[LinkName("gtk_box_layout_set_baseline_child")]
	public static extern void BoxLayoutSetBaselineChild(BoxLayout box_layout, c_int child);
	[LinkName("gtk_box_layout_set_baseline_position")]
	public static extern void BoxLayoutSetBaselinePosition(BoxLayout box_layout, BaselinePosition position);
	[LinkName("gtk_box_layout_set_homogeneous")]
	public static extern void BoxLayoutSetHomogeneous(BoxLayout box_layout, c_int homogeneous);
	[LinkName("gtk_box_layout_set_spacing")]
	public static extern void BoxLayoutSetSpacing(BoxLayout box_layout, c_uint spacing);
	[CRepr]
	public struct BoxLayoutClass
	{
		LayoutManagerClass parent_class;
	}
	[CRepr]
	public struct Buildable
	{
		public function void(Buildable buildable, Builder builder, GObject.Object child, char8* type) add_child;

		public function GObject.Object(Buildable buildable, Builder builder, char8* name) construct_child;

		public function void(Buildable buildable, Builder builder, GObject.Object child, char8* tagname, void* data) custom_finished;

		public function void(Buildable buildable, Builder builder, GObject.Object child, char8* tagname, void* data) custom_tag_end;

		public function c_int(Buildable buildable, Builder builder, GObject.Object child, char8* tagname, BuildableParser parser, void* data) custom_tag_start;

		public function char8*(Buildable buildable) get_id;

		public function GObject.Object(Buildable buildable, Builder builder, char8* childname) get_internal_child;

		public function void(Buildable buildable, Builder builder) parser_finished;

		public function void(Buildable buildable, Builder builder, char8* name, GObject.Value value) set_buildable_property;

		public function void(Buildable buildable, char8* id) set_id;
	}
	[CRepr]
	public struct BuildableIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct BuildableParseContext
	{
	}
	[CRepr]
	public struct BuildableParser
	{
	}
	[CRepr]
	public struct Builder;
	[LinkName("gtk_builder_new")]
	public static extern Builder* BuilderNew();
	[LinkName("gtk_builder_new_from_file")]
	public static extern Builder* BuilderNewFromFile(char8* filename);
	[LinkName("gtk_builder_new_from_resource")]
	public static extern Builder* BuilderNewFromResource(char8* resource_path);
	[LinkName("gtk_builder_new_from_string")]
	public static extern Builder* BuilderNewFromString(char8* string, c_long length);
	[LinkName("gtk_builder_add_from_file")]
	public static extern c_int BuilderAddFromFile(Builder builder, char8* filename);
	[LinkName("gtk_builder_add_from_resource")]
	public static extern c_int BuilderAddFromResource(Builder builder, char8* resource_path);
	[LinkName("gtk_builder_add_from_string")]
	public static extern c_int BuilderAddFromString(Builder builder, char8* buffer, c_long length);
	[LinkName("gtk_builder_add_objects_from_file")]
	public static extern c_int BuilderAddObjectsFromFile(Builder builder, char8* filename);
	[LinkName("gtk_builder_add_objects_from_resource")]
	public static extern c_int BuilderAddObjectsFromResource(Builder builder, char8* resource_path);
	[LinkName("gtk_builder_add_objects_from_string")]
	public static extern c_int BuilderAddObjectsFromString(Builder builder, char8* buffer, c_long length);
	[LinkName("gtk_builder_create_closure")]
	public static extern GObject.Closure* BuilderCreateClosure(Builder builder, char8* function_name, BuilderClosureFlags flags, GObject.Object object);
	[LinkName("gtk_builder_expose_object")]
	public static extern void BuilderExposeObject(Builder builder, char8* name, GObject.Object object);
	[LinkName("gtk_builder_extend_with_template")]
	public static extern c_int BuilderExtendWithTemplate(Builder builder, GObject.Object object, GLib.Type template_type, char8* buffer, c_long length);
	[LinkName("gtk_builder_get_current_object")]
	public static extern GObject.Object* BuilderGetCurrentObject(Builder builder);
	[LinkName("gtk_builder_get_object")]
	public static extern GObject.Object* BuilderGetObject(Builder builder, char8* name);
	[LinkName("gtk_builder_get_objects")]
	public static extern GLib.SList* BuilderGetObjects(Builder builder);
	[LinkName("gtk_builder_get_scope")]
	public static extern BuilderScope* BuilderGetScope(Builder builder);
	[LinkName("gtk_builder_get_translation_domain")]
	public static extern char8** BuilderGetTranslationDomain(Builder builder);
	[LinkName("gtk_builder_get_type_from_name")]
	public static extern GLib.Type BuilderGetTypeFromName(Builder builder, char8* type_name);
	[LinkName("gtk_builder_set_current_object")]
	public static extern void BuilderSetCurrentObject(Builder builder, GObject.Object current_object);
	[LinkName("gtk_builder_set_scope")]
	public static extern void BuilderSetScope(Builder builder, BuilderScope scope_);
	[LinkName("gtk_builder_set_translation_domain")]
	public static extern void BuilderSetTranslationDomain(Builder builder, char8* domain);
	[LinkName("gtk_builder_value_from_string")]
	public static extern c_int BuilderValueFromString(Builder builder, GObject.ParamSpec pspec, char8* string, GObject.Value value);
	[LinkName("gtk_builder_value_from_string_type")]
	public static extern c_int BuilderValueFromStringType(Builder builder, GLib.Type type, char8* string, GObject.Value value);
	[CRepr]
	public struct BuilderCScope;
	[LinkName("gtk_builder_cscope_new")]
	public static extern BuilderCScope* BuilderCscopeNew();
	[LinkName("gtk_builder_cscope_add_callback_symbol")]
	public static extern void BuilderCscopeAddCallbackSymbol(BuilderCScope self, char8* callback_name, GObject.Callback callback_symbol);
	[LinkName("gtk_builder_cscope_add_callback_symbols")]
	public static extern void BuilderCscopeAddCallbackSymbols(BuilderCScope self, char8* first_callback_name, GObject.Callback first_callback_symbol);
	[LinkName("gtk_builder_cscope_lookup_callback_symbol")]
	public static extern GObject.Callback BuilderCscopeLookupCallbackSymbol(BuilderCScope self, char8* callback_name);
	[CRepr]
	public struct BuilderCScopeClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct BuilderClass
	{
	}
	[CRepr]
	public enum BuilderClosureFlags : int
	{
		swapped = 1
	}
	public enum BuilderError : c_int
	{
		invalid_type_function = 0,
		unhandled_tag = 1,
		missing_attribute = 2,
		invalid_attribute = 3,
		invalid_tag = 4,
		missing_property_value = 5,
		invalid_value = 6,
		version_mismatch = 7,
		duplicate_id = 8,
		object_type_refused = 9,
		template_mismatch = 10,
		invalid_property = 11,
		invalid_signal = 12,
		invalid_id = 13,
		invalid_function = 14
	}
	[CRepr]
	public struct BuilderListItemFactory;
	[LinkName("gtk_builder_list_item_factory_new_from_bytes")]
	public static extern ListItemFactory* BuilderListItemFactoryNewFromBytes(BuilderScope scope_, GLib.Bytes bytes);
	[LinkName("gtk_builder_list_item_factory_new_from_resource")]
	public static extern ListItemFactory* BuilderListItemFactoryNewFromResource(BuilderScope scope_, char8* resource_path);
	[LinkName("gtk_builder_list_item_factory_get_bytes")]
	public static extern GLib.Bytes* BuilderListItemFactoryGetBytes(BuilderListItemFactory self);
	[LinkName("gtk_builder_list_item_factory_get_resource")]
	public static extern char8** BuilderListItemFactoryGetResource(BuilderListItemFactory self);
	[LinkName("gtk_builder_list_item_factory_get_scope")]
	public static extern BuilderScope* BuilderListItemFactoryGetScope(BuilderListItemFactory self);
	[CRepr]
	public struct BuilderListItemFactoryClass
	{
	}
	[CRepr]
	public struct BuilderScope
	{
		public function GObject.Closure(BuilderScope this, Builder builder, char8* function_name, BuilderClosureFlags flags, GObject.Object object) create_closure;

		public function GLib.Type(BuilderScope this, Builder builder, char8* function_name) get_type_from_function;

		public function GLib.Type(BuilderScope this, Builder builder, char8* type_name) get_type_from_name;
	}
	[CRepr]
	public struct BuilderScopeInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct Button;
	[LinkName("gtk_button_new")]
	public static extern Widget* ButtonNew();
	[LinkName("gtk_button_new_from_icon_name")]
	public static extern Widget* ButtonNewFromIconName(char8* icon_name);
	[LinkName("gtk_button_new_with_label")]
	public static extern Widget* ButtonNewWithLabel(char8* label);
	[LinkName("gtk_button_new_with_mnemonic")]
	public static extern Widget* ButtonNewWithMnemonic(char8* label);
	[LinkName("gtk_button_get_can_shrink")]
	public static extern c_int ButtonGetCanShrink(Button button);
	[LinkName("gtk_button_get_child")]
	public static extern Widget* ButtonGetChild(Button button);
	[LinkName("gtk_button_get_has_frame")]
	public static extern c_int ButtonGetHasFrame(Button button);
	[LinkName("gtk_button_get_icon_name")]
	public static extern char8** ButtonGetIconName(Button button);
	[LinkName("gtk_button_get_label")]
	public static extern char8** ButtonGetLabel(Button button);
	[LinkName("gtk_button_get_use_underline")]
	public static extern c_int ButtonGetUseUnderline(Button button);
	[LinkName("gtk_button_set_can_shrink")]
	public static extern void ButtonSetCanShrink(Button button, c_int can_shrink);
	[LinkName("gtk_button_set_child")]
	public static extern void ButtonSetChild(Button button, Widget child);
	[LinkName("gtk_button_set_has_frame")]
	public static extern void ButtonSetHasFrame(Button button, c_int has_frame);
	[LinkName("gtk_button_set_icon_name")]
	public static extern void ButtonSetIconName(Button button, char8* icon_name);
	[LinkName("gtk_button_set_label")]
	public static extern void ButtonSetLabel(Button button, char8* label);
	[LinkName("gtk_button_set_use_underline")]
	public static extern void ButtonSetUseUnderline(Button button, c_int use_underline);
	[CRepr]
	public struct ButtonClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct ButtonPrivate
	{
	}
	public enum ButtonsType : c_int
	{
		none = 0,
		ok = 1,
		close = 2,
		cancel = 3,
		yes_no = 4,
		ok_cancel = 5
	}
	[CRepr]
	public struct CClosureExpression;
	[LinkName("gtk_cclosure_expression_new")]
	public static extern CClosureExpression* CclosureExpressionNew(GLib.Type value_type, GObject.ClosureMarshal marshal, c_uint n_params, GObject.Callback callback_func, void* user_data, GObject.ClosureNotify user_destroy);
	[CRepr]
	public struct Calendar;
	[LinkName("gtk_calendar_new")]
	public static extern Widget* CalendarNew();
	[LinkName("gtk_calendar_clear_marks")]
	public static extern void CalendarClearMarks(Calendar calendar);
	[LinkName("gtk_calendar_get_date")]
	public static extern GLib.DateTime* CalendarGetDate(Calendar self);
	[LinkName("gtk_calendar_get_day_is_marked")]
	public static extern c_int CalendarGetDayIsMarked(Calendar calendar, c_uint day);
	[LinkName("gtk_calendar_get_show_day_names")]
	public static extern c_int CalendarGetShowDayNames(Calendar self);
	[LinkName("gtk_calendar_get_show_heading")]
	public static extern c_int CalendarGetShowHeading(Calendar self);
	[LinkName("gtk_calendar_get_show_week_numbers")]
	public static extern c_int CalendarGetShowWeekNumbers(Calendar self);
	[LinkName("gtk_calendar_mark_day")]
	public static extern void CalendarMarkDay(Calendar calendar, c_uint day);
	[LinkName("gtk_calendar_select_day")]
	public static extern void CalendarSelectDay(Calendar self, GLib.DateTime date);
	[LinkName("gtk_calendar_set_show_day_names")]
	public static extern void CalendarSetShowDayNames(Calendar self, c_int value);
	[LinkName("gtk_calendar_set_show_heading")]
	public static extern void CalendarSetShowHeading(Calendar self, c_int value);
	[LinkName("gtk_calendar_set_show_week_numbers")]
	public static extern void CalendarSetShowWeekNumbers(Calendar self, c_int value);
	[LinkName("gtk_calendar_unmark_day")]
	public static extern void CalendarUnmarkDay(Calendar calendar, c_uint day);
	[CRepr]
	public struct CallbackAction;
	[LinkName("gtk_callback_action_new")]
	public static extern CallbackAction* CallbackActionNew(ShortcutFunc callback, void* data, GLib.DestroyNotify destroy);
	[CRepr]
	public struct CallbackActionClass
	{
	}
	public function c_int CellAllocCallback(CellRenderer renderer, Gdk.Rectangle cell_area, Gdk.Rectangle cell_background, void* data);
	[CRepr]
	public struct CellArea;
	[LinkName("gtk_cell_area_activate")]
	public static extern c_int CellAreaActivate(CellArea area, CellAreaContext context, Widget widget, Gdk.Rectangle cell_area, CellRendererState flags, c_int edit_only);
	[LinkName("gtk_cell_area_activate_cell")]
	public static extern c_int CellAreaActivateCell(CellArea area, Widget widget, CellRenderer renderer, Gdk.Event event, Gdk.Rectangle cell_area, CellRendererState flags);
	[LinkName("gtk_cell_area_add")]
	public static extern void CellAreaAdd(CellArea area, CellRenderer renderer);
	[LinkName("gtk_cell_area_add_focus_sibling")]
	public static extern void CellAreaAddFocusSibling(CellArea area, CellRenderer renderer, CellRenderer sibling);
	[LinkName("gtk_cell_area_add_with_properties")]
	public static extern void CellAreaAddWithProperties(CellArea area, CellRenderer renderer, char8* first_prop_name);
	[LinkName("gtk_cell_area_apply_attributes")]
	public static extern void CellAreaApplyAttributes(CellArea area, TreeModel tree_model, TreeIter iter, c_int is_expander, c_int is_expanded);
	[LinkName("gtk_cell_area_attribute_connect")]
	public static extern void CellAreaAttributeConnect(CellArea area, CellRenderer renderer, char8* attribute, c_int column);
	[LinkName("gtk_cell_area_attribute_disconnect")]
	public static extern void CellAreaAttributeDisconnect(CellArea area, CellRenderer renderer, char8* attribute);
	[LinkName("gtk_cell_area_attribute_get_column")]
	public static extern c_int CellAreaAttributeGetColumn(CellArea area, CellRenderer renderer, char8* attribute);
	[LinkName("gtk_cell_area_cell_get")]
	public static extern void CellAreaCellGet(CellArea area, CellRenderer renderer, char8* first_prop_name);
	[LinkName("gtk_cell_area_cell_get_property")]
	public static extern void CellAreaCellGetProperty(CellArea area, CellRenderer renderer, char8* property_name, GObject.Value value);
	[LinkName("gtk_cell_area_cell_get_valist")]
	public static extern void CellAreaCellGetValist(CellArea area, CellRenderer renderer, char8* first_property_name, VarArgs var_args);
	[LinkName("gtk_cell_area_cell_set")]
	public static extern void CellAreaCellSet(CellArea area, CellRenderer renderer, char8* first_prop_name);
	[LinkName("gtk_cell_area_cell_set_property")]
	public static extern void CellAreaCellSetProperty(CellArea area, CellRenderer renderer, char8* property_name, GObject.Value value);
	[LinkName("gtk_cell_area_cell_set_valist")]
	public static extern void CellAreaCellSetValist(CellArea area, CellRenderer renderer, char8* first_property_name, VarArgs var_args);
	[LinkName("gtk_cell_area_copy_context")]
	public static extern CellAreaContext* CellAreaCopyContext(CellArea area, CellAreaContext context);
	[LinkName("gtk_cell_area_create_context")]
	public static extern CellAreaContext* CellAreaCreateContext(CellArea area);
	[LinkName("gtk_cell_area_event")]
	public static extern c_int CellAreaEvent(CellArea area, CellAreaContext context, Widget widget, Gdk.Event event, Gdk.Rectangle cell_area, CellRendererState flags);
	[LinkName("gtk_cell_area_focus")]
	public static extern c_int CellAreaFocus(CellArea area, DirectionType direction);
	[LinkName("gtk_cell_area_foreach")]
	public static extern void CellAreaForeach(CellArea area, CellCallback callback, void* callback_data);
	[LinkName("gtk_cell_area_foreach_alloc")]
	public static extern void CellAreaForeachAlloc(CellArea area, CellAreaContext context, Widget widget, Gdk.Rectangle cell_area, Gdk.Rectangle background_area, CellAllocCallback callback, void* callback_data);
	[LinkName("gtk_cell_area_get_cell_allocation")]
	public static extern void CellAreaGetCellAllocation(CellArea area, CellAreaContext context, Widget widget, CellRenderer renderer, Gdk.Rectangle cell_area, Gdk.Rectangle allocation);
	[LinkName("gtk_cell_area_get_cell_at_position")]
	public static extern CellRenderer* CellAreaGetCellAtPosition(CellArea area, CellAreaContext context, Widget widget, Gdk.Rectangle cell_area, c_int x, c_int y, Gdk.Rectangle alloc_area);
	[LinkName("gtk_cell_area_get_current_path_string")]
	public static extern char8** CellAreaGetCurrentPathString(CellArea area);
	[LinkName("gtk_cell_area_get_edit_widget")]
	public static extern CellEditable* CellAreaGetEditWidget(CellArea area);
	[LinkName("gtk_cell_area_get_edited_cell")]
	public static extern CellRenderer* CellAreaGetEditedCell(CellArea area);
	[LinkName("gtk_cell_area_get_focus_cell")]
	public static extern CellRenderer* CellAreaGetFocusCell(CellArea area);
	[LinkName("gtk_cell_area_get_focus_from_sibling")]
	public static extern CellRenderer* CellAreaGetFocusFromSibling(CellArea area, CellRenderer renderer);
	[LinkName("gtk_cell_area_get_focus_siblings")]
	public static extern GLib.List* CellAreaGetFocusSiblings(CellArea area, CellRenderer renderer);
	[LinkName("gtk_cell_area_get_preferred_height")]
	public static extern void CellAreaGetPreferredHeight(CellArea area, CellAreaContext context, Widget widget, c_int minimum_height, c_int natural_height);
	[LinkName("gtk_cell_area_get_preferred_height_for_width")]
	public static extern void CellAreaGetPreferredHeightForWidth(CellArea area, CellAreaContext context, Widget widget, c_int width, c_int minimum_height, c_int natural_height);
	[LinkName("gtk_cell_area_get_preferred_width")]
	public static extern void CellAreaGetPreferredWidth(CellArea area, CellAreaContext context, Widget widget, c_int minimum_width, c_int natural_width);
	[LinkName("gtk_cell_area_get_preferred_width_for_height")]
	public static extern void CellAreaGetPreferredWidthForHeight(CellArea area, CellAreaContext context, Widget widget, c_int height, c_int minimum_width, c_int natural_width);
	[LinkName("gtk_cell_area_get_request_mode")]
	public static extern SizeRequestMode CellAreaGetRequestMode(CellArea area);
	[LinkName("gtk_cell_area_has_renderer")]
	public static extern c_int CellAreaHasRenderer(CellArea area, CellRenderer renderer);
	[LinkName("gtk_cell_area_inner_cell_area")]
	public static extern void CellAreaInnerCellArea(CellArea area, Widget widget, Gdk.Rectangle cell_area, Gdk.Rectangle inner_area);
	[LinkName("gtk_cell_area_is_activatable")]
	public static extern c_int CellAreaIsActivatable(CellArea area);
	[LinkName("gtk_cell_area_is_focus_sibling")]
	public static extern c_int CellAreaIsFocusSibling(CellArea area, CellRenderer renderer, CellRenderer sibling);
	[LinkName("gtk_cell_area_remove")]
	public static extern void CellAreaRemove(CellArea area, CellRenderer renderer);
	[LinkName("gtk_cell_area_remove_focus_sibling")]
	public static extern void CellAreaRemoveFocusSibling(CellArea area, CellRenderer renderer, CellRenderer sibling);
	[LinkName("gtk_cell_area_request_renderer")]
	public static extern void CellAreaRequestRenderer(CellArea area, CellRenderer renderer, Orientation orientation, Widget widget, c_int for_size, c_int minimum_size, c_int natural_size);
	[LinkName("gtk_cell_area_set_focus_cell")]
	public static extern void CellAreaSetFocusCell(CellArea area, CellRenderer renderer);
	[LinkName("gtk_cell_area_snapshot")]
	public static extern void CellAreaSnapshot(CellArea area, CellAreaContext context, Widget widget, Snapshot snapshot, Gdk.Rectangle background_area, Gdk.Rectangle cell_area, CellRendererState flags, c_int paint_focus);
	[LinkName("gtk_cell_area_stop_editing")]
	public static extern void CellAreaStopEditing(CellArea area, c_int canceled);
	[CRepr]
	public struct CellAreaBox;
	[LinkName("gtk_cell_area_box_new")]
	public static extern CellArea* CellAreaBoxNew();
	[LinkName("gtk_cell_area_box_get_spacing")]
	public static extern c_int CellAreaBoxGetSpacing(CellAreaBox box_);
	[LinkName("gtk_cell_area_box_pack_end")]
	public static extern void CellAreaBoxPackEnd(CellAreaBox box_, CellRenderer renderer, c_int expand, c_int align, c_int fixed_);
	[LinkName("gtk_cell_area_box_pack_start")]
	public static extern void CellAreaBoxPackStart(CellAreaBox box_, CellRenderer renderer, c_int expand, c_int align, c_int fixed_);
	[LinkName("gtk_cell_area_box_set_spacing")]
	public static extern void CellAreaBoxSetSpacing(CellAreaBox box_, c_int spacing);
	[CRepr]
	public struct CellAreaClass
	{
		GObject.InitiallyUnownedClass parent_class;
	}
	[CRepr]
	public struct CellAreaContext;
	[LinkName("gtk_cell_area_context_allocate")]
	public static extern void CellAreaContextAllocate(CellAreaContext context, c_int width, c_int height);
	[LinkName("gtk_cell_area_context_get_allocation")]
	public static extern void CellAreaContextGetAllocation(CellAreaContext context, c_int width, c_int height);
	[LinkName("gtk_cell_area_context_get_area")]
	public static extern CellArea* CellAreaContextGetArea(CellAreaContext context);
	[LinkName("gtk_cell_area_context_get_preferred_height")]
	public static extern void CellAreaContextGetPreferredHeight(CellAreaContext context, c_int minimum_height, c_int natural_height);
	[LinkName("gtk_cell_area_context_get_preferred_height_for_width")]
	public static extern void CellAreaContextGetPreferredHeightForWidth(CellAreaContext context, c_int width, c_int minimum_height, c_int natural_height);
	[LinkName("gtk_cell_area_context_get_preferred_width")]
	public static extern void CellAreaContextGetPreferredWidth(CellAreaContext context, c_int minimum_width, c_int natural_width);
	[LinkName("gtk_cell_area_context_get_preferred_width_for_height")]
	public static extern void CellAreaContextGetPreferredWidthForHeight(CellAreaContext context, c_int height, c_int minimum_width, c_int natural_width);
	[LinkName("gtk_cell_area_context_push_preferred_height")]
	public static extern void CellAreaContextPushPreferredHeight(CellAreaContext context, c_int minimum_height, c_int natural_height);
	[LinkName("gtk_cell_area_context_push_preferred_width")]
	public static extern void CellAreaContextPushPreferredWidth(CellAreaContext context, c_int minimum_width, c_int natural_width);
	[LinkName("gtk_cell_area_context_reset")]
	public static extern void CellAreaContextReset(CellAreaContext context);
	[CRepr]
	public struct CellAreaContextClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct CellAreaContextPrivate
	{
	}
	public function c_int CellCallback(CellRenderer renderer, void* data);
	[CRepr]
	public struct CellEditable
	{
		public function void(CellEditable cell_editable) editing_done;

		public function void(CellEditable cell_editable) remove_widget;

		public function void(CellEditable cell_editable, Gdk.Event event) start_editing;
	}
	[CRepr]
	public struct CellEditableIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct CellLayout
	{
		public function void(CellLayout cell_layout, CellRenderer cell, char8* attribute, c_int column) add_attribute;

		public function void(CellLayout cell_layout) clear;

		public function void(CellLayout cell_layout, CellRenderer cell) clear_attributes;

		public function CellArea(CellLayout cell_layout) get_area;

		public function GLib.List(CellLayout cell_layout) get_cells;

		public function void(CellLayout cell_layout, CellRenderer cell, c_int expand) pack_end;

		public function void(CellLayout cell_layout, CellRenderer cell, c_int expand) pack_start;

		public function void(CellLayout cell_layout, CellRenderer cell, c_int position) reorder;

		public function void(CellLayout cell_layout, CellRenderer cell, CellLayoutDataFunc func, void* func_data, GLib.DestroyNotify destroy) set_cell_data_func;
	}
	public function void CellLayoutDataFunc(CellLayout cell_layout, CellRenderer cell, TreeModel tree_model, TreeIter iter, void* data);
	[CRepr]
	public struct CellLayoutIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct CellRenderer;
	[LinkName("gtk_cell_renderer_activate")]
	public static extern c_int CellRendererActivate(CellRenderer cell, Gdk.Event event, Widget widget, char8* path, Gdk.Rectangle background_area, Gdk.Rectangle cell_area, CellRendererState flags);
	[LinkName("gtk_cell_renderer_get_aligned_area")]
	public static extern void CellRendererGetAlignedArea(CellRenderer cell, Widget widget, CellRendererState flags, Gdk.Rectangle cell_area, Gdk.Rectangle aligned_area);
	[LinkName("gtk_cell_renderer_get_alignment")]
	public static extern void CellRendererGetAlignment(CellRenderer cell, float xalign, float yalign);
	[LinkName("gtk_cell_renderer_get_fixed_size")]
	public static extern void CellRendererGetFixedSize(CellRenderer cell, c_int width, c_int height);
	[LinkName("gtk_cell_renderer_get_is_expanded")]
	public static extern c_int CellRendererGetIsExpanded(CellRenderer cell);
	[LinkName("gtk_cell_renderer_get_is_expander")]
	public static extern c_int CellRendererGetIsExpander(CellRenderer cell);
	[LinkName("gtk_cell_renderer_get_padding")]
	public static extern void CellRendererGetPadding(CellRenderer cell, c_int xpad, c_int ypad);
	[LinkName("gtk_cell_renderer_get_preferred_height")]
	public static extern void CellRendererGetPreferredHeight(CellRenderer cell, Widget widget, c_int minimum_size, c_int natural_size);
	[LinkName("gtk_cell_renderer_get_preferred_height_for_width")]
	public static extern void CellRendererGetPreferredHeightForWidth(CellRenderer cell, Widget widget, c_int width, c_int minimum_height, c_int natural_height);
	[LinkName("gtk_cell_renderer_get_preferred_size")]
	public static extern void CellRendererGetPreferredSize(CellRenderer cell, Widget widget, Requisition minimum_size, Requisition natural_size);
	[LinkName("gtk_cell_renderer_get_preferred_width")]
	public static extern void CellRendererGetPreferredWidth(CellRenderer cell, Widget widget, c_int minimum_size, c_int natural_size);
	[LinkName("gtk_cell_renderer_get_preferred_width_for_height")]
	public static extern void CellRendererGetPreferredWidthForHeight(CellRenderer cell, Widget widget, c_int height, c_int minimum_width, c_int natural_width);
	[LinkName("gtk_cell_renderer_get_request_mode")]
	public static extern SizeRequestMode CellRendererGetRequestMode(CellRenderer cell);
	[LinkName("gtk_cell_renderer_get_sensitive")]
	public static extern c_int CellRendererGetSensitive(CellRenderer cell);
	[LinkName("gtk_cell_renderer_get_state")]
	public static extern StateFlags CellRendererGetState(CellRenderer cell, Widget widget, CellRendererState cell_state);
	[LinkName("gtk_cell_renderer_get_visible")]
	public static extern c_int CellRendererGetVisible(CellRenderer cell);
	[LinkName("gtk_cell_renderer_is_activatable")]
	public static extern c_int CellRendererIsActivatable(CellRenderer cell);
	[LinkName("gtk_cell_renderer_set_alignment")]
	public static extern void CellRendererSetAlignment(CellRenderer cell, float xalign, float yalign);
	[LinkName("gtk_cell_renderer_set_fixed_size")]
	public static extern void CellRendererSetFixedSize(CellRenderer cell, c_int width, c_int height);
	[LinkName("gtk_cell_renderer_set_is_expanded")]
	public static extern void CellRendererSetIsExpanded(CellRenderer cell, c_int is_expanded);
	[LinkName("gtk_cell_renderer_set_is_expander")]
	public static extern void CellRendererSetIsExpander(CellRenderer cell, c_int is_expander);
	[LinkName("gtk_cell_renderer_set_padding")]
	public static extern void CellRendererSetPadding(CellRenderer cell, c_int xpad, c_int ypad);
	[LinkName("gtk_cell_renderer_set_sensitive")]
	public static extern void CellRendererSetSensitive(CellRenderer cell, c_int sensitive);
	[LinkName("gtk_cell_renderer_set_visible")]
	public static extern void CellRendererSetVisible(CellRenderer cell, c_int visible);
	[LinkName("gtk_cell_renderer_snapshot")]
	public static extern void CellRendererSnapshot(CellRenderer cell, Snapshot snapshot, Widget widget, Gdk.Rectangle background_area, Gdk.Rectangle cell_area, CellRendererState flags);
	[LinkName("gtk_cell_renderer_start_editing")]
	public static extern CellEditable* CellRendererStartEditing(CellRenderer cell, Gdk.Event event, Widget widget, char8* path, Gdk.Rectangle background_area, Gdk.Rectangle cell_area, CellRendererState flags);
	[LinkName("gtk_cell_renderer_stop_editing")]
	public static extern void CellRendererStopEditing(CellRenderer cell, c_int canceled);
	[CRepr]
	public struct CellRendererAccel;
	[LinkName("gtk_cell_renderer_accel_new")]
	public static extern CellRenderer* CellRendererAccelNew();
	public enum CellRendererAccelMode : c_int
	{
		gtk = 0,
		other = 1
	}
	[CRepr]
	public struct CellRendererClass
	{
		GObject.InitiallyUnownedClass parent_class;
	}
	[CRepr]
	public struct CellRendererClassPrivate
	{
	}
	[CRepr]
	public struct CellRendererCombo;
	[LinkName("gtk_cell_renderer_combo_new")]
	public static extern CellRenderer* CellRendererComboNew();
	public enum CellRendererMode : c_int
	{
		inert = 0,
		activatable = 1,
		editable = 2
	}
	[CRepr]
	public struct CellRendererPixbuf;
	[LinkName("gtk_cell_renderer_pixbuf_new")]
	public static extern CellRenderer* CellRendererPixbufNew();
	[CRepr]
	public struct CellRendererPrivate
	{
	}
	[CRepr]
	public struct CellRendererProgress;
	[LinkName("gtk_cell_renderer_progress_new")]
	public static extern CellRenderer* CellRendererProgressNew();
	[CRepr]
	public struct CellRendererSpin;
	[LinkName("gtk_cell_renderer_spin_new")]
	public static extern CellRenderer* CellRendererSpinNew();
	[CRepr]
	public struct CellRendererSpinner;
	[LinkName("gtk_cell_renderer_spinner_new")]
	public static extern CellRenderer* CellRendererSpinnerNew();
	[CRepr]
	public enum CellRendererState : int
	{
		selected = 1,
		prelit = 2,
		insensitive = 4,
		sorted = 8,
		focused = 16,
		expandable = 32,
		expanded = 64
	}
	[CRepr]
	public struct CellRendererText;
	[LinkName("gtk_cell_renderer_text_new")]
	public static extern CellRenderer* CellRendererTextNew();
	[LinkName("gtk_cell_renderer_text_set_fixed_height_from_font")]
	public static extern void CellRendererTextSetFixedHeightFromFont(CellRendererText renderer, c_int number_of_rows);
	[CRepr]
	public struct CellRendererTextClass
	{
		CellRendererClass parent_class;
	}
	[CRepr]
	public struct CellRendererToggle;
	[LinkName("gtk_cell_renderer_toggle_new")]
	public static extern CellRenderer* CellRendererToggleNew();
	[LinkName("gtk_cell_renderer_toggle_get_activatable")]
	public static extern c_int CellRendererToggleGetActivatable(CellRendererToggle toggle);
	[LinkName("gtk_cell_renderer_toggle_get_active")]
	public static extern c_int CellRendererToggleGetActive(CellRendererToggle toggle);
	[LinkName("gtk_cell_renderer_toggle_get_radio")]
	public static extern c_int CellRendererToggleGetRadio(CellRendererToggle toggle);
	[LinkName("gtk_cell_renderer_toggle_set_activatable")]
	public static extern void CellRendererToggleSetActivatable(CellRendererToggle toggle, c_int setting);
	[LinkName("gtk_cell_renderer_toggle_set_active")]
	public static extern void CellRendererToggleSetActive(CellRendererToggle toggle, c_int setting);
	[LinkName("gtk_cell_renderer_toggle_set_radio")]
	public static extern void CellRendererToggleSetRadio(CellRendererToggle toggle, c_int radio);
	[CRepr]
	public struct CellView;
	[LinkName("gtk_cell_view_new")]
	public static extern Widget* CellViewNew();
	[LinkName("gtk_cell_view_new_with_context")]
	public static extern Widget* CellViewNewWithContext(CellArea area, CellAreaContext context);
	[LinkName("gtk_cell_view_new_with_markup")]
	public static extern Widget* CellViewNewWithMarkup(char8* markup);
	[LinkName("gtk_cell_view_new_with_text")]
	public static extern Widget* CellViewNewWithText(char8* text);
	[LinkName("gtk_cell_view_new_with_texture")]
	public static extern Widget* CellViewNewWithTexture(Gdk.Texture texture);
	[LinkName("gtk_cell_view_get_displayed_row")]
	public static extern TreePath* CellViewGetDisplayedRow(CellView cell_view);
	[LinkName("gtk_cell_view_get_draw_sensitive")]
	public static extern c_int CellViewGetDrawSensitive(CellView cell_view);
	[LinkName("gtk_cell_view_get_fit_model")]
	public static extern c_int CellViewGetFitModel(CellView cell_view);
	[LinkName("gtk_cell_view_get_model")]
	public static extern TreeModel* CellViewGetModel(CellView cell_view);
	[LinkName("gtk_cell_view_set_displayed_row")]
	public static extern void CellViewSetDisplayedRow(CellView cell_view, TreePath path);
	[LinkName("gtk_cell_view_set_draw_sensitive")]
	public static extern void CellViewSetDrawSensitive(CellView cell_view, c_int draw_sensitive);
	[LinkName("gtk_cell_view_set_fit_model")]
	public static extern void CellViewSetFitModel(CellView cell_view, c_int fit_model);
	[LinkName("gtk_cell_view_set_model")]
	public static extern void CellViewSetModel(CellView cell_view, TreeModel model);
	[CRepr]
	public struct CenterBox;
	[LinkName("gtk_center_box_new")]
	public static extern Widget* CenterBoxNew();
	[LinkName("gtk_center_box_get_baseline_position")]
	public static extern BaselinePosition CenterBoxGetBaselinePosition(CenterBox self);
	[LinkName("gtk_center_box_get_center_widget")]
	public static extern Widget* CenterBoxGetCenterWidget(CenterBox self);
	[LinkName("gtk_center_box_get_end_widget")]
	public static extern Widget* CenterBoxGetEndWidget(CenterBox self);
	[LinkName("gtk_center_box_get_shrink_center_last")]
	public static extern c_int CenterBoxGetShrinkCenterLast(CenterBox self);
	[LinkName("gtk_center_box_get_start_widget")]
	public static extern Widget* CenterBoxGetStartWidget(CenterBox self);
	[LinkName("gtk_center_box_set_baseline_position")]
	public static extern void CenterBoxSetBaselinePosition(CenterBox self, BaselinePosition position);
	[LinkName("gtk_center_box_set_center_widget")]
	public static extern void CenterBoxSetCenterWidget(CenterBox self, Widget child);
	[LinkName("gtk_center_box_set_end_widget")]
	public static extern void CenterBoxSetEndWidget(CenterBox self, Widget child);
	[LinkName("gtk_center_box_set_shrink_center_last")]
	public static extern void CenterBoxSetShrinkCenterLast(CenterBox self, c_int shrink_center_last);
	[LinkName("gtk_center_box_set_start_widget")]
	public static extern void CenterBoxSetStartWidget(CenterBox self, Widget child);
	[CRepr]
	public struct CenterBoxClass
	{
	}
	[CRepr]
	public struct CenterLayout;
	[LinkName("gtk_center_layout_new")]
	public static extern LayoutManager* CenterLayoutNew();
	[LinkName("gtk_center_layout_get_baseline_position")]
	public static extern BaselinePosition CenterLayoutGetBaselinePosition(CenterLayout self);
	[LinkName("gtk_center_layout_get_center_widget")]
	public static extern Widget* CenterLayoutGetCenterWidget(CenterLayout self);
	[LinkName("gtk_center_layout_get_end_widget")]
	public static extern Widget* CenterLayoutGetEndWidget(CenterLayout self);
	[LinkName("gtk_center_layout_get_orientation")]
	public static extern Orientation CenterLayoutGetOrientation(CenterLayout self);
	[LinkName("gtk_center_layout_get_shrink_center_last")]
	public static extern c_int CenterLayoutGetShrinkCenterLast(CenterLayout self);
	[LinkName("gtk_center_layout_get_start_widget")]
	public static extern Widget* CenterLayoutGetStartWidget(CenterLayout self);
	[LinkName("gtk_center_layout_set_baseline_position")]
	public static extern void CenterLayoutSetBaselinePosition(CenterLayout self, BaselinePosition baseline_position);
	[LinkName("gtk_center_layout_set_center_widget")]
	public static extern void CenterLayoutSetCenterWidget(CenterLayout self, Widget widget);
	[LinkName("gtk_center_layout_set_end_widget")]
	public static extern void CenterLayoutSetEndWidget(CenterLayout self, Widget widget);
	[LinkName("gtk_center_layout_set_orientation")]
	public static extern void CenterLayoutSetOrientation(CenterLayout self, Orientation orientation);
	[LinkName("gtk_center_layout_set_shrink_center_last")]
	public static extern void CenterLayoutSetShrinkCenterLast(CenterLayout self, c_int shrink_center_last);
	[LinkName("gtk_center_layout_set_start_widget")]
	public static extern void CenterLayoutSetStartWidget(CenterLayout self, Widget widget);
	[CRepr]
	public struct CenterLayoutClass
	{
		LayoutManagerClass parent_class;
	}
	[CRepr]
	public struct CheckButton;
	[LinkName("gtk_check_button_new")]
	public static extern Widget* CheckButtonNew();
	[LinkName("gtk_check_button_new_with_label")]
	public static extern Widget* CheckButtonNewWithLabel(char8* label);
	[LinkName("gtk_check_button_new_with_mnemonic")]
	public static extern Widget* CheckButtonNewWithMnemonic(char8* label);
	[LinkName("gtk_check_button_get_active")]
	public static extern c_int CheckButtonGetActive(CheckButton self);
	[LinkName("gtk_check_button_get_child")]
	public static extern Widget* CheckButtonGetChild(CheckButton button);
	[LinkName("gtk_check_button_get_inconsistent")]
	public static extern c_int CheckButtonGetInconsistent(CheckButton check_button);
	[LinkName("gtk_check_button_get_label")]
	public static extern char8** CheckButtonGetLabel(CheckButton self);
	[LinkName("gtk_check_button_get_use_underline")]
	public static extern c_int CheckButtonGetUseUnderline(CheckButton self);
	[LinkName("gtk_check_button_set_active")]
	public static extern void CheckButtonSetActive(CheckButton self, c_int setting);
	[LinkName("gtk_check_button_set_child")]
	public static extern void CheckButtonSetChild(CheckButton button, Widget child);
	[LinkName("gtk_check_button_set_group")]
	public static extern void CheckButtonSetGroup(CheckButton self, CheckButton group);
	[LinkName("gtk_check_button_set_inconsistent")]
	public static extern void CheckButtonSetInconsistent(CheckButton check_button, c_int inconsistent);
	[LinkName("gtk_check_button_set_label")]
	public static extern void CheckButtonSetLabel(CheckButton self, char8* label);
	[LinkName("gtk_check_button_set_use_underline")]
	public static extern void CheckButtonSetUseUnderline(CheckButton self, c_int setting);
	[CRepr]
	public struct CheckButtonClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct ClosureExpression;
	[LinkName("gtk_closure_expression_new")]
	public static extern ClosureExpression* ClosureExpressionNew(GLib.Type value_type, GObject.Closure closure, c_uint n_params);
	public enum Collation : c_int
	{
		none = 0,
		unicode = 1,
		filename = 2
	}
	[CRepr]
	public struct ColorButton;
	[LinkName("gtk_color_button_new")]
	public static extern Widget* ColorButtonNew();
	[LinkName("gtk_color_button_new_with_rgba")]
	public static extern Widget* ColorButtonNewWithRgba(Gdk.RGBA rgba);
	[LinkName("gtk_color_button_get_modal")]
	public static extern c_int ColorButtonGetModal(ColorButton button);
	[LinkName("gtk_color_button_get_title")]
	public static extern char8** ColorButtonGetTitle(ColorButton button);
	[LinkName("gtk_color_button_set_modal")]
	public static extern void ColorButtonSetModal(ColorButton button, c_int modal);
	[LinkName("gtk_color_button_set_title")]
	public static extern void ColorButtonSetTitle(ColorButton button, char8* title);
	[CRepr]
	public struct ColorChooser
	{
		public function void(ColorChooser chooser, Orientation orientation, c_int colors_per_line, c_int n_colors) add_palette;

		public function void(ColorChooser chooser, Gdk.RGBA color) color_activated;

		public function void(ColorChooser chooser, Gdk.RGBA color) get_rgba;

		public function void(ColorChooser chooser, Gdk.RGBA color) set_rgba;
	}
	[CRepr]
	public struct ColorChooserDialog;
	[LinkName("gtk_color_chooser_dialog_new")]
	public static extern Widget* ColorChooserDialogNew(char8* title, Window parent);
	[CRepr]
	public struct ColorChooserInterface
	{
		GObject.TypeInterface base_interface;
	}
	[CRepr]
	public struct ColorChooserWidget;
	[LinkName("gtk_color_chooser_widget_new")]
	public static extern Widget* ColorChooserWidgetNew();
	[CRepr]
	public struct ColorDialog;
	[LinkName("gtk_color_dialog_new")]
	public static extern ColorDialog* ColorDialogNew();
	[LinkName("gtk_color_dialog_choose_rgba")]
	public static extern void ColorDialogChooseRgba(ColorDialog self, Window parent, Gdk.RGBA initial_color, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_color_dialog_choose_rgba_finish")]
	public static extern Gdk.RGBA* ColorDialogChooseRgbaFinish(ColorDialog self, Gio.AsyncResult result);
	[LinkName("gtk_color_dialog_get_modal")]
	public static extern c_int ColorDialogGetModal(ColorDialog self);
	[LinkName("gtk_color_dialog_get_title")]
	public static extern char8** ColorDialogGetTitle(ColorDialog self);
	[LinkName("gtk_color_dialog_get_with_alpha")]
	public static extern c_int ColorDialogGetWithAlpha(ColorDialog self);
	[LinkName("gtk_color_dialog_set_modal")]
	public static extern void ColorDialogSetModal(ColorDialog self, c_int modal);
	[LinkName("gtk_color_dialog_set_title")]
	public static extern void ColorDialogSetTitle(ColorDialog self, char8* title);
	[LinkName("gtk_color_dialog_set_with_alpha")]
	public static extern void ColorDialogSetWithAlpha(ColorDialog self, c_int with_alpha);
	[CRepr]
	public struct ColorDialogButton;
	[LinkName("gtk_color_dialog_button_new")]
	public static extern Widget* ColorDialogButtonNew(ColorDialog dialog);
	[LinkName("gtk_color_dialog_button_get_dialog")]
	public static extern ColorDialog* ColorDialogButtonGetDialog(ColorDialogButton self);
	[LinkName("gtk_color_dialog_button_get_rgba")]
	public static extern Gdk.RGBA* ColorDialogButtonGetRgba(ColorDialogButton self);
	[LinkName("gtk_color_dialog_button_set_dialog")]
	public static extern void ColorDialogButtonSetDialog(ColorDialogButton self, ColorDialog dialog);
	[LinkName("gtk_color_dialog_button_set_rgba")]
	public static extern void ColorDialogButtonSetRgba(ColorDialogButton self, Gdk.RGBA color);
	[CRepr]
	public struct ColorDialogButtonClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct ColorDialogClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ColumnView;
	[LinkName("gtk_column_view_new")]
	public static extern Widget* ColumnViewNew(SelectionModel model);
	[LinkName("gtk_column_view_append_column")]
	public static extern void ColumnViewAppendColumn(ColumnView self, ColumnViewColumn column);
	[LinkName("gtk_column_view_get_columns")]
	public static extern Gio.ListModel* ColumnViewGetColumns(ColumnView self);
	[LinkName("gtk_column_view_get_enable_rubberband")]
	public static extern c_int ColumnViewGetEnableRubberband(ColumnView self);
	[LinkName("gtk_column_view_get_header_factory")]
	public static extern ListItemFactory* ColumnViewGetHeaderFactory(ColumnView self);
	[LinkName("gtk_column_view_get_model")]
	public static extern SelectionModel* ColumnViewGetModel(ColumnView self);
	[LinkName("gtk_column_view_get_reorderable")]
	public static extern c_int ColumnViewGetReorderable(ColumnView self);
	[LinkName("gtk_column_view_get_row_factory")]
	public static extern ListItemFactory* ColumnViewGetRowFactory(ColumnView self);
	[LinkName("gtk_column_view_get_show_column_separators")]
	public static extern c_int ColumnViewGetShowColumnSeparators(ColumnView self);
	[LinkName("gtk_column_view_get_show_row_separators")]
	public static extern c_int ColumnViewGetShowRowSeparators(ColumnView self);
	[LinkName("gtk_column_view_get_single_click_activate")]
	public static extern c_int ColumnViewGetSingleClickActivate(ColumnView self);
	[LinkName("gtk_column_view_get_sorter")]
	public static extern Sorter* ColumnViewGetSorter(ColumnView self);
	[LinkName("gtk_column_view_get_tab_behavior")]
	public static extern ListTabBehavior ColumnViewGetTabBehavior(ColumnView self);
	[LinkName("gtk_column_view_insert_column")]
	public static extern void ColumnViewInsertColumn(ColumnView self, c_uint position, ColumnViewColumn column);
	[LinkName("gtk_column_view_remove_column")]
	public static extern void ColumnViewRemoveColumn(ColumnView self, ColumnViewColumn column);
	[LinkName("gtk_column_view_set_enable_rubberband")]
	public static extern void ColumnViewSetEnableRubberband(ColumnView self, c_int enable_rubberband);
	[LinkName("gtk_column_view_set_header_factory")]
	public static extern void ColumnViewSetHeaderFactory(ColumnView self, ListItemFactory factory);
	[LinkName("gtk_column_view_set_model")]
	public static extern void ColumnViewSetModel(ColumnView self, SelectionModel model);
	[LinkName("gtk_column_view_set_reorderable")]
	public static extern void ColumnViewSetReorderable(ColumnView self, c_int reorderable);
	[LinkName("gtk_column_view_set_row_factory")]
	public static extern void ColumnViewSetRowFactory(ColumnView self, ListItemFactory factory);
	[LinkName("gtk_column_view_set_show_column_separators")]
	public static extern void ColumnViewSetShowColumnSeparators(ColumnView self, c_int show_column_separators);
	[LinkName("gtk_column_view_set_show_row_separators")]
	public static extern void ColumnViewSetShowRowSeparators(ColumnView self, c_int show_row_separators);
	[LinkName("gtk_column_view_set_single_click_activate")]
	public static extern void ColumnViewSetSingleClickActivate(ColumnView self, c_int single_click_activate);
	[LinkName("gtk_column_view_set_tab_behavior")]
	public static extern void ColumnViewSetTabBehavior(ColumnView self, ListTabBehavior tab_behavior);
	[LinkName("gtk_column_view_sort_by_column")]
	public static extern void ColumnViewSortByColumn(ColumnView self, ColumnViewColumn column, SortType direction);
	[CRepr]
	public struct ColumnViewCell;
	[LinkName("gtk_column_view_cell_get_child")]
	public static extern Widget* ColumnViewCellGetChild(ColumnViewCell self);
	[LinkName("gtk_column_view_cell_get_focusable")]
	public static extern c_int ColumnViewCellGetFocusable(ColumnViewCell self);
	[LinkName("gtk_column_view_cell_get_item")]
	public static extern GObject.Object ColumnViewCellGetItem(ColumnViewCell self);
	[LinkName("gtk_column_view_cell_get_position")]
	public static extern c_uint ColumnViewCellGetPosition(ColumnViewCell self);
	[LinkName("gtk_column_view_cell_get_selected")]
	public static extern c_int ColumnViewCellGetSelected(ColumnViewCell self);
	[LinkName("gtk_column_view_cell_set_child")]
	public static extern void ColumnViewCellSetChild(ColumnViewCell self, Widget child);
	[LinkName("gtk_column_view_cell_set_focusable")]
	public static extern void ColumnViewCellSetFocusable(ColumnViewCell self, c_int focusable);
	[CRepr]
	public struct ColumnViewCellClass
	{
	}
	[CRepr]
	public struct ColumnViewClass
	{
	}
	[CRepr]
	public struct ColumnViewColumn;
	[LinkName("gtk_column_view_column_new")]
	public static extern ColumnViewColumn* ColumnViewColumnNew(char8* title, ListItemFactory factory);
	[LinkName("gtk_column_view_column_get_column_view")]
	public static extern ColumnView* ColumnViewColumnGetColumnView(ColumnViewColumn self);
	[LinkName("gtk_column_view_column_get_expand")]
	public static extern c_int ColumnViewColumnGetExpand(ColumnViewColumn self);
	[LinkName("gtk_column_view_column_get_factory")]
	public static extern ListItemFactory* ColumnViewColumnGetFactory(ColumnViewColumn self);
	[LinkName("gtk_column_view_column_get_fixed_width")]
	public static extern c_int ColumnViewColumnGetFixedWidth(ColumnViewColumn self);
	[LinkName("gtk_column_view_column_get_header_menu")]
	public static extern Gio.MenuModel* ColumnViewColumnGetHeaderMenu(ColumnViewColumn self);
	[LinkName("gtk_column_view_column_get_id")]
	public static extern char8** ColumnViewColumnGetId(ColumnViewColumn self);
	[LinkName("gtk_column_view_column_get_resizable")]
	public static extern c_int ColumnViewColumnGetResizable(ColumnViewColumn self);
	[LinkName("gtk_column_view_column_get_sorter")]
	public static extern Sorter* ColumnViewColumnGetSorter(ColumnViewColumn self);
	[LinkName("gtk_column_view_column_get_title")]
	public static extern char8** ColumnViewColumnGetTitle(ColumnViewColumn self);
	[LinkName("gtk_column_view_column_get_visible")]
	public static extern c_int ColumnViewColumnGetVisible(ColumnViewColumn self);
	[LinkName("gtk_column_view_column_set_expand")]
	public static extern void ColumnViewColumnSetExpand(ColumnViewColumn self, c_int expand);
	[LinkName("gtk_column_view_column_set_factory")]
	public static extern void ColumnViewColumnSetFactory(ColumnViewColumn self, ListItemFactory factory);
	[LinkName("gtk_column_view_column_set_fixed_width")]
	public static extern void ColumnViewColumnSetFixedWidth(ColumnViewColumn self, c_int fixed_width);
	[LinkName("gtk_column_view_column_set_header_menu")]
	public static extern void ColumnViewColumnSetHeaderMenu(ColumnViewColumn self, Gio.MenuModel menu);
	[LinkName("gtk_column_view_column_set_id")]
	public static extern void ColumnViewColumnSetId(ColumnViewColumn self, char8* id);
	[LinkName("gtk_column_view_column_set_resizable")]
	public static extern void ColumnViewColumnSetResizable(ColumnViewColumn self, c_int resizable);
	[LinkName("gtk_column_view_column_set_sorter")]
	public static extern void ColumnViewColumnSetSorter(ColumnViewColumn self, Sorter sorter);
	[LinkName("gtk_column_view_column_set_title")]
	public static extern void ColumnViewColumnSetTitle(ColumnViewColumn self, char8* title);
	[LinkName("gtk_column_view_column_set_visible")]
	public static extern void ColumnViewColumnSetVisible(ColumnViewColumn self, c_int visible);
	[CRepr]
	public struct ColumnViewColumnClass
	{
	}
	[CRepr]
	public struct ColumnViewRow;
	[LinkName("gtk_column_view_row_get_activatable")]
	public static extern c_int ColumnViewRowGetActivatable(ColumnViewRow self);
	[LinkName("gtk_column_view_row_get_focusable")]
	public static extern c_int ColumnViewRowGetFocusable(ColumnViewRow self);
	[LinkName("gtk_column_view_row_get_item")]
	public static extern GObject.Object ColumnViewRowGetItem(ColumnViewRow self);
	[LinkName("gtk_column_view_row_get_position")]
	public static extern c_uint ColumnViewRowGetPosition(ColumnViewRow self);
	[LinkName("gtk_column_view_row_get_selectable")]
	public static extern c_int ColumnViewRowGetSelectable(ColumnViewRow self);
	[LinkName("gtk_column_view_row_get_selected")]
	public static extern c_int ColumnViewRowGetSelected(ColumnViewRow self);
	[LinkName("gtk_column_view_row_set_activatable")]
	public static extern void ColumnViewRowSetActivatable(ColumnViewRow self, c_int activatable);
	[LinkName("gtk_column_view_row_set_focusable")]
	public static extern void ColumnViewRowSetFocusable(ColumnViewRow self, c_int focusable);
	[LinkName("gtk_column_view_row_set_selectable")]
	public static extern void ColumnViewRowSetSelectable(ColumnViewRow self, c_int selectable);
	[CRepr]
	public struct ColumnViewRowClass
	{
	}
	[CRepr]
	public struct ColumnViewSorter;
	[LinkName("gtk_column_view_sorter_get_n_sort_columns")]
	public static extern c_uint ColumnViewSorterGetNSortColumns(ColumnViewSorter self);
	[LinkName("gtk_column_view_sorter_get_nth_sort_column")]
	public static extern ColumnViewColumn* ColumnViewSorterGetNthSortColumn(ColumnViewSorter self, c_uint position, SortType sort_order);
	[LinkName("gtk_column_view_sorter_get_primary_sort_column")]
	public static extern ColumnViewColumn* ColumnViewSorterGetPrimarySortColumn(ColumnViewSorter self);
	[LinkName("gtk_column_view_sorter_get_primary_sort_order")]
	public static extern SortType ColumnViewSorterGetPrimarySortOrder(ColumnViewSorter self);
	[CRepr]
	public struct ColumnViewSorterClass
	{
		SorterClass parent_class;
	}
	[CRepr]
	public struct ComboBox;
	[LinkName("gtk_combo_box_new")]
	public static extern Widget* ComboBoxNew();
	[LinkName("gtk_combo_box_new_with_entry")]
	public static extern Widget* ComboBoxNewWithEntry();
	[LinkName("gtk_combo_box_new_with_model")]
	public static extern Widget* ComboBoxNewWithModel(TreeModel model);
	[LinkName("gtk_combo_box_new_with_model_and_entry")]
	public static extern Widget* ComboBoxNewWithModelAndEntry(TreeModel model);
	[LinkName("gtk_combo_box_get_active")]
	public static extern c_int ComboBoxGetActive(ComboBox combo_box);
	[LinkName("gtk_combo_box_get_active_id")]
	public static extern char8** ComboBoxGetActiveId(ComboBox combo_box);
	[LinkName("gtk_combo_box_get_active_iter")]
	public static extern c_int ComboBoxGetActiveIter(ComboBox combo_box, TreeIter iter);
	[LinkName("gtk_combo_box_get_button_sensitivity")]
	public static extern SensitivityType ComboBoxGetButtonSensitivity(ComboBox combo_box);
	[LinkName("gtk_combo_box_get_child")]
	public static extern Widget* ComboBoxGetChild(ComboBox combo_box);
	[LinkName("gtk_combo_box_get_entry_text_column")]
	public static extern c_int ComboBoxGetEntryTextColumn(ComboBox combo_box);
	[LinkName("gtk_combo_box_get_has_entry")]
	public static extern c_int ComboBoxGetHasEntry(ComboBox combo_box);
	[LinkName("gtk_combo_box_get_id_column")]
	public static extern c_int ComboBoxGetIdColumn(ComboBox combo_box);
	[LinkName("gtk_combo_box_get_model")]
	public static extern TreeModel* ComboBoxGetModel(ComboBox combo_box);
	[LinkName("gtk_combo_box_get_popup_fixed_width")]
	public static extern c_int ComboBoxGetPopupFixedWidth(ComboBox combo_box);
	[LinkName("gtk_combo_box_get_row_separator_func")]
	public static extern TreeViewRowSeparatorFunc ComboBoxGetRowSeparatorFunc(ComboBox combo_box);
	[LinkName("gtk_combo_box_popdown")]
	public static extern void ComboBoxPopdown(ComboBox combo_box);
	[LinkName("gtk_combo_box_popup")]
	public static extern void ComboBoxPopup(ComboBox combo_box);
	[LinkName("gtk_combo_box_popup_for_device")]
	public static extern void ComboBoxPopupForDevice(ComboBox combo_box, Gdk.Device device);
	[LinkName("gtk_combo_box_set_active")]
	public static extern void ComboBoxSetActive(ComboBox combo_box, c_int index_);
	[LinkName("gtk_combo_box_set_active_id")]
	public static extern c_int ComboBoxSetActiveId(ComboBox combo_box, char8* active_id);
	[LinkName("gtk_combo_box_set_active_iter")]
	public static extern void ComboBoxSetActiveIter(ComboBox combo_box, TreeIter iter);
	[LinkName("gtk_combo_box_set_button_sensitivity")]
	public static extern void ComboBoxSetButtonSensitivity(ComboBox combo_box, SensitivityType sensitivity);
	[LinkName("gtk_combo_box_set_child")]
	public static extern void ComboBoxSetChild(ComboBox combo_box, Widget child);
	[LinkName("gtk_combo_box_set_entry_text_column")]
	public static extern void ComboBoxSetEntryTextColumn(ComboBox combo_box, c_int text_column);
	[LinkName("gtk_combo_box_set_id_column")]
	public static extern void ComboBoxSetIdColumn(ComboBox combo_box, c_int id_column);
	[LinkName("gtk_combo_box_set_model")]
	public static extern void ComboBoxSetModel(ComboBox combo_box, TreeModel model);
	[LinkName("gtk_combo_box_set_popup_fixed_width")]
	public static extern void ComboBoxSetPopupFixedWidth(ComboBox combo_box, c_int fixed_);
	[LinkName("gtk_combo_box_set_row_separator_func")]
	public static extern void ComboBoxSetRowSeparatorFunc(ComboBox combo_box, TreeViewRowSeparatorFunc func, void* data, GLib.DestroyNotify destroy);
	[CRepr]
	public struct ComboBoxClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct ComboBoxText;
	[LinkName("gtk_combo_box_text_new")]
	public static extern Widget* ComboBoxTextNew();
	[LinkName("gtk_combo_box_text_new_with_entry")]
	public static extern Widget* ComboBoxTextNewWithEntry();
	[LinkName("gtk_combo_box_text_append")]
	public static extern void ComboBoxTextAppend(ComboBoxText combo_box, char8* id, char8* text);
	[LinkName("gtk_combo_box_text_append_text")]
	public static extern void ComboBoxTextAppendText(ComboBoxText combo_box, char8* text);
	[LinkName("gtk_combo_box_text_get_active_text")]
	public static extern char8** ComboBoxTextGetActiveText(ComboBoxText combo_box);
	[LinkName("gtk_combo_box_text_insert")]
	public static extern void ComboBoxTextInsert(ComboBoxText combo_box, c_int position, char8* id, char8* text);
	[LinkName("gtk_combo_box_text_insert_text")]
	public static extern void ComboBoxTextInsertText(ComboBoxText combo_box, c_int position, char8* text);
	[LinkName("gtk_combo_box_text_prepend")]
	public static extern void ComboBoxTextPrepend(ComboBoxText combo_box, char8* id, char8* text);
	[LinkName("gtk_combo_box_text_prepend_text")]
	public static extern void ComboBoxTextPrependText(ComboBoxText combo_box, char8* text);
	[LinkName("gtk_combo_box_text_remove")]
	public static extern void ComboBoxTextRemove(ComboBoxText combo_box, c_int position);
	[LinkName("gtk_combo_box_text_remove_all")]
	public static extern void ComboBoxTextRemoveAll(ComboBoxText combo_box);
	[CRepr]
	public struct ConstantExpression;
	[LinkName("gtk_constant_expression_new")]
	public static extern ConstantExpression* ConstantExpressionNew(GLib.Type value_type);
	[LinkName("gtk_constant_expression_new_for_value")]
	public static extern ConstantExpression* ConstantExpressionNewForValue(GObject.Value value);
	[LinkName("gtk_constant_expression_get_value")]
	public static extern GObject.Value* ConstantExpressionGetValue(ConstantExpression expression);
	[CRepr]
	public struct Constraint;
	[LinkName("gtk_constraint_new")]
	public static extern Constraint* ConstraintNew(ConstraintTarget target, ConstraintAttribute target_attribute, ConstraintRelation relation, ConstraintTarget source, ConstraintAttribute source_attribute, double multiplier, double constant, c_int strength);
	[LinkName("gtk_constraint_new_constant")]
	public static extern Constraint* ConstraintNewConstant(ConstraintTarget target, ConstraintAttribute target_attribute, ConstraintRelation relation, double constant, c_int strength);
	[LinkName("gtk_constraint_get_constant")]
	public static extern double ConstraintGetConstant(Constraint constraint);
	[LinkName("gtk_constraint_get_multiplier")]
	public static extern double ConstraintGetMultiplier(Constraint constraint);
	[LinkName("gtk_constraint_get_relation")]
	public static extern ConstraintRelation ConstraintGetRelation(Constraint constraint);
	[LinkName("gtk_constraint_get_source")]
	public static extern ConstraintTarget* ConstraintGetSource(Constraint constraint);
	[LinkName("gtk_constraint_get_source_attribute")]
	public static extern ConstraintAttribute ConstraintGetSourceAttribute(Constraint constraint);
	[LinkName("gtk_constraint_get_strength")]
	public static extern c_int ConstraintGetStrength(Constraint constraint);
	[LinkName("gtk_constraint_get_target")]
	public static extern ConstraintTarget* ConstraintGetTarget(Constraint constraint);
	[LinkName("gtk_constraint_get_target_attribute")]
	public static extern ConstraintAttribute ConstraintGetTargetAttribute(Constraint constraint);
	[LinkName("gtk_constraint_is_attached")]
	public static extern c_int ConstraintIsAttached(Constraint constraint);
	[LinkName("gtk_constraint_is_constant")]
	public static extern c_int ConstraintIsConstant(Constraint constraint);
	[LinkName("gtk_constraint_is_required")]
	public static extern c_int ConstraintIsRequired(Constraint constraint);
	public enum ConstraintAttribute : c_int
	{
		none = 0,
		left = 1,
		right = 2,
		top = 3,
		bottom = 4,
		start = 5,
		end = 6,
		width = 7,
		height = 8,
		center_x = 9,
		center_y = 10,
		baseline = 11
	}
	[CRepr]
	public struct ConstraintClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ConstraintGuide;
	[LinkName("gtk_constraint_guide_new")]
	public static extern ConstraintGuide* ConstraintGuideNew();
	[LinkName("gtk_constraint_guide_get_max_size")]
	public static extern void ConstraintGuideGetMaxSize(ConstraintGuide guide, c_int width, c_int height);
	[LinkName("gtk_constraint_guide_get_min_size")]
	public static extern void ConstraintGuideGetMinSize(ConstraintGuide guide, c_int width, c_int height);
	[LinkName("gtk_constraint_guide_get_name")]
	public static extern char8** ConstraintGuideGetName(ConstraintGuide guide);
	[LinkName("gtk_constraint_guide_get_nat_size")]
	public static extern void ConstraintGuideGetNatSize(ConstraintGuide guide, c_int width, c_int height);
	[LinkName("gtk_constraint_guide_get_strength")]
	public static extern ConstraintStrength ConstraintGuideGetStrength(ConstraintGuide guide);
	[LinkName("gtk_constraint_guide_set_max_size")]
	public static extern void ConstraintGuideSetMaxSize(ConstraintGuide guide, c_int width, c_int height);
	[LinkName("gtk_constraint_guide_set_min_size")]
	public static extern void ConstraintGuideSetMinSize(ConstraintGuide guide, c_int width, c_int height);
	[LinkName("gtk_constraint_guide_set_name")]
	public static extern void ConstraintGuideSetName(ConstraintGuide guide, char8* name);
	[LinkName("gtk_constraint_guide_set_nat_size")]
	public static extern void ConstraintGuideSetNatSize(ConstraintGuide guide, c_int width, c_int height);
	[LinkName("gtk_constraint_guide_set_strength")]
	public static extern void ConstraintGuideSetStrength(ConstraintGuide guide, ConstraintStrength strength);
	[CRepr]
	public struct ConstraintGuideClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ConstraintLayout;
	[LinkName("gtk_constraint_layout_new")]
	public static extern LayoutManager* ConstraintLayoutNew();
	[LinkName("gtk_constraint_layout_add_constraint")]
	public static extern void ConstraintLayoutAddConstraint(ConstraintLayout layout, Constraint constraint);
	[LinkName("gtk_constraint_layout_add_constraints_from_description")]
	public static extern GLib.List* ConstraintLayoutAddConstraintsFromDescription(ConstraintLayout layout, c_ulong n_lines, c_int hspacing, c_int vspacing, GLib.Error error, char8* first_view);
	[LinkName("gtk_constraint_layout_add_constraints_from_descriptionv")]
	public static extern GLib.List* ConstraintLayoutAddConstraintsFromDescriptionv(ConstraintLayout layout, c_ulong n_lines, c_int hspacing, c_int vspacing, GLib.HashTable views);
	[LinkName("gtk_constraint_layout_add_guide")]
	public static extern void ConstraintLayoutAddGuide(ConstraintLayout layout, ConstraintGuide guide);
	[LinkName("gtk_constraint_layout_observe_constraints")]
	public static extern Gio.ListModel* ConstraintLayoutObserveConstraints(ConstraintLayout layout);
	[LinkName("gtk_constraint_layout_observe_guides")]
	public static extern Gio.ListModel* ConstraintLayoutObserveGuides(ConstraintLayout layout);
	[LinkName("gtk_constraint_layout_remove_all_constraints")]
	public static extern void ConstraintLayoutRemoveAllConstraints(ConstraintLayout layout);
	[LinkName("gtk_constraint_layout_remove_constraint")]
	public static extern void ConstraintLayoutRemoveConstraint(ConstraintLayout layout, Constraint constraint);
	[LinkName("gtk_constraint_layout_remove_guide")]
	public static extern void ConstraintLayoutRemoveGuide(ConstraintLayout layout, ConstraintGuide guide);
	[CRepr]
	public struct ConstraintLayoutChild;
	[CRepr]
	public struct ConstraintLayoutChildClass
	{
		LayoutChildClass parent_class;
	}
	[CRepr]
	public struct ConstraintLayoutClass
	{
		LayoutManagerClass parent_class;
	}
	public enum ConstraintRelation : c_int
	{
		le = -1,
		eq = 0,
		ge = 1
	}
	public enum ConstraintStrength : c_int
	{
		required = 1001001000,
		strong = 1000000000,
		medium = 1000,
		weak = 1
	}
	[CRepr]
	public struct ConstraintTarget
	{	}
	[CRepr]
	public struct ConstraintTargetInterface
	{
	}
	public enum ConstraintVflParserError : c_int
	{
		symbol = 0,
		attribute = 1,
		view = 2,
		metric = 3,
		priority = 4,
		relation = 5
	}
	public enum ContentFit : c_int
	{
		fill = 0,
		contain = 1,
		cover = 2,
		scale_down = 3
	}
	public enum CornerType : c_int
	{
		top_left = 0,
		bottom_left = 1,
		top_right = 2,
		bottom_right = 3
	}
	[CRepr]
	public struct CssLocation
	{
		c_ulong bytes;
		c_ulong chars;
		c_ulong lines;
		c_ulong line_bytes;
		c_ulong line_chars;
	}
	public enum CssParserError : c_int
	{
		failed = 0,
		syntax = 1,
		import = 2,
		name = 3,
		unknown_value = 4
	}
	public enum CssParserWarning : c_int
	{
		deprecated = 0,
		syntax = 1,
		unimplemented = 2
	}
	[CRepr]
	public struct CssProvider;
	[LinkName("gtk_css_provider_new")]
	public static extern CssProvider* CssProviderNew();
	[LinkName("gtk_css_provider_load_from_bytes")]
	public static extern void CssProviderLoadFromBytes(CssProvider css_provider, GLib.Bytes data);
	[LinkName("gtk_css_provider_load_from_data")]
	public static extern void CssProviderLoadFromData(CssProvider css_provider, char8* data, c_long length);
	[LinkName("gtk_css_provider_load_from_file")]
	public static extern void CssProviderLoadFromFile(CssProvider css_provider, Gio.File file);
	[LinkName("gtk_css_provider_load_from_path")]
	public static extern void CssProviderLoadFromPath(CssProvider css_provider, char8* path);
	[LinkName("gtk_css_provider_load_from_resource")]
	public static extern void CssProviderLoadFromResource(CssProvider css_provider, char8* resource_path);
	[LinkName("gtk_css_provider_load_from_string")]
	public static extern void CssProviderLoadFromString(CssProvider css_provider, char8* string);
	[LinkName("gtk_css_provider_load_named")]
	public static extern void CssProviderLoadNamed(CssProvider provider, char8* name, char8* variant);
	[LinkName("gtk_css_provider_to_string")]
	public static extern char8** CssProviderToString(CssProvider provider);
	[CRepr]
	public struct CssProviderClass
	{
	}
	[CRepr]
	public struct CssProviderPrivate
	{
	}
	[CRepr]
	public struct CssSection
	{
	}
	[CRepr]
	public struct CssStyleChange
	{
	}
	public function void CustomAllocateFunc(Widget widget, c_int width, c_int height, c_int baseline);
	[CRepr]
	public struct CustomFilter;
	[LinkName("gtk_custom_filter_new")]
	public static extern CustomFilter* CustomFilterNew(CustomFilterFunc match_func, void* user_data, GLib.DestroyNotify user_destroy);
	[LinkName("gtk_custom_filter_set_filter_func")]
	public static extern void CustomFilterSetFilterFunc(CustomFilter self, CustomFilterFunc match_func, void* user_data, GLib.DestroyNotify user_destroy);
	[CRepr]
	public struct CustomFilterClass
	{
		FilterClass parent_class;
	}
	public function c_int CustomFilterFunc(GObject.Object item, void* user_data);
	[CRepr]
	public struct CustomLayout;
	[LinkName("gtk_custom_layout_new")]
	public static extern LayoutManager* CustomLayoutNew(CustomRequestModeFunc request_mode, CustomMeasureFunc measure, CustomAllocateFunc allocate);
	[CRepr]
	public struct CustomLayoutClass
	{
		LayoutManagerClass parent_class;
	}
	public function void CustomMeasureFunc(Widget widget, Orientation orientation, c_int for_size, c_int minimum, c_int natural, c_int minimum_baseline, c_int natural_baseline);
	public function SizeRequestMode CustomRequestModeFunc(Widget widget);
	[CRepr]
	public struct CustomSorter;
	[LinkName("gtk_custom_sorter_new")]
	public static extern CustomSorter* CustomSorterNew(GLib.CompareDataFunc sort_func, void* user_data, GLib.DestroyNotify user_destroy);
	[LinkName("gtk_custom_sorter_set_sort_func")]
	public static extern void CustomSorterSetSortFunc(CustomSorter self, GLib.CompareDataFunc sort_func, void* user_data, GLib.DestroyNotify user_destroy);
	[CRepr]
	public struct CustomSorterClass
	{
		SorterClass parent_class;
	}
	[CRepr]
	public enum DebugFlags : int
	{
		text = 1,
		tree = 2,
		keybindings = 4,
		modules = 8,
		geometry = 16,
		icontheme = 32,
		printing = 64,
		builder = 128,
		size_request = 256,
		no_css_cache = 512,
		interactive = 1024,
		touchscreen = 2048,
		actions = 4096,
		layout = 8192,
		snapshot = 16384,
		constraints = 32768,
		builder_objects = 65536,
		a11y = 131072,
		iconfallback = 262144,
		invert_text_dir = 524288
	}
	public enum DeleteType : c_int
	{
		chars = 0,
		word_ends = 1,
		words = 2,
		display_lines = 3,
		display_line_ends = 4,
		paragraph_ends = 5,
		paragraphs = 6,
		whitespace = 7
	}
	[CRepr]
	public struct Dialog;
	[LinkName("gtk_dialog_new")]
	public static extern Widget* DialogNew();
	[LinkName("gtk_dialog_new_with_buttons")]
	public static extern Widget* DialogNewWithButtons(char8* title, Window parent, DialogFlags flags, char8* first_button_text);
	[LinkName("gtk_dialog_add_action_widget")]
	public static extern void DialogAddActionWidget(Dialog dialog, Widget child, c_int response_id);
	[LinkName("gtk_dialog_add_button")]
	public static extern Widget* DialogAddButton(Dialog dialog, char8* button_text, c_int response_id);
	[LinkName("gtk_dialog_add_buttons")]
	public static extern void DialogAddButtons(Dialog dialog, char8* first_button_text);
	[LinkName("gtk_dialog_get_content_area")]
	public static extern Box* DialogGetContentArea(Dialog dialog);
	[LinkName("gtk_dialog_get_header_bar")]
	public static extern HeaderBar* DialogGetHeaderBar(Dialog dialog);
	[LinkName("gtk_dialog_get_response_for_widget")]
	public static extern c_int DialogGetResponseForWidget(Dialog dialog, Widget widget);
	[LinkName("gtk_dialog_get_widget_for_response")]
	public static extern Widget* DialogGetWidgetForResponse(Dialog dialog, c_int response_id);
	[LinkName("gtk_dialog_response")]
	public static extern void DialogResponse(Dialog dialog, c_int response_id);
	[LinkName("gtk_dialog_set_default_response")]
	public static extern void DialogSetDefaultResponse(Dialog dialog, c_int response_id);
	[LinkName("gtk_dialog_set_response_sensitive")]
	public static extern void DialogSetResponseSensitive(Dialog dialog, c_int response_id, c_int setting);
	[CRepr]
	public struct DialogClass
	{
		WindowClass parent_class;
	}
	public enum DialogError : c_int
	{
		failed = 0,
		cancelled = 1,
		dismissed = 2
	}
	[CRepr]
	public enum DialogFlags : int
	{
		modal = 1,
		destroy_with_parent = 2,
		use_header_bar = 4
	}
	public enum DirectionType : c_int
	{
		tab_forward = 0,
		tab_backward = 1,
		up = 2,
		down = 3,
		left = 4,
		right = 5
	}
	[CRepr]
	public struct DirectoryList;
	[LinkName("gtk_directory_list_new")]
	public static extern DirectoryList* DirectoryListNew(char8* attributes, Gio.File file);
	[LinkName("gtk_directory_list_get_attributes")]
	public static extern char8** DirectoryListGetAttributes(DirectoryList self);
	[LinkName("gtk_directory_list_get_error")]
	public static extern GLib.Error* DirectoryListGetError(DirectoryList self);
	[LinkName("gtk_directory_list_get_file")]
	public static extern Gio.File* DirectoryListGetFile(DirectoryList self);
	[LinkName("gtk_directory_list_get_io_priority")]
	public static extern c_int DirectoryListGetIoPriority(DirectoryList self);
	[LinkName("gtk_directory_list_get_monitored")]
	public static extern c_int DirectoryListGetMonitored(DirectoryList self);
	[LinkName("gtk_directory_list_is_loading")]
	public static extern c_int DirectoryListIsLoading(DirectoryList self);
	[LinkName("gtk_directory_list_set_attributes")]
	public static extern void DirectoryListSetAttributes(DirectoryList self, char8* attributes);
	[LinkName("gtk_directory_list_set_file")]
	public static extern void DirectoryListSetFile(DirectoryList self, Gio.File file);
	[LinkName("gtk_directory_list_set_io_priority")]
	public static extern void DirectoryListSetIoPriority(DirectoryList self, c_int io_priority);
	[LinkName("gtk_directory_list_set_monitored")]
	public static extern void DirectoryListSetMonitored(DirectoryList self, c_int monitored);
	[CRepr]
	public struct DirectoryListClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct DragIcon;
	[LinkName("gtk_drag_icon_get_child")]
	public static extern Widget* DragIconGetChild(DragIcon self);
	[LinkName("gtk_drag_icon_set_child")]
	public static extern void DragIconSetChild(DragIcon self, Widget child);
	[CRepr]
	public struct DragIconClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct DragSource;
	[LinkName("gtk_drag_source_new")]
	public static extern DragSource* DragSourceNew();
	[LinkName("gtk_drag_source_drag_cancel")]
	public static extern void DragSourceDragCancel(DragSource source);
	[LinkName("gtk_drag_source_get_actions")]
	public static extern Gdk.DragAction DragSourceGetActions(DragSource source);
	[LinkName("gtk_drag_source_get_content")]
	public static extern Gdk.ContentProvider* DragSourceGetContent(DragSource source);
	[LinkName("gtk_drag_source_get_drag")]
	public static extern Gdk.Drag* DragSourceGetDrag(DragSource source);
	[LinkName("gtk_drag_source_set_actions")]
	public static extern void DragSourceSetActions(DragSource source, Gdk.DragAction actions);
	[LinkName("gtk_drag_source_set_content")]
	public static extern void DragSourceSetContent(DragSource source, Gdk.ContentProvider content);
	[LinkName("gtk_drag_source_set_icon")]
	public static extern void DragSourceSetIcon(DragSource source, Gdk.Paintable paintable, c_int hot_x, c_int hot_y);
	[CRepr]
	public struct DragSourceClass
	{
	}
	[CRepr]
	public struct DrawingArea;
	[LinkName("gtk_drawing_area_new")]
	public static extern Widget* DrawingAreaNew();
	[LinkName("gtk_drawing_area_get_content_height")]
	public static extern c_int DrawingAreaGetContentHeight(DrawingArea self);
	[LinkName("gtk_drawing_area_get_content_width")]
	public static extern c_int DrawingAreaGetContentWidth(DrawingArea self);
	[LinkName("gtk_drawing_area_set_content_height")]
	public static extern void DrawingAreaSetContentHeight(DrawingArea self, c_int height);
	[LinkName("gtk_drawing_area_set_content_width")]
	public static extern void DrawingAreaSetContentWidth(DrawingArea self, c_int width);
	[LinkName("gtk_drawing_area_set_draw_func")]
	public static extern void DrawingAreaSetDrawFunc(DrawingArea self, DrawingAreaDrawFunc draw_func, void* user_data, GLib.DestroyNotify destroy);
	[CRepr]
	public struct DrawingAreaClass
	{
		WidgetClass parent_class;
	}
	public function void DrawingAreaDrawFunc(DrawingArea drawing_area, cairo.Context cr, c_int width, c_int height, void* user_data);
	[CRepr]
	public struct DropControllerMotion;
	[LinkName("gtk_drop_controller_motion_new")]
	public static extern EventController* DropControllerMotionNew();
	[LinkName("gtk_drop_controller_motion_contains_pointer")]
	public static extern c_int DropControllerMotionContainsPointer(DropControllerMotion self);
	[LinkName("gtk_drop_controller_motion_get_drop")]
	public static extern Gdk.Drop* DropControllerMotionGetDrop(DropControllerMotion self);
	[LinkName("gtk_drop_controller_motion_is_pointer")]
	public static extern c_int DropControllerMotionIsPointer(DropControllerMotion self);
	[CRepr]
	public struct DropControllerMotionClass
	{
	}
	[CRepr]
	public struct DropDown;
	[LinkName("gtk_drop_down_new")]
	public static extern Widget* DropDownNew(Gio.ListModel model, Expression expression);
	[LinkName("gtk_drop_down_new_from_strings")]
	public static extern Widget* DropDownNewFromStrings();
	[LinkName("gtk_drop_down_get_enable_search")]
	public static extern c_int DropDownGetEnableSearch(DropDown self);
	[LinkName("gtk_drop_down_get_expression")]
	public static extern Expression* DropDownGetExpression(DropDown self);
	[LinkName("gtk_drop_down_get_factory")]
	public static extern ListItemFactory* DropDownGetFactory(DropDown self);
	[LinkName("gtk_drop_down_get_list_factory")]
	public static extern ListItemFactory* DropDownGetListFactory(DropDown self);
	[LinkName("gtk_drop_down_get_model")]
	public static extern Gio.ListModel* DropDownGetModel(DropDown self);
	[LinkName("gtk_drop_down_get_selected")]
	public static extern c_uint DropDownGetSelected(DropDown self);
	[LinkName("gtk_drop_down_get_selected_item")]
	public static extern GObject.Object DropDownGetSelectedItem(DropDown self);
	[LinkName("gtk_drop_down_get_show_arrow")]
	public static extern c_int DropDownGetShowArrow(DropDown self);
	[LinkName("gtk_drop_down_set_enable_search")]
	public static extern void DropDownSetEnableSearch(DropDown self, c_int enable_search);
	[LinkName("gtk_drop_down_set_expression")]
	public static extern void DropDownSetExpression(DropDown self, Expression expression);
	[LinkName("gtk_drop_down_set_factory")]
	public static extern void DropDownSetFactory(DropDown self, ListItemFactory factory);
	[LinkName("gtk_drop_down_set_list_factory")]
	public static extern void DropDownSetListFactory(DropDown self, ListItemFactory factory);
	[LinkName("gtk_drop_down_set_model")]
	public static extern void DropDownSetModel(DropDown self, Gio.ListModel model);
	[LinkName("gtk_drop_down_set_selected")]
	public static extern void DropDownSetSelected(DropDown self, c_uint position);
	[LinkName("gtk_drop_down_set_show_arrow")]
	public static extern void DropDownSetShowArrow(DropDown self, c_int show_arrow);
	[CRepr]
	public struct DropDownClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct DropTarget;
	[LinkName("gtk_drop_target_new")]
	public static extern DropTarget* DropTargetNew(GLib.Type type, Gdk.DragAction actions);
	[LinkName("gtk_drop_target_get_actions")]
	public static extern Gdk.DragAction DropTargetGetActions(DropTarget self);
	[LinkName("gtk_drop_target_get_current_drop")]
	public static extern Gdk.Drop* DropTargetGetCurrentDrop(DropTarget self);
	[LinkName("gtk_drop_target_get_drop")]
	public static extern Gdk.Drop* DropTargetGetDrop(DropTarget self);
	[LinkName("gtk_drop_target_get_formats")]
	public static extern Gdk.ContentFormats* DropTargetGetFormats(DropTarget self);
	[LinkName("gtk_drop_target_get_gtypes")]
	public static extern GLib.Type DropTargetGetGtypes(DropTarget self, c_ulong n_types);
	[LinkName("gtk_drop_target_get_preload")]
	public static extern c_int DropTargetGetPreload(DropTarget self);
	[LinkName("gtk_drop_target_get_value")]
	public static extern GObject.Value* DropTargetGetValue(DropTarget self);
	[LinkName("gtk_drop_target_reject")]
	public static extern void DropTargetReject(DropTarget self);
	[LinkName("gtk_drop_target_set_actions")]
	public static extern void DropTargetSetActions(DropTarget self, Gdk.DragAction actions);
	[LinkName("gtk_drop_target_set_gtypes")]
	public static extern void DropTargetSetGtypes(DropTarget self, c_ulong n_types);
	[LinkName("gtk_drop_target_set_preload")]
	public static extern void DropTargetSetPreload(DropTarget self, c_int preload);
	[CRepr]
	public struct DropTargetAsync;
	[LinkName("gtk_drop_target_async_new")]
	public static extern DropTargetAsync* DropTargetAsyncNew(Gdk.ContentFormats formats, Gdk.DragAction actions);
	[LinkName("gtk_drop_target_async_get_actions")]
	public static extern Gdk.DragAction DropTargetAsyncGetActions(DropTargetAsync self);
	[LinkName("gtk_drop_target_async_get_formats")]
	public static extern Gdk.ContentFormats* DropTargetAsyncGetFormats(DropTargetAsync self);
	[LinkName("gtk_drop_target_async_reject_drop")]
	public static extern void DropTargetAsyncRejectDrop(DropTargetAsync self, Gdk.Drop drop);
	[LinkName("gtk_drop_target_async_set_actions")]
	public static extern void DropTargetAsyncSetActions(DropTargetAsync self, Gdk.DragAction actions);
	[LinkName("gtk_drop_target_async_set_formats")]
	public static extern void DropTargetAsyncSetFormats(DropTargetAsync self, Gdk.ContentFormats formats);
	[CRepr]
	public struct DropTargetAsyncClass
	{
	}
	[CRepr]
	public struct DropTargetClass
	{
	}
	[CRepr]
	public struct Editable
	{
		public function void(Editable editable) changed;

		public function void(Editable editable, c_int start_pos, c_int end_pos) delete_text;

		public function void(Editable editable, c_int start_pos, c_int end_pos) do_delete_text;

		public function void(Editable editable, char8* text, c_int length, c_int position) do_insert_text;

		public function Editable(Editable editable) get_delegate;

		public function c_int(Editable editable, c_int start_pos, c_int end_pos) get_selection_bounds;

		public function char8*(Editable editable) get_text;

		public function void(Editable editable, char8* text, c_int length, c_int position) insert_text;

		public function void(Editable editable, c_int start_pos, c_int end_pos) set_selection_bounds;
	}
	[CRepr]
	public struct EditableInterface
	{
		GObject.TypeInterface base_iface;
	}
	[CRepr]
	public struct EditableLabel;
	[LinkName("gtk_editable_label_new")]
	public static extern Widget* EditableLabelNew(char8* str);
	[LinkName("gtk_editable_label_get_editing")]
	public static extern c_int EditableLabelGetEditing(EditableLabel self);
	[LinkName("gtk_editable_label_start_editing")]
	public static extern void EditableLabelStartEditing(EditableLabel self);
	[LinkName("gtk_editable_label_stop_editing")]
	public static extern void EditableLabelStopEditing(EditableLabel self, c_int commit);
	[CRepr]
	public struct EditableLabelClass
	{
		WidgetClass parent_class;
	}
	public enum EditableProperties : c_int
	{
		prop_text = 0,
		prop_cursor_position = 1,
		prop_selection_bound = 2,
		prop_editable = 3,
		prop_width_chars = 4,
		prop_max_width_chars = 5,
		prop_xalign = 6,
		prop_enable_undo = 7,
		num_properties = 8
	}
	[CRepr]
	public struct EmojiChooser;
	[LinkName("gtk_emoji_chooser_new")]
	public static extern Widget* EmojiChooserNew();
	[CRepr]
	public struct EmojiChooserClass
	{
	}
	[CRepr]
	public struct Entry;
	[LinkName("gtk_entry_new")]
	public static extern Widget* EntryNew();
	[LinkName("gtk_entry_new_with_buffer")]
	public static extern Widget* EntryNewWithBuffer(EntryBuffer buffer);
	[LinkName("gtk_entry_get_activates_default")]
	public static extern c_int EntryGetActivatesDefault(Entry entry);
	[LinkName("gtk_entry_get_alignment")]
	public static extern float EntryGetAlignment(Entry entry);
	[LinkName("gtk_entry_get_attributes")]
	public static extern Pango.AttrList* EntryGetAttributes(Entry entry);
	[LinkName("gtk_entry_get_buffer")]
	public static extern EntryBuffer* EntryGetBuffer(Entry entry);
	[LinkName("gtk_entry_get_completion")]
	public static extern EntryCompletion* EntryGetCompletion(Entry entry);
	[LinkName("gtk_entry_get_current_icon_drag_source")]
	public static extern c_int EntryGetCurrentIconDragSource(Entry entry);
	[LinkName("gtk_entry_get_extra_menu")]
	public static extern Gio.MenuModel* EntryGetExtraMenu(Entry entry);
	[LinkName("gtk_entry_get_has_frame")]
	public static extern c_int EntryGetHasFrame(Entry entry);
	[LinkName("gtk_entry_get_icon_activatable")]
	public static extern c_int EntryGetIconActivatable(Entry entry, EntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_area")]
	public static extern void EntryGetIconArea(Entry entry, EntryIconPosition icon_pos, Gdk.Rectangle icon_area);
	[LinkName("gtk_entry_get_icon_at_pos")]
	public static extern c_int EntryGetIconAtPos(Entry entry, c_int x, c_int y);
	[LinkName("gtk_entry_get_icon_gicon")]
	public static extern Gio.Icon* EntryGetIconGicon(Entry entry, EntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_name")]
	public static extern char8** EntryGetIconName(Entry entry, EntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_paintable")]
	public static extern Gdk.Paintable* EntryGetIconPaintable(Entry entry, EntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_sensitive")]
	public static extern c_int EntryGetIconSensitive(Entry entry, EntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_storage_type")]
	public static extern ImageType EntryGetIconStorageType(Entry entry, EntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_tooltip_markup")]
	public static extern char8** EntryGetIconTooltipMarkup(Entry entry, EntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_tooltip_text")]
	public static extern char8** EntryGetIconTooltipText(Entry entry, EntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_input_hints")]
	public static extern InputHints EntryGetInputHints(Entry entry);
	[LinkName("gtk_entry_get_input_purpose")]
	public static extern InputPurpose EntryGetInputPurpose(Entry entry);
	[LinkName("gtk_entry_get_invisible_char")]
	public static extern c_uint EntryGetInvisibleChar(Entry entry);
	[LinkName("gtk_entry_get_max_length")]
	public static extern c_int EntryGetMaxLength(Entry entry);
	[LinkName("gtk_entry_get_overwrite_mode")]
	public static extern c_int EntryGetOverwriteMode(Entry entry);
	[LinkName("gtk_entry_get_placeholder_text")]
	public static extern char8** EntryGetPlaceholderText(Entry entry);
	[LinkName("gtk_entry_get_progress_fraction")]
	public static extern double EntryGetProgressFraction(Entry entry);
	[LinkName("gtk_entry_get_progress_pulse_step")]
	public static extern double EntryGetProgressPulseStep(Entry entry);
	[LinkName("gtk_entry_get_tabs")]
	public static extern Pango.TabArray* EntryGetTabs(Entry entry);
	[LinkName("gtk_entry_get_text_length")]
	public static extern c_ushort EntryGetTextLength(Entry entry);
	[LinkName("gtk_entry_get_visibility")]
	public static extern c_int EntryGetVisibility(Entry entry);
	[LinkName("gtk_entry_grab_focus_without_selecting")]
	public static extern c_int EntryGrabFocusWithoutSelecting(Entry entry);
	[LinkName("gtk_entry_progress_pulse")]
	public static extern void EntryProgressPulse(Entry entry);
	[LinkName("gtk_entry_reset_im_context")]
	public static extern void EntryResetImContext(Entry entry);
	[LinkName("gtk_entry_set_activates_default")]
	public static extern void EntrySetActivatesDefault(Entry entry, c_int setting);
	[LinkName("gtk_entry_set_alignment")]
	public static extern void EntrySetAlignment(Entry entry, float xalign);
	[LinkName("gtk_entry_set_attributes")]
	public static extern void EntrySetAttributes(Entry entry, Pango.AttrList attrs);
	[LinkName("gtk_entry_set_buffer")]
	public static extern void EntrySetBuffer(Entry entry, EntryBuffer buffer);
	[LinkName("gtk_entry_set_completion")]
	public static extern void EntrySetCompletion(Entry entry, EntryCompletion completion);
	[LinkName("gtk_entry_set_extra_menu")]
	public static extern void EntrySetExtraMenu(Entry entry, Gio.MenuModel model);
	[LinkName("gtk_entry_set_has_frame")]
	public static extern void EntrySetHasFrame(Entry entry, c_int setting);
	[LinkName("gtk_entry_set_icon_activatable")]
	public static extern void EntrySetIconActivatable(Entry entry, EntryIconPosition icon_pos, c_int activatable);
	[LinkName("gtk_entry_set_icon_drag_source")]
	public static extern void EntrySetIconDragSource(Entry entry, EntryIconPosition icon_pos, Gdk.ContentProvider provider, Gdk.DragAction actions);
	[LinkName("gtk_entry_set_icon_from_gicon")]
	public static extern void EntrySetIconFromGicon(Entry entry, EntryIconPosition icon_pos, Gio.Icon icon);
	[LinkName("gtk_entry_set_icon_from_icon_name")]
	public static extern void EntrySetIconFromIconName(Entry entry, EntryIconPosition icon_pos, char8* icon_name);
	[LinkName("gtk_entry_set_icon_from_paintable")]
	public static extern void EntrySetIconFromPaintable(Entry entry, EntryIconPosition icon_pos, Gdk.Paintable paintable);
	[LinkName("gtk_entry_set_icon_sensitive")]
	public static extern void EntrySetIconSensitive(Entry entry, EntryIconPosition icon_pos, c_int sensitive);
	[LinkName("gtk_entry_set_icon_tooltip_markup")]
	public static extern void EntrySetIconTooltipMarkup(Entry entry, EntryIconPosition icon_pos, char8* tooltip);
	[LinkName("gtk_entry_set_icon_tooltip_text")]
	public static extern void EntrySetIconTooltipText(Entry entry, EntryIconPosition icon_pos, char8* tooltip);
	[LinkName("gtk_entry_set_input_hints")]
	public static extern void EntrySetInputHints(Entry entry, InputHints hints);
	[LinkName("gtk_entry_set_input_purpose")]
	public static extern void EntrySetInputPurpose(Entry entry, InputPurpose purpose);
	[LinkName("gtk_entry_set_invisible_char")]
	public static extern void EntrySetInvisibleChar(Entry entry, c_uint ch);
	[LinkName("gtk_entry_set_max_length")]
	public static extern void EntrySetMaxLength(Entry entry, c_int max);
	[LinkName("gtk_entry_set_overwrite_mode")]
	public static extern void EntrySetOverwriteMode(Entry entry, c_int overwrite);
	[LinkName("gtk_entry_set_placeholder_text")]
	public static extern void EntrySetPlaceholderText(Entry entry, char8* text);
	[LinkName("gtk_entry_set_progress_fraction")]
	public static extern void EntrySetProgressFraction(Entry entry, double fraction);
	[LinkName("gtk_entry_set_progress_pulse_step")]
	public static extern void EntrySetProgressPulseStep(Entry entry, double fraction);
	[LinkName("gtk_entry_set_tabs")]
	public static extern void EntrySetTabs(Entry entry, Pango.TabArray tabs);
	[LinkName("gtk_entry_set_visibility")]
	public static extern void EntrySetVisibility(Entry entry, c_int visible);
	[LinkName("gtk_entry_unset_invisible_char")]
	public static extern void EntryUnsetInvisibleChar(Entry entry);
	[CRepr]
	public struct EntryBuffer;
	[LinkName("gtk_entry_buffer_new")]
	public static extern EntryBuffer* EntryBufferNew(char8* initial_chars, c_int n_initial_chars);
	[LinkName("gtk_entry_buffer_delete_text")]
	public static extern c_uint EntryBufferDeleteText(EntryBuffer buffer, c_uint position, c_int n_chars);
	[LinkName("gtk_entry_buffer_emit_deleted_text")]
	public static extern void EntryBufferEmitDeletedText(EntryBuffer buffer, c_uint position, c_uint n_chars);
	[LinkName("gtk_entry_buffer_emit_inserted_text")]
	public static extern void EntryBufferEmitInsertedText(EntryBuffer buffer, c_uint position, char8* chars, c_uint n_chars);
	[LinkName("gtk_entry_buffer_get_bytes")]
	public static extern c_ulong EntryBufferGetBytes(EntryBuffer buffer);
	[LinkName("gtk_entry_buffer_get_length")]
	public static extern c_uint EntryBufferGetLength(EntryBuffer buffer);
	[LinkName("gtk_entry_buffer_get_max_length")]
	public static extern c_int EntryBufferGetMaxLength(EntryBuffer buffer);
	[LinkName("gtk_entry_buffer_get_text")]
	public static extern char8** EntryBufferGetText(EntryBuffer buffer);
	[LinkName("gtk_entry_buffer_insert_text")]
	public static extern c_uint EntryBufferInsertText(EntryBuffer buffer, c_uint position, char8* chars, c_int n_chars);
	[LinkName("gtk_entry_buffer_set_max_length")]
	public static extern void EntryBufferSetMaxLength(EntryBuffer buffer, c_int max_length);
	[LinkName("gtk_entry_buffer_set_text")]
	public static extern void EntryBufferSetText(EntryBuffer buffer, char8* chars, c_int n_chars);
	[CRepr]
	public struct EntryBufferClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct EntryClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct EntryCompletion;
	[LinkName("gtk_entry_completion_new")]
	public static extern EntryCompletion* EntryCompletionNew();
	[LinkName("gtk_entry_completion_new_with_area")]
	public static extern EntryCompletion* EntryCompletionNewWithArea(CellArea area);
	[LinkName("gtk_entry_completion_complete")]
	public static extern void EntryCompletionComplete(EntryCompletion completion);
	[LinkName("gtk_entry_completion_compute_prefix")]
	public static extern char8** EntryCompletionComputePrefix(EntryCompletion completion, char8* key);
	[LinkName("gtk_entry_completion_get_completion_prefix")]
	public static extern char8** EntryCompletionGetCompletionPrefix(EntryCompletion completion);
	[LinkName("gtk_entry_completion_get_entry")]
	public static extern Widget* EntryCompletionGetEntry(EntryCompletion completion);
	[LinkName("gtk_entry_completion_get_inline_completion")]
	public static extern c_int EntryCompletionGetInlineCompletion(EntryCompletion completion);
	[LinkName("gtk_entry_completion_get_inline_selection")]
	public static extern c_int EntryCompletionGetInlineSelection(EntryCompletion completion);
	[LinkName("gtk_entry_completion_get_minimum_key_length")]
	public static extern c_int EntryCompletionGetMinimumKeyLength(EntryCompletion completion);
	[LinkName("gtk_entry_completion_get_model")]
	public static extern TreeModel* EntryCompletionGetModel(EntryCompletion completion);
	[LinkName("gtk_entry_completion_get_popup_completion")]
	public static extern c_int EntryCompletionGetPopupCompletion(EntryCompletion completion);
	[LinkName("gtk_entry_completion_get_popup_set_width")]
	public static extern c_int EntryCompletionGetPopupSetWidth(EntryCompletion completion);
	[LinkName("gtk_entry_completion_get_popup_single_match")]
	public static extern c_int EntryCompletionGetPopupSingleMatch(EntryCompletion completion);
	[LinkName("gtk_entry_completion_get_text_column")]
	public static extern c_int EntryCompletionGetTextColumn(EntryCompletion completion);
	[LinkName("gtk_entry_completion_insert_prefix")]
	public static extern void EntryCompletionInsertPrefix(EntryCompletion completion);
	[LinkName("gtk_entry_completion_set_inline_completion")]
	public static extern void EntryCompletionSetInlineCompletion(EntryCompletion completion, c_int inline_completion);
	[LinkName("gtk_entry_completion_set_inline_selection")]
	public static extern void EntryCompletionSetInlineSelection(EntryCompletion completion, c_int inline_selection);
	[LinkName("gtk_entry_completion_set_match_func")]
	public static extern void EntryCompletionSetMatchFunc(EntryCompletion completion, EntryCompletionMatchFunc func, void* func_data, GLib.DestroyNotify func_notify);
	[LinkName("gtk_entry_completion_set_minimum_key_length")]
	public static extern void EntryCompletionSetMinimumKeyLength(EntryCompletion completion, c_int length);
	[LinkName("gtk_entry_completion_set_model")]
	public static extern void EntryCompletionSetModel(EntryCompletion completion, TreeModel model);
	[LinkName("gtk_entry_completion_set_popup_completion")]
	public static extern void EntryCompletionSetPopupCompletion(EntryCompletion completion, c_int popup_completion);
	[LinkName("gtk_entry_completion_set_popup_set_width")]
	public static extern void EntryCompletionSetPopupSetWidth(EntryCompletion completion, c_int popup_set_width);
	[LinkName("gtk_entry_completion_set_popup_single_match")]
	public static extern void EntryCompletionSetPopupSingleMatch(EntryCompletion completion, c_int popup_single_match);
	[LinkName("gtk_entry_completion_set_text_column")]
	public static extern void EntryCompletionSetTextColumn(EntryCompletion completion, c_int column);
	public function c_int EntryCompletionMatchFunc(EntryCompletion completion, char8* key, TreeIter iter, void* user_data);
	public enum EntryIconPosition : c_int
	{
		primary = 0,
		secondary = 1
	}
	[CRepr]
	public struct EventController;
	[LinkName("gtk_event_controller_get_current_event")]
	public static extern Gdk.Event* EventControllerGetCurrentEvent(EventController controller);
	[LinkName("gtk_event_controller_get_current_event_device")]
	public static extern Gdk.Device* EventControllerGetCurrentEventDevice(EventController controller);
	[LinkName("gtk_event_controller_get_current_event_state")]
	public static extern Gdk.ModifierType EventControllerGetCurrentEventState(EventController controller);
	[LinkName("gtk_event_controller_get_current_event_time")]
	public static extern c_uint EventControllerGetCurrentEventTime(EventController controller);
	[LinkName("gtk_event_controller_get_name")]
	public static extern char8** EventControllerGetName(EventController controller);
	[LinkName("gtk_event_controller_get_propagation_limit")]
	public static extern PropagationLimit EventControllerGetPropagationLimit(EventController controller);
	[LinkName("gtk_event_controller_get_propagation_phase")]
	public static extern PropagationPhase EventControllerGetPropagationPhase(EventController controller);
	[LinkName("gtk_event_controller_get_widget")]
	public static extern Widget* EventControllerGetWidget(EventController controller);
	[LinkName("gtk_event_controller_reset")]
	public static extern void EventControllerReset(EventController controller);
	[LinkName("gtk_event_controller_set_name")]
	public static extern void EventControllerSetName(EventController controller, char8* name);
	[LinkName("gtk_event_controller_set_propagation_limit")]
	public static extern void EventControllerSetPropagationLimit(EventController controller, PropagationLimit limit);
	[LinkName("gtk_event_controller_set_propagation_phase")]
	public static extern void EventControllerSetPropagationPhase(EventController controller, PropagationPhase phase);
	[LinkName("gtk_event_controller_set_static_name")]
	public static extern void EventControllerSetStaticName(EventController controller, char8* name);
	[CRepr]
	public struct EventControllerClass
	{
	}
	[CRepr]
	public struct EventControllerFocus;
	[LinkName("gtk_event_controller_focus_new")]
	public static extern EventController* EventControllerFocusNew();
	[LinkName("gtk_event_controller_focus_contains_focus")]
	public static extern c_int EventControllerFocusContainsFocus(EventControllerFocus self);
	[LinkName("gtk_event_controller_focus_is_focus")]
	public static extern c_int EventControllerFocusIsFocus(EventControllerFocus self);
	[CRepr]
	public struct EventControllerFocusClass
	{
	}
	[CRepr]
	public struct EventControllerKey;
	[LinkName("gtk_event_controller_key_new")]
	public static extern EventController* EventControllerKeyNew();
	[LinkName("gtk_event_controller_key_forward")]
	public static extern c_int EventControllerKeyForward(EventControllerKey controller, Widget widget);
	[LinkName("gtk_event_controller_key_get_group")]
	public static extern c_uint EventControllerKeyGetGroup(EventControllerKey controller);
	[LinkName("gtk_event_controller_key_get_im_context")]
	public static extern IMContext* EventControllerKeyGetImContext(EventControllerKey controller);
	[LinkName("gtk_event_controller_key_set_im_context")]
	public static extern void EventControllerKeySetImContext(EventControllerKey controller, IMContext im_context);
	[CRepr]
	public struct EventControllerKeyClass
	{
	}
	[CRepr]
	public struct EventControllerLegacy;
	[LinkName("gtk_event_controller_legacy_new")]
	public static extern EventController* EventControllerLegacyNew();
	[CRepr]
	public struct EventControllerLegacyClass
	{
	}
	[CRepr]
	public struct EventControllerMotion;
	[LinkName("gtk_event_controller_motion_new")]
	public static extern EventController* EventControllerMotionNew();
	[LinkName("gtk_event_controller_motion_contains_pointer")]
	public static extern c_int EventControllerMotionContainsPointer(EventControllerMotion self);
	[LinkName("gtk_event_controller_motion_is_pointer")]
	public static extern c_int EventControllerMotionIsPointer(EventControllerMotion self);
	[CRepr]
	public struct EventControllerMotionClass
	{
	}
	[CRepr]
	public struct EventControllerScroll;
	[LinkName("gtk_event_controller_scroll_new")]
	public static extern EventController* EventControllerScrollNew(EventControllerScrollFlags flags);
	[LinkName("gtk_event_controller_scroll_get_flags")]
	public static extern EventControllerScrollFlags EventControllerScrollGetFlags(EventControllerScroll scroll);
	[LinkName("gtk_event_controller_scroll_get_unit")]
	public static extern Gdk.ScrollUnit EventControllerScrollGetUnit(EventControllerScroll scroll);
	[LinkName("gtk_event_controller_scroll_set_flags")]
	public static extern void EventControllerScrollSetFlags(EventControllerScroll scroll, EventControllerScrollFlags flags);
	[CRepr]
	public struct EventControllerScrollClass
	{
	}
	[CRepr]
	public enum EventControllerScrollFlags : int
	{
		none = 0,
		vertical = 1,
		horizontal = 2,
		discrete = 4,
		kinetic = 8,
		both_axes = 3
	}
	public enum EventSequenceState : c_int
	{
		none = 0,
		claimed = 1,
		denied = 2
	}
	[CRepr]
	public struct EveryFilter;
	[LinkName("gtk_every_filter_new")]
	public static extern EveryFilter* EveryFilterNew();
	[CRepr]
	public struct EveryFilterClass
	{
	}
	[CRepr]
	public struct Expander;
	[LinkName("gtk_expander_new")]
	public static extern Widget* ExpanderNew(char8* label);
	[LinkName("gtk_expander_new_with_mnemonic")]
	public static extern Widget* ExpanderNewWithMnemonic(char8* label);
	[LinkName("gtk_expander_get_child")]
	public static extern Widget* ExpanderGetChild(Expander expander);
	[LinkName("gtk_expander_get_expanded")]
	public static extern c_int ExpanderGetExpanded(Expander expander);
	[LinkName("gtk_expander_get_label")]
	public static extern char8** ExpanderGetLabel(Expander expander);
	[LinkName("gtk_expander_get_label_widget")]
	public static extern Widget* ExpanderGetLabelWidget(Expander expander);
	[LinkName("gtk_expander_get_resize_toplevel")]
	public static extern c_int ExpanderGetResizeToplevel(Expander expander);
	[LinkName("gtk_expander_get_use_markup")]
	public static extern c_int ExpanderGetUseMarkup(Expander expander);
	[LinkName("gtk_expander_get_use_underline")]
	public static extern c_int ExpanderGetUseUnderline(Expander expander);
	[LinkName("gtk_expander_set_child")]
	public static extern void ExpanderSetChild(Expander expander, Widget child);
	[LinkName("gtk_expander_set_expanded")]
	public static extern void ExpanderSetExpanded(Expander expander, c_int expanded);
	[LinkName("gtk_expander_set_label")]
	public static extern void ExpanderSetLabel(Expander expander, char8* label);
	[LinkName("gtk_expander_set_label_widget")]
	public static extern void ExpanderSetLabelWidget(Expander expander, Widget label_widget);
	[LinkName("gtk_expander_set_resize_toplevel")]
	public static extern void ExpanderSetResizeToplevel(Expander expander, c_int resize_toplevel);
	[LinkName("gtk_expander_set_use_markup")]
	public static extern void ExpanderSetUseMarkup(Expander expander, c_int use_markup);
	[LinkName("gtk_expander_set_use_underline")]
	public static extern void ExpanderSetUseUnderline(Expander expander, c_int use_underline);
	[CRepr]
	public struct Expression;
	[LinkName("gtk_expression_bind")]
	public static extern ExpressionWatch* ExpressionBind(Expression self, GObject.Object target, char8* property, GObject.Object this_);
	[LinkName("gtk_expression_evaluate")]
	public static extern c_int ExpressionEvaluate(Expression self, GObject.Object this_, GObject.Value value);
	[LinkName("gtk_expression_get_value_type")]
	public static extern GLib.Type ExpressionGetValueType(Expression self);
	[LinkName("gtk_expression_is_static")]
	public static extern c_int ExpressionIsStatic(Expression self);
	[LinkName("gtk_expression_ref")]
	public static extern Expression* ExpressionRef(Expression self);
	[LinkName("gtk_expression_unref")]
	public static extern void ExpressionUnref(Expression self);
	[LinkName("gtk_expression_watch")]
	public static extern ExpressionWatch* ExpressionWatch(Expression self, GObject.Object this_, ExpressionNotify notify, void* user_data, GLib.DestroyNotify user_destroy);
	public function void ExpressionNotify(void* user_data);
	[CRepr]
	public struct ExpressionWatch
	{
	}
	[CRepr]
	public struct FileChooser
	{	}
	public enum FileChooserAction : c_int
	{
		open = 0,
		save = 1,
		select_folder = 2
	}
	[CRepr]
	public struct FileChooserDialog;
	[LinkName("gtk_file_chooser_dialog_new")]
	public static extern Widget* FileChooserDialogNew(char8* title, Window parent, FileChooserAction action, char8* first_button_text);
	public enum FileChooserError : c_int
	{
		nonexistent = 0,
		bad_filename = 1,
		already_exists = 2,
		incomplete_hostname = 3
	}
	[CRepr]
	public struct FileChooserNative;
	[LinkName("gtk_file_chooser_native_new")]
	public static extern FileChooserNative* FileChooserNativeNew(char8* title, Window parent, FileChooserAction action, char8* accept_label, char8* cancel_label);
	[LinkName("gtk_file_chooser_native_get_accept_label")]
	public static extern char8** FileChooserNativeGetAcceptLabel(FileChooserNative self);
	[LinkName("gtk_file_chooser_native_get_cancel_label")]
	public static extern char8** FileChooserNativeGetCancelLabel(FileChooserNative self);
	[LinkName("gtk_file_chooser_native_set_accept_label")]
	public static extern void FileChooserNativeSetAcceptLabel(FileChooserNative self, char8* accept_label);
	[LinkName("gtk_file_chooser_native_set_cancel_label")]
	public static extern void FileChooserNativeSetCancelLabel(FileChooserNative self, char8* cancel_label);
	[CRepr]
	public struct FileChooserNativeClass
	{
		NativeDialogClass parent_class;
	}
	[CRepr]
	public struct FileChooserWidget;
	[LinkName("gtk_file_chooser_widget_new")]
	public static extern Widget* FileChooserWidgetNew(FileChooserAction action);
	[CRepr]
	public struct FileDialog;
	[LinkName("gtk_file_dialog_new")]
	public static extern FileDialog* FileDialogNew();
	[LinkName("gtk_file_dialog_get_accept_label")]
	public static extern char8** FileDialogGetAcceptLabel(FileDialog self);
	[LinkName("gtk_file_dialog_get_default_filter")]
	public static extern FileFilter* FileDialogGetDefaultFilter(FileDialog self);
	[LinkName("gtk_file_dialog_get_filters")]
	public static extern Gio.ListModel* FileDialogGetFilters(FileDialog self);
	[LinkName("gtk_file_dialog_get_initial_file")]
	public static extern Gio.File* FileDialogGetInitialFile(FileDialog self);
	[LinkName("gtk_file_dialog_get_initial_folder")]
	public static extern Gio.File* FileDialogGetInitialFolder(FileDialog self);
	[LinkName("gtk_file_dialog_get_initial_name")]
	public static extern char8** FileDialogGetInitialName(FileDialog self);
	[LinkName("gtk_file_dialog_get_modal")]
	public static extern c_int FileDialogGetModal(FileDialog self);
	[LinkName("gtk_file_dialog_get_title")]
	public static extern char8** FileDialogGetTitle(FileDialog self);
	[LinkName("gtk_file_dialog_open")]
	public static extern void FileDialogOpen(FileDialog self, Window parent, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_dialog_open_finish")]
	public static extern Gio.File* FileDialogOpenFinish(FileDialog self, Gio.AsyncResult result);
	[LinkName("gtk_file_dialog_open_multiple")]
	public static extern void FileDialogOpenMultiple(FileDialog self, Window parent, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_dialog_open_multiple_finish")]
	public static extern Gio.ListModel* FileDialogOpenMultipleFinish(FileDialog self, Gio.AsyncResult result);
	[LinkName("gtk_file_dialog_save")]
	public static extern void FileDialogSave(FileDialog self, Window parent, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_dialog_save_finish")]
	public static extern Gio.File* FileDialogSaveFinish(FileDialog self, Gio.AsyncResult result);
	[LinkName("gtk_file_dialog_select_folder")]
	public static extern void FileDialogSelectFolder(FileDialog self, Window parent, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_dialog_select_folder_finish")]
	public static extern Gio.File* FileDialogSelectFolderFinish(FileDialog self, Gio.AsyncResult result);
	[LinkName("gtk_file_dialog_select_multiple_folders")]
	public static extern void FileDialogSelectMultipleFolders(FileDialog self, Window parent, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_dialog_select_multiple_folders_finish")]
	public static extern Gio.ListModel* FileDialogSelectMultipleFoldersFinish(FileDialog self, Gio.AsyncResult result);
	[LinkName("gtk_file_dialog_set_accept_label")]
	public static extern void FileDialogSetAcceptLabel(FileDialog self, char8* accept_label);
	[LinkName("gtk_file_dialog_set_default_filter")]
	public static extern void FileDialogSetDefaultFilter(FileDialog self, FileFilter filter);
	[LinkName("gtk_file_dialog_set_filters")]
	public static extern void FileDialogSetFilters(FileDialog self, Gio.ListModel filters);
	[LinkName("gtk_file_dialog_set_initial_file")]
	public static extern void FileDialogSetInitialFile(FileDialog self, Gio.File file);
	[LinkName("gtk_file_dialog_set_initial_folder")]
	public static extern void FileDialogSetInitialFolder(FileDialog self, Gio.File folder);
	[LinkName("gtk_file_dialog_set_initial_name")]
	public static extern void FileDialogSetInitialName(FileDialog self, char8* name);
	[LinkName("gtk_file_dialog_set_modal")]
	public static extern void FileDialogSetModal(FileDialog self, c_int modal);
	[LinkName("gtk_file_dialog_set_title")]
	public static extern void FileDialogSetTitle(FileDialog self, char8* title);
	[CRepr]
	public struct FileDialogClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FileFilter;
	[LinkName("gtk_file_filter_new")]
	public static extern FileFilter* FileFilterNew();
	[LinkName("gtk_file_filter_new_from_gvariant")]
	public static extern FileFilter* FileFilterNewFromGvariant(GLib.Variant variant);
	[LinkName("gtk_file_filter_add_mime_type")]
	public static extern void FileFilterAddMimeType(FileFilter filter, char8* mime_type);
	[LinkName("gtk_file_filter_add_pattern")]
	public static extern void FileFilterAddPattern(FileFilter filter, char8* pattern);
	[LinkName("gtk_file_filter_add_pixbuf_formats")]
	public static extern void FileFilterAddPixbufFormats(FileFilter filter);
	[LinkName("gtk_file_filter_add_suffix")]
	public static extern void FileFilterAddSuffix(FileFilter filter, char8* suffix);
	[LinkName("gtk_file_filter_get_attributes")]
	public static extern char8* FileFilterGetAttributes(FileFilter filter);
	[LinkName("gtk_file_filter_get_name")]
	public static extern char8** FileFilterGetName(FileFilter filter);
	[LinkName("gtk_file_filter_set_name")]
	public static extern void FileFilterSetName(FileFilter filter, char8* name);
	[LinkName("gtk_file_filter_to_gvariant")]
	public static extern GLib.Variant* FileFilterToGvariant(FileFilter filter);
	[CRepr]
	public struct FileLauncher;
	[LinkName("gtk_file_launcher_new")]
	public static extern FileLauncher* FileLauncherNew(Gio.File file);
	[LinkName("gtk_file_launcher_get_file")]
	public static extern Gio.File* FileLauncherGetFile(FileLauncher self);
	[LinkName("gtk_file_launcher_launch")]
	public static extern void FileLauncherLaunch(FileLauncher self, Window parent, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_launcher_launch_finish")]
	public static extern c_int FileLauncherLaunchFinish(FileLauncher self, Gio.AsyncResult result);
	[LinkName("gtk_file_launcher_open_containing_folder")]
	public static extern void FileLauncherOpenContainingFolder(FileLauncher self, Window parent, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_launcher_open_containing_folder_finish")]
	public static extern c_int FileLauncherOpenContainingFolderFinish(FileLauncher self, Gio.AsyncResult result);
	[LinkName("gtk_file_launcher_set_file")]
	public static extern void FileLauncherSetFile(FileLauncher self, Gio.File file);
	[CRepr]
	public struct FileLauncherClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct Filter;
	[LinkName("gtk_filter_changed")]
	public static extern void FilterChanged(Filter self, FilterChange change);
	[LinkName("gtk_filter_get_strictness")]
	public static extern FilterMatch FilterGetStrictness(Filter self);
	[LinkName("gtk_filter_match")]
	public static extern c_int FilterMatch(Filter self, GObject.Object item);
	public enum FilterChange : c_int
	{
		different = 0,
		less_strict = 1,
		more_strict = 2
	}
	[CRepr]
	public struct FilterClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FilterListModel;
	[LinkName("gtk_filter_list_model_new")]
	public static extern FilterListModel* FilterListModelNew(Gio.ListModel model, Filter filter);
	[LinkName("gtk_filter_list_model_get_filter")]
	public static extern Filter* FilterListModelGetFilter(FilterListModel self);
	[LinkName("gtk_filter_list_model_get_incremental")]
	public static extern c_int FilterListModelGetIncremental(FilterListModel self);
	[LinkName("gtk_filter_list_model_get_model")]
	public static extern Gio.ListModel* FilterListModelGetModel(FilterListModel self);
	[LinkName("gtk_filter_list_model_get_pending")]
	public static extern c_uint FilterListModelGetPending(FilterListModel self);
	[LinkName("gtk_filter_list_model_set_filter")]
	public static extern void FilterListModelSetFilter(FilterListModel self, Filter filter);
	[LinkName("gtk_filter_list_model_set_incremental")]
	public static extern void FilterListModelSetIncremental(FilterListModel self, c_int incremental);
	[LinkName("gtk_filter_list_model_set_model")]
	public static extern void FilterListModelSetModel(FilterListModel self, Gio.ListModel model);
	[CRepr]
	public struct FilterListModelClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum FilterMatch : c_int
	{
		some = 0,
		none = 1,
		all = 2
	}
	[CRepr]
	public struct Fixed;
	[LinkName("gtk_fixed_new")]
	public static extern Widget* FixedNew();
	[LinkName("gtk_fixed_get_child_position")]
	public static extern void FixedGetChildPosition(Fixed fixed_, Widget widget, double x, double y);
	[LinkName("gtk_fixed_get_child_transform")]
	public static extern Gsk.Transform* FixedGetChildTransform(Fixed fixed_, Widget widget);
	[LinkName("gtk_fixed_move")]
	public static extern void FixedMove(Fixed fixed_, Widget widget, double x, double y);
	[LinkName("gtk_fixed_put")]
	public static extern void FixedPut(Fixed fixed_, Widget widget, double x, double y);
	[LinkName("gtk_fixed_remove")]
	public static extern void FixedRemove(Fixed fixed_, Widget widget);
	[LinkName("gtk_fixed_set_child_transform")]
	public static extern void FixedSetChildTransform(Fixed fixed_, Widget widget, Gsk.Transform transform);
	[CRepr]
	public struct FixedClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct FixedLayout;
	[LinkName("gtk_fixed_layout_new")]
	public static extern LayoutManager* FixedLayoutNew();
	[CRepr]
	public struct FixedLayoutChild;
	[LinkName("gtk_fixed_layout_child_get_transform")]
	public static extern Gsk.Transform* FixedLayoutChildGetTransform(FixedLayoutChild child);
	[LinkName("gtk_fixed_layout_child_set_transform")]
	public static extern void FixedLayoutChildSetTransform(FixedLayoutChild child, Gsk.Transform transform);
	[CRepr]
	public struct FixedLayoutChildClass
	{
		LayoutChildClass parent_class;
	}
	[CRepr]
	public struct FixedLayoutClass
	{
		LayoutManagerClass parent_class;
	}
	[CRepr]
	public struct FlattenListModel;
	[LinkName("gtk_flatten_list_model_new")]
	public static extern FlattenListModel* FlattenListModelNew(Gio.ListModel model);
	[LinkName("gtk_flatten_list_model_get_model")]
	public static extern Gio.ListModel* FlattenListModelGetModel(FlattenListModel self);
	[LinkName("gtk_flatten_list_model_get_model_for_item")]
	public static extern Gio.ListModel* FlattenListModelGetModelForItem(FlattenListModel self, c_uint position);
	[LinkName("gtk_flatten_list_model_set_model")]
	public static extern void FlattenListModelSetModel(FlattenListModel self, Gio.ListModel model);
	[CRepr]
	public struct FlattenListModelClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FlowBox;
	[LinkName("gtk_flow_box_new")]
	public static extern Widget* FlowBoxNew();
	[LinkName("gtk_flow_box_append")]
	public static extern void FlowBoxAppend(FlowBox self, Widget child);
	[LinkName("gtk_flow_box_bind_model")]
	public static extern void FlowBoxBindModel(FlowBox box_, Gio.ListModel model, FlowBoxCreateWidgetFunc create_widget_func, void* user_data, GLib.DestroyNotify user_data_free_func);
	[LinkName("gtk_flow_box_get_activate_on_single_click")]
	public static extern c_int FlowBoxGetActivateOnSingleClick(FlowBox box_);
	[LinkName("gtk_flow_box_get_child_at_index")]
	public static extern FlowBoxChild* FlowBoxGetChildAtIndex(FlowBox box_, c_int idx);
	[LinkName("gtk_flow_box_get_child_at_pos")]
	public static extern FlowBoxChild* FlowBoxGetChildAtPos(FlowBox box_, c_int x, c_int y);
	[LinkName("gtk_flow_box_get_column_spacing")]
	public static extern c_uint FlowBoxGetColumnSpacing(FlowBox box_);
	[LinkName("gtk_flow_box_get_homogeneous")]
	public static extern c_int FlowBoxGetHomogeneous(FlowBox box_);
	[LinkName("gtk_flow_box_get_max_children_per_line")]
	public static extern c_uint FlowBoxGetMaxChildrenPerLine(FlowBox box_);
	[LinkName("gtk_flow_box_get_min_children_per_line")]
	public static extern c_uint FlowBoxGetMinChildrenPerLine(FlowBox box_);
	[LinkName("gtk_flow_box_get_row_spacing")]
	public static extern c_uint FlowBoxGetRowSpacing(FlowBox box_);
	[LinkName("gtk_flow_box_get_selected_children")]
	public static extern GLib.List* FlowBoxGetSelectedChildren(FlowBox box_);
	[LinkName("gtk_flow_box_get_selection_mode")]
	public static extern SelectionMode FlowBoxGetSelectionMode(FlowBox box_);
	[LinkName("gtk_flow_box_insert")]
	public static extern void FlowBoxInsert(FlowBox box_, Widget widget, c_int position);
	[LinkName("gtk_flow_box_invalidate_filter")]
	public static extern void FlowBoxInvalidateFilter(FlowBox box_);
	[LinkName("gtk_flow_box_invalidate_sort")]
	public static extern void FlowBoxInvalidateSort(FlowBox box_);
	[LinkName("gtk_flow_box_prepend")]
	public static extern void FlowBoxPrepend(FlowBox self, Widget child);
	[LinkName("gtk_flow_box_remove")]
	public static extern void FlowBoxRemove(FlowBox box_, Widget widget);
	[LinkName("gtk_flow_box_remove_all")]
	public static extern void FlowBoxRemoveAll(FlowBox box_);
	[LinkName("gtk_flow_box_select_all")]
	public static extern void FlowBoxSelectAll(FlowBox box_);
	[LinkName("gtk_flow_box_select_child")]
	public static extern void FlowBoxSelectChild(FlowBox box_, FlowBoxChild child);
	[LinkName("gtk_flow_box_selected_foreach")]
	public static extern void FlowBoxSelectedForeach(FlowBox box_, FlowBoxForeachFunc func, void* data);
	[LinkName("gtk_flow_box_set_activate_on_single_click")]
	public static extern void FlowBoxSetActivateOnSingleClick(FlowBox box_, c_int single);
	[LinkName("gtk_flow_box_set_column_spacing")]
	public static extern void FlowBoxSetColumnSpacing(FlowBox box_, c_uint spacing);
	[LinkName("gtk_flow_box_set_filter_func")]
	public static extern void FlowBoxSetFilterFunc(FlowBox box_, FlowBoxFilterFunc filter_func, void* user_data, GLib.DestroyNotify destroy);
	[LinkName("gtk_flow_box_set_hadjustment")]
	public static extern void FlowBoxSetHadjustment(FlowBox box_, Adjustment adjustment);
	[LinkName("gtk_flow_box_set_homogeneous")]
	public static extern void FlowBoxSetHomogeneous(FlowBox box_, c_int homogeneous);
	[LinkName("gtk_flow_box_set_max_children_per_line")]
	public static extern void FlowBoxSetMaxChildrenPerLine(FlowBox box_, c_uint n_children);
	[LinkName("gtk_flow_box_set_min_children_per_line")]
	public static extern void FlowBoxSetMinChildrenPerLine(FlowBox box_, c_uint n_children);
	[LinkName("gtk_flow_box_set_row_spacing")]
	public static extern void FlowBoxSetRowSpacing(FlowBox box_, c_uint spacing);
	[LinkName("gtk_flow_box_set_selection_mode")]
	public static extern void FlowBoxSetSelectionMode(FlowBox box_, SelectionMode mode);
	[LinkName("gtk_flow_box_set_sort_func")]
	public static extern void FlowBoxSetSortFunc(FlowBox box_, FlowBoxSortFunc sort_func, void* user_data, GLib.DestroyNotify destroy);
	[LinkName("gtk_flow_box_set_vadjustment")]
	public static extern void FlowBoxSetVadjustment(FlowBox box_, Adjustment adjustment);
	[LinkName("gtk_flow_box_unselect_all")]
	public static extern void FlowBoxUnselectAll(FlowBox box_);
	[LinkName("gtk_flow_box_unselect_child")]
	public static extern void FlowBoxUnselectChild(FlowBox box_, FlowBoxChild child);
	[CRepr]
	public struct FlowBoxChild;
	[LinkName("gtk_flow_box_child_new")]
	public static extern Widget* FlowBoxChildNew();
	[LinkName("gtk_flow_box_child_changed")]
	public static extern void FlowBoxChildChanged(FlowBoxChild child);
	[LinkName("gtk_flow_box_child_get_child")]
	public static extern Widget* FlowBoxChildGetChild(FlowBoxChild self);
	[LinkName("gtk_flow_box_child_get_index")]
	public static extern c_int FlowBoxChildGetIndex(FlowBoxChild child);
	[LinkName("gtk_flow_box_child_is_selected")]
	public static extern c_int FlowBoxChildIsSelected(FlowBoxChild child);
	[LinkName("gtk_flow_box_child_set_child")]
	public static extern void FlowBoxChildSetChild(FlowBoxChild self, Widget child);
	[CRepr]
	public struct FlowBoxChildClass
	{
		WidgetClass parent_class;
	}
	public function Widget FlowBoxCreateWidgetFunc(GObject.Object item, void* user_data);
	public function c_int FlowBoxFilterFunc(FlowBoxChild child, void* user_data);
	public function void FlowBoxForeachFunc(FlowBox box_, FlowBoxChild child, void* user_data);
	public function c_int FlowBoxSortFunc(FlowBoxChild child1, FlowBoxChild child2, void* user_data);
	[CRepr]
	public struct FontButton;
	[LinkName("gtk_font_button_new")]
	public static extern Widget* FontButtonNew();
	[LinkName("gtk_font_button_new_with_font")]
	public static extern Widget* FontButtonNewWithFont(char8* fontname);
	[LinkName("gtk_font_button_get_modal")]
	public static extern c_int FontButtonGetModal(FontButton font_button);
	[LinkName("gtk_font_button_get_title")]
	public static extern char8** FontButtonGetTitle(FontButton font_button);
	[LinkName("gtk_font_button_get_use_font")]
	public static extern c_int FontButtonGetUseFont(FontButton font_button);
	[LinkName("gtk_font_button_get_use_size")]
	public static extern c_int FontButtonGetUseSize(FontButton font_button);
	[LinkName("gtk_font_button_set_modal")]
	public static extern void FontButtonSetModal(FontButton font_button, c_int modal);
	[LinkName("gtk_font_button_set_title")]
	public static extern void FontButtonSetTitle(FontButton font_button, char8* title);
	[LinkName("gtk_font_button_set_use_font")]
	public static extern void FontButtonSetUseFont(FontButton font_button, c_int use_font);
	[LinkName("gtk_font_button_set_use_size")]
	public static extern void FontButtonSetUseSize(FontButton font_button, c_int use_size);
	[CRepr]
	public struct FontChooser
	{
		public function void(FontChooser chooser, char8* fontname) font_activated;

		public function Pango.FontFace(FontChooser fontchooser) get_font_face;

		public function Pango.FontFamily(FontChooser fontchooser) get_font_family;

		public function Pango.FontMap(FontChooser fontchooser) get_font_map;

		public function c_int(FontChooser fontchooser) get_font_size;

		public function void(FontChooser fontchooser, FontFilterFunc filter, void* user_data, GLib.DestroyNotify destroy) set_filter_func;

		public function void(FontChooser fontchooser, Pango.FontMap fontmap) set_font_map;
	}
	[CRepr]
	public struct FontChooserDialog;
	[LinkName("gtk_font_chooser_dialog_new")]
	public static extern Widget* FontChooserDialogNew(char8* title, Window parent);
	[CRepr]
	public struct FontChooserIface
	{
		GObject.TypeInterface base_iface;
	}
	[CRepr]
	public enum FontChooserLevel : int
	{
		family = 0,
		style = 1,
		size = 2,
		variations = 4,
		features = 8
	}
	[CRepr]
	public struct FontChooserWidget;
	[LinkName("gtk_font_chooser_widget_new")]
	public static extern Widget* FontChooserWidgetNew();
	[CRepr]
	public struct FontDialog;
	[LinkName("gtk_font_dialog_new")]
	public static extern FontDialog* FontDialogNew();
	[LinkName("gtk_font_dialog_choose_face")]
	public static extern void FontDialogChooseFace(FontDialog self, Window parent, Pango.FontFace initial_value, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_font_dialog_choose_face_finish")]
	public static extern Pango.FontFace* FontDialogChooseFaceFinish(FontDialog self, Gio.AsyncResult result);
	[LinkName("gtk_font_dialog_choose_family")]
	public static extern void FontDialogChooseFamily(FontDialog self, Window parent, Pango.FontFamily initial_value, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_font_dialog_choose_family_finish")]
	public static extern Pango.FontFamily* FontDialogChooseFamilyFinish(FontDialog self, Gio.AsyncResult result);
	[LinkName("gtk_font_dialog_choose_font")]
	public static extern void FontDialogChooseFont(FontDialog self, Window parent, Pango.FontDescription initial_value, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_font_dialog_choose_font_and_features")]
	public static extern void FontDialogChooseFontAndFeatures(FontDialog self, Window parent, Pango.FontDescription initial_value, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_font_dialog_choose_font_and_features_finish")]
	public static extern c_int FontDialogChooseFontAndFeaturesFinish(FontDialog self, Gio.AsyncResult result, Pango.FontDescription font_desc, char8* font_features, Pango.Language language);
	[LinkName("gtk_font_dialog_choose_font_finish")]
	public static extern Pango.FontDescription* FontDialogChooseFontFinish(FontDialog self, Gio.AsyncResult result);
	[LinkName("gtk_font_dialog_get_filter")]
	public static extern Filter* FontDialogGetFilter(FontDialog self);
	[LinkName("gtk_font_dialog_get_font_map")]
	public static extern Pango.FontMap* FontDialogGetFontMap(FontDialog self);
	[LinkName("gtk_font_dialog_get_language")]
	public static extern Pango.Language* FontDialogGetLanguage(FontDialog self);
	[LinkName("gtk_font_dialog_get_modal")]
	public static extern c_int FontDialogGetModal(FontDialog self);
	[LinkName("gtk_font_dialog_get_title")]
	public static extern char8** FontDialogGetTitle(FontDialog self);
	[LinkName("gtk_font_dialog_set_filter")]
	public static extern void FontDialogSetFilter(FontDialog self, Filter filter);
	[LinkName("gtk_font_dialog_set_font_map")]
	public static extern void FontDialogSetFontMap(FontDialog self, Pango.FontMap fontmap);
	[LinkName("gtk_font_dialog_set_language")]
	public static extern void FontDialogSetLanguage(FontDialog self, Pango.Language language);
	[LinkName("gtk_font_dialog_set_modal")]
	public static extern void FontDialogSetModal(FontDialog self, c_int modal);
	[LinkName("gtk_font_dialog_set_title")]
	public static extern void FontDialogSetTitle(FontDialog self, char8* title);
	[CRepr]
	public struct FontDialogButton;
	[LinkName("gtk_font_dialog_button_new")]
	public static extern Widget* FontDialogButtonNew(FontDialog dialog);
	[LinkName("gtk_font_dialog_button_get_dialog")]
	public static extern FontDialog* FontDialogButtonGetDialog(FontDialogButton self);
	[LinkName("gtk_font_dialog_button_get_font_desc")]
	public static extern Pango.FontDescription* FontDialogButtonGetFontDesc(FontDialogButton self);
	[LinkName("gtk_font_dialog_button_get_font_features")]
	public static extern char8** FontDialogButtonGetFontFeatures(FontDialogButton self);
	[LinkName("gtk_font_dialog_button_get_language")]
	public static extern Pango.Language* FontDialogButtonGetLanguage(FontDialogButton self);
	[LinkName("gtk_font_dialog_button_get_level")]
	public static extern FontLevel FontDialogButtonGetLevel(FontDialogButton self);
	[LinkName("gtk_font_dialog_button_get_use_font")]
	public static extern c_int FontDialogButtonGetUseFont(FontDialogButton self);
	[LinkName("gtk_font_dialog_button_get_use_size")]
	public static extern c_int FontDialogButtonGetUseSize(FontDialogButton self);
	[LinkName("gtk_font_dialog_button_set_dialog")]
	public static extern void FontDialogButtonSetDialog(FontDialogButton self, FontDialog dialog);
	[LinkName("gtk_font_dialog_button_set_font_desc")]
	public static extern void FontDialogButtonSetFontDesc(FontDialogButton self, Pango.FontDescription font_desc);
	[LinkName("gtk_font_dialog_button_set_font_features")]
	public static extern void FontDialogButtonSetFontFeatures(FontDialogButton self, char8* font_features);
	[LinkName("gtk_font_dialog_button_set_language")]
	public static extern void FontDialogButtonSetLanguage(FontDialogButton self, Pango.Language language);
	[LinkName("gtk_font_dialog_button_set_level")]
	public static extern void FontDialogButtonSetLevel(FontDialogButton self, FontLevel level);
	[LinkName("gtk_font_dialog_button_set_use_font")]
	public static extern void FontDialogButtonSetUseFont(FontDialogButton self, c_int use_font);
	[LinkName("gtk_font_dialog_button_set_use_size")]
	public static extern void FontDialogButtonSetUseSize(FontDialogButton self, c_int use_size);
	[CRepr]
	public struct FontDialogButtonClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct FontDialogClass
	{
		GObject.ObjectClass parent_class;
	}
	public function c_int FontFilterFunc(Pango.FontFamily family, Pango.FontFace face, void* data);
	public enum FontLevel : c_int
	{
		family = 0,
		face = 1,
		font = 2,
		features = 3
	}
	[CRepr]
	public struct Frame;
	[LinkName("gtk_frame_new")]
	public static extern Widget* FrameNew(char8* label);
	[LinkName("gtk_frame_get_child")]
	public static extern Widget* FrameGetChild(Frame frame);
	[LinkName("gtk_frame_get_label")]
	public static extern char8** FrameGetLabel(Frame frame);
	[LinkName("gtk_frame_get_label_align")]
	public static extern float FrameGetLabelAlign(Frame frame);
	[LinkName("gtk_frame_get_label_widget")]
	public static extern Widget* FrameGetLabelWidget(Frame frame);
	[LinkName("gtk_frame_set_child")]
	public static extern void FrameSetChild(Frame frame, Widget child);
	[LinkName("gtk_frame_set_label")]
	public static extern void FrameSetLabel(Frame frame, char8* label);
	[LinkName("gtk_frame_set_label_align")]
	public static extern void FrameSetLabelAlign(Frame frame, float xalign);
	[LinkName("gtk_frame_set_label_widget")]
	public static extern void FrameSetLabelWidget(Frame frame, Widget label_widget);
	[CRepr]
	public struct FrameClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct GLArea;
	[LinkName("gtk_gl_area_new")]
	public static extern Widget* GlAreaNew();
	[LinkName("gtk_gl_area_attach_buffers")]
	public static extern void GlAreaAttachBuffers(GLArea area);
	[LinkName("gtk_gl_area_get_allowed_apis")]
	public static extern Gdk.GLAPI GlAreaGetAllowedApis(GLArea area);
	[LinkName("gtk_gl_area_get_api")]
	public static extern Gdk.GLAPI GlAreaGetApi(GLArea area);
	[LinkName("gtk_gl_area_get_auto_render")]
	public static extern c_int GlAreaGetAutoRender(GLArea area);
	[LinkName("gtk_gl_area_get_context")]
	public static extern Gdk.GLContext* GlAreaGetContext(GLArea area);
	[LinkName("gtk_gl_area_get_error")]
	public static extern GLib.Error* GlAreaGetError(GLArea area);
	[LinkName("gtk_gl_area_get_has_depth_buffer")]
	public static extern c_int GlAreaGetHasDepthBuffer(GLArea area);
	[LinkName("gtk_gl_area_get_has_stencil_buffer")]
	public static extern c_int GlAreaGetHasStencilBuffer(GLArea area);
	[LinkName("gtk_gl_area_get_required_version")]
	public static extern void GlAreaGetRequiredVersion(GLArea area, c_int major, c_int minor);
	[LinkName("gtk_gl_area_get_use_es")]
	public static extern c_int GlAreaGetUseEs(GLArea area);
	[LinkName("gtk_gl_area_make_current")]
	public static extern void GlAreaMakeCurrent(GLArea area);
	[LinkName("gtk_gl_area_queue_render")]
	public static extern void GlAreaQueueRender(GLArea area);
	[LinkName("gtk_gl_area_set_allowed_apis")]
	public static extern void GlAreaSetAllowedApis(GLArea area, Gdk.GLAPI apis);
	[LinkName("gtk_gl_area_set_auto_render")]
	public static extern void GlAreaSetAutoRender(GLArea area, c_int auto_render);
	[LinkName("gtk_gl_area_set_error")]
	public static extern void GlAreaSetError(GLArea area, GLib.Error error);
	[LinkName("gtk_gl_area_set_has_depth_buffer")]
	public static extern void GlAreaSetHasDepthBuffer(GLArea area, c_int has_depth_buffer);
	[LinkName("gtk_gl_area_set_has_stencil_buffer")]
	public static extern void GlAreaSetHasStencilBuffer(GLArea area, c_int has_stencil_buffer);
	[LinkName("gtk_gl_area_set_required_version")]
	public static extern void GlAreaSetRequiredVersion(GLArea area, c_int major, c_int minor);
	[LinkName("gtk_gl_area_set_use_es")]
	public static extern void GlAreaSetUseEs(GLArea area, c_int use_es);
	[CRepr]
	public struct GLAreaClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct Gesture;
	[LinkName("gtk_gesture_get_bounding_box")]
	public static extern c_int GestureGetBoundingBox(Gesture gesture, Gdk.Rectangle rect);
	[LinkName("gtk_gesture_get_bounding_box_center")]
	public static extern c_int GestureGetBoundingBoxCenter(Gesture gesture, double x, double y);
	[LinkName("gtk_gesture_get_device")]
	public static extern Gdk.Device* GestureGetDevice(Gesture gesture);
	[LinkName("gtk_gesture_get_group")]
	public static extern GLib.List* GestureGetGroup(Gesture gesture);
	[LinkName("gtk_gesture_get_last_event")]
	public static extern Gdk.Event* GestureGetLastEvent(Gesture gesture, Gdk.EventSequence sequence);
	[LinkName("gtk_gesture_get_last_updated_sequence")]
	public static extern Gdk.EventSequence* GestureGetLastUpdatedSequence(Gesture gesture);
	[LinkName("gtk_gesture_get_point")]
	public static extern c_int GestureGetPoint(Gesture gesture, Gdk.EventSequence sequence, double x, double y);
	[LinkName("gtk_gesture_get_sequence_state")]
	public static extern EventSequenceState GestureGetSequenceState(Gesture gesture, Gdk.EventSequence sequence);
	[LinkName("gtk_gesture_get_sequences")]
	public static extern GLib.List* GestureGetSequences(Gesture gesture);
	[LinkName("gtk_gesture_group")]
	public static extern void GestureGroup(Gesture group_gesture, Gesture gesture);
	[LinkName("gtk_gesture_handles_sequence")]
	public static extern c_int GestureHandlesSequence(Gesture gesture, Gdk.EventSequence sequence);
	[LinkName("gtk_gesture_is_active")]
	public static extern c_int GestureIsActive(Gesture gesture);
	[LinkName("gtk_gesture_is_grouped_with")]
	public static extern c_int GestureIsGroupedWith(Gesture gesture, Gesture other);
	[LinkName("gtk_gesture_is_recognized")]
	public static extern c_int GestureIsRecognized(Gesture gesture);
	[LinkName("gtk_gesture_set_sequence_state")]
	public static extern c_int GestureSetSequenceState(Gesture gesture, Gdk.EventSequence sequence, EventSequenceState state);
	[LinkName("gtk_gesture_set_state")]
	public static extern c_int GestureSetState(Gesture gesture, EventSequenceState state);
	[LinkName("gtk_gesture_ungroup")]
	public static extern void GestureUngroup(Gesture gesture);
	[CRepr]
	public struct GestureClass
	{
	}
	[CRepr]
	public struct GestureClick;
	[LinkName("gtk_gesture_click_new")]
	public static extern Gesture* GestureClickNew();
	[CRepr]
	public struct GestureClickClass
	{
	}
	[CRepr]
	public struct GestureDrag;
	[LinkName("gtk_gesture_drag_new")]
	public static extern Gesture* GestureDragNew();
	[LinkName("gtk_gesture_drag_get_offset")]
	public static extern c_int GestureDragGetOffset(GestureDrag gesture, double x, double y);
	[LinkName("gtk_gesture_drag_get_start_point")]
	public static extern c_int GestureDragGetStartPoint(GestureDrag gesture, double x, double y);
	[CRepr]
	public struct GestureDragClass
	{
	}
	[CRepr]
	public struct GestureLongPress;
	[LinkName("gtk_gesture_long_press_new")]
	public static extern Gesture* GestureLongPressNew();
	[LinkName("gtk_gesture_long_press_get_delay_factor")]
	public static extern double GestureLongPressGetDelayFactor(GestureLongPress gesture);
	[LinkName("gtk_gesture_long_press_set_delay_factor")]
	public static extern void GestureLongPressSetDelayFactor(GestureLongPress gesture, double delay_factor);
	[CRepr]
	public struct GestureLongPressClass
	{
	}
	[CRepr]
	public struct GesturePan;
	[LinkName("gtk_gesture_pan_new")]
	public static extern Gesture* GesturePanNew(Orientation orientation);
	[LinkName("gtk_gesture_pan_get_orientation")]
	public static extern Orientation GesturePanGetOrientation(GesturePan gesture);
	[LinkName("gtk_gesture_pan_set_orientation")]
	public static extern void GesturePanSetOrientation(GesturePan gesture, Orientation orientation);
	[CRepr]
	public struct GesturePanClass
	{
	}
	[CRepr]
	public struct GestureRotate;
	[LinkName("gtk_gesture_rotate_new")]
	public static extern Gesture* GestureRotateNew();
	[LinkName("gtk_gesture_rotate_get_angle_delta")]
	public static extern double GestureRotateGetAngleDelta(GestureRotate gesture);
	[CRepr]
	public struct GestureRotateClass
	{
	}
	[CRepr]
	public struct GestureSingle;
	[LinkName("gtk_gesture_single_get_button")]
	public static extern c_uint GestureSingleGetButton(GestureSingle gesture);
	[LinkName("gtk_gesture_single_get_current_button")]
	public static extern c_uint GestureSingleGetCurrentButton(GestureSingle gesture);
	[LinkName("gtk_gesture_single_get_current_sequence")]
	public static extern Gdk.EventSequence* GestureSingleGetCurrentSequence(GestureSingle gesture);
	[LinkName("gtk_gesture_single_get_exclusive")]
	public static extern c_int GestureSingleGetExclusive(GestureSingle gesture);
	[LinkName("gtk_gesture_single_get_touch_only")]
	public static extern c_int GestureSingleGetTouchOnly(GestureSingle gesture);
	[LinkName("gtk_gesture_single_set_button")]
	public static extern void GestureSingleSetButton(GestureSingle gesture, c_uint button);
	[LinkName("gtk_gesture_single_set_exclusive")]
	public static extern void GestureSingleSetExclusive(GestureSingle gesture, c_int exclusive);
	[LinkName("gtk_gesture_single_set_touch_only")]
	public static extern void GestureSingleSetTouchOnly(GestureSingle gesture, c_int touch_only);
	[CRepr]
	public struct GestureSingleClass
	{
	}
	[CRepr]
	public struct GestureStylus;
	[LinkName("gtk_gesture_stylus_new")]
	public static extern Gesture* GestureStylusNew();
	[LinkName("gtk_gesture_stylus_get_axes")]
	public static extern c_int GestureStylusGetAxes(GestureStylus gesture);
	[LinkName("gtk_gesture_stylus_get_axis")]
	public static extern c_int GestureStylusGetAxis(GestureStylus gesture, Gdk.AxisUse axis, double value);
	[LinkName("gtk_gesture_stylus_get_backlog")]
	public static extern c_int GestureStylusGetBacklog(GestureStylus gesture, c_uint n_elems);
	[LinkName("gtk_gesture_stylus_get_device_tool")]
	public static extern Gdk.DeviceTool* GestureStylusGetDeviceTool(GestureStylus gesture);
	[LinkName("gtk_gesture_stylus_get_stylus_only")]
	public static extern c_int GestureStylusGetStylusOnly(GestureStylus gesture);
	[LinkName("gtk_gesture_stylus_set_stylus_only")]
	public static extern void GestureStylusSetStylusOnly(GestureStylus gesture, c_int stylus_only);
	[CRepr]
	public struct GestureStylusClass
	{
	}
	[CRepr]
	public struct GestureSwipe;
	[LinkName("gtk_gesture_swipe_new")]
	public static extern Gesture* GestureSwipeNew();
	[LinkName("gtk_gesture_swipe_get_velocity")]
	public static extern c_int GestureSwipeGetVelocity(GestureSwipe gesture, double velocity_x, double velocity_y);
	[CRepr]
	public struct GestureSwipeClass
	{
	}
	[CRepr]
	public struct GestureZoom;
	[LinkName("gtk_gesture_zoom_new")]
	public static extern Gesture* GestureZoomNew();
	[LinkName("gtk_gesture_zoom_get_scale_delta")]
	public static extern double GestureZoomGetScaleDelta(GestureZoom gesture);
	[CRepr]
	public struct GestureZoomClass
	{
	}
	[CRepr]
	public struct Grid;
	[LinkName("gtk_grid_new")]
	public static extern Widget* GridNew();
	[LinkName("gtk_grid_attach")]
	public static extern void GridAttach(Grid grid, Widget child, c_int column, c_int row, c_int width, c_int height);
	[LinkName("gtk_grid_attach_next_to")]
	public static extern void GridAttachNextTo(Grid grid, Widget child, Widget sibling, PositionType side, c_int width, c_int height);
	[LinkName("gtk_grid_get_baseline_row")]
	public static extern c_int GridGetBaselineRow(Grid grid);
	[LinkName("gtk_grid_get_child_at")]
	public static extern Widget* GridGetChildAt(Grid grid, c_int column, c_int row);
	[LinkName("gtk_grid_get_column_homogeneous")]
	public static extern c_int GridGetColumnHomogeneous(Grid grid);
	[LinkName("gtk_grid_get_column_spacing")]
	public static extern c_uint GridGetColumnSpacing(Grid grid);
	[LinkName("gtk_grid_get_row_baseline_position")]
	public static extern BaselinePosition GridGetRowBaselinePosition(Grid grid, c_int row);
	[LinkName("gtk_grid_get_row_homogeneous")]
	public static extern c_int GridGetRowHomogeneous(Grid grid);
	[LinkName("gtk_grid_get_row_spacing")]
	public static extern c_uint GridGetRowSpacing(Grid grid);
	[LinkName("gtk_grid_insert_column")]
	public static extern void GridInsertColumn(Grid grid, c_int position);
	[LinkName("gtk_grid_insert_next_to")]
	public static extern void GridInsertNextTo(Grid grid, Widget sibling, PositionType side);
	[LinkName("gtk_grid_insert_row")]
	public static extern void GridInsertRow(Grid grid, c_int position);
	[LinkName("gtk_grid_query_child")]
	public static extern void GridQueryChild(Grid grid, Widget child, c_int column, c_int row, c_int width, c_int height);
	[LinkName("gtk_grid_remove")]
	public static extern void GridRemove(Grid grid, Widget child);
	[LinkName("gtk_grid_remove_column")]
	public static extern void GridRemoveColumn(Grid grid, c_int position);
	[LinkName("gtk_grid_remove_row")]
	public static extern void GridRemoveRow(Grid grid, c_int position);
	[LinkName("gtk_grid_set_baseline_row")]
	public static extern void GridSetBaselineRow(Grid grid, c_int row);
	[LinkName("gtk_grid_set_column_homogeneous")]
	public static extern void GridSetColumnHomogeneous(Grid grid, c_int homogeneous);
	[LinkName("gtk_grid_set_column_spacing")]
	public static extern void GridSetColumnSpacing(Grid grid, c_uint spacing);
	[LinkName("gtk_grid_set_row_baseline_position")]
	public static extern void GridSetRowBaselinePosition(Grid grid, c_int row, BaselinePosition pos);
	[LinkName("gtk_grid_set_row_homogeneous")]
	public static extern void GridSetRowHomogeneous(Grid grid, c_int homogeneous);
	[LinkName("gtk_grid_set_row_spacing")]
	public static extern void GridSetRowSpacing(Grid grid, c_uint spacing);
	[CRepr]
	public struct GridClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct GridLayout;
	[LinkName("gtk_grid_layout_new")]
	public static extern LayoutManager* GridLayoutNew();
	[LinkName("gtk_grid_layout_get_baseline_row")]
	public static extern c_int GridLayoutGetBaselineRow(GridLayout grid);
	[LinkName("gtk_grid_layout_get_column_homogeneous")]
	public static extern c_int GridLayoutGetColumnHomogeneous(GridLayout grid);
	[LinkName("gtk_grid_layout_get_column_spacing")]
	public static extern c_uint GridLayoutGetColumnSpacing(GridLayout grid);
	[LinkName("gtk_grid_layout_get_row_baseline_position")]
	public static extern BaselinePosition GridLayoutGetRowBaselinePosition(GridLayout grid, c_int row);
	[LinkName("gtk_grid_layout_get_row_homogeneous")]
	public static extern c_int GridLayoutGetRowHomogeneous(GridLayout grid);
	[LinkName("gtk_grid_layout_get_row_spacing")]
	public static extern c_uint GridLayoutGetRowSpacing(GridLayout grid);
	[LinkName("gtk_grid_layout_set_baseline_row")]
	public static extern void GridLayoutSetBaselineRow(GridLayout grid, c_int row);
	[LinkName("gtk_grid_layout_set_column_homogeneous")]
	public static extern void GridLayoutSetColumnHomogeneous(GridLayout grid, c_int homogeneous);
	[LinkName("gtk_grid_layout_set_column_spacing")]
	public static extern void GridLayoutSetColumnSpacing(GridLayout grid, c_uint spacing);
	[LinkName("gtk_grid_layout_set_row_baseline_position")]
	public static extern void GridLayoutSetRowBaselinePosition(GridLayout grid, c_int row, BaselinePosition pos);
	[LinkName("gtk_grid_layout_set_row_homogeneous")]
	public static extern void GridLayoutSetRowHomogeneous(GridLayout grid, c_int homogeneous);
	[LinkName("gtk_grid_layout_set_row_spacing")]
	public static extern void GridLayoutSetRowSpacing(GridLayout grid, c_uint spacing);
	[CRepr]
	public struct GridLayoutChild;
	[LinkName("gtk_grid_layout_child_get_column")]
	public static extern c_int GridLayoutChildGetColumn(GridLayoutChild child);
	[LinkName("gtk_grid_layout_child_get_column_span")]
	public static extern c_int GridLayoutChildGetColumnSpan(GridLayoutChild child);
	[LinkName("gtk_grid_layout_child_get_row")]
	public static extern c_int GridLayoutChildGetRow(GridLayoutChild child);
	[LinkName("gtk_grid_layout_child_get_row_span")]
	public static extern c_int GridLayoutChildGetRowSpan(GridLayoutChild child);
	[LinkName("gtk_grid_layout_child_set_column")]
	public static extern void GridLayoutChildSetColumn(GridLayoutChild child, c_int column);
	[LinkName("gtk_grid_layout_child_set_column_span")]
	public static extern void GridLayoutChildSetColumnSpan(GridLayoutChild child, c_int span);
	[LinkName("gtk_grid_layout_child_set_row")]
	public static extern void GridLayoutChildSetRow(GridLayoutChild child, c_int row);
	[LinkName("gtk_grid_layout_child_set_row_span")]
	public static extern void GridLayoutChildSetRowSpan(GridLayoutChild child, c_int span);
	[CRepr]
	public struct GridLayoutChildClass
	{
		LayoutChildClass parent_class;
	}
	[CRepr]
	public struct GridLayoutClass
	{
		LayoutManagerClass parent_class;
	}
	[CRepr]
	public struct GridView;
	[LinkName("gtk_grid_view_new")]
	public static extern Widget* GridViewNew(SelectionModel model, ListItemFactory factory);
	[LinkName("gtk_grid_view_get_enable_rubberband")]
	public static extern c_int GridViewGetEnableRubberband(GridView self);
	[LinkName("gtk_grid_view_get_factory")]
	public static extern ListItemFactory* GridViewGetFactory(GridView self);
	[LinkName("gtk_grid_view_get_max_columns")]
	public static extern c_uint GridViewGetMaxColumns(GridView self);
	[LinkName("gtk_grid_view_get_min_columns")]
	public static extern c_uint GridViewGetMinColumns(GridView self);
	[LinkName("gtk_grid_view_get_model")]
	public static extern SelectionModel* GridViewGetModel(GridView self);
	[LinkName("gtk_grid_view_get_single_click_activate")]
	public static extern c_int GridViewGetSingleClickActivate(GridView self);
	[LinkName("gtk_grid_view_get_tab_behavior")]
	public static extern ListTabBehavior GridViewGetTabBehavior(GridView self);
	[LinkName("gtk_grid_view_set_enable_rubberband")]
	public static extern void GridViewSetEnableRubberband(GridView self, c_int enable_rubberband);
	[LinkName("gtk_grid_view_set_factory")]
	public static extern void GridViewSetFactory(GridView self, ListItemFactory factory);
	[LinkName("gtk_grid_view_set_max_columns")]
	public static extern void GridViewSetMaxColumns(GridView self, c_uint max_columns);
	[LinkName("gtk_grid_view_set_min_columns")]
	public static extern void GridViewSetMinColumns(GridView self, c_uint min_columns);
	[LinkName("gtk_grid_view_set_model")]
	public static extern void GridViewSetModel(GridView self, SelectionModel model);
	[LinkName("gtk_grid_view_set_single_click_activate")]
	public static extern void GridViewSetSingleClickActivate(GridView self, c_int single_click_activate);
	[LinkName("gtk_grid_view_set_tab_behavior")]
	public static extern void GridViewSetTabBehavior(GridView self, ListTabBehavior tab_behavior);
	[CRepr]
	public struct GridViewClass
	{
	}
	[CRepr]
	public struct HeaderBar;
	[LinkName("gtk_header_bar_new")]
	public static extern Widget* HeaderBarNew();
	[LinkName("gtk_header_bar_get_decoration_layout")]
	public static extern char8** HeaderBarGetDecorationLayout(HeaderBar bar);
	[LinkName("gtk_header_bar_get_show_title_buttons")]
	public static extern c_int HeaderBarGetShowTitleButtons(HeaderBar bar);
	[LinkName("gtk_header_bar_get_title_widget")]
	public static extern Widget* HeaderBarGetTitleWidget(HeaderBar bar);
	[LinkName("gtk_header_bar_pack_end")]
	public static extern void HeaderBarPackEnd(HeaderBar bar, Widget child);
	[LinkName("gtk_header_bar_pack_start")]
	public static extern void HeaderBarPackStart(HeaderBar bar, Widget child);
	[LinkName("gtk_header_bar_remove")]
	public static extern void HeaderBarRemove(HeaderBar bar, Widget child);
	[LinkName("gtk_header_bar_set_decoration_layout")]
	public static extern void HeaderBarSetDecorationLayout(HeaderBar bar, char8* layout);
	[LinkName("gtk_header_bar_set_show_title_buttons")]
	public static extern void HeaderBarSetShowTitleButtons(HeaderBar bar, c_int setting);
	[LinkName("gtk_header_bar_set_title_widget")]
	public static extern void HeaderBarSetTitleWidget(HeaderBar bar, Widget title_widget);
	[CRepr]
	public struct IMContext;
	[LinkName("gtk_im_context_delete_surrounding")]
	public static extern c_int ImContextDeleteSurrounding(IMContext context, c_int offset, c_int n_chars);
	[LinkName("gtk_im_context_filter_key")]
	public static extern c_int ImContextFilterKey(IMContext context, c_int press, Gdk.Surface surface, Gdk.Device device, c_uint time, c_uint keycode, Gdk.ModifierType state, c_int group);
	[LinkName("gtk_im_context_filter_keypress")]
	public static extern c_int ImContextFilterKeypress(IMContext context, Gdk.Event event);
	[LinkName("gtk_im_context_focus_in")]
	public static extern void ImContextFocusIn(IMContext context);
	[LinkName("gtk_im_context_focus_out")]
	public static extern void ImContextFocusOut(IMContext context);
	[LinkName("gtk_im_context_get_preedit_string")]
	public static extern void ImContextGetPreeditString(IMContext context, char8* str, Pango.AttrList attrs, c_int cursor_pos);
	[LinkName("gtk_im_context_get_surrounding")]
	public static extern c_int ImContextGetSurrounding(IMContext context, char8* text, c_int cursor_index);
	[LinkName("gtk_im_context_get_surrounding_with_selection")]
	public static extern c_int ImContextGetSurroundingWithSelection(IMContext context, char8* text, c_int cursor_index, c_int anchor_index);
	[LinkName("gtk_im_context_reset")]
	public static extern void ImContextReset(IMContext context);
	[LinkName("gtk_im_context_set_client_widget")]
	public static extern void ImContextSetClientWidget(IMContext context, Widget widget);
	[LinkName("gtk_im_context_set_cursor_location")]
	public static extern void ImContextSetCursorLocation(IMContext context, Gdk.Rectangle area);
	[LinkName("gtk_im_context_set_surrounding")]
	public static extern void ImContextSetSurrounding(IMContext context, char8* text, c_int len, c_int cursor_index);
	[LinkName("gtk_im_context_set_surrounding_with_selection")]
	public static extern void ImContextSetSurroundingWithSelection(IMContext context, char8* text, c_int len, c_int cursor_index, c_int anchor_index);
	[LinkName("gtk_im_context_set_use_preedit")]
	public static extern void ImContextSetUsePreedit(IMContext context, c_int use_preedit);
	[CRepr]
	public struct IMContextClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct IMContextSimple;
	[LinkName("gtk_im_context_simple_new")]
	public static extern IMContext* ImContextSimpleNew();
	[LinkName("gtk_im_context_simple_add_compose_file")]
	public static extern void ImContextSimpleAddComposeFile(IMContextSimple context_simple, char8* compose_file);
	[LinkName("gtk_im_context_simple_add_table")]
	public static extern void ImContextSimpleAddTable(IMContextSimple context_simple, c_int max_seq_len, c_int n_seqs);
	[CRepr]
	public struct IMContextSimpleClass
	{
		IMContextClass parent_class;
	}
	[CRepr]
	public struct IMContextSimplePrivate
	{
	}
	[CRepr]
	public struct IMMulticontext;
	[LinkName("gtk_im_multicontext_new")]
	public static extern IMContext* ImMulticontextNew();
	[LinkName("gtk_im_multicontext_get_context_id")]
	public static extern char8** ImMulticontextGetContextId(IMMulticontext context);
	[LinkName("gtk_im_multicontext_set_context_id")]
	public static extern void ImMulticontextSetContextId(IMMulticontext context, char8* context_id);
	[CRepr]
	public struct IMMulticontextClass
	{
		IMContextClass parent_class;
	}
	[CRepr]
	public struct IMMulticontextPrivate
	{
	}
	[CRepr]
	public enum IconLookupFlags : int
	{
		force_regular = 1,
		force_symbolic = 2,
		preload = 4
	}
	[CRepr]
	public struct IconPaintable;
	[LinkName("gtk_icon_paintable_new_for_file")]
	public static extern IconPaintable* IconPaintableNewForFile(Gio.File file, c_int size, c_int scale);
	[LinkName("gtk_icon_paintable_get_file")]
	public static extern Gio.File* IconPaintableGetFile(IconPaintable self);
	[LinkName("gtk_icon_paintable_get_icon_name")]
	public static extern char8** IconPaintableGetIconName(IconPaintable self);
	[LinkName("gtk_icon_paintable_is_symbolic")]
	public static extern c_int IconPaintableIsSymbolic(IconPaintable self);
	public enum IconSize : c_int
	{
		inherit = 0,
		normal = 1,
		large = 2
	}
	[CRepr]
	public struct IconTheme;
	[LinkName("gtk_icon_theme_new")]
	public static extern IconTheme* IconThemeNew();
	[LinkName("gtk_icon_theme_add_resource_path")]
	public static extern void IconThemeAddResourcePath(IconTheme self, char8* path);
	[LinkName("gtk_icon_theme_add_search_path")]
	public static extern void IconThemeAddSearchPath(IconTheme self, char8* path);
	[LinkName("gtk_icon_theme_get_display")]
	public static extern Gdk.Display* IconThemeGetDisplay(IconTheme self);
	[LinkName("gtk_icon_theme_get_icon_names")]
	public static extern char8* IconThemeGetIconNames(IconTheme self);
	[LinkName("gtk_icon_theme_get_icon_sizes")]
	public static extern c_int IconThemeGetIconSizes(IconTheme self, char8* icon_name);
	[LinkName("gtk_icon_theme_get_resource_path")]
	public static extern char8* IconThemeGetResourcePath(IconTheme self);
	[LinkName("gtk_icon_theme_get_search_path")]
	public static extern char8* IconThemeGetSearchPath(IconTheme self);
	[LinkName("gtk_icon_theme_get_theme_name")]
	public static extern char8** IconThemeGetThemeName(IconTheme self);
	[LinkName("gtk_icon_theme_has_gicon")]
	public static extern c_int IconThemeHasGicon(IconTheme self, Gio.Icon gicon);
	[LinkName("gtk_icon_theme_has_icon")]
	public static extern c_int IconThemeHasIcon(IconTheme self, char8* icon_name);
	[LinkName("gtk_icon_theme_lookup_by_gicon")]
	public static extern IconPaintable* IconThemeLookupByGicon(IconTheme self, Gio.Icon icon, c_int size, c_int scale, TextDirection direction, IconLookupFlags flags);
	[LinkName("gtk_icon_theme_lookup_icon")]
	public static extern IconPaintable* IconThemeLookupIcon(IconTheme self, char8* icon_name, c_int size, c_int scale, TextDirection direction, IconLookupFlags flags);
	[LinkName("gtk_icon_theme_set_resource_path")]
	public static extern void IconThemeSetResourcePath(IconTheme self);
	[LinkName("gtk_icon_theme_set_search_path")]
	public static extern void IconThemeSetSearchPath(IconTheme self);
	[LinkName("gtk_icon_theme_set_theme_name")]
	public static extern void IconThemeSetThemeName(IconTheme self, char8* theme_name);
	public enum IconThemeError : c_int
	{
		not_found = 0,
		failed = 1
	}
	[CRepr]
	public struct IconView;
	[LinkName("gtk_icon_view_new")]
	public static extern Widget* IconViewNew();
	[LinkName("gtk_icon_view_new_with_area")]
	public static extern Widget* IconViewNewWithArea(CellArea area);
	[LinkName("gtk_icon_view_new_with_model")]
	public static extern Widget* IconViewNewWithModel(TreeModel model);
	[LinkName("gtk_icon_view_create_drag_icon")]
	public static extern Gdk.Paintable* IconViewCreateDragIcon(IconView icon_view, TreePath path);
	[LinkName("gtk_icon_view_enable_model_drag_dest")]
	public static extern void IconViewEnableModelDragDest(IconView icon_view, Gdk.ContentFormats formats, Gdk.DragAction actions);
	[LinkName("gtk_icon_view_enable_model_drag_source")]
	public static extern void IconViewEnableModelDragSource(IconView icon_view, Gdk.ModifierType start_button_mask, Gdk.ContentFormats formats, Gdk.DragAction actions);
	[LinkName("gtk_icon_view_get_activate_on_single_click")]
	public static extern c_int IconViewGetActivateOnSingleClick(IconView icon_view);
	[LinkName("gtk_icon_view_get_cell_rect")]
	public static extern c_int IconViewGetCellRect(IconView icon_view, TreePath path, CellRenderer cell, Gdk.Rectangle rect);
	[LinkName("gtk_icon_view_get_column_spacing")]
	public static extern c_int IconViewGetColumnSpacing(IconView icon_view);
	[LinkName("gtk_icon_view_get_columns")]
	public static extern c_int IconViewGetColumns(IconView icon_view);
	[LinkName("gtk_icon_view_get_cursor")]
	public static extern c_int IconViewGetCursor(IconView icon_view, TreePath path, CellRenderer cell);
	[LinkName("gtk_icon_view_get_dest_item_at_pos")]
	public static extern c_int IconViewGetDestItemAtPos(IconView icon_view, c_int drag_x, c_int drag_y, TreePath path, IconViewDropPosition pos);
	[LinkName("gtk_icon_view_get_drag_dest_item")]
	public static extern void IconViewGetDragDestItem(IconView icon_view, TreePath path, IconViewDropPosition pos);
	[LinkName("gtk_icon_view_get_item_at_pos")]
	public static extern c_int IconViewGetItemAtPos(IconView icon_view, c_int x, c_int y, TreePath path, CellRenderer cell);
	[LinkName("gtk_icon_view_get_item_column")]
	public static extern c_int IconViewGetItemColumn(IconView icon_view, TreePath path);
	[LinkName("gtk_icon_view_get_item_orientation")]
	public static extern Orientation IconViewGetItemOrientation(IconView icon_view);
	[LinkName("gtk_icon_view_get_item_padding")]
	public static extern c_int IconViewGetItemPadding(IconView icon_view);
	[LinkName("gtk_icon_view_get_item_row")]
	public static extern c_int IconViewGetItemRow(IconView icon_view, TreePath path);
	[LinkName("gtk_icon_view_get_item_width")]
	public static extern c_int IconViewGetItemWidth(IconView icon_view);
	[LinkName("gtk_icon_view_get_margin")]
	public static extern c_int IconViewGetMargin(IconView icon_view);
	[LinkName("gtk_icon_view_get_markup_column")]
	public static extern c_int IconViewGetMarkupColumn(IconView icon_view);
	[LinkName("gtk_icon_view_get_model")]
	public static extern TreeModel* IconViewGetModel(IconView icon_view);
	[LinkName("gtk_icon_view_get_path_at_pos")]
	public static extern TreePath* IconViewGetPathAtPos(IconView icon_view, c_int x, c_int y);
	[LinkName("gtk_icon_view_get_pixbuf_column")]
	public static extern c_int IconViewGetPixbufColumn(IconView icon_view);
	[LinkName("gtk_icon_view_get_reorderable")]
	public static extern c_int IconViewGetReorderable(IconView icon_view);
	[LinkName("gtk_icon_view_get_row_spacing")]
	public static extern c_int IconViewGetRowSpacing(IconView icon_view);
	[LinkName("gtk_icon_view_get_selected_items")]
	public static extern GLib.List* IconViewGetSelectedItems(IconView icon_view);
	[LinkName("gtk_icon_view_get_selection_mode")]
	public static extern SelectionMode IconViewGetSelectionMode(IconView icon_view);
	[LinkName("gtk_icon_view_get_spacing")]
	public static extern c_int IconViewGetSpacing(IconView icon_view);
	[LinkName("gtk_icon_view_get_text_column")]
	public static extern c_int IconViewGetTextColumn(IconView icon_view);
	[LinkName("gtk_icon_view_get_tooltip_column")]
	public static extern c_int IconViewGetTooltipColumn(IconView icon_view);
	[LinkName("gtk_icon_view_get_tooltip_context")]
	public static extern c_int IconViewGetTooltipContext(IconView icon_view, c_int x, c_int y, c_int keyboard_tip, TreeModel model, TreePath path, TreeIter iter);
	[LinkName("gtk_icon_view_get_visible_range")]
	public static extern c_int IconViewGetVisibleRange(IconView icon_view, TreePath start_path, TreePath end_path);
	[LinkName("gtk_icon_view_item_activated")]
	public static extern void IconViewItemActivated(IconView icon_view, TreePath path);
	[LinkName("gtk_icon_view_path_is_selected")]
	public static extern c_int IconViewPathIsSelected(IconView icon_view, TreePath path);
	[LinkName("gtk_icon_view_scroll_to_path")]
	public static extern void IconViewScrollToPath(IconView icon_view, TreePath path, c_int use_align, float row_align, float col_align);
	[LinkName("gtk_icon_view_select_all")]
	public static extern void IconViewSelectAll(IconView icon_view);
	[LinkName("gtk_icon_view_select_path")]
	public static extern void IconViewSelectPath(IconView icon_view, TreePath path);
	[LinkName("gtk_icon_view_selected_foreach")]
	public static extern void IconViewSelectedForeach(IconView icon_view, IconViewForeachFunc func, void* data);
	[LinkName("gtk_icon_view_set_activate_on_single_click")]
	public static extern void IconViewSetActivateOnSingleClick(IconView icon_view, c_int single);
	[LinkName("gtk_icon_view_set_column_spacing")]
	public static extern void IconViewSetColumnSpacing(IconView icon_view, c_int column_spacing);
	[LinkName("gtk_icon_view_set_columns")]
	public static extern void IconViewSetColumns(IconView icon_view, c_int columns);
	[LinkName("gtk_icon_view_set_cursor")]
	public static extern void IconViewSetCursor(IconView icon_view, TreePath path, CellRenderer cell, c_int start_editing);
	[LinkName("gtk_icon_view_set_drag_dest_item")]
	public static extern void IconViewSetDragDestItem(IconView icon_view, TreePath path, IconViewDropPosition pos);
	[LinkName("gtk_icon_view_set_item_orientation")]
	public static extern void IconViewSetItemOrientation(IconView icon_view, Orientation orientation);
	[LinkName("gtk_icon_view_set_item_padding")]
	public static extern void IconViewSetItemPadding(IconView icon_view, c_int item_padding);
	[LinkName("gtk_icon_view_set_item_width")]
	public static extern void IconViewSetItemWidth(IconView icon_view, c_int item_width);
	[LinkName("gtk_icon_view_set_margin")]
	public static extern void IconViewSetMargin(IconView icon_view, c_int margin);
	[LinkName("gtk_icon_view_set_markup_column")]
	public static extern void IconViewSetMarkupColumn(IconView icon_view, c_int column);
	[LinkName("gtk_icon_view_set_model")]
	public static extern void IconViewSetModel(IconView icon_view, TreeModel model);
	[LinkName("gtk_icon_view_set_pixbuf_column")]
	public static extern void IconViewSetPixbufColumn(IconView icon_view, c_int column);
	[LinkName("gtk_icon_view_set_reorderable")]
	public static extern void IconViewSetReorderable(IconView icon_view, c_int reorderable);
	[LinkName("gtk_icon_view_set_row_spacing")]
	public static extern void IconViewSetRowSpacing(IconView icon_view, c_int row_spacing);
	[LinkName("gtk_icon_view_set_selection_mode")]
	public static extern void IconViewSetSelectionMode(IconView icon_view, SelectionMode mode);
	[LinkName("gtk_icon_view_set_spacing")]
	public static extern void IconViewSetSpacing(IconView icon_view, c_int spacing);
	[LinkName("gtk_icon_view_set_text_column")]
	public static extern void IconViewSetTextColumn(IconView icon_view, c_int column);
	[LinkName("gtk_icon_view_set_tooltip_cell")]
	public static extern void IconViewSetTooltipCell(IconView icon_view, Tooltip tooltip, TreePath path, CellRenderer cell);
	[LinkName("gtk_icon_view_set_tooltip_column")]
	public static extern void IconViewSetTooltipColumn(IconView icon_view, c_int column);
	[LinkName("gtk_icon_view_set_tooltip_item")]
	public static extern void IconViewSetTooltipItem(IconView icon_view, Tooltip tooltip, TreePath path);
	[LinkName("gtk_icon_view_unselect_all")]
	public static extern void IconViewUnselectAll(IconView icon_view);
	[LinkName("gtk_icon_view_unselect_path")]
	public static extern void IconViewUnselectPath(IconView icon_view, TreePath path);
	[LinkName("gtk_icon_view_unset_model_drag_dest")]
	public static extern void IconViewUnsetModelDragDest(IconView icon_view);
	[LinkName("gtk_icon_view_unset_model_drag_source")]
	public static extern void IconViewUnsetModelDragSource(IconView icon_view);
	public enum IconViewDropPosition : c_int
	{
		no_drop = 0,
		drop_into = 1,
		drop_left = 2,
		drop_right = 3,
		drop_above = 4,
		drop_below = 5
	}
	public function void IconViewForeachFunc(IconView icon_view, TreePath path, void* data);
	[CRepr]
	public struct Image;
	[LinkName("gtk_image_new")]
	public static extern Widget* ImageNew();
	[LinkName("gtk_image_new_from_file")]
	public static extern Widget* ImageNewFromFile(char8* filename);
	[LinkName("gtk_image_new_from_gicon")]
	public static extern Widget* ImageNewFromGicon(Gio.Icon icon);
	[LinkName("gtk_image_new_from_icon_name")]
	public static extern Widget* ImageNewFromIconName(char8* icon_name);
	[LinkName("gtk_image_new_from_paintable")]
	public static extern Widget* ImageNewFromPaintable(Gdk.Paintable paintable);
	[LinkName("gtk_image_new_from_pixbuf")]
	public static extern Widget* ImageNewFromPixbuf(GdkPixbuf.Pixbuf pixbuf);
	[LinkName("gtk_image_new_from_resource")]
	public static extern Widget* ImageNewFromResource(char8* resource_path);
	[LinkName("gtk_image_clear")]
	public static extern void ImageClear(Image image);
	[LinkName("gtk_image_get_gicon")]
	public static extern Gio.Icon* ImageGetGicon(Image image);
	[LinkName("gtk_image_get_icon_name")]
	public static extern char8** ImageGetIconName(Image image);
	[LinkName("gtk_image_get_icon_size")]
	public static extern IconSize ImageGetIconSize(Image image);
	[LinkName("gtk_image_get_paintable")]
	public static extern Gdk.Paintable* ImageGetPaintable(Image image);
	[LinkName("gtk_image_get_pixel_size")]
	public static extern c_int ImageGetPixelSize(Image image);
	[LinkName("gtk_image_get_storage_type")]
	public static extern ImageType ImageGetStorageType(Image image);
	[LinkName("gtk_image_set_from_file")]
	public static extern void ImageSetFromFile(Image image, char8* filename);
	[LinkName("gtk_image_set_from_gicon")]
	public static extern void ImageSetFromGicon(Image image, Gio.Icon icon);
	[LinkName("gtk_image_set_from_icon_name")]
	public static extern void ImageSetFromIconName(Image image, char8* icon_name);
	[LinkName("gtk_image_set_from_paintable")]
	public static extern void ImageSetFromPaintable(Image image, Gdk.Paintable paintable);
	[LinkName("gtk_image_set_from_pixbuf")]
	public static extern void ImageSetFromPixbuf(Image image, GdkPixbuf.Pixbuf pixbuf);
	[LinkName("gtk_image_set_from_resource")]
	public static extern void ImageSetFromResource(Image image, char8* resource_path);
	[LinkName("gtk_image_set_icon_size")]
	public static extern void ImageSetIconSize(Image image, IconSize icon_size);
	[LinkName("gtk_image_set_pixel_size")]
	public static extern void ImageSetPixelSize(Image image, c_int pixel_size);
	public enum ImageType : c_int
	{
		empty = 0,
		icon_name = 1,
		gicon = 2,
		paintable = 3
	}
	[CRepr]
	public struct InfoBar;
	[LinkName("gtk_info_bar_new")]
	public static extern Widget* InfoBarNew();
	[LinkName("gtk_info_bar_new_with_buttons")]
	public static extern Widget* InfoBarNewWithButtons(char8* first_button_text);
	[LinkName("gtk_info_bar_add_action_widget")]
	public static extern void InfoBarAddActionWidget(InfoBar info_bar, Widget child, c_int response_id);
	[LinkName("gtk_info_bar_add_button")]
	public static extern Button* InfoBarAddButton(InfoBar info_bar, char8* button_text, c_int response_id);
	[LinkName("gtk_info_bar_add_buttons")]
	public static extern void InfoBarAddButtons(InfoBar info_bar, char8* first_button_text);
	[LinkName("gtk_info_bar_add_child")]
	public static extern void InfoBarAddChild(InfoBar info_bar, Widget widget);
	[LinkName("gtk_info_bar_get_message_type")]
	public static extern MessageType InfoBarGetMessageType(InfoBar info_bar);
	[LinkName("gtk_info_bar_get_revealed")]
	public static extern c_int InfoBarGetRevealed(InfoBar info_bar);
	[LinkName("gtk_info_bar_get_show_close_button")]
	public static extern c_int InfoBarGetShowCloseButton(InfoBar info_bar);
	[LinkName("gtk_info_bar_remove_action_widget")]
	public static extern void InfoBarRemoveActionWidget(InfoBar info_bar, Widget widget);
	[LinkName("gtk_info_bar_remove_child")]
	public static extern void InfoBarRemoveChild(InfoBar info_bar, Widget widget);
	[LinkName("gtk_info_bar_response")]
	public static extern void InfoBarResponse(InfoBar info_bar, c_int response_id);
	[LinkName("gtk_info_bar_set_default_response")]
	public static extern void InfoBarSetDefaultResponse(InfoBar info_bar, c_int response_id);
	[LinkName("gtk_info_bar_set_message_type")]
	public static extern void InfoBarSetMessageType(InfoBar info_bar, MessageType message_type);
	[LinkName("gtk_info_bar_set_response_sensitive")]
	public static extern void InfoBarSetResponseSensitive(InfoBar info_bar, c_int response_id, c_int setting);
	[LinkName("gtk_info_bar_set_revealed")]
	public static extern void InfoBarSetRevealed(InfoBar info_bar, c_int revealed);
	[LinkName("gtk_info_bar_set_show_close_button")]
	public static extern void InfoBarSetShowCloseButton(InfoBar info_bar, c_int setting);
	[CRepr]
	public enum InputHints : int
	{
		none = 0,
		spellcheck = 1,
		no_spellcheck = 2,
		word_completion = 4,
		lowercase = 8,
		uppercase_chars = 16,
		uppercase_words = 32,
		uppercase_sentences = 64,
		inhibit_osk = 128,
		vertical_writing = 256,
		emoji = 512,
		no_emoji = 1024,
		private_ = 2048
	}
	public enum InputPurpose : c_int
	{
		free_form = 0,
		alpha = 1,
		digits = 2,
		number = 3,
		phone = 4,
		url = 5,
		email = 6,
		name = 7,
		password = 8,
		pin = 9,
		terminal = 10
	}
	[CRepr]
	public struct Inscription;
	[LinkName("gtk_inscription_new")]
	public static extern Widget* InscriptionNew(char8* text);
	[LinkName("gtk_inscription_get_attributes")]
	public static extern Pango.AttrList* InscriptionGetAttributes(Inscription self);
	[LinkName("gtk_inscription_get_min_chars")]
	public static extern c_uint InscriptionGetMinChars(Inscription self);
	[LinkName("gtk_inscription_get_min_lines")]
	public static extern c_uint InscriptionGetMinLines(Inscription self);
	[LinkName("gtk_inscription_get_nat_chars")]
	public static extern c_uint InscriptionGetNatChars(Inscription self);
	[LinkName("gtk_inscription_get_nat_lines")]
	public static extern c_uint InscriptionGetNatLines(Inscription self);
	[LinkName("gtk_inscription_get_text")]
	public static extern char8** InscriptionGetText(Inscription self);
	[LinkName("gtk_inscription_get_text_overflow")]
	public static extern InscriptionOverflow InscriptionGetTextOverflow(Inscription self);
	[LinkName("gtk_inscription_get_wrap_mode")]
	public static extern Pango.WrapMode InscriptionGetWrapMode(Inscription self);
	[LinkName("gtk_inscription_get_xalign")]
	public static extern float InscriptionGetXalign(Inscription self);
	[LinkName("gtk_inscription_get_yalign")]
	public static extern float InscriptionGetYalign(Inscription self);
	[LinkName("gtk_inscription_set_attributes")]
	public static extern void InscriptionSetAttributes(Inscription self, Pango.AttrList attrs);
	[LinkName("gtk_inscription_set_markup")]
	public static extern void InscriptionSetMarkup(Inscription self, char8* markup);
	[LinkName("gtk_inscription_set_min_chars")]
	public static extern void InscriptionSetMinChars(Inscription self, c_uint min_chars);
	[LinkName("gtk_inscription_set_min_lines")]
	public static extern void InscriptionSetMinLines(Inscription self, c_uint min_lines);
	[LinkName("gtk_inscription_set_nat_chars")]
	public static extern void InscriptionSetNatChars(Inscription self, c_uint nat_chars);
	[LinkName("gtk_inscription_set_nat_lines")]
	public static extern void InscriptionSetNatLines(Inscription self, c_uint nat_lines);
	[LinkName("gtk_inscription_set_text")]
	public static extern void InscriptionSetText(Inscription self, char8* text);
	[LinkName("gtk_inscription_set_text_overflow")]
	public static extern void InscriptionSetTextOverflow(Inscription self, InscriptionOverflow overflow);
	[LinkName("gtk_inscription_set_wrap_mode")]
	public static extern void InscriptionSetWrapMode(Inscription self, Pango.WrapMode wrap_mode);
	[LinkName("gtk_inscription_set_xalign")]
	public static extern void InscriptionSetXalign(Inscription self, float xalign);
	[LinkName("gtk_inscription_set_yalign")]
	public static extern void InscriptionSetYalign(Inscription self, float yalign);
	[CRepr]
	public struct InscriptionClass
	{
		WidgetClass parent_class;
	}
	public enum InscriptionOverflow : c_int
	{
		clip = 0,
		ellipsize_start = 1,
		ellipsize_middle = 2,
		ellipsize_end = 3
	}
	public enum Justification : c_int
	{
		left = 0,
		right = 1,
		center = 2,
		fill = 3
	}
	[CRepr]
	public struct KeyvalTrigger;
	[LinkName("gtk_keyval_trigger_new")]
	public static extern ShortcutTrigger* KeyvalTriggerNew(c_uint keyval, Gdk.ModifierType modifiers);
	[LinkName("gtk_keyval_trigger_get_keyval")]
	public static extern c_uint KeyvalTriggerGetKeyval(KeyvalTrigger self);
	[LinkName("gtk_keyval_trigger_get_modifiers")]
	public static extern Gdk.ModifierType KeyvalTriggerGetModifiers(KeyvalTrigger self);
	[CRepr]
	public struct KeyvalTriggerClass
	{
	}
	[CRepr]
	public struct Label;
	[LinkName("gtk_label_new")]
	public static extern Widget* LabelNew(char8* str);
	[LinkName("gtk_label_new_with_mnemonic")]
	public static extern Widget* LabelNewWithMnemonic(char8* str);
	[LinkName("gtk_label_get_attributes")]
	public static extern Pango.AttrList* LabelGetAttributes(Label self);
	[LinkName("gtk_label_get_current_uri")]
	public static extern char8** LabelGetCurrentUri(Label self);
	[LinkName("gtk_label_get_ellipsize")]
	public static extern Pango.EllipsizeMode LabelGetEllipsize(Label self);
	[LinkName("gtk_label_get_extra_menu")]
	public static extern Gio.MenuModel* LabelGetExtraMenu(Label self);
	[LinkName("gtk_label_get_justify")]
	public static extern Justification LabelGetJustify(Label self);
	[LinkName("gtk_label_get_label")]
	public static extern char8** LabelGetLabel(Label self);
	[LinkName("gtk_label_get_layout")]
	public static extern Pango.Layout* LabelGetLayout(Label self);
	[LinkName("gtk_label_get_layout_offsets")]
	public static extern void LabelGetLayoutOffsets(Label self, c_int x, c_int y);
	[LinkName("gtk_label_get_lines")]
	public static extern c_int LabelGetLines(Label self);
	[LinkName("gtk_label_get_max_width_chars")]
	public static extern c_int LabelGetMaxWidthChars(Label self);
	[LinkName("gtk_label_get_mnemonic_keyval")]
	public static extern c_uint LabelGetMnemonicKeyval(Label self);
	[LinkName("gtk_label_get_mnemonic_widget")]
	public static extern Widget* LabelGetMnemonicWidget(Label self);
	[LinkName("gtk_label_get_natural_wrap_mode")]
	public static extern NaturalWrapMode LabelGetNaturalWrapMode(Label self);
	[LinkName("gtk_label_get_selectable")]
	public static extern c_int LabelGetSelectable(Label self);
	[LinkName("gtk_label_get_selection_bounds")]
	public static extern c_int LabelGetSelectionBounds(Label self, c_int start, c_int end);
	[LinkName("gtk_label_get_single_line_mode")]
	public static extern c_int LabelGetSingleLineMode(Label self);
	[LinkName("gtk_label_get_tabs")]
	public static extern Pango.TabArray* LabelGetTabs(Label self);
	[LinkName("gtk_label_get_text")]
	public static extern char8** LabelGetText(Label self);
	[LinkName("gtk_label_get_use_markup")]
	public static extern c_int LabelGetUseMarkup(Label self);
	[LinkName("gtk_label_get_use_underline")]
	public static extern c_int LabelGetUseUnderline(Label self);
	[LinkName("gtk_label_get_width_chars")]
	public static extern c_int LabelGetWidthChars(Label self);
	[LinkName("gtk_label_get_wrap")]
	public static extern c_int LabelGetWrap(Label self);
	[LinkName("gtk_label_get_wrap_mode")]
	public static extern Pango.WrapMode LabelGetWrapMode(Label self);
	[LinkName("gtk_label_get_xalign")]
	public static extern float LabelGetXalign(Label self);
	[LinkName("gtk_label_get_yalign")]
	public static extern float LabelGetYalign(Label self);
	[LinkName("gtk_label_select_region")]
	public static extern void LabelSelectRegion(Label self, c_int start_offset, c_int end_offset);
	[LinkName("gtk_label_set_attributes")]
	public static extern void LabelSetAttributes(Label self, Pango.AttrList attrs);
	[LinkName("gtk_label_set_ellipsize")]
	public static extern void LabelSetEllipsize(Label self, Pango.EllipsizeMode mode);
	[LinkName("gtk_label_set_extra_menu")]
	public static extern void LabelSetExtraMenu(Label self, Gio.MenuModel model);
	[LinkName("gtk_label_set_justify")]
	public static extern void LabelSetJustify(Label self, Justification jtype);
	[LinkName("gtk_label_set_label")]
	public static extern void LabelSetLabel(Label self, char8* str);
	[LinkName("gtk_label_set_lines")]
	public static extern void LabelSetLines(Label self, c_int lines);
	[LinkName("gtk_label_set_markup")]
	public static extern void LabelSetMarkup(Label self, char8* str);
	[LinkName("gtk_label_set_markup_with_mnemonic")]
	public static extern void LabelSetMarkupWithMnemonic(Label self, char8* str);
	[LinkName("gtk_label_set_max_width_chars")]
	public static extern void LabelSetMaxWidthChars(Label self, c_int n_chars);
	[LinkName("gtk_label_set_mnemonic_widget")]
	public static extern void LabelSetMnemonicWidget(Label self, Widget widget);
	[LinkName("gtk_label_set_natural_wrap_mode")]
	public static extern void LabelSetNaturalWrapMode(Label self, NaturalWrapMode wrap_mode);
	[LinkName("gtk_label_set_selectable")]
	public static extern void LabelSetSelectable(Label self, c_int setting);
	[LinkName("gtk_label_set_single_line_mode")]
	public static extern void LabelSetSingleLineMode(Label self, c_int single_line_mode);
	[LinkName("gtk_label_set_tabs")]
	public static extern void LabelSetTabs(Label self, Pango.TabArray tabs);
	[LinkName("gtk_label_set_text")]
	public static extern void LabelSetText(Label self, char8* str);
	[LinkName("gtk_label_set_text_with_mnemonic")]
	public static extern void LabelSetTextWithMnemonic(Label self, char8* str);
	[LinkName("gtk_label_set_use_markup")]
	public static extern void LabelSetUseMarkup(Label self, c_int setting);
	[LinkName("gtk_label_set_use_underline")]
	public static extern void LabelSetUseUnderline(Label self, c_int setting);
	[LinkName("gtk_label_set_width_chars")]
	public static extern void LabelSetWidthChars(Label self, c_int n_chars);
	[LinkName("gtk_label_set_wrap")]
	public static extern void LabelSetWrap(Label self, c_int wrap);
	[LinkName("gtk_label_set_wrap_mode")]
	public static extern void LabelSetWrapMode(Label self, Pango.WrapMode wrap_mode);
	[LinkName("gtk_label_set_xalign")]
	public static extern void LabelSetXalign(Label self, float xalign);
	[LinkName("gtk_label_set_yalign")]
	public static extern void LabelSetYalign(Label self, float yalign);
	[CRepr]
	public struct LayoutChild;
	[LinkName("gtk_layout_child_get_child_widget")]
	public static extern Widget* LayoutChildGetChildWidget(LayoutChild layout_child);
	[LinkName("gtk_layout_child_get_layout_manager")]
	public static extern LayoutManager* LayoutChildGetLayoutManager(LayoutChild layout_child);
	[CRepr]
	public struct LayoutChildClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct LayoutManager;
	[LinkName("gtk_layout_manager_allocate")]
	public static extern void LayoutManagerAllocate(LayoutManager manager, Widget widget, c_int width, c_int height, c_int baseline);
	[LinkName("gtk_layout_manager_get_layout_child")]
	public static extern LayoutChild* LayoutManagerGetLayoutChild(LayoutManager manager, Widget child);
	[LinkName("gtk_layout_manager_get_request_mode")]
	public static extern SizeRequestMode LayoutManagerGetRequestMode(LayoutManager manager);
	[LinkName("gtk_layout_manager_get_widget")]
	public static extern Widget* LayoutManagerGetWidget(LayoutManager manager);
	[LinkName("gtk_layout_manager_layout_changed")]
	public static extern void LayoutManagerLayoutChanged(LayoutManager manager);
	[LinkName("gtk_layout_manager_measure")]
	public static extern void LayoutManagerMeasure(LayoutManager manager, Widget widget, Orientation orientation, c_int for_size, c_int minimum, c_int natural, c_int minimum_baseline, c_int natural_baseline);
	[CRepr]
	public struct LayoutManagerClass
	{
		GObject.ObjectClass parent_class;
		GLib.Type layout_child_type;
	}
	[CRepr]
	public struct LevelBar;
	[LinkName("gtk_level_bar_new")]
	public static extern Widget* LevelBarNew();
	[LinkName("gtk_level_bar_new_for_interval")]
	public static extern Widget* LevelBarNewForInterval(double min_value, double max_value);
	[LinkName("gtk_level_bar_add_offset_value")]
	public static extern void LevelBarAddOffsetValue(LevelBar self, char8* name, double value);
	[LinkName("gtk_level_bar_get_inverted")]
	public static extern c_int LevelBarGetInverted(LevelBar self);
	[LinkName("gtk_level_bar_get_max_value")]
	public static extern double LevelBarGetMaxValue(LevelBar self);
	[LinkName("gtk_level_bar_get_min_value")]
	public static extern double LevelBarGetMinValue(LevelBar self);
	[LinkName("gtk_level_bar_get_mode")]
	public static extern LevelBarMode LevelBarGetMode(LevelBar self);
	[LinkName("gtk_level_bar_get_offset_value")]
	public static extern c_int LevelBarGetOffsetValue(LevelBar self, char8* name, double value);
	[LinkName("gtk_level_bar_get_value")]
	public static extern double LevelBarGetValue(LevelBar self);
	[LinkName("gtk_level_bar_remove_offset_value")]
	public static extern void LevelBarRemoveOffsetValue(LevelBar self, char8* name);
	[LinkName("gtk_level_bar_set_inverted")]
	public static extern void LevelBarSetInverted(LevelBar self, c_int inverted);
	[LinkName("gtk_level_bar_set_max_value")]
	public static extern void LevelBarSetMaxValue(LevelBar self, double value);
	[LinkName("gtk_level_bar_set_min_value")]
	public static extern void LevelBarSetMinValue(LevelBar self, double value);
	[LinkName("gtk_level_bar_set_mode")]
	public static extern void LevelBarSetMode(LevelBar self, LevelBarMode mode);
	[LinkName("gtk_level_bar_set_value")]
	public static extern void LevelBarSetValue(LevelBar self, double value);
	public enum LevelBarMode : c_int
	{
		continuous = 0,
		discrete = 1
	}
	public enum License : c_int
	{
		unknown = 0,
		custom = 1,
		gpl_2_0 = 2,
		gpl_3_0 = 3,
		lgpl_2_1 = 4,
		lgpl_3_0 = 5,
		bsd = 6,
		mit_x11 = 7,
		artistic = 8,
		gpl_2_0_only = 9,
		gpl_3_0_only = 10,
		lgpl_2_1_only = 11,
		lgpl_3_0_only = 12,
		agpl_3_0 = 13,
		agpl_3_0_only = 14,
		bsd_3 = 15,
		apache_2_0 = 16,
		mpl_2_0 = 17
	}
	[CRepr]
	public struct LinkButton;
	[LinkName("gtk_link_button_new")]
	public static extern Widget* LinkButtonNew(char8* uri);
	[LinkName("gtk_link_button_new_with_label")]
	public static extern Widget* LinkButtonNewWithLabel(char8* uri, char8* label);
	[LinkName("gtk_link_button_get_uri")]
	public static extern char8** LinkButtonGetUri(LinkButton link_button);
	[LinkName("gtk_link_button_get_visited")]
	public static extern c_int LinkButtonGetVisited(LinkButton link_button);
	[LinkName("gtk_link_button_set_uri")]
	public static extern void LinkButtonSetUri(LinkButton link_button, char8* uri);
	[LinkName("gtk_link_button_set_visited")]
	public static extern void LinkButtonSetVisited(LinkButton link_button, c_int visited);
	[CRepr]
	public struct ListBase;
	[CRepr]
	public struct ListBaseClass
	{
	}
	[CRepr]
	public struct ListBox;
	[LinkName("gtk_list_box_new")]
	public static extern Widget* ListBoxNew();
	[LinkName("gtk_list_box_append")]
	public static extern void ListBoxAppend(ListBox box_, Widget child);
	[LinkName("gtk_list_box_bind_model")]
	public static extern void ListBoxBindModel(ListBox box_, Gio.ListModel model, ListBoxCreateWidgetFunc create_widget_func, void* user_data, GLib.DestroyNotify user_data_free_func);
	[LinkName("gtk_list_box_drag_highlight_row")]
	public static extern void ListBoxDragHighlightRow(ListBox box_, ListBoxRow row);
	[LinkName("gtk_list_box_drag_unhighlight_row")]
	public static extern void ListBoxDragUnhighlightRow(ListBox box_);
	[LinkName("gtk_list_box_get_activate_on_single_click")]
	public static extern c_int ListBoxGetActivateOnSingleClick(ListBox box_);
	[LinkName("gtk_list_box_get_adjustment")]
	public static extern Adjustment* ListBoxGetAdjustment(ListBox box_);
	[LinkName("gtk_list_box_get_row_at_index")]
	public static extern ListBoxRow* ListBoxGetRowAtIndex(ListBox box_, c_int index_);
	[LinkName("gtk_list_box_get_row_at_y")]
	public static extern ListBoxRow* ListBoxGetRowAtY(ListBox box_, c_int y);
	[LinkName("gtk_list_box_get_selected_row")]
	public static extern ListBoxRow* ListBoxGetSelectedRow(ListBox box_);
	[LinkName("gtk_list_box_get_selected_rows")]
	public static extern GLib.List* ListBoxGetSelectedRows(ListBox box_);
	[LinkName("gtk_list_box_get_selection_mode")]
	public static extern SelectionMode ListBoxGetSelectionMode(ListBox box_);
	[LinkName("gtk_list_box_get_show_separators")]
	public static extern c_int ListBoxGetShowSeparators(ListBox box_);
	[LinkName("gtk_list_box_insert")]
	public static extern void ListBoxInsert(ListBox box_, Widget child, c_int position);
	[LinkName("gtk_list_box_invalidate_filter")]
	public static extern void ListBoxInvalidateFilter(ListBox box_);
	[LinkName("gtk_list_box_invalidate_headers")]
	public static extern void ListBoxInvalidateHeaders(ListBox box_);
	[LinkName("gtk_list_box_invalidate_sort")]
	public static extern void ListBoxInvalidateSort(ListBox box_);
	[LinkName("gtk_list_box_prepend")]
	public static extern void ListBoxPrepend(ListBox box_, Widget child);
	[LinkName("gtk_list_box_remove")]
	public static extern void ListBoxRemove(ListBox box_, Widget child);
	[LinkName("gtk_list_box_remove_all")]
	public static extern void ListBoxRemoveAll(ListBox box_);
	[LinkName("gtk_list_box_select_all")]
	public static extern void ListBoxSelectAll(ListBox box_);
	[LinkName("gtk_list_box_select_row")]
	public static extern void ListBoxSelectRow(ListBox box_, ListBoxRow row);
	[LinkName("gtk_list_box_selected_foreach")]
	public static extern void ListBoxSelectedForeach(ListBox box_, ListBoxForeachFunc func, void* data);
	[LinkName("gtk_list_box_set_activate_on_single_click")]
	public static extern void ListBoxSetActivateOnSingleClick(ListBox box_, c_int single);
	[LinkName("gtk_list_box_set_adjustment")]
	public static extern void ListBoxSetAdjustment(ListBox box_, Adjustment adjustment);
	[LinkName("gtk_list_box_set_filter_func")]
	public static extern void ListBoxSetFilterFunc(ListBox box_, ListBoxFilterFunc filter_func, void* user_data, GLib.DestroyNotify destroy);
	[LinkName("gtk_list_box_set_header_func")]
	public static extern void ListBoxSetHeaderFunc(ListBox box_, ListBoxUpdateHeaderFunc update_header, void* user_data, GLib.DestroyNotify destroy);
	[LinkName("gtk_list_box_set_placeholder")]
	public static extern void ListBoxSetPlaceholder(ListBox box_, Widget placeholder);
	[LinkName("gtk_list_box_set_selection_mode")]
	public static extern void ListBoxSetSelectionMode(ListBox box_, SelectionMode mode);
	[LinkName("gtk_list_box_set_show_separators")]
	public static extern void ListBoxSetShowSeparators(ListBox box_, c_int show_separators);
	[LinkName("gtk_list_box_set_sort_func")]
	public static extern void ListBoxSetSortFunc(ListBox box_, ListBoxSortFunc sort_func, void* user_data, GLib.DestroyNotify destroy);
	[LinkName("gtk_list_box_unselect_all")]
	public static extern void ListBoxUnselectAll(ListBox box_);
	[LinkName("gtk_list_box_unselect_row")]
	public static extern void ListBoxUnselectRow(ListBox box_, ListBoxRow row);
	public function Widget ListBoxCreateWidgetFunc(GObject.Object item, void* user_data);
	public function c_int ListBoxFilterFunc(ListBoxRow row, void* user_data);
	public function void ListBoxForeachFunc(ListBox box_, ListBoxRow row, void* user_data);
	[CRepr]
	public struct ListBoxRow;
	[LinkName("gtk_list_box_row_new")]
	public static extern Widget* ListBoxRowNew();
	[LinkName("gtk_list_box_row_changed")]
	public static extern void ListBoxRowChanged(ListBoxRow row);
	[LinkName("gtk_list_box_row_get_activatable")]
	public static extern c_int ListBoxRowGetActivatable(ListBoxRow row);
	[LinkName("gtk_list_box_row_get_child")]
	public static extern Widget* ListBoxRowGetChild(ListBoxRow row);
	[LinkName("gtk_list_box_row_get_header")]
	public static extern Widget* ListBoxRowGetHeader(ListBoxRow row);
	[LinkName("gtk_list_box_row_get_index")]
	public static extern c_int ListBoxRowGetIndex(ListBoxRow row);
	[LinkName("gtk_list_box_row_get_selectable")]
	public static extern c_int ListBoxRowGetSelectable(ListBoxRow row);
	[LinkName("gtk_list_box_row_is_selected")]
	public static extern c_int ListBoxRowIsSelected(ListBoxRow row);
	[LinkName("gtk_list_box_row_set_activatable")]
	public static extern void ListBoxRowSetActivatable(ListBoxRow row, c_int activatable);
	[LinkName("gtk_list_box_row_set_child")]
	public static extern void ListBoxRowSetChild(ListBoxRow row, Widget child);
	[LinkName("gtk_list_box_row_set_header")]
	public static extern void ListBoxRowSetHeader(ListBoxRow row, Widget header);
	[LinkName("gtk_list_box_row_set_selectable")]
	public static extern void ListBoxRowSetSelectable(ListBoxRow row, c_int selectable);
	[CRepr]
	public struct ListBoxRowClass
	{
		WidgetClass parent_class;
	}
	public function c_int ListBoxSortFunc(ListBoxRow row1, ListBoxRow row2, void* user_data);
	public function void ListBoxUpdateHeaderFunc(ListBoxRow row, ListBoxRow before, void* user_data);
	[CRepr]
	public struct ListHeader;
	[LinkName("gtk_list_header_get_child")]
	public static extern Widget* ListHeaderGetChild(ListHeader self);
	[LinkName("gtk_list_header_get_end")]
	public static extern c_uint ListHeaderGetEnd(ListHeader self);
	[LinkName("gtk_list_header_get_item")]
	public static extern GObject.Object ListHeaderGetItem(ListHeader self);
	[LinkName("gtk_list_header_get_n_items")]
	public static extern c_uint ListHeaderGetNItems(ListHeader self);
	[LinkName("gtk_list_header_get_start")]
	public static extern c_uint ListHeaderGetStart(ListHeader self);
	[LinkName("gtk_list_header_set_child")]
	public static extern void ListHeaderSetChild(ListHeader self, Widget child);
	[CRepr]
	public struct ListHeaderClass
	{
	}
	[CRepr]
	public struct ListItem;
	[LinkName("gtk_list_item_get_activatable")]
	public static extern c_int ListItemGetActivatable(ListItem self);
	[LinkName("gtk_list_item_get_child")]
	public static extern Widget* ListItemGetChild(ListItem self);
	[LinkName("gtk_list_item_get_focusable")]
	public static extern c_int ListItemGetFocusable(ListItem self);
	[LinkName("gtk_list_item_get_item")]
	public static extern GObject.Object ListItemGetItem(ListItem self);
	[LinkName("gtk_list_item_get_position")]
	public static extern c_uint ListItemGetPosition(ListItem self);
	[LinkName("gtk_list_item_get_selectable")]
	public static extern c_int ListItemGetSelectable(ListItem self);
	[LinkName("gtk_list_item_get_selected")]
	public static extern c_int ListItemGetSelected(ListItem self);
	[LinkName("gtk_list_item_set_activatable")]
	public static extern void ListItemSetActivatable(ListItem self, c_int activatable);
	[LinkName("gtk_list_item_set_child")]
	public static extern void ListItemSetChild(ListItem self, Widget child);
	[LinkName("gtk_list_item_set_focusable")]
	public static extern void ListItemSetFocusable(ListItem self, c_int focusable);
	[LinkName("gtk_list_item_set_selectable")]
	public static extern void ListItemSetSelectable(ListItem self, c_int selectable);
	[CRepr]
	public struct ListItemClass
	{
	}
	[CRepr]
	public struct ListItemFactory;
	[CRepr]
	public struct ListItemFactoryClass
	{
	}
	[CRepr]
	public struct ListStore;
	[LinkName("gtk_list_store_new")]
	public static extern ListStore* ListStoreNew(c_int n_columns);
	[LinkName("gtk_list_store_newv")]
	public static extern ListStore* ListStoreNewv(c_int n_columns);
	[LinkName("gtk_list_store_append")]
	public static extern void ListStoreAppend(ListStore list_store, TreeIter iter);
	[LinkName("gtk_list_store_clear")]
	public static extern void ListStoreClear(ListStore list_store);
	[LinkName("gtk_list_store_insert")]
	public static extern void ListStoreInsert(ListStore list_store, TreeIter iter, c_int position);
	[LinkName("gtk_list_store_insert_after")]
	public static extern void ListStoreInsertAfter(ListStore list_store, TreeIter iter, TreeIter sibling);
	[LinkName("gtk_list_store_insert_before")]
	public static extern void ListStoreInsertBefore(ListStore list_store, TreeIter iter, TreeIter sibling);
	[LinkName("gtk_list_store_insert_with_values")]
	public static extern void ListStoreInsertWithValues(ListStore list_store, TreeIter iter, c_int position);
	[LinkName("gtk_list_store_insert_with_valuesv")]
	public static extern void ListStoreInsertWithValuesv(ListStore list_store, TreeIter iter, c_int position, c_int n_values);
	[LinkName("gtk_list_store_iter_is_valid")]
	public static extern c_int ListStoreIterIsValid(ListStore list_store, TreeIter iter);
	[LinkName("gtk_list_store_move_after")]
	public static extern void ListStoreMoveAfter(ListStore store, TreeIter iter, TreeIter position);
	[LinkName("gtk_list_store_move_before")]
	public static extern void ListStoreMoveBefore(ListStore store, TreeIter iter, TreeIter position);
	[LinkName("gtk_list_store_prepend")]
	public static extern void ListStorePrepend(ListStore list_store, TreeIter iter);
	[LinkName("gtk_list_store_remove")]
	public static extern c_int ListStoreRemove(ListStore list_store, TreeIter iter);
	[LinkName("gtk_list_store_reorder")]
	public static extern void ListStoreReorder(ListStore store);
	[LinkName("gtk_list_store_set")]
	public static extern void ListStoreSet(ListStore list_store, TreeIter iter);
	[LinkName("gtk_list_store_set_column_types")]
	public static extern void ListStoreSetColumnTypes(ListStore list_store, c_int n_columns);
	[LinkName("gtk_list_store_set_valist")]
	public static extern void ListStoreSetValist(ListStore list_store, TreeIter iter, VarArgs var_args);
	[LinkName("gtk_list_store_set_value")]
	public static extern void ListStoreSetValue(ListStore list_store, TreeIter iter, c_int column, GObject.Value value);
	[LinkName("gtk_list_store_set_valuesv")]
	public static extern void ListStoreSetValuesv(ListStore list_store, TreeIter iter, c_int n_values);
	[LinkName("gtk_list_store_swap")]
	public static extern void ListStoreSwap(ListStore store, TreeIter a, TreeIter b);
	[CRepr]
	public struct ListStoreClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ListStorePrivate
	{
	}
	public enum ListTabBehavior : c_int
	{
		all = 0,
		item = 1,
		cell = 2
	}
	[CRepr]
	public struct ListView;
	[LinkName("gtk_list_view_new")]
	public static extern Widget* ListViewNew(SelectionModel model, ListItemFactory factory);
	[LinkName("gtk_list_view_get_enable_rubberband")]
	public static extern c_int ListViewGetEnableRubberband(ListView self);
	[LinkName("gtk_list_view_get_factory")]
	public static extern ListItemFactory* ListViewGetFactory(ListView self);
	[LinkName("gtk_list_view_get_header_factory")]
	public static extern ListItemFactory* ListViewGetHeaderFactory(ListView self);
	[LinkName("gtk_list_view_get_model")]
	public static extern SelectionModel* ListViewGetModel(ListView self);
	[LinkName("gtk_list_view_get_show_separators")]
	public static extern c_int ListViewGetShowSeparators(ListView self);
	[LinkName("gtk_list_view_get_single_click_activate")]
	public static extern c_int ListViewGetSingleClickActivate(ListView self);
	[LinkName("gtk_list_view_get_tab_behavior")]
	public static extern ListTabBehavior ListViewGetTabBehavior(ListView self);
	[LinkName("gtk_list_view_set_enable_rubberband")]
	public static extern void ListViewSetEnableRubberband(ListView self, c_int enable_rubberband);
	[LinkName("gtk_list_view_set_factory")]
	public static extern void ListViewSetFactory(ListView self, ListItemFactory factory);
	[LinkName("gtk_list_view_set_header_factory")]
	public static extern void ListViewSetHeaderFactory(ListView self, ListItemFactory factory);
	[LinkName("gtk_list_view_set_model")]
	public static extern void ListViewSetModel(ListView self, SelectionModel model);
	[LinkName("gtk_list_view_set_show_separators")]
	public static extern void ListViewSetShowSeparators(ListView self, c_int show_separators);
	[LinkName("gtk_list_view_set_single_click_activate")]
	public static extern void ListViewSetSingleClickActivate(ListView self, c_int single_click_activate);
	[LinkName("gtk_list_view_set_tab_behavior")]
	public static extern void ListViewSetTabBehavior(ListView self, ListTabBehavior tab_behavior);
	[CRepr]
	public struct ListViewClass
	{
	}
	[CRepr]
	public struct LockButton;
	[LinkName("gtk_lock_button_new")]
	public static extern Widget* LockButtonNew(Gio.Permission permission);
	[LinkName("gtk_lock_button_get_permission")]
	public static extern Gio.Permission* LockButtonGetPermission(LockButton button);
	[LinkName("gtk_lock_button_set_permission")]
	public static extern void LockButtonSetPermission(LockButton button, Gio.Permission permission);
	[CRepr]
	public struct MapListModel;
	[LinkName("gtk_map_list_model_new")]
	public static extern MapListModel* MapListModelNew(Gio.ListModel model, MapListModelMapFunc map_func, void* user_data, GLib.DestroyNotify user_destroy);
	[LinkName("gtk_map_list_model_get_model")]
	public static extern Gio.ListModel* MapListModelGetModel(MapListModel self);
	[LinkName("gtk_map_list_model_has_map")]
	public static extern c_int MapListModelHasMap(MapListModel self);
	[LinkName("gtk_map_list_model_set_map_func")]
	public static extern void MapListModelSetMapFunc(MapListModel self, MapListModelMapFunc map_func, void* user_data, GLib.DestroyNotify user_destroy);
	[LinkName("gtk_map_list_model_set_model")]
	public static extern void MapListModelSetModel(MapListModel self, Gio.ListModel model);
	[CRepr]
	public struct MapListModelClass
	{
		GObject.ObjectClass parent_class;
	}
	public function GObject.Object MapListModelMapFunc(GObject.Object item, void* user_data);
	[CRepr]
	public struct MediaControls;
	[LinkName("gtk_media_controls_new")]
	public static extern Widget* MediaControlsNew(MediaStream stream);
	[LinkName("gtk_media_controls_get_media_stream")]
	public static extern MediaStream* MediaControlsGetMediaStream(MediaControls controls);
	[LinkName("gtk_media_controls_set_media_stream")]
	public static extern void MediaControlsSetMediaStream(MediaControls controls, MediaStream stream);
	[CRepr]
	public struct MediaControlsClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct MediaFile;
	[LinkName("gtk_media_file_new")]
	public static extern MediaFile* MediaFileNew();
	[LinkName("gtk_media_file_new_for_file")]
	public static extern MediaFile* MediaFileNewForFile(Gio.File file);
	[LinkName("gtk_media_file_new_for_filename")]
	public static extern MediaFile* MediaFileNewForFilename(char8* filename);
	[LinkName("gtk_media_file_new_for_input_stream")]
	public static extern MediaFile* MediaFileNewForInputStream(Gio.InputStream stream);
	[LinkName("gtk_media_file_new_for_resource")]
	public static extern MediaFile* MediaFileNewForResource(char8* resource_path);
	[LinkName("gtk_media_file_clear")]
	public static extern void MediaFileClear(MediaFile self);
	[LinkName("gtk_media_file_get_file")]
	public static extern Gio.File* MediaFileGetFile(MediaFile self);
	[LinkName("gtk_media_file_get_input_stream")]
	public static extern Gio.InputStream* MediaFileGetInputStream(MediaFile self);
	[LinkName("gtk_media_file_set_file")]
	public static extern void MediaFileSetFile(MediaFile self, Gio.File file);
	[LinkName("gtk_media_file_set_filename")]
	public static extern void MediaFileSetFilename(MediaFile self, char8* filename);
	[LinkName("gtk_media_file_set_input_stream")]
	public static extern void MediaFileSetInputStream(MediaFile self, Gio.InputStream stream);
	[LinkName("gtk_media_file_set_resource")]
	public static extern void MediaFileSetResource(MediaFile self, char8* resource_path);
	[CRepr]
	public struct MediaFileClass
	{
		MediaStreamClass parent_class;
	}
	[CRepr]
	public struct MediaStream;
	[LinkName("gtk_media_stream_ended")]
	public static extern void MediaStreamEnded(MediaStream self);
	[LinkName("gtk_media_stream_error")]
	public static extern void MediaStreamError(MediaStream self, GLib.Quark domain, c_int code, char8* format);
	[LinkName("gtk_media_stream_error_valist")]
	public static extern void MediaStreamErrorValist(MediaStream self, GLib.Quark domain, c_int code, char8* format, VarArgs args);
	[LinkName("gtk_media_stream_gerror")]
	public static extern void MediaStreamGerror(MediaStream self, GLib.Error error);
	[LinkName("gtk_media_stream_get_duration")]
	public static extern c_longlong MediaStreamGetDuration(MediaStream self);
	[LinkName("gtk_media_stream_get_ended")]
	public static extern c_int MediaStreamGetEnded(MediaStream self);
	[LinkName("gtk_media_stream_get_error")]
	public static extern GLib.Error* MediaStreamGetError(MediaStream self);
	[LinkName("gtk_media_stream_get_loop")]
	public static extern c_int MediaStreamGetLoop(MediaStream self);
	[LinkName("gtk_media_stream_get_muted")]
	public static extern c_int MediaStreamGetMuted(MediaStream self);
	[LinkName("gtk_media_stream_get_playing")]
	public static extern c_int MediaStreamGetPlaying(MediaStream self);
	[LinkName("gtk_media_stream_get_timestamp")]
	public static extern c_longlong MediaStreamGetTimestamp(MediaStream self);
	[LinkName("gtk_media_stream_get_volume")]
	public static extern double MediaStreamGetVolume(MediaStream self);
	[LinkName("gtk_media_stream_has_audio")]
	public static extern c_int MediaStreamHasAudio(MediaStream self);
	[LinkName("gtk_media_stream_has_video")]
	public static extern c_int MediaStreamHasVideo(MediaStream self);
	[LinkName("gtk_media_stream_is_prepared")]
	public static extern c_int MediaStreamIsPrepared(MediaStream self);
	[LinkName("gtk_media_stream_is_seekable")]
	public static extern c_int MediaStreamIsSeekable(MediaStream self);
	[LinkName("gtk_media_stream_is_seeking")]
	public static extern c_int MediaStreamIsSeeking(MediaStream self);
	[LinkName("gtk_media_stream_pause")]
	public static extern void MediaStreamPause(MediaStream self);
	[LinkName("gtk_media_stream_play")]
	public static extern void MediaStreamPlay(MediaStream self);
	[LinkName("gtk_media_stream_prepared")]
	public static extern void MediaStreamPrepared(MediaStream self, c_int has_audio, c_int has_video, c_int seekable, c_longlong duration);
	[LinkName("gtk_media_stream_realize")]
	public static extern void MediaStreamRealize(MediaStream self, Gdk.Surface surface);
	[LinkName("gtk_media_stream_seek")]
	public static extern void MediaStreamSeek(MediaStream self, c_longlong timestamp);
	[LinkName("gtk_media_stream_seek_failed")]
	public static extern void MediaStreamSeekFailed(MediaStream self);
	[LinkName("gtk_media_stream_seek_success")]
	public static extern void MediaStreamSeekSuccess(MediaStream self);
	[LinkName("gtk_media_stream_set_loop")]
	public static extern void MediaStreamSetLoop(MediaStream self, c_int loop);
	[LinkName("gtk_media_stream_set_muted")]
	public static extern void MediaStreamSetMuted(MediaStream self, c_int muted);
	[LinkName("gtk_media_stream_set_playing")]
	public static extern void MediaStreamSetPlaying(MediaStream self, c_int playing);
	[LinkName("gtk_media_stream_set_volume")]
	public static extern void MediaStreamSetVolume(MediaStream self, double volume);
	[LinkName("gtk_media_stream_stream_ended")]
	public static extern void MediaStreamStreamEnded(MediaStream self);
	[LinkName("gtk_media_stream_stream_prepared")]
	public static extern void MediaStreamStreamPrepared(MediaStream self, c_int has_audio, c_int has_video, c_int seekable, c_longlong duration);
	[LinkName("gtk_media_stream_stream_unprepared")]
	public static extern void MediaStreamStreamUnprepared(MediaStream self);
	[LinkName("gtk_media_stream_unprepared")]
	public static extern void MediaStreamUnprepared(MediaStream self);
	[LinkName("gtk_media_stream_unrealize")]
	public static extern void MediaStreamUnrealize(MediaStream self, Gdk.Surface surface);
	[LinkName("gtk_media_stream_update")]
	public static extern void MediaStreamUpdate(MediaStream self, c_longlong timestamp);
	[CRepr]
	public struct MediaStreamClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct MenuButton;
	[LinkName("gtk_menu_button_new")]
	public static extern Widget* MenuButtonNew();
	[LinkName("gtk_menu_button_get_active")]
	public static extern c_int MenuButtonGetActive(MenuButton menu_button);
	[LinkName("gtk_menu_button_get_always_show_arrow")]
	public static extern c_int MenuButtonGetAlwaysShowArrow(MenuButton menu_button);
	[LinkName("gtk_menu_button_get_can_shrink")]
	public static extern c_int MenuButtonGetCanShrink(MenuButton menu_button);
	[LinkName("gtk_menu_button_get_child")]
	public static extern Widget* MenuButtonGetChild(MenuButton menu_button);
	[LinkName("gtk_menu_button_get_direction")]
	public static extern ArrowType MenuButtonGetDirection(MenuButton menu_button);
	[LinkName("gtk_menu_button_get_has_frame")]
	public static extern c_int MenuButtonGetHasFrame(MenuButton menu_button);
	[LinkName("gtk_menu_button_get_icon_name")]
	public static extern char8** MenuButtonGetIconName(MenuButton menu_button);
	[LinkName("gtk_menu_button_get_label")]
	public static extern char8** MenuButtonGetLabel(MenuButton menu_button);
	[LinkName("gtk_menu_button_get_menu_model")]
	public static extern Gio.MenuModel* MenuButtonGetMenuModel(MenuButton menu_button);
	[LinkName("gtk_menu_button_get_popover")]
	public static extern Popover* MenuButtonGetPopover(MenuButton menu_button);
	[LinkName("gtk_menu_button_get_primary")]
	public static extern c_int MenuButtonGetPrimary(MenuButton menu_button);
	[LinkName("gtk_menu_button_get_use_underline")]
	public static extern c_int MenuButtonGetUseUnderline(MenuButton menu_button);
	[LinkName("gtk_menu_button_popdown")]
	public static extern void MenuButtonPopdown(MenuButton menu_button);
	[LinkName("gtk_menu_button_popup")]
	public static extern void MenuButtonPopup(MenuButton menu_button);
	[LinkName("gtk_menu_button_set_active")]
	public static extern void MenuButtonSetActive(MenuButton menu_button, c_int active);
	[LinkName("gtk_menu_button_set_always_show_arrow")]
	public static extern void MenuButtonSetAlwaysShowArrow(MenuButton menu_button, c_int always_show_arrow);
	[LinkName("gtk_menu_button_set_can_shrink")]
	public static extern void MenuButtonSetCanShrink(MenuButton menu_button, c_int can_shrink);
	[LinkName("gtk_menu_button_set_child")]
	public static extern void MenuButtonSetChild(MenuButton menu_button, Widget child);
	[LinkName("gtk_menu_button_set_create_popup_func")]
	public static extern void MenuButtonSetCreatePopupFunc(MenuButton menu_button, MenuButtonCreatePopupFunc func, void* user_data, GLib.DestroyNotify destroy_notify);
	[LinkName("gtk_menu_button_set_direction")]
	public static extern void MenuButtonSetDirection(MenuButton menu_button, ArrowType direction);
	[LinkName("gtk_menu_button_set_has_frame")]
	public static extern void MenuButtonSetHasFrame(MenuButton menu_button, c_int has_frame);
	[LinkName("gtk_menu_button_set_icon_name")]
	public static extern void MenuButtonSetIconName(MenuButton menu_button, char8* icon_name);
	[LinkName("gtk_menu_button_set_label")]
	public static extern void MenuButtonSetLabel(MenuButton menu_button, char8* label);
	[LinkName("gtk_menu_button_set_menu_model")]
	public static extern void MenuButtonSetMenuModel(MenuButton menu_button, Gio.MenuModel menu_model);
	[LinkName("gtk_menu_button_set_popover")]
	public static extern void MenuButtonSetPopover(MenuButton menu_button, Widget popover);
	[LinkName("gtk_menu_button_set_primary")]
	public static extern void MenuButtonSetPrimary(MenuButton menu_button, c_int primary);
	[LinkName("gtk_menu_button_set_use_underline")]
	public static extern void MenuButtonSetUseUnderline(MenuButton menu_button, c_int use_underline);
	public function void MenuButtonCreatePopupFunc(MenuButton menu_button, void* user_data);
	[CRepr]
	public struct MessageDialog;
	[LinkName("gtk_message_dialog_new")]
	public static extern Widget* MessageDialogNew(Window parent, DialogFlags flags, MessageType type, ButtonsType buttons, char8* message_format);
	[LinkName("gtk_message_dialog_new_with_markup")]
	public static extern Widget* MessageDialogNewWithMarkup(Window parent, DialogFlags flags, MessageType type, ButtonsType buttons, char8* message_format);
	[LinkName("gtk_message_dialog_format_secondary_markup")]
	public static extern void MessageDialogFormatSecondaryMarkup(MessageDialog message_dialog, char8* message_format);
	[LinkName("gtk_message_dialog_format_secondary_text")]
	public static extern void MessageDialogFormatSecondaryText(MessageDialog message_dialog, char8* message_format);
	[LinkName("gtk_message_dialog_get_message_area")]
	public static extern Widget* MessageDialogGetMessageArea(MessageDialog message_dialog);
	[LinkName("gtk_message_dialog_set_markup")]
	public static extern void MessageDialogSetMarkup(MessageDialog message_dialog, char8* str);
	[CRepr]
	public struct MessageDialogClass
	{
	}
	public enum MessageType : c_int
	{
		info = 0,
		warning = 1,
		question = 2,
		error = 3,
		other = 4
	}
	[CRepr]
	public struct MnemonicAction;
	[CRepr]
	public struct MnemonicActionClass
	{
	}
	[CRepr]
	public struct MnemonicTrigger;
	[LinkName("gtk_mnemonic_trigger_new")]
	public static extern MnemonicTrigger* MnemonicTriggerNew(c_uint keyval);
	[LinkName("gtk_mnemonic_trigger_get_keyval")]
	public static extern c_uint MnemonicTriggerGetKeyval(MnemonicTrigger self);
	[CRepr]
	public struct MnemonicTriggerClass
	{
	}
	[CRepr]
	public struct MountOperation;
	[LinkName("gtk_mount_operation_new")]
	public static extern Gio.MountOperation* MountOperationNew(Window parent);
	[LinkName("gtk_mount_operation_get_display")]
	public static extern Gdk.Display* MountOperationGetDisplay(MountOperation op);
	[LinkName("gtk_mount_operation_get_parent")]
	public static extern Window* MountOperationGetParent(MountOperation op);
	[LinkName("gtk_mount_operation_is_showing")]
	public static extern c_int MountOperationIsShowing(MountOperation op);
	[LinkName("gtk_mount_operation_set_display")]
	public static extern void MountOperationSetDisplay(MountOperation op, Gdk.Display display);
	[LinkName("gtk_mount_operation_set_parent")]
	public static extern void MountOperationSetParent(MountOperation op, Window parent);
	[CRepr]
	public struct MountOperationClass
	{
		Gio.MountOperationClass parent_class;
	}
	[CRepr]
	public struct MountOperationPrivate
	{
	}
	public enum MovementStep : c_int
	{
		logical_positions = 0,
		visual_positions = 1,
		words = 2,
		display_lines = 3,
		display_line_ends = 4,
		paragraphs = 5,
		paragraph_ends = 6,
		pages = 7,
		buffer_ends = 8,
		horizontal_pages = 9
	}
	[CRepr]
	public struct MultiFilter;
	[LinkName("gtk_multi_filter_append")]
	public static extern void MultiFilterAppend(MultiFilter self, Filter filter);
	[LinkName("gtk_multi_filter_remove")]
	public static extern void MultiFilterRemove(MultiFilter self, c_uint position);
	[CRepr]
	public struct MultiFilterClass
	{
	}
	[CRepr]
	public struct MultiSelection;
	[LinkName("gtk_multi_selection_new")]
	public static extern MultiSelection* MultiSelectionNew(Gio.ListModel model);
	[LinkName("gtk_multi_selection_get_model")]
	public static extern Gio.ListModel* MultiSelectionGetModel(MultiSelection self);
	[LinkName("gtk_multi_selection_set_model")]
	public static extern void MultiSelectionSetModel(MultiSelection self, Gio.ListModel model);
	[CRepr]
	public struct MultiSelectionClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct MultiSorter;
	[LinkName("gtk_multi_sorter_new")]
	public static extern MultiSorter* MultiSorterNew();
	[LinkName("gtk_multi_sorter_append")]
	public static extern void MultiSorterAppend(MultiSorter self, Sorter sorter);
	[LinkName("gtk_multi_sorter_remove")]
	public static extern void MultiSorterRemove(MultiSorter self, c_uint position);
	[CRepr]
	public struct MultiSorterClass
	{
		SorterClass parent_class;
	}
	[CRepr]
	public struct NamedAction;
	[LinkName("gtk_named_action_new")]
	public static extern NamedAction* NamedActionNew(char8* name);
	[LinkName("gtk_named_action_get_action_name")]
	public static extern char8** NamedActionGetActionName(NamedAction self);
	[CRepr]
	public struct NamedActionClass
	{
	}
	[CRepr]
	public struct Native
	{	}
	[CRepr]
	public struct NativeDialog;
	[LinkName("gtk_native_dialog_destroy")]
	public static extern void NativeDialogDestroy(NativeDialog self);
	[LinkName("gtk_native_dialog_get_modal")]
	public static extern c_int NativeDialogGetModal(NativeDialog self);
	[LinkName("gtk_native_dialog_get_title")]
	public static extern char8** NativeDialogGetTitle(NativeDialog self);
	[LinkName("gtk_native_dialog_get_transient_for")]
	public static extern Window* NativeDialogGetTransientFor(NativeDialog self);
	[LinkName("gtk_native_dialog_get_visible")]
	public static extern c_int NativeDialogGetVisible(NativeDialog self);
	[LinkName("gtk_native_dialog_hide")]
	public static extern void NativeDialogHide(NativeDialog self);
	[LinkName("gtk_native_dialog_set_modal")]
	public static extern void NativeDialogSetModal(NativeDialog self, c_int modal);
	[LinkName("gtk_native_dialog_set_title")]
	public static extern void NativeDialogSetTitle(NativeDialog self, char8* title);
	[LinkName("gtk_native_dialog_set_transient_for")]
	public static extern void NativeDialogSetTransientFor(NativeDialog self, Window parent);
	[LinkName("gtk_native_dialog_show")]
	public static extern void NativeDialogShow(NativeDialog self);
	[CRepr]
	public struct NativeDialogClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct NativeInterface
	{
	}
	public enum NaturalWrapMode : c_int
	{
		inherit = 0,
		none = 1,
		word = 2
	}
	[CRepr]
	public struct NeverTrigger;
	[CRepr]
	public struct NeverTriggerClass
	{
	}
	[CRepr]
	public struct NoSelection;
	[LinkName("gtk_no_selection_new")]
	public static extern NoSelection* NoSelectionNew(Gio.ListModel model);
	[LinkName("gtk_no_selection_get_model")]
	public static extern Gio.ListModel* NoSelectionGetModel(NoSelection self);
	[LinkName("gtk_no_selection_set_model")]
	public static extern void NoSelectionSetModel(NoSelection self, Gio.ListModel model);
	[CRepr]
	public struct NoSelectionClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct Notebook;
	[LinkName("gtk_notebook_new")]
	public static extern Widget* NotebookNew();
	[LinkName("gtk_notebook_append_page")]
	public static extern c_int NotebookAppendPage(Notebook notebook, Widget child, Widget tab_label);
	[LinkName("gtk_notebook_append_page_menu")]
	public static extern c_int NotebookAppendPageMenu(Notebook notebook, Widget child, Widget tab_label, Widget menu_label);
	[LinkName("gtk_notebook_detach_tab")]
	public static extern void NotebookDetachTab(Notebook notebook, Widget child);
	[LinkName("gtk_notebook_get_action_widget")]
	public static extern Widget* NotebookGetActionWidget(Notebook notebook, PackType pack_type);
	[LinkName("gtk_notebook_get_current_page")]
	public static extern c_int NotebookGetCurrentPage(Notebook notebook);
	[LinkName("gtk_notebook_get_group_name")]
	public static extern char8** NotebookGetGroupName(Notebook notebook);
	[LinkName("gtk_notebook_get_menu_label")]
	public static extern Widget* NotebookGetMenuLabel(Notebook notebook, Widget child);
	[LinkName("gtk_notebook_get_menu_label_text")]
	public static extern char8** NotebookGetMenuLabelText(Notebook notebook, Widget child);
	[LinkName("gtk_notebook_get_n_pages")]
	public static extern c_int NotebookGetNPages(Notebook notebook);
	[LinkName("gtk_notebook_get_nth_page")]
	public static extern Widget* NotebookGetNthPage(Notebook notebook, c_int page_num);
	[LinkName("gtk_notebook_get_page")]
	public static extern NotebookPage* NotebookGetPage(Notebook notebook, Widget child);
	[LinkName("gtk_notebook_get_pages")]
	public static extern Gio.ListModel* NotebookGetPages(Notebook notebook);
	[LinkName("gtk_notebook_get_scrollable")]
	public static extern c_int NotebookGetScrollable(Notebook notebook);
	[LinkName("gtk_notebook_get_show_border")]
	public static extern c_int NotebookGetShowBorder(Notebook notebook);
	[LinkName("gtk_notebook_get_show_tabs")]
	public static extern c_int NotebookGetShowTabs(Notebook notebook);
	[LinkName("gtk_notebook_get_tab_detachable")]
	public static extern c_int NotebookGetTabDetachable(Notebook notebook, Widget child);
	[LinkName("gtk_notebook_get_tab_label")]
	public static extern Widget* NotebookGetTabLabel(Notebook notebook, Widget child);
	[LinkName("gtk_notebook_get_tab_label_text")]
	public static extern char8** NotebookGetTabLabelText(Notebook notebook, Widget child);
	[LinkName("gtk_notebook_get_tab_pos")]
	public static extern PositionType NotebookGetTabPos(Notebook notebook);
	[LinkName("gtk_notebook_get_tab_reorderable")]
	public static extern c_int NotebookGetTabReorderable(Notebook notebook, Widget child);
	[LinkName("gtk_notebook_insert_page")]
	public static extern c_int NotebookInsertPage(Notebook notebook, Widget child, Widget tab_label, c_int position);
	[LinkName("gtk_notebook_insert_page_menu")]
	public static extern c_int NotebookInsertPageMenu(Notebook notebook, Widget child, Widget tab_label, Widget menu_label, c_int position);
	[LinkName("gtk_notebook_next_page")]
	public static extern void NotebookNextPage(Notebook notebook);
	[LinkName("gtk_notebook_page_num")]
	public static extern c_int NotebookPageNum(Notebook notebook, Widget child);
	[LinkName("gtk_notebook_popup_disable")]
	public static extern void NotebookPopupDisable(Notebook notebook);
	[LinkName("gtk_notebook_popup_enable")]
	public static extern void NotebookPopupEnable(Notebook notebook);
	[LinkName("gtk_notebook_prepend_page")]
	public static extern c_int NotebookPrependPage(Notebook notebook, Widget child, Widget tab_label);
	[LinkName("gtk_notebook_prepend_page_menu")]
	public static extern c_int NotebookPrependPageMenu(Notebook notebook, Widget child, Widget tab_label, Widget menu_label);
	[LinkName("gtk_notebook_prev_page")]
	public static extern void NotebookPrevPage(Notebook notebook);
	[LinkName("gtk_notebook_remove_page")]
	public static extern void NotebookRemovePage(Notebook notebook, c_int page_num);
	[LinkName("gtk_notebook_reorder_child")]
	public static extern void NotebookReorderChild(Notebook notebook, Widget child, c_int position);
	[LinkName("gtk_notebook_set_action_widget")]
	public static extern void NotebookSetActionWidget(Notebook notebook, Widget widget, PackType pack_type);
	[LinkName("gtk_notebook_set_current_page")]
	public static extern void NotebookSetCurrentPage(Notebook notebook, c_int page_num);
	[LinkName("gtk_notebook_set_group_name")]
	public static extern void NotebookSetGroupName(Notebook notebook, char8* group_name);
	[LinkName("gtk_notebook_set_menu_label")]
	public static extern void NotebookSetMenuLabel(Notebook notebook, Widget child, Widget menu_label);
	[LinkName("gtk_notebook_set_menu_label_text")]
	public static extern void NotebookSetMenuLabelText(Notebook notebook, Widget child, char8* menu_text);
	[LinkName("gtk_notebook_set_scrollable")]
	public static extern void NotebookSetScrollable(Notebook notebook, c_int scrollable);
	[LinkName("gtk_notebook_set_show_border")]
	public static extern void NotebookSetShowBorder(Notebook notebook, c_int show_border);
	[LinkName("gtk_notebook_set_show_tabs")]
	public static extern void NotebookSetShowTabs(Notebook notebook, c_int show_tabs);
	[LinkName("gtk_notebook_set_tab_detachable")]
	public static extern void NotebookSetTabDetachable(Notebook notebook, Widget child, c_int detachable);
	[LinkName("gtk_notebook_set_tab_label")]
	public static extern void NotebookSetTabLabel(Notebook notebook, Widget child, Widget tab_label);
	[LinkName("gtk_notebook_set_tab_label_text")]
	public static extern void NotebookSetTabLabelText(Notebook notebook, Widget child, char8* tab_text);
	[LinkName("gtk_notebook_set_tab_pos")]
	public static extern void NotebookSetTabPos(Notebook notebook, PositionType pos);
	[LinkName("gtk_notebook_set_tab_reorderable")]
	public static extern void NotebookSetTabReorderable(Notebook notebook, Widget child, c_int reorderable);
	[CRepr]
	public struct NotebookPage;
	[LinkName("gtk_notebook_page_get_child")]
	public static extern Widget* NotebookPageGetChild(NotebookPage page);
	public enum NotebookTab : c_int
	{
		first = 0,
		last = 1
	}
	[CRepr]
	public struct NothingAction;
	[CRepr]
	public struct NothingActionClass
	{
	}
	public enum NumberUpLayout : c_int
	{
		lrtb = 0,
		lrbt = 1,
		rltb = 2,
		rlbt = 3,
		tblr = 4,
		tbrl = 5,
		btlr = 6,
		btrl = 7
	}
	[CRepr]
	public struct NumericSorter;
	[LinkName("gtk_numeric_sorter_new")]
	public static extern NumericSorter* NumericSorterNew(Expression expression);
	[LinkName("gtk_numeric_sorter_get_expression")]
	public static extern Expression* NumericSorterGetExpression(NumericSorter self);
	[LinkName("gtk_numeric_sorter_get_sort_order")]
	public static extern SortType NumericSorterGetSortOrder(NumericSorter self);
	[LinkName("gtk_numeric_sorter_set_expression")]
	public static extern void NumericSorterSetExpression(NumericSorter self, Expression expression);
	[LinkName("gtk_numeric_sorter_set_sort_order")]
	public static extern void NumericSorterSetSortOrder(NumericSorter self, SortType sort_order);
	[CRepr]
	public struct NumericSorterClass
	{
		SorterClass parent_class;
	}
	[CRepr]
	public struct ObjectExpression;
	[LinkName("gtk_object_expression_new")]
	public static extern ObjectExpression* ObjectExpressionNew(GObject.Object object);
	[LinkName("gtk_object_expression_get_object")]
	public static extern GObject.Object* ObjectExpressionGetObject(ObjectExpression expression);
	public enum Ordering : c_int
	{
		smaller = -1,
		equal = 0,
		larger = 1
	}
	[CRepr]
	public struct Orientable
	{	}
	[CRepr]
	public struct OrientableIface
	{
		GObject.TypeInterface base_iface;
	}
	public enum Orientation : c_int
	{
		horizontal = 0,
		vertical = 1
	}
	public enum Overflow : c_int
	{
		visible = 0,
		hidden = 1
	}
	[CRepr]
	public struct Overlay;
	[LinkName("gtk_overlay_new")]
	public static extern Widget* OverlayNew();
	[LinkName("gtk_overlay_add_overlay")]
	public static extern void OverlayAddOverlay(Overlay overlay, Widget widget);
	[LinkName("gtk_overlay_get_child")]
	public static extern Widget* OverlayGetChild(Overlay overlay);
	[LinkName("gtk_overlay_get_clip_overlay")]
	public static extern c_int OverlayGetClipOverlay(Overlay overlay, Widget widget);
	[LinkName("gtk_overlay_get_measure_overlay")]
	public static extern c_int OverlayGetMeasureOverlay(Overlay overlay, Widget widget);
	[LinkName("gtk_overlay_remove_overlay")]
	public static extern void OverlayRemoveOverlay(Overlay overlay, Widget widget);
	[LinkName("gtk_overlay_set_child")]
	public static extern void OverlaySetChild(Overlay overlay, Widget child);
	[LinkName("gtk_overlay_set_clip_overlay")]
	public static extern void OverlaySetClipOverlay(Overlay overlay, Widget widget, c_int clip_overlay);
	[LinkName("gtk_overlay_set_measure_overlay")]
	public static extern void OverlaySetMeasureOverlay(Overlay overlay, Widget widget, c_int measure);
	[CRepr]
	public struct OverlayLayout;
	[LinkName("gtk_overlay_layout_new")]
	public static extern LayoutManager* OverlayLayoutNew();
	[CRepr]
	public struct OverlayLayoutChild;
	[LinkName("gtk_overlay_layout_child_get_clip_overlay")]
	public static extern c_int OverlayLayoutChildGetClipOverlay(OverlayLayoutChild child);
	[LinkName("gtk_overlay_layout_child_get_measure")]
	public static extern c_int OverlayLayoutChildGetMeasure(OverlayLayoutChild child);
	[LinkName("gtk_overlay_layout_child_set_clip_overlay")]
	public static extern void OverlayLayoutChildSetClipOverlay(OverlayLayoutChild child, c_int clip_overlay);
	[LinkName("gtk_overlay_layout_child_set_measure")]
	public static extern void OverlayLayoutChildSetMeasure(OverlayLayoutChild child, c_int measure);
	[CRepr]
	public struct OverlayLayoutChildClass
	{
		LayoutChildClass parent_class;
	}
	[CRepr]
	public struct OverlayLayoutClass
	{
		LayoutManagerClass parent_class;
	}
	public enum PackType : c_int
	{
		start = 0,
		end = 1
	}
	[CRepr]
	public struct PadActionEntry
	{
		PadActionType type;
		c_int index;
		c_int mode;
		char8* label;
		char8* action_name;
	}
	public enum PadActionType : c_int
	{
		button = 0,
		ring = 1,
		strip = 2
	}
	[CRepr]
	public struct PadController;
	[LinkName("gtk_pad_controller_new")]
	public static extern PadController* PadControllerNew(Gio.ActionGroup group, Gdk.Device pad);
	[LinkName("gtk_pad_controller_set_action")]
	public static extern void PadControllerSetAction(PadController controller, PadActionType type, c_int index, c_int mode, char8* label, char8* action_name);
	[LinkName("gtk_pad_controller_set_action_entries")]
	public static extern void PadControllerSetActionEntries(PadController controller, c_int n_entries);
	[CRepr]
	public struct PadControllerClass
	{
	}
	public enum PageOrientation : c_int
	{
		portrait = 0,
		landscape = 1,
		reverse_portrait = 2,
		reverse_landscape = 3
	}
	[CRepr]
	public struct PageRange
	{
		c_int start;
		c_int end;
	}
	public enum PageSet : c_int
	{
		all = 0,
		even = 1,
		odd = 2
	}
	[CRepr]
	public struct PageSetup;
	[LinkName("gtk_page_setup_new")]
	public static extern PageSetup* PageSetupNew();
	[LinkName("gtk_page_setup_new_from_file")]
	public static extern PageSetup* PageSetupNewFromFile(char8* file_name);
	[LinkName("gtk_page_setup_new_from_gvariant")]
	public static extern PageSetup* PageSetupNewFromGvariant(GLib.Variant variant);
	[LinkName("gtk_page_setup_new_from_key_file")]
	public static extern PageSetup* PageSetupNewFromKeyFile(GLib.KeyFile key_file, char8* group_name);
	[LinkName("gtk_page_setup_copy")]
	public static extern PageSetup* PageSetupCopy(PageSetup other);
	[LinkName("gtk_page_setup_get_bottom_margin")]
	public static extern double PageSetupGetBottomMargin(PageSetup setup, Unit unit);
	[LinkName("gtk_page_setup_get_left_margin")]
	public static extern double PageSetupGetLeftMargin(PageSetup setup, Unit unit);
	[LinkName("gtk_page_setup_get_orientation")]
	public static extern PageOrientation PageSetupGetOrientation(PageSetup setup);
	[LinkName("gtk_page_setup_get_page_height")]
	public static extern double PageSetupGetPageHeight(PageSetup setup, Unit unit);
	[LinkName("gtk_page_setup_get_page_width")]
	public static extern double PageSetupGetPageWidth(PageSetup setup, Unit unit);
	[LinkName("gtk_page_setup_get_paper_height")]
	public static extern double PageSetupGetPaperHeight(PageSetup setup, Unit unit);
	[LinkName("gtk_page_setup_get_paper_size")]
	public static extern PaperSize* PageSetupGetPaperSize(PageSetup setup);
	[LinkName("gtk_page_setup_get_paper_width")]
	public static extern double PageSetupGetPaperWidth(PageSetup setup, Unit unit);
	[LinkName("gtk_page_setup_get_right_margin")]
	public static extern double PageSetupGetRightMargin(PageSetup setup, Unit unit);
	[LinkName("gtk_page_setup_get_top_margin")]
	public static extern double PageSetupGetTopMargin(PageSetup setup, Unit unit);
	[LinkName("gtk_page_setup_load_file")]
	public static extern c_int PageSetupLoadFile(PageSetup setup, char8* file_name);
	[LinkName("gtk_page_setup_load_key_file")]
	public static extern c_int PageSetupLoadKeyFile(PageSetup setup, GLib.KeyFile key_file, char8* group_name);
	[LinkName("gtk_page_setup_set_bottom_margin")]
	public static extern void PageSetupSetBottomMargin(PageSetup setup, double margin, Unit unit);
	[LinkName("gtk_page_setup_set_left_margin")]
	public static extern void PageSetupSetLeftMargin(PageSetup setup, double margin, Unit unit);
	[LinkName("gtk_page_setup_set_orientation")]
	public static extern void PageSetupSetOrientation(PageSetup setup, PageOrientation orientation);
	[LinkName("gtk_page_setup_set_paper_size")]
	public static extern void PageSetupSetPaperSize(PageSetup setup, PaperSize size);
	[LinkName("gtk_page_setup_set_paper_size_and_default_margins")]
	public static extern void PageSetupSetPaperSizeAndDefaultMargins(PageSetup setup, PaperSize size);
	[LinkName("gtk_page_setup_set_right_margin")]
	public static extern void PageSetupSetRightMargin(PageSetup setup, double margin, Unit unit);
	[LinkName("gtk_page_setup_set_top_margin")]
	public static extern void PageSetupSetTopMargin(PageSetup setup, double margin, Unit unit);
	[LinkName("gtk_page_setup_to_file")]
	public static extern c_int PageSetupToFile(PageSetup setup, char8* file_name);
	[LinkName("gtk_page_setup_to_gvariant")]
	public static extern GLib.Variant* PageSetupToGvariant(PageSetup setup);
	[LinkName("gtk_page_setup_to_key_file")]
	public static extern void PageSetupToKeyFile(PageSetup setup, GLib.KeyFile key_file, char8* group_name);
	public function void PageSetupDoneFunc(PageSetup page_setup, void* data);
	[CRepr]
	public struct PageSetupUnixDialog;
	[LinkName("gtk_page_setup_unix_dialog_new")]
	public static extern Widget* PageSetupUnixDialogNew(char8* title, Window parent);
	[LinkName("gtk_page_setup_unix_dialog_get_page_setup")]
	public static extern PageSetup* PageSetupUnixDialogGetPageSetup(PageSetupUnixDialog dialog);
	[LinkName("gtk_page_setup_unix_dialog_get_print_settings")]
	public static extern PrintSettings* PageSetupUnixDialogGetPrintSettings(PageSetupUnixDialog dialog);
	[LinkName("gtk_page_setup_unix_dialog_set_page_setup")]
	public static extern void PageSetupUnixDialogSetPageSetup(PageSetupUnixDialog dialog, PageSetup page_setup);
	[LinkName("gtk_page_setup_unix_dialog_set_print_settings")]
	public static extern void PageSetupUnixDialogSetPrintSettings(PageSetupUnixDialog dialog, PrintSettings print_settings);
	public enum PanDirection : c_int
	{
		left = 0,
		right = 1,
		up = 2,
		down = 3
	}
	[CRepr]
	public struct Paned;
	[LinkName("gtk_paned_new")]
	public static extern Widget* PanedNew(Orientation orientation);
	[LinkName("gtk_paned_get_end_child")]
	public static extern Widget* PanedGetEndChild(Paned paned);
	[LinkName("gtk_paned_get_position")]
	public static extern c_int PanedGetPosition(Paned paned);
	[LinkName("gtk_paned_get_resize_end_child")]
	public static extern c_int PanedGetResizeEndChild(Paned paned);
	[LinkName("gtk_paned_get_resize_start_child")]
	public static extern c_int PanedGetResizeStartChild(Paned paned);
	[LinkName("gtk_paned_get_shrink_end_child")]
	public static extern c_int PanedGetShrinkEndChild(Paned paned);
	[LinkName("gtk_paned_get_shrink_start_child")]
	public static extern c_int PanedGetShrinkStartChild(Paned paned);
	[LinkName("gtk_paned_get_start_child")]
	public static extern Widget* PanedGetStartChild(Paned paned);
	[LinkName("gtk_paned_get_wide_handle")]
	public static extern c_int PanedGetWideHandle(Paned paned);
	[LinkName("gtk_paned_set_end_child")]
	public static extern void PanedSetEndChild(Paned paned, Widget child);
	[LinkName("gtk_paned_set_position")]
	public static extern void PanedSetPosition(Paned paned, c_int position);
	[LinkName("gtk_paned_set_resize_end_child")]
	public static extern void PanedSetResizeEndChild(Paned paned, c_int resize);
	[LinkName("gtk_paned_set_resize_start_child")]
	public static extern void PanedSetResizeStartChild(Paned paned, c_int resize);
	[LinkName("gtk_paned_set_shrink_end_child")]
	public static extern void PanedSetShrinkEndChild(Paned paned, c_int resize);
	[LinkName("gtk_paned_set_shrink_start_child")]
	public static extern void PanedSetShrinkStartChild(Paned paned, c_int resize);
	[LinkName("gtk_paned_set_start_child")]
	public static extern void PanedSetStartChild(Paned paned, Widget child);
	[LinkName("gtk_paned_set_wide_handle")]
	public static extern void PanedSetWideHandle(Paned paned, c_int wide);
	[CRepr]
	public struct PaperSize
	{
	}
	[CRepr]
	public struct ParamSpecExpression;
	[CRepr]
	public struct PasswordEntry;
	[LinkName("gtk_password_entry_new")]
	public static extern Widget* PasswordEntryNew();
	[LinkName("gtk_password_entry_get_extra_menu")]
	public static extern Gio.MenuModel* PasswordEntryGetExtraMenu(PasswordEntry entry);
	[LinkName("gtk_password_entry_get_show_peek_icon")]
	public static extern c_int PasswordEntryGetShowPeekIcon(PasswordEntry entry);
	[LinkName("gtk_password_entry_set_extra_menu")]
	public static extern void PasswordEntrySetExtraMenu(PasswordEntry entry, Gio.MenuModel model);
	[LinkName("gtk_password_entry_set_show_peek_icon")]
	public static extern void PasswordEntrySetShowPeekIcon(PasswordEntry entry, c_int show_peek_icon);
	[CRepr]
	public struct PasswordEntryBuffer;
	[LinkName("gtk_password_entry_buffer_new")]
	public static extern EntryBuffer* PasswordEntryBufferNew();
	[CRepr]
	public struct PasswordEntryBufferClass
	{
		EntryBufferClass parent_class;
	}
	[CRepr]
	public struct PasswordEntryClass
	{
	}
	[CRepr]
	public enum PickFlags : int
	{
		default_ = 0,
		insensitive = 1,
		non_targetable = 2
	}
	[CRepr]
	public struct Picture;
	[LinkName("gtk_picture_new")]
	public static extern Widget* PictureNew();
	[LinkName("gtk_picture_new_for_file")]
	public static extern Widget* PictureNewForFile(Gio.File file);
	[LinkName("gtk_picture_new_for_filename")]
	public static extern Widget* PictureNewForFilename(char8* filename);
	[LinkName("gtk_picture_new_for_paintable")]
	public static extern Widget* PictureNewForPaintable(Gdk.Paintable paintable);
	[LinkName("gtk_picture_new_for_pixbuf")]
	public static extern Widget* PictureNewForPixbuf(GdkPixbuf.Pixbuf pixbuf);
	[LinkName("gtk_picture_new_for_resource")]
	public static extern Widget* PictureNewForResource(char8* resource_path);
	[LinkName("gtk_picture_get_alternative_text")]
	public static extern char8** PictureGetAlternativeText(Picture self);
	[LinkName("gtk_picture_get_can_shrink")]
	public static extern c_int PictureGetCanShrink(Picture self);
	[LinkName("gtk_picture_get_content_fit")]
	public static extern ContentFit PictureGetContentFit(Picture self);
	[LinkName("gtk_picture_get_file")]
	public static extern Gio.File* PictureGetFile(Picture self);
	[LinkName("gtk_picture_get_keep_aspect_ratio")]
	public static extern c_int PictureGetKeepAspectRatio(Picture self);
	[LinkName("gtk_picture_get_paintable")]
	public static extern Gdk.Paintable* PictureGetPaintable(Picture self);
	[LinkName("gtk_picture_set_alternative_text")]
	public static extern void PictureSetAlternativeText(Picture self, char8* alternative_text);
	[LinkName("gtk_picture_set_can_shrink")]
	public static extern void PictureSetCanShrink(Picture self, c_int can_shrink);
	[LinkName("gtk_picture_set_content_fit")]
	public static extern void PictureSetContentFit(Picture self, ContentFit content_fit);
	[LinkName("gtk_picture_set_file")]
	public static extern void PictureSetFile(Picture self, Gio.File file);
	[LinkName("gtk_picture_set_filename")]
	public static extern void PictureSetFilename(Picture self, char8* filename);
	[LinkName("gtk_picture_set_keep_aspect_ratio")]
	public static extern void PictureSetKeepAspectRatio(Picture self, c_int keep_aspect_ratio);
	[LinkName("gtk_picture_set_paintable")]
	public static extern void PictureSetPaintable(Picture self, Gdk.Paintable paintable);
	[LinkName("gtk_picture_set_pixbuf")]
	public static extern void PictureSetPixbuf(Picture self, GdkPixbuf.Pixbuf pixbuf);
	[LinkName("gtk_picture_set_resource")]
	public static extern void PictureSetResource(Picture self, char8* resource_path);
	[CRepr]
	public struct PictureClass
	{
		WidgetClass parent_class;
	}
	public enum PolicyType : c_int
	{
		always = 0,
		automatic = 1,
		never = 2,
		external = 3
	}
	[CRepr]
	public struct Popover;
	[LinkName("gtk_popover_new")]
	public static extern Widget* PopoverNew();
	[LinkName("gtk_popover_get_autohide")]
	public static extern c_int PopoverGetAutohide(Popover popover);
	[LinkName("gtk_popover_get_cascade_popdown")]
	public static extern c_int PopoverGetCascadePopdown(Popover popover);
	[LinkName("gtk_popover_get_child")]
	public static extern Widget* PopoverGetChild(Popover popover);
	[LinkName("gtk_popover_get_has_arrow")]
	public static extern c_int PopoverGetHasArrow(Popover popover);
	[LinkName("gtk_popover_get_mnemonics_visible")]
	public static extern c_int PopoverGetMnemonicsVisible(Popover popover);
	[LinkName("gtk_popover_get_offset")]
	public static extern void PopoverGetOffset(Popover popover, c_int x_offset, c_int y_offset);
	[LinkName("gtk_popover_get_pointing_to")]
	public static extern c_int PopoverGetPointingTo(Popover popover, Gdk.Rectangle rect);
	[LinkName("gtk_popover_get_position")]
	public static extern PositionType PopoverGetPosition(Popover popover);
	[LinkName("gtk_popover_popdown")]
	public static extern void PopoverPopdown(Popover popover);
	[LinkName("gtk_popover_popup")]
	public static extern void PopoverPopup(Popover popover);
	[LinkName("gtk_popover_present")]
	public static extern void PopoverPresent(Popover popover);
	[LinkName("gtk_popover_set_autohide")]
	public static extern void PopoverSetAutohide(Popover popover, c_int autohide);
	[LinkName("gtk_popover_set_cascade_popdown")]
	public static extern void PopoverSetCascadePopdown(Popover popover, c_int cascade_popdown);
	[LinkName("gtk_popover_set_child")]
	public static extern void PopoverSetChild(Popover popover, Widget child);
	[LinkName("gtk_popover_set_default_widget")]
	public static extern void PopoverSetDefaultWidget(Popover popover, Widget widget);
	[LinkName("gtk_popover_set_has_arrow")]
	public static extern void PopoverSetHasArrow(Popover popover, c_int has_arrow);
	[LinkName("gtk_popover_set_mnemonics_visible")]
	public static extern void PopoverSetMnemonicsVisible(Popover popover, c_int mnemonics_visible);
	[LinkName("gtk_popover_set_offset")]
	public static extern void PopoverSetOffset(Popover popover, c_int x_offset, c_int y_offset);
	[LinkName("gtk_popover_set_pointing_to")]
	public static extern void PopoverSetPointingTo(Popover popover, Gdk.Rectangle rect);
	[LinkName("gtk_popover_set_position")]
	public static extern void PopoverSetPosition(Popover popover, PositionType position);
	[CRepr]
	public struct PopoverClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct PopoverMenu;
	[LinkName("gtk_popover_menu_new_from_model")]
	public static extern Widget* PopoverMenuNewFromModel(Gio.MenuModel model);
	[LinkName("gtk_popover_menu_new_from_model_full")]
	public static extern Widget* PopoverMenuNewFromModelFull(Gio.MenuModel model, PopoverMenuFlags flags);
	[LinkName("gtk_popover_menu_add_child")]
	public static extern c_int PopoverMenuAddChild(PopoverMenu popover, Widget child, char8* id);
	[LinkName("gtk_popover_menu_get_menu_model")]
	public static extern Gio.MenuModel* PopoverMenuGetMenuModel(PopoverMenu popover);
	[LinkName("gtk_popover_menu_remove_child")]
	public static extern c_int PopoverMenuRemoveChild(PopoverMenu popover, Widget child);
	[LinkName("gtk_popover_menu_set_menu_model")]
	public static extern void PopoverMenuSetMenuModel(PopoverMenu popover, Gio.MenuModel model);
	[CRepr]
	public struct PopoverMenuBar;
	[LinkName("gtk_popover_menu_bar_new_from_model")]
	public static extern Widget* PopoverMenuBarNewFromModel(Gio.MenuModel model);
	[LinkName("gtk_popover_menu_bar_add_child")]
	public static extern c_int PopoverMenuBarAddChild(PopoverMenuBar bar, Widget child, char8* id);
	[LinkName("gtk_popover_menu_bar_get_menu_model")]
	public static extern Gio.MenuModel* PopoverMenuBarGetMenuModel(PopoverMenuBar bar);
	[LinkName("gtk_popover_menu_bar_remove_child")]
	public static extern c_int PopoverMenuBarRemoveChild(PopoverMenuBar bar, Widget child);
	[LinkName("gtk_popover_menu_bar_set_menu_model")]
	public static extern void PopoverMenuBarSetMenuModel(PopoverMenuBar bar, Gio.MenuModel model);
	[CRepr]
	public enum PopoverMenuFlags : int
	{
		nested = 1
	}
	public enum PositionType : c_int
	{
		left = 0,
		right = 1,
		top = 2,
		bottom = 3
	}
	[CRepr]
	public struct PrintBackend
	{
	}
	[CRepr]
	public enum PrintCapabilities : int
	{
		page_set = 1,
		copies = 2,
		collate = 4,
		reverse = 8,
		scale = 16,
		generate_pdf = 32,
		generate_ps = 64,
		preview = 128,
		number_up = 256,
		number_up_layout = 512
	}
	[CRepr]
	public struct PrintContext;
	[LinkName("gtk_print_context_create_pango_context")]
	public static extern Pango.Context* PrintContextCreatePangoContext(PrintContext context);
	[LinkName("gtk_print_context_create_pango_layout")]
	public static extern Pango.Layout* PrintContextCreatePangoLayout(PrintContext context);
	[LinkName("gtk_print_context_get_cairo_context")]
	public static extern cairo.Context* PrintContextGetCairoContext(PrintContext context);
	[LinkName("gtk_print_context_get_dpi_x")]
	public static extern double PrintContextGetDpiX(PrintContext context);
	[LinkName("gtk_print_context_get_dpi_y")]
	public static extern double PrintContextGetDpiY(PrintContext context);
	[LinkName("gtk_print_context_get_hard_margins")]
	public static extern c_int PrintContextGetHardMargins(PrintContext context, double top, double bottom, double left, double right);
	[LinkName("gtk_print_context_get_height")]
	public static extern double PrintContextGetHeight(PrintContext context);
	[LinkName("gtk_print_context_get_page_setup")]
	public static extern PageSetup* PrintContextGetPageSetup(PrintContext context);
	[LinkName("gtk_print_context_get_pango_fontmap")]
	public static extern Pango.FontMap* PrintContextGetPangoFontmap(PrintContext context);
	[LinkName("gtk_print_context_get_width")]
	public static extern double PrintContextGetWidth(PrintContext context);
	[LinkName("gtk_print_context_set_cairo_context")]
	public static extern void PrintContextSetCairoContext(PrintContext context, cairo.Context cr, double dpi_x, double dpi_y);
	public enum PrintDuplex : c_int
	{
		simplex = 0,
		horizontal = 1,
		vertical = 2
	}
	public enum PrintError : c_int
	{
		general = 0,
		internal_error = 1,
		nomem = 2,
		invalid_file = 3
	}
	[CRepr]
	public struct PrintJob;
	[LinkName("gtk_print_job_new")]
	public static extern PrintJob* PrintJobNew(char8* title, Printer printer, PrintSettings settings, PageSetup page_setup);
	[LinkName("gtk_print_job_get_collate")]
	public static extern c_int PrintJobGetCollate(PrintJob job);
	[LinkName("gtk_print_job_get_n_up")]
	public static extern c_uint PrintJobGetNUp(PrintJob job);
	[LinkName("gtk_print_job_get_n_up_layout")]
	public static extern NumberUpLayout PrintJobGetNUpLayout(PrintJob job);
	[LinkName("gtk_print_job_get_num_copies")]
	public static extern c_int PrintJobGetNumCopies(PrintJob job);
	[LinkName("gtk_print_job_get_page_ranges")]
	public static extern PageRange PrintJobGetPageRanges(PrintJob job, c_int n_ranges);
	[LinkName("gtk_print_job_get_page_set")]
	public static extern PageSet PrintJobGetPageSet(PrintJob job);
	[LinkName("gtk_print_job_get_pages")]
	public static extern PrintPages PrintJobGetPages(PrintJob job);
	[LinkName("gtk_print_job_get_printer")]
	public static extern Printer* PrintJobGetPrinter(PrintJob job);
	[LinkName("gtk_print_job_get_reverse")]
	public static extern c_int PrintJobGetReverse(PrintJob job);
	[LinkName("gtk_print_job_get_rotate")]
	public static extern c_int PrintJobGetRotate(PrintJob job);
	[LinkName("gtk_print_job_get_scale")]
	public static extern double PrintJobGetScale(PrintJob job);
	[LinkName("gtk_print_job_get_settings")]
	public static extern PrintSettings* PrintJobGetSettings(PrintJob job);
	[LinkName("gtk_print_job_get_status")]
	public static extern PrintStatus PrintJobGetStatus(PrintJob job);
	[LinkName("gtk_print_job_get_surface")]
	public static extern cairo.Surface* PrintJobGetSurface(PrintJob job);
	[LinkName("gtk_print_job_get_title")]
	public static extern char8** PrintJobGetTitle(PrintJob job);
	[LinkName("gtk_print_job_get_track_print_status")]
	public static extern c_int PrintJobGetTrackPrintStatus(PrintJob job);
	[LinkName("gtk_print_job_send")]
	public static extern void PrintJobSend(PrintJob job, PrintJobCompleteFunc callback, void* user_data, GLib.DestroyNotify dnotify);
	[LinkName("gtk_print_job_set_collate")]
	public static extern void PrintJobSetCollate(PrintJob job, c_int collate);
	[LinkName("gtk_print_job_set_n_up")]
	public static extern void PrintJobSetNUp(PrintJob job, c_uint n_up);
	[LinkName("gtk_print_job_set_n_up_layout")]
	public static extern void PrintJobSetNUpLayout(PrintJob job, NumberUpLayout layout);
	[LinkName("gtk_print_job_set_num_copies")]
	public static extern void PrintJobSetNumCopies(PrintJob job, c_int num_copies);
	[LinkName("gtk_print_job_set_page_ranges")]
	public static extern void PrintJobSetPageRanges(PrintJob job, c_int n_ranges);
	[LinkName("gtk_print_job_set_page_set")]
	public static extern void PrintJobSetPageSet(PrintJob job, PageSet page_set);
	[LinkName("gtk_print_job_set_pages")]
	public static extern void PrintJobSetPages(PrintJob job, PrintPages pages);
	[LinkName("gtk_print_job_set_reverse")]
	public static extern void PrintJobSetReverse(PrintJob job, c_int reverse);
	[LinkName("gtk_print_job_set_rotate")]
	public static extern void PrintJobSetRotate(PrintJob job, c_int rotate);
	[LinkName("gtk_print_job_set_scale")]
	public static extern void PrintJobSetScale(PrintJob job, double scale);
	[LinkName("gtk_print_job_set_source_fd")]
	public static extern c_int PrintJobSetSourceFd(PrintJob job, c_int fd);
	[LinkName("gtk_print_job_set_source_file")]
	public static extern c_int PrintJobSetSourceFile(PrintJob job, char8* filename);
	[LinkName("gtk_print_job_set_track_print_status")]
	public static extern void PrintJobSetTrackPrintStatus(PrintJob job, c_int track_status);
	public function void PrintJobCompleteFunc(PrintJob print_job, void* user_data, GLib.Error error);
	[CRepr]
	public struct PrintOperation;
	[LinkName("gtk_print_operation_new")]
	public static extern PrintOperation* PrintOperationNew();
	[LinkName("gtk_print_operation_cancel")]
	public static extern void PrintOperationCancel(PrintOperation op);
	[LinkName("gtk_print_operation_draw_page_finish")]
	public static extern void PrintOperationDrawPageFinish(PrintOperation op);
	[LinkName("gtk_print_operation_get_default_page_setup")]
	public static extern PageSetup* PrintOperationGetDefaultPageSetup(PrintOperation op);
	[LinkName("gtk_print_operation_get_embed_page_setup")]
	public static extern c_int PrintOperationGetEmbedPageSetup(PrintOperation op);
	[LinkName("gtk_print_operation_get_error")]
	public static extern void PrintOperationGetError(PrintOperation op);
	[LinkName("gtk_print_operation_get_has_selection")]
	public static extern c_int PrintOperationGetHasSelection(PrintOperation op);
	[LinkName("gtk_print_operation_get_n_pages_to_print")]
	public static extern c_int PrintOperationGetNPagesToPrint(PrintOperation op);
	[LinkName("gtk_print_operation_get_print_settings")]
	public static extern PrintSettings* PrintOperationGetPrintSettings(PrintOperation op);
	[LinkName("gtk_print_operation_get_status")]
	public static extern PrintStatus PrintOperationGetStatus(PrintOperation op);
	[LinkName("gtk_print_operation_get_status_string")]
	public static extern char8** PrintOperationGetStatusString(PrintOperation op);
	[LinkName("gtk_print_operation_get_support_selection")]
	public static extern c_int PrintOperationGetSupportSelection(PrintOperation op);
	[LinkName("gtk_print_operation_is_finished")]
	public static extern c_int PrintOperationIsFinished(PrintOperation op);
	[LinkName("gtk_print_operation_run")]
	public static extern PrintOperationResult PrintOperationRun(PrintOperation op, PrintOperationAction action, Window parent);
	[LinkName("gtk_print_operation_set_allow_async")]
	public static extern void PrintOperationSetAllowAsync(PrintOperation op, c_int allow_async);
	[LinkName("gtk_print_operation_set_current_page")]
	public static extern void PrintOperationSetCurrentPage(PrintOperation op, c_int current_page);
	[LinkName("gtk_print_operation_set_custom_tab_label")]
	public static extern void PrintOperationSetCustomTabLabel(PrintOperation op, char8* label);
	[LinkName("gtk_print_operation_set_default_page_setup")]
	public static extern void PrintOperationSetDefaultPageSetup(PrintOperation op, PageSetup default_page_setup);
	[LinkName("gtk_print_operation_set_defer_drawing")]
	public static extern void PrintOperationSetDeferDrawing(PrintOperation op);
	[LinkName("gtk_print_operation_set_embed_page_setup")]
	public static extern void PrintOperationSetEmbedPageSetup(PrintOperation op, c_int embed);
	[LinkName("gtk_print_operation_set_export_filename")]
	public static extern void PrintOperationSetExportFilename(PrintOperation op, char8* filename);
	[LinkName("gtk_print_operation_set_has_selection")]
	public static extern void PrintOperationSetHasSelection(PrintOperation op, c_int has_selection);
	[LinkName("gtk_print_operation_set_job_name")]
	public static extern void PrintOperationSetJobName(PrintOperation op, char8* job_name);
	[LinkName("gtk_print_operation_set_n_pages")]
	public static extern void PrintOperationSetNPages(PrintOperation op, c_int n_pages);
	[LinkName("gtk_print_operation_set_print_settings")]
	public static extern void PrintOperationSetPrintSettings(PrintOperation op, PrintSettings print_settings);
	[LinkName("gtk_print_operation_set_show_progress")]
	public static extern void PrintOperationSetShowProgress(PrintOperation op, c_int show_progress);
	[LinkName("gtk_print_operation_set_support_selection")]
	public static extern void PrintOperationSetSupportSelection(PrintOperation op, c_int support_selection);
	[LinkName("gtk_print_operation_set_track_print_status")]
	public static extern void PrintOperationSetTrackPrintStatus(PrintOperation op, c_int track_status);
	[LinkName("gtk_print_operation_set_unit")]
	public static extern void PrintOperationSetUnit(PrintOperation op, Unit unit);
	[LinkName("gtk_print_operation_set_use_full_page")]
	public static extern void PrintOperationSetUseFullPage(PrintOperation op, c_int full_page);
	public enum PrintOperationAction : c_int
	{
		print_dialog = 0,
		print = 1,
		preview = 2,
		export = 3
	}
	[CRepr]
	public struct PrintOperationClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct PrintOperationPreview
	{
		public function void(PrintOperationPreview preview) end_preview;

		public function void(PrintOperationPreview preview, PrintContext context, PageSetup page_setup) got_page_size;

		public function c_int(PrintOperationPreview preview, c_int page_nr) is_selected;

		public function void(PrintOperationPreview preview, PrintContext context) ready;

		public function void(PrintOperationPreview preview, c_int page_nr) render_page;
	}
	[CRepr]
	public struct PrintOperationPreviewIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct PrintOperationPrivate
	{
	}
	public enum PrintOperationResult : c_int
	{
		error = 0,
		apply = 1,
		cancel = 2,
		in_progress = 3
	}
	public enum PrintPages : c_int
	{
		all = 0,
		current = 1,
		ranges = 2,
		selection = 3
	}
	public enum PrintQuality : c_int
	{
		low = 0,
		normal = 1,
		high = 2,
		draft = 3
	}
	[CRepr]
	public struct PrintSettings;
	[LinkName("gtk_print_settings_new")]
	public static extern PrintSettings* PrintSettingsNew();
	[LinkName("gtk_print_settings_new_from_file")]
	public static extern PrintSettings* PrintSettingsNewFromFile(char8* file_name);
	[LinkName("gtk_print_settings_new_from_gvariant")]
	public static extern PrintSettings* PrintSettingsNewFromGvariant(GLib.Variant variant);
	[LinkName("gtk_print_settings_new_from_key_file")]
	public static extern PrintSettings* PrintSettingsNewFromKeyFile(GLib.KeyFile key_file, char8* group_name);
	[LinkName("gtk_print_settings_copy")]
	public static extern PrintSettings* PrintSettingsCopy(PrintSettings other);
	[LinkName("gtk_print_settings_foreach")]
	public static extern void PrintSettingsForeach(PrintSettings settings, PrintSettingsFunc func, void* user_data);
	[LinkName("gtk_print_settings_get")]
	public static extern char8** PrintSettingsGet(PrintSettings settings, char8* key);
	[LinkName("gtk_print_settings_get_bool")]
	public static extern c_int PrintSettingsGetBool(PrintSettings settings, char8* key);
	[LinkName("gtk_print_settings_get_collate")]
	public static extern c_int PrintSettingsGetCollate(PrintSettings settings);
	[LinkName("gtk_print_settings_get_default_source")]
	public static extern char8** PrintSettingsGetDefaultSource(PrintSettings settings);
	[LinkName("gtk_print_settings_get_dither")]
	public static extern char8** PrintSettingsGetDither(PrintSettings settings);
	[LinkName("gtk_print_settings_get_double")]
	public static extern double PrintSettingsGetDouble(PrintSettings settings, char8* key);
	[LinkName("gtk_print_settings_get_double_with_default")]
	public static extern double PrintSettingsGetDoubleWithDefault(PrintSettings settings, char8* key, double def);
	[LinkName("gtk_print_settings_get_duplex")]
	public static extern PrintDuplex PrintSettingsGetDuplex(PrintSettings settings);
	[LinkName("gtk_print_settings_get_finishings")]
	public static extern char8** PrintSettingsGetFinishings(PrintSettings settings);
	[LinkName("gtk_print_settings_get_int")]
	public static extern c_int PrintSettingsGetInt(PrintSettings settings, char8* key);
	[LinkName("gtk_print_settings_get_int_with_default")]
	public static extern c_int PrintSettingsGetIntWithDefault(PrintSettings settings, char8* key, c_int def);
	[LinkName("gtk_print_settings_get_length")]
	public static extern double PrintSettingsGetLength(PrintSettings settings, char8* key, Unit unit);
	[LinkName("gtk_print_settings_get_media_type")]
	public static extern char8** PrintSettingsGetMediaType(PrintSettings settings);
	[LinkName("gtk_print_settings_get_n_copies")]
	public static extern c_int PrintSettingsGetNCopies(PrintSettings settings);
	[LinkName("gtk_print_settings_get_number_up")]
	public static extern c_int PrintSettingsGetNumberUp(PrintSettings settings);
	[LinkName("gtk_print_settings_get_number_up_layout")]
	public static extern NumberUpLayout PrintSettingsGetNumberUpLayout(PrintSettings settings);
	[LinkName("gtk_print_settings_get_orientation")]
	public static extern PageOrientation PrintSettingsGetOrientation(PrintSettings settings);
	[LinkName("gtk_print_settings_get_output_bin")]
	public static extern char8** PrintSettingsGetOutputBin(PrintSettings settings);
	[LinkName("gtk_print_settings_get_page_ranges")]
	public static extern PageRange PrintSettingsGetPageRanges(PrintSettings settings, c_int num_ranges);
	[LinkName("gtk_print_settings_get_page_set")]
	public static extern PageSet PrintSettingsGetPageSet(PrintSettings settings);
	[LinkName("gtk_print_settings_get_paper_height")]
	public static extern double PrintSettingsGetPaperHeight(PrintSettings settings, Unit unit);
	[LinkName("gtk_print_settings_get_paper_size")]
	public static extern PaperSize* PrintSettingsGetPaperSize(PrintSettings settings);
	[LinkName("gtk_print_settings_get_paper_width")]
	public static extern double PrintSettingsGetPaperWidth(PrintSettings settings, Unit unit);
	[LinkName("gtk_print_settings_get_print_pages")]
	public static extern PrintPages PrintSettingsGetPrintPages(PrintSettings settings);
	[LinkName("gtk_print_settings_get_printer")]
	public static extern char8** PrintSettingsGetPrinter(PrintSettings settings);
	[LinkName("gtk_print_settings_get_printer_lpi")]
	public static extern double PrintSettingsGetPrinterLpi(PrintSettings settings);
	[LinkName("gtk_print_settings_get_quality")]
	public static extern PrintQuality PrintSettingsGetQuality(PrintSettings settings);
	[LinkName("gtk_print_settings_get_resolution")]
	public static extern c_int PrintSettingsGetResolution(PrintSettings settings);
	[LinkName("gtk_print_settings_get_resolution_x")]
	public static extern c_int PrintSettingsGetResolutionX(PrintSettings settings);
	[LinkName("gtk_print_settings_get_resolution_y")]
	public static extern c_int PrintSettingsGetResolutionY(PrintSettings settings);
	[LinkName("gtk_print_settings_get_reverse")]
	public static extern c_int PrintSettingsGetReverse(PrintSettings settings);
	[LinkName("gtk_print_settings_get_scale")]
	public static extern double PrintSettingsGetScale(PrintSettings settings);
	[LinkName("gtk_print_settings_get_use_color")]
	public static extern c_int PrintSettingsGetUseColor(PrintSettings settings);
	[LinkName("gtk_print_settings_has_key")]
	public static extern c_int PrintSettingsHasKey(PrintSettings settings, char8* key);
	[LinkName("gtk_print_settings_load_file")]
	public static extern c_int PrintSettingsLoadFile(PrintSettings settings, char8* file_name);
	[LinkName("gtk_print_settings_load_key_file")]
	public static extern c_int PrintSettingsLoadKeyFile(PrintSettings settings, GLib.KeyFile key_file, char8* group_name);
	[LinkName("gtk_print_settings_set")]
	public static extern void PrintSettingsSet(PrintSettings settings, char8* key, char8* value);
	[LinkName("gtk_print_settings_set_bool")]
	public static extern void PrintSettingsSetBool(PrintSettings settings, char8* key, c_int value);
	[LinkName("gtk_print_settings_set_collate")]
	public static extern void PrintSettingsSetCollate(PrintSettings settings, c_int collate);
	[LinkName("gtk_print_settings_set_default_source")]
	public static extern void PrintSettingsSetDefaultSource(PrintSettings settings, char8* default_source);
	[LinkName("gtk_print_settings_set_dither")]
	public static extern void PrintSettingsSetDither(PrintSettings settings, char8* dither);
	[LinkName("gtk_print_settings_set_double")]
	public static extern void PrintSettingsSetDouble(PrintSettings settings, char8* key, double value);
	[LinkName("gtk_print_settings_set_duplex")]
	public static extern void PrintSettingsSetDuplex(PrintSettings settings, PrintDuplex duplex);
	[LinkName("gtk_print_settings_set_finishings")]
	public static extern void PrintSettingsSetFinishings(PrintSettings settings, char8* finishings);
	[LinkName("gtk_print_settings_set_int")]
	public static extern void PrintSettingsSetInt(PrintSettings settings, char8* key, c_int value);
	[LinkName("gtk_print_settings_set_length")]
	public static extern void PrintSettingsSetLength(PrintSettings settings, char8* key, double value, Unit unit);
	[LinkName("gtk_print_settings_set_media_type")]
	public static extern void PrintSettingsSetMediaType(PrintSettings settings, char8* media_type);
	[LinkName("gtk_print_settings_set_n_copies")]
	public static extern void PrintSettingsSetNCopies(PrintSettings settings, c_int num_copies);
	[LinkName("gtk_print_settings_set_number_up")]
	public static extern void PrintSettingsSetNumberUp(PrintSettings settings, c_int number_up);
	[LinkName("gtk_print_settings_set_number_up_layout")]
	public static extern void PrintSettingsSetNumberUpLayout(PrintSettings settings, NumberUpLayout number_up_layout);
	[LinkName("gtk_print_settings_set_orientation")]
	public static extern void PrintSettingsSetOrientation(PrintSettings settings, PageOrientation orientation);
	[LinkName("gtk_print_settings_set_output_bin")]
	public static extern void PrintSettingsSetOutputBin(PrintSettings settings, char8* output_bin);
	[LinkName("gtk_print_settings_set_page_ranges")]
	public static extern void PrintSettingsSetPageRanges(PrintSettings settings, c_int num_ranges);
	[LinkName("gtk_print_settings_set_page_set")]
	public static extern void PrintSettingsSetPageSet(PrintSettings settings, PageSet page_set);
	[LinkName("gtk_print_settings_set_paper_height")]
	public static extern void PrintSettingsSetPaperHeight(PrintSettings settings, double height, Unit unit);
	[LinkName("gtk_print_settings_set_paper_size")]
	public static extern void PrintSettingsSetPaperSize(PrintSettings settings, PaperSize paper_size);
	[LinkName("gtk_print_settings_set_paper_width")]
	public static extern void PrintSettingsSetPaperWidth(PrintSettings settings, double width, Unit unit);
	[LinkName("gtk_print_settings_set_print_pages")]
	public static extern void PrintSettingsSetPrintPages(PrintSettings settings, PrintPages pages);
	[LinkName("gtk_print_settings_set_printer")]
	public static extern void PrintSettingsSetPrinter(PrintSettings settings, char8* printer);
	[LinkName("gtk_print_settings_set_printer_lpi")]
	public static extern void PrintSettingsSetPrinterLpi(PrintSettings settings, double lpi);
	[LinkName("gtk_print_settings_set_quality")]
	public static extern void PrintSettingsSetQuality(PrintSettings settings, PrintQuality quality);
	[LinkName("gtk_print_settings_set_resolution")]
	public static extern void PrintSettingsSetResolution(PrintSettings settings, c_int resolution);
	[LinkName("gtk_print_settings_set_resolution_xy")]
	public static extern void PrintSettingsSetResolutionXy(PrintSettings settings, c_int resolution_x, c_int resolution_y);
	[LinkName("gtk_print_settings_set_reverse")]
	public static extern void PrintSettingsSetReverse(PrintSettings settings, c_int reverse);
	[LinkName("gtk_print_settings_set_scale")]
	public static extern void PrintSettingsSetScale(PrintSettings settings, double scale);
	[LinkName("gtk_print_settings_set_use_color")]
	public static extern void PrintSettingsSetUseColor(PrintSettings settings, c_int use_color);
	[LinkName("gtk_print_settings_to_file")]
	public static extern c_int PrintSettingsToFile(PrintSettings settings, char8* file_name);
	[LinkName("gtk_print_settings_to_gvariant")]
	public static extern GLib.Variant* PrintSettingsToGvariant(PrintSettings settings);
	[LinkName("gtk_print_settings_to_key_file")]
	public static extern void PrintSettingsToKeyFile(PrintSettings settings, GLib.KeyFile key_file, char8* group_name);
	[LinkName("gtk_print_settings_unset")]
	public static extern void PrintSettingsUnset(PrintSettings settings, char8* key);
	public function void PrintSettingsFunc(char8* key, char8* value, void* user_data);
	public enum PrintStatus : c_int
	{
		initial = 0,
		preparing = 1,
		generating_data = 2,
		sending_data = 3,
		pending = 4,
		pending_issue = 5,
		printing = 6,
		finished = 7,
		finished_aborted = 8
	}
	[CRepr]
	public struct PrintUnixDialog;
	[LinkName("gtk_print_unix_dialog_new")]
	public static extern Widget* PrintUnixDialogNew(char8* title, Window parent);
	[LinkName("gtk_print_unix_dialog_add_custom_tab")]
	public static extern void PrintUnixDialogAddCustomTab(PrintUnixDialog dialog, Widget child, Widget tab_label);
	[LinkName("gtk_print_unix_dialog_get_current_page")]
	public static extern c_int PrintUnixDialogGetCurrentPage(PrintUnixDialog dialog);
	[LinkName("gtk_print_unix_dialog_get_embed_page_setup")]
	public static extern c_int PrintUnixDialogGetEmbedPageSetup(PrintUnixDialog dialog);
	[LinkName("gtk_print_unix_dialog_get_has_selection")]
	public static extern c_int PrintUnixDialogGetHasSelection(PrintUnixDialog dialog);
	[LinkName("gtk_print_unix_dialog_get_manual_capabilities")]
	public static extern PrintCapabilities PrintUnixDialogGetManualCapabilities(PrintUnixDialog dialog);
	[LinkName("gtk_print_unix_dialog_get_page_setup")]
	public static extern PageSetup* PrintUnixDialogGetPageSetup(PrintUnixDialog dialog);
	[LinkName("gtk_print_unix_dialog_get_page_setup_set")]
	public static extern c_int PrintUnixDialogGetPageSetupSet(PrintUnixDialog dialog);
	[LinkName("gtk_print_unix_dialog_get_selected_printer")]
	public static extern Printer* PrintUnixDialogGetSelectedPrinter(PrintUnixDialog dialog);
	[LinkName("gtk_print_unix_dialog_get_settings")]
	public static extern PrintSettings* PrintUnixDialogGetSettings(PrintUnixDialog dialog);
	[LinkName("gtk_print_unix_dialog_get_support_selection")]
	public static extern c_int PrintUnixDialogGetSupportSelection(PrintUnixDialog dialog);
	[LinkName("gtk_print_unix_dialog_set_current_page")]
	public static extern void PrintUnixDialogSetCurrentPage(PrintUnixDialog dialog, c_int current_page);
	[LinkName("gtk_print_unix_dialog_set_embed_page_setup")]
	public static extern void PrintUnixDialogSetEmbedPageSetup(PrintUnixDialog dialog, c_int embed);
	[LinkName("gtk_print_unix_dialog_set_has_selection")]
	public static extern void PrintUnixDialogSetHasSelection(PrintUnixDialog dialog, c_int has_selection);
	[LinkName("gtk_print_unix_dialog_set_manual_capabilities")]
	public static extern void PrintUnixDialogSetManualCapabilities(PrintUnixDialog dialog, PrintCapabilities capabilities);
	[LinkName("gtk_print_unix_dialog_set_page_setup")]
	public static extern void PrintUnixDialogSetPageSetup(PrintUnixDialog dialog, PageSetup page_setup);
	[LinkName("gtk_print_unix_dialog_set_settings")]
	public static extern void PrintUnixDialogSetSettings(PrintUnixDialog dialog, PrintSettings settings);
	[LinkName("gtk_print_unix_dialog_set_support_selection")]
	public static extern void PrintUnixDialogSetSupportSelection(PrintUnixDialog dialog, c_int support_selection);
	[CRepr]
	public struct Printer;
	[LinkName("gtk_printer_new")]
	public static extern Printer* PrinterNew(char8* name, PrintBackend backend, c_int virtual_);
	[LinkName("gtk_printer_accepts_pdf")]
	public static extern c_int PrinterAcceptsPdf(Printer printer);
	[LinkName("gtk_printer_accepts_ps")]
	public static extern c_int PrinterAcceptsPs(Printer printer);
	[LinkName("gtk_printer_compare")]
	public static extern c_int PrinterCompare(Printer a, Printer b);
	[LinkName("gtk_printer_get_backend")]
	public static extern PrintBackend* PrinterGetBackend(Printer printer);
	[LinkName("gtk_printer_get_capabilities")]
	public static extern PrintCapabilities PrinterGetCapabilities(Printer printer);
	[LinkName("gtk_printer_get_default_page_size")]
	public static extern PageSetup* PrinterGetDefaultPageSize(Printer printer);
	[LinkName("gtk_printer_get_description")]
	public static extern char8** PrinterGetDescription(Printer printer);
	[LinkName("gtk_printer_get_hard_margins")]
	public static extern c_int PrinterGetHardMargins(Printer printer, double top, double bottom, double left, double right);
	[LinkName("gtk_printer_get_hard_margins_for_paper_size")]
	public static extern c_int PrinterGetHardMarginsForPaperSize(Printer printer, PaperSize paper_size, double top, double bottom, double left, double right);
	[LinkName("gtk_printer_get_icon_name")]
	public static extern char8** PrinterGetIconName(Printer printer);
	[LinkName("gtk_printer_get_job_count")]
	public static extern c_int PrinterGetJobCount(Printer printer);
	[LinkName("gtk_printer_get_location")]
	public static extern char8** PrinterGetLocation(Printer printer);
	[LinkName("gtk_printer_get_name")]
	public static extern char8** PrinterGetName(Printer printer);
	[LinkName("gtk_printer_get_state_message")]
	public static extern char8** PrinterGetStateMessage(Printer printer);
	[LinkName("gtk_printer_has_details")]
	public static extern c_int PrinterHasDetails(Printer printer);
	[LinkName("gtk_printer_is_accepting_jobs")]
	public static extern c_int PrinterIsAcceptingJobs(Printer printer);
	[LinkName("gtk_printer_is_active")]
	public static extern c_int PrinterIsActive(Printer printer);
	[LinkName("gtk_printer_is_default")]
	public static extern c_int PrinterIsDefault(Printer printer);
	[LinkName("gtk_printer_is_paused")]
	public static extern c_int PrinterIsPaused(Printer printer);
	[LinkName("gtk_printer_is_virtual")]
	public static extern c_int PrinterIsVirtual(Printer printer);
	[LinkName("gtk_printer_list_papers")]
	public static extern GLib.List* PrinterListPapers(Printer printer);
	[LinkName("gtk_printer_request_details")]
	public static extern void PrinterRequestDetails(Printer printer);
	public function c_int PrinterFunc(Printer printer, void* data);
	[CRepr]
	public struct ProgressBar;
	[LinkName("gtk_progress_bar_new")]
	public static extern Widget* ProgressBarNew();
	[LinkName("gtk_progress_bar_get_ellipsize")]
	public static extern Pango.EllipsizeMode ProgressBarGetEllipsize(ProgressBar pbar);
	[LinkName("gtk_progress_bar_get_fraction")]
	public static extern double ProgressBarGetFraction(ProgressBar pbar);
	[LinkName("gtk_progress_bar_get_inverted")]
	public static extern c_int ProgressBarGetInverted(ProgressBar pbar);
	[LinkName("gtk_progress_bar_get_pulse_step")]
	public static extern double ProgressBarGetPulseStep(ProgressBar pbar);
	[LinkName("gtk_progress_bar_get_show_text")]
	public static extern c_int ProgressBarGetShowText(ProgressBar pbar);
	[LinkName("gtk_progress_bar_get_text")]
	public static extern char8** ProgressBarGetText(ProgressBar pbar);
	[LinkName("gtk_progress_bar_pulse")]
	public static extern void ProgressBarPulse(ProgressBar pbar);
	[LinkName("gtk_progress_bar_set_ellipsize")]
	public static extern void ProgressBarSetEllipsize(ProgressBar pbar, Pango.EllipsizeMode mode);
	[LinkName("gtk_progress_bar_set_fraction")]
	public static extern void ProgressBarSetFraction(ProgressBar pbar, double fraction);
	[LinkName("gtk_progress_bar_set_inverted")]
	public static extern void ProgressBarSetInverted(ProgressBar pbar, c_int inverted);
	[LinkName("gtk_progress_bar_set_pulse_step")]
	public static extern void ProgressBarSetPulseStep(ProgressBar pbar, double fraction);
	[LinkName("gtk_progress_bar_set_show_text")]
	public static extern void ProgressBarSetShowText(ProgressBar pbar, c_int show_text);
	[LinkName("gtk_progress_bar_set_text")]
	public static extern void ProgressBarSetText(ProgressBar pbar, char8* text);
	public enum PropagationLimit : c_int
	{
		none = 0,
		same_native = 1
	}
	public enum PropagationPhase : c_int
	{
		none = 0,
		capture = 1,
		bubble = 2,
		target = 3
	}
	[CRepr]
	public struct PropertyExpression;
	[LinkName("gtk_property_expression_new")]
	public static extern PropertyExpression* PropertyExpressionNew(GLib.Type this_type, Expression expression, char8* property_name);
	[LinkName("gtk_property_expression_new_for_pspec")]
	public static extern PropertyExpression* PropertyExpressionNewForPspec(Expression expression, GObject.ParamSpec pspec);
	[LinkName("gtk_property_expression_get_expression")]
	public static extern Expression* PropertyExpressionGetExpression(PropertyExpression expression);
	[LinkName("gtk_property_expression_get_pspec")]
	public static extern GObject.ParamSpec* PropertyExpressionGetPspec(PropertyExpression expression);
	[CRepr]
	public struct Range;
	[LinkName("gtk_range_get_adjustment")]
	public static extern Adjustment* RangeGetAdjustment(Range range);
	[LinkName("gtk_range_get_fill_level")]
	public static extern double RangeGetFillLevel(Range range);
	[LinkName("gtk_range_get_flippable")]
	public static extern c_int RangeGetFlippable(Range range);
	[LinkName("gtk_range_get_inverted")]
	public static extern c_int RangeGetInverted(Range range);
	[LinkName("gtk_range_get_range_rect")]
	public static extern void RangeGetRangeRect(Range range, Gdk.Rectangle range_rect);
	[LinkName("gtk_range_get_restrict_to_fill_level")]
	public static extern c_int RangeGetRestrictToFillLevel(Range range);
	[LinkName("gtk_range_get_round_digits")]
	public static extern c_int RangeGetRoundDigits(Range range);
	[LinkName("gtk_range_get_show_fill_level")]
	public static extern c_int RangeGetShowFillLevel(Range range);
	[LinkName("gtk_range_get_slider_range")]
	public static extern void RangeGetSliderRange(Range range, c_int slider_start, c_int slider_end);
	[LinkName("gtk_range_get_slider_size_fixed")]
	public static extern c_int RangeGetSliderSizeFixed(Range range);
	[LinkName("gtk_range_get_value")]
	public static extern double RangeGetValue(Range range);
	[LinkName("gtk_range_set_adjustment")]
	public static extern void RangeSetAdjustment(Range range, Adjustment adjustment);
	[LinkName("gtk_range_set_fill_level")]
	public static extern void RangeSetFillLevel(Range range, double fill_level);
	[LinkName("gtk_range_set_flippable")]
	public static extern void RangeSetFlippable(Range range, c_int flippable);
	[LinkName("gtk_range_set_increments")]
	public static extern void RangeSetIncrements(Range range, double step, double page);
	[LinkName("gtk_range_set_inverted")]
	public static extern void RangeSetInverted(Range range, c_int setting);
	[LinkName("gtk_range_set_range")]
	public static extern void RangeSetRange(Range range, double min, double max);
	[LinkName("gtk_range_set_restrict_to_fill_level")]
	public static extern void RangeSetRestrictToFillLevel(Range range, c_int restrict_to_fill_level);
	[LinkName("gtk_range_set_round_digits")]
	public static extern void RangeSetRoundDigits(Range range, c_int round_digits);
	[LinkName("gtk_range_set_show_fill_level")]
	public static extern void RangeSetShowFillLevel(Range range, c_int show_fill_level);
	[LinkName("gtk_range_set_slider_size_fixed")]
	public static extern void RangeSetSliderSizeFixed(Range range, c_int size_fixed);
	[LinkName("gtk_range_set_value")]
	public static extern void RangeSetValue(Range range, double value);
	[CRepr]
	public struct RangeClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct RecentData
	{
		char8* display_name;
		char8* description;
		char8* mime_type;
		char8* app_name;
		char8* app_exec;
		c_int is_private;
	}
	[CRepr]
	public struct RecentInfo
	{
	}
	[CRepr]
	public struct RecentManager;
	[LinkName("gtk_recent_manager_new")]
	public static extern RecentManager* RecentManagerNew();
	[LinkName("gtk_recent_manager_add_full")]
	public static extern c_int RecentManagerAddFull(RecentManager manager, char8* uri, RecentData recent_data);
	[LinkName("gtk_recent_manager_add_item")]
	public static extern c_int RecentManagerAddItem(RecentManager manager, char8* uri);
	[LinkName("gtk_recent_manager_get_items")]
	public static extern GLib.List* RecentManagerGetItems(RecentManager manager);
	[LinkName("gtk_recent_manager_has_item")]
	public static extern c_int RecentManagerHasItem(RecentManager manager, char8* uri);
	[LinkName("gtk_recent_manager_lookup_item")]
	public static extern RecentInfo* RecentManagerLookupItem(RecentManager manager, char8* uri);
	[LinkName("gtk_recent_manager_move_item")]
	public static extern c_int RecentManagerMoveItem(RecentManager manager, char8* uri, char8* new_uri);
	[LinkName("gtk_recent_manager_purge_items")]
	public static extern c_int RecentManagerPurgeItems(RecentManager manager);
	[LinkName("gtk_recent_manager_remove_item")]
	public static extern c_int RecentManagerRemoveItem(RecentManager manager, char8* uri);
	[CRepr]
	public struct RecentManagerClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum RecentManagerError : c_int
	{
		not_found = 0,
		invalid_uri = 1,
		invalid_encoding = 2,
		not_registered = 3,
		read = 4,
		write = 5,
		unknown = 6
	}
	[CRepr]
	public struct RecentManagerPrivate
	{
	}
	[CRepr]
	public struct RequestedSize
	{
		void* data;
		c_int minimum_size;
		c_int natural_size;
	}
	[CRepr]
	public struct Requisition
	{
		c_int width;
		c_int height;
	}
	public enum ResponseType : c_int
	{
		none = -1,
		reject = -2,
		accept = -3,
		delete_event = -4,
		ok = -5,
		cancel = -6,
		close = -7,
		yes = -8,
		no = -9,
		apply = -10,
		help = -11
	}
	[CRepr]
	public struct Revealer;
	[LinkName("gtk_revealer_new")]
	public static extern Widget* RevealerNew();
	[LinkName("gtk_revealer_get_child")]
	public static extern Widget* RevealerGetChild(Revealer revealer);
	[LinkName("gtk_revealer_get_child_revealed")]
	public static extern c_int RevealerGetChildRevealed(Revealer revealer);
	[LinkName("gtk_revealer_get_reveal_child")]
	public static extern c_int RevealerGetRevealChild(Revealer revealer);
	[LinkName("gtk_revealer_get_transition_duration")]
	public static extern c_uint RevealerGetTransitionDuration(Revealer revealer);
	[LinkName("gtk_revealer_get_transition_type")]
	public static extern RevealerTransitionType RevealerGetTransitionType(Revealer revealer);
	[LinkName("gtk_revealer_set_child")]
	public static extern void RevealerSetChild(Revealer revealer, Widget child);
	[LinkName("gtk_revealer_set_reveal_child")]
	public static extern void RevealerSetRevealChild(Revealer revealer, c_int reveal_child);
	[LinkName("gtk_revealer_set_transition_duration")]
	public static extern void RevealerSetTransitionDuration(Revealer revealer, c_uint duration);
	[LinkName("gtk_revealer_set_transition_type")]
	public static extern void RevealerSetTransitionType(Revealer revealer, RevealerTransitionType transition);
	public enum RevealerTransitionType : c_int
	{
		none = 0,
		crossfade = 1,
		slide_right = 2,
		slide_left = 3,
		slide_up = 4,
		slide_down = 5,
		swing_right = 6,
		swing_left = 7,
		swing_up = 8,
		swing_down = 9
	}
	[CRepr]
	public struct Root
	{	}
	[CRepr]
	public struct RootInterface
	{
	}
	[CRepr]
	public struct Scale;
	[LinkName("gtk_scale_new")]
	public static extern Widget* ScaleNew(Orientation orientation, Adjustment adjustment);
	[LinkName("gtk_scale_new_with_range")]
	public static extern Widget* ScaleNewWithRange(Orientation orientation, double min, double max, double step);
	[LinkName("gtk_scale_add_mark")]
	public static extern void ScaleAddMark(Scale scale, double value, PositionType position, char8* markup);
	[LinkName("gtk_scale_clear_marks")]
	public static extern void ScaleClearMarks(Scale scale);
	[LinkName("gtk_scale_get_digits")]
	public static extern c_int ScaleGetDigits(Scale scale);
	[LinkName("gtk_scale_get_draw_value")]
	public static extern c_int ScaleGetDrawValue(Scale scale);
	[LinkName("gtk_scale_get_has_origin")]
	public static extern c_int ScaleGetHasOrigin(Scale scale);
	[LinkName("gtk_scale_get_layout")]
	public static extern Pango.Layout* ScaleGetLayout(Scale scale);
	[LinkName("gtk_scale_get_layout_offsets")]
	public static extern void ScaleGetLayoutOffsets(Scale scale, c_int x, c_int y);
	[LinkName("gtk_scale_get_value_pos")]
	public static extern PositionType ScaleGetValuePos(Scale scale);
	[LinkName("gtk_scale_set_digits")]
	public static extern void ScaleSetDigits(Scale scale, c_int digits);
	[LinkName("gtk_scale_set_draw_value")]
	public static extern void ScaleSetDrawValue(Scale scale, c_int draw_value);
	[LinkName("gtk_scale_set_format_value_func")]
	public static extern void ScaleSetFormatValueFunc(Scale scale, ScaleFormatValueFunc func, void* user_data, GLib.DestroyNotify destroy_notify);
	[LinkName("gtk_scale_set_has_origin")]
	public static extern void ScaleSetHasOrigin(Scale scale, c_int has_origin);
	[LinkName("gtk_scale_set_value_pos")]
	public static extern void ScaleSetValuePos(Scale scale, PositionType pos);
	[CRepr]
	public struct ScaleButton;
	[LinkName("gtk_scale_button_new")]
	public static extern Widget* ScaleButtonNew(double min, double max, double step);
	[LinkName("gtk_scale_button_get_active")]
	public static extern c_int ScaleButtonGetActive(ScaleButton button);
	[LinkName("gtk_scale_button_get_adjustment")]
	public static extern Adjustment* ScaleButtonGetAdjustment(ScaleButton button);
	[LinkName("gtk_scale_button_get_minus_button")]
	public static extern Button* ScaleButtonGetMinusButton(ScaleButton button);
	[LinkName("gtk_scale_button_get_plus_button")]
	public static extern Button* ScaleButtonGetPlusButton(ScaleButton button);
	[LinkName("gtk_scale_button_get_popup")]
	public static extern Widget* ScaleButtonGetPopup(ScaleButton button);
	[LinkName("gtk_scale_button_get_value")]
	public static extern double ScaleButtonGetValue(ScaleButton button);
	[LinkName("gtk_scale_button_set_adjustment")]
	public static extern void ScaleButtonSetAdjustment(ScaleButton button, Adjustment adjustment);
	[LinkName("gtk_scale_button_set_icons")]
	public static extern void ScaleButtonSetIcons(ScaleButton button);
	[LinkName("gtk_scale_button_set_value")]
	public static extern void ScaleButtonSetValue(ScaleButton button, double value);
	[CRepr]
	public struct ScaleButtonClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct ScaleClass
	{
		RangeClass parent_class;
	}
	public function char8* ScaleFormatValueFunc(Scale scale, double value, void* user_data);
	public enum ScrollStep : c_int
	{
		steps = 0,
		pages = 1,
		ends = 2,
		horizontal_steps = 3,
		horizontal_pages = 4,
		horizontal_ends = 5
	}
	public enum ScrollType : c_int
	{
		none = 0,
		jump = 1,
		step_backward = 2,
		step_forward = 3,
		page_backward = 4,
		page_forward = 5,
		step_up = 6,
		step_down = 7,
		page_up = 8,
		page_down = 9,
		step_left = 10,
		step_right = 11,
		page_left = 12,
		page_right = 13,
		start = 14,
		end = 15
	}
	[CRepr]
	public struct Scrollable
	{
		public function c_int(Scrollable scrollable, Border border) get_border;
	}
	[CRepr]
	public struct ScrollableInterface
	{
		GObject.TypeInterface base_iface;
	}
	public enum ScrollablePolicy : c_int
	{
		minimum = 0,
		natural = 1
	}
	[CRepr]
	public struct Scrollbar;
	[LinkName("gtk_scrollbar_new")]
	public static extern Widget* ScrollbarNew(Orientation orientation, Adjustment adjustment);
	[LinkName("gtk_scrollbar_get_adjustment")]
	public static extern Adjustment* ScrollbarGetAdjustment(Scrollbar self);
	[LinkName("gtk_scrollbar_set_adjustment")]
	public static extern void ScrollbarSetAdjustment(Scrollbar self, Adjustment adjustment);
	[CRepr]
	public struct ScrolledWindow;
	[LinkName("gtk_scrolled_window_new")]
	public static extern Widget* ScrolledWindowNew();
	[LinkName("gtk_scrolled_window_get_child")]
	public static extern Widget* ScrolledWindowGetChild(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_hadjustment")]
	public static extern Adjustment* ScrolledWindowGetHadjustment(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_has_frame")]
	public static extern c_int ScrolledWindowGetHasFrame(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_hscrollbar")]
	public static extern Widget* ScrolledWindowGetHscrollbar(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_kinetic_scrolling")]
	public static extern c_int ScrolledWindowGetKineticScrolling(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_max_content_height")]
	public static extern c_int ScrolledWindowGetMaxContentHeight(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_max_content_width")]
	public static extern c_int ScrolledWindowGetMaxContentWidth(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_min_content_height")]
	public static extern c_int ScrolledWindowGetMinContentHeight(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_min_content_width")]
	public static extern c_int ScrolledWindowGetMinContentWidth(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_overlay_scrolling")]
	public static extern c_int ScrolledWindowGetOverlayScrolling(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_placement")]
	public static extern CornerType ScrolledWindowGetPlacement(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_policy")]
	public static extern void ScrolledWindowGetPolicy(ScrolledWindow scrolled_window, PolicyType hscrollbar_policy, PolicyType vscrollbar_policy);
	[LinkName("gtk_scrolled_window_get_propagate_natural_height")]
	public static extern c_int ScrolledWindowGetPropagateNaturalHeight(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_propagate_natural_width")]
	public static extern c_int ScrolledWindowGetPropagateNaturalWidth(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_vadjustment")]
	public static extern Adjustment* ScrolledWindowGetVadjustment(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_get_vscrollbar")]
	public static extern Widget* ScrolledWindowGetVscrollbar(ScrolledWindow scrolled_window);
	[LinkName("gtk_scrolled_window_set_child")]
	public static extern void ScrolledWindowSetChild(ScrolledWindow scrolled_window, Widget child);
	[LinkName("gtk_scrolled_window_set_hadjustment")]
	public static extern void ScrolledWindowSetHadjustment(ScrolledWindow scrolled_window, Adjustment hadjustment);
	[LinkName("gtk_scrolled_window_set_has_frame")]
	public static extern void ScrolledWindowSetHasFrame(ScrolledWindow scrolled_window, c_int has_frame);
	[LinkName("gtk_scrolled_window_set_kinetic_scrolling")]
	public static extern void ScrolledWindowSetKineticScrolling(ScrolledWindow scrolled_window, c_int kinetic_scrolling);
	[LinkName("gtk_scrolled_window_set_max_content_height")]
	public static extern void ScrolledWindowSetMaxContentHeight(ScrolledWindow scrolled_window, c_int height);
	[LinkName("gtk_scrolled_window_set_max_content_width")]
	public static extern void ScrolledWindowSetMaxContentWidth(ScrolledWindow scrolled_window, c_int width);
	[LinkName("gtk_scrolled_window_set_min_content_height")]
	public static extern void ScrolledWindowSetMinContentHeight(ScrolledWindow scrolled_window, c_int height);
	[LinkName("gtk_scrolled_window_set_min_content_width")]
	public static extern void ScrolledWindowSetMinContentWidth(ScrolledWindow scrolled_window, c_int width);
	[LinkName("gtk_scrolled_window_set_overlay_scrolling")]
	public static extern void ScrolledWindowSetOverlayScrolling(ScrolledWindow scrolled_window, c_int overlay_scrolling);
	[LinkName("gtk_scrolled_window_set_placement")]
	public static extern void ScrolledWindowSetPlacement(ScrolledWindow scrolled_window, CornerType window_placement);
	[LinkName("gtk_scrolled_window_set_policy")]
	public static extern void ScrolledWindowSetPolicy(ScrolledWindow scrolled_window, PolicyType hscrollbar_policy, PolicyType vscrollbar_policy);
	[LinkName("gtk_scrolled_window_set_propagate_natural_height")]
	public static extern void ScrolledWindowSetPropagateNaturalHeight(ScrolledWindow scrolled_window, c_int propagate);
	[LinkName("gtk_scrolled_window_set_propagate_natural_width")]
	public static extern void ScrolledWindowSetPropagateNaturalWidth(ScrolledWindow scrolled_window, c_int propagate);
	[LinkName("gtk_scrolled_window_set_vadjustment")]
	public static extern void ScrolledWindowSetVadjustment(ScrolledWindow scrolled_window, Adjustment vadjustment);
	[LinkName("gtk_scrolled_window_unset_placement")]
	public static extern void ScrolledWindowUnsetPlacement(ScrolledWindow scrolled_window);
	[CRepr]
	public struct SearchBar;
	[LinkName("gtk_search_bar_new")]
	public static extern Widget* SearchBarNew();
	[LinkName("gtk_search_bar_connect_entry")]
	public static extern void SearchBarConnectEntry(SearchBar bar, Editable entry);
	[LinkName("gtk_search_bar_get_child")]
	public static extern Widget* SearchBarGetChild(SearchBar bar);
	[LinkName("gtk_search_bar_get_key_capture_widget")]
	public static extern Widget* SearchBarGetKeyCaptureWidget(SearchBar bar);
	[LinkName("gtk_search_bar_get_search_mode")]
	public static extern c_int SearchBarGetSearchMode(SearchBar bar);
	[LinkName("gtk_search_bar_get_show_close_button")]
	public static extern c_int SearchBarGetShowCloseButton(SearchBar bar);
	[LinkName("gtk_search_bar_set_child")]
	public static extern void SearchBarSetChild(SearchBar bar, Widget child);
	[LinkName("gtk_search_bar_set_key_capture_widget")]
	public static extern void SearchBarSetKeyCaptureWidget(SearchBar bar, Widget widget);
	[LinkName("gtk_search_bar_set_search_mode")]
	public static extern void SearchBarSetSearchMode(SearchBar bar, c_int search_mode);
	[LinkName("gtk_search_bar_set_show_close_button")]
	public static extern void SearchBarSetShowCloseButton(SearchBar bar, c_int visible);
	[CRepr]
	public struct SearchEntry;
	[LinkName("gtk_search_entry_new")]
	public static extern Widget* SearchEntryNew();
	[LinkName("gtk_search_entry_get_key_capture_widget")]
	public static extern Widget* SearchEntryGetKeyCaptureWidget(SearchEntry entry);
	[LinkName("gtk_search_entry_get_placeholder_text")]
	public static extern char8** SearchEntryGetPlaceholderText(SearchEntry entry);
	[LinkName("gtk_search_entry_get_search_delay")]
	public static extern c_uint SearchEntryGetSearchDelay(SearchEntry entry);
	[LinkName("gtk_search_entry_set_key_capture_widget")]
	public static extern void SearchEntrySetKeyCaptureWidget(SearchEntry entry, Widget widget);
	[LinkName("gtk_search_entry_set_placeholder_text")]
	public static extern void SearchEntrySetPlaceholderText(SearchEntry entry, char8* text);
	[LinkName("gtk_search_entry_set_search_delay")]
	public static extern void SearchEntrySetSearchDelay(SearchEntry entry, c_uint delay);
	[CRepr]
	public struct SectionModel
	{
		public function void(SectionModel this, c_uint position, c_uint out_start, c_uint out_end) get_section;
	}
	[CRepr]
	public struct SectionModelInterface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct SelectionFilterModel;
	[LinkName("gtk_selection_filter_model_new")]
	public static extern SelectionFilterModel* SelectionFilterModelNew(SelectionModel model);
	[LinkName("gtk_selection_filter_model_get_model")]
	public static extern SelectionModel* SelectionFilterModelGetModel(SelectionFilterModel self);
	[LinkName("gtk_selection_filter_model_set_model")]
	public static extern void SelectionFilterModelSetModel(SelectionFilterModel self, SelectionModel model);
	[CRepr]
	public struct SelectionFilterModelClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum SelectionMode : c_int
	{
		none = 0,
		single = 1,
		browse = 2,
		multiple = 3
	}
	[CRepr]
	public struct SelectionModel
	{
		public function Bitset(SelectionModel model, c_uint position, c_uint n_items) get_selection_in_range;

		public function c_int(SelectionModel model, c_uint position) is_selected;

		public function c_int(SelectionModel model) select_all;

		public function c_int(SelectionModel model, c_uint position, c_int unselect_rest) select_item;

		public function c_int(SelectionModel model, c_uint position, c_uint n_items, c_int unselect_rest) select_range;

		public function c_int(SelectionModel model, Bitset selected, Bitset mask) set_selection;

		public function c_int(SelectionModel model) unselect_all;

		public function c_int(SelectionModel model, c_uint position) unselect_item;

		public function c_int(SelectionModel model, c_uint position, c_uint n_items) unselect_range;
	}
	[CRepr]
	public struct SelectionModelInterface
	{
		GObject.TypeInterface g_iface;
	}
	public enum SensitivityType : c_int
	{
		auto = 0,
		on = 1,
		off = 2
	}
	[CRepr]
	public struct Separator;
	[LinkName("gtk_separator_new")]
	public static extern Widget* SeparatorNew(Orientation orientation);
	[CRepr]
	public struct Settings;
	[LinkName("gtk_settings_reset_property")]
	public static extern void SettingsResetProperty(Settings settings, char8* name);
	[CRepr]
	public struct Shortcut;
	[LinkName("gtk_shortcut_new")]
	public static extern Shortcut* ShortcutNew(ShortcutTrigger trigger, ShortcutAction action);
	[LinkName("gtk_shortcut_new_with_arguments")]
	public static extern Shortcut* ShortcutNewWithArguments(ShortcutTrigger trigger, ShortcutAction action, char8* format_string);
	[LinkName("gtk_shortcut_get_action")]
	public static extern ShortcutAction* ShortcutGetAction(Shortcut self);
	[LinkName("gtk_shortcut_get_arguments")]
	public static extern GLib.Variant* ShortcutGetArguments(Shortcut self);
	[LinkName("gtk_shortcut_get_trigger")]
	public static extern ShortcutTrigger* ShortcutGetTrigger(Shortcut self);
	[LinkName("gtk_shortcut_set_action")]
	public static extern void ShortcutSetAction(Shortcut self, ShortcutAction action);
	[LinkName("gtk_shortcut_set_arguments")]
	public static extern void ShortcutSetArguments(Shortcut self, GLib.Variant args);
	[LinkName("gtk_shortcut_set_trigger")]
	public static extern void ShortcutSetTrigger(Shortcut self, ShortcutTrigger trigger);
	[CRepr]
	public struct ShortcutAction;
	[LinkName("gtk_shortcut_action_parse_string")]
	public static extern ShortcutAction* ShortcutActionParseString(char8* string);
	[LinkName("gtk_shortcut_action_activate")]
	public static extern c_int ShortcutActionActivate(ShortcutAction self, ShortcutActionFlags flags, Widget widget, GLib.Variant args);
	[LinkName("gtk_shortcut_action_print")]
	public static extern void ShortcutActionPrint(ShortcutAction self, GLib.String string);
	[LinkName("gtk_shortcut_action_to_string")]
	public static extern char8** ShortcutActionToString(ShortcutAction self);
	[CRepr]
	public struct ShortcutActionClass
	{
	}
	[CRepr]
	public enum ShortcutActionFlags : int
	{
		exclusive = 1
	}
	[CRepr]
	public struct ShortcutClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ShortcutController;
	[LinkName("gtk_shortcut_controller_new")]
	public static extern EventController* ShortcutControllerNew();
	[LinkName("gtk_shortcut_controller_new_for_model")]
	public static extern EventController* ShortcutControllerNewForModel(Gio.ListModel model);
	[LinkName("gtk_shortcut_controller_add_shortcut")]
	public static extern void ShortcutControllerAddShortcut(ShortcutController self, Shortcut shortcut);
	[LinkName("gtk_shortcut_controller_get_mnemonics_modifiers")]
	public static extern Gdk.ModifierType ShortcutControllerGetMnemonicsModifiers(ShortcutController self);
	[LinkName("gtk_shortcut_controller_get_scope")]
	public static extern ShortcutScope ShortcutControllerGetScope(ShortcutController self);
	[LinkName("gtk_shortcut_controller_remove_shortcut")]
	public static extern void ShortcutControllerRemoveShortcut(ShortcutController self, Shortcut shortcut);
	[LinkName("gtk_shortcut_controller_set_mnemonics_modifiers")]
	public static extern void ShortcutControllerSetMnemonicsModifiers(ShortcutController self, Gdk.ModifierType modifiers);
	[LinkName("gtk_shortcut_controller_set_scope")]
	public static extern void ShortcutControllerSetScope(ShortcutController self, ShortcutScope scope_);
	[CRepr]
	public struct ShortcutControllerClass
	{
	}
	public function c_int ShortcutFunc(Widget widget, GLib.Variant args, void* user_data);
	[CRepr]
	public struct ShortcutLabel;
	[LinkName("gtk_shortcut_label_new")]
	public static extern Widget* ShortcutLabelNew(char8* accelerator);
	[LinkName("gtk_shortcut_label_get_accelerator")]
	public static extern char8** ShortcutLabelGetAccelerator(ShortcutLabel self);
	[LinkName("gtk_shortcut_label_get_disabled_text")]
	public static extern char8** ShortcutLabelGetDisabledText(ShortcutLabel self);
	[LinkName("gtk_shortcut_label_set_accelerator")]
	public static extern void ShortcutLabelSetAccelerator(ShortcutLabel self, char8* accelerator);
	[LinkName("gtk_shortcut_label_set_disabled_text")]
	public static extern void ShortcutLabelSetDisabledText(ShortcutLabel self, char8* disabled_text);
	[CRepr]
	public struct ShortcutLabelClass
	{
	}
	[CRepr]
	public struct ShortcutManager
	{
		public function void(ShortcutManager this, ShortcutController controller) add_controller;

		public function void(ShortcutManager this, ShortcutController controller) remove_controller;
	}
	[CRepr]
	public struct ShortcutManagerInterface
	{
		GObject.TypeInterface g_iface;
	}
	public enum ShortcutScope : c_int
	{
		local = 0,
		managed = 1,
		global = 2
	}
	[CRepr]
	public struct ShortcutTrigger;
	[LinkName("gtk_shortcut_trigger_parse_string")]
	public static extern ShortcutTrigger* ShortcutTriggerParseString(char8* string);
	[LinkName("gtk_shortcut_trigger_compare")]
	public static extern c_int ShortcutTriggerCompare(ShortcutTrigger trigger1, ShortcutTrigger trigger2);
	[LinkName("gtk_shortcut_trigger_equal")]
	public static extern c_int ShortcutTriggerEqual(ShortcutTrigger trigger1, ShortcutTrigger trigger2);
	[LinkName("gtk_shortcut_trigger_hash")]
	public static extern c_uint ShortcutTriggerHash(ShortcutTrigger trigger);
	[LinkName("gtk_shortcut_trigger_print")]
	public static extern void ShortcutTriggerPrint(ShortcutTrigger self, GLib.String string);
	[LinkName("gtk_shortcut_trigger_print_label")]
	public static extern c_int ShortcutTriggerPrintLabel(ShortcutTrigger self, Gdk.Display display, GLib.String string);
	[LinkName("gtk_shortcut_trigger_to_label")]
	public static extern char8** ShortcutTriggerToLabel(ShortcutTrigger self, Gdk.Display display);
	[LinkName("gtk_shortcut_trigger_to_string")]
	public static extern char8** ShortcutTriggerToString(ShortcutTrigger self);
	[LinkName("gtk_shortcut_trigger_trigger")]
	public static extern Gdk.KeyMatch ShortcutTriggerTrigger(ShortcutTrigger self, Gdk.Event event, c_int enable_mnemonics);
	[CRepr]
	public struct ShortcutTriggerClass
	{
	}
	public enum ShortcutType : c_int
	{
		accelerator = 0,
		gesture_pinch = 1,
		gesture_stretch = 2,
		gesture_rotate_clockwise = 3,
		gesture_rotate_counterclockwise = 4,
		gesture_two_finger_swipe_left = 5,
		gesture_two_finger_swipe_right = 6,
		gesture = 7,
		gesture_swipe_left = 8,
		gesture_swipe_right = 9
	}
	[CRepr]
	public struct ShortcutsGroup;
	[CRepr]
	public struct ShortcutsGroupClass
	{
	}
	[CRepr]
	public struct ShortcutsSection;
	[CRepr]
	public struct ShortcutsSectionClass
	{
	}
	[CRepr]
	public struct ShortcutsShortcut;
	[CRepr]
	public struct ShortcutsShortcutClass
	{
	}
	[CRepr]
	public struct ShortcutsWindow;
	[CRepr]
	public struct SignalAction;
	[LinkName("gtk_signal_action_new")]
	public static extern SignalAction* SignalActionNew(char8* signal_name);
	[LinkName("gtk_signal_action_get_signal_name")]
	public static extern char8** SignalActionGetSignalName(SignalAction self);
	[CRepr]
	public struct SignalActionClass
	{
	}
	[CRepr]
	public struct SignalListItemFactory;
	[LinkName("gtk_signal_list_item_factory_new")]
	public static extern ListItemFactory* SignalListItemFactoryNew();
	[CRepr]
	public struct SignalListItemFactoryClass
	{
	}
	[CRepr]
	public struct SingleSelection;
	[LinkName("gtk_single_selection_new")]
	public static extern SingleSelection* SingleSelectionNew(Gio.ListModel model);
	[LinkName("gtk_single_selection_get_autoselect")]
	public static extern c_int SingleSelectionGetAutoselect(SingleSelection self);
	[LinkName("gtk_single_selection_get_can_unselect")]
	public static extern c_int SingleSelectionGetCanUnselect(SingleSelection self);
	[LinkName("gtk_single_selection_get_model")]
	public static extern Gio.ListModel* SingleSelectionGetModel(SingleSelection self);
	[LinkName("gtk_single_selection_get_selected")]
	public static extern c_uint SingleSelectionGetSelected(SingleSelection self);
	[LinkName("gtk_single_selection_get_selected_item")]
	public static extern GObject.Object SingleSelectionGetSelectedItem(SingleSelection self);
	[LinkName("gtk_single_selection_set_autoselect")]
	public static extern void SingleSelectionSetAutoselect(SingleSelection self, c_int autoselect);
	[LinkName("gtk_single_selection_set_can_unselect")]
	public static extern void SingleSelectionSetCanUnselect(SingleSelection self, c_int can_unselect);
	[LinkName("gtk_single_selection_set_model")]
	public static extern void SingleSelectionSetModel(SingleSelection self, Gio.ListModel model);
	[LinkName("gtk_single_selection_set_selected")]
	public static extern void SingleSelectionSetSelected(SingleSelection self, c_uint position);
	[CRepr]
	public struct SingleSelectionClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct SizeGroup;
	[LinkName("gtk_size_group_new")]
	public static extern SizeGroup* SizeGroupNew(SizeGroupMode mode);
	[LinkName("gtk_size_group_add_widget")]
	public static extern void SizeGroupAddWidget(SizeGroup size_group, Widget widget);
	[LinkName("gtk_size_group_get_mode")]
	public static extern SizeGroupMode SizeGroupGetMode(SizeGroup size_group);
	[LinkName("gtk_size_group_get_widgets")]
	public static extern GLib.SList* SizeGroupGetWidgets(SizeGroup size_group);
	[LinkName("gtk_size_group_remove_widget")]
	public static extern void SizeGroupRemoveWidget(SizeGroup size_group, Widget widget);
	[LinkName("gtk_size_group_set_mode")]
	public static extern void SizeGroupSetMode(SizeGroup size_group, SizeGroupMode mode);
	public enum SizeGroupMode : c_int
	{
		none = 0,
		horizontal = 1,
		vertical = 2,
		both = 3
	}
	public enum SizeRequestMode : c_int
	{
		height_for_width = 0,
		width_for_height = 1,
		constant_size = 2
	}
	[CRepr]
	public struct SliceListModel;
	[LinkName("gtk_slice_list_model_new")]
	public static extern SliceListModel* SliceListModelNew(Gio.ListModel model, c_uint offset, c_uint size);
	[LinkName("gtk_slice_list_model_get_model")]
	public static extern Gio.ListModel* SliceListModelGetModel(SliceListModel self);
	[LinkName("gtk_slice_list_model_get_offset")]
	public static extern c_uint SliceListModelGetOffset(SliceListModel self);
	[LinkName("gtk_slice_list_model_get_size")]
	public static extern c_uint SliceListModelGetSize(SliceListModel self);
	[LinkName("gtk_slice_list_model_set_model")]
	public static extern void SliceListModelSetModel(SliceListModel self, Gio.ListModel model);
	[LinkName("gtk_slice_list_model_set_offset")]
	public static extern void SliceListModelSetOffset(SliceListModel self, c_uint offset);
	[LinkName("gtk_slice_list_model_set_size")]
	public static extern void SliceListModelSetSize(SliceListModel self, c_uint size);
	[CRepr]
	public struct SliceListModelClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct Snapshot;
	[LinkName("gtk_snapshot_new")]
	public static extern Snapshot* SnapshotNew();
	[LinkName("gtk_snapshot_append_border")]
	public static extern void SnapshotAppendBorder(Snapshot snapshot, Gsk.RoundedRect outline);
	[LinkName("gtk_snapshot_append_cairo")]
	public static extern cairo.Context* SnapshotAppendCairo(Snapshot snapshot, Graphene.Rect bounds);
	[LinkName("gtk_snapshot_append_color")]
	public static extern void SnapshotAppendColor(Snapshot snapshot, Gdk.RGBA color, Graphene.Rect bounds);
	[LinkName("gtk_snapshot_append_conic_gradient")]
	public static extern void SnapshotAppendConicGradient(Snapshot snapshot, Graphene.Rect bounds, Graphene.Point center, float rotation, c_ulong n_stops);
	[LinkName("gtk_snapshot_append_inset_shadow")]
	public static extern void SnapshotAppendInsetShadow(Snapshot snapshot, Gsk.RoundedRect outline, Gdk.RGBA color, float dx, float dy, float spread, float blur_radius);
	[LinkName("gtk_snapshot_append_layout")]
	public static extern void SnapshotAppendLayout(Snapshot snapshot, Pango.Layout layout, Gdk.RGBA color);
	[LinkName("gtk_snapshot_append_linear_gradient")]
	public static extern void SnapshotAppendLinearGradient(Snapshot snapshot, Graphene.Rect bounds, Graphene.Point start_point, Graphene.Point end_point, c_ulong n_stops);
	[LinkName("gtk_snapshot_append_node")]
	public static extern void SnapshotAppendNode(Snapshot snapshot, Gsk.RenderNode node);
	[LinkName("gtk_snapshot_append_outset_shadow")]
	public static extern void SnapshotAppendOutsetShadow(Snapshot snapshot, Gsk.RoundedRect outline, Gdk.RGBA color, float dx, float dy, float spread, float blur_radius);
	[LinkName("gtk_snapshot_append_radial_gradient")]
	public static extern void SnapshotAppendRadialGradient(Snapshot snapshot, Graphene.Rect bounds, Graphene.Point center, float hradius, float vradius, float start, float end, c_ulong n_stops);
	[LinkName("gtk_snapshot_append_repeating_linear_gradient")]
	public static extern void SnapshotAppendRepeatingLinearGradient(Snapshot snapshot, Graphene.Rect bounds, Graphene.Point start_point, Graphene.Point end_point, c_ulong n_stops);
	[LinkName("gtk_snapshot_append_repeating_radial_gradient")]
	public static extern void SnapshotAppendRepeatingRadialGradient(Snapshot snapshot, Graphene.Rect bounds, Graphene.Point center, float hradius, float vradius, float start, float end, c_ulong n_stops);
	[LinkName("gtk_snapshot_append_scaled_texture")]
	public static extern void SnapshotAppendScaledTexture(Snapshot snapshot, Gdk.Texture texture, Gsk.ScalingFilter filter, Graphene.Rect bounds);
	[LinkName("gtk_snapshot_append_texture")]
	public static extern void SnapshotAppendTexture(Snapshot snapshot, Gdk.Texture texture, Graphene.Rect bounds);
	[LinkName("gtk_snapshot_free_to_node")]
	public static extern Gsk.RenderNode* SnapshotFreeToNode(Snapshot snapshot);
	[LinkName("gtk_snapshot_free_to_paintable")]
	public static extern Gdk.Paintable* SnapshotFreeToPaintable(Snapshot snapshot, Graphene.Size size);
	[LinkName("gtk_snapshot_gl_shader_pop_texture")]
	public static extern void SnapshotGlShaderPopTexture(Snapshot snapshot);
	[LinkName("gtk_snapshot_perspective")]
	public static extern void SnapshotPerspective(Snapshot snapshot, float depth);
	[LinkName("gtk_snapshot_pop")]
	public static extern void SnapshotPop(Snapshot snapshot);
	[LinkName("gtk_snapshot_push_blend")]
	public static extern void SnapshotPushBlend(Snapshot snapshot, Gsk.BlendMode blend_mode);
	[LinkName("gtk_snapshot_push_blur")]
	public static extern void SnapshotPushBlur(Snapshot snapshot, double radius);
	[LinkName("gtk_snapshot_push_clip")]
	public static extern void SnapshotPushClip(Snapshot snapshot, Graphene.Rect bounds);
	[LinkName("gtk_snapshot_push_color_matrix")]
	public static extern void SnapshotPushColorMatrix(Snapshot snapshot, Graphene.Matrix color_matrix, Graphene.Vec4 color_offset);
	[LinkName("gtk_snapshot_push_cross_fade")]
	public static extern void SnapshotPushCrossFade(Snapshot snapshot, double progress);
	[LinkName("gtk_snapshot_push_debug")]
	public static extern void SnapshotPushDebug(Snapshot snapshot, char8* message);
	[LinkName("gtk_snapshot_push_gl_shader")]
	public static extern void SnapshotPushGlShader(Snapshot snapshot, Gsk.GLShader shader, Graphene.Rect bounds, GLib.Bytes take_args);
	[LinkName("gtk_snapshot_push_mask")]
	public static extern void SnapshotPushMask(Snapshot snapshot, Gsk.MaskMode mask_mode);
	[LinkName("gtk_snapshot_push_opacity")]
	public static extern void SnapshotPushOpacity(Snapshot snapshot, double opacity);
	[LinkName("gtk_snapshot_push_repeat")]
	public static extern void SnapshotPushRepeat(Snapshot snapshot, Graphene.Rect bounds, Graphene.Rect child_bounds);
	[LinkName("gtk_snapshot_push_rounded_clip")]
	public static extern void SnapshotPushRoundedClip(Snapshot snapshot, Gsk.RoundedRect bounds);
	[LinkName("gtk_snapshot_push_shadow")]
	public static extern void SnapshotPushShadow(Snapshot snapshot, c_ulong n_shadows);
	[LinkName("gtk_snapshot_render_background")]
	public static extern void SnapshotRenderBackground(Snapshot snapshot, StyleContext context, double x, double y, double width, double height);
	[LinkName("gtk_snapshot_render_focus")]
	public static extern void SnapshotRenderFocus(Snapshot snapshot, StyleContext context, double x, double y, double width, double height);
	[LinkName("gtk_snapshot_render_frame")]
	public static extern void SnapshotRenderFrame(Snapshot snapshot, StyleContext context, double x, double y, double width, double height);
	[LinkName("gtk_snapshot_render_insertion_cursor")]
	public static extern void SnapshotRenderInsertionCursor(Snapshot snapshot, StyleContext context, double x, double y, Pango.Layout layout, c_int index, Pango.Direction direction);
	[LinkName("gtk_snapshot_render_layout")]
	public static extern void SnapshotRenderLayout(Snapshot snapshot, StyleContext context, double x, double y, Pango.Layout layout);
	[LinkName("gtk_snapshot_restore")]
	public static extern void SnapshotRestore(Snapshot snapshot);
	[LinkName("gtk_snapshot_rotate")]
	public static extern void SnapshotRotate(Snapshot snapshot, float angle);
	[LinkName("gtk_snapshot_rotate_3d")]
	public static extern void SnapshotRotate3d(Snapshot snapshot, float angle, Graphene.Vec3 axis);
	[LinkName("gtk_snapshot_save")]
	public static extern void SnapshotSave(Snapshot snapshot);
	[LinkName("gtk_snapshot_scale")]
	public static extern void SnapshotScale(Snapshot snapshot, float factor_x, float factor_y);
	[LinkName("gtk_snapshot_scale_3d")]
	public static extern void SnapshotScale3d(Snapshot snapshot, float factor_x, float factor_y, float factor_z);
	[LinkName("gtk_snapshot_to_node")]
	public static extern Gsk.RenderNode* SnapshotToNode(Snapshot snapshot);
	[LinkName("gtk_snapshot_to_paintable")]
	public static extern Gdk.Paintable* SnapshotToPaintable(Snapshot snapshot, Graphene.Size size);
	[LinkName("gtk_snapshot_transform")]
	public static extern void SnapshotTransform(Snapshot snapshot, Gsk.Transform transform);
	[LinkName("gtk_snapshot_transform_matrix")]
	public static extern void SnapshotTransformMatrix(Snapshot snapshot, Graphene.Matrix matrix);
	[LinkName("gtk_snapshot_translate")]
	public static extern void SnapshotTranslate(Snapshot snapshot, Graphene.Point point);
	[LinkName("gtk_snapshot_translate_3d")]
	public static extern void SnapshotTranslate3d(Snapshot snapshot, Graphene.Point3D point);
	[CRepr]
	public struct SnapshotClass
	{
	}
	[CRepr]
	public struct SortListModel;
	[LinkName("gtk_sort_list_model_new")]
	public static extern SortListModel* SortListModelNew(Gio.ListModel model, Sorter sorter);
	[LinkName("gtk_sort_list_model_get_incremental")]
	public static extern c_int SortListModelGetIncremental(SortListModel self);
	[LinkName("gtk_sort_list_model_get_model")]
	public static extern Gio.ListModel* SortListModelGetModel(SortListModel self);
	[LinkName("gtk_sort_list_model_get_pending")]
	public static extern c_uint SortListModelGetPending(SortListModel self);
	[LinkName("gtk_sort_list_model_get_section_sorter")]
	public static extern Sorter* SortListModelGetSectionSorter(SortListModel self);
	[LinkName("gtk_sort_list_model_get_sorter")]
	public static extern Sorter* SortListModelGetSorter(SortListModel self);
	[LinkName("gtk_sort_list_model_set_incremental")]
	public static extern void SortListModelSetIncremental(SortListModel self, c_int incremental);
	[LinkName("gtk_sort_list_model_set_model")]
	public static extern void SortListModelSetModel(SortListModel self, Gio.ListModel model);
	[LinkName("gtk_sort_list_model_set_section_sorter")]
	public static extern void SortListModelSetSectionSorter(SortListModel self, Sorter sorter);
	[LinkName("gtk_sort_list_model_set_sorter")]
	public static extern void SortListModelSetSorter(SortListModel self, Sorter sorter);
	[CRepr]
	public struct SortListModelClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum SortType : c_int
	{
		ascending = 0,
		descending = 1
	}
	[CRepr]
	public struct Sorter;
	[LinkName("gtk_sorter_changed")]
	public static extern void SorterChanged(Sorter self, SorterChange change);
	[LinkName("gtk_sorter_compare")]
	public static extern Ordering SorterCompare(Sorter self, GObject.Object item1, GObject.Object item2);
	[LinkName("gtk_sorter_get_order")]
	public static extern SorterOrder SorterGetOrder(Sorter self);
	public enum SorterChange : c_int
	{
		different = 0,
		inverted = 1,
		less_strict = 2,
		more_strict = 3
	}
	[CRepr]
	public struct SorterClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum SorterOrder : c_int
	{
		partial = 0,
		none = 1,
		total = 2
	}
	[CRepr]
	public struct SpinButton;
	[LinkName("gtk_spin_button_new")]
	public static extern Widget* SpinButtonNew(Adjustment adjustment, double climb_rate, c_uint digits);
	[LinkName("gtk_spin_button_new_with_range")]
	public static extern Widget* SpinButtonNewWithRange(double min, double max, double step);
	[LinkName("gtk_spin_button_configure")]
	public static extern void SpinButtonConfigure(SpinButton spin_button, Adjustment adjustment, double climb_rate, c_uint digits);
	[LinkName("gtk_spin_button_get_adjustment")]
	public static extern Adjustment* SpinButtonGetAdjustment(SpinButton spin_button);
	[LinkName("gtk_spin_button_get_climb_rate")]
	public static extern double SpinButtonGetClimbRate(SpinButton spin_button);
	[LinkName("gtk_spin_button_get_digits")]
	public static extern c_uint SpinButtonGetDigits(SpinButton spin_button);
	[LinkName("gtk_spin_button_get_increments")]
	public static extern void SpinButtonGetIncrements(SpinButton spin_button, double step, double page);
	[LinkName("gtk_spin_button_get_numeric")]
	public static extern c_int SpinButtonGetNumeric(SpinButton spin_button);
	[LinkName("gtk_spin_button_get_range")]
	public static extern void SpinButtonGetRange(SpinButton spin_button, double min, double max);
	[LinkName("gtk_spin_button_get_snap_to_ticks")]
	public static extern c_int SpinButtonGetSnapToTicks(SpinButton spin_button);
	[LinkName("gtk_spin_button_get_update_policy")]
	public static extern SpinButtonUpdatePolicy SpinButtonGetUpdatePolicy(SpinButton spin_button);
	[LinkName("gtk_spin_button_get_value")]
	public static extern double SpinButtonGetValue(SpinButton spin_button);
	[LinkName("gtk_spin_button_get_value_as_int")]
	public static extern c_int SpinButtonGetValueAsInt(SpinButton spin_button);
	[LinkName("gtk_spin_button_get_wrap")]
	public static extern c_int SpinButtonGetWrap(SpinButton spin_button);
	[LinkName("gtk_spin_button_set_adjustment")]
	public static extern void SpinButtonSetAdjustment(SpinButton spin_button, Adjustment adjustment);
	[LinkName("gtk_spin_button_set_climb_rate")]
	public static extern void SpinButtonSetClimbRate(SpinButton spin_button, double climb_rate);
	[LinkName("gtk_spin_button_set_digits")]
	public static extern void SpinButtonSetDigits(SpinButton spin_button, c_uint digits);
	[LinkName("gtk_spin_button_set_increments")]
	public static extern void SpinButtonSetIncrements(SpinButton spin_button, double step, double page);
	[LinkName("gtk_spin_button_set_numeric")]
	public static extern void SpinButtonSetNumeric(SpinButton spin_button, c_int numeric);
	[LinkName("gtk_spin_button_set_range")]
	public static extern void SpinButtonSetRange(SpinButton spin_button, double min, double max);
	[LinkName("gtk_spin_button_set_snap_to_ticks")]
	public static extern void SpinButtonSetSnapToTicks(SpinButton spin_button, c_int snap_to_ticks);
	[LinkName("gtk_spin_button_set_update_policy")]
	public static extern void SpinButtonSetUpdatePolicy(SpinButton spin_button, SpinButtonUpdatePolicy policy);
	[LinkName("gtk_spin_button_set_value")]
	public static extern void SpinButtonSetValue(SpinButton spin_button, double value);
	[LinkName("gtk_spin_button_set_wrap")]
	public static extern void SpinButtonSetWrap(SpinButton spin_button, c_int wrap);
	[LinkName("gtk_spin_button_spin")]
	public static extern void SpinButtonSpin(SpinButton spin_button, SpinType direction, double increment);
	[LinkName("gtk_spin_button_update")]
	public static extern void SpinButtonUpdate(SpinButton spin_button);
	public enum SpinButtonUpdatePolicy : c_int
	{
		always = 0,
		if_valid = 1
	}
	public enum SpinType : c_int
	{
		step_forward = 0,
		step_backward = 1,
		page_forward = 2,
		page_backward = 3,
		home = 4,
		end = 5,
		user_defined = 6
	}
	[CRepr]
	public struct Spinner;
	[LinkName("gtk_spinner_new")]
	public static extern Widget* SpinnerNew();
	[LinkName("gtk_spinner_get_spinning")]
	public static extern c_int SpinnerGetSpinning(Spinner spinner);
	[LinkName("gtk_spinner_set_spinning")]
	public static extern void SpinnerSetSpinning(Spinner spinner, c_int spinning);
	[LinkName("gtk_spinner_start")]
	public static extern void SpinnerStart(Spinner spinner);
	[LinkName("gtk_spinner_stop")]
	public static extern void SpinnerStop(Spinner spinner);
	[CRepr]
	public struct Stack;
	[LinkName("gtk_stack_new")]
	public static extern Widget* StackNew();
	[LinkName("gtk_stack_add_child")]
	public static extern StackPage* StackAddChild(Stack stack_, Widget child);
	[LinkName("gtk_stack_add_named")]
	public static extern StackPage* StackAddNamed(Stack stack_, Widget child, char8* name);
	[LinkName("gtk_stack_add_titled")]
	public static extern StackPage* StackAddTitled(Stack stack_, Widget child, char8* name, char8* title);
	[LinkName("gtk_stack_get_child_by_name")]
	public static extern Widget* StackGetChildByName(Stack stack_, char8* name);
	[LinkName("gtk_stack_get_hhomogeneous")]
	public static extern c_int StackGetHhomogeneous(Stack stack_);
	[LinkName("gtk_stack_get_interpolate_size")]
	public static extern c_int StackGetInterpolateSize(Stack stack_);
	[LinkName("gtk_stack_get_page")]
	public static extern StackPage* StackGetPage(Stack stack_, Widget child);
	[LinkName("gtk_stack_get_pages")]
	public static extern SelectionModel* StackGetPages(Stack stack_);
	[LinkName("gtk_stack_get_transition_duration")]
	public static extern c_uint StackGetTransitionDuration(Stack stack_);
	[LinkName("gtk_stack_get_transition_running")]
	public static extern c_int StackGetTransitionRunning(Stack stack_);
	[LinkName("gtk_stack_get_transition_type")]
	public static extern StackTransitionType StackGetTransitionType(Stack stack_);
	[LinkName("gtk_stack_get_vhomogeneous")]
	public static extern c_int StackGetVhomogeneous(Stack stack_);
	[LinkName("gtk_stack_get_visible_child")]
	public static extern Widget* StackGetVisibleChild(Stack stack_);
	[LinkName("gtk_stack_get_visible_child_name")]
	public static extern char8** StackGetVisibleChildName(Stack stack_);
	[LinkName("gtk_stack_remove")]
	public static extern void StackRemove(Stack stack_, Widget child);
	[LinkName("gtk_stack_set_hhomogeneous")]
	public static extern void StackSetHhomogeneous(Stack stack_, c_int hhomogeneous);
	[LinkName("gtk_stack_set_interpolate_size")]
	public static extern void StackSetInterpolateSize(Stack stack_, c_int interpolate_size);
	[LinkName("gtk_stack_set_transition_duration")]
	public static extern void StackSetTransitionDuration(Stack stack_, c_uint duration);
	[LinkName("gtk_stack_set_transition_type")]
	public static extern void StackSetTransitionType(Stack stack_, StackTransitionType transition);
	[LinkName("gtk_stack_set_vhomogeneous")]
	public static extern void StackSetVhomogeneous(Stack stack_, c_int vhomogeneous);
	[LinkName("gtk_stack_set_visible_child")]
	public static extern void StackSetVisibleChild(Stack stack_, Widget child);
	[LinkName("gtk_stack_set_visible_child_full")]
	public static extern void StackSetVisibleChildFull(Stack stack_, char8* name, StackTransitionType transition);
	[LinkName("gtk_stack_set_visible_child_name")]
	public static extern void StackSetVisibleChildName(Stack stack_, char8* name);
	[CRepr]
	public struct StackPage;
	[LinkName("gtk_stack_page_get_child")]
	public static extern Widget* StackPageGetChild(StackPage self);
	[LinkName("gtk_stack_page_get_icon_name")]
	public static extern char8** StackPageGetIconName(StackPage self);
	[LinkName("gtk_stack_page_get_name")]
	public static extern char8** StackPageGetName(StackPage self);
	[LinkName("gtk_stack_page_get_needs_attention")]
	public static extern c_int StackPageGetNeedsAttention(StackPage self);
	[LinkName("gtk_stack_page_get_title")]
	public static extern char8** StackPageGetTitle(StackPage self);
	[LinkName("gtk_stack_page_get_use_underline")]
	public static extern c_int StackPageGetUseUnderline(StackPage self);
	[LinkName("gtk_stack_page_get_visible")]
	public static extern c_int StackPageGetVisible(StackPage self);
	[LinkName("gtk_stack_page_set_icon_name")]
	public static extern void StackPageSetIconName(StackPage self, char8* setting);
	[LinkName("gtk_stack_page_set_name")]
	public static extern void StackPageSetName(StackPage self, char8* setting);
	[LinkName("gtk_stack_page_set_needs_attention")]
	public static extern void StackPageSetNeedsAttention(StackPage self, c_int setting);
	[LinkName("gtk_stack_page_set_title")]
	public static extern void StackPageSetTitle(StackPage self, char8* setting);
	[LinkName("gtk_stack_page_set_use_underline")]
	public static extern void StackPageSetUseUnderline(StackPage self, c_int setting);
	[LinkName("gtk_stack_page_set_visible")]
	public static extern void StackPageSetVisible(StackPage self, c_int visible);
	[CRepr]
	public struct StackSidebar;
	[LinkName("gtk_stack_sidebar_new")]
	public static extern Widget* StackSidebarNew();
	[LinkName("gtk_stack_sidebar_get_stack")]
	public static extern Stack* StackSidebarGetStack(StackSidebar self);
	[LinkName("gtk_stack_sidebar_set_stack")]
	public static extern void StackSidebarSetStack(StackSidebar self, Stack stack_);
	[CRepr]
	public struct StackSwitcher;
	[LinkName("gtk_stack_switcher_new")]
	public static extern Widget* StackSwitcherNew();
	[LinkName("gtk_stack_switcher_get_stack")]
	public static extern Stack* StackSwitcherGetStack(StackSwitcher switcher);
	[LinkName("gtk_stack_switcher_set_stack")]
	public static extern void StackSwitcherSetStack(StackSwitcher switcher, Stack stack_);
	public enum StackTransitionType : c_int
	{
		none = 0,
		crossfade = 1,
		slide_right = 2,
		slide_left = 3,
		slide_up = 4,
		slide_down = 5,
		slide_left_right = 6,
		slide_up_down = 7,
		over_up = 8,
		over_down = 9,
		over_left = 10,
		over_right = 11,
		under_up = 12,
		under_down = 13,
		under_left = 14,
		under_right = 15,
		over_up_down = 16,
		over_down_up = 17,
		over_left_right = 18,
		over_right_left = 19,
		rotate_left = 20,
		rotate_right = 21,
		rotate_left_right = 22
	}
	[CRepr]
	public enum StateFlags : int
	{
		normal = 0,
		active = 1,
		prelight = 2,
		selected = 4,
		insensitive = 8,
		inconsistent = 16,
		focused = 32,
		backdrop = 64,
		dir_ltr = 128,
		dir_rtl = 256,
		link = 512,
		visited = 1024,
		checked_ = 2048,
		drop_active = 4096,
		focus_visible = 8192,
		focus_within = 16384
	}
	[CRepr]
	public struct Statusbar;
	[LinkName("gtk_statusbar_new")]
	public static extern Widget* StatusbarNew();
	[LinkName("gtk_statusbar_get_context_id")]
	public static extern c_uint StatusbarGetContextId(Statusbar statusbar, char8* context_description);
	[LinkName("gtk_statusbar_pop")]
	public static extern void StatusbarPop(Statusbar statusbar, c_uint context_id);
	[LinkName("gtk_statusbar_push")]
	public static extern c_uint StatusbarPush(Statusbar statusbar, c_uint context_id, char8* text);
	[LinkName("gtk_statusbar_remove")]
	public static extern void StatusbarRemove(Statusbar statusbar, c_uint context_id, c_uint message_id);
	[LinkName("gtk_statusbar_remove_all")]
	public static extern void StatusbarRemoveAll(Statusbar statusbar, c_uint context_id);
	[CRepr]
	public struct StringFilter;
	[LinkName("gtk_string_filter_new")]
	public static extern StringFilter* StringFilterNew(Expression expression);
	[LinkName("gtk_string_filter_get_expression")]
	public static extern Expression* StringFilterGetExpression(StringFilter self);
	[LinkName("gtk_string_filter_get_ignore_case")]
	public static extern c_int StringFilterGetIgnoreCase(StringFilter self);
	[LinkName("gtk_string_filter_get_match_mode")]
	public static extern StringFilterMatchMode StringFilterGetMatchMode(StringFilter self);
	[LinkName("gtk_string_filter_get_search")]
	public static extern char8** StringFilterGetSearch(StringFilter self);
	[LinkName("gtk_string_filter_set_expression")]
	public static extern void StringFilterSetExpression(StringFilter self, Expression expression);
	[LinkName("gtk_string_filter_set_ignore_case")]
	public static extern void StringFilterSetIgnoreCase(StringFilter self, c_int ignore_case);
	[LinkName("gtk_string_filter_set_match_mode")]
	public static extern void StringFilterSetMatchMode(StringFilter self, StringFilterMatchMode mode);
	[LinkName("gtk_string_filter_set_search")]
	public static extern void StringFilterSetSearch(StringFilter self, char8* search);
	[CRepr]
	public struct StringFilterClass
	{
		FilterClass parent_class;
	}
	public enum StringFilterMatchMode : c_int
	{
		exact = 0,
		substring = 1,
		prefix = 2
	}
	[CRepr]
	public struct StringList;
	[LinkName("gtk_string_list_new")]
	public static extern StringList* StringListNew();
	[LinkName("gtk_string_list_append")]
	public static extern void StringListAppend(StringList self, char8* string);
	[LinkName("gtk_string_list_get_string")]
	public static extern char8** StringListGetString(StringList self, c_uint position);
	[LinkName("gtk_string_list_remove")]
	public static extern void StringListRemove(StringList self, c_uint position);
	[LinkName("gtk_string_list_splice")]
	public static extern void StringListSplice(StringList self, c_uint position, c_uint n_removals);
	[LinkName("gtk_string_list_take")]
	public static extern void StringListTake(StringList self, char8* string);
	[CRepr]
	public struct StringListClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct StringObject;
	[LinkName("gtk_string_object_new")]
	public static extern StringObject* StringObjectNew(char8* string);
	[LinkName("gtk_string_object_get_string")]
	public static extern char8** StringObjectGetString(StringObject self);
	[CRepr]
	public struct StringObjectClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct StringSorter;
	[LinkName("gtk_string_sorter_new")]
	public static extern StringSorter* StringSorterNew(Expression expression);
	[LinkName("gtk_string_sorter_get_collation")]
	public static extern Collation StringSorterGetCollation(StringSorter self);
	[LinkName("gtk_string_sorter_get_expression")]
	public static extern Expression* StringSorterGetExpression(StringSorter self);
	[LinkName("gtk_string_sorter_get_ignore_case")]
	public static extern c_int StringSorterGetIgnoreCase(StringSorter self);
	[LinkName("gtk_string_sorter_set_collation")]
	public static extern void StringSorterSetCollation(StringSorter self, Collation collation);
	[LinkName("gtk_string_sorter_set_expression")]
	public static extern void StringSorterSetExpression(StringSorter self, Expression expression);
	[LinkName("gtk_string_sorter_set_ignore_case")]
	public static extern void StringSorterSetIgnoreCase(StringSorter self, c_int ignore_case);
	[CRepr]
	public struct StringSorterClass
	{
		SorterClass parent_class;
	}
	[CRepr]
	public struct StyleContext;
	[LinkName("gtk_style_context_add_class")]
	public static extern void StyleContextAddClass(StyleContext context, char8* class_name);
	[LinkName("gtk_style_context_add_provider")]
	public static extern void StyleContextAddProvider(StyleContext context, StyleProvider provider, c_uint priority);
	[LinkName("gtk_style_context_get_border")]
	public static extern void StyleContextGetBorder(StyleContext context, Border border);
	[LinkName("gtk_style_context_get_color")]
	public static extern void StyleContextGetColor(StyleContext context, Gdk.RGBA color);
	[LinkName("gtk_style_context_get_display")]
	public static extern Gdk.Display* StyleContextGetDisplay(StyleContext context);
	[LinkName("gtk_style_context_get_margin")]
	public static extern void StyleContextGetMargin(StyleContext context, Border margin);
	[LinkName("gtk_style_context_get_padding")]
	public static extern void StyleContextGetPadding(StyleContext context, Border padding);
	[LinkName("gtk_style_context_get_scale")]
	public static extern c_int StyleContextGetScale(StyleContext context);
	[LinkName("gtk_style_context_get_state")]
	public static extern StateFlags StyleContextGetState(StyleContext context);
	[LinkName("gtk_style_context_has_class")]
	public static extern c_int StyleContextHasClass(StyleContext context, char8* class_name);
	[LinkName("gtk_style_context_lookup_color")]
	public static extern c_int StyleContextLookupColor(StyleContext context, char8* color_name, Gdk.RGBA color);
	[LinkName("gtk_style_context_remove_class")]
	public static extern void StyleContextRemoveClass(StyleContext context, char8* class_name);
	[LinkName("gtk_style_context_remove_provider")]
	public static extern void StyleContextRemoveProvider(StyleContext context, StyleProvider provider);
	[LinkName("gtk_style_context_restore")]
	public static extern void StyleContextRestore(StyleContext context);
	[LinkName("gtk_style_context_save")]
	public static extern void StyleContextSave(StyleContext context);
	[LinkName("gtk_style_context_set_display")]
	public static extern void StyleContextSetDisplay(StyleContext context, Gdk.Display display);
	[LinkName("gtk_style_context_set_scale")]
	public static extern void StyleContextSetScale(StyleContext context, c_int scale);
	[LinkName("gtk_style_context_set_state")]
	public static extern void StyleContextSetState(StyleContext context, StateFlags flags);
	[LinkName("gtk_style_context_to_string")]
	public static extern char8** StyleContextToString(StyleContext context, StyleContextPrintFlags flags);
	[CRepr]
	public struct StyleContextClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public enum StyleContextPrintFlags : int
	{
		none = 0,
		recurse = 1,
		show_style = 2,
		show_change = 4
	}
	[CRepr]
	public struct StyleProvider
	{	}
	[CRepr]
	public struct Switch;
	[LinkName("gtk_switch_new")]
	public static extern Widget* SwitchNew();
	[LinkName("gtk_switch_get_active")]
	public static extern c_int SwitchGetActive(Switch self);
	[LinkName("gtk_switch_get_state")]
	public static extern c_int SwitchGetState(Switch self);
	[LinkName("gtk_switch_set_active")]
	public static extern void SwitchSetActive(Switch self, c_int is_active);
	[LinkName("gtk_switch_set_state")]
	public static extern void SwitchSetState(Switch self, c_int state);
	public enum SymbolicColor : c_int
	{
		foreground = 0,
		error = 1,
		warning = 2,
		success = 3
	}
	[CRepr]
	public struct SymbolicPaintable
	{
		public function void(SymbolicPaintable paintable, Gdk.Snapshot snapshot, double width, double height, c_ulong n_colors) snapshot_symbolic;
	}
	[CRepr]
	public struct SymbolicPaintableInterface
	{
		GObject.TypeInterface g_iface;
	}
	public enum SystemSetting : c_int
	{
		dpi = 0,
		font_name = 1,
		font_config = 2,
		display = 3,
		icon_theme = 4
	}
	[CRepr]
	public struct Text;
	[LinkName("gtk_text_new")]
	public static extern Widget* TextNew();
	[LinkName("gtk_text_new_with_buffer")]
	public static extern Widget* TextNewWithBuffer(EntryBuffer buffer);
	[LinkName("gtk_text_compute_cursor_extents")]
	public static extern void TextComputeCursorExtents(Text self, c_ulong position, Graphene.Rect strong, Graphene.Rect weak);
	[LinkName("gtk_text_get_activates_default")]
	public static extern c_int TextGetActivatesDefault(Text self);
	[LinkName("gtk_text_get_attributes")]
	public static extern Pango.AttrList* TextGetAttributes(Text self);
	[LinkName("gtk_text_get_buffer")]
	public static extern EntryBuffer* TextGetBuffer(Text self);
	[LinkName("gtk_text_get_enable_emoji_completion")]
	public static extern c_int TextGetEnableEmojiCompletion(Text self);
	[LinkName("gtk_text_get_extra_menu")]
	public static extern Gio.MenuModel* TextGetExtraMenu(Text self);
	[LinkName("gtk_text_get_input_hints")]
	public static extern InputHints TextGetInputHints(Text self);
	[LinkName("gtk_text_get_input_purpose")]
	public static extern InputPurpose TextGetInputPurpose(Text self);
	[LinkName("gtk_text_get_invisible_char")]
	public static extern c_uint TextGetInvisibleChar(Text self);
	[LinkName("gtk_text_get_max_length")]
	public static extern c_int TextGetMaxLength(Text self);
	[LinkName("gtk_text_get_overwrite_mode")]
	public static extern c_int TextGetOverwriteMode(Text self);
	[LinkName("gtk_text_get_placeholder_text")]
	public static extern char8** TextGetPlaceholderText(Text self);
	[LinkName("gtk_text_get_propagate_text_width")]
	public static extern c_int TextGetPropagateTextWidth(Text self);
	[LinkName("gtk_text_get_tabs")]
	public static extern Pango.TabArray* TextGetTabs(Text self);
	[LinkName("gtk_text_get_text_length")]
	public static extern c_ushort TextGetTextLength(Text self);
	[LinkName("gtk_text_get_truncate_multiline")]
	public static extern c_int TextGetTruncateMultiline(Text self);
	[LinkName("gtk_text_get_visibility")]
	public static extern c_int TextGetVisibility(Text self);
	[LinkName("gtk_text_grab_focus_without_selecting")]
	public static extern c_int TextGrabFocusWithoutSelecting(Text self);
	[LinkName("gtk_text_set_activates_default")]
	public static extern void TextSetActivatesDefault(Text self, c_int activates);
	[LinkName("gtk_text_set_attributes")]
	public static extern void TextSetAttributes(Text self, Pango.AttrList attrs);
	[LinkName("gtk_text_set_buffer")]
	public static extern void TextSetBuffer(Text self, EntryBuffer buffer);
	[LinkName("gtk_text_set_enable_emoji_completion")]
	public static extern void TextSetEnableEmojiCompletion(Text self, c_int enable_emoji_completion);
	[LinkName("gtk_text_set_extra_menu")]
	public static extern void TextSetExtraMenu(Text self, Gio.MenuModel model);
	[LinkName("gtk_text_set_input_hints")]
	public static extern void TextSetInputHints(Text self, InputHints hints);
	[LinkName("gtk_text_set_input_purpose")]
	public static extern void TextSetInputPurpose(Text self, InputPurpose purpose);
	[LinkName("gtk_text_set_invisible_char")]
	public static extern void TextSetInvisibleChar(Text self, c_uint ch);
	[LinkName("gtk_text_set_max_length")]
	public static extern void TextSetMaxLength(Text self, c_int length);
	[LinkName("gtk_text_set_overwrite_mode")]
	public static extern void TextSetOverwriteMode(Text self, c_int overwrite);
	[LinkName("gtk_text_set_placeholder_text")]
	public static extern void TextSetPlaceholderText(Text self, char8* text);
	[LinkName("gtk_text_set_propagate_text_width")]
	public static extern void TextSetPropagateTextWidth(Text self, c_int propagate_text_width);
	[LinkName("gtk_text_set_tabs")]
	public static extern void TextSetTabs(Text self, Pango.TabArray tabs);
	[LinkName("gtk_text_set_truncate_multiline")]
	public static extern void TextSetTruncateMultiline(Text self, c_int truncate_multiline);
	[LinkName("gtk_text_set_visibility")]
	public static extern void TextSetVisibility(Text self, c_int visible);
	[LinkName("gtk_text_unset_invisible_char")]
	public static extern void TextUnsetInvisibleChar(Text self);
	[CRepr]
	public struct TextBuffer;
	[LinkName("gtk_text_buffer_new")]
	public static extern TextBuffer* TextBufferNew(TextTagTable table);
	[LinkName("gtk_text_buffer_add_mark")]
	public static extern void TextBufferAddMark(TextBuffer buffer, TextMark mark, TextIter where_);
	[LinkName("gtk_text_buffer_add_selection_clipboard")]
	public static extern void TextBufferAddSelectionClipboard(TextBuffer buffer, Gdk.Clipboard clipboard);
	[LinkName("gtk_text_buffer_apply_tag")]
	public static extern void TextBufferApplyTag(TextBuffer buffer, TextTag tag, TextIter start, TextIter end);
	[LinkName("gtk_text_buffer_apply_tag_by_name")]
	public static extern void TextBufferApplyTagByName(TextBuffer buffer, char8* name, TextIter start, TextIter end);
	[LinkName("gtk_text_buffer_backspace")]
	public static extern c_int TextBufferBackspace(TextBuffer buffer, TextIter iter, c_int interactive, c_int default_editable);
	[LinkName("gtk_text_buffer_begin_irreversible_action")]
	public static extern void TextBufferBeginIrreversibleAction(TextBuffer buffer);
	[LinkName("gtk_text_buffer_begin_user_action")]
	public static extern void TextBufferBeginUserAction(TextBuffer buffer);
	[LinkName("gtk_text_buffer_copy_clipboard")]
	public static extern void TextBufferCopyClipboard(TextBuffer buffer, Gdk.Clipboard clipboard);
	[LinkName("gtk_text_buffer_create_child_anchor")]
	public static extern TextChildAnchor* TextBufferCreateChildAnchor(TextBuffer buffer, TextIter iter);
	[LinkName("gtk_text_buffer_create_mark")]
	public static extern TextMark* TextBufferCreateMark(TextBuffer buffer, char8* mark_name, TextIter where_, c_int left_gravity);
	[LinkName("gtk_text_buffer_create_tag")]
	public static extern TextTag* TextBufferCreateTag(TextBuffer buffer, char8* tag_name, char8* first_property_name);
	[LinkName("gtk_text_buffer_cut_clipboard")]
	public static extern void TextBufferCutClipboard(TextBuffer buffer, Gdk.Clipboard clipboard, c_int default_editable);
	[LinkName("gtk_text_buffer_delete")]
	public static extern void TextBufferDelete(TextBuffer buffer, TextIter start, TextIter end);
	[LinkName("gtk_text_buffer_delete_interactive")]
	public static extern c_int TextBufferDeleteInteractive(TextBuffer buffer, TextIter start_iter, TextIter end_iter, c_int default_editable);
	[LinkName("gtk_text_buffer_delete_mark")]
	public static extern void TextBufferDeleteMark(TextBuffer buffer, TextMark mark);
	[LinkName("gtk_text_buffer_delete_mark_by_name")]
	public static extern void TextBufferDeleteMarkByName(TextBuffer buffer, char8* name);
	[LinkName("gtk_text_buffer_delete_selection")]
	public static extern c_int TextBufferDeleteSelection(TextBuffer buffer, c_int interactive, c_int default_editable);
	[LinkName("gtk_text_buffer_end_irreversible_action")]
	public static extern void TextBufferEndIrreversibleAction(TextBuffer buffer);
	[LinkName("gtk_text_buffer_end_user_action")]
	public static extern void TextBufferEndUserAction(TextBuffer buffer);
	[LinkName("gtk_text_buffer_get_bounds")]
	public static extern void TextBufferGetBounds(TextBuffer buffer, TextIter start, TextIter end);
	[LinkName("gtk_text_buffer_get_can_redo")]
	public static extern c_int TextBufferGetCanRedo(TextBuffer buffer);
	[LinkName("gtk_text_buffer_get_can_undo")]
	public static extern c_int TextBufferGetCanUndo(TextBuffer buffer);
	[LinkName("gtk_text_buffer_get_char_count")]
	public static extern c_int TextBufferGetCharCount(TextBuffer buffer);
	[LinkName("gtk_text_buffer_get_enable_undo")]
	public static extern c_int TextBufferGetEnableUndo(TextBuffer buffer);
	[LinkName("gtk_text_buffer_get_end_iter")]
	public static extern void TextBufferGetEndIter(TextBuffer buffer, TextIter iter);
	[LinkName("gtk_text_buffer_get_has_selection")]
	public static extern c_int TextBufferGetHasSelection(TextBuffer buffer);
	[LinkName("gtk_text_buffer_get_insert")]
	public static extern TextMark* TextBufferGetInsert(TextBuffer buffer);
	[LinkName("gtk_text_buffer_get_iter_at_child_anchor")]
	public static extern void TextBufferGetIterAtChildAnchor(TextBuffer buffer, TextIter iter, TextChildAnchor anchor);
	[LinkName("gtk_text_buffer_get_iter_at_line")]
	public static extern c_int TextBufferGetIterAtLine(TextBuffer buffer, TextIter iter, c_int line_number);
	[LinkName("gtk_text_buffer_get_iter_at_line_index")]
	public static extern c_int TextBufferGetIterAtLineIndex(TextBuffer buffer, TextIter iter, c_int line_number, c_int byte_index);
	[LinkName("gtk_text_buffer_get_iter_at_line_offset")]
	public static extern c_int TextBufferGetIterAtLineOffset(TextBuffer buffer, TextIter iter, c_int line_number, c_int char_offset);
	[LinkName("gtk_text_buffer_get_iter_at_mark")]
	public static extern void TextBufferGetIterAtMark(TextBuffer buffer, TextIter iter, TextMark mark);
	[LinkName("gtk_text_buffer_get_iter_at_offset")]
	public static extern void TextBufferGetIterAtOffset(TextBuffer buffer, TextIter iter, c_int char_offset);
	[LinkName("gtk_text_buffer_get_line_count")]
	public static extern c_int TextBufferGetLineCount(TextBuffer buffer);
	[LinkName("gtk_text_buffer_get_mark")]
	public static extern TextMark* TextBufferGetMark(TextBuffer buffer, char8* name);
	[LinkName("gtk_text_buffer_get_max_undo_levels")]
	public static extern c_uint TextBufferGetMaxUndoLevels(TextBuffer buffer);
	[LinkName("gtk_text_buffer_get_modified")]
	public static extern c_int TextBufferGetModified(TextBuffer buffer);
	[LinkName("gtk_text_buffer_get_selection_bound")]
	public static extern TextMark* TextBufferGetSelectionBound(TextBuffer buffer);
	[LinkName("gtk_text_buffer_get_selection_bounds")]
	public static extern c_int TextBufferGetSelectionBounds(TextBuffer buffer, TextIter start, TextIter end);
	[LinkName("gtk_text_buffer_get_selection_content")]
	public static extern Gdk.ContentProvider* TextBufferGetSelectionContent(TextBuffer buffer);
	[LinkName("gtk_text_buffer_get_slice")]
	public static extern char8** TextBufferGetSlice(TextBuffer buffer, TextIter start, TextIter end, c_int include_hidden_chars);
	[LinkName("gtk_text_buffer_get_start_iter")]
	public static extern void TextBufferGetStartIter(TextBuffer buffer, TextIter iter);
	[LinkName("gtk_text_buffer_get_tag_table")]
	public static extern TextTagTable* TextBufferGetTagTable(TextBuffer buffer);
	[LinkName("gtk_text_buffer_get_text")]
	public static extern char8** TextBufferGetText(TextBuffer buffer, TextIter start, TextIter end, c_int include_hidden_chars);
	[LinkName("gtk_text_buffer_insert")]
	public static extern void TextBufferInsert(TextBuffer buffer, TextIter iter, char8* text, c_int len);
	[LinkName("gtk_text_buffer_insert_at_cursor")]
	public static extern void TextBufferInsertAtCursor(TextBuffer buffer, char8* text, c_int len);
	[LinkName("gtk_text_buffer_insert_child_anchor")]
	public static extern void TextBufferInsertChildAnchor(TextBuffer buffer, TextIter iter, TextChildAnchor anchor);
	[LinkName("gtk_text_buffer_insert_interactive")]
	public static extern c_int TextBufferInsertInteractive(TextBuffer buffer, TextIter iter, char8* text, c_int len, c_int default_editable);
	[LinkName("gtk_text_buffer_insert_interactive_at_cursor")]
	public static extern c_int TextBufferInsertInteractiveAtCursor(TextBuffer buffer, char8* text, c_int len, c_int default_editable);
	[LinkName("gtk_text_buffer_insert_markup")]
	public static extern void TextBufferInsertMarkup(TextBuffer buffer, TextIter iter, char8* markup, c_int len);
	[LinkName("gtk_text_buffer_insert_paintable")]
	public static extern void TextBufferInsertPaintable(TextBuffer buffer, TextIter iter, Gdk.Paintable paintable);
	[LinkName("gtk_text_buffer_insert_range")]
	public static extern void TextBufferInsertRange(TextBuffer buffer, TextIter iter, TextIter start, TextIter end);
	[LinkName("gtk_text_buffer_insert_range_interactive")]
	public static extern c_int TextBufferInsertRangeInteractive(TextBuffer buffer, TextIter iter, TextIter start, TextIter end, c_int default_editable);
	[LinkName("gtk_text_buffer_insert_with_tags")]
	public static extern void TextBufferInsertWithTags(TextBuffer buffer, TextIter iter, char8* text, c_int len, TextTag first_tag);
	[LinkName("gtk_text_buffer_insert_with_tags_by_name")]
	public static extern void TextBufferInsertWithTagsByName(TextBuffer buffer, TextIter iter, char8* text, c_int len, char8* first_tag_name);
	[LinkName("gtk_text_buffer_move_mark")]
	public static extern void TextBufferMoveMark(TextBuffer buffer, TextMark mark, TextIter where_);
	[LinkName("gtk_text_buffer_move_mark_by_name")]
	public static extern void TextBufferMoveMarkByName(TextBuffer buffer, char8* name, TextIter where_);
	[LinkName("gtk_text_buffer_paste_clipboard")]
	public static extern void TextBufferPasteClipboard(TextBuffer buffer, Gdk.Clipboard clipboard, TextIter override_location, c_int default_editable);
	[LinkName("gtk_text_buffer_place_cursor")]
	public static extern void TextBufferPlaceCursor(TextBuffer buffer, TextIter where_);
	[LinkName("gtk_text_buffer_redo")]
	public static extern void TextBufferRedo(TextBuffer buffer);
	[LinkName("gtk_text_buffer_remove_all_tags")]
	public static extern void TextBufferRemoveAllTags(TextBuffer buffer, TextIter start, TextIter end);
	[LinkName("gtk_text_buffer_remove_selection_clipboard")]
	public static extern void TextBufferRemoveSelectionClipboard(TextBuffer buffer, Gdk.Clipboard clipboard);
	[LinkName("gtk_text_buffer_remove_tag")]
	public static extern void TextBufferRemoveTag(TextBuffer buffer, TextTag tag, TextIter start, TextIter end);
	[LinkName("gtk_text_buffer_remove_tag_by_name")]
	public static extern void TextBufferRemoveTagByName(TextBuffer buffer, char8* name, TextIter start, TextIter end);
	[LinkName("gtk_text_buffer_select_range")]
	public static extern void TextBufferSelectRange(TextBuffer buffer, TextIter ins, TextIter bound);
	[LinkName("gtk_text_buffer_set_enable_undo")]
	public static extern void TextBufferSetEnableUndo(TextBuffer buffer, c_int enable_undo);
	[LinkName("gtk_text_buffer_set_max_undo_levels")]
	public static extern void TextBufferSetMaxUndoLevels(TextBuffer buffer, c_uint max_undo_levels);
	[LinkName("gtk_text_buffer_set_modified")]
	public static extern void TextBufferSetModified(TextBuffer buffer, c_int setting);
	[LinkName("gtk_text_buffer_set_text")]
	public static extern void TextBufferSetText(TextBuffer buffer, char8* text, c_int len);
	[LinkName("gtk_text_buffer_undo")]
	public static extern void TextBufferUndo(TextBuffer buffer);
	[CRepr]
	public struct TextBufferClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct TextBufferPrivate
	{
	}
	public function c_int TextCharPredicate(c_uint ch, void* user_data);
	[CRepr]
	public struct TextChildAnchor;
	[LinkName("gtk_text_child_anchor_new")]
	public static extern TextChildAnchor* TextChildAnchorNew();
	[LinkName("gtk_text_child_anchor_new_with_replacement")]
	public static extern TextChildAnchor* TextChildAnchorNewWithReplacement(char8* character);
	[LinkName("gtk_text_child_anchor_get_deleted")]
	public static extern c_int TextChildAnchorGetDeleted(TextChildAnchor anchor);
	[LinkName("gtk_text_child_anchor_get_widgets")]
	public static extern Widget TextChildAnchorGetWidgets(TextChildAnchor anchor, c_uint out_len);
	[CRepr]
	public struct TextChildAnchorClass
	{
		GObject.ObjectClass parent_class;
	}
	public enum TextDirection : c_int
	{
		none = 0,
		ltr = 1,
		rtl = 2
	}
	public enum TextExtendSelection : c_int
	{
		word = 0,
		line = 1
	}
	[CRepr]
	public struct TextIter
	{
		void* dummy1;
		void* dummy2;
		c_int dummy3;
		c_int dummy4;
		c_int dummy5;
		c_int dummy6;
		c_int dummy7;
		c_int dummy8;
		void* dummy9;
		void* dummy10;
		c_int dummy11;
		c_int dummy12;
		c_int dummy13;
		void* dummy14;
	}
	[CRepr]
	public struct TextMark;
	[LinkName("gtk_text_mark_new")]
	public static extern TextMark* TextMarkNew(char8* name, c_int left_gravity);
	[LinkName("gtk_text_mark_get_buffer")]
	public static extern TextBuffer* TextMarkGetBuffer(TextMark mark);
	[LinkName("gtk_text_mark_get_deleted")]
	public static extern c_int TextMarkGetDeleted(TextMark mark);
	[LinkName("gtk_text_mark_get_left_gravity")]
	public static extern c_int TextMarkGetLeftGravity(TextMark mark);
	[LinkName("gtk_text_mark_get_name")]
	public static extern char8** TextMarkGetName(TextMark mark);
	[LinkName("gtk_text_mark_get_visible")]
	public static extern c_int TextMarkGetVisible(TextMark mark);
	[LinkName("gtk_text_mark_set_visible")]
	public static extern void TextMarkSetVisible(TextMark mark, c_int setting);
	[CRepr]
	public struct TextMarkClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public enum TextSearchFlags : int
	{
		visible_only = 1,
		text_only = 2,
		case_insensitive = 4
	}
	[CRepr]
	public struct TextTag;
	[LinkName("gtk_text_tag_new")]
	public static extern TextTag* TextTagNew(char8* name);
	[LinkName("gtk_text_tag_changed")]
	public static extern void TextTagChanged(TextTag tag, c_int size_changed);
	[LinkName("gtk_text_tag_get_priority")]
	public static extern c_int TextTagGetPriority(TextTag tag);
	[LinkName("gtk_text_tag_set_priority")]
	public static extern void TextTagSetPriority(TextTag tag, c_int priority);
	[CRepr]
	public struct TextTagClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct TextTagPrivate
	{
	}
	[CRepr]
	public struct TextTagTable;
	[LinkName("gtk_text_tag_table_new")]
	public static extern TextTagTable* TextTagTableNew();
	[LinkName("gtk_text_tag_table_add")]
	public static extern c_int TextTagTableAdd(TextTagTable table, TextTag tag);
	[LinkName("gtk_text_tag_table_foreach")]
	public static extern void TextTagTableForeach(TextTagTable table, TextTagTableForeach func, void* data);
	[LinkName("gtk_text_tag_table_get_size")]
	public static extern c_int TextTagTableGetSize(TextTagTable table);
	[LinkName("gtk_text_tag_table_lookup")]
	public static extern TextTag* TextTagTableLookup(TextTagTable table, char8* name);
	[LinkName("gtk_text_tag_table_remove")]
	public static extern void TextTagTableRemove(TextTagTable table, TextTag tag);
	public function void TextTagTableForeach(TextTag tag, void* data);
	[CRepr]
	public struct TextView;
	[LinkName("gtk_text_view_new")]
	public static extern Widget* TextViewNew();
	[LinkName("gtk_text_view_new_with_buffer")]
	public static extern Widget* TextViewNewWithBuffer(TextBuffer buffer);
	[LinkName("gtk_text_view_add_child_at_anchor")]
	public static extern void TextViewAddChildAtAnchor(TextView text_view, Widget child, TextChildAnchor anchor);
	[LinkName("gtk_text_view_add_overlay")]
	public static extern void TextViewAddOverlay(TextView text_view, Widget child, c_int xpos, c_int ypos);
	[LinkName("gtk_text_view_backward_display_line")]
	public static extern c_int TextViewBackwardDisplayLine(TextView text_view, TextIter iter);
	[LinkName("gtk_text_view_backward_display_line_start")]
	public static extern c_int TextViewBackwardDisplayLineStart(TextView text_view, TextIter iter);
	[LinkName("gtk_text_view_buffer_to_window_coords")]
	public static extern void TextViewBufferToWindowCoords(TextView text_view, TextWindowType win, c_int buffer_x, c_int buffer_y, c_int window_x, c_int window_y);
	[LinkName("gtk_text_view_forward_display_line")]
	public static extern c_int TextViewForwardDisplayLine(TextView text_view, TextIter iter);
	[LinkName("gtk_text_view_forward_display_line_end")]
	public static extern c_int TextViewForwardDisplayLineEnd(TextView text_view, TextIter iter);
	[LinkName("gtk_text_view_get_accepts_tab")]
	public static extern c_int TextViewGetAcceptsTab(TextView text_view);
	[LinkName("gtk_text_view_get_bottom_margin")]
	public static extern c_int TextViewGetBottomMargin(TextView text_view);
	[LinkName("gtk_text_view_get_buffer")]
	public static extern TextBuffer* TextViewGetBuffer(TextView text_view);
	[LinkName("gtk_text_view_get_cursor_locations")]
	public static extern void TextViewGetCursorLocations(TextView text_view, TextIter iter, Gdk.Rectangle strong, Gdk.Rectangle weak);
	[LinkName("gtk_text_view_get_cursor_visible")]
	public static extern c_int TextViewGetCursorVisible(TextView text_view);
	[LinkName("gtk_text_view_get_editable")]
	public static extern c_int TextViewGetEditable(TextView text_view);
	[LinkName("gtk_text_view_get_extra_menu")]
	public static extern Gio.MenuModel* TextViewGetExtraMenu(TextView text_view);
	[LinkName("gtk_text_view_get_gutter")]
	public static extern Widget* TextViewGetGutter(TextView text_view, TextWindowType win);
	[LinkName("gtk_text_view_get_indent")]
	public static extern c_int TextViewGetIndent(TextView text_view);
	[LinkName("gtk_text_view_get_input_hints")]
	public static extern InputHints TextViewGetInputHints(TextView text_view);
	[LinkName("gtk_text_view_get_input_purpose")]
	public static extern InputPurpose TextViewGetInputPurpose(TextView text_view);
	[LinkName("gtk_text_view_get_iter_at_location")]
	public static extern c_int TextViewGetIterAtLocation(TextView text_view, TextIter iter, c_int x, c_int y);
	[LinkName("gtk_text_view_get_iter_at_position")]
	public static extern c_int TextViewGetIterAtPosition(TextView text_view, TextIter iter, c_int trailing, c_int x, c_int y);
	[LinkName("gtk_text_view_get_iter_location")]
	public static extern void TextViewGetIterLocation(TextView text_view, TextIter iter, Gdk.Rectangle location);
	[LinkName("gtk_text_view_get_justification")]
	public static extern Justification TextViewGetJustification(TextView text_view);
	[LinkName("gtk_text_view_get_left_margin")]
	public static extern c_int TextViewGetLeftMargin(TextView text_view);
	[LinkName("gtk_text_view_get_line_at_y")]
	public static extern void TextViewGetLineAtY(TextView text_view, TextIter target_iter, c_int y, c_int line_top);
	[LinkName("gtk_text_view_get_line_yrange")]
	public static extern void TextViewGetLineYrange(TextView text_view, TextIter iter, c_int y, c_int height);
	[LinkName("gtk_text_view_get_ltr_context")]
	public static extern Pango.Context* TextViewGetLtrContext(TextView text_view);
	[LinkName("gtk_text_view_get_monospace")]
	public static extern c_int TextViewGetMonospace(TextView text_view);
	[LinkName("gtk_text_view_get_overwrite")]
	public static extern c_int TextViewGetOverwrite(TextView text_view);
	[LinkName("gtk_text_view_get_pixels_above_lines")]
	public static extern c_int TextViewGetPixelsAboveLines(TextView text_view);
	[LinkName("gtk_text_view_get_pixels_below_lines")]
	public static extern c_int TextViewGetPixelsBelowLines(TextView text_view);
	[LinkName("gtk_text_view_get_pixels_inside_wrap")]
	public static extern c_int TextViewGetPixelsInsideWrap(TextView text_view);
	[LinkName("gtk_text_view_get_right_margin")]
	public static extern c_int TextViewGetRightMargin(TextView text_view);
	[LinkName("gtk_text_view_get_rtl_context")]
	public static extern Pango.Context* TextViewGetRtlContext(TextView text_view);
	[LinkName("gtk_text_view_get_tabs")]
	public static extern Pango.TabArray* TextViewGetTabs(TextView text_view);
	[LinkName("gtk_text_view_get_top_margin")]
	public static extern c_int TextViewGetTopMargin(TextView text_view);
	[LinkName("gtk_text_view_get_visible_rect")]
	public static extern void TextViewGetVisibleRect(TextView text_view, Gdk.Rectangle visible_rect);
	[LinkName("gtk_text_view_get_wrap_mode")]
	public static extern WrapMode TextViewGetWrapMode(TextView text_view);
	[LinkName("gtk_text_view_im_context_filter_keypress")]
	public static extern c_int TextViewImContextFilterKeypress(TextView text_view, Gdk.Event event);
	[LinkName("gtk_text_view_move_mark_onscreen")]
	public static extern c_int TextViewMoveMarkOnscreen(TextView text_view, TextMark mark);
	[LinkName("gtk_text_view_move_overlay")]
	public static extern void TextViewMoveOverlay(TextView text_view, Widget child, c_int xpos, c_int ypos);
	[LinkName("gtk_text_view_move_visually")]
	public static extern c_int TextViewMoveVisually(TextView text_view, TextIter iter, c_int count);
	[LinkName("gtk_text_view_place_cursor_onscreen")]
	public static extern c_int TextViewPlaceCursorOnscreen(TextView text_view);
	[LinkName("gtk_text_view_remove")]
	public static extern void TextViewRemove(TextView text_view, Widget child);
	[LinkName("gtk_text_view_reset_cursor_blink")]
	public static extern void TextViewResetCursorBlink(TextView text_view);
	[LinkName("gtk_text_view_reset_im_context")]
	public static extern void TextViewResetImContext(TextView text_view);
	[LinkName("gtk_text_view_scroll_mark_onscreen")]
	public static extern void TextViewScrollMarkOnscreen(TextView text_view, TextMark mark);
	[LinkName("gtk_text_view_scroll_to_iter")]
	public static extern c_int TextViewScrollToIter(TextView text_view, TextIter iter, double within_margin, c_int use_align, double xalign, double yalign);
	[LinkName("gtk_text_view_scroll_to_mark")]
	public static extern void TextViewScrollToMark(TextView text_view, TextMark mark, double within_margin, c_int use_align, double xalign, double yalign);
	[LinkName("gtk_text_view_set_accepts_tab")]
	public static extern void TextViewSetAcceptsTab(TextView text_view, c_int accepts_tab);
	[LinkName("gtk_text_view_set_bottom_margin")]
	public static extern void TextViewSetBottomMargin(TextView text_view, c_int bottom_margin);
	[LinkName("gtk_text_view_set_buffer")]
	public static extern void TextViewSetBuffer(TextView text_view, TextBuffer buffer);
	[LinkName("gtk_text_view_set_cursor_visible")]
	public static extern void TextViewSetCursorVisible(TextView text_view, c_int setting);
	[LinkName("gtk_text_view_set_editable")]
	public static extern void TextViewSetEditable(TextView text_view, c_int setting);
	[LinkName("gtk_text_view_set_extra_menu")]
	public static extern void TextViewSetExtraMenu(TextView text_view, Gio.MenuModel model);
	[LinkName("gtk_text_view_set_gutter")]
	public static extern void TextViewSetGutter(TextView text_view, TextWindowType win, Widget widget);
	[LinkName("gtk_text_view_set_indent")]
	public static extern void TextViewSetIndent(TextView text_view, c_int indent);
	[LinkName("gtk_text_view_set_input_hints")]
	public static extern void TextViewSetInputHints(TextView text_view, InputHints hints);
	[LinkName("gtk_text_view_set_input_purpose")]
	public static extern void TextViewSetInputPurpose(TextView text_view, InputPurpose purpose);
	[LinkName("gtk_text_view_set_justification")]
	public static extern void TextViewSetJustification(TextView text_view, Justification justification);
	[LinkName("gtk_text_view_set_left_margin")]
	public static extern void TextViewSetLeftMargin(TextView text_view, c_int left_margin);
	[LinkName("gtk_text_view_set_monospace")]
	public static extern void TextViewSetMonospace(TextView text_view, c_int monospace);
	[LinkName("gtk_text_view_set_overwrite")]
	public static extern void TextViewSetOverwrite(TextView text_view, c_int overwrite);
	[LinkName("gtk_text_view_set_pixels_above_lines")]
	public static extern void TextViewSetPixelsAboveLines(TextView text_view, c_int pixels_above_lines);
	[LinkName("gtk_text_view_set_pixels_below_lines")]
	public static extern void TextViewSetPixelsBelowLines(TextView text_view, c_int pixels_below_lines);
	[LinkName("gtk_text_view_set_pixels_inside_wrap")]
	public static extern void TextViewSetPixelsInsideWrap(TextView text_view, c_int pixels_inside_wrap);
	[LinkName("gtk_text_view_set_right_margin")]
	public static extern void TextViewSetRightMargin(TextView text_view, c_int right_margin);
	[LinkName("gtk_text_view_set_tabs")]
	public static extern void TextViewSetTabs(TextView text_view, Pango.TabArray tabs);
	[LinkName("gtk_text_view_set_top_margin")]
	public static extern void TextViewSetTopMargin(TextView text_view, c_int top_margin);
	[LinkName("gtk_text_view_set_wrap_mode")]
	public static extern void TextViewSetWrapMode(TextView text_view, WrapMode wrap_mode);
	[LinkName("gtk_text_view_starts_display_line")]
	public static extern c_int TextViewStartsDisplayLine(TextView text_view, TextIter iter);
	[LinkName("gtk_text_view_window_to_buffer_coords")]
	public static extern void TextViewWindowToBufferCoords(TextView text_view, TextWindowType win, c_int window_x, c_int window_y, c_int buffer_x, c_int buffer_y);
	[CRepr]
	public struct TextViewClass
	{
		WidgetClass parent_class;
	}
	public enum TextViewLayer : c_int
	{
		below_text = 0,
		above_text = 1
	}
	[CRepr]
	public struct TextViewPrivate
	{
	}
	public enum TextWindowType : c_int
	{
		widget = 1,
		text = 2,
		left = 3,
		right = 4,
		top = 5,
		bottom = 6
	}
	public function c_int TickCallback(Widget widget, Gdk.FrameClock frame_clock, void* user_data);
	[CRepr]
	public struct ToggleButton;
	[LinkName("gtk_toggle_button_new")]
	public static extern Widget* ToggleButtonNew();
	[LinkName("gtk_toggle_button_new_with_label")]
	public static extern Widget* ToggleButtonNewWithLabel(char8* label);
	[LinkName("gtk_toggle_button_new_with_mnemonic")]
	public static extern Widget* ToggleButtonNewWithMnemonic(char8* label);
	[LinkName("gtk_toggle_button_get_active")]
	public static extern c_int ToggleButtonGetActive(ToggleButton toggle_button);
	[LinkName("gtk_toggle_button_set_active")]
	public static extern void ToggleButtonSetActive(ToggleButton toggle_button, c_int is_active);
	[LinkName("gtk_toggle_button_set_group")]
	public static extern void ToggleButtonSetGroup(ToggleButton toggle_button, ToggleButton group);
	[LinkName("gtk_toggle_button_toggled")]
	public static extern void ToggleButtonToggled(ToggleButton toggle_button);
	[CRepr]
	public struct ToggleButtonClass
	{
		ButtonClass parent_class;
	}
	[CRepr]
	public struct Tooltip;
	[LinkName("gtk_tooltip_set_custom")]
	public static extern void TooltipSetCustom(Tooltip tooltip, Widget custom_widget);
	[LinkName("gtk_tooltip_set_icon")]
	public static extern void TooltipSetIcon(Tooltip tooltip, Gdk.Paintable paintable);
	[LinkName("gtk_tooltip_set_icon_from_gicon")]
	public static extern void TooltipSetIconFromGicon(Tooltip tooltip, Gio.Icon gicon);
	[LinkName("gtk_tooltip_set_icon_from_icon_name")]
	public static extern void TooltipSetIconFromIconName(Tooltip tooltip, char8* icon_name);
	[LinkName("gtk_tooltip_set_markup")]
	public static extern void TooltipSetMarkup(Tooltip tooltip, char8* markup);
	[LinkName("gtk_tooltip_set_text")]
	public static extern void TooltipSetText(Tooltip tooltip, char8* text);
	[LinkName("gtk_tooltip_set_tip_area")]
	public static extern void TooltipSetTipArea(Tooltip tooltip, Gdk.Rectangle rect);
	public function void TreeCellDataFunc(TreeViewColumn tree_column, CellRenderer cell, TreeModel tree_model, TreeIter iter, void* data);
	[CRepr]
	public struct TreeDragDest
	{
		public function c_int(TreeDragDest drag_dest, TreePath dest, GObject.Value value) drag_data_received;

		public function c_int(TreeDragDest drag_dest, TreePath dest_path, GObject.Value value) row_drop_possible;
	}
	[CRepr]
	public struct TreeDragDestIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct TreeDragSource
	{
		public function c_int(TreeDragSource drag_source, TreePath path) drag_data_delete;

		public function Gdk.ContentProvider(TreeDragSource drag_source, TreePath path) drag_data_get;

		public function c_int(TreeDragSource drag_source, TreePath path) row_draggable;
	}
	[CRepr]
	public struct TreeDragSourceIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct TreeExpander;
	[LinkName("gtk_tree_expander_new")]
	public static extern Widget* TreeExpanderNew();
	[LinkName("gtk_tree_expander_get_child")]
	public static extern Widget* TreeExpanderGetChild(TreeExpander self);
	[LinkName("gtk_tree_expander_get_hide_expander")]
	public static extern c_int TreeExpanderGetHideExpander(TreeExpander self);
	[LinkName("gtk_tree_expander_get_indent_for_depth")]
	public static extern c_int TreeExpanderGetIndentForDepth(TreeExpander self);
	[LinkName("gtk_tree_expander_get_indent_for_icon")]
	public static extern c_int TreeExpanderGetIndentForIcon(TreeExpander self);
	[LinkName("gtk_tree_expander_get_item")]
	public static extern GObject.Object TreeExpanderGetItem(TreeExpander self);
	[LinkName("gtk_tree_expander_get_list_row")]
	public static extern TreeListRow* TreeExpanderGetListRow(TreeExpander self);
	[LinkName("gtk_tree_expander_set_child")]
	public static extern void TreeExpanderSetChild(TreeExpander self, Widget child);
	[LinkName("gtk_tree_expander_set_hide_expander")]
	public static extern void TreeExpanderSetHideExpander(TreeExpander self, c_int hide_expander);
	[LinkName("gtk_tree_expander_set_indent_for_depth")]
	public static extern void TreeExpanderSetIndentForDepth(TreeExpander self, c_int indent_for_depth);
	[LinkName("gtk_tree_expander_set_indent_for_icon")]
	public static extern void TreeExpanderSetIndentForIcon(TreeExpander self, c_int indent_for_icon);
	[LinkName("gtk_tree_expander_set_list_row")]
	public static extern void TreeExpanderSetListRow(TreeExpander self, TreeListRow list_row);
	[CRepr]
	public struct TreeExpanderClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct TreeIter
	{
		c_int stamp;
		void* user_data;
		void* user_data2;
		void* user_data3;
	}
	public function c_int TreeIterCompareFunc(TreeModel model, TreeIter a, TreeIter b, void* user_data);
	[CRepr]
	public struct TreeListModel;
	[LinkName("gtk_tree_list_model_new")]
	public static extern TreeListModel* TreeListModelNew(Gio.ListModel root, c_int passthrough, c_int autoexpand, TreeListModelCreateModelFunc create_func, void* user_data, GLib.DestroyNotify user_destroy);
	[LinkName("gtk_tree_list_model_get_autoexpand")]
	public static extern c_int TreeListModelGetAutoexpand(TreeListModel self);
	[LinkName("gtk_tree_list_model_get_child_row")]
	public static extern TreeListRow* TreeListModelGetChildRow(TreeListModel self, c_uint position);
	[LinkName("gtk_tree_list_model_get_model")]
	public static extern Gio.ListModel* TreeListModelGetModel(TreeListModel self);
	[LinkName("gtk_tree_list_model_get_passthrough")]
	public static extern c_int TreeListModelGetPassthrough(TreeListModel self);
	[LinkName("gtk_tree_list_model_get_row")]
	public static extern TreeListRow* TreeListModelGetRow(TreeListModel self, c_uint position);
	[LinkName("gtk_tree_list_model_set_autoexpand")]
	public static extern void TreeListModelSetAutoexpand(TreeListModel self, c_int autoexpand);
	[CRepr]
	public struct TreeListModelClass
	{
		GObject.ObjectClass parent_class;
	}
	public function Gio.ListModel TreeListModelCreateModelFunc(GObject.Object item, void* user_data);
	[CRepr]
	public struct TreeListRow;
	[LinkName("gtk_tree_list_row_get_child_row")]
	public static extern TreeListRow* TreeListRowGetChildRow(TreeListRow self, c_uint position);
	[LinkName("gtk_tree_list_row_get_children")]
	public static extern Gio.ListModel* TreeListRowGetChildren(TreeListRow self);
	[LinkName("gtk_tree_list_row_get_depth")]
	public static extern c_uint TreeListRowGetDepth(TreeListRow self);
	[LinkName("gtk_tree_list_row_get_expanded")]
	public static extern c_int TreeListRowGetExpanded(TreeListRow self);
	[LinkName("gtk_tree_list_row_get_item")]
	public static extern GObject.Object TreeListRowGetItem(TreeListRow self);
	[LinkName("gtk_tree_list_row_get_parent")]
	public static extern TreeListRow* TreeListRowGetParent(TreeListRow self);
	[LinkName("gtk_tree_list_row_get_position")]
	public static extern c_uint TreeListRowGetPosition(TreeListRow self);
	[LinkName("gtk_tree_list_row_is_expandable")]
	public static extern c_int TreeListRowIsExpandable(TreeListRow self);
	[LinkName("gtk_tree_list_row_set_expanded")]
	public static extern void TreeListRowSetExpanded(TreeListRow self, c_int expanded);
	[CRepr]
	public struct TreeListRowClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct TreeListRowSorter;
	[LinkName("gtk_tree_list_row_sorter_new")]
	public static extern TreeListRowSorter* TreeListRowSorterNew(Sorter sorter);
	[LinkName("gtk_tree_list_row_sorter_get_sorter")]
	public static extern Sorter* TreeListRowSorterGetSorter(TreeListRowSorter self);
	[LinkName("gtk_tree_list_row_sorter_set_sorter")]
	public static extern void TreeListRowSorterSetSorter(TreeListRowSorter self, Sorter sorter);
	[CRepr]
	public struct TreeListRowSorterClass
	{
		SorterClass parent_class;
	}
	[CRepr]
	public struct TreeModel
	{
		public function GLib.Type(TreeModel tree_model, c_int index_) get_column_type;

		public function TreeModelFlags(TreeModel tree_model) get_flags;

		public function c_int(TreeModel tree_model, TreeIter iter, TreePath path) get_iter;

		public function c_int(TreeModel tree_model) get_n_columns;

		public function TreePath(TreeModel tree_model, TreeIter iter) get_path;

		public function void(TreeModel tree_model, TreeIter iter, c_int column, GObject.Value value) get_value;

		public function c_int(TreeModel tree_model, TreeIter iter, TreeIter parent) iter_children;

		public function c_int(TreeModel tree_model, TreeIter iter) iter_has_child;

		public function c_int(TreeModel tree_model, TreeIter iter) iter_n_children;

		public function c_int(TreeModel tree_model, TreeIter iter) iter_next;

		public function c_int(TreeModel tree_model, TreeIter iter, TreeIter parent, c_int n) iter_nth_child;

		public function c_int(TreeModel tree_model, TreeIter iter, TreeIter child) iter_parent;

		public function c_int(TreeModel tree_model, TreeIter iter) iter_previous;

		public function void(TreeModel tree_model, TreeIter iter) ref_node;

		public function void(TreeModel tree_model, TreePath path, TreeIter iter) row_changed;

		public function void(TreeModel tree_model, TreePath path) row_deleted;

		public function void(TreeModel tree_model, TreePath path, TreeIter iter) row_has_child_toggled;

		public function void(TreeModel tree_model, TreePath path, TreeIter iter) row_inserted;

		public function void(TreeModel tree_model, TreePath path, TreeIter iter, c_int new_order) rows_reordered;

		public function void(TreeModel tree_model, TreeIter iter) unref_node;
	}
	[CRepr]
	public struct TreeModelFilter;
	[LinkName("gtk_tree_model_filter_clear_cache")]
	public static extern void TreeModelFilterClearCache(TreeModelFilter filter);
	[LinkName("gtk_tree_model_filter_convert_child_iter_to_iter")]
	public static extern c_int TreeModelFilterConvertChildIterToIter(TreeModelFilter filter, TreeIter filter_iter, TreeIter child_iter);
	[LinkName("gtk_tree_model_filter_convert_child_path_to_path")]
	public static extern TreePath* TreeModelFilterConvertChildPathToPath(TreeModelFilter filter, TreePath child_path);
	[LinkName("gtk_tree_model_filter_convert_iter_to_child_iter")]
	public static extern void TreeModelFilterConvertIterToChildIter(TreeModelFilter filter, TreeIter child_iter, TreeIter filter_iter);
	[LinkName("gtk_tree_model_filter_convert_path_to_child_path")]
	public static extern TreePath* TreeModelFilterConvertPathToChildPath(TreeModelFilter filter, TreePath filter_path);
	[LinkName("gtk_tree_model_filter_get_model")]
	public static extern TreeModel* TreeModelFilterGetModel(TreeModelFilter filter);
	[LinkName("gtk_tree_model_filter_refilter")]
	public static extern void TreeModelFilterRefilter(TreeModelFilter filter);
	[LinkName("gtk_tree_model_filter_set_modify_func")]
	public static extern void TreeModelFilterSetModifyFunc(TreeModelFilter filter, c_int n_columns, TreeModelFilterModifyFunc func, void* data, GLib.DestroyNotify destroy);
	[LinkName("gtk_tree_model_filter_set_visible_column")]
	public static extern void TreeModelFilterSetVisibleColumn(TreeModelFilter filter, c_int column);
	[LinkName("gtk_tree_model_filter_set_visible_func")]
	public static extern void TreeModelFilterSetVisibleFunc(TreeModelFilter filter, TreeModelFilterVisibleFunc func, void* data, GLib.DestroyNotify destroy);
	[CRepr]
	public struct TreeModelFilterClass
	{
		GObject.ObjectClass parent_class;
	}
	public function void TreeModelFilterModifyFunc(TreeModel model, TreeIter iter, GObject.Value value, c_int column, void* data);
	[CRepr]
	public struct TreeModelFilterPrivate
	{
	}
	public function c_int TreeModelFilterVisibleFunc(TreeModel model, TreeIter iter, void* data);
	[CRepr]
	public enum TreeModelFlags : int
	{
		iters_persist = 1,
		list_only = 2
	}
	public function c_int TreeModelForeachFunc(TreeModel model, TreePath path, TreeIter iter, void* data);
	[CRepr]
	public struct TreeModelIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct TreeModelSort;
	[LinkName("gtk_tree_model_sort_new_with_model")]
	public static extern TreeModelSort* TreeModelSortNewWithModel(TreeModel child_model);
	[LinkName("gtk_tree_model_sort_clear_cache")]
	public static extern void TreeModelSortClearCache(TreeModelSort tree_model_sort);
	[LinkName("gtk_tree_model_sort_convert_child_iter_to_iter")]
	public static extern c_int TreeModelSortConvertChildIterToIter(TreeModelSort tree_model_sort, TreeIter sort_iter, TreeIter child_iter);
	[LinkName("gtk_tree_model_sort_convert_child_path_to_path")]
	public static extern TreePath* TreeModelSortConvertChildPathToPath(TreeModelSort tree_model_sort, TreePath child_path);
	[LinkName("gtk_tree_model_sort_convert_iter_to_child_iter")]
	public static extern void TreeModelSortConvertIterToChildIter(TreeModelSort tree_model_sort, TreeIter child_iter, TreeIter sorted_iter);
	[LinkName("gtk_tree_model_sort_convert_path_to_child_path")]
	public static extern TreePath* TreeModelSortConvertPathToChildPath(TreeModelSort tree_model_sort, TreePath sorted_path);
	[LinkName("gtk_tree_model_sort_get_model")]
	public static extern TreeModel* TreeModelSortGetModel(TreeModelSort tree_model);
	[LinkName("gtk_tree_model_sort_iter_is_valid")]
	public static extern c_int TreeModelSortIterIsValid(TreeModelSort tree_model_sort, TreeIter iter);
	[LinkName("gtk_tree_model_sort_reset_default_sort_func")]
	public static extern void TreeModelSortResetDefaultSortFunc(TreeModelSort tree_model_sort);
	[CRepr]
	public struct TreeModelSortClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct TreeModelSortPrivate
	{
	}
	[CRepr]
	public struct TreePath
	{
	}
	[CRepr]
	public struct TreeRowReference
	{
	}
	[CRepr]
	public struct TreeSelection;
	[LinkName("gtk_tree_selection_count_selected_rows")]
	public static extern c_int TreeSelectionCountSelectedRows(TreeSelection selection);
	[LinkName("gtk_tree_selection_get_mode")]
	public static extern SelectionMode TreeSelectionGetMode(TreeSelection selection);
	[LinkName("gtk_tree_selection_get_select_function")]
	public static extern TreeSelectionFunc TreeSelectionGetSelectFunction(TreeSelection selection);
	[LinkName("gtk_tree_selection_get_selected")]
	public static extern c_int TreeSelectionGetSelected(TreeSelection selection, TreeModel model, TreeIter iter);
	[LinkName("gtk_tree_selection_get_selected_rows")]
	public static extern GLib.List* TreeSelectionGetSelectedRows(TreeSelection selection, TreeModel model);
	[LinkName("gtk_tree_selection_get_tree_view")]
	public static extern TreeView* TreeSelectionGetTreeView(TreeSelection selection);
	[LinkName("gtk_tree_selection_get_user_data")]
	public static extern void* TreeSelectionGetUserData(TreeSelection selection);
	[LinkName("gtk_tree_selection_iter_is_selected")]
	public static extern c_int TreeSelectionIterIsSelected(TreeSelection selection, TreeIter iter);
	[LinkName("gtk_tree_selection_path_is_selected")]
	public static extern c_int TreeSelectionPathIsSelected(TreeSelection selection, TreePath path);
	[LinkName("gtk_tree_selection_select_all")]
	public static extern void TreeSelectionSelectAll(TreeSelection selection);
	[LinkName("gtk_tree_selection_select_iter")]
	public static extern void TreeSelectionSelectIter(TreeSelection selection, TreeIter iter);
	[LinkName("gtk_tree_selection_select_path")]
	public static extern void TreeSelectionSelectPath(TreeSelection selection, TreePath path);
	[LinkName("gtk_tree_selection_select_range")]
	public static extern void TreeSelectionSelectRange(TreeSelection selection, TreePath start_path, TreePath end_path);
	[LinkName("gtk_tree_selection_selected_foreach")]
	public static extern void TreeSelectionSelectedForeach(TreeSelection selection, TreeSelectionForeachFunc func, void* data);
	[LinkName("gtk_tree_selection_set_mode")]
	public static extern void TreeSelectionSetMode(TreeSelection selection, SelectionMode type);
	[LinkName("gtk_tree_selection_set_select_function")]
	public static extern void TreeSelectionSetSelectFunction(TreeSelection selection, TreeSelectionFunc func, void* data, GLib.DestroyNotify destroy);
	[LinkName("gtk_tree_selection_unselect_all")]
	public static extern void TreeSelectionUnselectAll(TreeSelection selection);
	[LinkName("gtk_tree_selection_unselect_iter")]
	public static extern void TreeSelectionUnselectIter(TreeSelection selection, TreeIter iter);
	[LinkName("gtk_tree_selection_unselect_path")]
	public static extern void TreeSelectionUnselectPath(TreeSelection selection, TreePath path);
	[LinkName("gtk_tree_selection_unselect_range")]
	public static extern void TreeSelectionUnselectRange(TreeSelection selection, TreePath start_path, TreePath end_path);
	public function void TreeSelectionForeachFunc(TreeModel model, TreePath path, TreeIter iter, void* data);
	public function c_int TreeSelectionFunc(TreeSelection selection, TreeModel model, TreePath path, c_int path_currently_selected, void* data);
	[CRepr]
	public struct TreeSortable
	{
		public function c_int(TreeSortable sortable, c_int sort_column_id, SortType order) get_sort_column_id;

		public function c_int(TreeSortable sortable) has_default_sort_func;

		public function void(TreeSortable sortable, TreeIterCompareFunc sort_func, void* user_data, GLib.DestroyNotify destroy) set_default_sort_func;

		public function void(TreeSortable sortable, c_int sort_column_id, SortType order) set_sort_column_id;

		public function void(TreeSortable sortable, c_int sort_column_id, TreeIterCompareFunc sort_func, void* user_data, GLib.DestroyNotify destroy) set_sort_func;

		public function void(TreeSortable sortable) sort_column_changed;
	}
	[CRepr]
	public struct TreeSortableIface
	{
		GObject.TypeInterface g_iface;
	}
	[CRepr]
	public struct TreeStore;
	[LinkName("gtk_tree_store_new")]
	public static extern TreeStore* TreeStoreNew(c_int n_columns);
	[LinkName("gtk_tree_store_newv")]
	public static extern TreeStore* TreeStoreNewv(c_int n_columns);
	[LinkName("gtk_tree_store_append")]
	public static extern void TreeStoreAppend(TreeStore tree_store, TreeIter iter, TreeIter parent);
	[LinkName("gtk_tree_store_clear")]
	public static extern void TreeStoreClear(TreeStore tree_store);
	[LinkName("gtk_tree_store_insert")]
	public static extern void TreeStoreInsert(TreeStore tree_store, TreeIter iter, TreeIter parent, c_int position);
	[LinkName("gtk_tree_store_insert_after")]
	public static extern void TreeStoreInsertAfter(TreeStore tree_store, TreeIter iter, TreeIter parent, TreeIter sibling);
	[LinkName("gtk_tree_store_insert_before")]
	public static extern void TreeStoreInsertBefore(TreeStore tree_store, TreeIter iter, TreeIter parent, TreeIter sibling);
	[LinkName("gtk_tree_store_insert_with_values")]
	public static extern void TreeStoreInsertWithValues(TreeStore tree_store, TreeIter iter, TreeIter parent, c_int position);
	[LinkName("gtk_tree_store_insert_with_valuesv")]
	public static extern void TreeStoreInsertWithValuesv(TreeStore tree_store, TreeIter iter, TreeIter parent, c_int position, c_int n_values);
	[LinkName("gtk_tree_store_is_ancestor")]
	public static extern c_int TreeStoreIsAncestor(TreeStore tree_store, TreeIter iter, TreeIter descendant);
	[LinkName("gtk_tree_store_iter_depth")]
	public static extern c_int TreeStoreIterDepth(TreeStore tree_store, TreeIter iter);
	[LinkName("gtk_tree_store_iter_is_valid")]
	public static extern c_int TreeStoreIterIsValid(TreeStore tree_store, TreeIter iter);
	[LinkName("gtk_tree_store_move_after")]
	public static extern void TreeStoreMoveAfter(TreeStore tree_store, TreeIter iter, TreeIter position);
	[LinkName("gtk_tree_store_move_before")]
	public static extern void TreeStoreMoveBefore(TreeStore tree_store, TreeIter iter, TreeIter position);
	[LinkName("gtk_tree_store_prepend")]
	public static extern void TreeStorePrepend(TreeStore tree_store, TreeIter iter, TreeIter parent);
	[LinkName("gtk_tree_store_remove")]
	public static extern c_int TreeStoreRemove(TreeStore tree_store, TreeIter iter);
	[LinkName("gtk_tree_store_reorder")]
	public static extern void TreeStoreReorder(TreeStore tree_store, TreeIter parent);
	[LinkName("gtk_tree_store_set")]
	public static extern void TreeStoreSet(TreeStore tree_store, TreeIter iter);
	[LinkName("gtk_tree_store_set_column_types")]
	public static extern void TreeStoreSetColumnTypes(TreeStore tree_store, c_int n_columns);
	[LinkName("gtk_tree_store_set_valist")]
	public static extern void TreeStoreSetValist(TreeStore tree_store, TreeIter iter, VarArgs var_args);
	[LinkName("gtk_tree_store_set_value")]
	public static extern void TreeStoreSetValue(TreeStore tree_store, TreeIter iter, c_int column, GObject.Value value);
	[LinkName("gtk_tree_store_set_valuesv")]
	public static extern void TreeStoreSetValuesv(TreeStore tree_store, TreeIter iter, c_int n_values);
	[LinkName("gtk_tree_store_swap")]
	public static extern void TreeStoreSwap(TreeStore tree_store, TreeIter a, TreeIter b);
	[CRepr]
	public struct TreeStoreClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct TreeStorePrivate
	{
	}
	[CRepr]
	public struct TreeView;
	[LinkName("gtk_tree_view_new")]
	public static extern Widget* TreeViewNew();
	[LinkName("gtk_tree_view_new_with_model")]
	public static extern Widget* TreeViewNewWithModel(TreeModel model);
	[LinkName("gtk_tree_view_append_column")]
	public static extern c_int TreeViewAppendColumn(TreeView tree_view, TreeViewColumn column);
	[LinkName("gtk_tree_view_collapse_all")]
	public static extern void TreeViewCollapseAll(TreeView tree_view);
	[LinkName("gtk_tree_view_collapse_row")]
	public static extern c_int TreeViewCollapseRow(TreeView tree_view, TreePath path);
	[LinkName("gtk_tree_view_columns_autosize")]
	public static extern void TreeViewColumnsAutosize(TreeView tree_view);
	[LinkName("gtk_tree_view_convert_bin_window_to_tree_coords")]
	public static extern void TreeViewConvertBinWindowToTreeCoords(TreeView tree_view, c_int bx, c_int by, c_int tx, c_int ty);
	[LinkName("gtk_tree_view_convert_bin_window_to_widget_coords")]
	public static extern void TreeViewConvertBinWindowToWidgetCoords(TreeView tree_view, c_int bx, c_int by, c_int wx, c_int wy);
	[LinkName("gtk_tree_view_convert_tree_to_bin_window_coords")]
	public static extern void TreeViewConvertTreeToBinWindowCoords(TreeView tree_view, c_int tx, c_int ty, c_int bx, c_int by);
	[LinkName("gtk_tree_view_convert_tree_to_widget_coords")]
	public static extern void TreeViewConvertTreeToWidgetCoords(TreeView tree_view, c_int tx, c_int ty, c_int wx, c_int wy);
	[LinkName("gtk_tree_view_convert_widget_to_bin_window_coords")]
	public static extern void TreeViewConvertWidgetToBinWindowCoords(TreeView tree_view, c_int wx, c_int wy, c_int bx, c_int by);
	[LinkName("gtk_tree_view_convert_widget_to_tree_coords")]
	public static extern void TreeViewConvertWidgetToTreeCoords(TreeView tree_view, c_int wx, c_int wy, c_int tx, c_int ty);
	[LinkName("gtk_tree_view_create_row_drag_icon")]
	public static extern Gdk.Paintable* TreeViewCreateRowDragIcon(TreeView tree_view, TreePath path);
	[LinkName("gtk_tree_view_enable_model_drag_dest")]
	public static extern void TreeViewEnableModelDragDest(TreeView tree_view, Gdk.ContentFormats formats, Gdk.DragAction actions);
	[LinkName("gtk_tree_view_enable_model_drag_source")]
	public static extern void TreeViewEnableModelDragSource(TreeView tree_view, Gdk.ModifierType start_button_mask, Gdk.ContentFormats formats, Gdk.DragAction actions);
	[LinkName("gtk_tree_view_expand_all")]
	public static extern void TreeViewExpandAll(TreeView tree_view);
	[LinkName("gtk_tree_view_expand_row")]
	public static extern c_int TreeViewExpandRow(TreeView tree_view, TreePath path, c_int open_all);
	[LinkName("gtk_tree_view_expand_to_path")]
	public static extern void TreeViewExpandToPath(TreeView tree_view, TreePath path);
	[LinkName("gtk_tree_view_get_activate_on_single_click")]
	public static extern c_int TreeViewGetActivateOnSingleClick(TreeView tree_view);
	[LinkName("gtk_tree_view_get_background_area")]
	public static extern void TreeViewGetBackgroundArea(TreeView tree_view, TreePath path, TreeViewColumn column, Gdk.Rectangle rect);
	[LinkName("gtk_tree_view_get_cell_area")]
	public static extern void TreeViewGetCellArea(TreeView tree_view, TreePath path, TreeViewColumn column, Gdk.Rectangle rect);
	[LinkName("gtk_tree_view_get_column")]
	public static extern TreeViewColumn* TreeViewGetColumn(TreeView tree_view, c_int n);
	[LinkName("gtk_tree_view_get_columns")]
	public static extern GLib.List* TreeViewGetColumns(TreeView tree_view);
	[LinkName("gtk_tree_view_get_cursor")]
	public static extern void TreeViewGetCursor(TreeView tree_view, TreePath path, TreeViewColumn focus_column);
	[LinkName("gtk_tree_view_get_dest_row_at_pos")]
	public static extern c_int TreeViewGetDestRowAtPos(TreeView tree_view, c_int drag_x, c_int drag_y, TreePath path, TreeViewDropPosition pos);
	[LinkName("gtk_tree_view_get_drag_dest_row")]
	public static extern void TreeViewGetDragDestRow(TreeView tree_view, TreePath path, TreeViewDropPosition pos);
	[LinkName("gtk_tree_view_get_enable_search")]
	public static extern c_int TreeViewGetEnableSearch(TreeView tree_view);
	[LinkName("gtk_tree_view_get_enable_tree_lines")]
	public static extern c_int TreeViewGetEnableTreeLines(TreeView tree_view);
	[LinkName("gtk_tree_view_get_expander_column")]
	public static extern TreeViewColumn* TreeViewGetExpanderColumn(TreeView tree_view);
	[LinkName("gtk_tree_view_get_fixed_height_mode")]
	public static extern c_int TreeViewGetFixedHeightMode(TreeView tree_view);
	[LinkName("gtk_tree_view_get_grid_lines")]
	public static extern TreeViewGridLines TreeViewGetGridLines(TreeView tree_view);
	[LinkName("gtk_tree_view_get_headers_clickable")]
	public static extern c_int TreeViewGetHeadersClickable(TreeView tree_view);
	[LinkName("gtk_tree_view_get_headers_visible")]
	public static extern c_int TreeViewGetHeadersVisible(TreeView tree_view);
	[LinkName("gtk_tree_view_get_hover_expand")]
	public static extern c_int TreeViewGetHoverExpand(TreeView tree_view);
	[LinkName("gtk_tree_view_get_hover_selection")]
	public static extern c_int TreeViewGetHoverSelection(TreeView tree_view);
	[LinkName("gtk_tree_view_get_level_indentation")]
	public static extern c_int TreeViewGetLevelIndentation(TreeView tree_view);
	[LinkName("gtk_tree_view_get_model")]
	public static extern TreeModel* TreeViewGetModel(TreeView tree_view);
	[LinkName("gtk_tree_view_get_n_columns")]
	public static extern c_uint TreeViewGetNColumns(TreeView tree_view);
	[LinkName("gtk_tree_view_get_path_at_pos")]
	public static extern c_int TreeViewGetPathAtPos(TreeView tree_view, c_int x, c_int y, TreePath path, TreeViewColumn column, c_int cell_x, c_int cell_y);
	[LinkName("gtk_tree_view_get_reorderable")]
	public static extern c_int TreeViewGetReorderable(TreeView tree_view);
	[LinkName("gtk_tree_view_get_row_separator_func")]
	public static extern TreeViewRowSeparatorFunc TreeViewGetRowSeparatorFunc(TreeView tree_view);
	[LinkName("gtk_tree_view_get_rubber_banding")]
	public static extern c_int TreeViewGetRubberBanding(TreeView tree_view);
	[LinkName("gtk_tree_view_get_search_column")]
	public static extern c_int TreeViewGetSearchColumn(TreeView tree_view);
	[LinkName("gtk_tree_view_get_search_entry")]
	public static extern Editable* TreeViewGetSearchEntry(TreeView tree_view);
	[LinkName("gtk_tree_view_get_search_equal_func")]
	public static extern TreeViewSearchEqualFunc TreeViewGetSearchEqualFunc(TreeView tree_view);
	[LinkName("gtk_tree_view_get_selection")]
	public static extern TreeSelection* TreeViewGetSelection(TreeView tree_view);
	[LinkName("gtk_tree_view_get_show_expanders")]
	public static extern c_int TreeViewGetShowExpanders(TreeView tree_view);
	[LinkName("gtk_tree_view_get_tooltip_column")]
	public static extern c_int TreeViewGetTooltipColumn(TreeView tree_view);
	[LinkName("gtk_tree_view_get_tooltip_context")]
	public static extern c_int TreeViewGetTooltipContext(TreeView tree_view, c_int x, c_int y, c_int keyboard_tip, TreeModel model, TreePath path, TreeIter iter);
	[LinkName("gtk_tree_view_get_visible_range")]
	public static extern c_int TreeViewGetVisibleRange(TreeView tree_view, TreePath start_path, TreePath end_path);
	[LinkName("gtk_tree_view_get_visible_rect")]
	public static extern void TreeViewGetVisibleRect(TreeView tree_view, Gdk.Rectangle visible_rect);
	[LinkName("gtk_tree_view_insert_column")]
	public static extern c_int TreeViewInsertColumn(TreeView tree_view, TreeViewColumn column, c_int position);
	[LinkName("gtk_tree_view_insert_column_with_attributes")]
	public static extern c_int TreeViewInsertColumnWithAttributes(TreeView tree_view, c_int position, char8* title, CellRenderer cell);
	[LinkName("gtk_tree_view_insert_column_with_data_func")]
	public static extern c_int TreeViewInsertColumnWithDataFunc(TreeView tree_view, c_int position, char8* title, CellRenderer cell, TreeCellDataFunc func, void* data, GLib.DestroyNotify dnotify);
	[LinkName("gtk_tree_view_is_blank_at_pos")]
	public static extern c_int TreeViewIsBlankAtPos(TreeView tree_view, c_int x, c_int y, TreePath path, TreeViewColumn column, c_int cell_x, c_int cell_y);
	[LinkName("gtk_tree_view_is_rubber_banding_active")]
	public static extern c_int TreeViewIsRubberBandingActive(TreeView tree_view);
	[LinkName("gtk_tree_view_map_expanded_rows")]
	public static extern void TreeViewMapExpandedRows(TreeView tree_view, TreeViewMappingFunc func, void* data);
	[LinkName("gtk_tree_view_move_column_after")]
	public static extern void TreeViewMoveColumnAfter(TreeView tree_view, TreeViewColumn column, TreeViewColumn base_column);
	[LinkName("gtk_tree_view_remove_column")]
	public static extern c_int TreeViewRemoveColumn(TreeView tree_view, TreeViewColumn column);
	[LinkName("gtk_tree_view_row_activated")]
	public static extern void TreeViewRowActivated(TreeView tree_view, TreePath path, TreeViewColumn column);
	[LinkName("gtk_tree_view_row_expanded")]
	public static extern c_int TreeViewRowExpanded(TreeView tree_view, TreePath path);
	[LinkName("gtk_tree_view_scroll_to_cell")]
	public static extern void TreeViewScrollToCell(TreeView tree_view, TreePath path, TreeViewColumn column, c_int use_align, float row_align, float col_align);
	[LinkName("gtk_tree_view_scroll_to_point")]
	public static extern void TreeViewScrollToPoint(TreeView tree_view, c_int tree_x, c_int tree_y);
	[LinkName("gtk_tree_view_set_activate_on_single_click")]
	public static extern void TreeViewSetActivateOnSingleClick(TreeView tree_view, c_int single);
	[LinkName("gtk_tree_view_set_column_drag_function")]
	public static extern void TreeViewSetColumnDragFunction(TreeView tree_view, TreeViewColumnDropFunc func, void* user_data, GLib.DestroyNotify destroy);
	[LinkName("gtk_tree_view_set_cursor")]
	public static extern void TreeViewSetCursor(TreeView tree_view, TreePath path, TreeViewColumn focus_column, c_int start_editing);
	[LinkName("gtk_tree_view_set_cursor_on_cell")]
	public static extern void TreeViewSetCursorOnCell(TreeView tree_view, TreePath path, TreeViewColumn focus_column, CellRenderer focus_cell, c_int start_editing);
	[LinkName("gtk_tree_view_set_drag_dest_row")]
	public static extern void TreeViewSetDragDestRow(TreeView tree_view, TreePath path, TreeViewDropPosition pos);
	[LinkName("gtk_tree_view_set_enable_search")]
	public static extern void TreeViewSetEnableSearch(TreeView tree_view, c_int enable_search);
	[LinkName("gtk_tree_view_set_enable_tree_lines")]
	public static extern void TreeViewSetEnableTreeLines(TreeView tree_view, c_int enabled);
	[LinkName("gtk_tree_view_set_expander_column")]
	public static extern void TreeViewSetExpanderColumn(TreeView tree_view, TreeViewColumn column);
	[LinkName("gtk_tree_view_set_fixed_height_mode")]
	public static extern void TreeViewSetFixedHeightMode(TreeView tree_view, c_int enable);
	[LinkName("gtk_tree_view_set_grid_lines")]
	public static extern void TreeViewSetGridLines(TreeView tree_view, TreeViewGridLines grid_lines);
	[LinkName("gtk_tree_view_set_headers_clickable")]
	public static extern void TreeViewSetHeadersClickable(TreeView tree_view, c_int setting);
	[LinkName("gtk_tree_view_set_headers_visible")]
	public static extern void TreeViewSetHeadersVisible(TreeView tree_view, c_int headers_visible);
	[LinkName("gtk_tree_view_set_hover_expand")]
	public static extern void TreeViewSetHoverExpand(TreeView tree_view, c_int expand);
	[LinkName("gtk_tree_view_set_hover_selection")]
	public static extern void TreeViewSetHoverSelection(TreeView tree_view, c_int hover);
	[LinkName("gtk_tree_view_set_level_indentation")]
	public static extern void TreeViewSetLevelIndentation(TreeView tree_view, c_int indentation);
	[LinkName("gtk_tree_view_set_model")]
	public static extern void TreeViewSetModel(TreeView tree_view, TreeModel model);
	[LinkName("gtk_tree_view_set_reorderable")]
	public static extern void TreeViewSetReorderable(TreeView tree_view, c_int reorderable);
	[LinkName("gtk_tree_view_set_row_separator_func")]
	public static extern void TreeViewSetRowSeparatorFunc(TreeView tree_view, TreeViewRowSeparatorFunc func, void* data, GLib.DestroyNotify destroy);
	[LinkName("gtk_tree_view_set_rubber_banding")]
	public static extern void TreeViewSetRubberBanding(TreeView tree_view, c_int enable);
	[LinkName("gtk_tree_view_set_search_column")]
	public static extern void TreeViewSetSearchColumn(TreeView tree_view, c_int column);
	[LinkName("gtk_tree_view_set_search_entry")]
	public static extern void TreeViewSetSearchEntry(TreeView tree_view, Editable entry);
	[LinkName("gtk_tree_view_set_search_equal_func")]
	public static extern void TreeViewSetSearchEqualFunc(TreeView tree_view, TreeViewSearchEqualFunc search_equal_func, void* search_user_data, GLib.DestroyNotify search_destroy);
	[LinkName("gtk_tree_view_set_show_expanders")]
	public static extern void TreeViewSetShowExpanders(TreeView tree_view, c_int enabled);
	[LinkName("gtk_tree_view_set_tooltip_cell")]
	public static extern void TreeViewSetTooltipCell(TreeView tree_view, Tooltip tooltip, TreePath path, TreeViewColumn column, CellRenderer cell);
	[LinkName("gtk_tree_view_set_tooltip_column")]
	public static extern void TreeViewSetTooltipColumn(TreeView tree_view, c_int column);
	[LinkName("gtk_tree_view_set_tooltip_row")]
	public static extern void TreeViewSetTooltipRow(TreeView tree_view, Tooltip tooltip, TreePath path);
	[LinkName("gtk_tree_view_unset_rows_drag_dest")]
	public static extern void TreeViewUnsetRowsDragDest(TreeView tree_view);
	[LinkName("gtk_tree_view_unset_rows_drag_source")]
	public static extern void TreeViewUnsetRowsDragSource(TreeView tree_view);
	[CRepr]
	public struct TreeViewClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct TreeViewColumn;
	[LinkName("gtk_tree_view_column_new")]
	public static extern TreeViewColumn* TreeViewColumnNew();
	[LinkName("gtk_tree_view_column_new_with_area")]
	public static extern TreeViewColumn* TreeViewColumnNewWithArea(CellArea area);
	[LinkName("gtk_tree_view_column_new_with_attributes")]
	public static extern TreeViewColumn* TreeViewColumnNewWithAttributes(char8* title, CellRenderer cell);
	[LinkName("gtk_tree_view_column_add_attribute")]
	public static extern void TreeViewColumnAddAttribute(TreeViewColumn tree_column, CellRenderer cell_renderer, char8* attribute, c_int column);
	[LinkName("gtk_tree_view_column_cell_get_position")]
	public static extern c_int TreeViewColumnCellGetPosition(TreeViewColumn tree_column, CellRenderer cell_renderer, c_int x_offset, c_int width);
	[LinkName("gtk_tree_view_column_cell_get_size")]
	public static extern void TreeViewColumnCellGetSize(TreeViewColumn tree_column, c_int x_offset, c_int y_offset, c_int width, c_int height);
	[LinkName("gtk_tree_view_column_cell_is_visible")]
	public static extern c_int TreeViewColumnCellIsVisible(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_cell_set_cell_data")]
	public static extern void TreeViewColumnCellSetCellData(TreeViewColumn tree_column, TreeModel tree_model, TreeIter iter, c_int is_expander, c_int is_expanded);
	[LinkName("gtk_tree_view_column_clear")]
	public static extern void TreeViewColumnClear(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_clear_attributes")]
	public static extern void TreeViewColumnClearAttributes(TreeViewColumn tree_column, CellRenderer cell_renderer);
	[LinkName("gtk_tree_view_column_clicked")]
	public static extern void TreeViewColumnClicked(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_focus_cell")]
	public static extern void TreeViewColumnFocusCell(TreeViewColumn tree_column, CellRenderer cell);
	[LinkName("gtk_tree_view_column_get_alignment")]
	public static extern float TreeViewColumnGetAlignment(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_button")]
	public static extern Widget* TreeViewColumnGetButton(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_clickable")]
	public static extern c_int TreeViewColumnGetClickable(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_expand")]
	public static extern c_int TreeViewColumnGetExpand(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_fixed_width")]
	public static extern c_int TreeViewColumnGetFixedWidth(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_max_width")]
	public static extern c_int TreeViewColumnGetMaxWidth(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_min_width")]
	public static extern c_int TreeViewColumnGetMinWidth(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_reorderable")]
	public static extern c_int TreeViewColumnGetReorderable(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_resizable")]
	public static extern c_int TreeViewColumnGetResizable(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_sizing")]
	public static extern TreeViewColumnSizing TreeViewColumnGetSizing(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_sort_column_id")]
	public static extern c_int TreeViewColumnGetSortColumnId(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_sort_indicator")]
	public static extern c_int TreeViewColumnGetSortIndicator(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_sort_order")]
	public static extern SortType TreeViewColumnGetSortOrder(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_spacing")]
	public static extern c_int TreeViewColumnGetSpacing(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_title")]
	public static extern char8** TreeViewColumnGetTitle(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_tree_view")]
	public static extern Widget* TreeViewColumnGetTreeView(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_visible")]
	public static extern c_int TreeViewColumnGetVisible(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_widget")]
	public static extern Widget* TreeViewColumnGetWidget(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_width")]
	public static extern c_int TreeViewColumnGetWidth(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_get_x_offset")]
	public static extern c_int TreeViewColumnGetXOffset(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_pack_end")]
	public static extern void TreeViewColumnPackEnd(TreeViewColumn tree_column, CellRenderer cell, c_int expand);
	[LinkName("gtk_tree_view_column_pack_start")]
	public static extern void TreeViewColumnPackStart(TreeViewColumn tree_column, CellRenderer cell, c_int expand);
	[LinkName("gtk_tree_view_column_queue_resize")]
	public static extern void TreeViewColumnQueueResize(TreeViewColumn tree_column);
	[LinkName("gtk_tree_view_column_set_alignment")]
	public static extern void TreeViewColumnSetAlignment(TreeViewColumn tree_column, float xalign);
	[LinkName("gtk_tree_view_column_set_attributes")]
	public static extern void TreeViewColumnSetAttributes(TreeViewColumn tree_column, CellRenderer cell_renderer);
	[LinkName("gtk_tree_view_column_set_cell_data_func")]
	public static extern void TreeViewColumnSetCellDataFunc(TreeViewColumn tree_column, CellRenderer cell_renderer, TreeCellDataFunc func, void* func_data, GLib.DestroyNotify destroy);
	[LinkName("gtk_tree_view_column_set_clickable")]
	public static extern void TreeViewColumnSetClickable(TreeViewColumn tree_column, c_int clickable);
	[LinkName("gtk_tree_view_column_set_expand")]
	public static extern void TreeViewColumnSetExpand(TreeViewColumn tree_column, c_int expand);
	[LinkName("gtk_tree_view_column_set_fixed_width")]
	public static extern void TreeViewColumnSetFixedWidth(TreeViewColumn tree_column, c_int fixed_width);
	[LinkName("gtk_tree_view_column_set_max_width")]
	public static extern void TreeViewColumnSetMaxWidth(TreeViewColumn tree_column, c_int max_width);
	[LinkName("gtk_tree_view_column_set_min_width")]
	public static extern void TreeViewColumnSetMinWidth(TreeViewColumn tree_column, c_int min_width);
	[LinkName("gtk_tree_view_column_set_reorderable")]
	public static extern void TreeViewColumnSetReorderable(TreeViewColumn tree_column, c_int reorderable);
	[LinkName("gtk_tree_view_column_set_resizable")]
	public static extern void TreeViewColumnSetResizable(TreeViewColumn tree_column, c_int resizable);
	[LinkName("gtk_tree_view_column_set_sizing")]
	public static extern void TreeViewColumnSetSizing(TreeViewColumn tree_column, TreeViewColumnSizing type);
	[LinkName("gtk_tree_view_column_set_sort_column_id")]
	public static extern void TreeViewColumnSetSortColumnId(TreeViewColumn tree_column, c_int sort_column_id);
	[LinkName("gtk_tree_view_column_set_sort_indicator")]
	public static extern void TreeViewColumnSetSortIndicator(TreeViewColumn tree_column, c_int setting);
	[LinkName("gtk_tree_view_column_set_sort_order")]
	public static extern void TreeViewColumnSetSortOrder(TreeViewColumn tree_column, SortType order);
	[LinkName("gtk_tree_view_column_set_spacing")]
	public static extern void TreeViewColumnSetSpacing(TreeViewColumn tree_column, c_int spacing);
	[LinkName("gtk_tree_view_column_set_title")]
	public static extern void TreeViewColumnSetTitle(TreeViewColumn tree_column, char8* title);
	[LinkName("gtk_tree_view_column_set_visible")]
	public static extern void TreeViewColumnSetVisible(TreeViewColumn tree_column, c_int visible);
	[LinkName("gtk_tree_view_column_set_widget")]
	public static extern void TreeViewColumnSetWidget(TreeViewColumn tree_column, Widget widget);
	public function c_int TreeViewColumnDropFunc(TreeView tree_view, TreeViewColumn column, TreeViewColumn prev_column, TreeViewColumn next_column, void* data);
	public enum TreeViewColumnSizing : c_int
	{
		grow_only = 0,
		autosize = 1,
		fixed_ = 2
	}
	public enum TreeViewDropPosition : c_int
	{
		before = 0,
		after = 1,
		into_or_before = 2,
		into_or_after = 3
	}
	public enum TreeViewGridLines : c_int
	{
		none = 0,
		horizontal = 1,
		vertical = 2,
		both = 3
	}
	public function void TreeViewMappingFunc(TreeView tree_view, TreePath path, void* user_data);
	public function c_int TreeViewRowSeparatorFunc(TreeModel model, TreeIter iter, void* data);
	public function c_int TreeViewSearchEqualFunc(TreeModel model, c_int column, char8* key, TreeIter iter, void* search_data);
	public enum Unit : c_int
	{
		none = 0,
		points = 1,
		inch = 2,
		mm = 3
	}
	[CRepr]
	public struct UriLauncher;
	[LinkName("gtk_uri_launcher_new")]
	public static extern UriLauncher* UriLauncherNew(char8* uri);
	[LinkName("gtk_uri_launcher_get_uri")]
	public static extern char8** UriLauncherGetUri(UriLauncher self);
	[LinkName("gtk_uri_launcher_launch")]
	public static extern void UriLauncherLaunch(UriLauncher self, Window parent, Gio.Cancellable cancellable, Gio.AsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_uri_launcher_launch_finish")]
	public static extern c_int UriLauncherLaunchFinish(UriLauncher self, Gio.AsyncResult result);
	[LinkName("gtk_uri_launcher_set_uri")]
	public static extern void UriLauncherSetUri(UriLauncher self, char8* uri);
	[CRepr]
	public struct UriLauncherClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct Video;
	[LinkName("gtk_video_new")]
	public static extern Widget* VideoNew();
	[LinkName("gtk_video_new_for_file")]
	public static extern Widget* VideoNewForFile(Gio.File file);
	[LinkName("gtk_video_new_for_filename")]
	public static extern Widget* VideoNewForFilename(char8* filename);
	[LinkName("gtk_video_new_for_media_stream")]
	public static extern Widget* VideoNewForMediaStream(MediaStream stream);
	[LinkName("gtk_video_new_for_resource")]
	public static extern Widget* VideoNewForResource(char8* resource_path);
	[LinkName("gtk_video_get_autoplay")]
	public static extern c_int VideoGetAutoplay(Video self);
	[LinkName("gtk_video_get_file")]
	public static extern Gio.File* VideoGetFile(Video self);
	[LinkName("gtk_video_get_loop")]
	public static extern c_int VideoGetLoop(Video self);
	[LinkName("gtk_video_get_media_stream")]
	public static extern MediaStream* VideoGetMediaStream(Video self);
	[LinkName("gtk_video_set_autoplay")]
	public static extern void VideoSetAutoplay(Video self, c_int autoplay);
	[LinkName("gtk_video_set_file")]
	public static extern void VideoSetFile(Video self, Gio.File file);
	[LinkName("gtk_video_set_filename")]
	public static extern void VideoSetFilename(Video self, char8* filename);
	[LinkName("gtk_video_set_loop")]
	public static extern void VideoSetLoop(Video self, c_int loop);
	[LinkName("gtk_video_set_media_stream")]
	public static extern void VideoSetMediaStream(Video self, MediaStream stream);
	[LinkName("gtk_video_set_resource")]
	public static extern void VideoSetResource(Video self, char8* resource_path);
	[CRepr]
	public struct VideoClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct Viewport;
	[LinkName("gtk_viewport_new")]
	public static extern Widget* ViewportNew(Adjustment hadjustment, Adjustment vadjustment);
	[LinkName("gtk_viewport_get_child")]
	public static extern Widget* ViewportGetChild(Viewport viewport);
	[LinkName("gtk_viewport_get_scroll_to_focus")]
	public static extern c_int ViewportGetScrollToFocus(Viewport viewport);
	[LinkName("gtk_viewport_set_child")]
	public static extern void ViewportSetChild(Viewport viewport, Widget child);
	[LinkName("gtk_viewport_set_scroll_to_focus")]
	public static extern void ViewportSetScrollToFocus(Viewport viewport, c_int scroll_to_focus);
	[CRepr]
	public struct VolumeButton;
	[LinkName("gtk_volume_button_new")]
	public static extern Widget* VolumeButtonNew();
	[CRepr]
	public struct Widget;
	[LinkName("gtk_widget_action_set_enabled")]
	public static extern void WidgetActionSetEnabled(Widget widget, char8* action_name, c_int enabled);
	[LinkName("gtk_widget_activate")]
	public static extern c_int WidgetActivate(Widget widget);
	[LinkName("gtk_widget_activate_action")]
	public static extern c_int WidgetActivateAction(Widget widget, char8* name, char8* format_string);
	[LinkName("gtk_widget_activate_action_variant")]
	public static extern c_int WidgetActivateActionVariant(Widget widget, char8* name, GLib.Variant args);
	[LinkName("gtk_widget_activate_default")]
	public static extern void WidgetActivateDefault(Widget widget);
	[LinkName("gtk_widget_add_controller")]
	public static extern void WidgetAddController(Widget widget, EventController controller);
	[LinkName("gtk_widget_add_css_class")]
	public static extern void WidgetAddCssClass(Widget widget, char8* css_class);
	[LinkName("gtk_widget_add_mnemonic_label")]
	public static extern void WidgetAddMnemonicLabel(Widget widget, Widget label);
	[LinkName("gtk_widget_add_tick_callback")]
	public static extern c_uint WidgetAddTickCallback(Widget widget, TickCallback callback, void* user_data, GLib.DestroyNotify notify);
	[LinkName("gtk_widget_allocate")]
	public static extern void WidgetAllocate(Widget widget, c_int width, c_int height, c_int baseline, Gsk.Transform transform);
	[LinkName("gtk_widget_child_focus")]
	public static extern c_int WidgetChildFocus(Widget widget, DirectionType direction);
	[LinkName("gtk_widget_compute_bounds")]
	public static extern c_int WidgetComputeBounds(Widget widget, Widget target, Graphene.Rect out_bounds);
	[LinkName("gtk_widget_compute_expand")]
	public static extern c_int WidgetComputeExpand(Widget widget, Orientation orientation);
	[LinkName("gtk_widget_compute_point")]
	public static extern c_int WidgetComputePoint(Widget widget, Widget target, Graphene.Point point, Graphene.Point out_point);
	[LinkName("gtk_widget_compute_transform")]
	public static extern c_int WidgetComputeTransform(Widget widget, Widget target, Graphene.Matrix out_transform);
	[LinkName("gtk_widget_contains")]
	public static extern c_int WidgetContains(Widget widget, double x, double y);
	[LinkName("gtk_widget_create_pango_context")]
	public static extern Pango.Context* WidgetCreatePangoContext(Widget widget);
	[LinkName("gtk_widget_create_pango_layout")]
	public static extern Pango.Layout* WidgetCreatePangoLayout(Widget widget, char8* text);
	[LinkName("gtk_widget_dispose_template")]
	public static extern void WidgetDisposeTemplate(Widget widget, GLib.Type widget_type);
	[LinkName("gtk_drag_check_threshold")]
	public static extern c_int DragCheckThreshold(Widget widget, c_int start_x, c_int start_y, c_int current_x, c_int current_y);
	[LinkName("gtk_widget_error_bell")]
	public static extern void WidgetErrorBell(Widget widget);
	[LinkName("gtk_widget_get_allocated_baseline")]
	public static extern c_int WidgetGetAllocatedBaseline(Widget widget);
	[LinkName("gtk_widget_get_allocated_height")]
	public static extern c_int WidgetGetAllocatedHeight(Widget widget);
	[LinkName("gtk_widget_get_allocated_width")]
	public static extern c_int WidgetGetAllocatedWidth(Widget widget);
	[LinkName("gtk_widget_get_allocation")]
	public static extern void WidgetGetAllocation(Widget widget, Allocation allocation);
	[LinkName("gtk_widget_get_ancestor")]
	public static extern Widget* WidgetGetAncestor(Widget widget, GLib.Type widget_type);
	[LinkName("gtk_widget_get_baseline")]
	public static extern c_int WidgetGetBaseline(Widget widget);
	[LinkName("gtk_widget_get_can_focus")]
	public static extern c_int WidgetGetCanFocus(Widget widget);
	[LinkName("gtk_widget_get_can_target")]
	public static extern c_int WidgetGetCanTarget(Widget widget);
	[LinkName("gtk_widget_get_child_visible")]
	public static extern c_int WidgetGetChildVisible(Widget widget);
	[LinkName("gtk_widget_get_clipboard")]
	public static extern Gdk.Clipboard* WidgetGetClipboard(Widget widget);
	[LinkName("gtk_widget_get_color")]
	public static extern void WidgetGetColor(Widget widget, Gdk.RGBA color);
	[LinkName("gtk_widget_get_css_classes")]
	public static extern char8* WidgetGetCssClasses(Widget widget);
	[LinkName("gtk_widget_get_css_name")]
	public static extern char8** WidgetGetCssName(Widget self);
	[LinkName("gtk_widget_get_cursor")]
	public static extern Gdk.Cursor* WidgetGetCursor(Widget widget);
	[LinkName("gtk_widget_get_direction")]
	public static extern TextDirection WidgetGetDirection(Widget widget);
	[LinkName("gtk_widget_get_display")]
	public static extern Gdk.Display* WidgetGetDisplay(Widget widget);
	[LinkName("gtk_widget_get_first_child")]
	public static extern Widget* WidgetGetFirstChild(Widget widget);
	[LinkName("gtk_widget_get_focus_child")]
	public static extern Widget* WidgetGetFocusChild(Widget widget);
	[LinkName("gtk_widget_get_focus_on_click")]
	public static extern c_int WidgetGetFocusOnClick(Widget widget);
	[LinkName("gtk_widget_get_focusable")]
	public static extern c_int WidgetGetFocusable(Widget widget);
	[LinkName("gtk_widget_get_font_map")]
	public static extern Pango.FontMap* WidgetGetFontMap(Widget widget);
	[LinkName("gtk_widget_get_font_options")]
	public static extern cairo.FontOptions* WidgetGetFontOptions(Widget widget);
	[LinkName("gtk_widget_get_frame_clock")]
	public static extern Gdk.FrameClock* WidgetGetFrameClock(Widget widget);
	[LinkName("gtk_widget_get_halign")]
	public static extern Align WidgetGetHalign(Widget widget);
	[LinkName("gtk_widget_get_has_tooltip")]
	public static extern c_int WidgetGetHasTooltip(Widget widget);
	[LinkName("gtk_widget_get_height")]
	public static extern c_int WidgetGetHeight(Widget widget);
	[LinkName("gtk_widget_get_hexpand")]
	public static extern c_int WidgetGetHexpand(Widget widget);
	[LinkName("gtk_widget_get_hexpand_set")]
	public static extern c_int WidgetGetHexpandSet(Widget widget);
	[LinkName("gtk_widget_get_last_child")]
	public static extern Widget* WidgetGetLastChild(Widget widget);
	[LinkName("gtk_widget_get_layout_manager")]
	public static extern LayoutManager* WidgetGetLayoutManager(Widget widget);
	[LinkName("gtk_widget_get_mapped")]
	public static extern c_int WidgetGetMapped(Widget widget);
	[LinkName("gtk_widget_get_margin_bottom")]
	public static extern c_int WidgetGetMarginBottom(Widget widget);
	[LinkName("gtk_widget_get_margin_end")]
	public static extern c_int WidgetGetMarginEnd(Widget widget);
	[LinkName("gtk_widget_get_margin_start")]
	public static extern c_int WidgetGetMarginStart(Widget widget);
	[LinkName("gtk_widget_get_margin_top")]
	public static extern c_int WidgetGetMarginTop(Widget widget);
	[LinkName("gtk_widget_get_name")]
	public static extern char8** WidgetGetName(Widget widget);
	[LinkName("gtk_widget_get_native")]
	public static extern Native* WidgetGetNative(Widget widget);
	[LinkName("gtk_widget_get_next_sibling")]
	public static extern Widget* WidgetGetNextSibling(Widget widget);
	[LinkName("gtk_widget_get_opacity")]
	public static extern double WidgetGetOpacity(Widget widget);
	[LinkName("gtk_widget_get_overflow")]
	public static extern Overflow WidgetGetOverflow(Widget widget);
	[LinkName("gtk_widget_get_pango_context")]
	public static extern Pango.Context* WidgetGetPangoContext(Widget widget);
	[LinkName("gtk_widget_get_parent")]
	public static extern Widget* WidgetGetParent(Widget widget);
	[LinkName("gtk_widget_get_preferred_size")]
	public static extern void WidgetGetPreferredSize(Widget widget, Requisition minimum_size, Requisition natural_size);
	[LinkName("gtk_widget_get_prev_sibling")]
	public static extern Widget* WidgetGetPrevSibling(Widget widget);
	[LinkName("gtk_widget_get_primary_clipboard")]
	public static extern Gdk.Clipboard* WidgetGetPrimaryClipboard(Widget widget);
	[LinkName("gtk_widget_get_realized")]
	public static extern c_int WidgetGetRealized(Widget widget);
	[LinkName("gtk_widget_get_receives_default")]
	public static extern c_int WidgetGetReceivesDefault(Widget widget);
	[LinkName("gtk_widget_get_request_mode")]
	public static extern SizeRequestMode WidgetGetRequestMode(Widget widget);
	[LinkName("gtk_widget_get_root")]
	public static extern Root* WidgetGetRoot(Widget widget);
	[LinkName("gtk_widget_get_scale_factor")]
	public static extern c_int WidgetGetScaleFactor(Widget widget);
	[LinkName("gtk_widget_get_sensitive")]
	public static extern c_int WidgetGetSensitive(Widget widget);
	[LinkName("gtk_widget_get_settings")]
	public static extern Settings* WidgetGetSettings(Widget widget);
	[LinkName("gtk_widget_get_size")]
	public static extern c_int WidgetGetSize(Widget widget, Orientation orientation);
	[LinkName("gtk_widget_get_size_request")]
	public static extern void WidgetGetSizeRequest(Widget widget, c_int width, c_int height);
	[LinkName("gtk_widget_get_state_flags")]
	public static extern StateFlags WidgetGetStateFlags(Widget widget);
	[LinkName("gtk_widget_get_style_context")]
	public static extern StyleContext* WidgetGetStyleContext(Widget widget);
	[LinkName("gtk_widget_get_template_child")]
	public static extern GObject.Object* WidgetGetTemplateChild(Widget widget, GLib.Type widget_type, char8* name);
	[LinkName("gtk_widget_get_tooltip_markup")]
	public static extern char8** WidgetGetTooltipMarkup(Widget widget);
	[LinkName("gtk_widget_get_tooltip_text")]
	public static extern char8** WidgetGetTooltipText(Widget widget);
	[LinkName("gtk_widget_get_valign")]
	public static extern Align WidgetGetValign(Widget widget);
	[LinkName("gtk_widget_get_vexpand")]
	public static extern c_int WidgetGetVexpand(Widget widget);
	[LinkName("gtk_widget_get_vexpand_set")]
	public static extern c_int WidgetGetVexpandSet(Widget widget);
	[LinkName("gtk_widget_get_visible")]
	public static extern c_int WidgetGetVisible(Widget widget);
	[LinkName("gtk_widget_get_width")]
	public static extern c_int WidgetGetWidth(Widget widget);
	[LinkName("gtk_widget_grab_focus")]
	public static extern c_int WidgetGrabFocus(Widget widget);
	[LinkName("gtk_widget_has_css_class")]
	public static extern c_int WidgetHasCssClass(Widget widget, char8* css_class);
	[LinkName("gtk_widget_has_default")]
	public static extern c_int WidgetHasDefault(Widget widget);
	[LinkName("gtk_widget_has_focus")]
	public static extern c_int WidgetHasFocus(Widget widget);
	[LinkName("gtk_widget_has_visible_focus")]
	public static extern c_int WidgetHasVisibleFocus(Widget widget);
	[LinkName("gtk_widget_hide")]
	public static extern void WidgetHide(Widget widget);
	[LinkName("gtk_widget_in_destruction")]
	public static extern c_int WidgetInDestruction(Widget widget);
	[LinkName("gtk_widget_init_template")]
	public static extern void WidgetInitTemplate(Widget widget);
	[LinkName("gtk_widget_insert_action_group")]
	public static extern void WidgetInsertActionGroup(Widget widget, char8* name, Gio.ActionGroup group);
	[LinkName("gtk_widget_insert_after")]
	public static extern void WidgetInsertAfter(Widget widget, Widget parent, Widget previous_sibling);
	[LinkName("gtk_widget_insert_before")]
	public static extern void WidgetInsertBefore(Widget widget, Widget parent, Widget next_sibling);
	[LinkName("gtk_widget_is_ancestor")]
	public static extern c_int WidgetIsAncestor(Widget widget, Widget ancestor);
	[LinkName("gtk_widget_is_drawable")]
	public static extern c_int WidgetIsDrawable(Widget widget);
	[LinkName("gtk_widget_is_focus")]
	public static extern c_int WidgetIsFocus(Widget widget);
	[LinkName("gtk_widget_is_sensitive")]
	public static extern c_int WidgetIsSensitive(Widget widget);
	[LinkName("gtk_widget_is_visible")]
	public static extern c_int WidgetIsVisible(Widget widget);
	[LinkName("gtk_widget_keynav_failed")]
	public static extern c_int WidgetKeynavFailed(Widget widget, DirectionType direction);
	[LinkName("gtk_widget_list_mnemonic_labels")]
	public static extern GLib.List* WidgetListMnemonicLabels(Widget widget);
	[LinkName("gtk_widget_map")]
	public static extern void WidgetMap(Widget widget);
	[LinkName("gtk_widget_measure")]
	public static extern void WidgetMeasure(Widget widget, Orientation orientation, c_int for_size, c_int minimum, c_int natural, c_int minimum_baseline, c_int natural_baseline);
	[LinkName("gtk_widget_mnemonic_activate")]
	public static extern c_int WidgetMnemonicActivate(Widget widget, c_int group_cycling);
	[LinkName("gtk_widget_observe_children")]
	public static extern Gio.ListModel* WidgetObserveChildren(Widget widget);
	[LinkName("gtk_widget_observe_controllers")]
	public static extern Gio.ListModel* WidgetObserveControllers(Widget widget);
	[LinkName("gtk_widget_pick")]
	public static extern Widget* WidgetPick(Widget widget, double x, double y, PickFlags flags);
	[LinkName("gtk_widget_queue_allocate")]
	public static extern void WidgetQueueAllocate(Widget widget);
	[LinkName("gtk_widget_queue_draw")]
	public static extern void WidgetQueueDraw(Widget widget);
	[LinkName("gtk_widget_queue_resize")]
	public static extern void WidgetQueueResize(Widget widget);
	[LinkName("gtk_widget_realize")]
	public static extern void WidgetRealize(Widget widget);
	[LinkName("gtk_widget_remove_controller")]
	public static extern void WidgetRemoveController(Widget widget, EventController controller);
	[LinkName("gtk_widget_remove_css_class")]
	public static extern void WidgetRemoveCssClass(Widget widget, char8* css_class);
	[LinkName("gtk_widget_remove_mnemonic_label")]
	public static extern void WidgetRemoveMnemonicLabel(Widget widget, Widget label);
	[LinkName("gtk_widget_remove_tick_callback")]
	public static extern void WidgetRemoveTickCallback(Widget widget, c_uint id);
	[LinkName("gtk_widget_set_can_focus")]
	public static extern void WidgetSetCanFocus(Widget widget, c_int can_focus);
	[LinkName("gtk_widget_set_can_target")]
	public static extern void WidgetSetCanTarget(Widget widget, c_int can_target);
	[LinkName("gtk_widget_set_child_visible")]
	public static extern void WidgetSetChildVisible(Widget widget, c_int child_visible);
	[LinkName("gtk_widget_set_css_classes")]
	public static extern void WidgetSetCssClasses(Widget widget);
	[LinkName("gtk_widget_set_cursor")]
	public static extern void WidgetSetCursor(Widget widget, Gdk.Cursor cursor);
	[LinkName("gtk_widget_set_cursor_from_name")]
	public static extern void WidgetSetCursorFromName(Widget widget, char8* name);
	[LinkName("gtk_widget_set_direction")]
	public static extern void WidgetSetDirection(Widget widget, TextDirection dir);
	[LinkName("gtk_widget_set_focus_child")]
	public static extern void WidgetSetFocusChild(Widget widget, Widget child);
	[LinkName("gtk_widget_set_focus_on_click")]
	public static extern void WidgetSetFocusOnClick(Widget widget, c_int focus_on_click);
	[LinkName("gtk_widget_set_focusable")]
	public static extern void WidgetSetFocusable(Widget widget, c_int focusable);
	[LinkName("gtk_widget_set_font_map")]
	public static extern void WidgetSetFontMap(Widget widget, Pango.FontMap font_map);
	[LinkName("gtk_widget_set_font_options")]
	public static extern void WidgetSetFontOptions(Widget widget, cairo.FontOptions options);
	[LinkName("gtk_widget_set_halign")]
	public static extern void WidgetSetHalign(Widget widget, Align align);
	[LinkName("gtk_widget_set_has_tooltip")]
	public static extern void WidgetSetHasTooltip(Widget widget, c_int has_tooltip);
	[LinkName("gtk_widget_set_hexpand")]
	public static extern void WidgetSetHexpand(Widget widget, c_int expand);
	[LinkName("gtk_widget_set_hexpand_set")]
	public static extern void WidgetSetHexpandSet(Widget widget, c_int set);
	[LinkName("gtk_widget_set_layout_manager")]
	public static extern void WidgetSetLayoutManager(Widget widget, LayoutManager layout_manager);
	[LinkName("gtk_widget_set_margin_bottom")]
	public static extern void WidgetSetMarginBottom(Widget widget, c_int margin);
	[LinkName("gtk_widget_set_margin_end")]
	public static extern void WidgetSetMarginEnd(Widget widget, c_int margin);
	[LinkName("gtk_widget_set_margin_start")]
	public static extern void WidgetSetMarginStart(Widget widget, c_int margin);
	[LinkName("gtk_widget_set_margin_top")]
	public static extern void WidgetSetMarginTop(Widget widget, c_int margin);
	[LinkName("gtk_widget_set_name")]
	public static extern void WidgetSetName(Widget widget, char8* name);
	[LinkName("gtk_widget_set_opacity")]
	public static extern void WidgetSetOpacity(Widget widget, double opacity);
	[LinkName("gtk_widget_set_overflow")]
	public static extern void WidgetSetOverflow(Widget widget, Overflow overflow);
	[LinkName("gtk_widget_set_parent")]
	public static extern void WidgetSetParent(Widget widget, Widget parent);
	[LinkName("gtk_widget_set_receives_default")]
	public static extern void WidgetSetReceivesDefault(Widget widget, c_int receives_default);
	[LinkName("gtk_widget_set_sensitive")]
	public static extern void WidgetSetSensitive(Widget widget, c_int sensitive);
	[LinkName("gtk_widget_set_size_request")]
	public static extern void WidgetSetSizeRequest(Widget widget, c_int width, c_int height);
	[LinkName("gtk_widget_set_state_flags")]
	public static extern void WidgetSetStateFlags(Widget widget, StateFlags flags, c_int clear);
	[LinkName("gtk_widget_set_tooltip_markup")]
	public static extern void WidgetSetTooltipMarkup(Widget widget, char8* markup);
	[LinkName("gtk_widget_set_tooltip_text")]
	public static extern void WidgetSetTooltipText(Widget widget, char8* text);
	[LinkName("gtk_widget_set_valign")]
	public static extern void WidgetSetValign(Widget widget, Align align);
	[LinkName("gtk_widget_set_vexpand")]
	public static extern void WidgetSetVexpand(Widget widget, c_int expand);
	[LinkName("gtk_widget_set_vexpand_set")]
	public static extern void WidgetSetVexpandSet(Widget widget, c_int set);
	[LinkName("gtk_widget_set_visible")]
	public static extern void WidgetSetVisible(Widget widget, c_int visible);
	[LinkName("gtk_widget_should_layout")]
	public static extern c_int WidgetShouldLayout(Widget widget);
	[LinkName("gtk_widget_show")]
	public static extern void WidgetShow(Widget widget);
	[LinkName("gtk_widget_size_allocate")]
	public static extern void WidgetSizeAllocate(Widget widget, Allocation allocation, c_int baseline);
	[LinkName("gtk_widget_snapshot_child")]
	public static extern void WidgetSnapshotChild(Widget widget, Widget child, Snapshot snapshot);
	[LinkName("gtk_widget_translate_coordinates")]
	public static extern c_int WidgetTranslateCoordinates(Widget src_widget, Widget dest_widget, double src_x, double src_y, double dest_x, double dest_y);
	[LinkName("gtk_widget_trigger_tooltip_query")]
	public static extern void WidgetTriggerTooltipQuery(Widget widget);
	[LinkName("gtk_widget_unmap")]
	public static extern void WidgetUnmap(Widget widget);
	[LinkName("gtk_widget_unparent")]
	public static extern void WidgetUnparent(Widget widget);
	[LinkName("gtk_widget_unrealize")]
	public static extern void WidgetUnrealize(Widget widget);
	[LinkName("gtk_widget_unset_state_flags")]
	public static extern void WidgetUnsetStateFlags(Widget widget, StateFlags flags);
	public function void WidgetActionActivateFunc(Widget widget, char8* action_name, GLib.Variant parameter);
	[CRepr]
	public struct WidgetClass
	{
		GObject.InitiallyUnownedClass parent_class;
		WidgetClassPrivate priv;
	}
	[CRepr]
	public struct WidgetClassPrivate
	{
	}
	[CRepr]
	public struct WidgetPaintable;
	[LinkName("gtk_widget_paintable_new")]
	public static extern WidgetPaintable* WidgetPaintableNew(Widget widget);
	[LinkName("gtk_widget_paintable_get_widget")]
	public static extern Widget* WidgetPaintableGetWidget(WidgetPaintable self);
	[LinkName("gtk_widget_paintable_set_widget")]
	public static extern void WidgetPaintableSetWidget(WidgetPaintable self, Widget widget);
	[CRepr]
	public struct WidgetPaintableClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct WidgetPrivate
	{
	}
	[CRepr]
	public struct Window;
	[LinkName("gtk_window_new")]
	public static extern Widget* WindowNew();
	[LinkName("gtk_window_close")]
	public static extern void WindowClose(Window window);
	[LinkName("gtk_window_destroy")]
	public static extern void WindowDestroy(Window window);
	[LinkName("gtk_window_fullscreen")]
	public static extern void WindowFullscreen(Window window);
	[LinkName("gtk_window_fullscreen_on_monitor")]
	public static extern void WindowFullscreenOnMonitor(Window window, Gdk.Monitor monitor);
	[LinkName("gtk_window_get_application")]
	public static extern Application* WindowGetApplication(Window window);
	[LinkName("gtk_window_get_child")]
	public static extern Widget* WindowGetChild(Window window);
	[LinkName("gtk_window_get_decorated")]
	public static extern c_int WindowGetDecorated(Window window);
	[LinkName("gtk_window_get_default_size")]
	public static extern void WindowGetDefaultSize(Window window, c_int width, c_int height);
	[LinkName("gtk_window_get_default_widget")]
	public static extern Widget* WindowGetDefaultWidget(Window window);
	[LinkName("gtk_window_get_deletable")]
	public static extern c_int WindowGetDeletable(Window window);
	[LinkName("gtk_window_get_destroy_with_parent")]
	public static extern c_int WindowGetDestroyWithParent(Window window);
	[LinkName("gtk_window_get_focus")]
	public static extern Widget* WindowGetFocus(Window window);
	[LinkName("gtk_window_get_focus_visible")]
	public static extern c_int WindowGetFocusVisible(Window window);
	[LinkName("gtk_window_get_group")]
	public static extern WindowGroup* WindowGetGroup(Window window);
	[LinkName("gtk_window_get_handle_menubar_accel")]
	public static extern c_int WindowGetHandleMenubarAccel(Window window);
	[LinkName("gtk_window_get_hide_on_close")]
	public static extern c_int WindowGetHideOnClose(Window window);
	[LinkName("gtk_window_get_icon_name")]
	public static extern char8** WindowGetIconName(Window window);
	[LinkName("gtk_window_get_mnemonics_visible")]
	public static extern c_int WindowGetMnemonicsVisible(Window window);
	[LinkName("gtk_window_get_modal")]
	public static extern c_int WindowGetModal(Window window);
	[LinkName("gtk_window_get_resizable")]
	public static extern c_int WindowGetResizable(Window window);
	[LinkName("gtk_window_get_title")]
	public static extern char8** WindowGetTitle(Window window);
	[LinkName("gtk_window_get_titlebar")]
	public static extern Widget* WindowGetTitlebar(Window window);
	[LinkName("gtk_window_get_transient_for")]
	public static extern Window* WindowGetTransientFor(Window window);
	[LinkName("gtk_window_has_group")]
	public static extern c_int WindowHasGroup(Window window);
	[LinkName("gtk_window_is_active")]
	public static extern c_int WindowIsActive(Window window);
	[LinkName("gtk_window_is_fullscreen")]
	public static extern c_int WindowIsFullscreen(Window window);
	[LinkName("gtk_window_is_maximized")]
	public static extern c_int WindowIsMaximized(Window window);
	[LinkName("gtk_window_maximize")]
	public static extern void WindowMaximize(Window window);
	[LinkName("gtk_window_minimize")]
	public static extern void WindowMinimize(Window window);
	[LinkName("gtk_window_present")]
	public static extern void WindowPresent(Window window);
	[LinkName("gtk_window_present_with_time")]
	public static extern void WindowPresentWithTime(Window window, c_uint timestamp);
	[LinkName("gtk_window_set_application")]
	public static extern void WindowSetApplication(Window window, Application application);
	[LinkName("gtk_window_set_child")]
	public static extern void WindowSetChild(Window window, Widget child);
	[LinkName("gtk_window_set_decorated")]
	public static extern void WindowSetDecorated(Window window, c_int setting);
	[LinkName("gtk_window_set_default_size")]
	public static extern void WindowSetDefaultSize(Window window, c_int width, c_int height);
	[LinkName("gtk_window_set_default_widget")]
	public static extern void WindowSetDefaultWidget(Window window, Widget default_widget);
	[LinkName("gtk_window_set_deletable")]
	public static extern void WindowSetDeletable(Window window, c_int setting);
	[LinkName("gtk_window_set_destroy_with_parent")]
	public static extern void WindowSetDestroyWithParent(Window window, c_int setting);
	[LinkName("gtk_window_set_display")]
	public static extern void WindowSetDisplay(Window window, Gdk.Display display);
	[LinkName("gtk_window_set_focus")]
	public static extern void WindowSetFocus(Window window, Widget focus);
	[LinkName("gtk_window_set_focus_visible")]
	public static extern void WindowSetFocusVisible(Window window, c_int setting);
	[LinkName("gtk_window_set_handle_menubar_accel")]
	public static extern void WindowSetHandleMenubarAccel(Window window, c_int handle_menubar_accel);
	[LinkName("gtk_window_set_hide_on_close")]
	public static extern void WindowSetHideOnClose(Window window, c_int setting);
	[LinkName("gtk_window_set_icon_name")]
	public static extern void WindowSetIconName(Window window, char8* name);
	[LinkName("gtk_window_set_mnemonics_visible")]
	public static extern void WindowSetMnemonicsVisible(Window window, c_int setting);
	[LinkName("gtk_window_set_modal")]
	public static extern void WindowSetModal(Window window, c_int modal);
	[LinkName("gtk_window_set_resizable")]
	public static extern void WindowSetResizable(Window window, c_int resizable);
	[LinkName("gtk_window_set_startup_id")]
	public static extern void WindowSetStartupId(Window window, char8* startup_id);
	[LinkName("gtk_window_set_title")]
	public static extern void WindowSetTitle(Window window, char8* title);
	[LinkName("gtk_window_set_titlebar")]
	public static extern void WindowSetTitlebar(Window window, Widget titlebar);
	[LinkName("gtk_window_set_transient_for")]
	public static extern void WindowSetTransientFor(Window window, Window parent);
	[LinkName("gtk_window_unfullscreen")]
	public static extern void WindowUnfullscreen(Window window);
	[LinkName("gtk_window_unmaximize")]
	public static extern void WindowUnmaximize(Window window);
	[LinkName("gtk_window_unminimize")]
	public static extern void WindowUnminimize(Window window);
	[CRepr]
	public struct WindowClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct WindowControls;
	[LinkName("gtk_window_controls_new")]
	public static extern Widget* WindowControlsNew(PackType side);
	[LinkName("gtk_window_controls_get_decoration_layout")]
	public static extern char8** WindowControlsGetDecorationLayout(WindowControls self);
	[LinkName("gtk_window_controls_get_empty")]
	public static extern c_int WindowControlsGetEmpty(WindowControls self);
	[LinkName("gtk_window_controls_get_side")]
	public static extern PackType WindowControlsGetSide(WindowControls self);
	[LinkName("gtk_window_controls_set_decoration_layout")]
	public static extern void WindowControlsSetDecorationLayout(WindowControls self, char8* layout);
	[LinkName("gtk_window_controls_set_side")]
	public static extern void WindowControlsSetSide(WindowControls self, PackType side);
	[CRepr]
	public struct WindowControlsClass
	{
		WidgetClass parent_class;
	}
	[CRepr]
	public struct WindowGroup;
	[LinkName("gtk_window_group_new")]
	public static extern WindowGroup* WindowGroupNew();
	[LinkName("gtk_window_group_add_window")]
	public static extern void WindowGroupAddWindow(WindowGroup window_group, Window window);
	[LinkName("gtk_window_group_list_windows")]
	public static extern GLib.List* WindowGroupListWindows(WindowGroup window_group);
	[LinkName("gtk_window_group_remove_window")]
	public static extern void WindowGroupRemoveWindow(WindowGroup window_group, Window window);
	[CRepr]
	public struct WindowGroupClass
	{
		GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct WindowGroupPrivate
	{
	}
	[CRepr]
	public struct WindowHandle;
	[LinkName("gtk_window_handle_new")]
	public static extern Widget* WindowHandleNew();
	[LinkName("gtk_window_handle_get_child")]
	public static extern Widget* WindowHandleGetChild(WindowHandle self);
	[LinkName("gtk_window_handle_set_child")]
	public static extern void WindowHandleSetChild(WindowHandle self, Widget child);
	[CRepr]
	public struct WindowHandleClass
	{
		WidgetClass parent_class;
	}
	public enum WrapMode : c_int
	{
		none = 0,
		char = 1,
		word = 2,
		word_char = 3
	}
}