namespace Gtk;

using System;
using System.Interop;

class Gtk
{
	public typealias Allocation = Gdk.Rectangle;

	const c_int ACCESSIBLE_VALUE_UNDEFINED = (.)-1;
	const c_int BINARY_AGE = (.)1104;
	const char8* IM_MODULE_EXTENSION_POINT_NAME = (.)"gtk-im-module";
	const c_int INPUT_ERROR = (.)-1;
	const c_int INTERFACE_AGE = (.)0;
	const c_uint INVALID_LIST_POSITION = (.)4294967295;
	const char8* LEVEL_BAR_OFFSET_FULL = (.)"full";
	const char8* LEVEL_BAR_OFFSET_HIGH = (.)"high";
	const char8* LEVEL_BAR_OFFSET_LOW = (.)"low";
	const c_int MAJOR_VERSION = (.)4;
	const c_int MAX_COMPOSE_LEN = (.)7;
	const char8* MEDIA_FILE_EXTENSION_POINT_NAME = (.)"gtk-media-file";
	const c_int MICRO_VERSION = (.)4;
	const c_int MINOR_VERSION = (.)11;
	const char8* PAPER_NAME_A3 = (.)"iso_a3";
	const char8* PAPER_NAME_A4 = (.)"iso_a4";
	const char8* PAPER_NAME_A5 = (.)"iso_a5";
	const char8* PAPER_NAME_B5 = (.)"iso_b5";
	const char8* PAPER_NAME_EXECUTIVE = (.)"na_executive";
	const char8* PAPER_NAME_LEGAL = (.)"na_legal";
	const char8* PAPER_NAME_LETTER = (.)"na_letter";
	const char8* PRINT_SETTINGS_COLLATE = (.)"collate";
	const char8* PRINT_SETTINGS_DEFAULT_SOURCE = (.)"default-source";
	const char8* PRINT_SETTINGS_DITHER = (.)"dither";
	const char8* PRINT_SETTINGS_DUPLEX = (.)"duplex";
	const char8* PRINT_SETTINGS_FINISHINGS = (.)"finishings";
	const char8* PRINT_SETTINGS_MEDIA_TYPE = (.)"media-type";
	const char8* PRINT_SETTINGS_NUMBER_UP = (.)"number-up";
	const char8* PRINT_SETTINGS_NUMBER_UP_LAYOUT = (.)"number-up-layout";
	const char8* PRINT_SETTINGS_N_COPIES = (.)"n-copies";
	const char8* PRINT_SETTINGS_ORIENTATION = (.)"orientation";
	const char8* PRINT_SETTINGS_OUTPUT_BASENAME = (.)"output-basename";
	const char8* PRINT_SETTINGS_OUTPUT_BIN = (.)"output-bin";
	const char8* PRINT_SETTINGS_OUTPUT_DIR = (.)"output-dir";
	const char8* PRINT_SETTINGS_OUTPUT_FILE_FORMAT = (.)"output-file-format";
	const char8* PRINT_SETTINGS_OUTPUT_URI = (.)"output-uri";
	const char8* PRINT_SETTINGS_PAGE_RANGES = (.)"page-ranges";
	const char8* PRINT_SETTINGS_PAGE_SET = (.)"page-set";
	const char8* PRINT_SETTINGS_PAPER_FORMAT = (.)"paper-format";
	const char8* PRINT_SETTINGS_PAPER_HEIGHT = (.)"paper-height";
	const char8* PRINT_SETTINGS_PAPER_WIDTH = (.)"paper-width";
	const char8* PRINT_SETTINGS_PRINTER = (.)"printer";
	const char8* PRINT_SETTINGS_PRINTER_LPI = (.)"printer-lpi";
	const char8* PRINT_SETTINGS_PRINT_PAGES = (.)"print-pages";
	const char8* PRINT_SETTINGS_QUALITY = (.)"quality";
	const char8* PRINT_SETTINGS_RESOLUTION = (.)"resolution";
	const char8* PRINT_SETTINGS_RESOLUTION_X = (.)"resolution-x";
	const char8* PRINT_SETTINGS_RESOLUTION_Y = (.)"resolution-y";
	const char8* PRINT_SETTINGS_REVERSE = (.)"reverse";
	const char8* PRINT_SETTINGS_SCALE = (.)"scale";
	const char8* PRINT_SETTINGS_USE_COLOR = (.)"use-color";
	const char8* PRINT_SETTINGS_WIN32_DRIVER_EXTRA = (.)"win32-driver-extra";
	const char8* PRINT_SETTINGS_WIN32_DRIVER_VERSION = (.)"win32-driver-version";
	const c_int PRIORITY_RESIZE = (.)110;
	const c_int STYLE_PROVIDER_PRIORITY_APPLICATION = (.)600;
	const c_int STYLE_PROVIDER_PRIORITY_FALLBACK = (.)1;
	const c_int STYLE_PROVIDER_PRIORITY_SETTINGS = (.)400;
	const c_int STYLE_PROVIDER_PRIORITY_THEME = (.)200;
	const c_int STYLE_PROVIDER_PRIORITY_USER = (.)800;
	const c_int TEXT_VIEW_PRIORITY_VALIDATE = (.)125;
	const c_int TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID = (.)-1;
	const c_int TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID = (.)-2;
	[CRepr]
	public struct ATContext : GObject.Object
	{
		[LinkName("gtk_at_context_create")]
		public static extern ATContext* Create(AccessibleRole accessible_role, Accessible* accessible, Gdk.Display* display);
		[LinkName("gtk_at_context_get_accessible")]
		public static extern Accessible* GetAccessible(ATContext* self);
		[LinkName("gtk_at_context_get_accessible_role")]
		public static extern AccessibleRole GetAccessibleRole(ATContext* self);
		public function void StateChangeFunc(ATContext* self, void* user_data);
	}
	[CRepr]
	public struct AboutDialog : Window
	{
		[LinkName("gtk_about_dialog_new")]
		public static extern Widget* New();
		[LinkName("gtk_about_dialog_add_credit_section")]
		public static extern void AddCreditSection(AboutDialog* about, char8* section_name, char8** people);
		[LinkName("gtk_about_dialog_get_artists")]
		public static extern char8* GetArtists(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_authors")]
		public static extern char8* GetAuthors(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_comments")]
		public static extern char8* GetComments(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_copyright")]
		public static extern char8* GetCopyright(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_documenters")]
		public static extern char8* GetDocumenters(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_license")]
		public static extern char8* GetLicense(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_license_type")]
		public static extern License GetLicenseType(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_logo")]
		public static extern Gdk.Paintable* GetLogo(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_logo_icon_name")]
		public static extern char8* GetLogoIconName(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_program_name")]
		public static extern char8* GetProgramName(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_system_information")]
		public static extern char8* GetSystemInformation(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_translator_credits")]
		public static extern char8* GetTranslatorCredits(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_version")]
		public static extern char8* GetVersion(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_website")]
		public static extern char8* GetWebsite(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_website_label")]
		public static extern char8* GetWebsiteLabel(AboutDialog* about);
		[LinkName("gtk_about_dialog_get_wrap_license")]
		public static extern c_int GetWrapLicense(AboutDialog* about);
		[LinkName("gtk_about_dialog_set_artists")]
		public static extern void SetArtists(AboutDialog* about, char8** artists);
		[LinkName("gtk_about_dialog_set_authors")]
		public static extern void SetAuthors(AboutDialog* about, char8** authors);
		[LinkName("gtk_about_dialog_set_comments")]
		public static extern void SetComments(AboutDialog* about, char8* comments);
		[LinkName("gtk_about_dialog_set_copyright")]
		public static extern void SetCopyright(AboutDialog* about, char8* copyright);
		[LinkName("gtk_about_dialog_set_documenters")]
		public static extern void SetDocumenters(AboutDialog* about, char8** documenters);
		[LinkName("gtk_about_dialog_set_license")]
		public static extern void SetLicense(AboutDialog* about, char8* license);
		[LinkName("gtk_about_dialog_set_license_type")]
		public static extern void SetLicenseType(AboutDialog* about, License license_type);
		[LinkName("gtk_about_dialog_set_logo")]
		public static extern void SetLogo(AboutDialog* about, Gdk.Paintable* logo);
		[LinkName("gtk_about_dialog_set_logo_icon_name")]
		public static extern void SetLogoIconName(AboutDialog* about, char8* icon_name);
		[LinkName("gtk_about_dialog_set_program_name")]
		public static extern void SetProgramName(AboutDialog* about, char8* name);
		[LinkName("gtk_about_dialog_set_system_information")]
		public static extern void SetSystemInformation(AboutDialog* about, char8* system_information);
		[LinkName("gtk_about_dialog_set_translator_credits")]
		public static extern void SetTranslatorCredits(AboutDialog* about, char8* translator_credits);
		[LinkName("gtk_about_dialog_set_version")]
		public static extern void SetVersion(AboutDialog* about, char8* version);
		[LinkName("gtk_about_dialog_set_website")]
		public static extern void SetWebsite(AboutDialog* about, char8* website);
		[LinkName("gtk_about_dialog_set_website_label")]
		public static extern void SetWebsiteLabel(AboutDialog* about, char8* website_label);
		[LinkName("gtk_about_dialog_set_wrap_license")]
		public static extern void SetWrapLicense(AboutDialog* about, c_int wrap_license);
		public function c_int ActivateLinkFunc(AboutDialog* self, char8* uri, void* user_data);
	}
	[CRepr]
	public struct ActionBar : Widget
	{
		[LinkName("gtk_action_bar_new")]
		public static extern Widget* New();
		[LinkName("gtk_action_bar_get_center_widget")]
		public static extern Widget* GetCenterWidget(ActionBar* action_bar);
		[LinkName("gtk_action_bar_get_revealed")]
		public static extern c_int GetRevealed(ActionBar* action_bar);
		[LinkName("gtk_action_bar_pack_end")]
		public static extern void PackEnd(ActionBar* action_bar, Widget* child);
		[LinkName("gtk_action_bar_pack_start")]
		public static extern void PackStart(ActionBar* action_bar, Widget* child);
		[LinkName("gtk_action_bar_remove")]
		public static extern void Remove(ActionBar* action_bar, Widget* child);
		[LinkName("gtk_action_bar_set_center_widget")]
		public static extern void SetCenterWidget(ActionBar* action_bar, Widget* center_widget);
		[LinkName("gtk_action_bar_set_revealed")]
		public static extern void SetRevealed(ActionBar* action_bar, c_int revealed);
	}
	[CRepr]
	public struct ActivateAction : ShortcutAction
	{
	}
	[CRepr]
	public struct Adjustment : GObject.InitiallyUnowned
	{
		[LinkName("gtk_adjustment_new")]
		public static extern Adjustment* New(double value, double lower, double upper, double step_increment, double page_increment, double page_size);
		[LinkName("gtk_adjustment_clamp_page")]
		public static extern void ClampPage(Adjustment* adjustment, double lower, double upper);
		[LinkName("gtk_adjustment_configure")]
		public static extern void Configure(Adjustment* adjustment, double value, double lower, double upper, double step_increment, double page_increment, double page_size);
		[LinkName("gtk_adjustment_get_lower")]
		public static extern double GetLower(Adjustment* adjustment);
		[LinkName("gtk_adjustment_get_minimum_increment")]
		public static extern double GetMinimumIncrement(Adjustment* adjustment);
		[LinkName("gtk_adjustment_get_page_increment")]
		public static extern double GetPageIncrement(Adjustment* adjustment);
		[LinkName("gtk_adjustment_get_page_size")]
		public static extern double GetPageSize(Adjustment* adjustment);
		[LinkName("gtk_adjustment_get_step_increment")]
		public static extern double GetStepIncrement(Adjustment* adjustment);
		[LinkName("gtk_adjustment_get_upper")]
		public static extern double GetUpper(Adjustment* adjustment);
		[LinkName("gtk_adjustment_get_value")]
		public static extern double GetValue(Adjustment* adjustment);
		[LinkName("gtk_adjustment_set_lower")]
		public static extern void SetLower(Adjustment* adjustment, double lower);
		[LinkName("gtk_adjustment_set_page_increment")]
		public static extern void SetPageIncrement(Adjustment* adjustment, double page_increment);
		[LinkName("gtk_adjustment_set_page_size")]
		public static extern void SetPageSize(Adjustment* adjustment, double page_size);
		[LinkName("gtk_adjustment_set_step_increment")]
		public static extern void SetStepIncrement(Adjustment* adjustment, double step_increment);
		[LinkName("gtk_adjustment_set_upper")]
		public static extern void SetUpper(Adjustment* adjustment, double upper);
		[LinkName("gtk_adjustment_set_value")]
		public static extern void SetValue(Adjustment* adjustment, double value);
		public function void ChangedFunc(Adjustment* self, void* user_data);
		public function void ValueChangedFunc(Adjustment* self, void* user_data);
	}
	[CRepr]
	public struct AlertDialog : GObject.Object
	{
		[LinkName("gtk_alert_dialog_choose")]
		public static extern void Choose(AlertDialog* self, Window* parent, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_alert_dialog_choose_finish")]
		public static extern c_int ChooseFinish(AlertDialog* self, Gio.AsyncResult* result);
		[LinkName("gtk_alert_dialog_get_buttons")]
		public static extern char8* GetButtons(AlertDialog* self);
		[LinkName("gtk_alert_dialog_get_cancel_button")]
		public static extern c_int GetCancelButton(AlertDialog* self);
		[LinkName("gtk_alert_dialog_get_default_button")]
		public static extern c_int GetDefaultButton(AlertDialog* self);
		[LinkName("gtk_alert_dialog_get_detail")]
		public static extern char8* GetDetail(AlertDialog* self);
		[LinkName("gtk_alert_dialog_get_message")]
		public static extern char8* GetMessage(AlertDialog* self);
		[LinkName("gtk_alert_dialog_get_modal")]
		public static extern c_int GetModal(AlertDialog* self);
		[LinkName("gtk_alert_dialog_set_buttons")]
		public static extern void SetButtons(AlertDialog* self, char8** labels);
		[LinkName("gtk_alert_dialog_set_cancel_button")]
		public static extern void SetCancelButton(AlertDialog* self, c_int button);
		[LinkName("gtk_alert_dialog_set_default_button")]
		public static extern void SetDefaultButton(AlertDialog* self, c_int button);
		[LinkName("gtk_alert_dialog_set_detail")]
		public static extern void SetDetail(AlertDialog* self, char8* detail);
		[LinkName("gtk_alert_dialog_set_message")]
		public static extern void SetMessage(AlertDialog* self, char8* message);
		[LinkName("gtk_alert_dialog_set_modal")]
		public static extern void SetModal(AlertDialog* self, c_int modal);
		[LinkName("gtk_alert_dialog_show")]
		public static extern void Show(AlertDialog* self, Window* parent);
	}
	[CRepr]
	public struct AlternativeTrigger : ShortcutTrigger
	{
		[LinkName("gtk_alternative_trigger_new")]
		public static extern ShortcutTrigger* New(ShortcutTrigger* first, ShortcutTrigger* second);
		[LinkName("gtk_alternative_trigger_get_first")]
		public static extern ShortcutTrigger* GetFirst(AlternativeTrigger* self);
		[LinkName("gtk_alternative_trigger_get_second")]
		public static extern ShortcutTrigger* GetSecond(AlternativeTrigger* self);
	}
	[CRepr]
	public struct AnyFilter : MultiFilter
	{
		[LinkName("gtk_any_filter_new")]
		public static extern AnyFilter* New();
	}
	[CRepr]
	public struct AppChooserButton : Widget
	{
		[LinkName("gtk_app_chooser_button_new")]
		public static extern Widget* New(char8* content_type);
		[LinkName("gtk_app_chooser_button_append_custom_item")]
		public static extern void AppendCustomItem(AppChooserButton* self, char8* name, char8* label, Gio.Icon* icon);
		[LinkName("gtk_app_chooser_button_append_separator")]
		public static extern void AppendSeparator(AppChooserButton* self);
		[LinkName("gtk_app_chooser_button_get_heading")]
		public static extern char8* GetHeading(AppChooserButton* self);
		[LinkName("gtk_app_chooser_button_get_modal")]
		public static extern c_int GetModal(AppChooserButton* self);
		[LinkName("gtk_app_chooser_button_get_show_default_item")]
		public static extern c_int GetShowDefaultItem(AppChooserButton* self);
		[LinkName("gtk_app_chooser_button_get_show_dialog_item")]
		public static extern c_int GetShowDialogItem(AppChooserButton* self);
		[LinkName("gtk_app_chooser_button_set_active_custom_item")]
		public static extern void SetActiveCustomItem(AppChooserButton* self, char8* name);
		[LinkName("gtk_app_chooser_button_set_heading")]
		public static extern void SetHeading(AppChooserButton* self, char8* heading);
		[LinkName("gtk_app_chooser_button_set_modal")]
		public static extern void SetModal(AppChooserButton* self, c_int modal);
		[LinkName("gtk_app_chooser_button_set_show_default_item")]
		public static extern void SetShowDefaultItem(AppChooserButton* self, c_int setting);
		[LinkName("gtk_app_chooser_button_set_show_dialog_item")]
		public static extern void SetShowDialogItem(AppChooserButton* self, c_int setting);
		public function void ActivateFunc(AppChooserButton* self, void* user_data);
		public function void ChangedFunc(AppChooserButton* self, void* user_data);
		public function void CustomItemActivatedFunc(AppChooserButton* self, char8* item_name, void* user_data);
	}
	[CRepr]
	public struct AppChooserDialog : Dialog
	{
		[LinkName("gtk_app_chooser_dialog_new")]
		public static extern Widget* New(Window* parent, DialogFlags flags, Gio.File* file);
		[LinkName("gtk_app_chooser_dialog_new_for_content_type")]
		public static extern Widget* NewForContentType(Window* parent, DialogFlags flags, char8* content_type);
		[LinkName("gtk_app_chooser_dialog_get_heading")]
		public static extern char8* GetHeading(AppChooserDialog* self);
		[LinkName("gtk_app_chooser_dialog_get_widget")]
		public static extern Widget* GetWidget(AppChooserDialog* self);
		[LinkName("gtk_app_chooser_dialog_set_heading")]
		public static extern void SetHeading(AppChooserDialog* self, char8* heading);
	}
	[CRepr]
	public struct AppChooserWidget : Widget
	{
		[LinkName("gtk_app_chooser_widget_new")]
		public static extern Widget* New(char8* content_type);
		[LinkName("gtk_app_chooser_widget_get_default_text")]
		public static extern char8* GetDefaultText(AppChooserWidget* self);
		[LinkName("gtk_app_chooser_widget_get_show_all")]
		public static extern c_int GetShowAll(AppChooserWidget* self);
		[LinkName("gtk_app_chooser_widget_get_show_default")]
		public static extern c_int GetShowDefault(AppChooserWidget* self);
		[LinkName("gtk_app_chooser_widget_get_show_fallback")]
		public static extern c_int GetShowFallback(AppChooserWidget* self);
		[LinkName("gtk_app_chooser_widget_get_show_other")]
		public static extern c_int GetShowOther(AppChooserWidget* self);
		[LinkName("gtk_app_chooser_widget_get_show_recommended")]
		public static extern c_int GetShowRecommended(AppChooserWidget* self);
		[LinkName("gtk_app_chooser_widget_set_default_text")]
		public static extern void SetDefaultText(AppChooserWidget* self, char8* text);
		[LinkName("gtk_app_chooser_widget_set_show_all")]
		public static extern void SetShowAll(AppChooserWidget* self, c_int setting);
		[LinkName("gtk_app_chooser_widget_set_show_default")]
		public static extern void SetShowDefault(AppChooserWidget* self, c_int setting);
		[LinkName("gtk_app_chooser_widget_set_show_fallback")]
		public static extern void SetShowFallback(AppChooserWidget* self, c_int setting);
		[LinkName("gtk_app_chooser_widget_set_show_other")]
		public static extern void SetShowOther(AppChooserWidget* self, c_int setting);
		[LinkName("gtk_app_chooser_widget_set_show_recommended")]
		public static extern void SetShowRecommended(AppChooserWidget* self, c_int setting);
		public function void ApplicationActivatedFunc(AppChooserWidget* self, Gio.AppInfo application, void* user_data);
		public function void ApplicationSelectedFunc(AppChooserWidget* self, Gio.AppInfo application, void* user_data);
	}
	[CRepr]
	public struct Application : Gio.Application
	{
		[LinkName("gtk_application_new")]
		public static extern Application* New(char8* application_id, Gio.ApplicationFlags flags);
		[LinkName("gtk_application_add_window")]
		public static extern void AddWindow(Application* application, Window* window);
		[LinkName("gtk_application_get_accels_for_action")]
		public static extern char8** GetAccelsForAction(Application* application, char8* detailed_action_name);
		[LinkName("gtk_application_get_actions_for_accel")]
		public static extern char8** GetActionsForAccel(Application* application, char8* accel);
		[LinkName("gtk_application_get_active_window")]
		public static extern Window* GetActiveWindow(Application* application);
		[LinkName("gtk_application_get_menu_by_id")]
		public static extern Gio.Menu* GetMenuById(Application* application, char8* id);
		[LinkName("gtk_application_get_menubar")]
		public static extern Gio.MenuModel* GetMenubar(Application* application);
		[LinkName("gtk_application_get_window_by_id")]
		public static extern Window* GetWindowById(Application* application, c_uint id);
		[LinkName("gtk_application_get_windows")]
		public static extern GLib.List* GetWindows(Application* application);
		[LinkName("gtk_application_inhibit")]
		public static extern c_uint Inhibit(Application* application, Window* window, ApplicationInhibitFlags flags, char8* reason);
		[LinkName("gtk_application_list_action_descriptions")]
		public static extern char8** ListActionDescriptions(Application* application);
		[LinkName("gtk_application_remove_window")]
		public static extern void RemoveWindow(Application* application, Window* window);
		[LinkName("gtk_application_set_accels_for_action")]
		public static extern void SetAccelsForAction(Application* application, char8* detailed_action_name, char8** accels);
		[LinkName("gtk_application_set_menubar")]
		public static extern void SetMenubar(Application* application, Gio.MenuModel* menubar);
		[LinkName("gtk_application_uninhibit")]
		public static extern void Uninhibit(Application* application, c_uint cookie);
		public function void QueryEndFunc(Application* self, void* user_data);
		public function void WindowAddedFunc(Application* self, Window window, void* user_data);
		public function void WindowRemovedFunc(Application* self, Window window, void* user_data);
	}
	[CRepr]
	public struct ApplicationWindow : Window
	{
		[LinkName("gtk_application_window_new")]
		public static extern Widget* New(Application* application);
		[LinkName("gtk_application_window_get_help_overlay")]
		public static extern ShortcutsWindow* GetHelpOverlay(ApplicationWindow* window);
		[LinkName("gtk_application_window_get_id")]
		public static extern c_uint GetId(ApplicationWindow* window);
		[LinkName("gtk_application_window_get_show_menubar")]
		public static extern c_int GetShowMenubar(ApplicationWindow* window);
		[LinkName("gtk_application_window_set_help_overlay")]
		public static extern void SetHelpOverlay(ApplicationWindow* window, ShortcutsWindow* help_overlay);
		[LinkName("gtk_application_window_set_show_menubar")]
		public static extern void SetShowMenubar(ApplicationWindow* window, c_int show_menubar);
	}
	[CRepr]
	public struct AspectFrame : Widget
	{
		[LinkName("gtk_aspect_frame_new")]
		public static extern Widget* New(float xalign, float yalign, float ratio, c_int obey_child);
		[LinkName("gtk_aspect_frame_get_child")]
		public static extern Widget* GetChild(AspectFrame* self);
		[LinkName("gtk_aspect_frame_get_obey_child")]
		public static extern c_int GetObeyChild(AspectFrame* self);
		[LinkName("gtk_aspect_frame_get_ratio")]
		public static extern float GetRatio(AspectFrame* self);
		[LinkName("gtk_aspect_frame_get_xalign")]
		public static extern float GetXalign(AspectFrame* self);
		[LinkName("gtk_aspect_frame_get_yalign")]
		public static extern float GetYalign(AspectFrame* self);
		[LinkName("gtk_aspect_frame_set_child")]
		public static extern void SetChild(AspectFrame* self, Widget* child);
		[LinkName("gtk_aspect_frame_set_obey_child")]
		public static extern void SetObeyChild(AspectFrame* self, c_int obey_child);
		[LinkName("gtk_aspect_frame_set_ratio")]
		public static extern void SetRatio(AspectFrame* self, float ratio);
		[LinkName("gtk_aspect_frame_set_xalign")]
		public static extern void SetXalign(AspectFrame* self, float xalign);
		[LinkName("gtk_aspect_frame_set_yalign")]
		public static extern void SetYalign(AspectFrame* self, float yalign);
	}
	[CRepr]
	public struct Assistant : Window
	{
		[LinkName("gtk_assistant_new")]
		public static extern Widget* New();
		[LinkName("gtk_assistant_add_action_widget")]
		public static extern void AddActionWidget(Assistant* assistant, Widget* child);
		[LinkName("gtk_assistant_append_page")]
		public static extern c_int AppendPage(Assistant* assistant, Widget* page);
		[LinkName("gtk_assistant_commit")]
		public static extern void Commit(Assistant* assistant);
		[LinkName("gtk_assistant_get_current_page")]
		public static extern c_int GetCurrentPage(Assistant* assistant);
		[LinkName("gtk_assistant_get_n_pages")]
		public static extern c_int GetNPages(Assistant* assistant);
		[LinkName("gtk_assistant_get_nth_page")]
		public static extern Widget* GetNthPage(Assistant* assistant, c_int page_num);
		[LinkName("gtk_assistant_get_page")]
		public static extern AssistantPage* GetPage(Assistant* assistant, Widget* child);
		[LinkName("gtk_assistant_get_page_complete")]
		public static extern c_int GetPageComplete(Assistant* assistant, Widget* page);
		[LinkName("gtk_assistant_get_page_title")]
		public static extern char8* GetPageTitle(Assistant* assistant, Widget* page);
		[LinkName("gtk_assistant_get_page_type")]
		public static extern AssistantPageType GetPageType(Assistant* assistant, Widget* page);
		[LinkName("gtk_assistant_get_pages")]
		public static extern Gio.ListModel* GetPages(Assistant* assistant);
		[LinkName("gtk_assistant_insert_page")]
		public static extern c_int InsertPage(Assistant* assistant, Widget* page, c_int position);
		[LinkName("gtk_assistant_next_page")]
		public static extern void NextPage(Assistant* assistant);
		[LinkName("gtk_assistant_prepend_page")]
		public static extern c_int PrependPage(Assistant* assistant, Widget* page);
		[LinkName("gtk_assistant_previous_page")]
		public static extern void PreviousPage(Assistant* assistant);
		[LinkName("gtk_assistant_remove_action_widget")]
		public static extern void RemoveActionWidget(Assistant* assistant, Widget* child);
		[LinkName("gtk_assistant_remove_page")]
		public static extern void RemovePage(Assistant* assistant, c_int page_num);
		[LinkName("gtk_assistant_set_current_page")]
		public static extern void SetCurrentPage(Assistant* assistant, c_int page_num);
		[LinkName("gtk_assistant_set_forward_page_func")]
		public static extern void SetForwardPageFunc(Assistant* assistant, AssistantPageFunc page_func, void* data, GLib.DestroyNotify destroy);
		[LinkName("gtk_assistant_set_page_complete")]
		public static extern void SetPageComplete(Assistant* assistant, Widget* page, c_int complete);
		[LinkName("gtk_assistant_set_page_title")]
		public static extern void SetPageTitle(Assistant* assistant, Widget* page, char8* title);
		[LinkName("gtk_assistant_set_page_type")]
		public static extern void SetPageType(Assistant* assistant, Widget* page, AssistantPageType type);
		[LinkName("gtk_assistant_update_buttons_state")]
		public static extern void UpdateButtonsState(Assistant* assistant);
		public function void ApplyFunc(Assistant* self, void* user_data);
		public function void CancelFunc(Assistant* self, void* user_data);
		public function void CloseFunc(Assistant* self, void* user_data);
		public function void EscapeFunc(Assistant* self, void* user_data);
		public function void PrepareFunc(Assistant* self, Widget page, void* user_data);
	}
	[CRepr]
	public struct AssistantPage : GObject.Object
	{
		[LinkName("gtk_assistant_page_get_child")]
		public static extern Widget* GetChild(AssistantPage* page);
	}
	[CRepr]
	public struct BinLayout : LayoutManager
	{
		[LinkName("gtk_bin_layout_new")]
		public static extern LayoutManager* New();
	}
	[CRepr]
	public struct BookmarkList : GObject.Object
	{
		[LinkName("gtk_bookmark_list_new")]
		public static extern BookmarkList* New(char8* filename, char8* attributes);
		[LinkName("gtk_bookmark_list_get_attributes")]
		public static extern char8* GetAttributes(BookmarkList* self);
		[LinkName("gtk_bookmark_list_get_filename")]
		public static extern char8* GetFilename(BookmarkList* self);
		[LinkName("gtk_bookmark_list_get_io_priority")]
		public static extern c_int GetIoPriority(BookmarkList* self);
		[LinkName("gtk_bookmark_list_is_loading")]
		public static extern c_int IsLoading(BookmarkList* self);
		[LinkName("gtk_bookmark_list_set_attributes")]
		public static extern void SetAttributes(BookmarkList* self, char8* attributes);
		[LinkName("gtk_bookmark_list_set_io_priority")]
		public static extern void SetIoPriority(BookmarkList* self, c_int io_priority);
	}
	[CRepr]
	public struct BoolFilter : Filter
	{
		[LinkName("gtk_bool_filter_new")]
		public static extern BoolFilter* New(Expression* expression);
		[LinkName("gtk_bool_filter_get_expression")]
		public static extern Expression* GetExpression(BoolFilter* self);
		[LinkName("gtk_bool_filter_get_invert")]
		public static extern c_int GetInvert(BoolFilter* self);
		[LinkName("gtk_bool_filter_set_expression")]
		public static extern void SetExpression(BoolFilter* self, Expression* expression);
		[LinkName("gtk_bool_filter_set_invert")]
		public static extern void SetInvert(BoolFilter* self, c_int invert);
	}
	[CRepr]
	public struct Box : Widget
	{
		[LinkName("gtk_box_new")]
		public static extern Widget* New(Orientation orientation, c_int spacing);
		[LinkName("gtk_box_append")]
		public static extern void Append(Box* box_, Widget* child);
		[LinkName("gtk_box_get_baseline_child")]
		public static extern c_int GetBaselineChild(Box* box_);
		[LinkName("gtk_box_get_baseline_position")]
		public static extern BaselinePosition GetBaselinePosition(Box* box_);
		[LinkName("gtk_box_get_homogeneous")]
		public static extern c_int GetHomogeneous(Box* box_);
		[LinkName("gtk_box_get_spacing")]
		public static extern c_int GetSpacing(Box* box_);
		[LinkName("gtk_box_insert_child_after")]
		public static extern void InsertChildAfter(Box* box_, Widget* child, Widget* sibling);
		[LinkName("gtk_box_prepend")]
		public static extern void Prepend(Box* box_, Widget* child);
		[LinkName("gtk_box_remove")]
		public static extern void Remove(Box* box_, Widget* child);
		[LinkName("gtk_box_reorder_child_after")]
		public static extern void ReorderChildAfter(Box* box_, Widget* child, Widget* sibling);
		[LinkName("gtk_box_set_baseline_child")]
		public static extern void SetBaselineChild(Box* box_, c_int child);
		[LinkName("gtk_box_set_baseline_position")]
		public static extern void SetBaselinePosition(Box* box_, BaselinePosition position);
		[LinkName("gtk_box_set_homogeneous")]
		public static extern void SetHomogeneous(Box* box_, c_int homogeneous);
		[LinkName("gtk_box_set_spacing")]
		public static extern void SetSpacing(Box* box_, c_int spacing);
	}
	[CRepr]
	public struct BoxLayout : LayoutManager
	{
		[LinkName("gtk_box_layout_new")]
		public static extern LayoutManager* New(Orientation orientation);
		[LinkName("gtk_box_layout_get_baseline_child")]
		public static extern c_int GetBaselineChild(BoxLayout* box_layout);
		[LinkName("gtk_box_layout_get_baseline_position")]
		public static extern BaselinePosition GetBaselinePosition(BoxLayout* box_layout);
		[LinkName("gtk_box_layout_get_homogeneous")]
		public static extern c_int GetHomogeneous(BoxLayout* box_layout);
		[LinkName("gtk_box_layout_get_spacing")]
		public static extern c_uint GetSpacing(BoxLayout* box_layout);
		[LinkName("gtk_box_layout_set_baseline_child")]
		public static extern void SetBaselineChild(BoxLayout* box_layout, c_int child);
		[LinkName("gtk_box_layout_set_baseline_position")]
		public static extern void SetBaselinePosition(BoxLayout* box_layout, BaselinePosition position);
		[LinkName("gtk_box_layout_set_homogeneous")]
		public static extern void SetHomogeneous(BoxLayout* box_layout, c_int homogeneous);
		[LinkName("gtk_box_layout_set_spacing")]
		public static extern void SetSpacing(BoxLayout* box_layout, c_uint spacing);
	}
	[CRepr]
	public struct Builder : GObject.Object
	{
		[LinkName("gtk_builder_new")]
		public static extern Builder* New();
		[LinkName("gtk_builder_new_from_file")]
		public static extern Builder* NewFromFile(char8* filename);
		[LinkName("gtk_builder_new_from_resource")]
		public static extern Builder* NewFromResource(char8* resource_path);
		[LinkName("gtk_builder_new_from_string")]
		public static extern Builder* NewFromString(char8* string, c_long length);
		[LinkName("gtk_builder_add_from_file")]
		public static extern c_int AddFromFile(Builder* builder, char8* filename);
		[LinkName("gtk_builder_add_from_resource")]
		public static extern c_int AddFromResource(Builder* builder, char8* resource_path);
		[LinkName("gtk_builder_add_from_string")]
		public static extern c_int AddFromString(Builder* builder, char8* buffer, c_long length);
		[LinkName("gtk_builder_add_objects_from_file")]
		public static extern c_int AddObjectsFromFile(Builder* builder, char8* filename, char8** object_ids);
		[LinkName("gtk_builder_add_objects_from_resource")]
		public static extern c_int AddObjectsFromResource(Builder* builder, char8* resource_path, char8** object_ids);
		[LinkName("gtk_builder_add_objects_from_string")]
		public static extern c_int AddObjectsFromString(Builder* builder, char8* buffer, c_long length, char8** object_ids);
		[LinkName("gtk_builder_create_closure")]
		public static extern GObject.Closure* CreateClosure(Builder* builder, char8* function_name, BuilderClosureFlags flags, GObject.Object* object);
		[LinkName("gtk_builder_expose_object")]
		public static extern void ExposeObject(Builder* builder, char8* name, GObject.Object* object);
		[LinkName("gtk_builder_extend_with_template")]
		public static extern c_int ExtendWithTemplate(Builder* builder, GObject.Object* object, GLib.Type template_type, char8* buffer, c_long length);
		[LinkName("gtk_builder_get_current_object")]
		public static extern GObject.Object* GetCurrentObject(Builder* builder);
		[LinkName("gtk_builder_get_object")]
		public static extern GObject.Object* GetObject(Builder* builder, char8* name);
		[LinkName("gtk_builder_get_objects")]
		public static extern GLib.SList* GetObjects(Builder* builder);
		[LinkName("gtk_builder_get_scope")]
		public static extern BuilderScope* GetScope(Builder* builder);
		[LinkName("gtk_builder_get_translation_domain")]
		public static extern char8* GetTranslationDomain(Builder* builder);
		[LinkName("gtk_builder_get_type_from_name")]
		public static extern GLib.Type GetTypeFromName(Builder* builder, char8* type_name);
		[LinkName("gtk_builder_set_current_object")]
		public static extern void SetCurrentObject(Builder* builder, GObject.Object* current_object);
		[LinkName("gtk_builder_set_scope")]
		public static extern void SetScope(Builder* builder, BuilderScope* scope_);
		[LinkName("gtk_builder_set_translation_domain")]
		public static extern void SetTranslationDomain(Builder* builder, char8* domain);
		[LinkName("gtk_builder_value_from_string")]
		public static extern c_int ValueFromString(Builder* builder, GObject.ParamSpec* pspec, char8* string, GObject.Value* value);
		[LinkName("gtk_builder_value_from_string_type")]
		public static extern c_int ValueFromStringType(Builder* builder, GLib.Type type, char8* string, GObject.Value* value);
	}
	[CRepr]
	public struct BuilderCScope : GObject.Object
	{
		[LinkName("gtk_builder_cscope_new")]
		public static extern BuilderCScope* New();
		[LinkName("gtk_builder_cscope_add_callback_symbol")]
		public static extern void AddCallbackSymbol(BuilderCScope* self, char8* callback_name, GObject.Callback callback_symbol);
	}
	[CRepr]
	public struct BuilderListItemFactory : ListItemFactory
	{
		[LinkName("gtk_builder_list_item_factory_new_from_bytes")]
		public static extern ListItemFactory* NewFromBytes(BuilderScope* scope_, GLib.Bytes* bytes);
		[LinkName("gtk_builder_list_item_factory_new_from_resource")]
		public static extern ListItemFactory* NewFromResource(BuilderScope* scope_, char8* resource_path);
		[LinkName("gtk_builder_list_item_factory_get_bytes")]
		public static extern GLib.Bytes* GetBytes(BuilderListItemFactory* self);
		[LinkName("gtk_builder_list_item_factory_get_resource")]
		public static extern char8* GetResource(BuilderListItemFactory* self);
		[LinkName("gtk_builder_list_item_factory_get_scope")]
		public static extern BuilderScope* GetScope(BuilderListItemFactory* self);
	}
	[CRepr]
	public struct Button : Widget
	{
		[LinkName("gtk_button_new")]
		public static extern Widget* New();
		[LinkName("gtk_button_new_from_icon_name")]
		public static extern Widget* NewFromIconName(char8* icon_name);
		[LinkName("gtk_button_new_with_label")]
		public static extern Widget* NewWithLabel(char8* label);
		[LinkName("gtk_button_new_with_mnemonic")]
		public static extern Widget* NewWithMnemonic(char8* label);
		[LinkName("gtk_button_get_can_shrink")]
		public static extern c_int GetCanShrink(Button* button);
		[LinkName("gtk_button_get_child")]
		public static extern Widget* GetChild(Button* button);
		[LinkName("gtk_button_get_has_frame")]
		public static extern c_int GetHasFrame(Button* button);
		[LinkName("gtk_button_get_icon_name")]
		public static extern char8* GetIconName(Button* button);
		[LinkName("gtk_button_get_label")]
		public static extern char8* GetLabel(Button* button);
		[LinkName("gtk_button_get_use_underline")]
		public static extern c_int GetUseUnderline(Button* button);
		[LinkName("gtk_button_set_can_shrink")]
		public static extern void SetCanShrink(Button* button, c_int can_shrink);
		[LinkName("gtk_button_set_child")]
		public static extern void SetChild(Button* button, Widget* child);
		[LinkName("gtk_button_set_has_frame")]
		public static extern void SetHasFrame(Button* button, c_int has_frame);
		[LinkName("gtk_button_set_icon_name")]
		public static extern void SetIconName(Button* button, char8* icon_name);
		[LinkName("gtk_button_set_label")]
		public static extern void SetLabel(Button* button, char8* label);
		[LinkName("gtk_button_set_use_underline")]
		public static extern void SetUseUnderline(Button* button, c_int use_underline);
		public function void ActivateFunc(Button* self, void* user_data);
		public function void ClickedFunc(Button* self, void* user_data);
	}
	[CRepr]
	public struct CClosureExpression : Expression
	{
		[LinkName("gtk_cclosure_expression_new")]
		public static extern CClosureExpression* New(GLib.Type value_type, GObject.ClosureMarshal marshal, c_uint n_params, Expression** params_, GObject.Callback callback_func, void* user_data, GObject.ClosureNotify user_destroy);
	}
	[CRepr]
	public struct Calendar : Widget
	{
		[LinkName("gtk_calendar_new")]
		public static extern Widget* New();
		[LinkName("gtk_calendar_clear_marks")]
		public static extern void ClearMarks(Calendar* calendar);
		[LinkName("gtk_calendar_get_date")]
		public static extern GLib.DateTime* GetDate(Calendar* self);
		[LinkName("gtk_calendar_get_day_is_marked")]
		public static extern c_int GetDayIsMarked(Calendar* calendar, c_uint day);
		[LinkName("gtk_calendar_get_show_day_names")]
		public static extern c_int GetShowDayNames(Calendar* self);
		[LinkName("gtk_calendar_get_show_heading")]
		public static extern c_int GetShowHeading(Calendar* self);
		[LinkName("gtk_calendar_get_show_week_numbers")]
		public static extern c_int GetShowWeekNumbers(Calendar* self);
		[LinkName("gtk_calendar_mark_day")]
		public static extern void MarkDay(Calendar* calendar, c_uint day);
		[LinkName("gtk_calendar_select_day")]
		public static extern void SelectDay(Calendar* self, GLib.DateTime* date);
		[LinkName("gtk_calendar_set_show_day_names")]
		public static extern void SetShowDayNames(Calendar* self, c_int value);
		[LinkName("gtk_calendar_set_show_heading")]
		public static extern void SetShowHeading(Calendar* self, c_int value);
		[LinkName("gtk_calendar_set_show_week_numbers")]
		public static extern void SetShowWeekNumbers(Calendar* self, c_int value);
		[LinkName("gtk_calendar_unmark_day")]
		public static extern void UnmarkDay(Calendar* calendar, c_uint day);
		public function void DaySelectedFunc(Calendar* self, void* user_data);
		public function void NextMonthFunc(Calendar* self, void* user_data);
		public function void NextYearFunc(Calendar* self, void* user_data);
		public function void PrevMonthFunc(Calendar* self, void* user_data);
		public function void PrevYearFunc(Calendar* self, void* user_data);
	}
	[CRepr]
	public struct CallbackAction : ShortcutAction
	{
		[LinkName("gtk_callback_action_new")]
		public static extern CallbackAction* New(ShortcutFunc callback, void* data, GLib.DestroyNotify destroy);
	}
	[CRepr]
	public struct CellArea : GObject.InitiallyUnowned
	{
		[LinkName("gtk_cell_area_activate")]
		public static extern c_int Activate(CellArea* area, CellAreaContext* context, Widget* widget, Gdk.Rectangle* cell_area, CellRendererState flags, c_int edit_only);
		[LinkName("gtk_cell_area_activate_cell")]
		public static extern c_int ActivateCell(CellArea* area, Widget* widget, CellRenderer* renderer, Gdk.Event* event, Gdk.Rectangle* cell_area, CellRendererState flags);
		[LinkName("gtk_cell_area_add")]
		public static extern void Add(CellArea* area, CellRenderer* renderer);
		[LinkName("gtk_cell_area_add_focus_sibling")]
		public static extern void AddFocusSibling(CellArea* area, CellRenderer* renderer, CellRenderer* sibling);
		[LinkName("gtk_cell_area_apply_attributes")]
		public static extern void ApplyAttributes(CellArea* area, TreeModel* tree_model, TreeIter* iter, c_int is_expander, c_int is_expanded);
		[LinkName("gtk_cell_area_attribute_connect")]
		public static extern void AttributeConnect(CellArea* area, CellRenderer* renderer, char8* attribute, c_int column);
		[LinkName("gtk_cell_area_attribute_disconnect")]
		public static extern void AttributeDisconnect(CellArea* area, CellRenderer* renderer, char8* attribute);
		[LinkName("gtk_cell_area_attribute_get_column")]
		public static extern c_int AttributeGetColumn(CellArea* area, CellRenderer* renderer, char8* attribute);
		[LinkName("gtk_cell_area_cell_get_property")]
		public static extern void CellGetProperty(CellArea* area, CellRenderer* renderer, char8* property_name, GObject.Value* value);
		[LinkName("gtk_cell_area_cell_set_property")]
		public static extern void CellSetProperty(CellArea* area, CellRenderer* renderer, char8* property_name, GObject.Value* value);
		[LinkName("gtk_cell_area_copy_context")]
		public static extern CellAreaContext* CopyContext(CellArea* area, CellAreaContext* context);
		[LinkName("gtk_cell_area_create_context")]
		public static extern CellAreaContext* CreateContext(CellArea* area);
		[LinkName("gtk_cell_area_event")]
		public static extern c_int Event(CellArea* area, CellAreaContext* context, Widget* widget, Gdk.Event* event, Gdk.Rectangle* cell_area, CellRendererState flags);
		[LinkName("gtk_cell_area_focus")]
		public static extern c_int Focus(CellArea* area, DirectionType direction);
		[LinkName("gtk_cell_area_foreach")]
		public static extern void Foreach(CellArea* area, CellCallback callback, void* callback_data);
		[LinkName("gtk_cell_area_foreach_alloc")]
		public static extern void ForeachAlloc(CellArea* area, CellAreaContext* context, Widget* widget, Gdk.Rectangle* cell_area, Gdk.Rectangle* background_area, CellAllocCallback callback, void* callback_data);
		[LinkName("gtk_cell_area_get_cell_allocation")]
		public static extern void GetCellAllocation(CellArea* area, CellAreaContext* context, Widget* widget, CellRenderer* renderer, Gdk.Rectangle* cell_area, Gdk.Rectangle* allocation);
		[LinkName("gtk_cell_area_get_cell_at_position")]
		public static extern CellRenderer* GetCellAtPosition(CellArea* area, CellAreaContext* context, Widget* widget, Gdk.Rectangle* cell_area, c_int x, c_int y, Gdk.Rectangle* alloc_area);
		[LinkName("gtk_cell_area_get_current_path_string")]
		public static extern char8* GetCurrentPathString(CellArea* area);
		[LinkName("gtk_cell_area_get_edit_widget")]
		public static extern CellEditable* GetEditWidget(CellArea* area);
		[LinkName("gtk_cell_area_get_edited_cell")]
		public static extern CellRenderer* GetEditedCell(CellArea* area);
		[LinkName("gtk_cell_area_get_focus_cell")]
		public static extern CellRenderer* GetFocusCell(CellArea* area);
		[LinkName("gtk_cell_area_get_focus_from_sibling")]
		public static extern CellRenderer* GetFocusFromSibling(CellArea* area, CellRenderer* renderer);
		[LinkName("gtk_cell_area_get_focus_siblings")]
		public static extern GLib.List* GetFocusSiblings(CellArea* area, CellRenderer* renderer);
		[LinkName("gtk_cell_area_get_preferred_height")]
		public static extern void GetPreferredHeight(CellArea* area, CellAreaContext* context, Widget* widget, c_int* minimum_height, c_int* natural_height);
		[LinkName("gtk_cell_area_get_preferred_height_for_width")]
		public static extern void GetPreferredHeightForWidth(CellArea* area, CellAreaContext* context, Widget* widget, c_int width, c_int* minimum_height, c_int* natural_height);
		[LinkName("gtk_cell_area_get_preferred_width")]
		public static extern void GetPreferredWidth(CellArea* area, CellAreaContext* context, Widget* widget, c_int* minimum_width, c_int* natural_width);
		[LinkName("gtk_cell_area_get_preferred_width_for_height")]
		public static extern void GetPreferredWidthForHeight(CellArea* area, CellAreaContext* context, Widget* widget, c_int height, c_int* minimum_width, c_int* natural_width);
		[LinkName("gtk_cell_area_get_request_mode")]
		public static extern SizeRequestMode GetRequestMode(CellArea* area);
		[LinkName("gtk_cell_area_has_renderer")]
		public static extern c_int HasRenderer(CellArea* area, CellRenderer* renderer);
		[LinkName("gtk_cell_area_inner_cell_area")]
		public static extern void InnerCellArea(CellArea* area, Widget* widget, Gdk.Rectangle* cell_area, Gdk.Rectangle* inner_area);
		[LinkName("gtk_cell_area_is_activatable")]
		public static extern c_int IsActivatable(CellArea* area);
		[LinkName("gtk_cell_area_is_focus_sibling")]
		public static extern c_int IsFocusSibling(CellArea* area, CellRenderer* renderer, CellRenderer* sibling);
		[LinkName("gtk_cell_area_remove")]
		public static extern void Remove(CellArea* area, CellRenderer* renderer);
		[LinkName("gtk_cell_area_remove_focus_sibling")]
		public static extern void RemoveFocusSibling(CellArea* area, CellRenderer* renderer, CellRenderer* sibling);
		[LinkName("gtk_cell_area_request_renderer")]
		public static extern void RequestRenderer(CellArea* area, CellRenderer* renderer, Orientation orientation, Widget* widget, c_int for_size, c_int* minimum_size, c_int* natural_size);
		[LinkName("gtk_cell_area_set_focus_cell")]
		public static extern void SetFocusCell(CellArea* area, CellRenderer* renderer);
		[LinkName("gtk_cell_area_snapshot")]
		public static extern void Snapshot(CellArea* area, CellAreaContext* context, Widget* widget, Snapshot* snapshot, Gdk.Rectangle* background_area, Gdk.Rectangle* cell_area, CellRendererState flags, c_int paint_focus);
		[LinkName("gtk_cell_area_stop_editing")]
		public static extern void StopEditing(CellArea* area, c_int canceled);
		public function void AddEditableFunc(CellArea* self, CellRenderer renderer, CellEditable editable, Gdk.Rectangle cell_area, char8* path, void* user_data);
		public function void ApplyAttributesFunc(CellArea* self, TreeModel model, TreeIter iter, c_int is_expander, c_int is_expanded, void* user_data);
		public function void FocusChangedFunc(CellArea* self, CellRenderer renderer, char8* path, void* user_data);
		public function void RemoveEditableFunc(CellArea* self, CellRenderer renderer, CellEditable editable, void* user_data);
	}
	[CRepr]
	public struct CellAreaBox : CellArea
	{
		[LinkName("gtk_cell_area_box_new")]
		public static extern CellArea* New();
		[LinkName("gtk_cell_area_box_get_spacing")]
		public static extern c_int GetSpacing(CellAreaBox* box_);
		[LinkName("gtk_cell_area_box_pack_end")]
		public static extern void PackEnd(CellAreaBox* box_, CellRenderer* renderer, c_int expand, c_int align, c_int fixed_);
		[LinkName("gtk_cell_area_box_pack_start")]
		public static extern void PackStart(CellAreaBox* box_, CellRenderer* renderer, c_int expand, c_int align, c_int fixed_);
		[LinkName("gtk_cell_area_box_set_spacing")]
		public static extern void SetSpacing(CellAreaBox* box_, c_int spacing);
	}
	[CRepr]
	public struct CellAreaContext : GObject.Object
	{
		[LinkName("gtk_cell_area_context_allocate")]
		public static extern void Allocate(CellAreaContext* context, c_int width, c_int height);
		[LinkName("gtk_cell_area_context_get_allocation")]
		public static extern void GetAllocation(CellAreaContext* context, c_int* width, c_int* height);
		[LinkName("gtk_cell_area_context_get_area")]
		public static extern CellArea* GetArea(CellAreaContext* context);
		[LinkName("gtk_cell_area_context_get_preferred_height")]
		public static extern void GetPreferredHeight(CellAreaContext* context, c_int* minimum_height, c_int* natural_height);
		[LinkName("gtk_cell_area_context_get_preferred_height_for_width")]
		public static extern void GetPreferredHeightForWidth(CellAreaContext* context, c_int width, c_int* minimum_height, c_int* natural_height);
		[LinkName("gtk_cell_area_context_get_preferred_width")]
		public static extern void GetPreferredWidth(CellAreaContext* context, c_int* minimum_width, c_int* natural_width);
		[LinkName("gtk_cell_area_context_get_preferred_width_for_height")]
		public static extern void GetPreferredWidthForHeight(CellAreaContext* context, c_int height, c_int* minimum_width, c_int* natural_width);
		[LinkName("gtk_cell_area_context_push_preferred_height")]
		public static extern void PushPreferredHeight(CellAreaContext* context, c_int minimum_height, c_int natural_height);
		[LinkName("gtk_cell_area_context_push_preferred_width")]
		public static extern void PushPreferredWidth(CellAreaContext* context, c_int minimum_width, c_int natural_width);
		[LinkName("gtk_cell_area_context_reset")]
		public static extern void Reset(CellAreaContext* context);
	}
	[CRepr]
	public struct CellRenderer : GObject.InitiallyUnowned
	{
		[LinkName("gtk_cell_renderer_activate")]
		public static extern c_int Activate(CellRenderer* cell, Gdk.Event* event, Widget* widget, char8* path, Gdk.Rectangle* background_area, Gdk.Rectangle* cell_area, CellRendererState flags);
		[LinkName("gtk_cell_renderer_get_aligned_area")]
		public static extern void GetAlignedArea(CellRenderer* cell, Widget* widget, CellRendererState flags, Gdk.Rectangle* cell_area, Gdk.Rectangle* aligned_area);
		[LinkName("gtk_cell_renderer_get_alignment")]
		public static extern void GetAlignment(CellRenderer* cell, float* xalign, float* yalign);
		[LinkName("gtk_cell_renderer_get_fixed_size")]
		public static extern void GetFixedSize(CellRenderer* cell, c_int* width, c_int* height);
		[LinkName("gtk_cell_renderer_get_is_expanded")]
		public static extern c_int GetIsExpanded(CellRenderer* cell);
		[LinkName("gtk_cell_renderer_get_is_expander")]
		public static extern c_int GetIsExpander(CellRenderer* cell);
		[LinkName("gtk_cell_renderer_get_padding")]
		public static extern void GetPadding(CellRenderer* cell, c_int* xpad, c_int* ypad);
		[LinkName("gtk_cell_renderer_get_preferred_height")]
		public static extern void GetPreferredHeight(CellRenderer* cell, Widget* widget, c_int* minimum_size, c_int* natural_size);
		[LinkName("gtk_cell_renderer_get_preferred_height_for_width")]
		public static extern void GetPreferredHeightForWidth(CellRenderer* cell, Widget* widget, c_int width, c_int* minimum_height, c_int* natural_height);
		[LinkName("gtk_cell_renderer_get_preferred_size")]
		public static extern void GetPreferredSize(CellRenderer* cell, Widget* widget, Requisition* minimum_size, Requisition* natural_size);
		[LinkName("gtk_cell_renderer_get_preferred_width")]
		public static extern void GetPreferredWidth(CellRenderer* cell, Widget* widget, c_int* minimum_size, c_int* natural_size);
		[LinkName("gtk_cell_renderer_get_preferred_width_for_height")]
		public static extern void GetPreferredWidthForHeight(CellRenderer* cell, Widget* widget, c_int height, c_int* minimum_width, c_int* natural_width);
		[LinkName("gtk_cell_renderer_get_request_mode")]
		public static extern SizeRequestMode GetRequestMode(CellRenderer* cell);
		[LinkName("gtk_cell_renderer_get_sensitive")]
		public static extern c_int GetSensitive(CellRenderer* cell);
		[LinkName("gtk_cell_renderer_get_state")]
		public static extern StateFlags GetState(CellRenderer* cell, Widget* widget, CellRendererState cell_state);
		[LinkName("gtk_cell_renderer_get_visible")]
		public static extern c_int GetVisible(CellRenderer* cell);
		[LinkName("gtk_cell_renderer_is_activatable")]
		public static extern c_int IsActivatable(CellRenderer* cell);
		[LinkName("gtk_cell_renderer_set_alignment")]
		public static extern void SetAlignment(CellRenderer* cell, float xalign, float yalign);
		[LinkName("gtk_cell_renderer_set_fixed_size")]
		public static extern void SetFixedSize(CellRenderer* cell, c_int width, c_int height);
		[LinkName("gtk_cell_renderer_set_is_expanded")]
		public static extern void SetIsExpanded(CellRenderer* cell, c_int is_expanded);
		[LinkName("gtk_cell_renderer_set_is_expander")]
		public static extern void SetIsExpander(CellRenderer* cell, c_int is_expander);
		[LinkName("gtk_cell_renderer_set_padding")]
		public static extern void SetPadding(CellRenderer* cell, c_int xpad, c_int ypad);
		[LinkName("gtk_cell_renderer_set_sensitive")]
		public static extern void SetSensitive(CellRenderer* cell, c_int sensitive);
		[LinkName("gtk_cell_renderer_set_visible")]
		public static extern void SetVisible(CellRenderer* cell, c_int visible);
		[LinkName("gtk_cell_renderer_snapshot")]
		public static extern void Snapshot(CellRenderer* cell, Snapshot* snapshot, Widget* widget, Gdk.Rectangle* background_area, Gdk.Rectangle* cell_area, CellRendererState flags);
		[LinkName("gtk_cell_renderer_start_editing")]
		public static extern CellEditable* StartEditing(CellRenderer* cell, Gdk.Event* event, Widget* widget, char8* path, Gdk.Rectangle* background_area, Gdk.Rectangle* cell_area, CellRendererState flags);
		[LinkName("gtk_cell_renderer_stop_editing")]
		public static extern void StopEditing(CellRenderer* cell, c_int canceled);
		public function void EditingCanceledFunc(CellRenderer* self, void* user_data);
		public function void EditingStartedFunc(CellRenderer* self, CellEditable editable, char8* path, void* user_data);
	}
	[CRepr]
	public struct CellRendererAccel : CellRendererText
	{
		[LinkName("gtk_cell_renderer_accel_new")]
		public static extern CellRenderer* New();
		public function void AccelClearedFunc(CellRendererAccel* self, char8* path_string, void* user_data);
		public function void AccelEditedFunc(CellRendererAccel* self, char8* path_string, c_uint accel_key, Gdk.ModifierType accel_mods, c_uint hardware_keycode, void* user_data);
	}
	[CRepr]
	public struct CellRendererCombo : CellRendererText
	{
		[LinkName("gtk_cell_renderer_combo_new")]
		public static extern CellRenderer* New();
		public function void ChangedFunc(CellRendererCombo* self, char8* path_string, TreeIter new_iter, void* user_data);
	}
	[CRepr]
	public struct CellRendererPixbuf : CellRenderer
	{
		[LinkName("gtk_cell_renderer_pixbuf_new")]
		public static extern CellRenderer* New();
	}
	[CRepr]
	public struct CellRendererProgress : CellRenderer
	{
		[LinkName("gtk_cell_renderer_progress_new")]
		public static extern CellRenderer* New();
	}
	[CRepr]
	public struct CellRendererSpin : CellRendererText
	{
		[LinkName("gtk_cell_renderer_spin_new")]
		public static extern CellRenderer* New();
	}
	[CRepr]
	public struct CellRendererSpinner : CellRenderer
	{
		[LinkName("gtk_cell_renderer_spinner_new")]
		public static extern CellRenderer* New();
	}
	[CRepr]
	public struct CellRendererText : CellRenderer
	{
		[LinkName("gtk_cell_renderer_text_new")]
		public static extern CellRenderer* New();
		[LinkName("gtk_cell_renderer_text_set_fixed_height_from_font")]
		public static extern void SetFixedHeightFromFont(CellRendererText* renderer, c_int number_of_rows);
		public function void EditedFunc(CellRendererText* self, char8* path, char8* new_text, void* user_data);
	}
	[CRepr]
	public struct CellRendererToggle : CellRenderer
	{
		[LinkName("gtk_cell_renderer_toggle_new")]
		public static extern CellRenderer* New();
		[LinkName("gtk_cell_renderer_toggle_get_activatable")]
		public static extern c_int GetActivatable(CellRendererToggle* toggle);
		[LinkName("gtk_cell_renderer_toggle_get_active")]
		public static extern c_int GetActive(CellRendererToggle* toggle);
		[LinkName("gtk_cell_renderer_toggle_get_radio")]
		public static extern c_int GetRadio(CellRendererToggle* toggle);
		[LinkName("gtk_cell_renderer_toggle_set_activatable")]
		public static extern void SetActivatable(CellRendererToggle* toggle, c_int setting);
		[LinkName("gtk_cell_renderer_toggle_set_active")]
		public static extern void SetActive(CellRendererToggle* toggle, c_int setting);
		[LinkName("gtk_cell_renderer_toggle_set_radio")]
		public static extern void SetRadio(CellRendererToggle* toggle, c_int radio);
		public function void ToggledFunc(CellRendererToggle* self, char8* path, void* user_data);
	}
	[CRepr]
	public struct CellView : Widget
	{
		[LinkName("gtk_cell_view_new")]
		public static extern Widget* New();
		[LinkName("gtk_cell_view_new_with_context")]
		public static extern Widget* NewWithContext(CellArea* area, CellAreaContext* context);
		[LinkName("gtk_cell_view_new_with_markup")]
		public static extern Widget* NewWithMarkup(char8* markup);
		[LinkName("gtk_cell_view_new_with_text")]
		public static extern Widget* NewWithText(char8* text);
		[LinkName("gtk_cell_view_new_with_texture")]
		public static extern Widget* NewWithTexture(Gdk.Texture* texture);
		[LinkName("gtk_cell_view_get_displayed_row")]
		public static extern TreePath* GetDisplayedRow(CellView* cell_view);
		[LinkName("gtk_cell_view_get_draw_sensitive")]
		public static extern c_int GetDrawSensitive(CellView* cell_view);
		[LinkName("gtk_cell_view_get_fit_model")]
		public static extern c_int GetFitModel(CellView* cell_view);
		[LinkName("gtk_cell_view_get_model")]
		public static extern TreeModel* GetModel(CellView* cell_view);
		[LinkName("gtk_cell_view_set_displayed_row")]
		public static extern void SetDisplayedRow(CellView* cell_view, TreePath* path);
		[LinkName("gtk_cell_view_set_draw_sensitive")]
		public static extern void SetDrawSensitive(CellView* cell_view, c_int draw_sensitive);
		[LinkName("gtk_cell_view_set_fit_model")]
		public static extern void SetFitModel(CellView* cell_view, c_int fit_model);
		[LinkName("gtk_cell_view_set_model")]
		public static extern void SetModel(CellView* cell_view, TreeModel* model);
	}
	[CRepr]
	public struct CenterBox : Widget
	{
		[LinkName("gtk_center_box_new")]
		public static extern Widget* New();
		[LinkName("gtk_center_box_get_baseline_position")]
		public static extern BaselinePosition GetBaselinePosition(CenterBox* self);
		[LinkName("gtk_center_box_get_center_widget")]
		public static extern Widget* GetCenterWidget(CenterBox* self);
		[LinkName("gtk_center_box_get_end_widget")]
		public static extern Widget* GetEndWidget(CenterBox* self);
		[LinkName("gtk_center_box_get_shrink_center_last")]
		public static extern c_int GetShrinkCenterLast(CenterBox* self);
		[LinkName("gtk_center_box_get_start_widget")]
		public static extern Widget* GetStartWidget(CenterBox* self);
		[LinkName("gtk_center_box_set_baseline_position")]
		public static extern void SetBaselinePosition(CenterBox* self, BaselinePosition position);
		[LinkName("gtk_center_box_set_center_widget")]
		public static extern void SetCenterWidget(CenterBox* self, Widget* child);
		[LinkName("gtk_center_box_set_end_widget")]
		public static extern void SetEndWidget(CenterBox* self, Widget* child);
		[LinkName("gtk_center_box_set_shrink_center_last")]
		public static extern void SetShrinkCenterLast(CenterBox* self, c_int shrink_center_last);
		[LinkName("gtk_center_box_set_start_widget")]
		public static extern void SetStartWidget(CenterBox* self, Widget* child);
	}
	[CRepr]
	public struct CenterLayout : LayoutManager
	{
		[LinkName("gtk_center_layout_new")]
		public static extern LayoutManager* New();
		[LinkName("gtk_center_layout_get_baseline_position")]
		public static extern BaselinePosition GetBaselinePosition(CenterLayout* self);
		[LinkName("gtk_center_layout_get_center_widget")]
		public static extern Widget* GetCenterWidget(CenterLayout* self);
		[LinkName("gtk_center_layout_get_end_widget")]
		public static extern Widget* GetEndWidget(CenterLayout* self);
		[LinkName("gtk_center_layout_get_orientation")]
		public static extern Orientation GetOrientation(CenterLayout* self);
		[LinkName("gtk_center_layout_get_shrink_center_last")]
		public static extern c_int GetShrinkCenterLast(CenterLayout* self);
		[LinkName("gtk_center_layout_get_start_widget")]
		public static extern Widget* GetStartWidget(CenterLayout* self);
		[LinkName("gtk_center_layout_set_baseline_position")]
		public static extern void SetBaselinePosition(CenterLayout* self, BaselinePosition baseline_position);
		[LinkName("gtk_center_layout_set_center_widget")]
		public static extern void SetCenterWidget(CenterLayout* self, Widget* widget);
		[LinkName("gtk_center_layout_set_end_widget")]
		public static extern void SetEndWidget(CenterLayout* self, Widget* widget);
		[LinkName("gtk_center_layout_set_orientation")]
		public static extern void SetOrientation(CenterLayout* self, Orientation orientation);
		[LinkName("gtk_center_layout_set_shrink_center_last")]
		public static extern void SetShrinkCenterLast(CenterLayout* self, c_int shrink_center_last);
		[LinkName("gtk_center_layout_set_start_widget")]
		public static extern void SetStartWidget(CenterLayout* self, Widget* widget);
	}
	[CRepr]
	public struct CheckButton : Widget
	{
		[LinkName("gtk_check_button_new")]
		public static extern Widget* New();
		[LinkName("gtk_check_button_new_with_label")]
		public static extern Widget* NewWithLabel(char8* label);
		[LinkName("gtk_check_button_new_with_mnemonic")]
		public static extern Widget* NewWithMnemonic(char8* label);
		[LinkName("gtk_check_button_get_active")]
		public static extern c_int GetActive(CheckButton* self);
		[LinkName("gtk_check_button_get_child")]
		public static extern Widget* GetChild(CheckButton* button);
		[LinkName("gtk_check_button_get_inconsistent")]
		public static extern c_int GetInconsistent(CheckButton* check_button);
		[LinkName("gtk_check_button_get_label")]
		public static extern char8* GetLabel(CheckButton* self);
		[LinkName("gtk_check_button_get_use_underline")]
		public static extern c_int GetUseUnderline(CheckButton* self);
		[LinkName("gtk_check_button_set_active")]
		public static extern void SetActive(CheckButton* self, c_int setting);
		[LinkName("gtk_check_button_set_child")]
		public static extern void SetChild(CheckButton* button, Widget* child);
		[LinkName("gtk_check_button_set_group")]
		public static extern void SetGroup(CheckButton* self, CheckButton* group);
		[LinkName("gtk_check_button_set_inconsistent")]
		public static extern void SetInconsistent(CheckButton* check_button, c_int inconsistent);
		[LinkName("gtk_check_button_set_label")]
		public static extern void SetLabel(CheckButton* self, char8* label);
		[LinkName("gtk_check_button_set_use_underline")]
		public static extern void SetUseUnderline(CheckButton* self, c_int setting);
		public function void ActivateFunc(CheckButton* self, void* user_data);
		public function void ToggledFunc(CheckButton* self, void* user_data);
	}
	[CRepr]
	public struct ClosureExpression : Expression
	{
		[LinkName("gtk_closure_expression_new")]
		public static extern ClosureExpression* New(GLib.Type value_type, GObject.Closure* closure, c_uint n_params, Expression** params_);
	}
	[CRepr]
	public struct ColorButton : Widget
	{
		[LinkName("gtk_color_button_new")]
		public static extern Widget* New();
		[LinkName("gtk_color_button_new_with_rgba")]
		public static extern Widget* NewWithRgba(Gdk.RGBA* rgba);
		[LinkName("gtk_color_button_get_modal")]
		public static extern c_int GetModal(ColorButton* button);
		[LinkName("gtk_color_button_get_title")]
		public static extern char8* GetTitle(ColorButton* button);
		[LinkName("gtk_color_button_set_modal")]
		public static extern void SetModal(ColorButton* button, c_int modal);
		[LinkName("gtk_color_button_set_title")]
		public static extern void SetTitle(ColorButton* button, char8* title);
		public function void ActivateFunc(ColorButton* self, void* user_data);
		public function void ColorSetFunc(ColorButton* self, void* user_data);
	}
	[CRepr]
	public struct ColorChooserDialog : Dialog
	{
		[LinkName("gtk_color_chooser_dialog_new")]
		public static extern Widget* New(char8* title, Window* parent);
	}
	[CRepr]
	public struct ColorChooserWidget : Widget
	{
		[LinkName("gtk_color_chooser_widget_new")]
		public static extern Widget* New();
	}
	[CRepr]
	public struct ColorDialog : GObject.Object
	{
		[LinkName("gtk_color_dialog_new")]
		public static extern ColorDialog* New();
		[LinkName("gtk_color_dialog_choose_rgba")]
		public static extern void ChooseRgba(ColorDialog* self, Window* parent, Gdk.RGBA* initial_color, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_color_dialog_choose_rgba_finish")]
		public static extern Gdk.RGBA* ChooseRgbaFinish(ColorDialog* self, Gio.AsyncResult* result);
		[LinkName("gtk_color_dialog_get_modal")]
		public static extern c_int GetModal(ColorDialog* self);
		[LinkName("gtk_color_dialog_get_title")]
		public static extern char8* GetTitle(ColorDialog* self);
		[LinkName("gtk_color_dialog_get_with_alpha")]
		public static extern c_int GetWithAlpha(ColorDialog* self);
		[LinkName("gtk_color_dialog_set_modal")]
		public static extern void SetModal(ColorDialog* self, c_int modal);
		[LinkName("gtk_color_dialog_set_title")]
		public static extern void SetTitle(ColorDialog* self, char8* title);
		[LinkName("gtk_color_dialog_set_with_alpha")]
		public static extern void SetWithAlpha(ColorDialog* self, c_int with_alpha);
	}
	[CRepr]
	public struct ColorDialogButton : Widget
	{
		[LinkName("gtk_color_dialog_button_new")]
		public static extern Widget* New(ColorDialog* dialog);
		[LinkName("gtk_color_dialog_button_get_dialog")]
		public static extern ColorDialog* GetDialog(ColorDialogButton* self);
		[LinkName("gtk_color_dialog_button_get_rgba")]
		public static extern Gdk.RGBA* GetRgba(ColorDialogButton* self);
		[LinkName("gtk_color_dialog_button_set_dialog")]
		public static extern void SetDialog(ColorDialogButton* self, ColorDialog* dialog);
		[LinkName("gtk_color_dialog_button_set_rgba")]
		public static extern void SetRgba(ColorDialogButton* self, Gdk.RGBA* color);
	}
	[CRepr]
	public struct ColumnView : Widget
	{
		[LinkName("gtk_column_view_new")]
		public static extern Widget* New(SelectionModel* model);
		[LinkName("gtk_column_view_append_column")]
		public static extern void AppendColumn(ColumnView* self, ColumnViewColumn* column);
		[LinkName("gtk_column_view_get_columns")]
		public static extern Gio.ListModel* GetColumns(ColumnView* self);
		[LinkName("gtk_column_view_get_enable_rubberband")]
		public static extern c_int GetEnableRubberband(ColumnView* self);
		[LinkName("gtk_column_view_get_header_factory")]
		public static extern ListItemFactory* GetHeaderFactory(ColumnView* self);
		[LinkName("gtk_column_view_get_model")]
		public static extern SelectionModel* GetModel(ColumnView* self);
		[LinkName("gtk_column_view_get_reorderable")]
		public static extern c_int GetReorderable(ColumnView* self);
		[LinkName("gtk_column_view_get_row_factory")]
		public static extern ListItemFactory* GetRowFactory(ColumnView* self);
		[LinkName("gtk_column_view_get_show_column_separators")]
		public static extern c_int GetShowColumnSeparators(ColumnView* self);
		[LinkName("gtk_column_view_get_show_row_separators")]
		public static extern c_int GetShowRowSeparators(ColumnView* self);
		[LinkName("gtk_column_view_get_single_click_activate")]
		public static extern c_int GetSingleClickActivate(ColumnView* self);
		[LinkName("gtk_column_view_get_sorter")]
		public static extern Sorter* GetSorter(ColumnView* self);
		[LinkName("gtk_column_view_get_tab_behavior")]
		public static extern ListTabBehavior GetTabBehavior(ColumnView* self);
		[LinkName("gtk_column_view_insert_column")]
		public static extern void InsertColumn(ColumnView* self, c_uint position, ColumnViewColumn* column);
		[LinkName("gtk_column_view_remove_column")]
		public static extern void RemoveColumn(ColumnView* self, ColumnViewColumn* column);
		[LinkName("gtk_column_view_set_enable_rubberband")]
		public static extern void SetEnableRubberband(ColumnView* self, c_int enable_rubberband);
		[LinkName("gtk_column_view_set_header_factory")]
		public static extern void SetHeaderFactory(ColumnView* self, ListItemFactory* factory);
		[LinkName("gtk_column_view_set_model")]
		public static extern void SetModel(ColumnView* self, SelectionModel* model);
		[LinkName("gtk_column_view_set_reorderable")]
		public static extern void SetReorderable(ColumnView* self, c_int reorderable);
		[LinkName("gtk_column_view_set_row_factory")]
		public static extern void SetRowFactory(ColumnView* self, ListItemFactory* factory);
		[LinkName("gtk_column_view_set_show_column_separators")]
		public static extern void SetShowColumnSeparators(ColumnView* self, c_int show_column_separators);
		[LinkName("gtk_column_view_set_show_row_separators")]
		public static extern void SetShowRowSeparators(ColumnView* self, c_int show_row_separators);
		[LinkName("gtk_column_view_set_single_click_activate")]
		public static extern void SetSingleClickActivate(ColumnView* self, c_int single_click_activate);
		[LinkName("gtk_column_view_set_tab_behavior")]
		public static extern void SetTabBehavior(ColumnView* self, ListTabBehavior tab_behavior);
		[LinkName("gtk_column_view_sort_by_column")]
		public static extern void SortByColumn(ColumnView* self, ColumnViewColumn* column, SortType direction);
		public function void ActivateFunc(ColumnView* self, c_uint position, void* user_data);
	}
	[CRepr]
	public struct ColumnViewCell : ListItem
	{
		[LinkName("gtk_column_view_cell_get_child")]
		public static extern Widget* GetChild(ColumnViewCell* self);
		[LinkName("gtk_column_view_cell_get_focusable")]
		public static extern c_int GetFocusable(ColumnViewCell* self);
		[LinkName("gtk_column_view_cell_get_item")]
		public static extern GObject.Object* GetItem(ColumnViewCell* self);
		[LinkName("gtk_column_view_cell_get_position")]
		public static extern c_uint GetPosition(ColumnViewCell* self);
		[LinkName("gtk_column_view_cell_get_selected")]
		public static extern c_int GetSelected(ColumnViewCell* self);
		[LinkName("gtk_column_view_cell_set_child")]
		public static extern void SetChild(ColumnViewCell* self, Widget* child);
		[LinkName("gtk_column_view_cell_set_focusable")]
		public static extern void SetFocusable(ColumnViewCell* self, c_int focusable);
	}
	[CRepr]
	public struct ColumnViewColumn : GObject.Object
	{
		[LinkName("gtk_column_view_column_new")]
		public static extern ColumnViewColumn* New(char8* title, ListItemFactory* factory);
		[LinkName("gtk_column_view_column_get_column_view")]
		public static extern ColumnView* GetColumnView(ColumnViewColumn* self);
		[LinkName("gtk_column_view_column_get_expand")]
		public static extern c_int GetExpand(ColumnViewColumn* self);
		[LinkName("gtk_column_view_column_get_factory")]
		public static extern ListItemFactory* GetFactory(ColumnViewColumn* self);
		[LinkName("gtk_column_view_column_get_fixed_width")]
		public static extern c_int GetFixedWidth(ColumnViewColumn* self);
		[LinkName("gtk_column_view_column_get_header_menu")]
		public static extern Gio.MenuModel* GetHeaderMenu(ColumnViewColumn* self);
		[LinkName("gtk_column_view_column_get_id")]
		public static extern char8* GetId(ColumnViewColumn* self);
		[LinkName("gtk_column_view_column_get_resizable")]
		public static extern c_int GetResizable(ColumnViewColumn* self);
		[LinkName("gtk_column_view_column_get_sorter")]
		public static extern Sorter* GetSorter(ColumnViewColumn* self);
		[LinkName("gtk_column_view_column_get_title")]
		public static extern char8* GetTitle(ColumnViewColumn* self);
		[LinkName("gtk_column_view_column_get_visible")]
		public static extern c_int GetVisible(ColumnViewColumn* self);
		[LinkName("gtk_column_view_column_set_expand")]
		public static extern void SetExpand(ColumnViewColumn* self, c_int expand);
		[LinkName("gtk_column_view_column_set_factory")]
		public static extern void SetFactory(ColumnViewColumn* self, ListItemFactory* factory);
		[LinkName("gtk_column_view_column_set_fixed_width")]
		public static extern void SetFixedWidth(ColumnViewColumn* self, c_int fixed_width);
		[LinkName("gtk_column_view_column_set_header_menu")]
		public static extern void SetHeaderMenu(ColumnViewColumn* self, Gio.MenuModel* menu);
		[LinkName("gtk_column_view_column_set_id")]
		public static extern void SetId(ColumnViewColumn* self, char8* id);
		[LinkName("gtk_column_view_column_set_resizable")]
		public static extern void SetResizable(ColumnViewColumn* self, c_int resizable);
		[LinkName("gtk_column_view_column_set_sorter")]
		public static extern void SetSorter(ColumnViewColumn* self, Sorter* sorter);
		[LinkName("gtk_column_view_column_set_title")]
		public static extern void SetTitle(ColumnViewColumn* self, char8* title);
		[LinkName("gtk_column_view_column_set_visible")]
		public static extern void SetVisible(ColumnViewColumn* self, c_int visible);
	}
	[CRepr]
	public struct ColumnViewRow : GObject.Object
	{
		[LinkName("gtk_column_view_row_get_activatable")]
		public static extern c_int GetActivatable(ColumnViewRow* self);
		[LinkName("gtk_column_view_row_get_focusable")]
		public static extern c_int GetFocusable(ColumnViewRow* self);
		[LinkName("gtk_column_view_row_get_item")]
		public static extern GObject.Object* GetItem(ColumnViewRow* self);
		[LinkName("gtk_column_view_row_get_position")]
		public static extern c_uint GetPosition(ColumnViewRow* self);
		[LinkName("gtk_column_view_row_get_selectable")]
		public static extern c_int GetSelectable(ColumnViewRow* self);
		[LinkName("gtk_column_view_row_get_selected")]
		public static extern c_int GetSelected(ColumnViewRow* self);
		[LinkName("gtk_column_view_row_set_activatable")]
		public static extern void SetActivatable(ColumnViewRow* self, c_int activatable);
		[LinkName("gtk_column_view_row_set_focusable")]
		public static extern void SetFocusable(ColumnViewRow* self, c_int focusable);
		[LinkName("gtk_column_view_row_set_selectable")]
		public static extern void SetSelectable(ColumnViewRow* self, c_int selectable);
	}
	[CRepr]
	public struct ColumnViewSorter : Sorter
	{
		[LinkName("gtk_column_view_sorter_get_n_sort_columns")]
		public static extern c_uint GetNSortColumns(ColumnViewSorter* self);
		[LinkName("gtk_column_view_sorter_get_nth_sort_column")]
		public static extern ColumnViewColumn* GetNthSortColumn(ColumnViewSorter* self, c_uint position, SortType* sort_order);
		[LinkName("gtk_column_view_sorter_get_primary_sort_column")]
		public static extern ColumnViewColumn* GetPrimarySortColumn(ColumnViewSorter* self);
		[LinkName("gtk_column_view_sorter_get_primary_sort_order")]
		public static extern SortType GetPrimarySortOrder(ColumnViewSorter* self);
	}
	[CRepr]
	public struct ComboBox : Widget
	{
		[LinkName("gtk_combo_box_new")]
		public static extern Widget* New();
		[LinkName("gtk_combo_box_new_with_entry")]
		public static extern Widget* NewWithEntry();
		[LinkName("gtk_combo_box_new_with_model")]
		public static extern Widget* NewWithModel(TreeModel* model);
		[LinkName("gtk_combo_box_new_with_model_and_entry")]
		public static extern Widget* NewWithModelAndEntry(TreeModel* model);
		[LinkName("gtk_combo_box_get_active")]
		public static extern c_int GetActive(ComboBox* combo_box);
		[LinkName("gtk_combo_box_get_active_id")]
		public static extern char8* GetActiveId(ComboBox* combo_box);
		[LinkName("gtk_combo_box_get_active_iter")]
		public static extern c_int GetActiveIter(ComboBox* combo_box, TreeIter* iter);
		[LinkName("gtk_combo_box_get_button_sensitivity")]
		public static extern SensitivityType GetButtonSensitivity(ComboBox* combo_box);
		[LinkName("gtk_combo_box_get_child")]
		public static extern Widget* GetChild(ComboBox* combo_box);
		[LinkName("gtk_combo_box_get_entry_text_column")]
		public static extern c_int GetEntryTextColumn(ComboBox* combo_box);
		[LinkName("gtk_combo_box_get_has_entry")]
		public static extern c_int GetHasEntry(ComboBox* combo_box);
		[LinkName("gtk_combo_box_get_id_column")]
		public static extern c_int GetIdColumn(ComboBox* combo_box);
		[LinkName("gtk_combo_box_get_model")]
		public static extern TreeModel* GetModel(ComboBox* combo_box);
		[LinkName("gtk_combo_box_get_popup_fixed_width")]
		public static extern c_int GetPopupFixedWidth(ComboBox* combo_box);
		[LinkName("gtk_combo_box_popdown")]
		public static extern void Popdown(ComboBox* combo_box);
		[LinkName("gtk_combo_box_popup")]
		public static extern void Popup(ComboBox* combo_box);
		[LinkName("gtk_combo_box_popup_for_device")]
		public static extern void PopupForDevice(ComboBox* combo_box, Gdk.Device* device);
		[LinkName("gtk_combo_box_set_active")]
		public static extern void SetActive(ComboBox* combo_box, c_int index_);
		[LinkName("gtk_combo_box_set_active_id")]
		public static extern c_int SetActiveId(ComboBox* combo_box, char8* active_id);
		[LinkName("gtk_combo_box_set_active_iter")]
		public static extern void SetActiveIter(ComboBox* combo_box, TreeIter* iter);
		[LinkName("gtk_combo_box_set_button_sensitivity")]
		public static extern void SetButtonSensitivity(ComboBox* combo_box, SensitivityType sensitivity);
		[LinkName("gtk_combo_box_set_child")]
		public static extern void SetChild(ComboBox* combo_box, Widget* child);
		[LinkName("gtk_combo_box_set_entry_text_column")]
		public static extern void SetEntryTextColumn(ComboBox* combo_box, c_int text_column);
		[LinkName("gtk_combo_box_set_id_column")]
		public static extern void SetIdColumn(ComboBox* combo_box, c_int id_column);
		[LinkName("gtk_combo_box_set_model")]
		public static extern void SetModel(ComboBox* combo_box, TreeModel* model);
		[LinkName("gtk_combo_box_set_popup_fixed_width")]
		public static extern void SetPopupFixedWidth(ComboBox* combo_box, c_int fixed_);
		[LinkName("gtk_combo_box_set_row_separator_func")]
		public static extern void SetRowSeparatorFunc(ComboBox* combo_box, TreeViewRowSeparatorFunc func, void* data, GLib.DestroyNotify destroy);
		public function void ActivateFunc(ComboBox* self, void* user_data);
		public function void ChangedFunc(ComboBox* self, void* user_data);
		public function char8* FormatEntryTextFunc(ComboBox* self, char8* path, void* user_data);
		public function void MoveActiveFunc(ComboBox* self, ScrollType scroll_type, void* user_data);
		public function c_int PopdownFunc(ComboBox* self, void* user_data);
		public function void PopupFunc(ComboBox* self, void* user_data);
	}
	[CRepr]
	public struct ComboBoxText : ComboBox
	{
		[LinkName("gtk_combo_box_text_new")]
		public static extern Widget* New();
		[LinkName("gtk_combo_box_text_new_with_entry")]
		public static extern Widget* NewWithEntry();
		[LinkName("gtk_combo_box_text_append")]
		public static extern void Append(ComboBoxText* combo_box, char8* id, char8* text);
		[LinkName("gtk_combo_box_text_append_text")]
		public static extern void AppendText(ComboBoxText* combo_box, char8* text);
		[LinkName("gtk_combo_box_text_get_active_text")]
		public static extern char8* GetActiveText(ComboBoxText* combo_box);
		[LinkName("gtk_combo_box_text_insert")]
		public static extern void Insert(ComboBoxText* combo_box, c_int position, char8* id, char8* text);
		[LinkName("gtk_combo_box_text_insert_text")]
		public static extern void InsertText(ComboBoxText* combo_box, c_int position, char8* text);
		[LinkName("gtk_combo_box_text_prepend")]
		public static extern void Prepend(ComboBoxText* combo_box, char8* id, char8* text);
		[LinkName("gtk_combo_box_text_prepend_text")]
		public static extern void PrependText(ComboBoxText* combo_box, char8* text);
		[LinkName("gtk_combo_box_text_remove")]
		public static extern void Remove(ComboBoxText* combo_box, c_int position);
		[LinkName("gtk_combo_box_text_remove_all")]
		public static extern void RemoveAll(ComboBoxText* combo_box);
	}
	[CRepr]
	public struct ConstantExpression : Expression
	{
		[LinkName("gtk_constant_expression_new_for_value")]
		public static extern ConstantExpression* NewForValue(GObject.Value* value);
		[LinkName("gtk_constant_expression_get_value")]
		public static extern GObject.Value* GetValue(ConstantExpression* expression);
	}
	[CRepr]
	public struct Constraint : GObject.Object
	{
		[LinkName("gtk_constraint_new")]
		public static extern Constraint* New(ConstraintTarget* target, ConstraintAttribute target_attribute, ConstraintRelation relation, ConstraintTarget* source, ConstraintAttribute source_attribute, double multiplier, double constant, c_int strength);
		[LinkName("gtk_constraint_new_constant")]
		public static extern Constraint* NewConstant(ConstraintTarget* target, ConstraintAttribute target_attribute, ConstraintRelation relation, double constant, c_int strength);
		[LinkName("gtk_constraint_get_constant")]
		public static extern double GetConstant(Constraint* constraint);
		[LinkName("gtk_constraint_get_multiplier")]
		public static extern double GetMultiplier(Constraint* constraint);
		[LinkName("gtk_constraint_get_relation")]
		public static extern ConstraintRelation GetRelation(Constraint* constraint);
		[LinkName("gtk_constraint_get_source")]
		public static extern ConstraintTarget* GetSource(Constraint* constraint);
		[LinkName("gtk_constraint_get_source_attribute")]
		public static extern ConstraintAttribute GetSourceAttribute(Constraint* constraint);
		[LinkName("gtk_constraint_get_strength")]
		public static extern c_int GetStrength(Constraint* constraint);
		[LinkName("gtk_constraint_get_target")]
		public static extern ConstraintTarget* GetTarget(Constraint* constraint);
		[LinkName("gtk_constraint_get_target_attribute")]
		public static extern ConstraintAttribute GetTargetAttribute(Constraint* constraint);
		[LinkName("gtk_constraint_is_attached")]
		public static extern c_int IsAttached(Constraint* constraint);
		[LinkName("gtk_constraint_is_constant")]
		public static extern c_int IsConstant(Constraint* constraint);
		[LinkName("gtk_constraint_is_required")]
		public static extern c_int IsRequired(Constraint* constraint);
	}
	[CRepr]
	public struct ConstraintGuide : GObject.Object
	{
		[LinkName("gtk_constraint_guide_new")]
		public static extern ConstraintGuide* New();
		[LinkName("gtk_constraint_guide_get_max_size")]
		public static extern void GetMaxSize(ConstraintGuide* guide, c_int* width, c_int* height);
		[LinkName("gtk_constraint_guide_get_min_size")]
		public static extern void GetMinSize(ConstraintGuide* guide, c_int* width, c_int* height);
		[LinkName("gtk_constraint_guide_get_name")]
		public static extern char8* GetName(ConstraintGuide* guide);
		[LinkName("gtk_constraint_guide_get_nat_size")]
		public static extern void GetNatSize(ConstraintGuide* guide, c_int* width, c_int* height);
		[LinkName("gtk_constraint_guide_get_strength")]
		public static extern ConstraintStrength GetStrength(ConstraintGuide* guide);
		[LinkName("gtk_constraint_guide_set_max_size")]
		public static extern void SetMaxSize(ConstraintGuide* guide, c_int width, c_int height);
		[LinkName("gtk_constraint_guide_set_min_size")]
		public static extern void SetMinSize(ConstraintGuide* guide, c_int width, c_int height);
		[LinkName("gtk_constraint_guide_set_name")]
		public static extern void SetName(ConstraintGuide* guide, char8* name);
		[LinkName("gtk_constraint_guide_set_nat_size")]
		public static extern void SetNatSize(ConstraintGuide* guide, c_int width, c_int height);
		[LinkName("gtk_constraint_guide_set_strength")]
		public static extern void SetStrength(ConstraintGuide* guide, ConstraintStrength strength);
	}
	[CRepr]
	public struct ConstraintLayout : LayoutManager
	{
		[LinkName("gtk_constraint_layout_new")]
		public static extern LayoutManager* New();
		[LinkName("gtk_constraint_layout_add_constraint")]
		public static extern void AddConstraint(ConstraintLayout* layout, Constraint* constraint);
		[LinkName("gtk_constraint_layout_add_constraints_from_descriptionv")]
		public static extern GLib.List* AddConstraintsFromDescriptionv(ConstraintLayout* layout, char8** lines, c_ulong n_lines, c_int hspacing, c_int vspacing, GLib.HashTable* views);
		[LinkName("gtk_constraint_layout_add_guide")]
		public static extern void AddGuide(ConstraintLayout* layout, ConstraintGuide* guide);
		[LinkName("gtk_constraint_layout_observe_constraints")]
		public static extern Gio.ListModel* ObserveConstraints(ConstraintLayout* layout);
		[LinkName("gtk_constraint_layout_observe_guides")]
		public static extern Gio.ListModel* ObserveGuides(ConstraintLayout* layout);
		[LinkName("gtk_constraint_layout_remove_all_constraints")]
		public static extern void RemoveAllConstraints(ConstraintLayout* layout);
		[LinkName("gtk_constraint_layout_remove_constraint")]
		public static extern void RemoveConstraint(ConstraintLayout* layout, Constraint* constraint);
		[LinkName("gtk_constraint_layout_remove_guide")]
		public static extern void RemoveGuide(ConstraintLayout* layout, ConstraintGuide* guide);
	}
	[CRepr]
	public struct ConstraintLayoutChild : LayoutChild
	{
	}
	[CRepr]
	public struct CssProvider : GObject.Object
	{
		[LinkName("gtk_css_provider_new")]
		public static extern CssProvider* New();
		[LinkName("gtk_css_provider_load_from_bytes")]
		public static extern void LoadFromBytes(CssProvider* css_provider, GLib.Bytes* data);
		[LinkName("gtk_css_provider_load_from_data")]
		public static extern void LoadFromData(CssProvider* css_provider, char8* data, c_long length);
		[LinkName("gtk_css_provider_load_from_file")]
		public static extern void LoadFromFile(CssProvider* css_provider, Gio.File* file);
		[LinkName("gtk_css_provider_load_from_path")]
		public static extern void LoadFromPath(CssProvider* css_provider, char8* path);
		[LinkName("gtk_css_provider_load_from_resource")]
		public static extern void LoadFromResource(CssProvider* css_provider, char8* resource_path);
		[LinkName("gtk_css_provider_load_from_string")]
		public static extern void LoadFromString(CssProvider* css_provider, char8* string);
		[LinkName("gtk_css_provider_load_named")]
		public static extern void LoadNamed(CssProvider* provider, char8* name, char8* variant);
		[LinkName("gtk_css_provider_to_string")]
		public static extern char8* ToString(CssProvider* provider);
		public function void ParsingErrorFunc(CssProvider* self, CssSection section, GLib.Error error, void* user_data);
	}
	[CRepr]
	public struct CustomFilter : Filter
	{
		[LinkName("gtk_custom_filter_new")]
		public static extern CustomFilter* New(CustomFilterFunc match_func, void* user_data, GLib.DestroyNotify user_destroy);
		[LinkName("gtk_custom_filter_set_filter_func")]
		public static extern void SetFilterFunc(CustomFilter* self, CustomFilterFunc match_func, void* user_data, GLib.DestroyNotify user_destroy);
	}
	[CRepr]
	public struct CustomLayout : LayoutManager
	{
		[LinkName("gtk_custom_layout_new")]
		public static extern LayoutManager* New(CustomRequestModeFunc request_mode, CustomMeasureFunc measure, CustomAllocateFunc allocate);
	}
	[CRepr]
	public struct CustomSorter : Sorter
	{
		[LinkName("gtk_custom_sorter_new")]
		public static extern CustomSorter* New(GLib.CompareDataFunc sort_func, void* user_data, GLib.DestroyNotify user_destroy);
		[LinkName("gtk_custom_sorter_set_sort_func")]
		public static extern void SetSortFunc(CustomSorter* self, GLib.CompareDataFunc sort_func, void* user_data, GLib.DestroyNotify user_destroy);
	}
	[CRepr]
	public struct Dialog : Window
	{
		[LinkName("gtk_dialog_new")]
		public static extern Widget* New();
		[LinkName("gtk_dialog_add_action_widget")]
		public static extern void AddActionWidget(Dialog* dialog, Widget* child, c_int response_id);
		[LinkName("gtk_dialog_add_button")]
		public static extern Widget* AddButton(Dialog* dialog, char8* button_text, c_int response_id);
		[LinkName("gtk_dialog_get_content_area")]
		public static extern Box* GetContentArea(Dialog* dialog);
		[LinkName("gtk_dialog_get_header_bar")]
		public static extern HeaderBar* GetHeaderBar(Dialog* dialog);
		[LinkName("gtk_dialog_get_response_for_widget")]
		public static extern c_int GetResponseForWidget(Dialog* dialog, Widget* widget);
		[LinkName("gtk_dialog_get_widget_for_response")]
		public static extern Widget* GetWidgetForResponse(Dialog* dialog, c_int response_id);
		[LinkName("gtk_dialog_response")]
		public static extern void Response(Dialog* dialog, c_int response_id);
		[LinkName("gtk_dialog_set_default_response")]
		public static extern void SetDefaultResponse(Dialog* dialog, c_int response_id);
		[LinkName("gtk_dialog_set_response_sensitive")]
		public static extern void SetResponseSensitive(Dialog* dialog, c_int response_id, c_int setting);
		public function void CloseFunc(Dialog* self, void* user_data);
		public function void ResponseFunc(Dialog* self, c_int response_id, void* user_data);
	}
	[CRepr]
	public struct DirectoryList : GObject.Object
	{
		[LinkName("gtk_directory_list_new")]
		public static extern DirectoryList* New(char8* attributes, Gio.File* file);
		[LinkName("gtk_directory_list_get_attributes")]
		public static extern char8* GetAttributes(DirectoryList* self);
		[LinkName("gtk_directory_list_get_error")]
		public static extern GLib.Error* GetError(DirectoryList* self);
		[LinkName("gtk_directory_list_get_file")]
		public static extern Gio.File* GetFile(DirectoryList* self);
		[LinkName("gtk_directory_list_get_io_priority")]
		public static extern c_int GetIoPriority(DirectoryList* self);
		[LinkName("gtk_directory_list_get_monitored")]
		public static extern c_int GetMonitored(DirectoryList* self);
		[LinkName("gtk_directory_list_is_loading")]
		public static extern c_int IsLoading(DirectoryList* self);
		[LinkName("gtk_directory_list_set_attributes")]
		public static extern void SetAttributes(DirectoryList* self, char8* attributes);
		[LinkName("gtk_directory_list_set_file")]
		public static extern void SetFile(DirectoryList* self, Gio.File* file);
		[LinkName("gtk_directory_list_set_io_priority")]
		public static extern void SetIoPriority(DirectoryList* self, c_int io_priority);
		[LinkName("gtk_directory_list_set_monitored")]
		public static extern void SetMonitored(DirectoryList* self, c_int monitored);
	}
	[CRepr]
	public struct DragIcon : Widget
	{
		[LinkName("gtk_drag_icon_get_child")]
		public static extern Widget* GetChild(DragIcon* self);
		[LinkName("gtk_drag_icon_set_child")]
		public static extern void SetChild(DragIcon* self, Widget* child);
	}
	[CRepr]
	public struct DragSource : GestureSingle
	{
		[LinkName("gtk_drag_source_new")]
		public static extern DragSource* New();
		[LinkName("gtk_drag_source_drag_cancel")]
		public static extern void DragCancel(DragSource* source);
		[LinkName("gtk_drag_source_get_actions")]
		public static extern Gdk.DragAction GetActions(DragSource* source);
		[LinkName("gtk_drag_source_get_content")]
		public static extern Gdk.ContentProvider* GetContent(DragSource* source);
		[LinkName("gtk_drag_source_get_drag")]
		public static extern Gdk.Drag* GetDrag(DragSource* source);
		[LinkName("gtk_drag_source_set_actions")]
		public static extern void SetActions(DragSource* source, Gdk.DragAction actions);
		[LinkName("gtk_drag_source_set_content")]
		public static extern void SetContent(DragSource* source, Gdk.ContentProvider* content);
		[LinkName("gtk_drag_source_set_icon")]
		public static extern void SetIcon(DragSource* source, Gdk.Paintable* paintable, c_int hot_x, c_int hot_y);
		public function void DragBeginFunc(DragSource* self, Gdk.Drag drag, void* user_data);
		public function c_int DragCancelFunc(DragSource* self, Gdk.Drag drag, Gdk.DragCancelReason reason, void* user_data);
		public function void DragEndFunc(DragSource* self, Gdk.Drag drag, c_int delete_data, void* user_data);
		public function Gdk.ContentProvider PrepareFunc(DragSource* self, double x, double y, void* user_data);
	}
	[CRepr]
	public struct DrawingArea : Widget
	{
		[LinkName("gtk_drawing_area_new")]
		public static extern Widget* New();
		[LinkName("gtk_drawing_area_get_content_height")]
		public static extern c_int GetContentHeight(DrawingArea* self);
		[LinkName("gtk_drawing_area_get_content_width")]
		public static extern c_int GetContentWidth(DrawingArea* self);
		[LinkName("gtk_drawing_area_set_content_height")]
		public static extern void SetContentHeight(DrawingArea* self, c_int height);
		[LinkName("gtk_drawing_area_set_content_width")]
		public static extern void SetContentWidth(DrawingArea* self, c_int width);
		[LinkName("gtk_drawing_area_set_draw_func")]
		public static extern void SetDrawFunc(DrawingArea* self, DrawingAreaDrawFunc draw_func, void* user_data, GLib.DestroyNotify destroy);
		public function void ResizeFunc(DrawingArea* self, c_int width, c_int height, void* user_data);
	}
	[CRepr]
	public struct DropControllerMotion : EventController
	{
		[LinkName("gtk_drop_controller_motion_new")]
		public static extern EventController* New();
		[LinkName("gtk_drop_controller_motion_contains_pointer")]
		public static extern c_int ContainsPointer(DropControllerMotion* self);
		[LinkName("gtk_drop_controller_motion_get_drop")]
		public static extern Gdk.Drop* GetDrop(DropControllerMotion* self);
		[LinkName("gtk_drop_controller_motion_is_pointer")]
		public static extern c_int IsPointer(DropControllerMotion* self);
		public function void EnterFunc(DropControllerMotion* self, double x, double y, void* user_data);
		public function void LeaveFunc(DropControllerMotion* self, void* user_data);
		public function void MotionFunc(DropControllerMotion* self, double x, double y, void* user_data);
	}
	[CRepr]
	public struct DropDown : Widget
	{
		[LinkName("gtk_drop_down_new")]
		public static extern Widget* New(Gio.ListModel* model, Expression* expression);
		[LinkName("gtk_drop_down_new_from_strings")]
		public static extern Widget* NewFromStrings(char8** strings);
		[LinkName("gtk_drop_down_get_enable_search")]
		public static extern c_int GetEnableSearch(DropDown* self);
		[LinkName("gtk_drop_down_get_expression")]
		public static extern Expression* GetExpression(DropDown* self);
		[LinkName("gtk_drop_down_get_factory")]
		public static extern ListItemFactory* GetFactory(DropDown* self);
		[LinkName("gtk_drop_down_get_list_factory")]
		public static extern ListItemFactory* GetListFactory(DropDown* self);
		[LinkName("gtk_drop_down_get_model")]
		public static extern Gio.ListModel* GetModel(DropDown* self);
		[LinkName("gtk_drop_down_get_selected")]
		public static extern c_uint GetSelected(DropDown* self);
		[LinkName("gtk_drop_down_get_selected_item")]
		public static extern GObject.Object* GetSelectedItem(DropDown* self);
		[LinkName("gtk_drop_down_get_show_arrow")]
		public static extern c_int GetShowArrow(DropDown* self);
		[LinkName("gtk_drop_down_set_enable_search")]
		public static extern void SetEnableSearch(DropDown* self, c_int enable_search);
		[LinkName("gtk_drop_down_set_expression")]
		public static extern void SetExpression(DropDown* self, Expression* expression);
		[LinkName("gtk_drop_down_set_factory")]
		public static extern void SetFactory(DropDown* self, ListItemFactory* factory);
		[LinkName("gtk_drop_down_set_list_factory")]
		public static extern void SetListFactory(DropDown* self, ListItemFactory* factory);
		[LinkName("gtk_drop_down_set_model")]
		public static extern void SetModel(DropDown* self, Gio.ListModel* model);
		[LinkName("gtk_drop_down_set_selected")]
		public static extern void SetSelected(DropDown* self, c_uint position);
		[LinkName("gtk_drop_down_set_show_arrow")]
		public static extern void SetShowArrow(DropDown* self, c_int show_arrow);
		public function void ActivateFunc(DropDown* self, void* user_data);
	}
	[CRepr]
	public struct DropTarget : EventController
	{
		[LinkName("gtk_drop_target_new")]
		public static extern DropTarget* New(GLib.Type type, Gdk.DragAction actions);
		[LinkName("gtk_drop_target_get_actions")]
		public static extern Gdk.DragAction GetActions(DropTarget* self);
		[LinkName("gtk_drop_target_get_current_drop")]
		public static extern Gdk.Drop* GetCurrentDrop(DropTarget* self);
		[LinkName("gtk_drop_target_get_drop")]
		public static extern Gdk.Drop* GetDrop(DropTarget* self);
		[LinkName("gtk_drop_target_get_formats")]
		public static extern Gdk.ContentFormats* GetFormats(DropTarget* self);
		[LinkName("gtk_drop_target_get_gtypes")]
		public static extern GLib.Type* GetGtypes(DropTarget* self, c_ulong* n_types);
		[LinkName("gtk_drop_target_get_preload")]
		public static extern c_int GetPreload(DropTarget* self);
		[LinkName("gtk_drop_target_get_value")]
		public static extern GObject.Value* GetValue(DropTarget* self);
		[LinkName("gtk_drop_target_reject")]
		public static extern void Reject(DropTarget* self);
		[LinkName("gtk_drop_target_set_actions")]
		public static extern void SetActions(DropTarget* self, Gdk.DragAction actions);
		[LinkName("gtk_drop_target_set_gtypes")]
		public static extern void SetGtypes(DropTarget* self, GLib.Type* types, c_ulong n_types);
		[LinkName("gtk_drop_target_set_preload")]
		public static extern void SetPreload(DropTarget* self, c_int preload);
		public function c_int AcceptFunc(DropTarget* self, Gdk.Drop drop, void* user_data);
		public function c_int DropFunc(DropTarget* self, GObject.Value value, double x, double y, void* user_data);
		public function Gdk.DragAction EnterFunc(DropTarget* self, double x, double y, void* user_data);
		public function void LeaveFunc(DropTarget* self, void* user_data);
		public function Gdk.DragAction MotionFunc(DropTarget* self, double x, double y, void* user_data);
	}
	[CRepr]
	public struct DropTargetAsync : EventController
	{
		[LinkName("gtk_drop_target_async_new")]
		public static extern DropTargetAsync* New(Gdk.ContentFormats* formats, Gdk.DragAction actions);
		[LinkName("gtk_drop_target_async_get_actions")]
		public static extern Gdk.DragAction GetActions(DropTargetAsync* self);
		[LinkName("gtk_drop_target_async_get_formats")]
		public static extern Gdk.ContentFormats* GetFormats(DropTargetAsync* self);
		[LinkName("gtk_drop_target_async_reject_drop")]
		public static extern void RejectDrop(DropTargetAsync* self, Gdk.Drop* drop);
		[LinkName("gtk_drop_target_async_set_actions")]
		public static extern void SetActions(DropTargetAsync* self, Gdk.DragAction actions);
		[LinkName("gtk_drop_target_async_set_formats")]
		public static extern void SetFormats(DropTargetAsync* self, Gdk.ContentFormats* formats);
		public function c_int AcceptFunc(DropTargetAsync* self, Gdk.Drop drop, void* user_data);
		public function Gdk.DragAction DragEnterFunc(DropTargetAsync* self, Gdk.Drop drop, double x, double y, void* user_data);
		public function void DragLeaveFunc(DropTargetAsync* self, Gdk.Drop drop, void* user_data);
		public function Gdk.DragAction DragMotionFunc(DropTargetAsync* self, Gdk.Drop drop, double x, double y, void* user_data);
		public function c_int DropFunc(DropTargetAsync* self, Gdk.Drop drop, double x, double y, void* user_data);
	}
	[CRepr]
	public struct EditableLabel : Widget
	{
		[LinkName("gtk_editable_label_new")]
		public static extern Widget* New(char8* str);
		[LinkName("gtk_editable_label_get_editing")]
		public static extern c_int GetEditing(EditableLabel* self);
		[LinkName("gtk_editable_label_start_editing")]
		public static extern void StartEditing(EditableLabel* self);
		[LinkName("gtk_editable_label_stop_editing")]
		public static extern void StopEditing(EditableLabel* self, c_int commit);
	}
	[CRepr]
	public struct EmojiChooser : Popover
	{
		[LinkName("gtk_emoji_chooser_new")]
		public static extern Widget* New();
		public function void EmojiPickedFunc(EmojiChooser* self, char8* text, void* user_data);
	}
	[CRepr]
	public struct Entry : Widget
	{
		[LinkName("gtk_entry_new")]
		public static extern Widget* New();
		[LinkName("gtk_entry_new_with_buffer")]
		public static extern Widget* NewWithBuffer(EntryBuffer* buffer);
		[LinkName("gtk_entry_get_activates_default")]
		public static extern c_int GetActivatesDefault(Entry* entry);
		[LinkName("gtk_entry_get_alignment")]
		public static extern float GetAlignment(Entry* entry);
		[LinkName("gtk_entry_get_attributes")]
		public static extern Pango.AttrList* GetAttributes(Entry* entry);
		[LinkName("gtk_entry_get_buffer")]
		public static extern EntryBuffer* GetBuffer(Entry* entry);
		[LinkName("gtk_entry_get_completion")]
		public static extern EntryCompletion* GetCompletion(Entry* entry);
		[LinkName("gtk_entry_get_current_icon_drag_source")]
		public static extern c_int GetCurrentIconDragSource(Entry* entry);
		[LinkName("gtk_entry_get_extra_menu")]
		public static extern Gio.MenuModel* GetExtraMenu(Entry* entry);
		[LinkName("gtk_entry_get_has_frame")]
		public static extern c_int GetHasFrame(Entry* entry);
		[LinkName("gtk_entry_get_icon_activatable")]
		public static extern c_int GetIconActivatable(Entry* entry, EntryIconPosition icon_pos);
		[LinkName("gtk_entry_get_icon_area")]
		public static extern void GetIconArea(Entry* entry, EntryIconPosition icon_pos, Gdk.Rectangle* icon_area);
		[LinkName("gtk_entry_get_icon_at_pos")]
		public static extern c_int GetIconAtPos(Entry* entry, c_int x, c_int y);
		[LinkName("gtk_entry_get_icon_gicon")]
		public static extern Gio.Icon* GetIconGicon(Entry* entry, EntryIconPosition icon_pos);
		[LinkName("gtk_entry_get_icon_name")]
		public static extern char8* GetIconName(Entry* entry, EntryIconPosition icon_pos);
		[LinkName("gtk_entry_get_icon_paintable")]
		public static extern Gdk.Paintable* GetIconPaintable(Entry* entry, EntryIconPosition icon_pos);
		[LinkName("gtk_entry_get_icon_sensitive")]
		public static extern c_int GetIconSensitive(Entry* entry, EntryIconPosition icon_pos);
		[LinkName("gtk_entry_get_icon_storage_type")]
		public static extern ImageType GetIconStorageType(Entry* entry, EntryIconPosition icon_pos);
		[LinkName("gtk_entry_get_icon_tooltip_markup")]
		public static extern char8* GetIconTooltipMarkup(Entry* entry, EntryIconPosition icon_pos);
		[LinkName("gtk_entry_get_icon_tooltip_text")]
		public static extern char8* GetIconTooltipText(Entry* entry, EntryIconPosition icon_pos);
		[LinkName("gtk_entry_get_input_hints")]
		public static extern InputHints GetInputHints(Entry* entry);
		[LinkName("gtk_entry_get_input_purpose")]
		public static extern InputPurpose GetInputPurpose(Entry* entry);
		[LinkName("gtk_entry_get_invisible_char")]
		public static extern c_uint GetInvisibleChar(Entry* entry);
		[LinkName("gtk_entry_get_max_length")]
		public static extern c_int GetMaxLength(Entry* entry);
		[LinkName("gtk_entry_get_overwrite_mode")]
		public static extern c_int GetOverwriteMode(Entry* entry);
		[LinkName("gtk_entry_get_placeholder_text")]
		public static extern char8* GetPlaceholderText(Entry* entry);
		[LinkName("gtk_entry_get_progress_fraction")]
		public static extern double GetProgressFraction(Entry* entry);
		[LinkName("gtk_entry_get_progress_pulse_step")]
		public static extern double GetProgressPulseStep(Entry* entry);
		[LinkName("gtk_entry_get_tabs")]
		public static extern Pango.TabArray* GetTabs(Entry* entry);
		[LinkName("gtk_entry_get_text_length")]
		public static extern c_ushort GetTextLength(Entry* entry);
		[LinkName("gtk_entry_get_visibility")]
		public static extern c_int GetVisibility(Entry* entry);
		[LinkName("gtk_entry_grab_focus_without_selecting")]
		public static extern c_int GrabFocusWithoutSelecting(Entry* entry);
		[LinkName("gtk_entry_progress_pulse")]
		public static extern void ProgressPulse(Entry* entry);
		[LinkName("gtk_entry_reset_im_context")]
		public static extern void ResetImContext(Entry* entry);
		[LinkName("gtk_entry_set_activates_default")]
		public static extern void SetActivatesDefault(Entry* entry, c_int setting);
		[LinkName("gtk_entry_set_alignment")]
		public static extern void SetAlignment(Entry* entry, float xalign);
		[LinkName("gtk_entry_set_attributes")]
		public static extern void SetAttributes(Entry* entry, Pango.AttrList* attrs);
		[LinkName("gtk_entry_set_buffer")]
		public static extern void SetBuffer(Entry* entry, EntryBuffer* buffer);
		[LinkName("gtk_entry_set_completion")]
		public static extern void SetCompletion(Entry* entry, EntryCompletion* completion);
		[LinkName("gtk_entry_set_extra_menu")]
		public static extern void SetExtraMenu(Entry* entry, Gio.MenuModel* model);
		[LinkName("gtk_entry_set_has_frame")]
		public static extern void SetHasFrame(Entry* entry, c_int setting);
		[LinkName("gtk_entry_set_icon_activatable")]
		public static extern void SetIconActivatable(Entry* entry, EntryIconPosition icon_pos, c_int activatable);
		[LinkName("gtk_entry_set_icon_drag_source")]
		public static extern void SetIconDragSource(Entry* entry, EntryIconPosition icon_pos, Gdk.ContentProvider* provider, Gdk.DragAction actions);
		[LinkName("gtk_entry_set_icon_from_gicon")]
		public static extern void SetIconFromGicon(Entry* entry, EntryIconPosition icon_pos, Gio.Icon* icon);
		[LinkName("gtk_entry_set_icon_from_icon_name")]
		public static extern void SetIconFromIconName(Entry* entry, EntryIconPosition icon_pos, char8* icon_name);
		[LinkName("gtk_entry_set_icon_from_paintable")]
		public static extern void SetIconFromPaintable(Entry* entry, EntryIconPosition icon_pos, Gdk.Paintable* paintable);
		[LinkName("gtk_entry_set_icon_sensitive")]
		public static extern void SetIconSensitive(Entry* entry, EntryIconPosition icon_pos, c_int sensitive);
		[LinkName("gtk_entry_set_icon_tooltip_markup")]
		public static extern void SetIconTooltipMarkup(Entry* entry, EntryIconPosition icon_pos, char8* tooltip);
		[LinkName("gtk_entry_set_icon_tooltip_text")]
		public static extern void SetIconTooltipText(Entry* entry, EntryIconPosition icon_pos, char8* tooltip);
		[LinkName("gtk_entry_set_input_hints")]
		public static extern void SetInputHints(Entry* entry, InputHints hints);
		[LinkName("gtk_entry_set_input_purpose")]
		public static extern void SetInputPurpose(Entry* entry, InputPurpose purpose);
		[LinkName("gtk_entry_set_invisible_char")]
		public static extern void SetInvisibleChar(Entry* entry, c_uint ch);
		[LinkName("gtk_entry_set_max_length")]
		public static extern void SetMaxLength(Entry* entry, c_int max);
		[LinkName("gtk_entry_set_overwrite_mode")]
		public static extern void SetOverwriteMode(Entry* entry, c_int overwrite);
		[LinkName("gtk_entry_set_placeholder_text")]
		public static extern void SetPlaceholderText(Entry* entry, char8* text);
		[LinkName("gtk_entry_set_progress_fraction")]
		public static extern void SetProgressFraction(Entry* entry, double fraction);
		[LinkName("gtk_entry_set_progress_pulse_step")]
		public static extern void SetProgressPulseStep(Entry* entry, double fraction);
		[LinkName("gtk_entry_set_tabs")]
		public static extern void SetTabs(Entry* entry, Pango.TabArray* tabs);
		[LinkName("gtk_entry_set_visibility")]
		public static extern void SetVisibility(Entry* entry, c_int visible);
		[LinkName("gtk_entry_unset_invisible_char")]
		public static extern void UnsetInvisibleChar(Entry* entry);
		public function void ActivateFunc(Entry* self, void* user_data);
		public function void IconPressFunc(Entry* self, EntryIconPosition icon_pos, void* user_data);
		public function void IconReleaseFunc(Entry* self, EntryIconPosition icon_pos, void* user_data);
	}
	[CRepr]
	public struct EntryBuffer : GObject.Object
	{
		[LinkName("gtk_entry_buffer_new")]
		public static extern EntryBuffer* New(char8* initial_chars, c_int n_initial_chars);
		[LinkName("gtk_entry_buffer_delete_text")]
		public static extern c_uint DeleteText(EntryBuffer* buffer, c_uint position, c_int n_chars);
		[LinkName("gtk_entry_buffer_emit_deleted_text")]
		public static extern void EmitDeletedText(EntryBuffer* buffer, c_uint position, c_uint n_chars);
		[LinkName("gtk_entry_buffer_emit_inserted_text")]
		public static extern void EmitInsertedText(EntryBuffer* buffer, c_uint position, char8* chars, c_uint n_chars);
		[LinkName("gtk_entry_buffer_get_bytes")]
		public static extern c_ulong GetBytes(EntryBuffer* buffer);
		[LinkName("gtk_entry_buffer_get_length")]
		public static extern c_uint GetLength(EntryBuffer* buffer);
		[LinkName("gtk_entry_buffer_get_max_length")]
		public static extern c_int GetMaxLength(EntryBuffer* buffer);
		[LinkName("gtk_entry_buffer_get_text")]
		public static extern char8* GetText(EntryBuffer* buffer);
		[LinkName("gtk_entry_buffer_insert_text")]
		public static extern c_uint InsertText(EntryBuffer* buffer, c_uint position, char8* chars, c_int n_chars);
		[LinkName("gtk_entry_buffer_set_max_length")]
		public static extern void SetMaxLength(EntryBuffer* buffer, c_int max_length);
		[LinkName("gtk_entry_buffer_set_text")]
		public static extern void SetText(EntryBuffer* buffer, char8* chars, c_int n_chars);
		public function void DeletedTextFunc(EntryBuffer* self, c_uint position, c_uint n_chars, void* user_data);
		public function void InsertedTextFunc(EntryBuffer* self, c_uint position, char8* chars, c_uint n_chars, void* user_data);
	}
	[CRepr]
	public struct EntryCompletion : GObject.Object
	{
		[LinkName("gtk_entry_completion_new")]
		public static extern EntryCompletion* New();
		[LinkName("gtk_entry_completion_new_with_area")]
		public static extern EntryCompletion* NewWithArea(CellArea* area);
		[LinkName("gtk_entry_completion_complete")]
		public static extern void Complete(EntryCompletion* completion);
		[LinkName("gtk_entry_completion_compute_prefix")]
		public static extern char8* ComputePrefix(EntryCompletion* completion, char8* key);
		[LinkName("gtk_entry_completion_get_completion_prefix")]
		public static extern char8* GetCompletionPrefix(EntryCompletion* completion);
		[LinkName("gtk_entry_completion_get_entry")]
		public static extern Widget* GetEntry(EntryCompletion* completion);
		[LinkName("gtk_entry_completion_get_inline_completion")]
		public static extern c_int GetInlineCompletion(EntryCompletion* completion);
		[LinkName("gtk_entry_completion_get_inline_selection")]
		public static extern c_int GetInlineSelection(EntryCompletion* completion);
		[LinkName("gtk_entry_completion_get_minimum_key_length")]
		public static extern c_int GetMinimumKeyLength(EntryCompletion* completion);
		[LinkName("gtk_entry_completion_get_model")]
		public static extern TreeModel* GetModel(EntryCompletion* completion);
		[LinkName("gtk_entry_completion_get_popup_completion")]
		public static extern c_int GetPopupCompletion(EntryCompletion* completion);
		[LinkName("gtk_entry_completion_get_popup_set_width")]
		public static extern c_int GetPopupSetWidth(EntryCompletion* completion);
		[LinkName("gtk_entry_completion_get_popup_single_match")]
		public static extern c_int GetPopupSingleMatch(EntryCompletion* completion);
		[LinkName("gtk_entry_completion_get_text_column")]
		public static extern c_int GetTextColumn(EntryCompletion* completion);
		[LinkName("gtk_entry_completion_insert_prefix")]
		public static extern void InsertPrefix(EntryCompletion* completion);
		[LinkName("gtk_entry_completion_set_inline_completion")]
		public static extern void SetInlineCompletion(EntryCompletion* completion, c_int inline_completion);
		[LinkName("gtk_entry_completion_set_inline_selection")]
		public static extern void SetInlineSelection(EntryCompletion* completion, c_int inline_selection);
		[LinkName("gtk_entry_completion_set_match_func")]
		public static extern void SetMatchFunc(EntryCompletion* completion, EntryCompletionMatchFunc func, void* func_data, GLib.DestroyNotify func_notify);
		[LinkName("gtk_entry_completion_set_minimum_key_length")]
		public static extern void SetMinimumKeyLength(EntryCompletion* completion, c_int length);
		[LinkName("gtk_entry_completion_set_model")]
		public static extern void SetModel(EntryCompletion* completion, TreeModel* model);
		[LinkName("gtk_entry_completion_set_popup_completion")]
		public static extern void SetPopupCompletion(EntryCompletion* completion, c_int popup_completion);
		[LinkName("gtk_entry_completion_set_popup_set_width")]
		public static extern void SetPopupSetWidth(EntryCompletion* completion, c_int popup_set_width);
		[LinkName("gtk_entry_completion_set_popup_single_match")]
		public static extern void SetPopupSingleMatch(EntryCompletion* completion, c_int popup_single_match);
		[LinkName("gtk_entry_completion_set_text_column")]
		public static extern void SetTextColumn(EntryCompletion* completion, c_int column);
		public function c_int CursorOnMatchFunc(EntryCompletion* self, TreeModel model, TreeIter iter, void* user_data);
		public function c_int InsertPrefixFunc(EntryCompletion* self, char8* prefix, void* user_data);
		public function c_int MatchSelectedFunc(EntryCompletion* self, TreeModel model, TreeIter iter, void* user_data);
		public function void NoMatchesFunc(EntryCompletion* self, void* user_data);
	}
	[CRepr]
	public struct EventController : GObject.Object
	{
		[LinkName("gtk_event_controller_get_current_event")]
		public static extern Gdk.Event* GetCurrentEvent(EventController* controller);
		[LinkName("gtk_event_controller_get_current_event_device")]
		public static extern Gdk.Device* GetCurrentEventDevice(EventController* controller);
		[LinkName("gtk_event_controller_get_current_event_state")]
		public static extern Gdk.ModifierType GetCurrentEventState(EventController* controller);
		[LinkName("gtk_event_controller_get_current_event_time")]
		public static extern c_uint GetCurrentEventTime(EventController* controller);
		[LinkName("gtk_event_controller_get_name")]
		public static extern char8* GetName(EventController* controller);
		[LinkName("gtk_event_controller_get_propagation_limit")]
		public static extern PropagationLimit GetPropagationLimit(EventController* controller);
		[LinkName("gtk_event_controller_get_propagation_phase")]
		public static extern PropagationPhase GetPropagationPhase(EventController* controller);
		[LinkName("gtk_event_controller_get_widget")]
		public static extern Widget* GetWidget(EventController* controller);
		[LinkName("gtk_event_controller_reset")]
		public static extern void Reset(EventController* controller);
		[LinkName("gtk_event_controller_set_name")]
		public static extern void SetName(EventController* controller, char8* name);
		[LinkName("gtk_event_controller_set_propagation_limit")]
		public static extern void SetPropagationLimit(EventController* controller, PropagationLimit limit);
		[LinkName("gtk_event_controller_set_propagation_phase")]
		public static extern void SetPropagationPhase(EventController* controller, PropagationPhase phase);
		[LinkName("gtk_event_controller_set_static_name")]
		public static extern void SetStaticName(EventController* controller, char8* name);
	}
	[CRepr]
	public struct EventControllerFocus : EventController
	{
		[LinkName("gtk_event_controller_focus_new")]
		public static extern EventController* New();
		[LinkName("gtk_event_controller_focus_contains_focus")]
		public static extern c_int ContainsFocus(EventControllerFocus* self);
		[LinkName("gtk_event_controller_focus_is_focus")]
		public static extern c_int IsFocus(EventControllerFocus* self);
		public function void EnterFunc(EventControllerFocus* self, void* user_data);
		public function void LeaveFunc(EventControllerFocus* self, void* user_data);
	}
	[CRepr]
	public struct EventControllerKey : EventController
	{
		[LinkName("gtk_event_controller_key_new")]
		public static extern EventController* New();
		[LinkName("gtk_event_controller_key_forward")]
		public static extern c_int Forward(EventControllerKey* controller, Widget* widget);
		[LinkName("gtk_event_controller_key_get_group")]
		public static extern c_uint GetGroup(EventControllerKey* controller);
		[LinkName("gtk_event_controller_key_get_im_context")]
		public static extern IMContext* GetImContext(EventControllerKey* controller);
		[LinkName("gtk_event_controller_key_set_im_context")]
		public static extern void SetImContext(EventControllerKey* controller, IMContext* im_context);
		public function void ImUpdateFunc(EventControllerKey* self, void* user_data);
		public function c_int KeyPressedFunc(EventControllerKey* self, c_uint keyval, c_uint keycode, Gdk.ModifierType state, void* user_data);
		public function void KeyReleasedFunc(EventControllerKey* self, c_uint keyval, c_uint keycode, Gdk.ModifierType state, void* user_data);
		public function c_int ModifiersFunc(EventControllerKey* self, Gdk.ModifierType keyval, void* user_data);
	}
	[CRepr]
	public struct EventControllerLegacy : EventController
	{
		[LinkName("gtk_event_controller_legacy_new")]
		public static extern EventController* New();
		public function c_int EventFunc(EventControllerLegacy* self, Gdk.Event event, void* user_data);
	}
	[CRepr]
	public struct EventControllerMotion : EventController
	{
		[LinkName("gtk_event_controller_motion_new")]
		public static extern EventController* New();
		[LinkName("gtk_event_controller_motion_contains_pointer")]
		public static extern c_int ContainsPointer(EventControllerMotion* self);
		[LinkName("gtk_event_controller_motion_is_pointer")]
		public static extern c_int IsPointer(EventControllerMotion* self);
		public function void EnterFunc(EventControllerMotion* self, double x, double y, void* user_data);
		public function void LeaveFunc(EventControllerMotion* self, void* user_data);
		public function void MotionFunc(EventControllerMotion* self, double x, double y, void* user_data);
	}
	[CRepr]
	public struct EventControllerScroll : EventController
	{
		[LinkName("gtk_event_controller_scroll_new")]
		public static extern EventController* New(EventControllerScrollFlags flags);
		[LinkName("gtk_event_controller_scroll_get_flags")]
		public static extern EventControllerScrollFlags GetFlags(EventControllerScroll* scroll);
		[LinkName("gtk_event_controller_scroll_get_unit")]
		public static extern Gdk.ScrollUnit GetUnit(EventControllerScroll* scroll);
		[LinkName("gtk_event_controller_scroll_set_flags")]
		public static extern void SetFlags(EventControllerScroll* scroll, EventControllerScrollFlags flags);
		public function void DecelerateFunc(EventControllerScroll* self, double vel_x, double vel_y, void* user_data);
		public function c_int ScrollFunc(EventControllerScroll* self, double dx, double dy, void* user_data);
		public function void ScrollBeginFunc(EventControllerScroll* self, void* user_data);
		public function void ScrollEndFunc(EventControllerScroll* self, void* user_data);
	}
	[CRepr]
	public struct EveryFilter : MultiFilter
	{
		[LinkName("gtk_every_filter_new")]
		public static extern EveryFilter* New();
	}
	[CRepr]
	public struct Expander : Widget
	{
		[LinkName("gtk_expander_new")]
		public static extern Widget* New(char8* label);
		[LinkName("gtk_expander_new_with_mnemonic")]
		public static extern Widget* NewWithMnemonic(char8* label);
		[LinkName("gtk_expander_get_child")]
		public static extern Widget* GetChild(Expander* expander);
		[LinkName("gtk_expander_get_expanded")]
		public static extern c_int GetExpanded(Expander* expander);
		[LinkName("gtk_expander_get_label")]
		public static extern char8* GetLabel(Expander* expander);
		[LinkName("gtk_expander_get_label_widget")]
		public static extern Widget* GetLabelWidget(Expander* expander);
		[LinkName("gtk_expander_get_resize_toplevel")]
		public static extern c_int GetResizeToplevel(Expander* expander);
		[LinkName("gtk_expander_get_use_markup")]
		public static extern c_int GetUseMarkup(Expander* expander);
		[LinkName("gtk_expander_get_use_underline")]
		public static extern c_int GetUseUnderline(Expander* expander);
		[LinkName("gtk_expander_set_child")]
		public static extern void SetChild(Expander* expander, Widget* child);
		[LinkName("gtk_expander_set_expanded")]
		public static extern void SetExpanded(Expander* expander, c_int expanded);
		[LinkName("gtk_expander_set_label")]
		public static extern void SetLabel(Expander* expander, char8* label);
		[LinkName("gtk_expander_set_label_widget")]
		public static extern void SetLabelWidget(Expander* expander, Widget* label_widget);
		[LinkName("gtk_expander_set_resize_toplevel")]
		public static extern void SetResizeToplevel(Expander* expander, c_int resize_toplevel);
		[LinkName("gtk_expander_set_use_markup")]
		public static extern void SetUseMarkup(Expander* expander, c_int use_markup);
		[LinkName("gtk_expander_set_use_underline")]
		public static extern void SetUseUnderline(Expander* expander, c_int use_underline);
		public function void ActivateFunc(Expander* self, void* user_data);
	}
	[CRepr]
	public struct Expression
	{
		[LinkName("gtk_expression_bind")]
		public static extern ExpressionWatch* Bind(Expression* self, GObject.Object* target, char8* property, GObject.Object* this_);
		[LinkName("gtk_expression_evaluate")]
		public static extern c_int Evaluate(Expression* self, GObject.Object* this_, GObject.Value* value);
		[LinkName("gtk_expression_get_value_type")]
		public static extern GLib.Type GetValueType(Expression* self);
		[LinkName("gtk_expression_is_static")]
		public static extern c_int IsStatic(Expression* self);
		[LinkName("gtk_expression_ref")]
		public static extern Expression* Ref(Expression* self);
		[LinkName("gtk_expression_unref")]
		public static extern void Unref(Expression* self);
		[LinkName("gtk_expression_watch")]
		public static extern ExpressionWatch* Watch(Expression* self, GObject.Object* this_, ExpressionNotify notify, void* user_data, GLib.DestroyNotify user_destroy);
	}
	[CRepr]
	public struct FileChooserDialog : Dialog
	{
	}
	[CRepr]
	public struct FileChooserNative : NativeDialog
	{
		[LinkName("gtk_file_chooser_native_new")]
		public static extern FileChooserNative* New(char8* title, Window* parent, FileChooserAction action, char8* accept_label, char8* cancel_label);
		[LinkName("gtk_file_chooser_native_get_accept_label")]
		public static extern char8* GetAcceptLabel(FileChooserNative* self);
		[LinkName("gtk_file_chooser_native_get_cancel_label")]
		public static extern char8* GetCancelLabel(FileChooserNative* self);
		[LinkName("gtk_file_chooser_native_set_accept_label")]
		public static extern void SetAcceptLabel(FileChooserNative* self, char8* accept_label);
		[LinkName("gtk_file_chooser_native_set_cancel_label")]
		public static extern void SetCancelLabel(FileChooserNative* self, char8* cancel_label);
	}
	[CRepr]
	public struct FileChooserWidget : Widget
	{
		[LinkName("gtk_file_chooser_widget_new")]
		public static extern Widget* New(FileChooserAction action);
		public function void DesktopFolderFunc(FileChooserWidget* self, void* user_data);
		public function void DownFolderFunc(FileChooserWidget* self, void* user_data);
		public function void HomeFolderFunc(FileChooserWidget* self, void* user_data);
		public function void LocationPopupFunc(FileChooserWidget* self, char8* path, void* user_data);
		public function void LocationPopupOnPasteFunc(FileChooserWidget* self, void* user_data);
		public function void LocationTogglePopupFunc(FileChooserWidget* self, void* user_data);
		public function void PlacesShortcutFunc(FileChooserWidget* self, void* user_data);
		public function void QuickBookmarkFunc(FileChooserWidget* self, c_int bookmark_index, void* user_data);
		public function void RecentShortcutFunc(FileChooserWidget* self, void* user_data);
		public function void SearchShortcutFunc(FileChooserWidget* self, void* user_data);
		public function void ShowHiddenFunc(FileChooserWidget* self, void* user_data);
		public function void UpFolderFunc(FileChooserWidget* self, void* user_data);
	}
	[CRepr]
	public struct FileDialog : GObject.Object
	{
		[LinkName("gtk_file_dialog_new")]
		public static extern FileDialog* New();
		[LinkName("gtk_file_dialog_get_accept_label")]
		public static extern char8* GetAcceptLabel(FileDialog* self);
		[LinkName("gtk_file_dialog_get_default_filter")]
		public static extern FileFilter* GetDefaultFilter(FileDialog* self);
		[LinkName("gtk_file_dialog_get_filters")]
		public static extern Gio.ListModel* GetFilters(FileDialog* self);
		[LinkName("gtk_file_dialog_get_initial_file")]
		public static extern Gio.File* GetInitialFile(FileDialog* self);
		[LinkName("gtk_file_dialog_get_initial_folder")]
		public static extern Gio.File* GetInitialFolder(FileDialog* self);
		[LinkName("gtk_file_dialog_get_initial_name")]
		public static extern char8* GetInitialName(FileDialog* self);
		[LinkName("gtk_file_dialog_get_modal")]
		public static extern c_int GetModal(FileDialog* self);
		[LinkName("gtk_file_dialog_get_title")]
		public static extern char8* GetTitle(FileDialog* self);
		[LinkName("gtk_file_dialog_open")]
		public static extern void Open(FileDialog* self, Window* parent, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_file_dialog_open_finish")]
		public static extern Gio.File* OpenFinish(FileDialog* self, Gio.AsyncResult* result);
		[LinkName("gtk_file_dialog_open_multiple")]
		public static extern void OpenMultiple(FileDialog* self, Window* parent, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_file_dialog_open_multiple_finish")]
		public static extern Gio.ListModel* OpenMultipleFinish(FileDialog* self, Gio.AsyncResult* result);
		[LinkName("gtk_file_dialog_save")]
		public static extern void Save(FileDialog* self, Window* parent, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_file_dialog_save_finish")]
		public static extern Gio.File* SaveFinish(FileDialog* self, Gio.AsyncResult* result);
		[LinkName("gtk_file_dialog_select_folder")]
		public static extern void SelectFolder(FileDialog* self, Window* parent, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_file_dialog_select_folder_finish")]
		public static extern Gio.File* SelectFolderFinish(FileDialog* self, Gio.AsyncResult* result);
		[LinkName("gtk_file_dialog_select_multiple_folders")]
		public static extern void SelectMultipleFolders(FileDialog* self, Window* parent, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_file_dialog_select_multiple_folders_finish")]
		public static extern Gio.ListModel* SelectMultipleFoldersFinish(FileDialog* self, Gio.AsyncResult* result);
		[LinkName("gtk_file_dialog_set_accept_label")]
		public static extern void SetAcceptLabel(FileDialog* self, char8* accept_label);
		[LinkName("gtk_file_dialog_set_default_filter")]
		public static extern void SetDefaultFilter(FileDialog* self, FileFilter* filter);
		[LinkName("gtk_file_dialog_set_filters")]
		public static extern void SetFilters(FileDialog* self, Gio.ListModel* filters);
		[LinkName("gtk_file_dialog_set_initial_file")]
		public static extern void SetInitialFile(FileDialog* self, Gio.File* file);
		[LinkName("gtk_file_dialog_set_initial_folder")]
		public static extern void SetInitialFolder(FileDialog* self, Gio.File* folder);
		[LinkName("gtk_file_dialog_set_initial_name")]
		public static extern void SetInitialName(FileDialog* self, char8* name);
		[LinkName("gtk_file_dialog_set_modal")]
		public static extern void SetModal(FileDialog* self, c_int modal);
		[LinkName("gtk_file_dialog_set_title")]
		public static extern void SetTitle(FileDialog* self, char8* title);
	}
	[CRepr]
	public struct FileFilter : Filter
	{
		[LinkName("gtk_file_filter_new")]
		public static extern FileFilter* New();
		[LinkName("gtk_file_filter_new_from_gvariant")]
		public static extern FileFilter* NewFromGvariant(GLib.Variant* variant);
		[LinkName("gtk_file_filter_add_mime_type")]
		public static extern void AddMimeType(FileFilter* filter, char8* mime_type);
		[LinkName("gtk_file_filter_add_pattern")]
		public static extern void AddPattern(FileFilter* filter, char8* pattern);
		[LinkName("gtk_file_filter_add_pixbuf_formats")]
		public static extern void AddPixbufFormats(FileFilter* filter);
		[LinkName("gtk_file_filter_add_suffix")]
		public static extern void AddSuffix(FileFilter* filter, char8* suffix);
		[LinkName("gtk_file_filter_get_attributes")]
		public static extern char8** GetAttributes(FileFilter* filter);
		[LinkName("gtk_file_filter_get_name")]
		public static extern char8* GetName(FileFilter* filter);
		[LinkName("gtk_file_filter_set_name")]
		public static extern void SetName(FileFilter* filter, char8* name);
		[LinkName("gtk_file_filter_to_gvariant")]
		public static extern GLib.Variant* ToGvariant(FileFilter* filter);
	}
	[CRepr]
	public struct FileLauncher : GObject.Object
	{
		[LinkName("gtk_file_launcher_new")]
		public static extern FileLauncher* New(Gio.File* file);
		[LinkName("gtk_file_launcher_get_file")]
		public static extern Gio.File* GetFile(FileLauncher* self);
		[LinkName("gtk_file_launcher_launch")]
		public static extern void Launch(FileLauncher* self, Window* parent, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_file_launcher_launch_finish")]
		public static extern c_int LaunchFinish(FileLauncher* self, Gio.AsyncResult* result);
		[LinkName("gtk_file_launcher_open_containing_folder")]
		public static extern void OpenContainingFolder(FileLauncher* self, Window* parent, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_file_launcher_open_containing_folder_finish")]
		public static extern c_int OpenContainingFolderFinish(FileLauncher* self, Gio.AsyncResult* result);
		[LinkName("gtk_file_launcher_set_file")]
		public static extern void SetFile(FileLauncher* self, Gio.File* file);
	}
	[CRepr]
	public struct Filter : GObject.Object
	{
		[LinkName("gtk_filter_changed")]
		public static extern void Changed(Filter* self, FilterChange change);
		[LinkName("gtk_filter_get_strictness")]
		public static extern FilterMatch GetStrictness(Filter* self);
		[LinkName("gtk_filter_match")]
		public static extern c_int Match(Filter* self, GObject.Object* item);
		public function void ChangedFunc(Filter* self, FilterChange change, void* user_data);
	}
	[CRepr]
	public struct FilterListModel : GObject.Object
	{
		[LinkName("gtk_filter_list_model_new")]
		public static extern FilterListModel* New(Gio.ListModel* model, Filter* filter);
		[LinkName("gtk_filter_list_model_get_filter")]
		public static extern Filter* GetFilter(FilterListModel* self);
		[LinkName("gtk_filter_list_model_get_incremental")]
		public static extern c_int GetIncremental(FilterListModel* self);
		[LinkName("gtk_filter_list_model_get_model")]
		public static extern Gio.ListModel* GetModel(FilterListModel* self);
		[LinkName("gtk_filter_list_model_get_pending")]
		public static extern c_uint GetPending(FilterListModel* self);
		[LinkName("gtk_filter_list_model_set_filter")]
		public static extern void SetFilter(FilterListModel* self, Filter* filter);
		[LinkName("gtk_filter_list_model_set_incremental")]
		public static extern void SetIncremental(FilterListModel* self, c_int incremental);
		[LinkName("gtk_filter_list_model_set_model")]
		public static extern void SetModel(FilterListModel* self, Gio.ListModel* model);
	}
	[CRepr]
	public struct Fixed : Widget
	{
		[LinkName("gtk_fixed_new")]
		public static extern Widget* New();
		[LinkName("gtk_fixed_get_child_position")]
		public static extern void GetChildPosition(Fixed* fixed_, Widget* widget, double* x, double* y);
		[LinkName("gtk_fixed_get_child_transform")]
		public static extern Gsk.Transform* GetChildTransform(Fixed* fixed_, Widget* widget);
		[LinkName("gtk_fixed_move")]
		public static extern void Move(Fixed* fixed_, Widget* widget, double x, double y);
		[LinkName("gtk_fixed_put")]
		public static extern void Put(Fixed* fixed_, Widget* widget, double x, double y);
		[LinkName("gtk_fixed_remove")]
		public static extern void Remove(Fixed* fixed_, Widget* widget);
		[LinkName("gtk_fixed_set_child_transform")]
		public static extern void SetChildTransform(Fixed* fixed_, Widget* widget, Gsk.Transform* transform);
	}
	[CRepr]
	public struct FixedLayout : LayoutManager
	{
		[LinkName("gtk_fixed_layout_new")]
		public static extern LayoutManager* New();
	}
	[CRepr]
	public struct FixedLayoutChild : LayoutChild
	{
		[LinkName("gtk_fixed_layout_child_get_transform")]
		public static extern Gsk.Transform* GetTransform(FixedLayoutChild* child);
		[LinkName("gtk_fixed_layout_child_set_transform")]
		public static extern void SetTransform(FixedLayoutChild* child, Gsk.Transform* transform);
	}
	[CRepr]
	public struct FlattenListModel : GObject.Object
	{
		[LinkName("gtk_flatten_list_model_new")]
		public static extern FlattenListModel* New(Gio.ListModel* model);
		[LinkName("gtk_flatten_list_model_get_model")]
		public static extern Gio.ListModel* GetModel(FlattenListModel* self);
		[LinkName("gtk_flatten_list_model_get_model_for_item")]
		public static extern Gio.ListModel* GetModelForItem(FlattenListModel* self, c_uint position);
		[LinkName("gtk_flatten_list_model_set_model")]
		public static extern void SetModel(FlattenListModel* self, Gio.ListModel* model);
	}
	[CRepr]
	public struct FlowBox : Widget
	{
		[LinkName("gtk_flow_box_new")]
		public static extern Widget* New();
		[LinkName("gtk_flow_box_append")]
		public static extern void Append(FlowBox* self, Widget* child);
		[LinkName("gtk_flow_box_bind_model")]
		public static extern void BindModel(FlowBox* box_, Gio.ListModel* model, FlowBoxCreateWidgetFunc create_widget_func, void* user_data, GLib.DestroyNotify user_data_free_func);
		[LinkName("gtk_flow_box_get_activate_on_single_click")]
		public static extern c_int GetActivateOnSingleClick(FlowBox* box_);
		[LinkName("gtk_flow_box_get_child_at_index")]
		public static extern FlowBoxChild* GetChildAtIndex(FlowBox* box_, c_int idx);
		[LinkName("gtk_flow_box_get_child_at_pos")]
		public static extern FlowBoxChild* GetChildAtPos(FlowBox* box_, c_int x, c_int y);
		[LinkName("gtk_flow_box_get_column_spacing")]
		public static extern c_uint GetColumnSpacing(FlowBox* box_);
		[LinkName("gtk_flow_box_get_homogeneous")]
		public static extern c_int GetHomogeneous(FlowBox* box_);
		[LinkName("gtk_flow_box_get_max_children_per_line")]
		public static extern c_uint GetMaxChildrenPerLine(FlowBox* box_);
		[LinkName("gtk_flow_box_get_min_children_per_line")]
		public static extern c_uint GetMinChildrenPerLine(FlowBox* box_);
		[LinkName("gtk_flow_box_get_row_spacing")]
		public static extern c_uint GetRowSpacing(FlowBox* box_);
		[LinkName("gtk_flow_box_get_selected_children")]
		public static extern GLib.List* GetSelectedChildren(FlowBox* box_);
		[LinkName("gtk_flow_box_get_selection_mode")]
		public static extern SelectionMode GetSelectionMode(FlowBox* box_);
		[LinkName("gtk_flow_box_insert")]
		public static extern void Insert(FlowBox* box_, Widget* widget, c_int position);
		[LinkName("gtk_flow_box_invalidate_filter")]
		public static extern void InvalidateFilter(FlowBox* box_);
		[LinkName("gtk_flow_box_invalidate_sort")]
		public static extern void InvalidateSort(FlowBox* box_);
		[LinkName("gtk_flow_box_prepend")]
		public static extern void Prepend(FlowBox* self, Widget* child);
		[LinkName("gtk_flow_box_remove")]
		public static extern void Remove(FlowBox* box_, Widget* widget);
		[LinkName("gtk_flow_box_remove_all")]
		public static extern void RemoveAll(FlowBox* box_);
		[LinkName("gtk_flow_box_select_all")]
		public static extern void SelectAll(FlowBox* box_);
		[LinkName("gtk_flow_box_select_child")]
		public static extern void SelectChild(FlowBox* box_, FlowBoxChild* child);
		[LinkName("gtk_flow_box_selected_foreach")]
		public static extern void SelectedForeach(FlowBox* box_, FlowBoxForeachFunc func, void* data);
		[LinkName("gtk_flow_box_set_activate_on_single_click")]
		public static extern void SetActivateOnSingleClick(FlowBox* box_, c_int single);
		[LinkName("gtk_flow_box_set_column_spacing")]
		public static extern void SetColumnSpacing(FlowBox* box_, c_uint spacing);
		[LinkName("gtk_flow_box_set_filter_func")]
		public static extern void SetFilterFunc(FlowBox* box_, FlowBoxFilterFunc filter_func, void* user_data, GLib.DestroyNotify destroy);
		[LinkName("gtk_flow_box_set_hadjustment")]
		public static extern void SetHadjustment(FlowBox* box_, Adjustment* adjustment);
		[LinkName("gtk_flow_box_set_homogeneous")]
		public static extern void SetHomogeneous(FlowBox* box_, c_int homogeneous);
		[LinkName("gtk_flow_box_set_max_children_per_line")]
		public static extern void SetMaxChildrenPerLine(FlowBox* box_, c_uint n_children);
		[LinkName("gtk_flow_box_set_min_children_per_line")]
		public static extern void SetMinChildrenPerLine(FlowBox* box_, c_uint n_children);
		[LinkName("gtk_flow_box_set_row_spacing")]
		public static extern void SetRowSpacing(FlowBox* box_, c_uint spacing);
		[LinkName("gtk_flow_box_set_selection_mode")]
		public static extern void SetSelectionMode(FlowBox* box_, SelectionMode mode);
		[LinkName("gtk_flow_box_set_sort_func")]
		public static extern void SetSortFunc(FlowBox* box_, FlowBoxSortFunc sort_func, void* user_data, GLib.DestroyNotify destroy);
		[LinkName("gtk_flow_box_set_vadjustment")]
		public static extern void SetVadjustment(FlowBox* box_, Adjustment* adjustment);
		[LinkName("gtk_flow_box_unselect_all")]
		public static extern void UnselectAll(FlowBox* box_);
		[LinkName("gtk_flow_box_unselect_child")]
		public static extern void UnselectChild(FlowBox* box_, FlowBoxChild* child);
		public function void ActivateCursorChildFunc(FlowBox* self, void* user_data);
		public function void ChildActivatedFunc(FlowBox* self, FlowBoxChild child, void* user_data);
		public function c_int MoveCursorFunc(FlowBox* self, MovementStep step, c_int count, c_int extend, c_int modify, void* user_data);
		public function void SelectAllFunc(FlowBox* self, void* user_data);
		public function void SelectedChildrenChangedFunc(FlowBox* self, void* user_data);
		public function void ToggleCursorChildFunc(FlowBox* self, void* user_data);
		public function void UnselectAllFunc(FlowBox* self, void* user_data);
	}
	[CRepr]
	public struct FlowBoxChild : Widget
	{
		[LinkName("gtk_flow_box_child_new")]
		public static extern Widget* New();
		[LinkName("gtk_flow_box_child_changed")]
		public static extern void Changed(FlowBoxChild* child);
		[LinkName("gtk_flow_box_child_get_child")]
		public static extern Widget* GetChild(FlowBoxChild* self);
		[LinkName("gtk_flow_box_child_get_index")]
		public static extern c_int GetIndex(FlowBoxChild* child);
		[LinkName("gtk_flow_box_child_is_selected")]
		public static extern c_int IsSelected(FlowBoxChild* child);
		[LinkName("gtk_flow_box_child_set_child")]
		public static extern void SetChild(FlowBoxChild* self, Widget* child);
		public function void ActivateFunc(FlowBoxChild* self, void* user_data);
	}
	[CRepr]
	public struct FontButton : Widget
	{
		[LinkName("gtk_font_button_new")]
		public static extern Widget* New();
		[LinkName("gtk_font_button_new_with_font")]
		public static extern Widget* NewWithFont(char8* fontname);
		[LinkName("gtk_font_button_get_modal")]
		public static extern c_int GetModal(FontButton* font_button);
		[LinkName("gtk_font_button_get_title")]
		public static extern char8* GetTitle(FontButton* font_button);
		[LinkName("gtk_font_button_get_use_font")]
		public static extern c_int GetUseFont(FontButton* font_button);
		[LinkName("gtk_font_button_get_use_size")]
		public static extern c_int GetUseSize(FontButton* font_button);
		[LinkName("gtk_font_button_set_modal")]
		public static extern void SetModal(FontButton* font_button, c_int modal);
		[LinkName("gtk_font_button_set_title")]
		public static extern void SetTitle(FontButton* font_button, char8* title);
		[LinkName("gtk_font_button_set_use_font")]
		public static extern void SetUseFont(FontButton* font_button, c_int use_font);
		[LinkName("gtk_font_button_set_use_size")]
		public static extern void SetUseSize(FontButton* font_button, c_int use_size);
		public function void ActivateFunc(FontButton* self, void* user_data);
		public function void FontSetFunc(FontButton* self, void* user_data);
	}
	[CRepr]
	public struct FontChooserDialog : Dialog
	{
		[LinkName("gtk_font_chooser_dialog_new")]
		public static extern Widget* New(char8* title, Window* parent);
	}
	[CRepr]
	public struct FontChooserWidget : Widget
	{
		[LinkName("gtk_font_chooser_widget_new")]
		public static extern Widget* New();
	}
	[CRepr]
	public struct FontDialog : GObject.Object
	{
		[LinkName("gtk_font_dialog_new")]
		public static extern FontDialog* New();
		[LinkName("gtk_font_dialog_choose_face")]
		public static extern void ChooseFace(FontDialog* self, Window* parent, Pango.FontFace* initial_value, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_font_dialog_choose_face_finish")]
		public static extern Pango.FontFace* ChooseFaceFinish(FontDialog* self, Gio.AsyncResult* result);
		[LinkName("gtk_font_dialog_choose_family")]
		public static extern void ChooseFamily(FontDialog* self, Window* parent, Pango.FontFamily* initial_value, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_font_dialog_choose_family_finish")]
		public static extern Pango.FontFamily* ChooseFamilyFinish(FontDialog* self, Gio.AsyncResult* result);
		[LinkName("gtk_font_dialog_choose_font")]
		public static extern void ChooseFont(FontDialog* self, Window* parent, Pango.FontDescription* initial_value, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_font_dialog_choose_font_and_features")]
		public static extern void ChooseFontAndFeatures(FontDialog* self, Window* parent, Pango.FontDescription* initial_value, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_font_dialog_choose_font_and_features_finish")]
		public static extern c_int ChooseFontAndFeaturesFinish(FontDialog* self, Gio.AsyncResult* result, Pango.FontDescription** font_desc, char8** font_features, Pango.Language** language);
		[LinkName("gtk_font_dialog_choose_font_finish")]
		public static extern Pango.FontDescription* ChooseFontFinish(FontDialog* self, Gio.AsyncResult* result);
		[LinkName("gtk_font_dialog_get_filter")]
		public static extern Filter* GetFilter(FontDialog* self);
		[LinkName("gtk_font_dialog_get_font_map")]
		public static extern Pango.FontMap* GetFontMap(FontDialog* self);
		[LinkName("gtk_font_dialog_get_language")]
		public static extern Pango.Language* GetLanguage(FontDialog* self);
		[LinkName("gtk_font_dialog_get_modal")]
		public static extern c_int GetModal(FontDialog* self);
		[LinkName("gtk_font_dialog_get_title")]
		public static extern char8* GetTitle(FontDialog* self);
		[LinkName("gtk_font_dialog_set_filter")]
		public static extern void SetFilter(FontDialog* self, Filter* filter);
		[LinkName("gtk_font_dialog_set_font_map")]
		public static extern void SetFontMap(FontDialog* self, Pango.FontMap* fontmap);
		[LinkName("gtk_font_dialog_set_language")]
		public static extern void SetLanguage(FontDialog* self, Pango.Language* language);
		[LinkName("gtk_font_dialog_set_modal")]
		public static extern void SetModal(FontDialog* self, c_int modal);
		[LinkName("gtk_font_dialog_set_title")]
		public static extern void SetTitle(FontDialog* self, char8* title);
	}
	[CRepr]
	public struct FontDialogButton : Widget
	{
		[LinkName("gtk_font_dialog_button_new")]
		public static extern Widget* New(FontDialog* dialog);
		[LinkName("gtk_font_dialog_button_get_dialog")]
		public static extern FontDialog* GetDialog(FontDialogButton* self);
		[LinkName("gtk_font_dialog_button_get_font_desc")]
		public static extern Pango.FontDescription* GetFontDesc(FontDialogButton* self);
		[LinkName("gtk_font_dialog_button_get_font_features")]
		public static extern char8* GetFontFeatures(FontDialogButton* self);
		[LinkName("gtk_font_dialog_button_get_language")]
		public static extern Pango.Language* GetLanguage(FontDialogButton* self);
		[LinkName("gtk_font_dialog_button_get_level")]
		public static extern FontLevel GetLevel(FontDialogButton* self);
		[LinkName("gtk_font_dialog_button_get_use_font")]
		public static extern c_int GetUseFont(FontDialogButton* self);
		[LinkName("gtk_font_dialog_button_get_use_size")]
		public static extern c_int GetUseSize(FontDialogButton* self);
		[LinkName("gtk_font_dialog_button_set_dialog")]
		public static extern void SetDialog(FontDialogButton* self, FontDialog* dialog);
		[LinkName("gtk_font_dialog_button_set_font_desc")]
		public static extern void SetFontDesc(FontDialogButton* self, Pango.FontDescription* font_desc);
		[LinkName("gtk_font_dialog_button_set_font_features")]
		public static extern void SetFontFeatures(FontDialogButton* self, char8* font_features);
		[LinkName("gtk_font_dialog_button_set_language")]
		public static extern void SetLanguage(FontDialogButton* self, Pango.Language* language);
		[LinkName("gtk_font_dialog_button_set_level")]
		public static extern void SetLevel(FontDialogButton* self, FontLevel level);
		[LinkName("gtk_font_dialog_button_set_use_font")]
		public static extern void SetUseFont(FontDialogButton* self, c_int use_font);
		[LinkName("gtk_font_dialog_button_set_use_size")]
		public static extern void SetUseSize(FontDialogButton* self, c_int use_size);
	}
	[CRepr]
	public struct Frame : Widget
	{
		[LinkName("gtk_frame_new")]
		public static extern Widget* New(char8* label);
		[LinkName("gtk_frame_get_child")]
		public static extern Widget* GetChild(Frame* frame);
		[LinkName("gtk_frame_get_label")]
		public static extern char8* GetLabel(Frame* frame);
		[LinkName("gtk_frame_get_label_align")]
		public static extern float GetLabelAlign(Frame* frame);
		[LinkName("gtk_frame_get_label_widget")]
		public static extern Widget* GetLabelWidget(Frame* frame);
		[LinkName("gtk_frame_set_child")]
		public static extern void SetChild(Frame* frame, Widget* child);
		[LinkName("gtk_frame_set_label")]
		public static extern void SetLabel(Frame* frame, char8* label);
		[LinkName("gtk_frame_set_label_align")]
		public static extern void SetLabelAlign(Frame* frame, float xalign);
		[LinkName("gtk_frame_set_label_widget")]
		public static extern void SetLabelWidget(Frame* frame, Widget* label_widget);
	}
	[CRepr]
	public struct GLArea : Widget
	{
		[LinkName("gtk_gl_area_new")]
		public static extern Widget* New();
		[LinkName("gtk_gl_area_attach_buffers")]
		public static extern void AttachBuffers(GLArea* area);
		[LinkName("gtk_gl_area_get_allowed_apis")]
		public static extern Gdk.GLAPI GetAllowedApis(GLArea* area);
		[LinkName("gtk_gl_area_get_api")]
		public static extern Gdk.GLAPI GetApi(GLArea* area);
		[LinkName("gtk_gl_area_get_auto_render")]
		public static extern c_int GetAutoRender(GLArea* area);
		[LinkName("gtk_gl_area_get_context")]
		public static extern Gdk.GLContext* GetContext(GLArea* area);
		[LinkName("gtk_gl_area_get_error")]
		public static extern GLib.Error* GetError(GLArea* area);
		[LinkName("gtk_gl_area_get_has_depth_buffer")]
		public static extern c_int GetHasDepthBuffer(GLArea* area);
		[LinkName("gtk_gl_area_get_has_stencil_buffer")]
		public static extern c_int GetHasStencilBuffer(GLArea* area);
		[LinkName("gtk_gl_area_get_required_version")]
		public static extern void GetRequiredVersion(GLArea* area, c_int* major, c_int* minor);
		[LinkName("gtk_gl_area_get_use_es")]
		public static extern c_int GetUseEs(GLArea* area);
		[LinkName("gtk_gl_area_make_current")]
		public static extern void MakeCurrent(GLArea* area);
		[LinkName("gtk_gl_area_queue_render")]
		public static extern void QueueRender(GLArea* area);
		[LinkName("gtk_gl_area_set_allowed_apis")]
		public static extern void SetAllowedApis(GLArea* area, Gdk.GLAPI apis);
		[LinkName("gtk_gl_area_set_auto_render")]
		public static extern void SetAutoRender(GLArea* area, c_int auto_render);
		[LinkName("gtk_gl_area_set_error")]
		public static extern void SetError(GLArea* area, GLib.Error* error);
		[LinkName("gtk_gl_area_set_has_depth_buffer")]
		public static extern void SetHasDepthBuffer(GLArea* area, c_int has_depth_buffer);
		[LinkName("gtk_gl_area_set_has_stencil_buffer")]
		public static extern void SetHasStencilBuffer(GLArea* area, c_int has_stencil_buffer);
		[LinkName("gtk_gl_area_set_required_version")]
		public static extern void SetRequiredVersion(GLArea* area, c_int major, c_int minor);
		[LinkName("gtk_gl_area_set_use_es")]
		public static extern void SetUseEs(GLArea* area, c_int use_es);
		public function Gdk.GLContext CreateContextFunc(GLArea* self, void* user_data);
		public function c_int RenderFunc(GLArea* self, Gdk.GLContext context, void* user_data);
		public function void ResizeFunc(GLArea* self, c_int width, c_int height, void* user_data);
	}
	[CRepr]
	public struct Gesture : EventController
	{
		[LinkName("gtk_gesture_get_bounding_box")]
		public static extern c_int GetBoundingBox(Gesture* gesture, Gdk.Rectangle* rect);
		[LinkName("gtk_gesture_get_bounding_box_center")]
		public static extern c_int GetBoundingBoxCenter(Gesture* gesture, double* x, double* y);
		[LinkName("gtk_gesture_get_device")]
		public static extern Gdk.Device* GetDevice(Gesture* gesture);
		[LinkName("gtk_gesture_get_group")]
		public static extern GLib.List* GetGroup(Gesture* gesture);
		[LinkName("gtk_gesture_get_last_event")]
		public static extern Gdk.Event* GetLastEvent(Gesture* gesture, Gdk.EventSequence* sequence);
		[LinkName("gtk_gesture_get_last_updated_sequence")]
		public static extern Gdk.EventSequence* GetLastUpdatedSequence(Gesture* gesture);
		[LinkName("gtk_gesture_get_point")]
		public static extern c_int GetPoint(Gesture* gesture, Gdk.EventSequence* sequence, double* x, double* y);
		[LinkName("gtk_gesture_get_sequence_state")]
		public static extern EventSequenceState GetSequenceState(Gesture* gesture, Gdk.EventSequence* sequence);
		[LinkName("gtk_gesture_get_sequences")]
		public static extern GLib.List* GetSequences(Gesture* gesture);
		[LinkName("gtk_gesture_group")]
		public static extern void Group(Gesture* group_gesture, Gesture* gesture);
		[LinkName("gtk_gesture_handles_sequence")]
		public static extern c_int HandlesSequence(Gesture* gesture, Gdk.EventSequence* sequence);
		[LinkName("gtk_gesture_is_active")]
		public static extern c_int IsActive(Gesture* gesture);
		[LinkName("gtk_gesture_is_grouped_with")]
		public static extern c_int IsGroupedWith(Gesture* gesture, Gesture* other);
		[LinkName("gtk_gesture_is_recognized")]
		public static extern c_int IsRecognized(Gesture* gesture);
		[LinkName("gtk_gesture_set_sequence_state")]
		public static extern c_int SetSequenceState(Gesture* gesture, Gdk.EventSequence* sequence, EventSequenceState state);
		[LinkName("gtk_gesture_set_state")]
		public static extern c_int SetState(Gesture* gesture, EventSequenceState state);
		[LinkName("gtk_gesture_ungroup")]
		public static extern void Ungroup(Gesture* gesture);
		public function void BeginFunc(Gesture* self, Gdk.EventSequence sequence, void* user_data);
		public function void CancelFunc(Gesture* self, Gdk.EventSequence sequence, void* user_data);
		public function void EndFunc(Gesture* self, Gdk.EventSequence sequence, void* user_data);
		public function void SequenceStateChangedFunc(Gesture* self, Gdk.EventSequence sequence, EventSequenceState state, void* user_data);
		public function void UpdateFunc(Gesture* self, Gdk.EventSequence sequence, void* user_data);
	}
	[CRepr]
	public struct GestureClick : GestureSingle
	{
		[LinkName("gtk_gesture_click_new")]
		public static extern Gesture* New();
		public function void PressedFunc(GestureClick* self, c_int n_press, double x, double y, void* user_data);
		public function void ReleasedFunc(GestureClick* self, c_int n_press, double x, double y, void* user_data);
		public function void StoppedFunc(GestureClick* self, void* user_data);
		public function void UnpairedReleaseFunc(GestureClick* self, double x, double y, c_uint button, Gdk.EventSequence sequence, void* user_data);
	}
	[CRepr]
	public struct GestureDrag : GestureSingle
	{
		[LinkName("gtk_gesture_drag_new")]
		public static extern Gesture* New();
		[LinkName("gtk_gesture_drag_get_offset")]
		public static extern c_int GetOffset(GestureDrag* gesture, double* x, double* y);
		[LinkName("gtk_gesture_drag_get_start_point")]
		public static extern c_int GetStartPoint(GestureDrag* gesture, double* x, double* y);
		public function void DragBeginFunc(GestureDrag* self, double start_x, double start_y, void* user_data);
		public function void DragEndFunc(GestureDrag* self, double offset_x, double offset_y, void* user_data);
		public function void DragUpdateFunc(GestureDrag* self, double offset_x, double offset_y, void* user_data);
	}
	[CRepr]
	public struct GestureLongPress : GestureSingle
	{
		[LinkName("gtk_gesture_long_press_new")]
		public static extern Gesture* New();
		[LinkName("gtk_gesture_long_press_get_delay_factor")]
		public static extern double GetDelayFactor(GestureLongPress* gesture);
		[LinkName("gtk_gesture_long_press_set_delay_factor")]
		public static extern void SetDelayFactor(GestureLongPress* gesture, double delay_factor);
		public function void CancelledFunc(GestureLongPress* self, void* user_data);
		public function void PressedFunc(GestureLongPress* self, double x, double y, void* user_data);
	}
	[CRepr]
	public struct GesturePan : GestureDrag
	{
		[LinkName("gtk_gesture_pan_new")]
		public static extern Gesture* New(Orientation orientation);
		[LinkName("gtk_gesture_pan_get_orientation")]
		public static extern Orientation GetOrientation(GesturePan* gesture);
		[LinkName("gtk_gesture_pan_set_orientation")]
		public static extern void SetOrientation(GesturePan* gesture, Orientation orientation);
		public function void PanFunc(GesturePan* self, PanDirection direction, double offset, void* user_data);
	}
	[CRepr]
	public struct GestureRotate : Gesture
	{
		[LinkName("gtk_gesture_rotate_new")]
		public static extern Gesture* New();
		[LinkName("gtk_gesture_rotate_get_angle_delta")]
		public static extern double GetAngleDelta(GestureRotate* gesture);
		public function void AngleChangedFunc(GestureRotate* self, double angle, double angle_delta, void* user_data);
	}
	[CRepr]
	public struct GestureSingle : Gesture
	{
		[LinkName("gtk_gesture_single_get_button")]
		public static extern c_uint GetButton(GestureSingle* gesture);
		[LinkName("gtk_gesture_single_get_current_button")]
		public static extern c_uint GetCurrentButton(GestureSingle* gesture);
		[LinkName("gtk_gesture_single_get_current_sequence")]
		public static extern Gdk.EventSequence* GetCurrentSequence(GestureSingle* gesture);
		[LinkName("gtk_gesture_single_get_exclusive")]
		public static extern c_int GetExclusive(GestureSingle* gesture);
		[LinkName("gtk_gesture_single_get_touch_only")]
		public static extern c_int GetTouchOnly(GestureSingle* gesture);
		[LinkName("gtk_gesture_single_set_button")]
		public static extern void SetButton(GestureSingle* gesture, c_uint button);
		[LinkName("gtk_gesture_single_set_exclusive")]
		public static extern void SetExclusive(GestureSingle* gesture, c_int exclusive);
		[LinkName("gtk_gesture_single_set_touch_only")]
		public static extern void SetTouchOnly(GestureSingle* gesture, c_int touch_only);
	}
	[CRepr]
	public struct GestureStylus : GestureSingle
	{
		[LinkName("gtk_gesture_stylus_new")]
		public static extern Gesture* New();
		[LinkName("gtk_gesture_stylus_get_axes")]
		public static extern c_int GetAxes(GestureStylus* gesture, Gdk.AxisUse* axes, double** values);
		[LinkName("gtk_gesture_stylus_get_axis")]
		public static extern c_int GetAxis(GestureStylus* gesture, Gdk.AxisUse axis, double* value);
		[LinkName("gtk_gesture_stylus_get_backlog")]
		public static extern c_int GetBacklog(GestureStylus* gesture, Gdk.TimeCoord** backlog, c_uint* n_elems);
		[LinkName("gtk_gesture_stylus_get_device_tool")]
		public static extern Gdk.DeviceTool* GetDeviceTool(GestureStylus* gesture);
		[LinkName("gtk_gesture_stylus_get_stylus_only")]
		public static extern c_int GetStylusOnly(GestureStylus* gesture);
		[LinkName("gtk_gesture_stylus_set_stylus_only")]
		public static extern void SetStylusOnly(GestureStylus* gesture, c_int stylus_only);
		public function void DownFunc(GestureStylus* self, double x, double y, void* user_data);
		public function void MotionFunc(GestureStylus* self, double x, double y, void* user_data);
		public function void ProximityFunc(GestureStylus* self, double x, double y, void* user_data);
		public function void UpFunc(GestureStylus* self, double x, double y, void* user_data);
	}
	[CRepr]
	public struct GestureSwipe : GestureSingle
	{
		[LinkName("gtk_gesture_swipe_new")]
		public static extern Gesture* New();
		[LinkName("gtk_gesture_swipe_get_velocity")]
		public static extern c_int GetVelocity(GestureSwipe* gesture, double* velocity_x, double* velocity_y);
		public function void SwipeFunc(GestureSwipe* self, double velocity_x, double velocity_y, void* user_data);
	}
	[CRepr]
	public struct GestureZoom : Gesture
	{
		[LinkName("gtk_gesture_zoom_new")]
		public static extern Gesture* New();
		[LinkName("gtk_gesture_zoom_get_scale_delta")]
		public static extern double GetScaleDelta(GestureZoom* gesture);
		public function void ScaleChangedFunc(GestureZoom* self, double scale, void* user_data);
	}
	[CRepr]
	public struct Grid : Widget
	{
		[LinkName("gtk_grid_new")]
		public static extern Widget* New();
		[LinkName("gtk_grid_attach")]
		public static extern void Attach(Grid* grid, Widget* child, c_int column, c_int row, c_int width, c_int height);
		[LinkName("gtk_grid_attach_next_to")]
		public static extern void AttachNextTo(Grid* grid, Widget* child, Widget* sibling, PositionType side, c_int width, c_int height);
		[LinkName("gtk_grid_get_baseline_row")]
		public static extern c_int GetBaselineRow(Grid* grid);
		[LinkName("gtk_grid_get_child_at")]
		public static extern Widget* GetChildAt(Grid* grid, c_int column, c_int row);
		[LinkName("gtk_grid_get_column_homogeneous")]
		public static extern c_int GetColumnHomogeneous(Grid* grid);
		[LinkName("gtk_grid_get_column_spacing")]
		public static extern c_uint GetColumnSpacing(Grid* grid);
		[LinkName("gtk_grid_get_row_baseline_position")]
		public static extern BaselinePosition GetRowBaselinePosition(Grid* grid, c_int row);
		[LinkName("gtk_grid_get_row_homogeneous")]
		public static extern c_int GetRowHomogeneous(Grid* grid);
		[LinkName("gtk_grid_get_row_spacing")]
		public static extern c_uint GetRowSpacing(Grid* grid);
		[LinkName("gtk_grid_insert_column")]
		public static extern void InsertColumn(Grid* grid, c_int position);
		[LinkName("gtk_grid_insert_next_to")]
		public static extern void InsertNextTo(Grid* grid, Widget* sibling, PositionType side);
		[LinkName("gtk_grid_insert_row")]
		public static extern void InsertRow(Grid* grid, c_int position);
		[LinkName("gtk_grid_query_child")]
		public static extern void QueryChild(Grid* grid, Widget* child, c_int* column, c_int* row, c_int* width, c_int* height);
		[LinkName("gtk_grid_remove")]
		public static extern void Remove(Grid* grid, Widget* child);
		[LinkName("gtk_grid_remove_column")]
		public static extern void RemoveColumn(Grid* grid, c_int position);
		[LinkName("gtk_grid_remove_row")]
		public static extern void RemoveRow(Grid* grid, c_int position);
		[LinkName("gtk_grid_set_baseline_row")]
		public static extern void SetBaselineRow(Grid* grid, c_int row);
		[LinkName("gtk_grid_set_column_homogeneous")]
		public static extern void SetColumnHomogeneous(Grid* grid, c_int homogeneous);
		[LinkName("gtk_grid_set_column_spacing")]
		public static extern void SetColumnSpacing(Grid* grid, c_uint spacing);
		[LinkName("gtk_grid_set_row_baseline_position")]
		public static extern void SetRowBaselinePosition(Grid* grid, c_int row, BaselinePosition pos);
		[LinkName("gtk_grid_set_row_homogeneous")]
		public static extern void SetRowHomogeneous(Grid* grid, c_int homogeneous);
		[LinkName("gtk_grid_set_row_spacing")]
		public static extern void SetRowSpacing(Grid* grid, c_uint spacing);
	}
	[CRepr]
	public struct GridLayout : LayoutManager
	{
		[LinkName("gtk_grid_layout_new")]
		public static extern LayoutManager* New();
		[LinkName("gtk_grid_layout_get_baseline_row")]
		public static extern c_int GetBaselineRow(GridLayout* grid);
		[LinkName("gtk_grid_layout_get_column_homogeneous")]
		public static extern c_int GetColumnHomogeneous(GridLayout* grid);
		[LinkName("gtk_grid_layout_get_column_spacing")]
		public static extern c_uint GetColumnSpacing(GridLayout* grid);
		[LinkName("gtk_grid_layout_get_row_baseline_position")]
		public static extern BaselinePosition GetRowBaselinePosition(GridLayout* grid, c_int row);
		[LinkName("gtk_grid_layout_get_row_homogeneous")]
		public static extern c_int GetRowHomogeneous(GridLayout* grid);
		[LinkName("gtk_grid_layout_get_row_spacing")]
		public static extern c_uint GetRowSpacing(GridLayout* grid);
		[LinkName("gtk_grid_layout_set_baseline_row")]
		public static extern void SetBaselineRow(GridLayout* grid, c_int row);
		[LinkName("gtk_grid_layout_set_column_homogeneous")]
		public static extern void SetColumnHomogeneous(GridLayout* grid, c_int homogeneous);
		[LinkName("gtk_grid_layout_set_column_spacing")]
		public static extern void SetColumnSpacing(GridLayout* grid, c_uint spacing);
		[LinkName("gtk_grid_layout_set_row_baseline_position")]
		public static extern void SetRowBaselinePosition(GridLayout* grid, c_int row, BaselinePosition pos);
		[LinkName("gtk_grid_layout_set_row_homogeneous")]
		public static extern void SetRowHomogeneous(GridLayout* grid, c_int homogeneous);
		[LinkName("gtk_grid_layout_set_row_spacing")]
		public static extern void SetRowSpacing(GridLayout* grid, c_uint spacing);
	}
	[CRepr]
	public struct GridLayoutChild : LayoutChild
	{
		[LinkName("gtk_grid_layout_child_get_column")]
		public static extern c_int GetColumn(GridLayoutChild* child);
		[LinkName("gtk_grid_layout_child_get_column_span")]
		public static extern c_int GetColumnSpan(GridLayoutChild* child);
		[LinkName("gtk_grid_layout_child_get_row")]
		public static extern c_int GetRow(GridLayoutChild* child);
		[LinkName("gtk_grid_layout_child_get_row_span")]
		public static extern c_int GetRowSpan(GridLayoutChild* child);
		[LinkName("gtk_grid_layout_child_set_column")]
		public static extern void SetColumn(GridLayoutChild* child, c_int column);
		[LinkName("gtk_grid_layout_child_set_column_span")]
		public static extern void SetColumnSpan(GridLayoutChild* child, c_int span);
		[LinkName("gtk_grid_layout_child_set_row")]
		public static extern void SetRow(GridLayoutChild* child, c_int row);
		[LinkName("gtk_grid_layout_child_set_row_span")]
		public static extern void SetRowSpan(GridLayoutChild* child, c_int span);
	}
	[CRepr]
	public struct GridView : ListBase
	{
		[LinkName("gtk_grid_view_new")]
		public static extern Widget* New(SelectionModel* model, ListItemFactory* factory);
		[LinkName("gtk_grid_view_get_enable_rubberband")]
		public static extern c_int GetEnableRubberband(GridView* self);
		[LinkName("gtk_grid_view_get_factory")]
		public static extern ListItemFactory* GetFactory(GridView* self);
		[LinkName("gtk_grid_view_get_max_columns")]
		public static extern c_uint GetMaxColumns(GridView* self);
		[LinkName("gtk_grid_view_get_min_columns")]
		public static extern c_uint GetMinColumns(GridView* self);
		[LinkName("gtk_grid_view_get_model")]
		public static extern SelectionModel* GetModel(GridView* self);
		[LinkName("gtk_grid_view_get_single_click_activate")]
		public static extern c_int GetSingleClickActivate(GridView* self);
		[LinkName("gtk_grid_view_get_tab_behavior")]
		public static extern ListTabBehavior GetTabBehavior(GridView* self);
		[LinkName("gtk_grid_view_set_enable_rubberband")]
		public static extern void SetEnableRubberband(GridView* self, c_int enable_rubberband);
		[LinkName("gtk_grid_view_set_factory")]
		public static extern void SetFactory(GridView* self, ListItemFactory* factory);
		[LinkName("gtk_grid_view_set_max_columns")]
		public static extern void SetMaxColumns(GridView* self, c_uint max_columns);
		[LinkName("gtk_grid_view_set_min_columns")]
		public static extern void SetMinColumns(GridView* self, c_uint min_columns);
		[LinkName("gtk_grid_view_set_model")]
		public static extern void SetModel(GridView* self, SelectionModel* model);
		[LinkName("gtk_grid_view_set_single_click_activate")]
		public static extern void SetSingleClickActivate(GridView* self, c_int single_click_activate);
		[LinkName("gtk_grid_view_set_tab_behavior")]
		public static extern void SetTabBehavior(GridView* self, ListTabBehavior tab_behavior);
		public function void ActivateFunc(GridView* self, c_uint position, void* user_data);
	}
	[CRepr]
	public struct HeaderBar : Widget
	{
		[LinkName("gtk_header_bar_new")]
		public static extern Widget* New();
		[LinkName("gtk_header_bar_get_decoration_layout")]
		public static extern char8* GetDecorationLayout(HeaderBar* bar);
		[LinkName("gtk_header_bar_get_show_title_buttons")]
		public static extern c_int GetShowTitleButtons(HeaderBar* bar);
		[LinkName("gtk_header_bar_get_title_widget")]
		public static extern Widget* GetTitleWidget(HeaderBar* bar);
		[LinkName("gtk_header_bar_pack_end")]
		public static extern void PackEnd(HeaderBar* bar, Widget* child);
		[LinkName("gtk_header_bar_pack_start")]
		public static extern void PackStart(HeaderBar* bar, Widget* child);
		[LinkName("gtk_header_bar_remove")]
		public static extern void Remove(HeaderBar* bar, Widget* child);
		[LinkName("gtk_header_bar_set_decoration_layout")]
		public static extern void SetDecorationLayout(HeaderBar* bar, char8* layout);
		[LinkName("gtk_header_bar_set_show_title_buttons")]
		public static extern void SetShowTitleButtons(HeaderBar* bar, c_int setting);
		[LinkName("gtk_header_bar_set_title_widget")]
		public static extern void SetTitleWidget(HeaderBar* bar, Widget* title_widget);
	}
	[CRepr]
	public struct IMContext : GObject.Object
	{
		[LinkName("gtk_im_context_delete_surrounding")]
		public static extern c_int DeleteSurrounding(IMContext* context, c_int offset, c_int n_chars);
		[LinkName("gtk_im_context_filter_key")]
		public static extern c_int FilterKey(IMContext* context, c_int press, Gdk.Surface* surface, Gdk.Device* device, c_uint time, c_uint keycode, Gdk.ModifierType state, c_int group);
		[LinkName("gtk_im_context_filter_keypress")]
		public static extern c_int FilterKeypress(IMContext* context, Gdk.Event* event);
		[LinkName("gtk_im_context_focus_in")]
		public static extern void FocusIn(IMContext* context);
		[LinkName("gtk_im_context_focus_out")]
		public static extern void FocusOut(IMContext* context);
		[LinkName("gtk_im_context_get_preedit_string")]
		public static extern void GetPreeditString(IMContext* context, char8** str, Pango.AttrList** attrs, c_int* cursor_pos);
		[LinkName("gtk_im_context_get_surrounding")]
		public static extern c_int GetSurrounding(IMContext* context, char8** text, c_int* cursor_index);
		[LinkName("gtk_im_context_get_surrounding_with_selection")]
		public static extern c_int GetSurroundingWithSelection(IMContext* context, char8** text, c_int* cursor_index, c_int* anchor_index);
		[LinkName("gtk_im_context_reset")]
		public static extern void Reset(IMContext* context);
		[LinkName("gtk_im_context_set_client_widget")]
		public static extern void SetClientWidget(IMContext* context, Widget* widget);
		[LinkName("gtk_im_context_set_cursor_location")]
		public static extern void SetCursorLocation(IMContext* context, Gdk.Rectangle* area);
		[LinkName("gtk_im_context_set_surrounding")]
		public static extern void SetSurrounding(IMContext* context, char8* text, c_int len, c_int cursor_index);
		[LinkName("gtk_im_context_set_surrounding_with_selection")]
		public static extern void SetSurroundingWithSelection(IMContext* context, char8* text, c_int len, c_int cursor_index, c_int anchor_index);
		[LinkName("gtk_im_context_set_use_preedit")]
		public static extern void SetUsePreedit(IMContext* context, c_int use_preedit);
		public function void CommitFunc(IMContext* self, char8* str, void* user_data);
		public function c_int DeleteSurroundingFunc(IMContext* self, c_int offset, c_int n_chars, void* user_data);
		public function void PreeditChangedFunc(IMContext* self, void* user_data);
		public function void PreeditEndFunc(IMContext* self, void* user_data);
		public function void PreeditStartFunc(IMContext* self, void* user_data);
		public function c_int RetrieveSurroundingFunc(IMContext* self, void* user_data);
	}
	[CRepr]
	public struct IMContextSimple : IMContext
	{
		[LinkName("gtk_im_context_simple_new")]
		public static extern IMContext* New();
		[LinkName("gtk_im_context_simple_add_compose_file")]
		public static extern void AddComposeFile(IMContextSimple* context_simple, char8* compose_file);
	}
	[CRepr]
	public struct IMMulticontext : IMContext
	{
		[LinkName("gtk_im_multicontext_new")]
		public static extern IMContext* New();
		[LinkName("gtk_im_multicontext_get_context_id")]
		public static extern char8* GetContextId(IMMulticontext* context);
		[LinkName("gtk_im_multicontext_set_context_id")]
		public static extern void SetContextId(IMMulticontext* context, char8* context_id);
	}
	[CRepr]
	public struct IconPaintable : GObject.Object
	{
		[LinkName("gtk_icon_paintable_new_for_file")]
		public static extern IconPaintable* NewForFile(Gio.File* file, c_int size, c_int scale);
		[LinkName("gtk_icon_paintable_get_file")]
		public static extern Gio.File* GetFile(IconPaintable* self);
		[LinkName("gtk_icon_paintable_get_icon_name")]
		public static extern char8* GetIconName(IconPaintable* self);
		[LinkName("gtk_icon_paintable_is_symbolic")]
		public static extern c_int IsSymbolic(IconPaintable* self);
	}
	[CRepr]
	public struct IconTheme : GObject.Object
	{
		[LinkName("gtk_icon_theme_new")]
		public static extern IconTheme* New();
		[LinkName("gtk_icon_theme_add_resource_path")]
		public static extern void AddResourcePath(IconTheme* self, char8* path);
		[LinkName("gtk_icon_theme_add_search_path")]
		public static extern void AddSearchPath(IconTheme* self, char8* path);
		[LinkName("gtk_icon_theme_get_display")]
		public static extern Gdk.Display* GetDisplay(IconTheme* self);
		[LinkName("gtk_icon_theme_get_icon_names")]
		public static extern char8** GetIconNames(IconTheme* self);
		[LinkName("gtk_icon_theme_get_icon_sizes")]
		public static extern c_int* GetIconSizes(IconTheme* self, char8* icon_name);
		[LinkName("gtk_icon_theme_get_resource_path")]
		public static extern char8** GetResourcePath(IconTheme* self);
		[LinkName("gtk_icon_theme_get_search_path")]
		public static extern char8** GetSearchPath(IconTheme* self);
		[LinkName("gtk_icon_theme_get_theme_name")]
		public static extern char8* GetThemeName(IconTheme* self);
		[LinkName("gtk_icon_theme_has_gicon")]
		public static extern c_int HasGicon(IconTheme* self, Gio.Icon* gicon);
		[LinkName("gtk_icon_theme_has_icon")]
		public static extern c_int HasIcon(IconTheme* self, char8* icon_name);
		[LinkName("gtk_icon_theme_lookup_by_gicon")]
		public static extern IconPaintable* LookupByGicon(IconTheme* self, Gio.Icon* icon, c_int size, c_int scale, TextDirection direction, IconLookupFlags flags);
		[LinkName("gtk_icon_theme_lookup_icon")]
		public static extern IconPaintable* LookupIcon(IconTheme* self, char8* icon_name, char8** fallbacks, c_int size, c_int scale, TextDirection direction, IconLookupFlags flags);
		[LinkName("gtk_icon_theme_set_resource_path")]
		public static extern void SetResourcePath(IconTheme* self, char8** path);
		[LinkName("gtk_icon_theme_set_search_path")]
		public static extern void SetSearchPath(IconTheme* self, char8** path);
		[LinkName("gtk_icon_theme_set_theme_name")]
		public static extern void SetThemeName(IconTheme* self, char8* theme_name);
		public function void ChangedFunc(IconTheme* self, void* user_data);
	}
	[CRepr]
	public struct IconView : Widget
	{
		[LinkName("gtk_icon_view_new")]
		public static extern Widget* New();
		[LinkName("gtk_icon_view_new_with_area")]
		public static extern Widget* NewWithArea(CellArea* area);
		[LinkName("gtk_icon_view_new_with_model")]
		public static extern Widget* NewWithModel(TreeModel* model);
		[LinkName("gtk_icon_view_create_drag_icon")]
		public static extern Gdk.Paintable* CreateDragIcon(IconView* icon_view, TreePath* path);
		[LinkName("gtk_icon_view_enable_model_drag_dest")]
		public static extern void EnableModelDragDest(IconView* icon_view, Gdk.ContentFormats* formats, Gdk.DragAction actions);
		[LinkName("gtk_icon_view_enable_model_drag_source")]
		public static extern void EnableModelDragSource(IconView* icon_view, Gdk.ModifierType start_button_mask, Gdk.ContentFormats* formats, Gdk.DragAction actions);
		[LinkName("gtk_icon_view_get_activate_on_single_click")]
		public static extern c_int GetActivateOnSingleClick(IconView* icon_view);
		[LinkName("gtk_icon_view_get_cell_rect")]
		public static extern c_int GetCellRect(IconView* icon_view, TreePath* path, CellRenderer* cell, Gdk.Rectangle* rect);
		[LinkName("gtk_icon_view_get_column_spacing")]
		public static extern c_int GetColumnSpacing(IconView* icon_view);
		[LinkName("gtk_icon_view_get_columns")]
		public static extern c_int GetColumns(IconView* icon_view);
		[LinkName("gtk_icon_view_get_cursor")]
		public static extern c_int GetCursor(IconView* icon_view, TreePath** path, CellRenderer** cell);
		[LinkName("gtk_icon_view_get_dest_item_at_pos")]
		public static extern c_int GetDestItemAtPos(IconView* icon_view, c_int drag_x, c_int drag_y, TreePath** path, IconViewDropPosition* pos);
		[LinkName("gtk_icon_view_get_drag_dest_item")]
		public static extern void GetDragDestItem(IconView* icon_view, TreePath** path, IconViewDropPosition* pos);
		[LinkName("gtk_icon_view_get_item_at_pos")]
		public static extern c_int GetItemAtPos(IconView* icon_view, c_int x, c_int y, TreePath** path, CellRenderer** cell);
		[LinkName("gtk_icon_view_get_item_column")]
		public static extern c_int GetItemColumn(IconView* icon_view, TreePath* path);
		[LinkName("gtk_icon_view_get_item_orientation")]
		public static extern Orientation GetItemOrientation(IconView* icon_view);
		[LinkName("gtk_icon_view_get_item_padding")]
		public static extern c_int GetItemPadding(IconView* icon_view);
		[LinkName("gtk_icon_view_get_item_row")]
		public static extern c_int GetItemRow(IconView* icon_view, TreePath* path);
		[LinkName("gtk_icon_view_get_item_width")]
		public static extern c_int GetItemWidth(IconView* icon_view);
		[LinkName("gtk_icon_view_get_margin")]
		public static extern c_int GetMargin(IconView* icon_view);
		[LinkName("gtk_icon_view_get_markup_column")]
		public static extern c_int GetMarkupColumn(IconView* icon_view);
		[LinkName("gtk_icon_view_get_model")]
		public static extern TreeModel* GetModel(IconView* icon_view);
		[LinkName("gtk_icon_view_get_path_at_pos")]
		public static extern TreePath* GetPathAtPos(IconView* icon_view, c_int x, c_int y);
		[LinkName("gtk_icon_view_get_pixbuf_column")]
		public static extern c_int GetPixbufColumn(IconView* icon_view);
		[LinkName("gtk_icon_view_get_reorderable")]
		public static extern c_int GetReorderable(IconView* icon_view);
		[LinkName("gtk_icon_view_get_row_spacing")]
		public static extern c_int GetRowSpacing(IconView* icon_view);
		[LinkName("gtk_icon_view_get_selected_items")]
		public static extern GLib.List* GetSelectedItems(IconView* icon_view);
		[LinkName("gtk_icon_view_get_selection_mode")]
		public static extern SelectionMode GetSelectionMode(IconView* icon_view);
		[LinkName("gtk_icon_view_get_spacing")]
		public static extern c_int GetSpacing(IconView* icon_view);
		[LinkName("gtk_icon_view_get_text_column")]
		public static extern c_int GetTextColumn(IconView* icon_view);
		[LinkName("gtk_icon_view_get_tooltip_column")]
		public static extern c_int GetTooltipColumn(IconView* icon_view);
		[LinkName("gtk_icon_view_get_tooltip_context")]
		public static extern c_int GetTooltipContext(IconView* icon_view, c_int x, c_int y, c_int keyboard_tip, TreeModel** model, TreePath** path, TreeIter* iter);
		[LinkName("gtk_icon_view_get_visible_range")]
		public static extern c_int GetVisibleRange(IconView* icon_view, TreePath** start_path, TreePath** end_path);
		[LinkName("gtk_icon_view_item_activated")]
		public static extern void ItemActivated(IconView* icon_view, TreePath* path);
		[LinkName("gtk_icon_view_path_is_selected")]
		public static extern c_int PathIsSelected(IconView* icon_view, TreePath* path);
		[LinkName("gtk_icon_view_scroll_to_path")]
		public static extern void ScrollToPath(IconView* icon_view, TreePath* path, c_int use_align, float row_align, float col_align);
		[LinkName("gtk_icon_view_select_all")]
		public static extern void SelectAll(IconView* icon_view);
		[LinkName("gtk_icon_view_select_path")]
		public static extern void SelectPath(IconView* icon_view, TreePath* path);
		[LinkName("gtk_icon_view_selected_foreach")]
		public static extern void SelectedForeach(IconView* icon_view, IconViewForeachFunc func, void* data);
		[LinkName("gtk_icon_view_set_activate_on_single_click")]
		public static extern void SetActivateOnSingleClick(IconView* icon_view, c_int single);
		[LinkName("gtk_icon_view_set_column_spacing")]
		public static extern void SetColumnSpacing(IconView* icon_view, c_int column_spacing);
		[LinkName("gtk_icon_view_set_columns")]
		public static extern void SetColumns(IconView* icon_view, c_int columns);
		[LinkName("gtk_icon_view_set_cursor")]
		public static extern void SetCursor(IconView* icon_view, TreePath* path, CellRenderer* cell, c_int start_editing);
		[LinkName("gtk_icon_view_set_drag_dest_item")]
		public static extern void SetDragDestItem(IconView* icon_view, TreePath* path, IconViewDropPosition pos);
		[LinkName("gtk_icon_view_set_item_orientation")]
		public static extern void SetItemOrientation(IconView* icon_view, Orientation orientation);
		[LinkName("gtk_icon_view_set_item_padding")]
		public static extern void SetItemPadding(IconView* icon_view, c_int item_padding);
		[LinkName("gtk_icon_view_set_item_width")]
		public static extern void SetItemWidth(IconView* icon_view, c_int item_width);
		[LinkName("gtk_icon_view_set_margin")]
		public static extern void SetMargin(IconView* icon_view, c_int margin);
		[LinkName("gtk_icon_view_set_markup_column")]
		public static extern void SetMarkupColumn(IconView* icon_view, c_int column);
		[LinkName("gtk_icon_view_set_model")]
		public static extern void SetModel(IconView* icon_view, TreeModel* model);
		[LinkName("gtk_icon_view_set_pixbuf_column")]
		public static extern void SetPixbufColumn(IconView* icon_view, c_int column);
		[LinkName("gtk_icon_view_set_reorderable")]
		public static extern void SetReorderable(IconView* icon_view, c_int reorderable);
		[LinkName("gtk_icon_view_set_row_spacing")]
		public static extern void SetRowSpacing(IconView* icon_view, c_int row_spacing);
		[LinkName("gtk_icon_view_set_selection_mode")]
		public static extern void SetSelectionMode(IconView* icon_view, SelectionMode mode);
		[LinkName("gtk_icon_view_set_spacing")]
		public static extern void SetSpacing(IconView* icon_view, c_int spacing);
		[LinkName("gtk_icon_view_set_text_column")]
		public static extern void SetTextColumn(IconView* icon_view, c_int column);
		[LinkName("gtk_icon_view_set_tooltip_cell")]
		public static extern void SetTooltipCell(IconView* icon_view, Tooltip* tooltip, TreePath* path, CellRenderer* cell);
		[LinkName("gtk_icon_view_set_tooltip_column")]
		public static extern void SetTooltipColumn(IconView* icon_view, c_int column);
		[LinkName("gtk_icon_view_set_tooltip_item")]
		public static extern void SetTooltipItem(IconView* icon_view, Tooltip* tooltip, TreePath* path);
		[LinkName("gtk_icon_view_unselect_all")]
		public static extern void UnselectAll(IconView* icon_view);
		[LinkName("gtk_icon_view_unselect_path")]
		public static extern void UnselectPath(IconView* icon_view, TreePath* path);
		[LinkName("gtk_icon_view_unset_model_drag_dest")]
		public static extern void UnsetModelDragDest(IconView* icon_view);
		[LinkName("gtk_icon_view_unset_model_drag_source")]
		public static extern void UnsetModelDragSource(IconView* icon_view);
		public function c_int ActivateCursorItemFunc(IconView* self, void* user_data);
		public function void ItemActivatedFunc(IconView* self, TreePath path, void* user_data);
		public function c_int MoveCursorFunc(IconView* self, MovementStep step, c_int count, c_int extend, c_int modify, void* user_data);
		public function void SelectAllFunc(IconView* self, void* user_data);
		public function void SelectCursorItemFunc(IconView* self, void* user_data);
		public function void SelectionChangedFunc(IconView* self, void* user_data);
		public function void ToggleCursorItemFunc(IconView* self, void* user_data);
		public function void UnselectAllFunc(IconView* self, void* user_data);
	}
	[CRepr]
	public struct Image : Widget
	{
		[LinkName("gtk_image_new")]
		public static extern Widget* New();
		[LinkName("gtk_image_new_from_file")]
		public static extern Widget* NewFromFile(char8* filename);
		[LinkName("gtk_image_new_from_gicon")]
		public static extern Widget* NewFromGicon(Gio.Icon* icon);
		[LinkName("gtk_image_new_from_icon_name")]
		public static extern Widget* NewFromIconName(char8* icon_name);
		[LinkName("gtk_image_new_from_paintable")]
		public static extern Widget* NewFromPaintable(Gdk.Paintable* paintable);
		[LinkName("gtk_image_new_from_pixbuf")]
		public static extern Widget* NewFromPixbuf(GdkPixbuf.Pixbuf* pixbuf);
		[LinkName("gtk_image_new_from_resource")]
		public static extern Widget* NewFromResource(char8* resource_path);
		[LinkName("gtk_image_clear")]
		public static extern void Clear(Image* image);
		[LinkName("gtk_image_get_gicon")]
		public static extern Gio.Icon* GetGicon(Image* image);
		[LinkName("gtk_image_get_icon_name")]
		public static extern char8* GetIconName(Image* image);
		[LinkName("gtk_image_get_icon_size")]
		public static extern IconSize GetIconSize(Image* image);
		[LinkName("gtk_image_get_paintable")]
		public static extern Gdk.Paintable* GetPaintable(Image* image);
		[LinkName("gtk_image_get_pixel_size")]
		public static extern c_int GetPixelSize(Image* image);
		[LinkName("gtk_image_get_storage_type")]
		public static extern ImageType GetStorageType(Image* image);
		[LinkName("gtk_image_set_from_file")]
		public static extern void SetFromFile(Image* image, char8* filename);
		[LinkName("gtk_image_set_from_gicon")]
		public static extern void SetFromGicon(Image* image, Gio.Icon* icon);
		[LinkName("gtk_image_set_from_icon_name")]
		public static extern void SetFromIconName(Image* image, char8* icon_name);
		[LinkName("gtk_image_set_from_paintable")]
		public static extern void SetFromPaintable(Image* image, Gdk.Paintable* paintable);
		[LinkName("gtk_image_set_from_pixbuf")]
		public static extern void SetFromPixbuf(Image* image, GdkPixbuf.Pixbuf* pixbuf);
		[LinkName("gtk_image_set_from_resource")]
		public static extern void SetFromResource(Image* image, char8* resource_path);
		[LinkName("gtk_image_set_icon_size")]
		public static extern void SetIconSize(Image* image, IconSize icon_size);
		[LinkName("gtk_image_set_pixel_size")]
		public static extern void SetPixelSize(Image* image, c_int pixel_size);
	}
	[CRepr]
	public struct InfoBar : Widget
	{
		[LinkName("gtk_info_bar_new")]
		public static extern Widget* New();
		[LinkName("gtk_info_bar_add_action_widget")]
		public static extern void AddActionWidget(InfoBar* info_bar, Widget* child, c_int response_id);
		[LinkName("gtk_info_bar_add_button")]
		public static extern Button* AddButton(InfoBar* info_bar, char8* button_text, c_int response_id);
		[LinkName("gtk_info_bar_add_child")]
		public static extern void AddChild(InfoBar* info_bar, Widget* widget);
		[LinkName("gtk_info_bar_get_message_type")]
		public static extern MessageType GetMessageType(InfoBar* info_bar);
		[LinkName("gtk_info_bar_get_revealed")]
		public static extern c_int GetRevealed(InfoBar* info_bar);
		[LinkName("gtk_info_bar_get_show_close_button")]
		public static extern c_int GetShowCloseButton(InfoBar* info_bar);
		[LinkName("gtk_info_bar_remove_action_widget")]
		public static extern void RemoveActionWidget(InfoBar* info_bar, Widget* widget);
		[LinkName("gtk_info_bar_remove_child")]
		public static extern void RemoveChild(InfoBar* info_bar, Widget* widget);
		[LinkName("gtk_info_bar_response")]
		public static extern void Response(InfoBar* info_bar, c_int response_id);
		[LinkName("gtk_info_bar_set_default_response")]
		public static extern void SetDefaultResponse(InfoBar* info_bar, c_int response_id);
		[LinkName("gtk_info_bar_set_message_type")]
		public static extern void SetMessageType(InfoBar* info_bar, MessageType message_type);
		[LinkName("gtk_info_bar_set_response_sensitive")]
		public static extern void SetResponseSensitive(InfoBar* info_bar, c_int response_id, c_int setting);
		[LinkName("gtk_info_bar_set_revealed")]
		public static extern void SetRevealed(InfoBar* info_bar, c_int revealed);
		[LinkName("gtk_info_bar_set_show_close_button")]
		public static extern void SetShowCloseButton(InfoBar* info_bar, c_int setting);
		public function void CloseFunc(InfoBar* self, void* user_data);
		public function void ResponseFunc(InfoBar* self, c_int response_id, void* user_data);
	}
	[CRepr]
	public struct Inscription : Widget
	{
		[LinkName("gtk_inscription_new")]
		public static extern Widget* New(char8* text);
		[LinkName("gtk_inscription_get_attributes")]
		public static extern Pango.AttrList* GetAttributes(Inscription* self);
		[LinkName("gtk_inscription_get_min_chars")]
		public static extern c_uint GetMinChars(Inscription* self);
		[LinkName("gtk_inscription_get_min_lines")]
		public static extern c_uint GetMinLines(Inscription* self);
		[LinkName("gtk_inscription_get_nat_chars")]
		public static extern c_uint GetNatChars(Inscription* self);
		[LinkName("gtk_inscription_get_nat_lines")]
		public static extern c_uint GetNatLines(Inscription* self);
		[LinkName("gtk_inscription_get_text")]
		public static extern char8* GetText(Inscription* self);
		[LinkName("gtk_inscription_get_text_overflow")]
		public static extern InscriptionOverflow GetTextOverflow(Inscription* self);
		[LinkName("gtk_inscription_get_wrap_mode")]
		public static extern Pango.WrapMode GetWrapMode(Inscription* self);
		[LinkName("gtk_inscription_get_xalign")]
		public static extern float GetXalign(Inscription* self);
		[LinkName("gtk_inscription_get_yalign")]
		public static extern float GetYalign(Inscription* self);
		[LinkName("gtk_inscription_set_attributes")]
		public static extern void SetAttributes(Inscription* self, Pango.AttrList* attrs);
		[LinkName("gtk_inscription_set_markup")]
		public static extern void SetMarkup(Inscription* self, char8* markup);
		[LinkName("gtk_inscription_set_min_chars")]
		public static extern void SetMinChars(Inscription* self, c_uint min_chars);
		[LinkName("gtk_inscription_set_min_lines")]
		public static extern void SetMinLines(Inscription* self, c_uint min_lines);
		[LinkName("gtk_inscription_set_nat_chars")]
		public static extern void SetNatChars(Inscription* self, c_uint nat_chars);
		[LinkName("gtk_inscription_set_nat_lines")]
		public static extern void SetNatLines(Inscription* self, c_uint nat_lines);
		[LinkName("gtk_inscription_set_text")]
		public static extern void SetText(Inscription* self, char8* text);
		[LinkName("gtk_inscription_set_text_overflow")]
		public static extern void SetTextOverflow(Inscription* self, InscriptionOverflow overflow);
		[LinkName("gtk_inscription_set_wrap_mode")]
		public static extern void SetWrapMode(Inscription* self, Pango.WrapMode wrap_mode);
		[LinkName("gtk_inscription_set_xalign")]
		public static extern void SetXalign(Inscription* self, float xalign);
		[LinkName("gtk_inscription_set_yalign")]
		public static extern void SetYalign(Inscription* self, float yalign);
	}
	[CRepr]
	public struct KeyvalTrigger : ShortcutTrigger
	{
		[LinkName("gtk_keyval_trigger_new")]
		public static extern ShortcutTrigger* New(c_uint keyval, Gdk.ModifierType modifiers);
		[LinkName("gtk_keyval_trigger_get_keyval")]
		public static extern c_uint GetKeyval(KeyvalTrigger* self);
		[LinkName("gtk_keyval_trigger_get_modifiers")]
		public static extern Gdk.ModifierType GetModifiers(KeyvalTrigger* self);
	}
	[CRepr]
	public struct Label : Widget
	{
		[LinkName("gtk_label_new")]
		public static extern Widget* New(char8* str);
		[LinkName("gtk_label_new_with_mnemonic")]
		public static extern Widget* NewWithMnemonic(char8* str);
		[LinkName("gtk_label_get_attributes")]
		public static extern Pango.AttrList* GetAttributes(Label* self);
		[LinkName("gtk_label_get_current_uri")]
		public static extern char8* GetCurrentUri(Label* self);
		[LinkName("gtk_label_get_ellipsize")]
		public static extern Pango.EllipsizeMode GetEllipsize(Label* self);
		[LinkName("gtk_label_get_extra_menu")]
		public static extern Gio.MenuModel* GetExtraMenu(Label* self);
		[LinkName("gtk_label_get_justify")]
		public static extern Justification GetJustify(Label* self);
		[LinkName("gtk_label_get_label")]
		public static extern char8* GetLabel(Label* self);
		[LinkName("gtk_label_get_layout")]
		public static extern Pango.Layout* GetLayout(Label* self);
		[LinkName("gtk_label_get_layout_offsets")]
		public static extern void GetLayoutOffsets(Label* self, c_int* x, c_int* y);
		[LinkName("gtk_label_get_lines")]
		public static extern c_int GetLines(Label* self);
		[LinkName("gtk_label_get_max_width_chars")]
		public static extern c_int GetMaxWidthChars(Label* self);
		[LinkName("gtk_label_get_mnemonic_keyval")]
		public static extern c_uint GetMnemonicKeyval(Label* self);
		[LinkName("gtk_label_get_mnemonic_widget")]
		public static extern Widget* GetMnemonicWidget(Label* self);
		[LinkName("gtk_label_get_natural_wrap_mode")]
		public static extern NaturalWrapMode GetNaturalWrapMode(Label* self);
		[LinkName("gtk_label_get_selectable")]
		public static extern c_int GetSelectable(Label* self);
		[LinkName("gtk_label_get_selection_bounds")]
		public static extern c_int GetSelectionBounds(Label* self, c_int* start, c_int* end);
		[LinkName("gtk_label_get_single_line_mode")]
		public static extern c_int GetSingleLineMode(Label* self);
		[LinkName("gtk_label_get_tabs")]
		public static extern Pango.TabArray* GetTabs(Label* self);
		[LinkName("gtk_label_get_text")]
		public static extern char8* GetText(Label* self);
		[LinkName("gtk_label_get_use_markup")]
		public static extern c_int GetUseMarkup(Label* self);
		[LinkName("gtk_label_get_use_underline")]
		public static extern c_int GetUseUnderline(Label* self);
		[LinkName("gtk_label_get_width_chars")]
		public static extern c_int GetWidthChars(Label* self);
		[LinkName("gtk_label_get_wrap")]
		public static extern c_int GetWrap(Label* self);
		[LinkName("gtk_label_get_wrap_mode")]
		public static extern Pango.WrapMode GetWrapMode(Label* self);
		[LinkName("gtk_label_get_xalign")]
		public static extern float GetXalign(Label* self);
		[LinkName("gtk_label_get_yalign")]
		public static extern float GetYalign(Label* self);
		[LinkName("gtk_label_select_region")]
		public static extern void SelectRegion(Label* self, c_int start_offset, c_int end_offset);
		[LinkName("gtk_label_set_attributes")]
		public static extern void SetAttributes(Label* self, Pango.AttrList* attrs);
		[LinkName("gtk_label_set_ellipsize")]
		public static extern void SetEllipsize(Label* self, Pango.EllipsizeMode mode);
		[LinkName("gtk_label_set_extra_menu")]
		public static extern void SetExtraMenu(Label* self, Gio.MenuModel* model);
		[LinkName("gtk_label_set_justify")]
		public static extern void SetJustify(Label* self, Justification jtype);
		[LinkName("gtk_label_set_label")]
		public static extern void SetLabel(Label* self, char8* str);
		[LinkName("gtk_label_set_lines")]
		public static extern void SetLines(Label* self, c_int lines);
		[LinkName("gtk_label_set_markup")]
		public static extern void SetMarkup(Label* self, char8* str);
		[LinkName("gtk_label_set_markup_with_mnemonic")]
		public static extern void SetMarkupWithMnemonic(Label* self, char8* str);
		[LinkName("gtk_label_set_max_width_chars")]
		public static extern void SetMaxWidthChars(Label* self, c_int n_chars);
		[LinkName("gtk_label_set_mnemonic_widget")]
		public static extern void SetMnemonicWidget(Label* self, Widget* widget);
		[LinkName("gtk_label_set_natural_wrap_mode")]
		public static extern void SetNaturalWrapMode(Label* self, NaturalWrapMode wrap_mode);
		[LinkName("gtk_label_set_selectable")]
		public static extern void SetSelectable(Label* self, c_int setting);
		[LinkName("gtk_label_set_single_line_mode")]
		public static extern void SetSingleLineMode(Label* self, c_int single_line_mode);
		[LinkName("gtk_label_set_tabs")]
		public static extern void SetTabs(Label* self, Pango.TabArray* tabs);
		[LinkName("gtk_label_set_text")]
		public static extern void SetText(Label* self, char8* str);
		[LinkName("gtk_label_set_text_with_mnemonic")]
		public static extern void SetTextWithMnemonic(Label* self, char8* str);
		[LinkName("gtk_label_set_use_markup")]
		public static extern void SetUseMarkup(Label* self, c_int setting);
		[LinkName("gtk_label_set_use_underline")]
		public static extern void SetUseUnderline(Label* self, c_int setting);
		[LinkName("gtk_label_set_width_chars")]
		public static extern void SetWidthChars(Label* self, c_int n_chars);
		[LinkName("gtk_label_set_wrap")]
		public static extern void SetWrap(Label* self, c_int wrap);
		[LinkName("gtk_label_set_wrap_mode")]
		public static extern void SetWrapMode(Label* self, Pango.WrapMode wrap_mode);
		[LinkName("gtk_label_set_xalign")]
		public static extern void SetXalign(Label* self, float xalign);
		[LinkName("gtk_label_set_yalign")]
		public static extern void SetYalign(Label* self, float yalign);
		public function void ActivateCurrentLinkFunc(Label* self, void* user_data);
		public function c_int ActivateLinkFunc(Label* self, char8* uri, void* user_data);
		public function void CopyClipboardFunc(Label* self, void* user_data);
		public function void MoveCursorFunc(Label* self, MovementStep step, c_int count, c_int extend_selection, void* user_data);
	}
	[CRepr]
	public struct LayoutChild : GObject.Object
	{
		[LinkName("gtk_layout_child_get_child_widget")]
		public static extern Widget* GetChildWidget(LayoutChild* layout_child);
		[LinkName("gtk_layout_child_get_layout_manager")]
		public static extern LayoutManager* GetLayoutManager(LayoutChild* layout_child);
	}
	[CRepr]
	public struct LayoutManager : GObject.Object
	{
		[LinkName("gtk_layout_manager_allocate")]
		public static extern void Allocate(LayoutManager* manager, Widget* widget, c_int width, c_int height, c_int baseline);
		[LinkName("gtk_layout_manager_get_layout_child")]
		public static extern LayoutChild* GetLayoutChild(LayoutManager* manager, Widget* child);
		[LinkName("gtk_layout_manager_get_request_mode")]
		public static extern SizeRequestMode GetRequestMode(LayoutManager* manager);
		[LinkName("gtk_layout_manager_get_widget")]
		public static extern Widget* GetWidget(LayoutManager* manager);
		[LinkName("gtk_layout_manager_layout_changed")]
		public static extern void LayoutChanged(LayoutManager* manager);
		[LinkName("gtk_layout_manager_measure")]
		public static extern void Measure(LayoutManager* manager, Widget* widget, Orientation orientation, c_int for_size, c_int* minimum, c_int* natural, c_int* minimum_baseline, c_int* natural_baseline);
	}
	[CRepr]
	public struct LevelBar : Widget
	{
		[LinkName("gtk_level_bar_new")]
		public static extern Widget* New();
		[LinkName("gtk_level_bar_new_for_interval")]
		public static extern Widget* NewForInterval(double min_value, double max_value);
		[LinkName("gtk_level_bar_add_offset_value")]
		public static extern void AddOffsetValue(LevelBar* self, char8* name, double value);
		[LinkName("gtk_level_bar_get_inverted")]
		public static extern c_int GetInverted(LevelBar* self);
		[LinkName("gtk_level_bar_get_max_value")]
		public static extern double GetMaxValue(LevelBar* self);
		[LinkName("gtk_level_bar_get_min_value")]
		public static extern double GetMinValue(LevelBar* self);
		[LinkName("gtk_level_bar_get_mode")]
		public static extern LevelBarMode GetMode(LevelBar* self);
		[LinkName("gtk_level_bar_get_offset_value")]
		public static extern c_int GetOffsetValue(LevelBar* self, char8* name, double* value);
		[LinkName("gtk_level_bar_get_value")]
		public static extern double GetValue(LevelBar* self);
		[LinkName("gtk_level_bar_remove_offset_value")]
		public static extern void RemoveOffsetValue(LevelBar* self, char8* name);
		[LinkName("gtk_level_bar_set_inverted")]
		public static extern void SetInverted(LevelBar* self, c_int inverted);
		[LinkName("gtk_level_bar_set_max_value")]
		public static extern void SetMaxValue(LevelBar* self, double value);
		[LinkName("gtk_level_bar_set_min_value")]
		public static extern void SetMinValue(LevelBar* self, double value);
		[LinkName("gtk_level_bar_set_mode")]
		public static extern void SetMode(LevelBar* self, LevelBarMode mode);
		[LinkName("gtk_level_bar_set_value")]
		public static extern void SetValue(LevelBar* self, double value);
		public function void OffsetChangedFunc(LevelBar* self, char8* name, void* user_data);
	}
	[CRepr]
	public struct LinkButton : Button
	{
		[LinkName("gtk_link_button_new")]
		public static extern Widget* New(char8* uri);
		[LinkName("gtk_link_button_new_with_label")]
		public static extern Widget* NewWithLabel(char8* uri, char8* label);
		[LinkName("gtk_link_button_get_uri")]
		public static extern char8* GetUri(LinkButton* link_button);
		[LinkName("gtk_link_button_get_visited")]
		public static extern c_int GetVisited(LinkButton* link_button);
		[LinkName("gtk_link_button_set_uri")]
		public static extern void SetUri(LinkButton* link_button, char8* uri);
		[LinkName("gtk_link_button_set_visited")]
		public static extern void SetVisited(LinkButton* link_button, c_int visited);
		public function c_int ActivateLinkFunc(LinkButton* self, void* user_data);
	}
	[CRepr]
	public struct ListBase : Widget
	{
	}
	[CRepr]
	public struct ListBox : Widget
	{
		[LinkName("gtk_list_box_new")]
		public static extern Widget* New();
		[LinkName("gtk_list_box_append")]
		public static extern void Append(ListBox* box_, Widget* child);
		[LinkName("gtk_list_box_bind_model")]
		public static extern void BindModel(ListBox* box_, Gio.ListModel* model, ListBoxCreateWidgetFunc create_widget_func, void* user_data, GLib.DestroyNotify user_data_free_func);
		[LinkName("gtk_list_box_drag_highlight_row")]
		public static extern void DragHighlightRow(ListBox* box_, ListBoxRow* row);
		[LinkName("gtk_list_box_drag_unhighlight_row")]
		public static extern void DragUnhighlightRow(ListBox* box_);
		[LinkName("gtk_list_box_get_activate_on_single_click")]
		public static extern c_int GetActivateOnSingleClick(ListBox* box_);
		[LinkName("gtk_list_box_get_adjustment")]
		public static extern Adjustment* GetAdjustment(ListBox* box_);
		[LinkName("gtk_list_box_get_row_at_index")]
		public static extern ListBoxRow* GetRowAtIndex(ListBox* box_, c_int index_);
		[LinkName("gtk_list_box_get_row_at_y")]
		public static extern ListBoxRow* GetRowAtY(ListBox* box_, c_int y);
		[LinkName("gtk_list_box_get_selected_row")]
		public static extern ListBoxRow* GetSelectedRow(ListBox* box_);
		[LinkName("gtk_list_box_get_selected_rows")]
		public static extern GLib.List* GetSelectedRows(ListBox* box_);
		[LinkName("gtk_list_box_get_selection_mode")]
		public static extern SelectionMode GetSelectionMode(ListBox* box_);
		[LinkName("gtk_list_box_get_show_separators")]
		public static extern c_int GetShowSeparators(ListBox* box_);
		[LinkName("gtk_list_box_insert")]
		public static extern void Insert(ListBox* box_, Widget* child, c_int position);
		[LinkName("gtk_list_box_invalidate_filter")]
		public static extern void InvalidateFilter(ListBox* box_);
		[LinkName("gtk_list_box_invalidate_headers")]
		public static extern void InvalidateHeaders(ListBox* box_);
		[LinkName("gtk_list_box_invalidate_sort")]
		public static extern void InvalidateSort(ListBox* box_);
		[LinkName("gtk_list_box_prepend")]
		public static extern void Prepend(ListBox* box_, Widget* child);
		[LinkName("gtk_list_box_remove")]
		public static extern void Remove(ListBox* box_, Widget* child);
		[LinkName("gtk_list_box_remove_all")]
		public static extern void RemoveAll(ListBox* box_);
		[LinkName("gtk_list_box_select_all")]
		public static extern void SelectAll(ListBox* box_);
		[LinkName("gtk_list_box_select_row")]
		public static extern void SelectRow(ListBox* box_, ListBoxRow* row);
		[LinkName("gtk_list_box_selected_foreach")]
		public static extern void SelectedForeach(ListBox* box_, ListBoxForeachFunc func, void* data);
		[LinkName("gtk_list_box_set_activate_on_single_click")]
		public static extern void SetActivateOnSingleClick(ListBox* box_, c_int single);
		[LinkName("gtk_list_box_set_adjustment")]
		public static extern void SetAdjustment(ListBox* box_, Adjustment* adjustment);
		[LinkName("gtk_list_box_set_filter_func")]
		public static extern void SetFilterFunc(ListBox* box_, ListBoxFilterFunc filter_func, void* user_data, GLib.DestroyNotify destroy);
		[LinkName("gtk_list_box_set_header_func")]
		public static extern void SetHeaderFunc(ListBox* box_, ListBoxUpdateHeaderFunc update_header, void* user_data, GLib.DestroyNotify destroy);
		[LinkName("gtk_list_box_set_placeholder")]
		public static extern void SetPlaceholder(ListBox* box_, Widget* placeholder);
		[LinkName("gtk_list_box_set_selection_mode")]
		public static extern void SetSelectionMode(ListBox* box_, SelectionMode mode);
		[LinkName("gtk_list_box_set_show_separators")]
		public static extern void SetShowSeparators(ListBox* box_, c_int show_separators);
		[LinkName("gtk_list_box_set_sort_func")]
		public static extern void SetSortFunc(ListBox* box_, ListBoxSortFunc sort_func, void* user_data, GLib.DestroyNotify destroy);
		[LinkName("gtk_list_box_unselect_all")]
		public static extern void UnselectAll(ListBox* box_);
		[LinkName("gtk_list_box_unselect_row")]
		public static extern void UnselectRow(ListBox* box_, ListBoxRow* row);
		public function void ActivateCursorRowFunc(ListBox* self, void* user_data);
		public function void MoveCursorFunc(ListBox* self, MovementStep object, c_int p0, c_int p1, c_int p2, void* user_data);
		public function void RowActivatedFunc(ListBox* self, ListBoxRow row, void* user_data);
		public function void RowSelectedFunc(ListBox* self, ListBoxRow row, void* user_data);
		public function void SelectAllFunc(ListBox* self, void* user_data);
		public function void SelectedRowsChangedFunc(ListBox* self, void* user_data);
		public function void ToggleCursorRowFunc(ListBox* self, void* user_data);
		public function void UnselectAllFunc(ListBox* self, void* user_data);
	}
	[CRepr]
	public struct ListBoxRow : Widget
	{
		[LinkName("gtk_list_box_row_new")]
		public static extern Widget* New();
		[LinkName("gtk_list_box_row_changed")]
		public static extern void Changed(ListBoxRow* row);
		[LinkName("gtk_list_box_row_get_activatable")]
		public static extern c_int GetActivatable(ListBoxRow* row);
		[LinkName("gtk_list_box_row_get_child")]
		public static extern Widget* GetChild(ListBoxRow* row);
		[LinkName("gtk_list_box_row_get_header")]
		public static extern Widget* GetHeader(ListBoxRow* row);
		[LinkName("gtk_list_box_row_get_index")]
		public static extern c_int GetIndex(ListBoxRow* row);
		[LinkName("gtk_list_box_row_get_selectable")]
		public static extern c_int GetSelectable(ListBoxRow* row);
		[LinkName("gtk_list_box_row_is_selected")]
		public static extern c_int IsSelected(ListBoxRow* row);
		[LinkName("gtk_list_box_row_set_activatable")]
		public static extern void SetActivatable(ListBoxRow* row, c_int activatable);
		[LinkName("gtk_list_box_row_set_child")]
		public static extern void SetChild(ListBoxRow* row, Widget* child);
		[LinkName("gtk_list_box_row_set_header")]
		public static extern void SetHeader(ListBoxRow* row, Widget* header);
		[LinkName("gtk_list_box_row_set_selectable")]
		public static extern void SetSelectable(ListBoxRow* row, c_int selectable);
		public function void ActivateFunc(ListBoxRow* self, void* user_data);
	}
	[CRepr]
	public struct ListHeader : GObject.Object
	{
		[LinkName("gtk_list_header_get_child")]
		public static extern Widget* GetChild(ListHeader* self);
		[LinkName("gtk_list_header_get_end")]
		public static extern c_uint GetEnd(ListHeader* self);
		[LinkName("gtk_list_header_get_item")]
		public static extern GObject.Object* GetItem(ListHeader* self);
		[LinkName("gtk_list_header_get_n_items")]
		public static extern c_uint GetNItems(ListHeader* self);
		[LinkName("gtk_list_header_get_start")]
		public static extern c_uint GetStart(ListHeader* self);
		[LinkName("gtk_list_header_set_child")]
		public static extern void SetChild(ListHeader* self, Widget* child);
	}
	[CRepr]
	public struct ListItem : GObject.Object
	{
		[LinkName("gtk_list_item_get_activatable")]
		public static extern c_int GetActivatable(ListItem* self);
		[LinkName("gtk_list_item_get_child")]
		public static extern Widget* GetChild(ListItem* self);
		[LinkName("gtk_list_item_get_focusable")]
		public static extern c_int GetFocusable(ListItem* self);
		[LinkName("gtk_list_item_get_item")]
		public static extern GObject.Object* GetItem(ListItem* self);
		[LinkName("gtk_list_item_get_position")]
		public static extern c_uint GetPosition(ListItem* self);
		[LinkName("gtk_list_item_get_selectable")]
		public static extern c_int GetSelectable(ListItem* self);
		[LinkName("gtk_list_item_get_selected")]
		public static extern c_int GetSelected(ListItem* self);
		[LinkName("gtk_list_item_set_activatable")]
		public static extern void SetActivatable(ListItem* self, c_int activatable);
		[LinkName("gtk_list_item_set_child")]
		public static extern void SetChild(ListItem* self, Widget* child);
		[LinkName("gtk_list_item_set_focusable")]
		public static extern void SetFocusable(ListItem* self, c_int focusable);
		[LinkName("gtk_list_item_set_selectable")]
		public static extern void SetSelectable(ListItem* self, c_int selectable);
	}
	[CRepr]
	public struct ListItemFactory : GObject.Object
	{
	}
	[CRepr]
	public struct ListStore : GObject.Object
	{
		[LinkName("gtk_list_store_newv")]
		public static extern ListStore* Newv(c_int n_columns, GLib.Type* types);
		[LinkName("gtk_list_store_append")]
		public static extern void Append(ListStore* list_store, TreeIter* iter);
		[LinkName("gtk_list_store_clear")]
		public static extern void Clear(ListStore* list_store);
		[LinkName("gtk_list_store_insert")]
		public static extern void Insert(ListStore* list_store, TreeIter* iter, c_int position);
		[LinkName("gtk_list_store_insert_after")]
		public static extern void InsertAfter(ListStore* list_store, TreeIter* iter, TreeIter* sibling);
		[LinkName("gtk_list_store_insert_before")]
		public static extern void InsertBefore(ListStore* list_store, TreeIter* iter, TreeIter* sibling);
		[LinkName("gtk_list_store_insert_with_valuesv")]
		public static extern void InsertWithValuesv(ListStore* list_store, TreeIter* iter, c_int position, c_int* columns, GObject.Value* values, c_int n_values);
		[LinkName("gtk_list_store_iter_is_valid")]
		public static extern c_int IterIsValid(ListStore* list_store, TreeIter* iter);
		[LinkName("gtk_list_store_move_after")]
		public static extern void MoveAfter(ListStore* store, TreeIter* iter, TreeIter* position);
		[LinkName("gtk_list_store_move_before")]
		public static extern void MoveBefore(ListStore* store, TreeIter* iter, TreeIter* position);
		[LinkName("gtk_list_store_prepend")]
		public static extern void Prepend(ListStore* list_store, TreeIter* iter);
		[LinkName("gtk_list_store_remove")]
		public static extern c_int Remove(ListStore* list_store, TreeIter* iter);
		[LinkName("gtk_list_store_reorder")]
		public static extern void Reorder(ListStore* store, c_int* new_order);
		[LinkName("gtk_list_store_set_column_types")]
		public static extern void SetColumnTypes(ListStore* list_store, c_int n_columns, GLib.Type* types);
		[LinkName("gtk_list_store_set_value")]
		public static extern void SetValue(ListStore* list_store, TreeIter* iter, c_int column, GObject.Value* value);
		[LinkName("gtk_list_store_set_valuesv")]
		public static extern void SetValuesv(ListStore* list_store, TreeIter* iter, c_int* columns, GObject.Value* values, c_int n_values);
		[LinkName("gtk_list_store_swap")]
		public static extern void Swap(ListStore* store, TreeIter* a, TreeIter* b);
	}
	[CRepr]
	public struct ListView : ListBase
	{
		[LinkName("gtk_list_view_new")]
		public static extern Widget* New(SelectionModel* model, ListItemFactory* factory);
		[LinkName("gtk_list_view_get_enable_rubberband")]
		public static extern c_int GetEnableRubberband(ListView* self);
		[LinkName("gtk_list_view_get_factory")]
		public static extern ListItemFactory* GetFactory(ListView* self);
		[LinkName("gtk_list_view_get_header_factory")]
		public static extern ListItemFactory* GetHeaderFactory(ListView* self);
		[LinkName("gtk_list_view_get_model")]
		public static extern SelectionModel* GetModel(ListView* self);
		[LinkName("gtk_list_view_get_show_separators")]
		public static extern c_int GetShowSeparators(ListView* self);
		[LinkName("gtk_list_view_get_single_click_activate")]
		public static extern c_int GetSingleClickActivate(ListView* self);
		[LinkName("gtk_list_view_get_tab_behavior")]
		public static extern ListTabBehavior GetTabBehavior(ListView* self);
		[LinkName("gtk_list_view_set_enable_rubberband")]
		public static extern void SetEnableRubberband(ListView* self, c_int enable_rubberband);
		[LinkName("gtk_list_view_set_factory")]
		public static extern void SetFactory(ListView* self, ListItemFactory* factory);
		[LinkName("gtk_list_view_set_header_factory")]
		public static extern void SetHeaderFactory(ListView* self, ListItemFactory* factory);
		[LinkName("gtk_list_view_set_model")]
		public static extern void SetModel(ListView* self, SelectionModel* model);
		[LinkName("gtk_list_view_set_show_separators")]
		public static extern void SetShowSeparators(ListView* self, c_int show_separators);
		[LinkName("gtk_list_view_set_single_click_activate")]
		public static extern void SetSingleClickActivate(ListView* self, c_int single_click_activate);
		[LinkName("gtk_list_view_set_tab_behavior")]
		public static extern void SetTabBehavior(ListView* self, ListTabBehavior tab_behavior);
		public function void ActivateFunc(ListView* self, c_uint position, void* user_data);
	}
	[CRepr]
	public struct LockButton : Button
	{
		[LinkName("gtk_lock_button_new")]
		public static extern Widget* New(Gio.Permission* permission);
		[LinkName("gtk_lock_button_get_permission")]
		public static extern Gio.Permission* GetPermission(LockButton* button);
		[LinkName("gtk_lock_button_set_permission")]
		public static extern void SetPermission(LockButton* button, Gio.Permission* permission);
	}
	[CRepr]
	public struct MapListModel : GObject.Object
	{
		[LinkName("gtk_map_list_model_new")]
		public static extern MapListModel* New(Gio.ListModel* model, MapListModelMapFunc map_func, void* user_data, GLib.DestroyNotify user_destroy);
		[LinkName("gtk_map_list_model_get_model")]
		public static extern Gio.ListModel* GetModel(MapListModel* self);
		[LinkName("gtk_map_list_model_has_map")]
		public static extern c_int HasMap(MapListModel* self);
		[LinkName("gtk_map_list_model_set_map_func")]
		public static extern void SetMapFunc(MapListModel* self, MapListModelMapFunc map_func, void* user_data, GLib.DestroyNotify user_destroy);
		[LinkName("gtk_map_list_model_set_model")]
		public static extern void SetModel(MapListModel* self, Gio.ListModel* model);
	}
	[CRepr]
	public struct MediaControls : Widget
	{
		[LinkName("gtk_media_controls_new")]
		public static extern Widget* New(MediaStream* stream);
		[LinkName("gtk_media_controls_get_media_stream")]
		public static extern MediaStream* GetMediaStream(MediaControls* controls);
		[LinkName("gtk_media_controls_set_media_stream")]
		public static extern void SetMediaStream(MediaControls* controls, MediaStream* stream);
	}
	[CRepr]
	public struct MediaFile : MediaStream
	{
		[LinkName("gtk_media_file_new")]
		public static extern MediaFile* New();
		[LinkName("gtk_media_file_new_for_file")]
		public static extern MediaFile* NewForFile(Gio.File* file);
		[LinkName("gtk_media_file_new_for_filename")]
		public static extern MediaFile* NewForFilename(char8* filename);
		[LinkName("gtk_media_file_new_for_input_stream")]
		public static extern MediaFile* NewForInputStream(Gio.InputStream* stream);
		[LinkName("gtk_media_file_new_for_resource")]
		public static extern MediaFile* NewForResource(char8* resource_path);
		[LinkName("gtk_media_file_clear")]
		public static extern void Clear(MediaFile* self);
		[LinkName("gtk_media_file_get_file")]
		public static extern Gio.File* GetFile(MediaFile* self);
		[LinkName("gtk_media_file_get_input_stream")]
		public static extern Gio.InputStream* GetInputStream(MediaFile* self);
		[LinkName("gtk_media_file_set_file")]
		public static extern void SetFile(MediaFile* self, Gio.File* file);
		[LinkName("gtk_media_file_set_filename")]
		public static extern void SetFilename(MediaFile* self, char8* filename);
		[LinkName("gtk_media_file_set_input_stream")]
		public static extern void SetInputStream(MediaFile* self, Gio.InputStream* stream);
		[LinkName("gtk_media_file_set_resource")]
		public static extern void SetResource(MediaFile* self, char8* resource_path);
	}
	[CRepr]
	public struct MediaStream : GObject.Object
	{
		[LinkName("gtk_media_stream_gerror")]
		public static extern void Gerror(MediaStream* self, GLib.Error* error);
		[LinkName("gtk_media_stream_get_duration")]
		public static extern c_longlong GetDuration(MediaStream* self);
		[LinkName("gtk_media_stream_get_ended")]
		public static extern c_int GetEnded(MediaStream* self);
		[LinkName("gtk_media_stream_get_error")]
		public static extern GLib.Error* GetError(MediaStream* self);
		[LinkName("gtk_media_stream_get_loop")]
		public static extern c_int GetLoop(MediaStream* self);
		[LinkName("gtk_media_stream_get_muted")]
		public static extern c_int GetMuted(MediaStream* self);
		[LinkName("gtk_media_stream_get_playing")]
		public static extern c_int GetPlaying(MediaStream* self);
		[LinkName("gtk_media_stream_get_timestamp")]
		public static extern c_longlong GetTimestamp(MediaStream* self);
		[LinkName("gtk_media_stream_get_volume")]
		public static extern double GetVolume(MediaStream* self);
		[LinkName("gtk_media_stream_has_audio")]
		public static extern c_int HasAudio(MediaStream* self);
		[LinkName("gtk_media_stream_has_video")]
		public static extern c_int HasVideo(MediaStream* self);
		[LinkName("gtk_media_stream_is_prepared")]
		public static extern c_int IsPrepared(MediaStream* self);
		[LinkName("gtk_media_stream_is_seekable")]
		public static extern c_int IsSeekable(MediaStream* self);
		[LinkName("gtk_media_stream_is_seeking")]
		public static extern c_int IsSeeking(MediaStream* self);
		[LinkName("gtk_media_stream_pause")]
		public static extern void Pause(MediaStream* self);
		[LinkName("gtk_media_stream_play")]
		public static extern void Play(MediaStream* self);
		[LinkName("gtk_media_stream_realize")]
		public static extern void Realize(MediaStream* self, Gdk.Surface* surface);
		[LinkName("gtk_media_stream_seek")]
		public static extern void Seek(MediaStream* self, c_longlong timestamp);
		[LinkName("gtk_media_stream_seek_failed")]
		public static extern void SeekFailed(MediaStream* self);
		[LinkName("gtk_media_stream_seek_success")]
		public static extern void SeekSuccess(MediaStream* self);
		[LinkName("gtk_media_stream_set_loop")]
		public static extern void SetLoop(MediaStream* self, c_int loop);
		[LinkName("gtk_media_stream_set_muted")]
		public static extern void SetMuted(MediaStream* self, c_int muted);
		[LinkName("gtk_media_stream_set_playing")]
		public static extern void SetPlaying(MediaStream* self, c_int playing);
		[LinkName("gtk_media_stream_set_volume")]
		public static extern void SetVolume(MediaStream* self, double volume);
		[LinkName("gtk_media_stream_stream_ended")]
		public static extern void StreamEnded(MediaStream* self);
		[LinkName("gtk_media_stream_stream_prepared")]
		public static extern void StreamPrepared(MediaStream* self, c_int has_audio, c_int has_video, c_int seekable, c_longlong duration);
		[LinkName("gtk_media_stream_stream_unprepared")]
		public static extern void StreamUnprepared(MediaStream* self);
		[LinkName("gtk_media_stream_unrealize")]
		public static extern void Unrealize(MediaStream* self, Gdk.Surface* surface);
		[LinkName("gtk_media_stream_update")]
		public static extern void Update(MediaStream* self, c_longlong timestamp);
	}
	[CRepr]
	public struct MenuButton : Widget
	{
		[LinkName("gtk_menu_button_new")]
		public static extern Widget* New();
		[LinkName("gtk_menu_button_get_active")]
		public static extern c_int GetActive(MenuButton* menu_button);
		[LinkName("gtk_menu_button_get_always_show_arrow")]
		public static extern c_int GetAlwaysShowArrow(MenuButton* menu_button);
		[LinkName("gtk_menu_button_get_can_shrink")]
		public static extern c_int GetCanShrink(MenuButton* menu_button);
		[LinkName("gtk_menu_button_get_child")]
		public static extern Widget* GetChild(MenuButton* menu_button);
		[LinkName("gtk_menu_button_get_direction")]
		public static extern ArrowType GetDirection(MenuButton* menu_button);
		[LinkName("gtk_menu_button_get_has_frame")]
		public static extern c_int GetHasFrame(MenuButton* menu_button);
		[LinkName("gtk_menu_button_get_icon_name")]
		public static extern char8* GetIconName(MenuButton* menu_button);
		[LinkName("gtk_menu_button_get_label")]
		public static extern char8* GetLabel(MenuButton* menu_button);
		[LinkName("gtk_menu_button_get_menu_model")]
		public static extern Gio.MenuModel* GetMenuModel(MenuButton* menu_button);
		[LinkName("gtk_menu_button_get_popover")]
		public static extern Popover* GetPopover(MenuButton* menu_button);
		[LinkName("gtk_menu_button_get_primary")]
		public static extern c_int GetPrimary(MenuButton* menu_button);
		[LinkName("gtk_menu_button_get_use_underline")]
		public static extern c_int GetUseUnderline(MenuButton* menu_button);
		[LinkName("gtk_menu_button_popdown")]
		public static extern void Popdown(MenuButton* menu_button);
		[LinkName("gtk_menu_button_popup")]
		public static extern void Popup(MenuButton* menu_button);
		[LinkName("gtk_menu_button_set_active")]
		public static extern void SetActive(MenuButton* menu_button, c_int active);
		[LinkName("gtk_menu_button_set_always_show_arrow")]
		public static extern void SetAlwaysShowArrow(MenuButton* menu_button, c_int always_show_arrow);
		[LinkName("gtk_menu_button_set_can_shrink")]
		public static extern void SetCanShrink(MenuButton* menu_button, c_int can_shrink);
		[LinkName("gtk_menu_button_set_child")]
		public static extern void SetChild(MenuButton* menu_button, Widget* child);
		[LinkName("gtk_menu_button_set_create_popup_func")]
		public static extern void SetCreatePopupFunc(MenuButton* menu_button, MenuButtonCreatePopupFunc func, void* user_data, GLib.DestroyNotify destroy_notify);
		[LinkName("gtk_menu_button_set_direction")]
		public static extern void SetDirection(MenuButton* menu_button, ArrowType direction);
		[LinkName("gtk_menu_button_set_has_frame")]
		public static extern void SetHasFrame(MenuButton* menu_button, c_int has_frame);
		[LinkName("gtk_menu_button_set_icon_name")]
		public static extern void SetIconName(MenuButton* menu_button, char8* icon_name);
		[LinkName("gtk_menu_button_set_label")]
		public static extern void SetLabel(MenuButton* menu_button, char8* label);
		[LinkName("gtk_menu_button_set_menu_model")]
		public static extern void SetMenuModel(MenuButton* menu_button, Gio.MenuModel* menu_model);
		[LinkName("gtk_menu_button_set_popover")]
		public static extern void SetPopover(MenuButton* menu_button, Widget* popover);
		[LinkName("gtk_menu_button_set_primary")]
		public static extern void SetPrimary(MenuButton* menu_button, c_int primary);
		[LinkName("gtk_menu_button_set_use_underline")]
		public static extern void SetUseUnderline(MenuButton* menu_button, c_int use_underline);
		public function void ActivateFunc(MenuButton* self, void* user_data);
	}
	[CRepr]
	public struct MessageDialog : Dialog
	{
		[LinkName("gtk_message_dialog_get_message_area")]
		public static extern Widget* GetMessageArea(MessageDialog* message_dialog);
		[LinkName("gtk_message_dialog_set_markup")]
		public static extern void SetMarkup(MessageDialog* message_dialog, char8* str);
	}
	[CRepr]
	public struct MnemonicAction : ShortcutAction
	{
	}
	[CRepr]
	public struct MnemonicTrigger : ShortcutTrigger
	{
		[LinkName("gtk_mnemonic_trigger_new")]
		public static extern MnemonicTrigger* New(c_uint keyval);
		[LinkName("gtk_mnemonic_trigger_get_keyval")]
		public static extern c_uint GetKeyval(MnemonicTrigger* self);
	}
	[CRepr]
	public struct MountOperation : Gio.MountOperation
	{
		[LinkName("gtk_mount_operation_new")]
		public static extern Gio.MountOperation* New(Window* parent);
		[LinkName("gtk_mount_operation_get_display")]
		public static extern Gdk.Display* GetDisplay(MountOperation* op);
		[LinkName("gtk_mount_operation_get_parent")]
		public static extern Window* GetParent(MountOperation* op);
		[LinkName("gtk_mount_operation_is_showing")]
		public static extern c_int IsShowing(MountOperation* op);
		[LinkName("gtk_mount_operation_set_display")]
		public static extern void SetDisplay(MountOperation* op, Gdk.Display* display);
		[LinkName("gtk_mount_operation_set_parent")]
		public static extern void SetParent(MountOperation* op, Window* parent);
	}
	[CRepr]
	public struct MultiFilter : Filter
	{
		[LinkName("gtk_multi_filter_append")]
		public static extern void Append(MultiFilter* self, Filter* filter);
		[LinkName("gtk_multi_filter_remove")]
		public static extern void Remove(MultiFilter* self, c_uint position);
	}
	[CRepr]
	public struct MultiSelection : GObject.Object
	{
		[LinkName("gtk_multi_selection_new")]
		public static extern MultiSelection* New(Gio.ListModel* model);
		[LinkName("gtk_multi_selection_get_model")]
		public static extern Gio.ListModel* GetModel(MultiSelection* self);
		[LinkName("gtk_multi_selection_set_model")]
		public static extern void SetModel(MultiSelection* self, Gio.ListModel* model);
	}
	[CRepr]
	public struct MultiSorter : Sorter
	{
		[LinkName("gtk_multi_sorter_new")]
		public static extern MultiSorter* New();
		[LinkName("gtk_multi_sorter_append")]
		public static extern void Append(MultiSorter* self, Sorter* sorter);
		[LinkName("gtk_multi_sorter_remove")]
		public static extern void Remove(MultiSorter* self, c_uint position);
	}
	[CRepr]
	public struct NamedAction : ShortcutAction
	{
		[LinkName("gtk_named_action_new")]
		public static extern NamedAction* New(char8* name);
		[LinkName("gtk_named_action_get_action_name")]
		public static extern char8* GetActionName(NamedAction* self);
	}
	[CRepr]
	public struct NativeDialog : GObject.Object
	{
		[LinkName("gtk_native_dialog_destroy")]
		public static extern void Destroy(NativeDialog* self);
		[LinkName("gtk_native_dialog_get_modal")]
		public static extern c_int GetModal(NativeDialog* self);
		[LinkName("gtk_native_dialog_get_title")]
		public static extern char8* GetTitle(NativeDialog* self);
		[LinkName("gtk_native_dialog_get_transient_for")]
		public static extern Window* GetTransientFor(NativeDialog* self);
		[LinkName("gtk_native_dialog_get_visible")]
		public static extern c_int GetVisible(NativeDialog* self);
		[LinkName("gtk_native_dialog_hide")]
		public static extern void Hide(NativeDialog* self);
		[LinkName("gtk_native_dialog_set_modal")]
		public static extern void SetModal(NativeDialog* self, c_int modal);
		[LinkName("gtk_native_dialog_set_title")]
		public static extern void SetTitle(NativeDialog* self, char8* title);
		[LinkName("gtk_native_dialog_set_transient_for")]
		public static extern void SetTransientFor(NativeDialog* self, Window* parent);
		[LinkName("gtk_native_dialog_show")]
		public static extern void Show(NativeDialog* self);
		public function void ResponseFunc(NativeDialog* self, c_int response_id, void* user_data);
	}
	[CRepr]
	public struct NeverTrigger : ShortcutTrigger
	{
	}
	[CRepr]
	public struct NoSelection : GObject.Object
	{
		[LinkName("gtk_no_selection_new")]
		public static extern NoSelection* New(Gio.ListModel* model);
		[LinkName("gtk_no_selection_get_model")]
		public static extern Gio.ListModel* GetModel(NoSelection* self);
		[LinkName("gtk_no_selection_set_model")]
		public static extern void SetModel(NoSelection* self, Gio.ListModel* model);
	}
	[CRepr]
	public struct Notebook : Widget
	{
		[LinkName("gtk_notebook_new")]
		public static extern Widget* New();
		[LinkName("gtk_notebook_append_page")]
		public static extern c_int AppendPage(Notebook* notebook, Widget* child, Widget* tab_label);
		[LinkName("gtk_notebook_append_page_menu")]
		public static extern c_int AppendPageMenu(Notebook* notebook, Widget* child, Widget* tab_label, Widget* menu_label);
		[LinkName("gtk_notebook_detach_tab")]
		public static extern void DetachTab(Notebook* notebook, Widget* child);
		[LinkName("gtk_notebook_get_action_widget")]
		public static extern Widget* GetActionWidget(Notebook* notebook, PackType pack_type);
		[LinkName("gtk_notebook_get_current_page")]
		public static extern c_int GetCurrentPage(Notebook* notebook);
		[LinkName("gtk_notebook_get_group_name")]
		public static extern char8* GetGroupName(Notebook* notebook);
		[LinkName("gtk_notebook_get_menu_label")]
		public static extern Widget* GetMenuLabel(Notebook* notebook, Widget* child);
		[LinkName("gtk_notebook_get_menu_label_text")]
		public static extern char8* GetMenuLabelText(Notebook* notebook, Widget* child);
		[LinkName("gtk_notebook_get_n_pages")]
		public static extern c_int GetNPages(Notebook* notebook);
		[LinkName("gtk_notebook_get_nth_page")]
		public static extern Widget* GetNthPage(Notebook* notebook, c_int page_num);
		[LinkName("gtk_notebook_get_page")]
		public static extern NotebookPage* GetPage(Notebook* notebook, Widget* child);
		[LinkName("gtk_notebook_get_pages")]
		public static extern Gio.ListModel* GetPages(Notebook* notebook);
		[LinkName("gtk_notebook_get_scrollable")]
		public static extern c_int GetScrollable(Notebook* notebook);
		[LinkName("gtk_notebook_get_show_border")]
		public static extern c_int GetShowBorder(Notebook* notebook);
		[LinkName("gtk_notebook_get_show_tabs")]
		public static extern c_int GetShowTabs(Notebook* notebook);
		[LinkName("gtk_notebook_get_tab_detachable")]
		public static extern c_int GetTabDetachable(Notebook* notebook, Widget* child);
		[LinkName("gtk_notebook_get_tab_label")]
		public static extern Widget* GetTabLabel(Notebook* notebook, Widget* child);
		[LinkName("gtk_notebook_get_tab_label_text")]
		public static extern char8* GetTabLabelText(Notebook* notebook, Widget* child);
		[LinkName("gtk_notebook_get_tab_pos")]
		public static extern PositionType GetTabPos(Notebook* notebook);
		[LinkName("gtk_notebook_get_tab_reorderable")]
		public static extern c_int GetTabReorderable(Notebook* notebook, Widget* child);
		[LinkName("gtk_notebook_insert_page")]
		public static extern c_int InsertPage(Notebook* notebook, Widget* child, Widget* tab_label, c_int position);
		[LinkName("gtk_notebook_insert_page_menu")]
		public static extern c_int InsertPageMenu(Notebook* notebook, Widget* child, Widget* tab_label, Widget* menu_label, c_int position);
		[LinkName("gtk_notebook_next_page")]
		public static extern void NextPage(Notebook* notebook);
		[LinkName("gtk_notebook_page_num")]
		public static extern c_int PageNum(Notebook* notebook, Widget* child);
		[LinkName("gtk_notebook_popup_disable")]
		public static extern void PopupDisable(Notebook* notebook);
		[LinkName("gtk_notebook_popup_enable")]
		public static extern void PopupEnable(Notebook* notebook);
		[LinkName("gtk_notebook_prepend_page")]
		public static extern c_int PrependPage(Notebook* notebook, Widget* child, Widget* tab_label);
		[LinkName("gtk_notebook_prepend_page_menu")]
		public static extern c_int PrependPageMenu(Notebook* notebook, Widget* child, Widget* tab_label, Widget* menu_label);
		[LinkName("gtk_notebook_prev_page")]
		public static extern void PrevPage(Notebook* notebook);
		[LinkName("gtk_notebook_remove_page")]
		public static extern void RemovePage(Notebook* notebook, c_int page_num);
		[LinkName("gtk_notebook_reorder_child")]
		public static extern void ReorderChild(Notebook* notebook, Widget* child, c_int position);
		[LinkName("gtk_notebook_set_action_widget")]
		public static extern void SetActionWidget(Notebook* notebook, Widget* widget, PackType pack_type);
		[LinkName("gtk_notebook_set_current_page")]
		public static extern void SetCurrentPage(Notebook* notebook, c_int page_num);
		[LinkName("gtk_notebook_set_group_name")]
		public static extern void SetGroupName(Notebook* notebook, char8* group_name);
		[LinkName("gtk_notebook_set_menu_label")]
		public static extern void SetMenuLabel(Notebook* notebook, Widget* child, Widget* menu_label);
		[LinkName("gtk_notebook_set_menu_label_text")]
		public static extern void SetMenuLabelText(Notebook* notebook, Widget* child, char8* menu_text);
		[LinkName("gtk_notebook_set_scrollable")]
		public static extern void SetScrollable(Notebook* notebook, c_int scrollable);
		[LinkName("gtk_notebook_set_show_border")]
		public static extern void SetShowBorder(Notebook* notebook, c_int show_border);
		[LinkName("gtk_notebook_set_show_tabs")]
		public static extern void SetShowTabs(Notebook* notebook, c_int show_tabs);
		[LinkName("gtk_notebook_set_tab_detachable")]
		public static extern void SetTabDetachable(Notebook* notebook, Widget* child, c_int detachable);
		[LinkName("gtk_notebook_set_tab_label")]
		public static extern void SetTabLabel(Notebook* notebook, Widget* child, Widget* tab_label);
		[LinkName("gtk_notebook_set_tab_label_text")]
		public static extern void SetTabLabelText(Notebook* notebook, Widget* child, char8* tab_text);
		[LinkName("gtk_notebook_set_tab_pos")]
		public static extern void SetTabPos(Notebook* notebook, PositionType pos);
		[LinkName("gtk_notebook_set_tab_reorderable")]
		public static extern void SetTabReorderable(Notebook* notebook, Widget* child, c_int reorderable);
		public function c_int ChangeCurrentPageFunc(Notebook* self, c_int object, void* user_data);
		public function Notebook CreateWindowFunc(Notebook* self, Widget page, void* user_data);
		public function c_int FocusTabFunc(Notebook* self, NotebookTab object, void* user_data);
		public function void MoveFocusOutFunc(Notebook* self, DirectionType object, void* user_data);
		public function void PageAddedFunc(Notebook* self, Widget child, c_uint page_num, void* user_data);
		public function void PageRemovedFunc(Notebook* self, Widget child, c_uint page_num, void* user_data);
		public function void PageReorderedFunc(Notebook* self, Widget child, c_uint page_num, void* user_data);
		public function c_int ReorderTabFunc(Notebook* self, DirectionType object, c_int p0, void* user_data);
		public function c_int SelectPageFunc(Notebook* self, c_int object, void* user_data);
		public function void SwitchPageFunc(Notebook* self, Widget page, c_uint page_num, void* user_data);
	}
	[CRepr]
	public struct NotebookPage : GObject.Object
	{
		[LinkName("gtk_notebook_page_get_child")]
		public static extern Widget* GetChild(NotebookPage* page);
	}
	[CRepr]
	public struct NothingAction : ShortcutAction
	{
	}
	[CRepr]
	public struct NumericSorter : Sorter
	{
		[LinkName("gtk_numeric_sorter_new")]
		public static extern NumericSorter* New(Expression* expression);
		[LinkName("gtk_numeric_sorter_get_expression")]
		public static extern Expression* GetExpression(NumericSorter* self);
		[LinkName("gtk_numeric_sorter_get_sort_order")]
		public static extern SortType GetSortOrder(NumericSorter* self);
		[LinkName("gtk_numeric_sorter_set_expression")]
		public static extern void SetExpression(NumericSorter* self, Expression* expression);
		[LinkName("gtk_numeric_sorter_set_sort_order")]
		public static extern void SetSortOrder(NumericSorter* self, SortType sort_order);
	}
	[CRepr]
	public struct ObjectExpression : Expression
	{
		[LinkName("gtk_object_expression_new")]
		public static extern ObjectExpression* New(GObject.Object* object);
		[LinkName("gtk_object_expression_get_object")]
		public static extern GObject.Object* GetObject(ObjectExpression* expression);
	}
	[CRepr]
	public struct Overlay : Widget
	{
		[LinkName("gtk_overlay_new")]
		public static extern Widget* New();
		[LinkName("gtk_overlay_add_overlay")]
		public static extern void AddOverlay(Overlay* overlay, Widget* widget);
		[LinkName("gtk_overlay_get_child")]
		public static extern Widget* GetChild(Overlay* overlay);
		[LinkName("gtk_overlay_get_clip_overlay")]
		public static extern c_int GetClipOverlay(Overlay* overlay, Widget* widget);
		[LinkName("gtk_overlay_get_measure_overlay")]
		public static extern c_int GetMeasureOverlay(Overlay* overlay, Widget* widget);
		[LinkName("gtk_overlay_remove_overlay")]
		public static extern void RemoveOverlay(Overlay* overlay, Widget* widget);
		[LinkName("gtk_overlay_set_child")]
		public static extern void SetChild(Overlay* overlay, Widget* child);
		[LinkName("gtk_overlay_set_clip_overlay")]
		public static extern void SetClipOverlay(Overlay* overlay, Widget* widget, c_int clip_overlay);
		[LinkName("gtk_overlay_set_measure_overlay")]
		public static extern void SetMeasureOverlay(Overlay* overlay, Widget* widget, c_int measure);
		public function c_int GetChildPositionFunc(Overlay* self, Widget widget, Gdk.Rectangle allocation, void* user_data);
	}
	[CRepr]
	public struct OverlayLayout : LayoutManager
	{
		[LinkName("gtk_overlay_layout_new")]
		public static extern LayoutManager* New();
	}
	[CRepr]
	public struct OverlayLayoutChild : LayoutChild
	{
		[LinkName("gtk_overlay_layout_child_get_clip_overlay")]
		public static extern c_int GetClipOverlay(OverlayLayoutChild* child);
		[LinkName("gtk_overlay_layout_child_get_measure")]
		public static extern c_int GetMeasure(OverlayLayoutChild* child);
		[LinkName("gtk_overlay_layout_child_set_clip_overlay")]
		public static extern void SetClipOverlay(OverlayLayoutChild* child, c_int clip_overlay);
		[LinkName("gtk_overlay_layout_child_set_measure")]
		public static extern void SetMeasure(OverlayLayoutChild* child, c_int measure);
	}
	[CRepr]
	public struct PadController : EventController
	{
		[LinkName("gtk_pad_controller_new")]
		public static extern PadController* New(Gio.ActionGroup* group, Gdk.Device* pad);
		[LinkName("gtk_pad_controller_set_action")]
		public static extern void SetAction(PadController* controller, PadActionType type, c_int index, c_int mode, char8* label, char8* action_name);
		[LinkName("gtk_pad_controller_set_action_entries")]
		public static extern void SetActionEntries(PadController* controller, PadActionEntry* entries, c_int n_entries);
	}
	[CRepr]
	public struct PageSetup : GObject.Object
	{
		[LinkName("gtk_page_setup_new")]
		public static extern PageSetup* New();
		[LinkName("gtk_page_setup_new_from_file")]
		public static extern PageSetup* NewFromFile(char8* file_name);
		[LinkName("gtk_page_setup_new_from_gvariant")]
		public static extern PageSetup* NewFromGvariant(GLib.Variant* variant);
		[LinkName("gtk_page_setup_new_from_key_file")]
		public static extern PageSetup* NewFromKeyFile(GLib.KeyFile* key_file, char8* group_name);
		[LinkName("gtk_page_setup_copy")]
		public static extern PageSetup* Copy(PageSetup* other);
		[LinkName("gtk_page_setup_get_bottom_margin")]
		public static extern double GetBottomMargin(PageSetup* setup, Unit unit);
		[LinkName("gtk_page_setup_get_left_margin")]
		public static extern double GetLeftMargin(PageSetup* setup, Unit unit);
		[LinkName("gtk_page_setup_get_orientation")]
		public static extern PageOrientation GetOrientation(PageSetup* setup);
		[LinkName("gtk_page_setup_get_page_height")]
		public static extern double GetPageHeight(PageSetup* setup, Unit unit);
		[LinkName("gtk_page_setup_get_page_width")]
		public static extern double GetPageWidth(PageSetup* setup, Unit unit);
		[LinkName("gtk_page_setup_get_paper_height")]
		public static extern double GetPaperHeight(PageSetup* setup, Unit unit);
		[LinkName("gtk_page_setup_get_paper_size")]
		public static extern PaperSize* GetPaperSize(PageSetup* setup);
		[LinkName("gtk_page_setup_get_paper_width")]
		public static extern double GetPaperWidth(PageSetup* setup, Unit unit);
		[LinkName("gtk_page_setup_get_right_margin")]
		public static extern double GetRightMargin(PageSetup* setup, Unit unit);
		[LinkName("gtk_page_setup_get_top_margin")]
		public static extern double GetTopMargin(PageSetup* setup, Unit unit);
		[LinkName("gtk_page_setup_load_file")]
		public static extern c_int LoadFile(PageSetup* setup, char8* file_name);
		[LinkName("gtk_page_setup_load_key_file")]
		public static extern c_int LoadKeyFile(PageSetup* setup, GLib.KeyFile* key_file, char8* group_name);
		[LinkName("gtk_page_setup_set_bottom_margin")]
		public static extern void SetBottomMargin(PageSetup* setup, double margin, Unit unit);
		[LinkName("gtk_page_setup_set_left_margin")]
		public static extern void SetLeftMargin(PageSetup* setup, double margin, Unit unit);
		[LinkName("gtk_page_setup_set_orientation")]
		public static extern void SetOrientation(PageSetup* setup, PageOrientation orientation);
		[LinkName("gtk_page_setup_set_paper_size")]
		public static extern void SetPaperSize(PageSetup* setup, PaperSize* size);
		[LinkName("gtk_page_setup_set_paper_size_and_default_margins")]
		public static extern void SetPaperSizeAndDefaultMargins(PageSetup* setup, PaperSize* size);
		[LinkName("gtk_page_setup_set_right_margin")]
		public static extern void SetRightMargin(PageSetup* setup, double margin, Unit unit);
		[LinkName("gtk_page_setup_set_top_margin")]
		public static extern void SetTopMargin(PageSetup* setup, double margin, Unit unit);
		[LinkName("gtk_page_setup_to_file")]
		public static extern c_int ToFile(PageSetup* setup, char8* file_name);
		[LinkName("gtk_page_setup_to_gvariant")]
		public static extern GLib.Variant* ToGvariant(PageSetup* setup);
		[LinkName("gtk_page_setup_to_key_file")]
		public static extern void ToKeyFile(PageSetup* setup, GLib.KeyFile* key_file, char8* group_name);
	}
	[CRepr]
	public struct PageSetupUnixDialog : Dialog
	{
		[LinkName("gtk_page_setup_unix_dialog_new")]
		public static extern Widget* New(char8* title, Window* parent);
		[LinkName("gtk_page_setup_unix_dialog_get_page_setup")]
		public static extern PageSetup* GetPageSetup(PageSetupUnixDialog* dialog);
		[LinkName("gtk_page_setup_unix_dialog_get_print_settings")]
		public static extern PrintSettings* GetPrintSettings(PageSetupUnixDialog* dialog);
		[LinkName("gtk_page_setup_unix_dialog_set_page_setup")]
		public static extern void SetPageSetup(PageSetupUnixDialog* dialog, PageSetup* page_setup);
		[LinkName("gtk_page_setup_unix_dialog_set_print_settings")]
		public static extern void SetPrintSettings(PageSetupUnixDialog* dialog, PrintSettings* print_settings);
	}
	[CRepr]
	public struct Paned : Widget
	{
		[LinkName("gtk_paned_new")]
		public static extern Widget* New(Orientation orientation);
		[LinkName("gtk_paned_get_end_child")]
		public static extern Widget* GetEndChild(Paned* paned);
		[LinkName("gtk_paned_get_position")]
		public static extern c_int GetPosition(Paned* paned);
		[LinkName("gtk_paned_get_resize_end_child")]
		public static extern c_int GetResizeEndChild(Paned* paned);
		[LinkName("gtk_paned_get_resize_start_child")]
		public static extern c_int GetResizeStartChild(Paned* paned);
		[LinkName("gtk_paned_get_shrink_end_child")]
		public static extern c_int GetShrinkEndChild(Paned* paned);
		[LinkName("gtk_paned_get_shrink_start_child")]
		public static extern c_int GetShrinkStartChild(Paned* paned);
		[LinkName("gtk_paned_get_start_child")]
		public static extern Widget* GetStartChild(Paned* paned);
		[LinkName("gtk_paned_get_wide_handle")]
		public static extern c_int GetWideHandle(Paned* paned);
		[LinkName("gtk_paned_set_end_child")]
		public static extern void SetEndChild(Paned* paned, Widget* child);
		[LinkName("gtk_paned_set_position")]
		public static extern void SetPosition(Paned* paned, c_int position);
		[LinkName("gtk_paned_set_resize_end_child")]
		public static extern void SetResizeEndChild(Paned* paned, c_int resize);
		[LinkName("gtk_paned_set_resize_start_child")]
		public static extern void SetResizeStartChild(Paned* paned, c_int resize);
		[LinkName("gtk_paned_set_shrink_end_child")]
		public static extern void SetShrinkEndChild(Paned* paned, c_int resize);
		[LinkName("gtk_paned_set_shrink_start_child")]
		public static extern void SetShrinkStartChild(Paned* paned, c_int resize);
		[LinkName("gtk_paned_set_start_child")]
		public static extern void SetStartChild(Paned* paned, Widget* child);
		[LinkName("gtk_paned_set_wide_handle")]
		public static extern void SetWideHandle(Paned* paned, c_int wide);
		public function c_int AcceptPositionFunc(Paned* self, void* user_data);
		public function c_int CancelPositionFunc(Paned* self, void* user_data);
		public function c_int CycleChildFocusFunc(Paned* self, c_int reversed, void* user_data);
		public function c_int CycleHandleFocusFunc(Paned* self, c_int reversed, void* user_data);
		public function c_int MoveHandleFunc(Paned* self, ScrollType scroll_type, void* user_data);
		public function c_int ToggleHandleFocusFunc(Paned* self, void* user_data);
	}
	[CRepr]
	public struct ParamSpecExpression : GObject.ParamSpec
	{
	}
	[CRepr]
	public struct PasswordEntry : Widget
	{
		[LinkName("gtk_password_entry_new")]
		public static extern Widget* New();
		[LinkName("gtk_password_entry_get_extra_menu")]
		public static extern Gio.MenuModel* GetExtraMenu(PasswordEntry* entry);
		[LinkName("gtk_password_entry_get_show_peek_icon")]
		public static extern c_int GetShowPeekIcon(PasswordEntry* entry);
		[LinkName("gtk_password_entry_set_extra_menu")]
		public static extern void SetExtraMenu(PasswordEntry* entry, Gio.MenuModel* model);
		[LinkName("gtk_password_entry_set_show_peek_icon")]
		public static extern void SetShowPeekIcon(PasswordEntry* entry, c_int show_peek_icon);
		public function void ActivateFunc(PasswordEntry* self, void* user_data);
	}
	[CRepr]
	public struct PasswordEntryBuffer : EntryBuffer
	{
		[LinkName("gtk_password_entry_buffer_new")]
		public static extern EntryBuffer* New();
	}
	[CRepr]
	public struct Picture : Widget
	{
		[LinkName("gtk_picture_new")]
		public static extern Widget* New();
		[LinkName("gtk_picture_new_for_file")]
		public static extern Widget* NewForFile(Gio.File* file);
		[LinkName("gtk_picture_new_for_filename")]
		public static extern Widget* NewForFilename(char8* filename);
		[LinkName("gtk_picture_new_for_paintable")]
		public static extern Widget* NewForPaintable(Gdk.Paintable* paintable);
		[LinkName("gtk_picture_new_for_pixbuf")]
		public static extern Widget* NewForPixbuf(GdkPixbuf.Pixbuf* pixbuf);
		[LinkName("gtk_picture_new_for_resource")]
		public static extern Widget* NewForResource(char8* resource_path);
		[LinkName("gtk_picture_get_alternative_text")]
		public static extern char8* GetAlternativeText(Picture* self);
		[LinkName("gtk_picture_get_can_shrink")]
		public static extern c_int GetCanShrink(Picture* self);
		[LinkName("gtk_picture_get_content_fit")]
		public static extern ContentFit GetContentFit(Picture* self);
		[LinkName("gtk_picture_get_file")]
		public static extern Gio.File* GetFile(Picture* self);
		[LinkName("gtk_picture_get_keep_aspect_ratio")]
		public static extern c_int GetKeepAspectRatio(Picture* self);
		[LinkName("gtk_picture_get_paintable")]
		public static extern Gdk.Paintable* GetPaintable(Picture* self);
		[LinkName("gtk_picture_set_alternative_text")]
		public static extern void SetAlternativeText(Picture* self, char8* alternative_text);
		[LinkName("gtk_picture_set_can_shrink")]
		public static extern void SetCanShrink(Picture* self, c_int can_shrink);
		[LinkName("gtk_picture_set_content_fit")]
		public static extern void SetContentFit(Picture* self, ContentFit content_fit);
		[LinkName("gtk_picture_set_file")]
		public static extern void SetFile(Picture* self, Gio.File* file);
		[LinkName("gtk_picture_set_filename")]
		public static extern void SetFilename(Picture* self, char8* filename);
		[LinkName("gtk_picture_set_keep_aspect_ratio")]
		public static extern void SetKeepAspectRatio(Picture* self, c_int keep_aspect_ratio);
		[LinkName("gtk_picture_set_paintable")]
		public static extern void SetPaintable(Picture* self, Gdk.Paintable* paintable);
		[LinkName("gtk_picture_set_pixbuf")]
		public static extern void SetPixbuf(Picture* self, GdkPixbuf.Pixbuf* pixbuf);
		[LinkName("gtk_picture_set_resource")]
		public static extern void SetResource(Picture* self, char8* resource_path);
	}
	[CRepr]
	public struct Popover : Widget
	{
		[LinkName("gtk_popover_new")]
		public static extern Widget* New();
		[LinkName("gtk_popover_get_autohide")]
		public static extern c_int GetAutohide(Popover* popover);
		[LinkName("gtk_popover_get_cascade_popdown")]
		public static extern c_int GetCascadePopdown(Popover* popover);
		[LinkName("gtk_popover_get_child")]
		public static extern Widget* GetChild(Popover* popover);
		[LinkName("gtk_popover_get_has_arrow")]
		public static extern c_int GetHasArrow(Popover* popover);
		[LinkName("gtk_popover_get_mnemonics_visible")]
		public static extern c_int GetMnemonicsVisible(Popover* popover);
		[LinkName("gtk_popover_get_offset")]
		public static extern void GetOffset(Popover* popover, c_int* x_offset, c_int* y_offset);
		[LinkName("gtk_popover_get_pointing_to")]
		public static extern c_int GetPointingTo(Popover* popover, Gdk.Rectangle* rect);
		[LinkName("gtk_popover_get_position")]
		public static extern PositionType GetPosition(Popover* popover);
		[LinkName("gtk_popover_popdown")]
		public static extern void Popdown(Popover* popover);
		[LinkName("gtk_popover_popup")]
		public static extern void Popup(Popover* popover);
		[LinkName("gtk_popover_present")]
		public static extern void Present(Popover* popover);
		[LinkName("gtk_popover_set_autohide")]
		public static extern void SetAutohide(Popover* popover, c_int autohide);
		[LinkName("gtk_popover_set_cascade_popdown")]
		public static extern void SetCascadePopdown(Popover* popover, c_int cascade_popdown);
		[LinkName("gtk_popover_set_child")]
		public static extern void SetChild(Popover* popover, Widget* child);
		[LinkName("gtk_popover_set_default_widget")]
		public static extern void SetDefaultWidget(Popover* popover, Widget* widget);
		[LinkName("gtk_popover_set_has_arrow")]
		public static extern void SetHasArrow(Popover* popover, c_int has_arrow);
		[LinkName("gtk_popover_set_mnemonics_visible")]
		public static extern void SetMnemonicsVisible(Popover* popover, c_int mnemonics_visible);
		[LinkName("gtk_popover_set_offset")]
		public static extern void SetOffset(Popover* popover, c_int x_offset, c_int y_offset);
		[LinkName("gtk_popover_set_pointing_to")]
		public static extern void SetPointingTo(Popover* popover, Gdk.Rectangle* rect);
		[LinkName("gtk_popover_set_position")]
		public static extern void SetPosition(Popover* popover, PositionType position);
		public function void ActivateDefaultFunc(Popover* self, void* user_data);
		public function void ClosedFunc(Popover* self, void* user_data);
	}
	[CRepr]
	public struct PopoverMenu : Popover
	{
		[LinkName("gtk_popover_menu_new_from_model")]
		public static extern Widget* NewFromModel(Gio.MenuModel* model);
		[LinkName("gtk_popover_menu_new_from_model_full")]
		public static extern Widget* NewFromModelFull(Gio.MenuModel* model, PopoverMenuFlags flags);
		[LinkName("gtk_popover_menu_add_child")]
		public static extern c_int AddChild(PopoverMenu* popover, Widget* child, char8* id);
		[LinkName("gtk_popover_menu_get_menu_model")]
		public static extern Gio.MenuModel* GetMenuModel(PopoverMenu* popover);
		[LinkName("gtk_popover_menu_remove_child")]
		public static extern c_int RemoveChild(PopoverMenu* popover, Widget* child);
		[LinkName("gtk_popover_menu_set_menu_model")]
		public static extern void SetMenuModel(PopoverMenu* popover, Gio.MenuModel* model);
	}
	[CRepr]
	public struct PopoverMenuBar : Widget
	{
		[LinkName("gtk_popover_menu_bar_new_from_model")]
		public static extern Widget* NewFromModel(Gio.MenuModel* model);
		[LinkName("gtk_popover_menu_bar_add_child")]
		public static extern c_int AddChild(PopoverMenuBar* bar, Widget* child, char8* id);
		[LinkName("gtk_popover_menu_bar_get_menu_model")]
		public static extern Gio.MenuModel* GetMenuModel(PopoverMenuBar* bar);
		[LinkName("gtk_popover_menu_bar_remove_child")]
		public static extern c_int RemoveChild(PopoverMenuBar* bar, Widget* child);
		[LinkName("gtk_popover_menu_bar_set_menu_model")]
		public static extern void SetMenuModel(PopoverMenuBar* bar, Gio.MenuModel* model);
	}
	[CRepr]
	public struct PrintContext : GObject.Object
	{
		[LinkName("gtk_print_context_create_pango_context")]
		public static extern Pango.Context* CreatePangoContext(PrintContext* context);
		[LinkName("gtk_print_context_create_pango_layout")]
		public static extern Pango.Layout* CreatePangoLayout(PrintContext* context);
		[LinkName("gtk_print_context_get_cairo_context")]
		public static extern cairo.Context* GetCairoContext(PrintContext* context);
		[LinkName("gtk_print_context_get_dpi_x")]
		public static extern double GetDpiX(PrintContext* context);
		[LinkName("gtk_print_context_get_dpi_y")]
		public static extern double GetDpiY(PrintContext* context);
		[LinkName("gtk_print_context_get_hard_margins")]
		public static extern c_int GetHardMargins(PrintContext* context, double* top, double* bottom, double* left, double* right);
		[LinkName("gtk_print_context_get_height")]
		public static extern double GetHeight(PrintContext* context);
		[LinkName("gtk_print_context_get_page_setup")]
		public static extern PageSetup* GetPageSetup(PrintContext* context);
		[LinkName("gtk_print_context_get_pango_fontmap")]
		public static extern Pango.FontMap* GetPangoFontmap(PrintContext* context);
		[LinkName("gtk_print_context_get_width")]
		public static extern double GetWidth(PrintContext* context);
		[LinkName("gtk_print_context_set_cairo_context")]
		public static extern void SetCairoContext(PrintContext* context, cairo.Context* cr, double dpi_x, double dpi_y);
	}
	[CRepr]
	public struct PrintJob : GObject.Object
	{
		[LinkName("gtk_print_job_new")]
		public static extern PrintJob* New(char8* title, Printer* printer, PrintSettings* settings, PageSetup* page_setup);
		[LinkName("gtk_print_job_get_collate")]
		public static extern c_int GetCollate(PrintJob* job);
		[LinkName("gtk_print_job_get_n_up")]
		public static extern c_uint GetNUp(PrintJob* job);
		[LinkName("gtk_print_job_get_n_up_layout")]
		public static extern NumberUpLayout GetNUpLayout(PrintJob* job);
		[LinkName("gtk_print_job_get_num_copies")]
		public static extern c_int GetNumCopies(PrintJob* job);
		[LinkName("gtk_print_job_get_page_ranges")]
		public static extern PageRange* GetPageRanges(PrintJob* job, c_int* n_ranges);
		[LinkName("gtk_print_job_get_page_set")]
		public static extern PageSet GetPageSet(PrintJob* job);
		[LinkName("gtk_print_job_get_pages")]
		public static extern PrintPages GetPages(PrintJob* job);
		[LinkName("gtk_print_job_get_printer")]
		public static extern Printer* GetPrinter(PrintJob* job);
		[LinkName("gtk_print_job_get_reverse")]
		public static extern c_int GetReverse(PrintJob* job);
		[LinkName("gtk_print_job_get_rotate")]
		public static extern c_int GetRotate(PrintJob* job);
		[LinkName("gtk_print_job_get_scale")]
		public static extern double GetScale(PrintJob* job);
		[LinkName("gtk_print_job_get_settings")]
		public static extern PrintSettings* GetSettings(PrintJob* job);
		[LinkName("gtk_print_job_get_status")]
		public static extern PrintStatus GetStatus(PrintJob* job);
		[LinkName("gtk_print_job_get_surface")]
		public static extern cairo.Surface* GetSurface(PrintJob* job);
		[LinkName("gtk_print_job_get_title")]
		public static extern char8* GetTitle(PrintJob* job);
		[LinkName("gtk_print_job_get_track_print_status")]
		public static extern c_int GetTrackPrintStatus(PrintJob* job);
		[LinkName("gtk_print_job_send")]
		public static extern void Send(PrintJob* job, PrintJobCompleteFunc callback, void* user_data, GLib.DestroyNotify dnotify);
		[LinkName("gtk_print_job_set_collate")]
		public static extern void SetCollate(PrintJob* job, c_int collate);
		[LinkName("gtk_print_job_set_n_up")]
		public static extern void SetNUp(PrintJob* job, c_uint n_up);
		[LinkName("gtk_print_job_set_n_up_layout")]
		public static extern void SetNUpLayout(PrintJob* job, NumberUpLayout layout);
		[LinkName("gtk_print_job_set_num_copies")]
		public static extern void SetNumCopies(PrintJob* job, c_int num_copies);
		[LinkName("gtk_print_job_set_page_ranges")]
		public static extern void SetPageRanges(PrintJob* job, PageRange* ranges, c_int n_ranges);
		[LinkName("gtk_print_job_set_page_set")]
		public static extern void SetPageSet(PrintJob* job, PageSet page_set);
		[LinkName("gtk_print_job_set_pages")]
		public static extern void SetPages(PrintJob* job, PrintPages pages);
		[LinkName("gtk_print_job_set_reverse")]
		public static extern void SetReverse(PrintJob* job, c_int reverse);
		[LinkName("gtk_print_job_set_rotate")]
		public static extern void SetRotate(PrintJob* job, c_int rotate);
		[LinkName("gtk_print_job_set_scale")]
		public static extern void SetScale(PrintJob* job, double scale);
		[LinkName("gtk_print_job_set_source_fd")]
		public static extern c_int SetSourceFd(PrintJob* job, c_int fd);
		[LinkName("gtk_print_job_set_source_file")]
		public static extern c_int SetSourceFile(PrintJob* job, char8* filename);
		[LinkName("gtk_print_job_set_track_print_status")]
		public static extern void SetTrackPrintStatus(PrintJob* job, c_int track_status);
		public function void StatusChangedFunc(PrintJob* self, void* user_data);
	}
	[CRepr]
	public struct PrintOperation : GObject.Object
	{
		[LinkName("gtk_print_operation_new")]
		public static extern PrintOperation* New();
		[LinkName("gtk_print_operation_cancel")]
		public static extern void Cancel(PrintOperation* op);
		[LinkName("gtk_print_operation_draw_page_finish")]
		public static extern void DrawPageFinish(PrintOperation* op);
		[LinkName("gtk_print_operation_get_default_page_setup")]
		public static extern PageSetup* GetDefaultPageSetup(PrintOperation* op);
		[LinkName("gtk_print_operation_get_embed_page_setup")]
		public static extern c_int GetEmbedPageSetup(PrintOperation* op);
		[LinkName("gtk_print_operation_get_error")]
		public static extern void GetError(PrintOperation* op);
		[LinkName("gtk_print_operation_get_has_selection")]
		public static extern c_int GetHasSelection(PrintOperation* op);
		[LinkName("gtk_print_operation_get_n_pages_to_print")]
		public static extern c_int GetNPagesToPrint(PrintOperation* op);
		[LinkName("gtk_print_operation_get_print_settings")]
		public static extern PrintSettings* GetPrintSettings(PrintOperation* op);
		[LinkName("gtk_print_operation_get_status")]
		public static extern PrintStatus GetStatus(PrintOperation* op);
		[LinkName("gtk_print_operation_get_status_string")]
		public static extern char8* GetStatusString(PrintOperation* op);
		[LinkName("gtk_print_operation_get_support_selection")]
		public static extern c_int GetSupportSelection(PrintOperation* op);
		[LinkName("gtk_print_operation_is_finished")]
		public static extern c_int IsFinished(PrintOperation* op);
		[LinkName("gtk_print_operation_run")]
		public static extern PrintOperationResult Run(PrintOperation* op, PrintOperationAction action, Window* parent);
		[LinkName("gtk_print_operation_set_allow_async")]
		public static extern void SetAllowAsync(PrintOperation* op, c_int allow_async);
		[LinkName("gtk_print_operation_set_current_page")]
		public static extern void SetCurrentPage(PrintOperation* op, c_int current_page);
		[LinkName("gtk_print_operation_set_custom_tab_label")]
		public static extern void SetCustomTabLabel(PrintOperation* op, char8* label);
		[LinkName("gtk_print_operation_set_default_page_setup")]
		public static extern void SetDefaultPageSetup(PrintOperation* op, PageSetup* default_page_setup);
		[LinkName("gtk_print_operation_set_defer_drawing")]
		public static extern void SetDeferDrawing(PrintOperation* op);
		[LinkName("gtk_print_operation_set_embed_page_setup")]
		public static extern void SetEmbedPageSetup(PrintOperation* op, c_int embed);
		[LinkName("gtk_print_operation_set_export_filename")]
		public static extern void SetExportFilename(PrintOperation* op, char8* filename);
		[LinkName("gtk_print_operation_set_has_selection")]
		public static extern void SetHasSelection(PrintOperation* op, c_int has_selection);
		[LinkName("gtk_print_operation_set_job_name")]
		public static extern void SetJobName(PrintOperation* op, char8* job_name);
		[LinkName("gtk_print_operation_set_n_pages")]
		public static extern void SetNPages(PrintOperation* op, c_int n_pages);
		[LinkName("gtk_print_operation_set_print_settings")]
		public static extern void SetPrintSettings(PrintOperation* op, PrintSettings* print_settings);
		[LinkName("gtk_print_operation_set_show_progress")]
		public static extern void SetShowProgress(PrintOperation* op, c_int show_progress);
		[LinkName("gtk_print_operation_set_support_selection")]
		public static extern void SetSupportSelection(PrintOperation* op, c_int support_selection);
		[LinkName("gtk_print_operation_set_track_print_status")]
		public static extern void SetTrackPrintStatus(PrintOperation* op, c_int track_status);
		[LinkName("gtk_print_operation_set_unit")]
		public static extern void SetUnit(PrintOperation* op, Unit unit);
		[LinkName("gtk_print_operation_set_use_full_page")]
		public static extern void SetUseFullPage(PrintOperation* op, c_int full_page);
		public function void BeginPrintFunc(PrintOperation* self, PrintContext context, void* user_data);
		public function GObject.Object CreateCustomWidgetFunc(PrintOperation* self, void* user_data);
		public function void CustomWidgetApplyFunc(PrintOperation* self, Widget widget, void* user_data);
		public function void DoneFunc(PrintOperation* self, PrintOperationResult result, void* user_data);
		public function void DrawPageFunc(PrintOperation* self, PrintContext context, c_int page_nr, void* user_data);
		public function void EndPrintFunc(PrintOperation* self, PrintContext context, void* user_data);
		public function c_int PaginateFunc(PrintOperation* self, PrintContext context, void* user_data);
		public function c_int PreviewFunc(PrintOperation* self, PrintOperationPreview preview, PrintContext context, Window parent, void* user_data);
		public function void RequestPageSetupFunc(PrintOperation* self, PrintContext context, c_int page_nr, PageSetup setup, void* user_data);
		public function void StatusChangedFunc(PrintOperation* self, void* user_data);
		public function void UpdateCustomWidgetFunc(PrintOperation* self, Widget widget, PageSetup setup, PrintSettings settings, void* user_data);
	}
	[CRepr]
	public struct PrintSettings : GObject.Object
	{
		[LinkName("gtk_print_settings_new")]
		public static extern PrintSettings* New();
		[LinkName("gtk_print_settings_new_from_file")]
		public static extern PrintSettings* NewFromFile(char8* file_name);
		[LinkName("gtk_print_settings_new_from_gvariant")]
		public static extern PrintSettings* NewFromGvariant(GLib.Variant* variant);
		[LinkName("gtk_print_settings_new_from_key_file")]
		public static extern PrintSettings* NewFromKeyFile(GLib.KeyFile* key_file, char8* group_name);
		[LinkName("gtk_print_settings_copy")]
		public static extern PrintSettings* Copy(PrintSettings* other);
		[LinkName("gtk_print_settings_foreach")]
		public static extern void Foreach(PrintSettings* settings, PrintSettingsFunc func, void* user_data);
		[LinkName("gtk_print_settings_get")]
		public static extern char8* Get(PrintSettings* settings, char8* key);
		[LinkName("gtk_print_settings_get_bool")]
		public static extern c_int GetBool(PrintSettings* settings, char8* key);
		[LinkName("gtk_print_settings_get_collate")]
		public static extern c_int GetCollate(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_default_source")]
		public static extern char8* GetDefaultSource(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_dither")]
		public static extern char8* GetDither(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_double")]
		public static extern double GetDouble(PrintSettings* settings, char8* key);
		[LinkName("gtk_print_settings_get_double_with_default")]
		public static extern double GetDoubleWithDefault(PrintSettings* settings, char8* key, double def);
		[LinkName("gtk_print_settings_get_duplex")]
		public static extern PrintDuplex GetDuplex(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_finishings")]
		public static extern char8* GetFinishings(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_int")]
		public static extern c_int GetInt(PrintSettings* settings, char8* key);
		[LinkName("gtk_print_settings_get_int_with_default")]
		public static extern c_int GetIntWithDefault(PrintSettings* settings, char8* key, c_int def);
		[LinkName("gtk_print_settings_get_length")]
		public static extern double GetLength(PrintSettings* settings, char8* key, Unit unit);
		[LinkName("gtk_print_settings_get_media_type")]
		public static extern char8* GetMediaType(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_n_copies")]
		public static extern c_int GetNCopies(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_number_up")]
		public static extern c_int GetNumberUp(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_number_up_layout")]
		public static extern NumberUpLayout GetNumberUpLayout(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_orientation")]
		public static extern PageOrientation GetOrientation(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_output_bin")]
		public static extern char8* GetOutputBin(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_page_ranges")]
		public static extern PageRange* GetPageRanges(PrintSettings* settings, c_int* num_ranges);
		[LinkName("gtk_print_settings_get_page_set")]
		public static extern PageSet GetPageSet(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_paper_height")]
		public static extern double GetPaperHeight(PrintSettings* settings, Unit unit);
		[LinkName("gtk_print_settings_get_paper_size")]
		public static extern PaperSize* GetPaperSize(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_paper_width")]
		public static extern double GetPaperWidth(PrintSettings* settings, Unit unit);
		[LinkName("gtk_print_settings_get_print_pages")]
		public static extern PrintPages GetPrintPages(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_printer")]
		public static extern char8* GetPrinter(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_printer_lpi")]
		public static extern double GetPrinterLpi(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_quality")]
		public static extern PrintQuality GetQuality(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_resolution")]
		public static extern c_int GetResolution(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_resolution_x")]
		public static extern c_int GetResolutionX(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_resolution_y")]
		public static extern c_int GetResolutionY(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_reverse")]
		public static extern c_int GetReverse(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_scale")]
		public static extern double GetScale(PrintSettings* settings);
		[LinkName("gtk_print_settings_get_use_color")]
		public static extern c_int GetUseColor(PrintSettings* settings);
		[LinkName("gtk_print_settings_has_key")]
		public static extern c_int HasKey(PrintSettings* settings, char8* key);
		[LinkName("gtk_print_settings_load_file")]
		public static extern c_int LoadFile(PrintSettings* settings, char8* file_name);
		[LinkName("gtk_print_settings_load_key_file")]
		public static extern c_int LoadKeyFile(PrintSettings* settings, GLib.KeyFile* key_file, char8* group_name);
		[LinkName("gtk_print_settings_set")]
		public static extern void Set(PrintSettings* settings, char8* key, char8* value);
		[LinkName("gtk_print_settings_set_bool")]
		public static extern void SetBool(PrintSettings* settings, char8* key, c_int value);
		[LinkName("gtk_print_settings_set_collate")]
		public static extern void SetCollate(PrintSettings* settings, c_int collate);
		[LinkName("gtk_print_settings_set_default_source")]
		public static extern void SetDefaultSource(PrintSettings* settings, char8* default_source);
		[LinkName("gtk_print_settings_set_dither")]
		public static extern void SetDither(PrintSettings* settings, char8* dither);
		[LinkName("gtk_print_settings_set_double")]
		public static extern void SetDouble(PrintSettings* settings, char8* key, double value);
		[LinkName("gtk_print_settings_set_duplex")]
		public static extern void SetDuplex(PrintSettings* settings, PrintDuplex duplex);
		[LinkName("gtk_print_settings_set_finishings")]
		public static extern void SetFinishings(PrintSettings* settings, char8* finishings);
		[LinkName("gtk_print_settings_set_int")]
		public static extern void SetInt(PrintSettings* settings, char8* key, c_int value);
		[LinkName("gtk_print_settings_set_length")]
		public static extern void SetLength(PrintSettings* settings, char8* key, double value, Unit unit);
		[LinkName("gtk_print_settings_set_media_type")]
		public static extern void SetMediaType(PrintSettings* settings, char8* media_type);
		[LinkName("gtk_print_settings_set_n_copies")]
		public static extern void SetNCopies(PrintSettings* settings, c_int num_copies);
		[LinkName("gtk_print_settings_set_number_up")]
		public static extern void SetNumberUp(PrintSettings* settings, c_int number_up);
		[LinkName("gtk_print_settings_set_number_up_layout")]
		public static extern void SetNumberUpLayout(PrintSettings* settings, NumberUpLayout number_up_layout);
		[LinkName("gtk_print_settings_set_orientation")]
		public static extern void SetOrientation(PrintSettings* settings, PageOrientation orientation);
		[LinkName("gtk_print_settings_set_output_bin")]
		public static extern void SetOutputBin(PrintSettings* settings, char8* output_bin);
		[LinkName("gtk_print_settings_set_page_ranges")]
		public static extern void SetPageRanges(PrintSettings* settings, PageRange* page_ranges, c_int num_ranges);
		[LinkName("gtk_print_settings_set_page_set")]
		public static extern void SetPageSet(PrintSettings* settings, PageSet page_set);
		[LinkName("gtk_print_settings_set_paper_height")]
		public static extern void SetPaperHeight(PrintSettings* settings, double height, Unit unit);
		[LinkName("gtk_print_settings_set_paper_size")]
		public static extern void SetPaperSize(PrintSettings* settings, PaperSize* paper_size);
		[LinkName("gtk_print_settings_set_paper_width")]
		public static extern void SetPaperWidth(PrintSettings* settings, double width, Unit unit);
		[LinkName("gtk_print_settings_set_print_pages")]
		public static extern void SetPrintPages(PrintSettings* settings, PrintPages pages);
		[LinkName("gtk_print_settings_set_printer")]
		public static extern void SetPrinter(PrintSettings* settings, char8* printer);
		[LinkName("gtk_print_settings_set_printer_lpi")]
		public static extern void SetPrinterLpi(PrintSettings* settings, double lpi);
		[LinkName("gtk_print_settings_set_quality")]
		public static extern void SetQuality(PrintSettings* settings, PrintQuality quality);
		[LinkName("gtk_print_settings_set_resolution")]
		public static extern void SetResolution(PrintSettings* settings, c_int resolution);
		[LinkName("gtk_print_settings_set_resolution_xy")]
		public static extern void SetResolutionXy(PrintSettings* settings, c_int resolution_x, c_int resolution_y);
		[LinkName("gtk_print_settings_set_reverse")]
		public static extern void SetReverse(PrintSettings* settings, c_int reverse);
		[LinkName("gtk_print_settings_set_scale")]
		public static extern void SetScale(PrintSettings* settings, double scale);
		[LinkName("gtk_print_settings_set_use_color")]
		public static extern void SetUseColor(PrintSettings* settings, c_int use_color);
		[LinkName("gtk_print_settings_to_file")]
		public static extern c_int ToFile(PrintSettings* settings, char8* file_name);
		[LinkName("gtk_print_settings_to_gvariant")]
		public static extern GLib.Variant* ToGvariant(PrintSettings* settings);
		[LinkName("gtk_print_settings_to_key_file")]
		public static extern void ToKeyFile(PrintSettings* settings, GLib.KeyFile* key_file, char8* group_name);
		[LinkName("gtk_print_settings_unset")]
		public static extern void Unset(PrintSettings* settings, char8* key);
	}
	[CRepr]
	public struct PrintUnixDialog : Dialog
	{
		[LinkName("gtk_print_unix_dialog_new")]
		public static extern Widget* New(char8* title, Window* parent);
		[LinkName("gtk_print_unix_dialog_add_custom_tab")]
		public static extern void AddCustomTab(PrintUnixDialog* dialog, Widget* child, Widget* tab_label);
		[LinkName("gtk_print_unix_dialog_get_current_page")]
		public static extern c_int GetCurrentPage(PrintUnixDialog* dialog);
		[LinkName("gtk_print_unix_dialog_get_embed_page_setup")]
		public static extern c_int GetEmbedPageSetup(PrintUnixDialog* dialog);
		[LinkName("gtk_print_unix_dialog_get_has_selection")]
		public static extern c_int GetHasSelection(PrintUnixDialog* dialog);
		[LinkName("gtk_print_unix_dialog_get_manual_capabilities")]
		public static extern PrintCapabilities GetManualCapabilities(PrintUnixDialog* dialog);
		[LinkName("gtk_print_unix_dialog_get_page_setup")]
		public static extern PageSetup* GetPageSetup(PrintUnixDialog* dialog);
		[LinkName("gtk_print_unix_dialog_get_page_setup_set")]
		public static extern c_int GetPageSetupSet(PrintUnixDialog* dialog);
		[LinkName("gtk_print_unix_dialog_get_selected_printer")]
		public static extern Printer* GetSelectedPrinter(PrintUnixDialog* dialog);
		[LinkName("gtk_print_unix_dialog_get_settings")]
		public static extern PrintSettings* GetSettings(PrintUnixDialog* dialog);
		[LinkName("gtk_print_unix_dialog_get_support_selection")]
		public static extern c_int GetSupportSelection(PrintUnixDialog* dialog);
		[LinkName("gtk_print_unix_dialog_set_current_page")]
		public static extern void SetCurrentPage(PrintUnixDialog* dialog, c_int current_page);
		[LinkName("gtk_print_unix_dialog_set_embed_page_setup")]
		public static extern void SetEmbedPageSetup(PrintUnixDialog* dialog, c_int embed);
		[LinkName("gtk_print_unix_dialog_set_has_selection")]
		public static extern void SetHasSelection(PrintUnixDialog* dialog, c_int has_selection);
		[LinkName("gtk_print_unix_dialog_set_manual_capabilities")]
		public static extern void SetManualCapabilities(PrintUnixDialog* dialog, PrintCapabilities capabilities);
		[LinkName("gtk_print_unix_dialog_set_page_setup")]
		public static extern void SetPageSetup(PrintUnixDialog* dialog, PageSetup* page_setup);
		[LinkName("gtk_print_unix_dialog_set_settings")]
		public static extern void SetSettings(PrintUnixDialog* dialog, PrintSettings* settings);
		[LinkName("gtk_print_unix_dialog_set_support_selection")]
		public static extern void SetSupportSelection(PrintUnixDialog* dialog, c_int support_selection);
	}
	[CRepr]
	public struct Printer : GObject.Object
	{
		[LinkName("gtk_printer_new")]
		public static extern Printer* New(char8* name, PrintBackend* backend, c_int virtual_);
		[LinkName("gtk_printer_accepts_pdf")]
		public static extern c_int AcceptsPdf(Printer* printer);
		[LinkName("gtk_printer_accepts_ps")]
		public static extern c_int AcceptsPs(Printer* printer);
		[LinkName("gtk_printer_compare")]
		public static extern c_int Compare(Printer* a, Printer* b);
		[LinkName("gtk_printer_get_backend")]
		public static extern PrintBackend* GetBackend(Printer* printer);
		[LinkName("gtk_printer_get_capabilities")]
		public static extern PrintCapabilities GetCapabilities(Printer* printer);
		[LinkName("gtk_printer_get_default_page_size")]
		public static extern PageSetup* GetDefaultPageSize(Printer* printer);
		[LinkName("gtk_printer_get_description")]
		public static extern char8* GetDescription(Printer* printer);
		[LinkName("gtk_printer_get_hard_margins")]
		public static extern c_int GetHardMargins(Printer* printer, double* top, double* bottom, double* left, double* right);
		[LinkName("gtk_printer_get_hard_margins_for_paper_size")]
		public static extern c_int GetHardMarginsForPaperSize(Printer* printer, PaperSize* paper_size, double* top, double* bottom, double* left, double* right);
		[LinkName("gtk_printer_get_icon_name")]
		public static extern char8* GetIconName(Printer* printer);
		[LinkName("gtk_printer_get_job_count")]
		public static extern c_int GetJobCount(Printer* printer);
		[LinkName("gtk_printer_get_location")]
		public static extern char8* GetLocation(Printer* printer);
		[LinkName("gtk_printer_get_name")]
		public static extern char8* GetName(Printer* printer);
		[LinkName("gtk_printer_get_state_message")]
		public static extern char8* GetStateMessage(Printer* printer);
		[LinkName("gtk_printer_has_details")]
		public static extern c_int HasDetails(Printer* printer);
		[LinkName("gtk_printer_is_accepting_jobs")]
		public static extern c_int IsAcceptingJobs(Printer* printer);
		[LinkName("gtk_printer_is_active")]
		public static extern c_int IsActive(Printer* printer);
		[LinkName("gtk_printer_is_default")]
		public static extern c_int IsDefault(Printer* printer);
		[LinkName("gtk_printer_is_paused")]
		public static extern c_int IsPaused(Printer* printer);
		[LinkName("gtk_printer_is_virtual")]
		public static extern c_int IsVirtual(Printer* printer);
		[LinkName("gtk_printer_list_papers")]
		public static extern GLib.List* ListPapers(Printer* printer);
		[LinkName("gtk_printer_request_details")]
		public static extern void RequestDetails(Printer* printer);
		public function void DetailsAcquiredFunc(Printer* self, c_int success, void* user_data);
	}
	[CRepr]
	public struct ProgressBar : Widget
	{
		[LinkName("gtk_progress_bar_new")]
		public static extern Widget* New();
		[LinkName("gtk_progress_bar_get_ellipsize")]
		public static extern Pango.EllipsizeMode GetEllipsize(ProgressBar* pbar);
		[LinkName("gtk_progress_bar_get_fraction")]
		public static extern double GetFraction(ProgressBar* pbar);
		[LinkName("gtk_progress_bar_get_inverted")]
		public static extern c_int GetInverted(ProgressBar* pbar);
		[LinkName("gtk_progress_bar_get_pulse_step")]
		public static extern double GetPulseStep(ProgressBar* pbar);
		[LinkName("gtk_progress_bar_get_show_text")]
		public static extern c_int GetShowText(ProgressBar* pbar);
		[LinkName("gtk_progress_bar_get_text")]
		public static extern char8* GetText(ProgressBar* pbar);
		[LinkName("gtk_progress_bar_pulse")]
		public static extern void Pulse(ProgressBar* pbar);
		[LinkName("gtk_progress_bar_set_ellipsize")]
		public static extern void SetEllipsize(ProgressBar* pbar, Pango.EllipsizeMode mode);
		[LinkName("gtk_progress_bar_set_fraction")]
		public static extern void SetFraction(ProgressBar* pbar, double fraction);
		[LinkName("gtk_progress_bar_set_inverted")]
		public static extern void SetInverted(ProgressBar* pbar, c_int inverted);
		[LinkName("gtk_progress_bar_set_pulse_step")]
		public static extern void SetPulseStep(ProgressBar* pbar, double fraction);
		[LinkName("gtk_progress_bar_set_show_text")]
		public static extern void SetShowText(ProgressBar* pbar, c_int show_text);
		[LinkName("gtk_progress_bar_set_text")]
		public static extern void SetText(ProgressBar* pbar, char8* text);
	}
	[CRepr]
	public struct PropertyExpression : Expression
	{
		[LinkName("gtk_property_expression_new")]
		public static extern PropertyExpression* New(GLib.Type this_type, Expression* expression, char8* property_name);
		[LinkName("gtk_property_expression_new_for_pspec")]
		public static extern PropertyExpression* NewForPspec(Expression* expression, GObject.ParamSpec* pspec);
		[LinkName("gtk_property_expression_get_expression")]
		public static extern Expression* GetExpression(PropertyExpression* expression);
		[LinkName("gtk_property_expression_get_pspec")]
		public static extern GObject.ParamSpec* GetPspec(PropertyExpression* expression);
	}
	[CRepr]
	public struct Range : Widget
	{
		[LinkName("gtk_range_get_adjustment")]
		public static extern Adjustment* GetAdjustment(Range* range);
		[LinkName("gtk_range_get_fill_level")]
		public static extern double GetFillLevel(Range* range);
		[LinkName("gtk_range_get_flippable")]
		public static extern c_int GetFlippable(Range* range);
		[LinkName("gtk_range_get_inverted")]
		public static extern c_int GetInverted(Range* range);
		[LinkName("gtk_range_get_range_rect")]
		public static extern void GetRangeRect(Range* range, Gdk.Rectangle* range_rect);
		[LinkName("gtk_range_get_restrict_to_fill_level")]
		public static extern c_int GetRestrictToFillLevel(Range* range);
		[LinkName("gtk_range_get_round_digits")]
		public static extern c_int GetRoundDigits(Range* range);
		[LinkName("gtk_range_get_show_fill_level")]
		public static extern c_int GetShowFillLevel(Range* range);
		[LinkName("gtk_range_get_slider_range")]
		public static extern void GetSliderRange(Range* range, c_int* slider_start, c_int* slider_end);
		[LinkName("gtk_range_get_slider_size_fixed")]
		public static extern c_int GetSliderSizeFixed(Range* range);
		[LinkName("gtk_range_get_value")]
		public static extern double GetValue(Range* range);
		[LinkName("gtk_range_set_adjustment")]
		public static extern void SetAdjustment(Range* range, Adjustment* adjustment);
		[LinkName("gtk_range_set_fill_level")]
		public static extern void SetFillLevel(Range* range, double fill_level);
		[LinkName("gtk_range_set_flippable")]
		public static extern void SetFlippable(Range* range, c_int flippable);
		[LinkName("gtk_range_set_increments")]
		public static extern void SetIncrements(Range* range, double step, double page);
		[LinkName("gtk_range_set_inverted")]
		public static extern void SetInverted(Range* range, c_int setting);
		[LinkName("gtk_range_set_range")]
		public static extern void SetRange(Range* range, double min, double max);
		[LinkName("gtk_range_set_restrict_to_fill_level")]
		public static extern void SetRestrictToFillLevel(Range* range, c_int restrict_to_fill_level);
		[LinkName("gtk_range_set_round_digits")]
		public static extern void SetRoundDigits(Range* range, c_int round_digits);
		[LinkName("gtk_range_set_show_fill_level")]
		public static extern void SetShowFillLevel(Range* range, c_int show_fill_level);
		[LinkName("gtk_range_set_slider_size_fixed")]
		public static extern void SetSliderSizeFixed(Range* range, c_int size_fixed);
		[LinkName("gtk_range_set_value")]
		public static extern void SetValue(Range* range, double value);
		public function void AdjustBoundsFunc(Range* self, double value, void* user_data);
		public function c_int ChangeValueFunc(Range* self, ScrollType scroll, double value, void* user_data);
		public function void MoveSliderFunc(Range* self, ScrollType step, void* user_data);
		public function void ValueChangedFunc(Range* self, void* user_data);
	}
	[CRepr]
	public struct RecentManager : GObject.Object
	{
		[LinkName("gtk_recent_manager_new")]
		public static extern RecentManager* New();
		[LinkName("gtk_recent_manager_add_full")]
		public static extern c_int AddFull(RecentManager* manager, char8* uri, RecentData* recent_data);
		[LinkName("gtk_recent_manager_add_item")]
		public static extern c_int AddItem(RecentManager* manager, char8* uri);
		[LinkName("gtk_recent_manager_get_items")]
		public static extern GLib.List* GetItems(RecentManager* manager);
		[LinkName("gtk_recent_manager_has_item")]
		public static extern c_int HasItem(RecentManager* manager, char8* uri);
		[LinkName("gtk_recent_manager_lookup_item")]
		public static extern RecentInfo* LookupItem(RecentManager* manager, char8* uri);
		[LinkName("gtk_recent_manager_move_item")]
		public static extern c_int MoveItem(RecentManager* manager, char8* uri, char8* new_uri);
		[LinkName("gtk_recent_manager_purge_items")]
		public static extern c_int PurgeItems(RecentManager* manager);
		[LinkName("gtk_recent_manager_remove_item")]
		public static extern c_int RemoveItem(RecentManager* manager, char8* uri);
		public function void ChangedFunc(RecentManager* self, void* user_data);
	}
	[CRepr]
	public struct Revealer : Widget
	{
		[LinkName("gtk_revealer_new")]
		public static extern Widget* New();
		[LinkName("gtk_revealer_get_child")]
		public static extern Widget* GetChild(Revealer* revealer);
		[LinkName("gtk_revealer_get_child_revealed")]
		public static extern c_int GetChildRevealed(Revealer* revealer);
		[LinkName("gtk_revealer_get_reveal_child")]
		public static extern c_int GetRevealChild(Revealer* revealer);
		[LinkName("gtk_revealer_get_transition_duration")]
		public static extern c_uint GetTransitionDuration(Revealer* revealer);
		[LinkName("gtk_revealer_get_transition_type")]
		public static extern RevealerTransitionType GetTransitionType(Revealer* revealer);
		[LinkName("gtk_revealer_set_child")]
		public static extern void SetChild(Revealer* revealer, Widget* child);
		[LinkName("gtk_revealer_set_reveal_child")]
		public static extern void SetRevealChild(Revealer* revealer, c_int reveal_child);
		[LinkName("gtk_revealer_set_transition_duration")]
		public static extern void SetTransitionDuration(Revealer* revealer, c_uint duration);
		[LinkName("gtk_revealer_set_transition_type")]
		public static extern void SetTransitionType(Revealer* revealer, RevealerTransitionType transition);
	}
	[CRepr]
	public struct Scale : Range
	{
		[LinkName("gtk_scale_new")]
		public static extern Widget* New(Orientation orientation, Adjustment* adjustment);
		[LinkName("gtk_scale_new_with_range")]
		public static extern Widget* NewWithRange(Orientation orientation, double min, double max, double step);
		[LinkName("gtk_scale_add_mark")]
		public static extern void AddMark(Scale* scale, double value, PositionType position, char8* markup);
		[LinkName("gtk_scale_clear_marks")]
		public static extern void ClearMarks(Scale* scale);
		[LinkName("gtk_scale_get_digits")]
		public static extern c_int GetDigits(Scale* scale);
		[LinkName("gtk_scale_get_draw_value")]
		public static extern c_int GetDrawValue(Scale* scale);
		[LinkName("gtk_scale_get_has_origin")]
		public static extern c_int GetHasOrigin(Scale* scale);
		[LinkName("gtk_scale_get_layout")]
		public static extern Pango.Layout* GetLayout(Scale* scale);
		[LinkName("gtk_scale_get_layout_offsets")]
		public static extern void GetLayoutOffsets(Scale* scale, c_int* x, c_int* y);
		[LinkName("gtk_scale_get_value_pos")]
		public static extern PositionType GetValuePos(Scale* scale);
		[LinkName("gtk_scale_set_digits")]
		public static extern void SetDigits(Scale* scale, c_int digits);
		[LinkName("gtk_scale_set_draw_value")]
		public static extern void SetDrawValue(Scale* scale, c_int draw_value);
		[LinkName("gtk_scale_set_format_value_func")]
		public static extern void SetFormatValueFunc(Scale* scale, ScaleFormatValueFunc func, void* user_data, GLib.DestroyNotify destroy_notify);
		[LinkName("gtk_scale_set_has_origin")]
		public static extern void SetHasOrigin(Scale* scale, c_int has_origin);
		[LinkName("gtk_scale_set_value_pos")]
		public static extern void SetValuePos(Scale* scale, PositionType pos);
	}
	[CRepr]
	public struct ScaleButton : Widget
	{
		[LinkName("gtk_scale_button_new")]
		public static extern Widget* New(double min, double max, double step, char8** icons);
		[LinkName("gtk_scale_button_get_active")]
		public static extern c_int GetActive(ScaleButton* button);
		[LinkName("gtk_scale_button_get_adjustment")]
		public static extern Adjustment* GetAdjustment(ScaleButton* button);
		[LinkName("gtk_scale_button_get_minus_button")]
		public static extern Button* GetMinusButton(ScaleButton* button);
		[LinkName("gtk_scale_button_get_plus_button")]
		public static extern Button* GetPlusButton(ScaleButton* button);
		[LinkName("gtk_scale_button_get_popup")]
		public static extern Widget* GetPopup(ScaleButton* button);
		[LinkName("gtk_scale_button_get_value")]
		public static extern double GetValue(ScaleButton* button);
		[LinkName("gtk_scale_button_set_adjustment")]
		public static extern void SetAdjustment(ScaleButton* button, Adjustment* adjustment);
		[LinkName("gtk_scale_button_set_icons")]
		public static extern void SetIcons(ScaleButton* button, char8** icons);
		[LinkName("gtk_scale_button_set_value")]
		public static extern void SetValue(ScaleButton* button, double value);
		public function void PopdownFunc(ScaleButton* self, void* user_data);
		public function void PopupFunc(ScaleButton* self, void* user_data);
		public function void ValueChangedFunc(ScaleButton* self, double value, void* user_data);
	}
	[CRepr]
	public struct Scrollbar : Widget
	{
		[LinkName("gtk_scrollbar_new")]
		public static extern Widget* New(Orientation orientation, Adjustment* adjustment);
		[LinkName("gtk_scrollbar_get_adjustment")]
		public static extern Adjustment* GetAdjustment(Scrollbar* self);
		[LinkName("gtk_scrollbar_set_adjustment")]
		public static extern void SetAdjustment(Scrollbar* self, Adjustment* adjustment);
	}
	[CRepr]
	public struct ScrolledWindow : Widget
	{
		[LinkName("gtk_scrolled_window_new")]
		public static extern Widget* New();
		[LinkName("gtk_scrolled_window_get_child")]
		public static extern Widget* GetChild(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_hadjustment")]
		public static extern Adjustment* GetHadjustment(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_has_frame")]
		public static extern c_int GetHasFrame(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_hscrollbar")]
		public static extern Widget* GetHscrollbar(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_kinetic_scrolling")]
		public static extern c_int GetKineticScrolling(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_max_content_height")]
		public static extern c_int GetMaxContentHeight(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_max_content_width")]
		public static extern c_int GetMaxContentWidth(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_min_content_height")]
		public static extern c_int GetMinContentHeight(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_min_content_width")]
		public static extern c_int GetMinContentWidth(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_overlay_scrolling")]
		public static extern c_int GetOverlayScrolling(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_placement")]
		public static extern CornerType GetPlacement(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_policy")]
		public static extern void GetPolicy(ScrolledWindow* scrolled_window, PolicyType* hscrollbar_policy, PolicyType* vscrollbar_policy);
		[LinkName("gtk_scrolled_window_get_propagate_natural_height")]
		public static extern c_int GetPropagateNaturalHeight(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_propagate_natural_width")]
		public static extern c_int GetPropagateNaturalWidth(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_vadjustment")]
		public static extern Adjustment* GetVadjustment(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_get_vscrollbar")]
		public static extern Widget* GetVscrollbar(ScrolledWindow* scrolled_window);
		[LinkName("gtk_scrolled_window_set_child")]
		public static extern void SetChild(ScrolledWindow* scrolled_window, Widget* child);
		[LinkName("gtk_scrolled_window_set_hadjustment")]
		public static extern void SetHadjustment(ScrolledWindow* scrolled_window, Adjustment* hadjustment);
		[LinkName("gtk_scrolled_window_set_has_frame")]
		public static extern void SetHasFrame(ScrolledWindow* scrolled_window, c_int has_frame);
		[LinkName("gtk_scrolled_window_set_kinetic_scrolling")]
		public static extern void SetKineticScrolling(ScrolledWindow* scrolled_window, c_int kinetic_scrolling);
		[LinkName("gtk_scrolled_window_set_max_content_height")]
		public static extern void SetMaxContentHeight(ScrolledWindow* scrolled_window, c_int height);
		[LinkName("gtk_scrolled_window_set_max_content_width")]
		public static extern void SetMaxContentWidth(ScrolledWindow* scrolled_window, c_int width);
		[LinkName("gtk_scrolled_window_set_min_content_height")]
		public static extern void SetMinContentHeight(ScrolledWindow* scrolled_window, c_int height);
		[LinkName("gtk_scrolled_window_set_min_content_width")]
		public static extern void SetMinContentWidth(ScrolledWindow* scrolled_window, c_int width);
		[LinkName("gtk_scrolled_window_set_overlay_scrolling")]
		public static extern void SetOverlayScrolling(ScrolledWindow* scrolled_window, c_int overlay_scrolling);
		[LinkName("gtk_scrolled_window_set_placement")]
		public static extern void SetPlacement(ScrolledWindow* scrolled_window, CornerType window_placement);
		[LinkName("gtk_scrolled_window_set_policy")]
		public static extern void SetPolicy(ScrolledWindow* scrolled_window, PolicyType hscrollbar_policy, PolicyType vscrollbar_policy);
		[LinkName("gtk_scrolled_window_set_propagate_natural_height")]
		public static extern void SetPropagateNaturalHeight(ScrolledWindow* scrolled_window, c_int propagate);
		[LinkName("gtk_scrolled_window_set_propagate_natural_width")]
		public static extern void SetPropagateNaturalWidth(ScrolledWindow* scrolled_window, c_int propagate);
		[LinkName("gtk_scrolled_window_set_vadjustment")]
		public static extern void SetVadjustment(ScrolledWindow* scrolled_window, Adjustment* vadjustment);
		[LinkName("gtk_scrolled_window_unset_placement")]
		public static extern void UnsetPlacement(ScrolledWindow* scrolled_window);
		public function void EdgeOvershotFunc(ScrolledWindow* self, PositionType pos, void* user_data);
		public function void EdgeReachedFunc(ScrolledWindow* self, PositionType pos, void* user_data);
		public function void MoveFocusOutFunc(ScrolledWindow* self, DirectionType direction_type, void* user_data);
		public function c_int ScrollChildFunc(ScrolledWindow* self, ScrollType scroll, c_int horizontal, void* user_data);
	}
	[CRepr]
	public struct SearchBar : Widget
	{
		[LinkName("gtk_search_bar_new")]
		public static extern Widget* New();
		[LinkName("gtk_search_bar_connect_entry")]
		public static extern void ConnectEntry(SearchBar* bar, Editable* entry);
		[LinkName("gtk_search_bar_get_child")]
		public static extern Widget* GetChild(SearchBar* bar);
		[LinkName("gtk_search_bar_get_key_capture_widget")]
		public static extern Widget* GetKeyCaptureWidget(SearchBar* bar);
		[LinkName("gtk_search_bar_get_search_mode")]
		public static extern c_int GetSearchMode(SearchBar* bar);
		[LinkName("gtk_search_bar_get_show_close_button")]
		public static extern c_int GetShowCloseButton(SearchBar* bar);
		[LinkName("gtk_search_bar_set_child")]
		public static extern void SetChild(SearchBar* bar, Widget* child);
		[LinkName("gtk_search_bar_set_key_capture_widget")]
		public static extern void SetKeyCaptureWidget(SearchBar* bar, Widget* widget);
		[LinkName("gtk_search_bar_set_search_mode")]
		public static extern void SetSearchMode(SearchBar* bar, c_int search_mode);
		[LinkName("gtk_search_bar_set_show_close_button")]
		public static extern void SetShowCloseButton(SearchBar* bar, c_int visible);
	}
	[CRepr]
	public struct SearchEntry : Widget
	{
		[LinkName("gtk_search_entry_new")]
		public static extern Widget* New();
		[LinkName("gtk_search_entry_get_key_capture_widget")]
		public static extern Widget* GetKeyCaptureWidget(SearchEntry* entry);
		[LinkName("gtk_search_entry_get_placeholder_text")]
		public static extern char8* GetPlaceholderText(SearchEntry* entry);
		[LinkName("gtk_search_entry_get_search_delay")]
		public static extern c_uint GetSearchDelay(SearchEntry* entry);
		[LinkName("gtk_search_entry_set_key_capture_widget")]
		public static extern void SetKeyCaptureWidget(SearchEntry* entry, Widget* widget);
		[LinkName("gtk_search_entry_set_placeholder_text")]
		public static extern void SetPlaceholderText(SearchEntry* entry, char8* text);
		[LinkName("gtk_search_entry_set_search_delay")]
		public static extern void SetSearchDelay(SearchEntry* entry, c_uint delay);
		public function void ActivateFunc(SearchEntry* self, void* user_data);
		public function void NextMatchFunc(SearchEntry* self, void* user_data);
		public function void PreviousMatchFunc(SearchEntry* self, void* user_data);
		public function void SearchChangedFunc(SearchEntry* self, void* user_data);
		public function void SearchStartedFunc(SearchEntry* self, void* user_data);
		public function void StopSearchFunc(SearchEntry* self, void* user_data);
	}
	[CRepr]
	public struct SelectionFilterModel : GObject.Object
	{
		[LinkName("gtk_selection_filter_model_new")]
		public static extern SelectionFilterModel* New(SelectionModel* model);
		[LinkName("gtk_selection_filter_model_get_model")]
		public static extern SelectionModel* GetModel(SelectionFilterModel* self);
		[LinkName("gtk_selection_filter_model_set_model")]
		public static extern void SetModel(SelectionFilterModel* self, SelectionModel* model);
	}
	[CRepr]
	public struct Separator : Widget
	{
		[LinkName("gtk_separator_new")]
		public static extern Widget* New(Orientation orientation);
	}
	[CRepr]
	public struct Settings : GObject.Object
	{
		[LinkName("gtk_settings_reset_property")]
		public static extern void ResetProperty(Settings* settings, char8* name);
	}
	[CRepr]
	public struct Shortcut : GObject.Object
	{
		[LinkName("gtk_shortcut_new")]
		public static extern Shortcut* New(ShortcutTrigger* trigger, ShortcutAction* action);
		[LinkName("gtk_shortcut_get_action")]
		public static extern ShortcutAction* GetAction(Shortcut* self);
		[LinkName("gtk_shortcut_get_arguments")]
		public static extern GLib.Variant* GetArguments(Shortcut* self);
		[LinkName("gtk_shortcut_get_trigger")]
		public static extern ShortcutTrigger* GetTrigger(Shortcut* self);
		[LinkName("gtk_shortcut_set_action")]
		public static extern void SetAction(Shortcut* self, ShortcutAction* action);
		[LinkName("gtk_shortcut_set_arguments")]
		public static extern void SetArguments(Shortcut* self, GLib.Variant* args);
		[LinkName("gtk_shortcut_set_trigger")]
		public static extern void SetTrigger(Shortcut* self, ShortcutTrigger* trigger);
	}
	[CRepr]
	public struct ShortcutAction : GObject.Object
	{
		[LinkName("gtk_shortcut_action_parse_string")]
		public static extern ShortcutAction* ParseString(char8* string);
		[LinkName("gtk_shortcut_action_activate")]
		public static extern c_int Activate(ShortcutAction* self, ShortcutActionFlags flags, Widget* widget, GLib.Variant* args);
		[LinkName("gtk_shortcut_action_print")]
		public static extern void Print(ShortcutAction* self, GLib.String* string);
		[LinkName("gtk_shortcut_action_to_string")]
		public static extern char8* ToString(ShortcutAction* self);
	}
	[CRepr]
	public struct ShortcutController : EventController
	{
		[LinkName("gtk_shortcut_controller_new")]
		public static extern EventController* New();
		[LinkName("gtk_shortcut_controller_new_for_model")]
		public static extern EventController* NewForModel(Gio.ListModel* model);
		[LinkName("gtk_shortcut_controller_add_shortcut")]
		public static extern void AddShortcut(ShortcutController* self, Shortcut* shortcut);
		[LinkName("gtk_shortcut_controller_get_mnemonics_modifiers")]
		public static extern Gdk.ModifierType GetMnemonicsModifiers(ShortcutController* self);
		[LinkName("gtk_shortcut_controller_get_scope")]
		public static extern ShortcutScope GetScope(ShortcutController* self);
		[LinkName("gtk_shortcut_controller_remove_shortcut")]
		public static extern void RemoveShortcut(ShortcutController* self, Shortcut* shortcut);
		[LinkName("gtk_shortcut_controller_set_mnemonics_modifiers")]
		public static extern void SetMnemonicsModifiers(ShortcutController* self, Gdk.ModifierType modifiers);
		[LinkName("gtk_shortcut_controller_set_scope")]
		public static extern void SetScope(ShortcutController* self, ShortcutScope scope_);
	}
	[CRepr]
	public struct ShortcutLabel : Widget
	{
		[LinkName("gtk_shortcut_label_new")]
		public static extern Widget* New(char8* accelerator);
		[LinkName("gtk_shortcut_label_get_accelerator")]
		public static extern char8* GetAccelerator(ShortcutLabel* self);
		[LinkName("gtk_shortcut_label_get_disabled_text")]
		public static extern char8* GetDisabledText(ShortcutLabel* self);
		[LinkName("gtk_shortcut_label_set_accelerator")]
		public static extern void SetAccelerator(ShortcutLabel* self, char8* accelerator);
		[LinkName("gtk_shortcut_label_set_disabled_text")]
		public static extern void SetDisabledText(ShortcutLabel* self, char8* disabled_text);
	}
	[CRepr]
	public struct ShortcutTrigger : GObject.Object
	{
		[LinkName("gtk_shortcut_trigger_parse_string")]
		public static extern ShortcutTrigger* ParseString(char8* string);
		[LinkName("gtk_shortcut_trigger_compare")]
		public static extern c_int Compare(ShortcutTrigger trigger1, ShortcutTrigger trigger2);
		[LinkName("gtk_shortcut_trigger_equal")]
		public static extern c_int Equal(ShortcutTrigger trigger1, ShortcutTrigger trigger2);
		[LinkName("gtk_shortcut_trigger_hash")]
		public static extern c_uint Hash(ShortcutTrigger trigger);
		[LinkName("gtk_shortcut_trigger_print")]
		public static extern void Print(ShortcutTrigger* self, GLib.String* string);
		[LinkName("gtk_shortcut_trigger_print_label")]
		public static extern c_int PrintLabel(ShortcutTrigger* self, Gdk.Display* display, GLib.String* string);
		[LinkName("gtk_shortcut_trigger_to_label")]
		public static extern char8* ToLabel(ShortcutTrigger* self, Gdk.Display* display);
		[LinkName("gtk_shortcut_trigger_to_string")]
		public static extern char8* ToString(ShortcutTrigger* self);
		[LinkName("gtk_shortcut_trigger_trigger")]
		public static extern Gdk.KeyMatch Trigger(ShortcutTrigger* self, Gdk.Event* event, c_int enable_mnemonics);
	}
	[CRepr]
	public struct ShortcutsGroup : Box
	{
	}
	[CRepr]
	public struct ShortcutsSection : Box
	{
		public function c_int ChangeCurrentPageFunc(ShortcutsSection* self, c_int object, void* user_data);
	}
	[CRepr]
	public struct ShortcutsShortcut : Widget
	{
	}
	[CRepr]
	public struct ShortcutsWindow : Window
	{
		public function void CloseFunc(ShortcutsWindow* self, void* user_data);
		public function void SearchFunc(ShortcutsWindow* self, void* user_data);
	}
	[CRepr]
	public struct SignalAction : ShortcutAction
	{
		[LinkName("gtk_signal_action_new")]
		public static extern SignalAction* New(char8* signal_name);
		[LinkName("gtk_signal_action_get_signal_name")]
		public static extern char8* GetSignalName(SignalAction* self);
	}
	[CRepr]
	public struct SignalListItemFactory : ListItemFactory
	{
		[LinkName("gtk_signal_list_item_factory_new")]
		public static extern ListItemFactory* New();
		public function void BindFunc(SignalListItemFactory* self, GObject.Object object, void* user_data);
		public function void SetupFunc(SignalListItemFactory* self, GObject.Object object, void* user_data);
		public function void TeardownFunc(SignalListItemFactory* self, GObject.Object object, void* user_data);
		public function void UnbindFunc(SignalListItemFactory* self, GObject.Object object, void* user_data);
	}
	[CRepr]
	public struct SingleSelection : GObject.Object
	{
		[LinkName("gtk_single_selection_new")]
		public static extern SingleSelection* New(Gio.ListModel* model);
		[LinkName("gtk_single_selection_get_autoselect")]
		public static extern c_int GetAutoselect(SingleSelection* self);
		[LinkName("gtk_single_selection_get_can_unselect")]
		public static extern c_int GetCanUnselect(SingleSelection* self);
		[LinkName("gtk_single_selection_get_model")]
		public static extern Gio.ListModel* GetModel(SingleSelection* self);
		[LinkName("gtk_single_selection_get_selected")]
		public static extern c_uint GetSelected(SingleSelection* self);
		[LinkName("gtk_single_selection_get_selected_item")]
		public static extern GObject.Object* GetSelectedItem(SingleSelection* self);
		[LinkName("gtk_single_selection_set_autoselect")]
		public static extern void SetAutoselect(SingleSelection* self, c_int autoselect);
		[LinkName("gtk_single_selection_set_can_unselect")]
		public static extern void SetCanUnselect(SingleSelection* self, c_int can_unselect);
		[LinkName("gtk_single_selection_set_model")]
		public static extern void SetModel(SingleSelection* self, Gio.ListModel* model);
		[LinkName("gtk_single_selection_set_selected")]
		public static extern void SetSelected(SingleSelection* self, c_uint position);
	}
	[CRepr]
	public struct SizeGroup : GObject.Object
	{
		[LinkName("gtk_size_group_new")]
		public static extern SizeGroup* New(SizeGroupMode mode);
		[LinkName("gtk_size_group_add_widget")]
		public static extern void AddWidget(SizeGroup* size_group, Widget* widget);
		[LinkName("gtk_size_group_get_mode")]
		public static extern SizeGroupMode GetMode(SizeGroup* size_group);
		[LinkName("gtk_size_group_get_widgets")]
		public static extern GLib.SList* GetWidgets(SizeGroup* size_group);
		[LinkName("gtk_size_group_remove_widget")]
		public static extern void RemoveWidget(SizeGroup* size_group, Widget* widget);
		[LinkName("gtk_size_group_set_mode")]
		public static extern void SetMode(SizeGroup* size_group, SizeGroupMode mode);
	}
	[CRepr]
	public struct SliceListModel : GObject.Object
	{
		[LinkName("gtk_slice_list_model_new")]
		public static extern SliceListModel* New(Gio.ListModel* model, c_uint offset, c_uint size);
		[LinkName("gtk_slice_list_model_get_model")]
		public static extern Gio.ListModel* GetModel(SliceListModel* self);
		[LinkName("gtk_slice_list_model_get_offset")]
		public static extern c_uint GetOffset(SliceListModel* self);
		[LinkName("gtk_slice_list_model_get_size")]
		public static extern c_uint GetSize(SliceListModel* self);
		[LinkName("gtk_slice_list_model_set_model")]
		public static extern void SetModel(SliceListModel* self, Gio.ListModel* model);
		[LinkName("gtk_slice_list_model_set_offset")]
		public static extern void SetOffset(SliceListModel* self, c_uint offset);
		[LinkName("gtk_slice_list_model_set_size")]
		public static extern void SetSize(SliceListModel* self, c_uint size);
	}
	[CRepr]
	public struct Snapshot : Gdk.Snapshot
	{
		[LinkName("gtk_snapshot_new")]
		public static extern Snapshot* New();
		[LinkName("gtk_snapshot_append_border")]
		public static extern void AppendBorder(Snapshot* snapshot, Gsk.RoundedRect* outline, float* border_width, Gdk.RGBA* border_color);
		[LinkName("gtk_snapshot_append_cairo")]
		public static extern cairo.Context* AppendCairo(Snapshot* snapshot, Graphene.Rect* bounds);
		[LinkName("gtk_snapshot_append_color")]
		public static extern void AppendColor(Snapshot* snapshot, Gdk.RGBA* color, Graphene.Rect* bounds);
		[LinkName("gtk_snapshot_append_conic_gradient")]
		public static extern void AppendConicGradient(Snapshot* snapshot, Graphene.Rect* bounds, Graphene.Point* center, float rotation, Gsk.ColorStop* stops, c_ulong n_stops);
		[LinkName("gtk_snapshot_append_inset_shadow")]
		public static extern void AppendInsetShadow(Snapshot* snapshot, Gsk.RoundedRect* outline, Gdk.RGBA* color, float dx, float dy, float spread, float blur_radius);
		[LinkName("gtk_snapshot_append_layout")]
		public static extern void AppendLayout(Snapshot* snapshot, Pango.Layout* layout, Gdk.RGBA* color);
		[LinkName("gtk_snapshot_append_linear_gradient")]
		public static extern void AppendLinearGradient(Snapshot* snapshot, Graphene.Rect* bounds, Graphene.Point* start_point, Graphene.Point* end_point, Gsk.ColorStop* stops, c_ulong n_stops);
		[LinkName("gtk_snapshot_append_node")]
		public static extern void AppendNode(Snapshot* snapshot, Gsk.RenderNode* node);
		[LinkName("gtk_snapshot_append_outset_shadow")]
		public static extern void AppendOutsetShadow(Snapshot* snapshot, Gsk.RoundedRect* outline, Gdk.RGBA* color, float dx, float dy, float spread, float blur_radius);
		[LinkName("gtk_snapshot_append_radial_gradient")]
		public static extern void AppendRadialGradient(Snapshot* snapshot, Graphene.Rect* bounds, Graphene.Point* center, float hradius, float vradius, float start, float end, Gsk.ColorStop* stops, c_ulong n_stops);
		[LinkName("gtk_snapshot_append_repeating_linear_gradient")]
		public static extern void AppendRepeatingLinearGradient(Snapshot* snapshot, Graphene.Rect* bounds, Graphene.Point* start_point, Graphene.Point* end_point, Gsk.ColorStop* stops, c_ulong n_stops);
		[LinkName("gtk_snapshot_append_repeating_radial_gradient")]
		public static extern void AppendRepeatingRadialGradient(Snapshot* snapshot, Graphene.Rect* bounds, Graphene.Point* center, float hradius, float vradius, float start, float end, Gsk.ColorStop* stops, c_ulong n_stops);
		[LinkName("gtk_snapshot_append_scaled_texture")]
		public static extern void AppendScaledTexture(Snapshot* snapshot, Gdk.Texture* texture, Gsk.ScalingFilter filter, Graphene.Rect* bounds);
		[LinkName("gtk_snapshot_append_texture")]
		public static extern void AppendTexture(Snapshot* snapshot, Gdk.Texture* texture, Graphene.Rect* bounds);
		[LinkName("gtk_snapshot_gl_shader_pop_texture")]
		public static extern void GlShaderPopTexture(Snapshot* snapshot);
		[LinkName("gtk_snapshot_perspective")]
		public static extern void Perspective(Snapshot* snapshot, float depth);
		[LinkName("gtk_snapshot_pop")]
		public static extern void Pop(Snapshot* snapshot);
		[LinkName("gtk_snapshot_push_blend")]
		public static extern void PushBlend(Snapshot* snapshot, Gsk.BlendMode blend_mode);
		[LinkName("gtk_snapshot_push_blur")]
		public static extern void PushBlur(Snapshot* snapshot, double radius);
		[LinkName("gtk_snapshot_push_clip")]
		public static extern void PushClip(Snapshot* snapshot, Graphene.Rect* bounds);
		[LinkName("gtk_snapshot_push_color_matrix")]
		public static extern void PushColorMatrix(Snapshot* snapshot, Graphene.Matrix* color_matrix, Graphene.Vec4* color_offset);
		[LinkName("gtk_snapshot_push_cross_fade")]
		public static extern void PushCrossFade(Snapshot* snapshot, double progress);
		[LinkName("gtk_snapshot_push_gl_shader")]
		public static extern void PushGlShader(Snapshot* snapshot, Gsk.GLShader* shader, Graphene.Rect* bounds, GLib.Bytes* take_args);
		[LinkName("gtk_snapshot_push_mask")]
		public static extern void PushMask(Snapshot* snapshot, Gsk.MaskMode mask_mode);
		[LinkName("gtk_snapshot_push_opacity")]
		public static extern void PushOpacity(Snapshot* snapshot, double opacity);
		[LinkName("gtk_snapshot_push_repeat")]
		public static extern void PushRepeat(Snapshot* snapshot, Graphene.Rect* bounds, Graphene.Rect* child_bounds);
		[LinkName("gtk_snapshot_push_rounded_clip")]
		public static extern void PushRoundedClip(Snapshot* snapshot, Gsk.RoundedRect* bounds);
		[LinkName("gtk_snapshot_push_shadow")]
		public static extern void PushShadow(Snapshot* snapshot, Gsk.Shadow* shadow, c_ulong n_shadows);
		[LinkName("gtk_snapshot_render_background")]
		public static extern void RenderBackground(Snapshot* snapshot, StyleContext* context, double x, double y, double width, double height);
		[LinkName("gtk_snapshot_render_focus")]
		public static extern void RenderFocus(Snapshot* snapshot, StyleContext* context, double x, double y, double width, double height);
		[LinkName("gtk_snapshot_render_frame")]
		public static extern void RenderFrame(Snapshot* snapshot, StyleContext* context, double x, double y, double width, double height);
		[LinkName("gtk_snapshot_render_insertion_cursor")]
		public static extern void RenderInsertionCursor(Snapshot* snapshot, StyleContext* context, double x, double y, Pango.Layout* layout, c_int index, Pango.Direction direction);
		[LinkName("gtk_snapshot_render_layout")]
		public static extern void RenderLayout(Snapshot* snapshot, StyleContext* context, double x, double y, Pango.Layout* layout);
		[LinkName("gtk_snapshot_restore")]
		public static extern void Restore(Snapshot* snapshot);
		[LinkName("gtk_snapshot_rotate")]
		public static extern void Rotate(Snapshot* snapshot, float angle);
		[LinkName("gtk_snapshot_rotate_3d")]
		public static extern void Rotate3d(Snapshot* snapshot, float angle, Graphene.Vec3* axis);
		[LinkName("gtk_snapshot_save")]
		public static extern void Save(Snapshot* snapshot);
		[LinkName("gtk_snapshot_scale")]
		public static extern void Scale(Snapshot* snapshot, float factor_x, float factor_y);
		[LinkName("gtk_snapshot_scale_3d")]
		public static extern void Scale3d(Snapshot* snapshot, float factor_x, float factor_y, float factor_z);
		[LinkName("gtk_snapshot_to_node")]
		public static extern Gsk.RenderNode* ToNode(Snapshot* snapshot);
		[LinkName("gtk_snapshot_to_paintable")]
		public static extern Gdk.Paintable* ToPaintable(Snapshot* snapshot, Graphene.Size* size);
		[LinkName("gtk_snapshot_transform")]
		public static extern void Transform(Snapshot* snapshot, Gsk.Transform* transform);
		[LinkName("gtk_snapshot_transform_matrix")]
		public static extern void TransformMatrix(Snapshot* snapshot, Graphene.Matrix* matrix);
		[LinkName("gtk_snapshot_translate")]
		public static extern void Translate(Snapshot* snapshot, Graphene.Point* point);
		[LinkName("gtk_snapshot_translate_3d")]
		public static extern void Translate3d(Snapshot* snapshot, Graphene.Point3D* point);
	}
	[CRepr]
	public struct SortListModel : GObject.Object
	{
		[LinkName("gtk_sort_list_model_new")]
		public static extern SortListModel* New(Gio.ListModel* model, Sorter* sorter);
		[LinkName("gtk_sort_list_model_get_incremental")]
		public static extern c_int GetIncremental(SortListModel* self);
		[LinkName("gtk_sort_list_model_get_model")]
		public static extern Gio.ListModel* GetModel(SortListModel* self);
		[LinkName("gtk_sort_list_model_get_pending")]
		public static extern c_uint GetPending(SortListModel* self);
		[LinkName("gtk_sort_list_model_get_section_sorter")]
		public static extern Sorter* GetSectionSorter(SortListModel* self);
		[LinkName("gtk_sort_list_model_get_sorter")]
		public static extern Sorter* GetSorter(SortListModel* self);
		[LinkName("gtk_sort_list_model_set_incremental")]
		public static extern void SetIncremental(SortListModel* self, c_int incremental);
		[LinkName("gtk_sort_list_model_set_model")]
		public static extern void SetModel(SortListModel* self, Gio.ListModel* model);
		[LinkName("gtk_sort_list_model_set_section_sorter")]
		public static extern void SetSectionSorter(SortListModel* self, Sorter* sorter);
		[LinkName("gtk_sort_list_model_set_sorter")]
		public static extern void SetSorter(SortListModel* self, Sorter* sorter);
	}
	[CRepr]
	public struct Sorter : GObject.Object
	{
		[LinkName("gtk_sorter_changed")]
		public static extern void Changed(Sorter* self, SorterChange change);
		[LinkName("gtk_sorter_compare")]
		public static extern Ordering Compare(Sorter* self, GObject.Object* item1, GObject.Object* item2);
		[LinkName("gtk_sorter_get_order")]
		public static extern SorterOrder GetOrder(Sorter* self);
		public function void ChangedFunc(Sorter* self, SorterChange change, void* user_data);
	}
	[CRepr]
	public struct SpinButton : Widget
	{
		[LinkName("gtk_spin_button_new")]
		public static extern Widget* New(Adjustment* adjustment, double climb_rate, c_uint digits);
		[LinkName("gtk_spin_button_new_with_range")]
		public static extern Widget* NewWithRange(double min, double max, double step);
		[LinkName("gtk_spin_button_configure")]
		public static extern void Configure(SpinButton* spin_button, Adjustment* adjustment, double climb_rate, c_uint digits);
		[LinkName("gtk_spin_button_get_adjustment")]
		public static extern Adjustment* GetAdjustment(SpinButton* spin_button);
		[LinkName("gtk_spin_button_get_climb_rate")]
		public static extern double GetClimbRate(SpinButton* spin_button);
		[LinkName("gtk_spin_button_get_digits")]
		public static extern c_uint GetDigits(SpinButton* spin_button);
		[LinkName("gtk_spin_button_get_increments")]
		public static extern void GetIncrements(SpinButton* spin_button, double* step, double* page);
		[LinkName("gtk_spin_button_get_numeric")]
		public static extern c_int GetNumeric(SpinButton* spin_button);
		[LinkName("gtk_spin_button_get_range")]
		public static extern void GetRange(SpinButton* spin_button, double* min, double* max);
		[LinkName("gtk_spin_button_get_snap_to_ticks")]
		public static extern c_int GetSnapToTicks(SpinButton* spin_button);
		[LinkName("gtk_spin_button_get_update_policy")]
		public static extern SpinButtonUpdatePolicy GetUpdatePolicy(SpinButton* spin_button);
		[LinkName("gtk_spin_button_get_value")]
		public static extern double GetValue(SpinButton* spin_button);
		[LinkName("gtk_spin_button_get_value_as_int")]
		public static extern c_int GetValueAsInt(SpinButton* spin_button);
		[LinkName("gtk_spin_button_get_wrap")]
		public static extern c_int GetWrap(SpinButton* spin_button);
		[LinkName("gtk_spin_button_set_adjustment")]
		public static extern void SetAdjustment(SpinButton* spin_button, Adjustment* adjustment);
		[LinkName("gtk_spin_button_set_climb_rate")]
		public static extern void SetClimbRate(SpinButton* spin_button, double climb_rate);
		[LinkName("gtk_spin_button_set_digits")]
		public static extern void SetDigits(SpinButton* spin_button, c_uint digits);
		[LinkName("gtk_spin_button_set_increments")]
		public static extern void SetIncrements(SpinButton* spin_button, double step, double page);
		[LinkName("gtk_spin_button_set_numeric")]
		public static extern void SetNumeric(SpinButton* spin_button, c_int numeric);
		[LinkName("gtk_spin_button_set_range")]
		public static extern void SetRange(SpinButton* spin_button, double min, double max);
		[LinkName("gtk_spin_button_set_snap_to_ticks")]
		public static extern void SetSnapToTicks(SpinButton* spin_button, c_int snap_to_ticks);
		[LinkName("gtk_spin_button_set_update_policy")]
		public static extern void SetUpdatePolicy(SpinButton* spin_button, SpinButtonUpdatePolicy policy);
		[LinkName("gtk_spin_button_set_value")]
		public static extern void SetValue(SpinButton* spin_button, double value);
		[LinkName("gtk_spin_button_set_wrap")]
		public static extern void SetWrap(SpinButton* spin_button, c_int wrap);
		[LinkName("gtk_spin_button_spin")]
		public static extern void Spin(SpinButton* spin_button, SpinType direction, double increment);
		[LinkName("gtk_spin_button_update")]
		public static extern void Update(SpinButton* spin_button);
		public function void ChangeValueFunc(SpinButton* self, ScrollType scroll, void* user_data);
		public function c_int InputFunc(SpinButton* self, double* new_value, void* user_data);
		public function c_int OutputFunc(SpinButton* self, void* user_data);
		public function void ValueChangedFunc(SpinButton* self, void* user_data);
		public function void WrappedFunc(SpinButton* self, void* user_data);
	}
	[CRepr]
	public struct Spinner : Widget
	{
		[LinkName("gtk_spinner_new")]
		public static extern Widget* New();
		[LinkName("gtk_spinner_get_spinning")]
		public static extern c_int GetSpinning(Spinner* spinner);
		[LinkName("gtk_spinner_set_spinning")]
		public static extern void SetSpinning(Spinner* spinner, c_int spinning);
		[LinkName("gtk_spinner_start")]
		public static extern void Start(Spinner* spinner);
		[LinkName("gtk_spinner_stop")]
		public static extern void Stop(Spinner* spinner);
	}
	[CRepr]
	public struct Stack : Widget
	{
		[LinkName("gtk_stack_new")]
		public static extern Widget* New();
		[LinkName("gtk_stack_add_child")]
		public static extern StackPage* AddChild(Stack* stack_, Widget* child);
		[LinkName("gtk_stack_add_named")]
		public static extern StackPage* AddNamed(Stack* stack_, Widget* child, char8* name);
		[LinkName("gtk_stack_add_titled")]
		public static extern StackPage* AddTitled(Stack* stack_, Widget* child, char8* name, char8* title);
		[LinkName("gtk_stack_get_child_by_name")]
		public static extern Widget* GetChildByName(Stack* stack_, char8* name);
		[LinkName("gtk_stack_get_hhomogeneous")]
		public static extern c_int GetHhomogeneous(Stack* stack_);
		[LinkName("gtk_stack_get_interpolate_size")]
		public static extern c_int GetInterpolateSize(Stack* stack_);
		[LinkName("gtk_stack_get_page")]
		public static extern StackPage* GetPage(Stack* stack_, Widget* child);
		[LinkName("gtk_stack_get_pages")]
		public static extern SelectionModel* GetPages(Stack* stack_);
		[LinkName("gtk_stack_get_transition_duration")]
		public static extern c_uint GetTransitionDuration(Stack* stack_);
		[LinkName("gtk_stack_get_transition_running")]
		public static extern c_int GetTransitionRunning(Stack* stack_);
		[LinkName("gtk_stack_get_transition_type")]
		public static extern StackTransitionType GetTransitionType(Stack* stack_);
		[LinkName("gtk_stack_get_vhomogeneous")]
		public static extern c_int GetVhomogeneous(Stack* stack_);
		[LinkName("gtk_stack_get_visible_child")]
		public static extern Widget* GetVisibleChild(Stack* stack_);
		[LinkName("gtk_stack_get_visible_child_name")]
		public static extern char8* GetVisibleChildName(Stack* stack_);
		[LinkName("gtk_stack_remove")]
		public static extern void Remove(Stack* stack_, Widget* child);
		[LinkName("gtk_stack_set_hhomogeneous")]
		public static extern void SetHhomogeneous(Stack* stack_, c_int hhomogeneous);
		[LinkName("gtk_stack_set_interpolate_size")]
		public static extern void SetInterpolateSize(Stack* stack_, c_int interpolate_size);
		[LinkName("gtk_stack_set_transition_duration")]
		public static extern void SetTransitionDuration(Stack* stack_, c_uint duration);
		[LinkName("gtk_stack_set_transition_type")]
		public static extern void SetTransitionType(Stack* stack_, StackTransitionType transition);
		[LinkName("gtk_stack_set_vhomogeneous")]
		public static extern void SetVhomogeneous(Stack* stack_, c_int vhomogeneous);
		[LinkName("gtk_stack_set_visible_child")]
		public static extern void SetVisibleChild(Stack* stack_, Widget* child);
		[LinkName("gtk_stack_set_visible_child_full")]
		public static extern void SetVisibleChildFull(Stack* stack_, char8* name, StackTransitionType transition);
		[LinkName("gtk_stack_set_visible_child_name")]
		public static extern void SetVisibleChildName(Stack* stack_, char8* name);
	}
	[CRepr]
	public struct StackPage : GObject.Object
	{
		[LinkName("gtk_stack_page_get_child")]
		public static extern Widget* GetChild(StackPage* self);
		[LinkName("gtk_stack_page_get_icon_name")]
		public static extern char8* GetIconName(StackPage* self);
		[LinkName("gtk_stack_page_get_name")]
		public static extern char8* GetName(StackPage* self);
		[LinkName("gtk_stack_page_get_needs_attention")]
		public static extern c_int GetNeedsAttention(StackPage* self);
		[LinkName("gtk_stack_page_get_title")]
		public static extern char8* GetTitle(StackPage* self);
		[LinkName("gtk_stack_page_get_use_underline")]
		public static extern c_int GetUseUnderline(StackPage* self);
		[LinkName("gtk_stack_page_get_visible")]
		public static extern c_int GetVisible(StackPage* self);
		[LinkName("gtk_stack_page_set_icon_name")]
		public static extern void SetIconName(StackPage* self, char8* setting);
		[LinkName("gtk_stack_page_set_name")]
		public static extern void SetName(StackPage* self, char8* setting);
		[LinkName("gtk_stack_page_set_needs_attention")]
		public static extern void SetNeedsAttention(StackPage* self, c_int setting);
		[LinkName("gtk_stack_page_set_title")]
		public static extern void SetTitle(StackPage* self, char8* setting);
		[LinkName("gtk_stack_page_set_use_underline")]
		public static extern void SetUseUnderline(StackPage* self, c_int setting);
		[LinkName("gtk_stack_page_set_visible")]
		public static extern void SetVisible(StackPage* self, c_int visible);
	}
	[CRepr]
	public struct StackSidebar : Widget
	{
		[LinkName("gtk_stack_sidebar_new")]
		public static extern Widget* New();
		[LinkName("gtk_stack_sidebar_get_stack")]
		public static extern Stack* GetStack(StackSidebar* self);
		[LinkName("gtk_stack_sidebar_set_stack")]
		public static extern void SetStack(StackSidebar* self, Stack* stack_);
	}
	[CRepr]
	public struct StackSwitcher : Widget
	{
		[LinkName("gtk_stack_switcher_new")]
		public static extern Widget* New();
		[LinkName("gtk_stack_switcher_get_stack")]
		public static extern Stack* GetStack(StackSwitcher* switcher);
		[LinkName("gtk_stack_switcher_set_stack")]
		public static extern void SetStack(StackSwitcher* switcher, Stack* stack_);
	}
	[CRepr]
	public struct Statusbar : Widget
	{
		[LinkName("gtk_statusbar_new")]
		public static extern Widget* New();
		[LinkName("gtk_statusbar_get_context_id")]
		public static extern c_uint GetContextId(Statusbar* statusbar, char8* context_description);
		[LinkName("gtk_statusbar_pop")]
		public static extern void Pop(Statusbar* statusbar, c_uint context_id);
		[LinkName("gtk_statusbar_push")]
		public static extern c_uint Push(Statusbar* statusbar, c_uint context_id, char8* text);
		[LinkName("gtk_statusbar_remove")]
		public static extern void Remove(Statusbar* statusbar, c_uint context_id, c_uint message_id);
		[LinkName("gtk_statusbar_remove_all")]
		public static extern void RemoveAll(Statusbar* statusbar, c_uint context_id);
		public function void TextPoppedFunc(Statusbar* self, c_uint context_id, char8* text, void* user_data);
		public function void TextPushedFunc(Statusbar* self, c_uint context_id, char8* text, void* user_data);
	}
	[CRepr]
	public struct StringFilter : Filter
	{
		[LinkName("gtk_string_filter_new")]
		public static extern StringFilter* New(Expression* expression);
		[LinkName("gtk_string_filter_get_expression")]
		public static extern Expression* GetExpression(StringFilter* self);
		[LinkName("gtk_string_filter_get_ignore_case")]
		public static extern c_int GetIgnoreCase(StringFilter* self);
		[LinkName("gtk_string_filter_get_match_mode")]
		public static extern StringFilterMatchMode GetMatchMode(StringFilter* self);
		[LinkName("gtk_string_filter_get_search")]
		public static extern char8* GetSearch(StringFilter* self);
		[LinkName("gtk_string_filter_set_expression")]
		public static extern void SetExpression(StringFilter* self, Expression* expression);
		[LinkName("gtk_string_filter_set_ignore_case")]
		public static extern void SetIgnoreCase(StringFilter* self, c_int ignore_case);
		[LinkName("gtk_string_filter_set_match_mode")]
		public static extern void SetMatchMode(StringFilter* self, StringFilterMatchMode mode);
		[LinkName("gtk_string_filter_set_search")]
		public static extern void SetSearch(StringFilter* self, char8* search);
	}
	[CRepr]
	public struct StringList : GObject.Object
	{
		[LinkName("gtk_string_list_new")]
		public static extern StringList* New(char8** strings);
		[LinkName("gtk_string_list_append")]
		public static extern void Append(StringList* self, char8* string);
		[LinkName("gtk_string_list_get_string")]
		public static extern char8* GetString(StringList* self, c_uint position);
		[LinkName("gtk_string_list_remove")]
		public static extern void Remove(StringList* self, c_uint position);
		[LinkName("gtk_string_list_splice")]
		public static extern void Splice(StringList* self, c_uint position, c_uint n_removals, char8** additions);
		[LinkName("gtk_string_list_take")]
		public static extern void Take(StringList* self, char8* string);
	}
	[CRepr]
	public struct StringObject : GObject.Object
	{
		[LinkName("gtk_string_object_new")]
		public static extern StringObject* New(char8* string);
		[LinkName("gtk_string_object_get_string")]
		public static extern char8* GetString(StringObject* self);
	}
	[CRepr]
	public struct StringSorter : Sorter
	{
		[LinkName("gtk_string_sorter_new")]
		public static extern StringSorter* New(Expression* expression);
		[LinkName("gtk_string_sorter_get_collation")]
		public static extern Collation GetCollation(StringSorter* self);
		[LinkName("gtk_string_sorter_get_expression")]
		public static extern Expression* GetExpression(StringSorter* self);
		[LinkName("gtk_string_sorter_get_ignore_case")]
		public static extern c_int GetIgnoreCase(StringSorter* self);
		[LinkName("gtk_string_sorter_set_collation")]
		public static extern void SetCollation(StringSorter* self, Collation collation);
		[LinkName("gtk_string_sorter_set_expression")]
		public static extern void SetExpression(StringSorter* self, Expression* expression);
		[LinkName("gtk_string_sorter_set_ignore_case")]
		public static extern void SetIgnoreCase(StringSorter* self, c_int ignore_case);
	}
	[CRepr]
	public struct StyleContext : GObject.Object
	{
		[LinkName("gtk_style_context_add_class")]
		public static extern void AddClass(StyleContext* context, char8* class_name);
		[LinkName("gtk_style_context_add_provider")]
		public static extern void AddProvider(StyleContext* context, StyleProvider* provider, c_uint priority);
		[LinkName("gtk_style_context_get_border")]
		public static extern void GetBorder(StyleContext* context, Border* border);
		[LinkName("gtk_style_context_get_color")]
		public static extern void GetColor(StyleContext* context, Gdk.RGBA* color);
		[LinkName("gtk_style_context_get_display")]
		public static extern Gdk.Display* GetDisplay(StyleContext* context);
		[LinkName("gtk_style_context_get_margin")]
		public static extern void GetMargin(StyleContext* context, Border* margin);
		[LinkName("gtk_style_context_get_padding")]
		public static extern void GetPadding(StyleContext* context, Border* padding);
		[LinkName("gtk_style_context_get_scale")]
		public static extern c_int GetScale(StyleContext* context);
		[LinkName("gtk_style_context_get_state")]
		public static extern StateFlags GetState(StyleContext* context);
		[LinkName("gtk_style_context_has_class")]
		public static extern c_int HasClass(StyleContext* context, char8* class_name);
		[LinkName("gtk_style_context_lookup_color")]
		public static extern c_int LookupColor(StyleContext* context, char8* color_name, Gdk.RGBA* color);
		[LinkName("gtk_style_context_remove_class")]
		public static extern void RemoveClass(StyleContext* context, char8* class_name);
		[LinkName("gtk_style_context_remove_provider")]
		public static extern void RemoveProvider(StyleContext* context, StyleProvider* provider);
		[LinkName("gtk_style_context_restore")]
		public static extern void Restore(StyleContext* context);
		[LinkName("gtk_style_context_save")]
		public static extern void Save(StyleContext* context);
		[LinkName("gtk_style_context_set_display")]
		public static extern void SetDisplay(StyleContext* context, Gdk.Display* display);
		[LinkName("gtk_style_context_set_scale")]
		public static extern void SetScale(StyleContext* context, c_int scale);
		[LinkName("gtk_style_context_set_state")]
		public static extern void SetState(StyleContext* context, StateFlags flags);
		[LinkName("gtk_style_context_to_string")]
		public static extern char8* ToString(StyleContext* context, StyleContextPrintFlags flags);
	}
	[CRepr]
	public struct Switch : Widget
	{
		[LinkName("gtk_switch_new")]
		public static extern Widget* New();
		[LinkName("gtk_switch_get_active")]
		public static extern c_int GetActive(Switch* self);
		[LinkName("gtk_switch_get_state")]
		public static extern c_int GetState(Switch* self);
		[LinkName("gtk_switch_set_active")]
		public static extern void SetActive(Switch* self, c_int is_active);
		[LinkName("gtk_switch_set_state")]
		public static extern void SetState(Switch* self, c_int state);
		public function void ActivateFunc(Switch* self, void* user_data);
		public function c_int StateSetFunc(Switch* self, c_int state, void* user_data);
	}
	[CRepr]
	public struct Text : Widget
	{
		[LinkName("gtk_text_new")]
		public static extern Widget* New();
		[LinkName("gtk_text_new_with_buffer")]
		public static extern Widget* NewWithBuffer(EntryBuffer* buffer);
		[LinkName("gtk_text_compute_cursor_extents")]
		public static extern void ComputeCursorExtents(Text* self, c_ulong position, Graphene.Rect* strong, Graphene.Rect* weak);
		[LinkName("gtk_text_get_activates_default")]
		public static extern c_int GetActivatesDefault(Text* self);
		[LinkName("gtk_text_get_attributes")]
		public static extern Pango.AttrList* GetAttributes(Text* self);
		[LinkName("gtk_text_get_buffer")]
		public static extern EntryBuffer* GetBuffer(Text* self);
		[LinkName("gtk_text_get_enable_emoji_completion")]
		public static extern c_int GetEnableEmojiCompletion(Text* self);
		[LinkName("gtk_text_get_extra_menu")]
		public static extern Gio.MenuModel* GetExtraMenu(Text* self);
		[LinkName("gtk_text_get_input_hints")]
		public static extern InputHints GetInputHints(Text* self);
		[LinkName("gtk_text_get_input_purpose")]
		public static extern InputPurpose GetInputPurpose(Text* self);
		[LinkName("gtk_text_get_invisible_char")]
		public static extern c_uint GetInvisibleChar(Text* self);
		[LinkName("gtk_text_get_max_length")]
		public static extern c_int GetMaxLength(Text* self);
		[LinkName("gtk_text_get_overwrite_mode")]
		public static extern c_int GetOverwriteMode(Text* self);
		[LinkName("gtk_text_get_placeholder_text")]
		public static extern char8* GetPlaceholderText(Text* self);
		[LinkName("gtk_text_get_propagate_text_width")]
		public static extern c_int GetPropagateTextWidth(Text* self);
		[LinkName("gtk_text_get_tabs")]
		public static extern Pango.TabArray* GetTabs(Text* self);
		[LinkName("gtk_text_get_text_length")]
		public static extern c_ushort GetTextLength(Text* self);
		[LinkName("gtk_text_get_truncate_multiline")]
		public static extern c_int GetTruncateMultiline(Text* self);
		[LinkName("gtk_text_get_visibility")]
		public static extern c_int GetVisibility(Text* self);
		[LinkName("gtk_text_grab_focus_without_selecting")]
		public static extern c_int GrabFocusWithoutSelecting(Text* self);
		[LinkName("gtk_text_set_activates_default")]
		public static extern void SetActivatesDefault(Text* self, c_int activates);
		[LinkName("gtk_text_set_attributes")]
		public static extern void SetAttributes(Text* self, Pango.AttrList* attrs);
		[LinkName("gtk_text_set_buffer")]
		public static extern void SetBuffer(Text* self, EntryBuffer* buffer);
		[LinkName("gtk_text_set_enable_emoji_completion")]
		public static extern void SetEnableEmojiCompletion(Text* self, c_int enable_emoji_completion);
		[LinkName("gtk_text_set_extra_menu")]
		public static extern void SetExtraMenu(Text* self, Gio.MenuModel* model);
		[LinkName("gtk_text_set_input_hints")]
		public static extern void SetInputHints(Text* self, InputHints hints);
		[LinkName("gtk_text_set_input_purpose")]
		public static extern void SetInputPurpose(Text* self, InputPurpose purpose);
		[LinkName("gtk_text_set_invisible_char")]
		public static extern void SetInvisibleChar(Text* self, c_uint ch);
		[LinkName("gtk_text_set_max_length")]
		public static extern void SetMaxLength(Text* self, c_int length);
		[LinkName("gtk_text_set_overwrite_mode")]
		public static extern void SetOverwriteMode(Text* self, c_int overwrite);
		[LinkName("gtk_text_set_placeholder_text")]
		public static extern void SetPlaceholderText(Text* self, char8* text);
		[LinkName("gtk_text_set_propagate_text_width")]
		public static extern void SetPropagateTextWidth(Text* self, c_int propagate_text_width);
		[LinkName("gtk_text_set_tabs")]
		public static extern void SetTabs(Text* self, Pango.TabArray* tabs);
		[LinkName("gtk_text_set_truncate_multiline")]
		public static extern void SetTruncateMultiline(Text* self, c_int truncate_multiline);
		[LinkName("gtk_text_set_visibility")]
		public static extern void SetVisibility(Text* self, c_int visible);
		[LinkName("gtk_text_unset_invisible_char")]
		public static extern void UnsetInvisibleChar(Text* self);
		public function void ActivateFunc(Text* self, void* user_data);
		public function void BackspaceFunc(Text* self, void* user_data);
		public function void CopyClipboardFunc(Text* self, void* user_data);
		public function void CutClipboardFunc(Text* self, void* user_data);
		public function void DeleteFromCursorFunc(Text* self, DeleteType type, c_int count, void* user_data);
		public function void InsertAtCursorFunc(Text* self, char8* string, void* user_data);
		public function void InsertEmojiFunc(Text* self, void* user_data);
		public function void MoveCursorFunc(Text* self, MovementStep step, c_int count, c_int extend, void* user_data);
		public function void PasteClipboardFunc(Text* self, void* user_data);
		public function void PreeditChangedFunc(Text* self, char8* preedit, void* user_data);
		public function void ToggleOverwriteFunc(Text* self, void* user_data);
	}
	[CRepr]
	public struct TextBuffer : GObject.Object
	{
		[LinkName("gtk_text_buffer_new")]
		public static extern TextBuffer* New(TextTagTable* table);
		[LinkName("gtk_text_buffer_add_mark")]
		public static extern void AddMark(TextBuffer* buffer, TextMark* mark, TextIter* where_);
		[LinkName("gtk_text_buffer_add_selection_clipboard")]
		public static extern void AddSelectionClipboard(TextBuffer* buffer, Gdk.Clipboard* clipboard);
		[LinkName("gtk_text_buffer_apply_tag")]
		public static extern void ApplyTag(TextBuffer* buffer, TextTag* tag, TextIter* start, TextIter* end);
		[LinkName("gtk_text_buffer_apply_tag_by_name")]
		public static extern void ApplyTagByName(TextBuffer* buffer, char8* name, TextIter* start, TextIter* end);
		[LinkName("gtk_text_buffer_backspace")]
		public static extern c_int Backspace(TextBuffer* buffer, TextIter* iter, c_int interactive, c_int default_editable);
		[LinkName("gtk_text_buffer_begin_irreversible_action")]
		public static extern void BeginIrreversibleAction(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_begin_user_action")]
		public static extern void BeginUserAction(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_copy_clipboard")]
		public static extern void CopyClipboard(TextBuffer* buffer, Gdk.Clipboard* clipboard);
		[LinkName("gtk_text_buffer_create_child_anchor")]
		public static extern TextChildAnchor* CreateChildAnchor(TextBuffer* buffer, TextIter* iter);
		[LinkName("gtk_text_buffer_create_mark")]
		public static extern TextMark* CreateMark(TextBuffer* buffer, char8* mark_name, TextIter* where_, c_int left_gravity);
		[LinkName("gtk_text_buffer_cut_clipboard")]
		public static extern void CutClipboard(TextBuffer* buffer, Gdk.Clipboard* clipboard, c_int default_editable);
		[LinkName("gtk_text_buffer_delete")]
		public static extern void Delete(TextBuffer* buffer, TextIter* start, TextIter* end);
		[LinkName("gtk_text_buffer_delete_interactive")]
		public static extern c_int DeleteInteractive(TextBuffer* buffer, TextIter* start_iter, TextIter* end_iter, c_int default_editable);
		[LinkName("gtk_text_buffer_delete_mark")]
		public static extern void DeleteMark(TextBuffer* buffer, TextMark* mark);
		[LinkName("gtk_text_buffer_delete_mark_by_name")]
		public static extern void DeleteMarkByName(TextBuffer* buffer, char8* name);
		[LinkName("gtk_text_buffer_delete_selection")]
		public static extern c_int DeleteSelection(TextBuffer* buffer, c_int interactive, c_int default_editable);
		[LinkName("gtk_text_buffer_end_irreversible_action")]
		public static extern void EndIrreversibleAction(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_end_user_action")]
		public static extern void EndUserAction(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_get_bounds")]
		public static extern void GetBounds(TextBuffer* buffer, TextIter* start, TextIter* end);
		[LinkName("gtk_text_buffer_get_can_redo")]
		public static extern c_int GetCanRedo(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_get_can_undo")]
		public static extern c_int GetCanUndo(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_get_char_count")]
		public static extern c_int GetCharCount(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_get_enable_undo")]
		public static extern c_int GetEnableUndo(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_get_end_iter")]
		public static extern void GetEndIter(TextBuffer* buffer, TextIter* iter);
		[LinkName("gtk_text_buffer_get_has_selection")]
		public static extern c_int GetHasSelection(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_get_insert")]
		public static extern TextMark* GetInsert(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_get_iter_at_child_anchor")]
		public static extern void GetIterAtChildAnchor(TextBuffer* buffer, TextIter* iter, TextChildAnchor* anchor);
		[LinkName("gtk_text_buffer_get_iter_at_line")]
		public static extern c_int GetIterAtLine(TextBuffer* buffer, TextIter* iter, c_int line_number);
		[LinkName("gtk_text_buffer_get_iter_at_line_index")]
		public static extern c_int GetIterAtLineIndex(TextBuffer* buffer, TextIter* iter, c_int line_number, c_int byte_index);
		[LinkName("gtk_text_buffer_get_iter_at_line_offset")]
		public static extern c_int GetIterAtLineOffset(TextBuffer* buffer, TextIter* iter, c_int line_number, c_int char_offset);
		[LinkName("gtk_text_buffer_get_iter_at_mark")]
		public static extern void GetIterAtMark(TextBuffer* buffer, TextIter* iter, TextMark* mark);
		[LinkName("gtk_text_buffer_get_iter_at_offset")]
		public static extern void GetIterAtOffset(TextBuffer* buffer, TextIter* iter, c_int char_offset);
		[LinkName("gtk_text_buffer_get_line_count")]
		public static extern c_int GetLineCount(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_get_mark")]
		public static extern TextMark* GetMark(TextBuffer* buffer, char8* name);
		[LinkName("gtk_text_buffer_get_max_undo_levels")]
		public static extern c_uint GetMaxUndoLevels(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_get_modified")]
		public static extern c_int GetModified(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_get_selection_bound")]
		public static extern TextMark* GetSelectionBound(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_get_selection_bounds")]
		public static extern c_int GetSelectionBounds(TextBuffer* buffer, TextIter* start, TextIter* end);
		[LinkName("gtk_text_buffer_get_selection_content")]
		public static extern Gdk.ContentProvider* GetSelectionContent(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_get_slice")]
		public static extern char8* GetSlice(TextBuffer* buffer, TextIter* start, TextIter* end, c_int include_hidden_chars);
		[LinkName("gtk_text_buffer_get_start_iter")]
		public static extern void GetStartIter(TextBuffer* buffer, TextIter* iter);
		[LinkName("gtk_text_buffer_get_tag_table")]
		public static extern TextTagTable* GetTagTable(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_get_text")]
		public static extern char8* GetText(TextBuffer* buffer, TextIter* start, TextIter* end, c_int include_hidden_chars);
		[LinkName("gtk_text_buffer_insert")]
		public static extern void Insert(TextBuffer* buffer, TextIter* iter, char8* text, c_int len);
		[LinkName("gtk_text_buffer_insert_at_cursor")]
		public static extern void InsertAtCursor(TextBuffer* buffer, char8* text, c_int len);
		[LinkName("gtk_text_buffer_insert_child_anchor")]
		public static extern void InsertChildAnchor(TextBuffer* buffer, TextIter* iter, TextChildAnchor* anchor);
		[LinkName("gtk_text_buffer_insert_interactive")]
		public static extern c_int InsertInteractive(TextBuffer* buffer, TextIter* iter, char8* text, c_int len, c_int default_editable);
		[LinkName("gtk_text_buffer_insert_interactive_at_cursor")]
		public static extern c_int InsertInteractiveAtCursor(TextBuffer* buffer, char8* text, c_int len, c_int default_editable);
		[LinkName("gtk_text_buffer_insert_markup")]
		public static extern void InsertMarkup(TextBuffer* buffer, TextIter* iter, char8* markup, c_int len);
		[LinkName("gtk_text_buffer_insert_paintable")]
		public static extern void InsertPaintable(TextBuffer* buffer, TextIter* iter, Gdk.Paintable* paintable);
		[LinkName("gtk_text_buffer_insert_range")]
		public static extern void InsertRange(TextBuffer* buffer, TextIter* iter, TextIter* start, TextIter* end);
		[LinkName("gtk_text_buffer_insert_range_interactive")]
		public static extern c_int InsertRangeInteractive(TextBuffer* buffer, TextIter* iter, TextIter* start, TextIter* end, c_int default_editable);
		[LinkName("gtk_text_buffer_move_mark")]
		public static extern void MoveMark(TextBuffer* buffer, TextMark* mark, TextIter* where_);
		[LinkName("gtk_text_buffer_move_mark_by_name")]
		public static extern void MoveMarkByName(TextBuffer* buffer, char8* name, TextIter* where_);
		[LinkName("gtk_text_buffer_paste_clipboard")]
		public static extern void PasteClipboard(TextBuffer* buffer, Gdk.Clipboard* clipboard, TextIter* override_location, c_int default_editable);
		[LinkName("gtk_text_buffer_place_cursor")]
		public static extern void PlaceCursor(TextBuffer* buffer, TextIter* where_);
		[LinkName("gtk_text_buffer_redo")]
		public static extern void Redo(TextBuffer* buffer);
		[LinkName("gtk_text_buffer_remove_all_tags")]
		public static extern void RemoveAllTags(TextBuffer* buffer, TextIter* start, TextIter* end);
		[LinkName("gtk_text_buffer_remove_selection_clipboard")]
		public static extern void RemoveSelectionClipboard(TextBuffer* buffer, Gdk.Clipboard* clipboard);
		[LinkName("gtk_text_buffer_remove_tag")]
		public static extern void RemoveTag(TextBuffer* buffer, TextTag* tag, TextIter* start, TextIter* end);
		[LinkName("gtk_text_buffer_remove_tag_by_name")]
		public static extern void RemoveTagByName(TextBuffer* buffer, char8* name, TextIter* start, TextIter* end);
		[LinkName("gtk_text_buffer_select_range")]
		public static extern void SelectRange(TextBuffer* buffer, TextIter* ins, TextIter* bound);
		[LinkName("gtk_text_buffer_set_enable_undo")]
		public static extern void SetEnableUndo(TextBuffer* buffer, c_int enable_undo);
		[LinkName("gtk_text_buffer_set_max_undo_levels")]
		public static extern void SetMaxUndoLevels(TextBuffer* buffer, c_uint max_undo_levels);
		[LinkName("gtk_text_buffer_set_modified")]
		public static extern void SetModified(TextBuffer* buffer, c_int setting);
		[LinkName("gtk_text_buffer_set_text")]
		public static extern void SetText(TextBuffer* buffer, char8* text, c_int len);
		[LinkName("gtk_text_buffer_undo")]
		public static extern void Undo(TextBuffer* buffer);
		public function void ApplyTagFunc(TextBuffer* self, TextTag tag, TextIter start, TextIter end, void* user_data);
		public function void BeginUserActionFunc(TextBuffer* self, void* user_data);
		public function void ChangedFunc(TextBuffer* self, void* user_data);
		public function void DeleteRangeFunc(TextBuffer* self, TextIter start, TextIter end, void* user_data);
		public function void EndUserActionFunc(TextBuffer* self, void* user_data);
		public function void InsertChildAnchorFunc(TextBuffer* self, TextIter location, TextChildAnchor anchor, void* user_data);
		public function void InsertPaintableFunc(TextBuffer* self, TextIter location, Gdk.Paintable paintable, void* user_data);
		public function void InsertTextFunc(TextBuffer* self, TextIter location, char8* text, c_int len, void* user_data);
		public function void MarkDeletedFunc(TextBuffer* self, TextMark mark, void* user_data);
		public function void MarkSetFunc(TextBuffer* self, TextIter location, TextMark mark, void* user_data);
		public function void ModifiedChangedFunc(TextBuffer* self, void* user_data);
		public function void PasteDoneFunc(TextBuffer* self, Gdk.Clipboard clipboard, void* user_data);
		public function void RedoFunc(TextBuffer* self, void* user_data);
		public function void RemoveTagFunc(TextBuffer* self, TextTag tag, TextIter start, TextIter end, void* user_data);
		public function void UndoFunc(TextBuffer* self, void* user_data);
	}
	[CRepr]
	public struct TextChildAnchor : GObject.Object
	{
		[LinkName("gtk_text_child_anchor_new")]
		public static extern TextChildAnchor* New();
		[LinkName("gtk_text_child_anchor_new_with_replacement")]
		public static extern TextChildAnchor* NewWithReplacement(char8* character);
		[LinkName("gtk_text_child_anchor_get_deleted")]
		public static extern c_int GetDeleted(TextChildAnchor* anchor);
		[LinkName("gtk_text_child_anchor_get_widgets")]
		public static extern Widget** GetWidgets(TextChildAnchor* anchor, c_uint* out_len);
	}
	[CRepr]
	public struct TextMark : GObject.Object
	{
		[LinkName("gtk_text_mark_new")]
		public static extern TextMark* New(char8* name, c_int left_gravity);
		[LinkName("gtk_text_mark_get_buffer")]
		public static extern TextBuffer* GetBuffer(TextMark* mark);
		[LinkName("gtk_text_mark_get_deleted")]
		public static extern c_int GetDeleted(TextMark* mark);
		[LinkName("gtk_text_mark_get_left_gravity")]
		public static extern c_int GetLeftGravity(TextMark* mark);
		[LinkName("gtk_text_mark_get_name")]
		public static extern char8* GetName(TextMark* mark);
		[LinkName("gtk_text_mark_get_visible")]
		public static extern c_int GetVisible(TextMark* mark);
		[LinkName("gtk_text_mark_set_visible")]
		public static extern void SetVisible(TextMark* mark, c_int setting);
	}
	[CRepr]
	public struct TextTag : GObject.Object
	{
		[LinkName("gtk_text_tag_new")]
		public static extern TextTag* New(char8* name);
		[LinkName("gtk_text_tag_changed")]
		public static extern void Changed(TextTag* tag, c_int size_changed);
		[LinkName("gtk_text_tag_get_priority")]
		public static extern c_int GetPriority(TextTag* tag);
		[LinkName("gtk_text_tag_set_priority")]
		public static extern void SetPriority(TextTag* tag, c_int priority);
	}
	[CRepr]
	public struct TextTagTable : GObject.Object
	{
		[LinkName("gtk_text_tag_table_new")]
		public static extern TextTagTable* New();
		[LinkName("gtk_text_tag_table_add")]
		public static extern c_int Add(TextTagTable* table, TextTag* tag);
		[LinkName("gtk_text_tag_table_foreach")]
		public static extern void Foreach(TextTagTable* table, TextTagTableForeach func, void* data);
		[LinkName("gtk_text_tag_table_get_size")]
		public static extern c_int GetSize(TextTagTable* table);
		[LinkName("gtk_text_tag_table_lookup")]
		public static extern TextTag* Lookup(TextTagTable* table, char8* name);
		[LinkName("gtk_text_tag_table_remove")]
		public static extern void Remove(TextTagTable* table, TextTag* tag);
		public function void TagAddedFunc(TextTagTable* self, TextTag tag, void* user_data);
		public function void TagChangedFunc(TextTagTable* self, TextTag tag, c_int size_changed, void* user_data);
		public function void TagRemovedFunc(TextTagTable* self, TextTag tag, void* user_data);
	}
	[CRepr]
	public struct TextView : Widget
	{
		[LinkName("gtk_text_view_new")]
		public static extern Widget* New();
		[LinkName("gtk_text_view_new_with_buffer")]
		public static extern Widget* NewWithBuffer(TextBuffer* buffer);
		[LinkName("gtk_text_view_add_child_at_anchor")]
		public static extern void AddChildAtAnchor(TextView* text_view, Widget* child, TextChildAnchor* anchor);
		[LinkName("gtk_text_view_add_overlay")]
		public static extern void AddOverlay(TextView* text_view, Widget* child, c_int xpos, c_int ypos);
		[LinkName("gtk_text_view_backward_display_line")]
		public static extern c_int BackwardDisplayLine(TextView* text_view, TextIter* iter);
		[LinkName("gtk_text_view_backward_display_line_start")]
		public static extern c_int BackwardDisplayLineStart(TextView* text_view, TextIter* iter);
		[LinkName("gtk_text_view_buffer_to_window_coords")]
		public static extern void BufferToWindowCoords(TextView* text_view, TextWindowType win, c_int buffer_x, c_int buffer_y, c_int* window_x, c_int* window_y);
		[LinkName("gtk_text_view_forward_display_line")]
		public static extern c_int ForwardDisplayLine(TextView* text_view, TextIter* iter);
		[LinkName("gtk_text_view_forward_display_line_end")]
		public static extern c_int ForwardDisplayLineEnd(TextView* text_view, TextIter* iter);
		[LinkName("gtk_text_view_get_accepts_tab")]
		public static extern c_int GetAcceptsTab(TextView* text_view);
		[LinkName("gtk_text_view_get_bottom_margin")]
		public static extern c_int GetBottomMargin(TextView* text_view);
		[LinkName("gtk_text_view_get_buffer")]
		public static extern TextBuffer* GetBuffer(TextView* text_view);
		[LinkName("gtk_text_view_get_cursor_locations")]
		public static extern void GetCursorLocations(TextView* text_view, TextIter* iter, Gdk.Rectangle* strong, Gdk.Rectangle* weak);
		[LinkName("gtk_text_view_get_cursor_visible")]
		public static extern c_int GetCursorVisible(TextView* text_view);
		[LinkName("gtk_text_view_get_editable")]
		public static extern c_int GetEditable(TextView* text_view);
		[LinkName("gtk_text_view_get_extra_menu")]
		public static extern Gio.MenuModel* GetExtraMenu(TextView* text_view);
		[LinkName("gtk_text_view_get_gutter")]
		public static extern Widget* GetGutter(TextView* text_view, TextWindowType win);
		[LinkName("gtk_text_view_get_indent")]
		public static extern c_int GetIndent(TextView* text_view);
		[LinkName("gtk_text_view_get_input_hints")]
		public static extern InputHints GetInputHints(TextView* text_view);
		[LinkName("gtk_text_view_get_input_purpose")]
		public static extern InputPurpose GetInputPurpose(TextView* text_view);
		[LinkName("gtk_text_view_get_iter_at_location")]
		public static extern c_int GetIterAtLocation(TextView* text_view, TextIter* iter, c_int x, c_int y);
		[LinkName("gtk_text_view_get_iter_at_position")]
		public static extern c_int GetIterAtPosition(TextView* text_view, TextIter* iter, c_int* trailing, c_int x, c_int y);
		[LinkName("gtk_text_view_get_iter_location")]
		public static extern void GetIterLocation(TextView* text_view, TextIter* iter, Gdk.Rectangle* location);
		[LinkName("gtk_text_view_get_justification")]
		public static extern Justification GetJustification(TextView* text_view);
		[LinkName("gtk_text_view_get_left_margin")]
		public static extern c_int GetLeftMargin(TextView* text_view);
		[LinkName("gtk_text_view_get_line_at_y")]
		public static extern void GetLineAtY(TextView* text_view, TextIter* target_iter, c_int y, c_int* line_top);
		[LinkName("gtk_text_view_get_line_yrange")]
		public static extern void GetLineYrange(TextView* text_view, TextIter* iter, c_int* y, c_int* height);
		[LinkName("gtk_text_view_get_ltr_context")]
		public static extern Pango.Context* GetLtrContext(TextView* text_view);
		[LinkName("gtk_text_view_get_monospace")]
		public static extern c_int GetMonospace(TextView* text_view);
		[LinkName("gtk_text_view_get_overwrite")]
		public static extern c_int GetOverwrite(TextView* text_view);
		[LinkName("gtk_text_view_get_pixels_above_lines")]
		public static extern c_int GetPixelsAboveLines(TextView* text_view);
		[LinkName("gtk_text_view_get_pixels_below_lines")]
		public static extern c_int GetPixelsBelowLines(TextView* text_view);
		[LinkName("gtk_text_view_get_pixels_inside_wrap")]
		public static extern c_int GetPixelsInsideWrap(TextView* text_view);
		[LinkName("gtk_text_view_get_right_margin")]
		public static extern c_int GetRightMargin(TextView* text_view);
		[LinkName("gtk_text_view_get_rtl_context")]
		public static extern Pango.Context* GetRtlContext(TextView* text_view);
		[LinkName("gtk_text_view_get_tabs")]
		public static extern Pango.TabArray* GetTabs(TextView* text_view);
		[LinkName("gtk_text_view_get_top_margin")]
		public static extern c_int GetTopMargin(TextView* text_view);
		[LinkName("gtk_text_view_get_visible_rect")]
		public static extern void GetVisibleRect(TextView* text_view, Gdk.Rectangle* visible_rect);
		[LinkName("gtk_text_view_get_wrap_mode")]
		public static extern WrapMode GetWrapMode(TextView* text_view);
		[LinkName("gtk_text_view_im_context_filter_keypress")]
		public static extern c_int ImContextFilterKeypress(TextView* text_view, Gdk.Event* event);
		[LinkName("gtk_text_view_move_mark_onscreen")]
		public static extern c_int MoveMarkOnscreen(TextView* text_view, TextMark* mark);
		[LinkName("gtk_text_view_move_overlay")]
		public static extern void MoveOverlay(TextView* text_view, Widget* child, c_int xpos, c_int ypos);
		[LinkName("gtk_text_view_move_visually")]
		public static extern c_int MoveVisually(TextView* text_view, TextIter* iter, c_int count);
		[LinkName("gtk_text_view_place_cursor_onscreen")]
		public static extern c_int PlaceCursorOnscreen(TextView* text_view);
		[LinkName("gtk_text_view_remove")]
		public static extern void Remove(TextView* text_view, Widget* child);
		[LinkName("gtk_text_view_reset_cursor_blink")]
		public static extern void ResetCursorBlink(TextView* text_view);
		[LinkName("gtk_text_view_reset_im_context")]
		public static extern void ResetImContext(TextView* text_view);
		[LinkName("gtk_text_view_scroll_mark_onscreen")]
		public static extern void ScrollMarkOnscreen(TextView* text_view, TextMark* mark);
		[LinkName("gtk_text_view_scroll_to_iter")]
		public static extern c_int ScrollToIter(TextView* text_view, TextIter* iter, double within_margin, c_int use_align, double xalign, double yalign);
		[LinkName("gtk_text_view_scroll_to_mark")]
		public static extern void ScrollToMark(TextView* text_view, TextMark* mark, double within_margin, c_int use_align, double xalign, double yalign);
		[LinkName("gtk_text_view_set_accepts_tab")]
		public static extern void SetAcceptsTab(TextView* text_view, c_int accepts_tab);
		[LinkName("gtk_text_view_set_bottom_margin")]
		public static extern void SetBottomMargin(TextView* text_view, c_int bottom_margin);
		[LinkName("gtk_text_view_set_buffer")]
		public static extern void SetBuffer(TextView* text_view, TextBuffer* buffer);
		[LinkName("gtk_text_view_set_cursor_visible")]
		public static extern void SetCursorVisible(TextView* text_view, c_int setting);
		[LinkName("gtk_text_view_set_editable")]
		public static extern void SetEditable(TextView* text_view, c_int setting);
		[LinkName("gtk_text_view_set_extra_menu")]
		public static extern void SetExtraMenu(TextView* text_view, Gio.MenuModel* model);
		[LinkName("gtk_text_view_set_gutter")]
		public static extern void SetGutter(TextView* text_view, TextWindowType win, Widget* widget);
		[LinkName("gtk_text_view_set_indent")]
		public static extern void SetIndent(TextView* text_view, c_int indent);
		[LinkName("gtk_text_view_set_input_hints")]
		public static extern void SetInputHints(TextView* text_view, InputHints hints);
		[LinkName("gtk_text_view_set_input_purpose")]
		public static extern void SetInputPurpose(TextView* text_view, InputPurpose purpose);
		[LinkName("gtk_text_view_set_justification")]
		public static extern void SetJustification(TextView* text_view, Justification justification);
		[LinkName("gtk_text_view_set_left_margin")]
		public static extern void SetLeftMargin(TextView* text_view, c_int left_margin);
		[LinkName("gtk_text_view_set_monospace")]
		public static extern void SetMonospace(TextView* text_view, c_int monospace);
		[LinkName("gtk_text_view_set_overwrite")]
		public static extern void SetOverwrite(TextView* text_view, c_int overwrite);
		[LinkName("gtk_text_view_set_pixels_above_lines")]
		public static extern void SetPixelsAboveLines(TextView* text_view, c_int pixels_above_lines);
		[LinkName("gtk_text_view_set_pixels_below_lines")]
		public static extern void SetPixelsBelowLines(TextView* text_view, c_int pixels_below_lines);
		[LinkName("gtk_text_view_set_pixels_inside_wrap")]
		public static extern void SetPixelsInsideWrap(TextView* text_view, c_int pixels_inside_wrap);
		[LinkName("gtk_text_view_set_right_margin")]
		public static extern void SetRightMargin(TextView* text_view, c_int right_margin);
		[LinkName("gtk_text_view_set_tabs")]
		public static extern void SetTabs(TextView* text_view, Pango.TabArray* tabs);
		[LinkName("gtk_text_view_set_top_margin")]
		public static extern void SetTopMargin(TextView* text_view, c_int top_margin);
		[LinkName("gtk_text_view_set_wrap_mode")]
		public static extern void SetWrapMode(TextView* text_view, WrapMode wrap_mode);
		[LinkName("gtk_text_view_starts_display_line")]
		public static extern c_int StartsDisplayLine(TextView* text_view, TextIter* iter);
		[LinkName("gtk_text_view_window_to_buffer_coords")]
		public static extern void WindowToBufferCoords(TextView* text_view, TextWindowType win, c_int window_x, c_int window_y, c_int* buffer_x, c_int* buffer_y);
		public function void BackspaceFunc(TextView* self, void* user_data);
		public function void CopyClipboardFunc(TextView* self, void* user_data);
		public function void CutClipboardFunc(TextView* self, void* user_data);
		public function void DeleteFromCursorFunc(TextView* self, DeleteType type, c_int count, void* user_data);
		public function c_int ExtendSelectionFunc(TextView* self, TextExtendSelection granularity, TextIter location, TextIter start, TextIter end, void* user_data);
		public function void InsertAtCursorFunc(TextView* self, char8* string, void* user_data);
		public function void InsertEmojiFunc(TextView* self, void* user_data);
		public function void MoveCursorFunc(TextView* self, MovementStep step, c_int count, c_int extend_selection, void* user_data);
		public function void MoveViewportFunc(TextView* self, ScrollStep step, c_int count, void* user_data);
		public function void PasteClipboardFunc(TextView* self, void* user_data);
		public function void PreeditChangedFunc(TextView* self, char8* preedit, void* user_data);
		public function void SelectAllFunc(TextView* self, c_int select, void* user_data);
		public function void SetAnchorFunc(TextView* self, void* user_data);
		public function void ToggleCursorVisibleFunc(TextView* self, void* user_data);
		public function void ToggleOverwriteFunc(TextView* self, void* user_data);
	}
	[CRepr]
	public struct ToggleButton : Button
	{
		[LinkName("gtk_toggle_button_new")]
		public static extern Widget* New();
		[LinkName("gtk_toggle_button_new_with_label")]
		public static extern Widget* NewWithLabel(char8* label);
		[LinkName("gtk_toggle_button_new_with_mnemonic")]
		public static extern Widget* NewWithMnemonic(char8* label);
		[LinkName("gtk_toggle_button_get_active")]
		public static extern c_int GetActive(ToggleButton* toggle_button);
		[LinkName("gtk_toggle_button_set_active")]
		public static extern void SetActive(ToggleButton* toggle_button, c_int is_active);
		[LinkName("gtk_toggle_button_set_group")]
		public static extern void SetGroup(ToggleButton* toggle_button, ToggleButton* group);
		[LinkName("gtk_toggle_button_toggled")]
		public static extern void Toggled(ToggleButton* toggle_button);
		public function void ToggledFunc(ToggleButton* self, void* user_data);
	}
	[CRepr]
	public struct Tooltip : GObject.Object
	{
		[LinkName("gtk_tooltip_set_custom")]
		public static extern void SetCustom(Tooltip* tooltip, Widget* custom_widget);
		[LinkName("gtk_tooltip_set_icon")]
		public static extern void SetIcon(Tooltip* tooltip, Gdk.Paintable* paintable);
		[LinkName("gtk_tooltip_set_icon_from_gicon")]
		public static extern void SetIconFromGicon(Tooltip* tooltip, Gio.Icon* gicon);
		[LinkName("gtk_tooltip_set_icon_from_icon_name")]
		public static extern void SetIconFromIconName(Tooltip* tooltip, char8* icon_name);
		[LinkName("gtk_tooltip_set_markup")]
		public static extern void SetMarkup(Tooltip* tooltip, char8* markup);
		[LinkName("gtk_tooltip_set_text")]
		public static extern void SetText(Tooltip* tooltip, char8* text);
		[LinkName("gtk_tooltip_set_tip_area")]
		public static extern void SetTipArea(Tooltip* tooltip, Gdk.Rectangle* rect);
	}
	[CRepr]
	public struct TreeExpander : Widget
	{
		[LinkName("gtk_tree_expander_new")]
		public static extern Widget* New();
		[LinkName("gtk_tree_expander_get_child")]
		public static extern Widget* GetChild(TreeExpander* self);
		[LinkName("gtk_tree_expander_get_hide_expander")]
		public static extern c_int GetHideExpander(TreeExpander* self);
		[LinkName("gtk_tree_expander_get_indent_for_depth")]
		public static extern c_int GetIndentForDepth(TreeExpander* self);
		[LinkName("gtk_tree_expander_get_indent_for_icon")]
		public static extern c_int GetIndentForIcon(TreeExpander* self);
		[LinkName("gtk_tree_expander_get_item")]
		public static extern GObject.Object* GetItem(TreeExpander* self);
		[LinkName("gtk_tree_expander_get_list_row")]
		public static extern TreeListRow* GetListRow(TreeExpander* self);
		[LinkName("gtk_tree_expander_set_child")]
		public static extern void SetChild(TreeExpander* self, Widget* child);
		[LinkName("gtk_tree_expander_set_hide_expander")]
		public static extern void SetHideExpander(TreeExpander* self, c_int hide_expander);
		[LinkName("gtk_tree_expander_set_indent_for_depth")]
		public static extern void SetIndentForDepth(TreeExpander* self, c_int indent_for_depth);
		[LinkName("gtk_tree_expander_set_indent_for_icon")]
		public static extern void SetIndentForIcon(TreeExpander* self, c_int indent_for_icon);
		[LinkName("gtk_tree_expander_set_list_row")]
		public static extern void SetListRow(TreeExpander* self, TreeListRow* list_row);
	}
	[CRepr]
	public struct TreeListModel : GObject.Object
	{
		[LinkName("gtk_tree_list_model_new")]
		public static extern TreeListModel* New(Gio.ListModel* root, c_int passthrough, c_int autoexpand, TreeListModelCreateModelFunc create_func, void* user_data, GLib.DestroyNotify user_destroy);
		[LinkName("gtk_tree_list_model_get_autoexpand")]
		public static extern c_int GetAutoexpand(TreeListModel* self);
		[LinkName("gtk_tree_list_model_get_child_row")]
		public static extern TreeListRow* GetChildRow(TreeListModel* self, c_uint position);
		[LinkName("gtk_tree_list_model_get_model")]
		public static extern Gio.ListModel* GetModel(TreeListModel* self);
		[LinkName("gtk_tree_list_model_get_passthrough")]
		public static extern c_int GetPassthrough(TreeListModel* self);
		[LinkName("gtk_tree_list_model_get_row")]
		public static extern TreeListRow* GetRow(TreeListModel* self, c_uint position);
		[LinkName("gtk_tree_list_model_set_autoexpand")]
		public static extern void SetAutoexpand(TreeListModel* self, c_int autoexpand);
	}
	[CRepr]
	public struct TreeListRow : GObject.Object
	{
		[LinkName("gtk_tree_list_row_get_child_row")]
		public static extern TreeListRow* GetChildRow(TreeListRow* self, c_uint position);
		[LinkName("gtk_tree_list_row_get_children")]
		public static extern Gio.ListModel* GetChildren(TreeListRow* self);
		[LinkName("gtk_tree_list_row_get_depth")]
		public static extern c_uint GetDepth(TreeListRow* self);
		[LinkName("gtk_tree_list_row_get_expanded")]
		public static extern c_int GetExpanded(TreeListRow* self);
		[LinkName("gtk_tree_list_row_get_item")]
		public static extern GObject.Object* GetItem(TreeListRow* self);
		[LinkName("gtk_tree_list_row_get_parent")]
		public static extern TreeListRow* GetParent(TreeListRow* self);
		[LinkName("gtk_tree_list_row_get_position")]
		public static extern c_uint GetPosition(TreeListRow* self);
		[LinkName("gtk_tree_list_row_is_expandable")]
		public static extern c_int IsExpandable(TreeListRow* self);
		[LinkName("gtk_tree_list_row_set_expanded")]
		public static extern void SetExpanded(TreeListRow* self, c_int expanded);
	}
	[CRepr]
	public struct TreeListRowSorter : Sorter
	{
		[LinkName("gtk_tree_list_row_sorter_new")]
		public static extern TreeListRowSorter* New(Sorter* sorter);
		[LinkName("gtk_tree_list_row_sorter_get_sorter")]
		public static extern Sorter* GetSorter(TreeListRowSorter* self);
		[LinkName("gtk_tree_list_row_sorter_set_sorter")]
		public static extern void SetSorter(TreeListRowSorter* self, Sorter* sorter);
	}
	[CRepr]
	public struct TreeModelFilter : GObject.Object
	{
		[LinkName("gtk_tree_model_filter_clear_cache")]
		public static extern void ClearCache(TreeModelFilter* filter);
		[LinkName("gtk_tree_model_filter_convert_child_iter_to_iter")]
		public static extern c_int ConvertChildIterToIter(TreeModelFilter* filter, TreeIter* filter_iter, TreeIter* child_iter);
		[LinkName("gtk_tree_model_filter_convert_child_path_to_path")]
		public static extern TreePath* ConvertChildPathToPath(TreeModelFilter* filter, TreePath* child_path);
		[LinkName("gtk_tree_model_filter_convert_iter_to_child_iter")]
		public static extern void ConvertIterToChildIter(TreeModelFilter* filter, TreeIter* child_iter, TreeIter* filter_iter);
		[LinkName("gtk_tree_model_filter_convert_path_to_child_path")]
		public static extern TreePath* ConvertPathToChildPath(TreeModelFilter* filter, TreePath* filter_path);
		[LinkName("gtk_tree_model_filter_get_model")]
		public static extern TreeModel* GetModel(TreeModelFilter* filter);
		[LinkName("gtk_tree_model_filter_refilter")]
		public static extern void Refilter(TreeModelFilter* filter);
		[LinkName("gtk_tree_model_filter_set_modify_func")]
		public static extern void SetModifyFunc(TreeModelFilter* filter, c_int n_columns, GLib.Type* types, TreeModelFilterModifyFunc func, void* data, GLib.DestroyNotify destroy);
		[LinkName("gtk_tree_model_filter_set_visible_column")]
		public static extern void SetVisibleColumn(TreeModelFilter* filter, c_int column);
		[LinkName("gtk_tree_model_filter_set_visible_func")]
		public static extern void SetVisibleFunc(TreeModelFilter* filter, TreeModelFilterVisibleFunc func, void* data, GLib.DestroyNotify destroy);
	}
	[CRepr]
	public struct TreeModelSort : GObject.Object
	{
		[LinkName("gtk_tree_model_sort_new_with_model")]
		public static extern TreeModelSort* NewWithModel(TreeModel* child_model);
		[LinkName("gtk_tree_model_sort_clear_cache")]
		public static extern void ClearCache(TreeModelSort* tree_model_sort);
		[LinkName("gtk_tree_model_sort_convert_child_iter_to_iter")]
		public static extern c_int ConvertChildIterToIter(TreeModelSort* tree_model_sort, TreeIter* sort_iter, TreeIter* child_iter);
		[LinkName("gtk_tree_model_sort_convert_child_path_to_path")]
		public static extern TreePath* ConvertChildPathToPath(TreeModelSort* tree_model_sort, TreePath* child_path);
		[LinkName("gtk_tree_model_sort_convert_iter_to_child_iter")]
		public static extern void ConvertIterToChildIter(TreeModelSort* tree_model_sort, TreeIter* child_iter, TreeIter* sorted_iter);
		[LinkName("gtk_tree_model_sort_convert_path_to_child_path")]
		public static extern TreePath* ConvertPathToChildPath(TreeModelSort* tree_model_sort, TreePath* sorted_path);
		[LinkName("gtk_tree_model_sort_get_model")]
		public static extern TreeModel* GetModel(TreeModelSort* tree_model);
		[LinkName("gtk_tree_model_sort_iter_is_valid")]
		public static extern c_int IterIsValid(TreeModelSort* tree_model_sort, TreeIter* iter);
		[LinkName("gtk_tree_model_sort_reset_default_sort_func")]
		public static extern void ResetDefaultSortFunc(TreeModelSort* tree_model_sort);
	}
	[CRepr]
	public struct TreeSelection : GObject.Object
	{
		[LinkName("gtk_tree_selection_count_selected_rows")]
		public static extern c_int CountSelectedRows(TreeSelection* selection);
		[LinkName("gtk_tree_selection_get_mode")]
		public static extern SelectionMode GetMode(TreeSelection* selection);
		[LinkName("gtk_tree_selection_get_selected")]
		public static extern c_int GetSelected(TreeSelection* selection, TreeModel** model, TreeIter* iter);
		[LinkName("gtk_tree_selection_get_selected_rows")]
		public static extern GLib.List* GetSelectedRows(TreeSelection* selection, TreeModel** model);
		[LinkName("gtk_tree_selection_get_tree_view")]
		public static extern TreeView* GetTreeView(TreeSelection* selection);
		[LinkName("gtk_tree_selection_iter_is_selected")]
		public static extern c_int IterIsSelected(TreeSelection* selection, TreeIter* iter);
		[LinkName("gtk_tree_selection_path_is_selected")]
		public static extern c_int PathIsSelected(TreeSelection* selection, TreePath* path);
		[LinkName("gtk_tree_selection_select_all")]
		public static extern void SelectAll(TreeSelection* selection);
		[LinkName("gtk_tree_selection_select_iter")]
		public static extern void SelectIter(TreeSelection* selection, TreeIter* iter);
		[LinkName("gtk_tree_selection_select_path")]
		public static extern void SelectPath(TreeSelection* selection, TreePath* path);
		[LinkName("gtk_tree_selection_select_range")]
		public static extern void SelectRange(TreeSelection* selection, TreePath* start_path, TreePath* end_path);
		[LinkName("gtk_tree_selection_selected_foreach")]
		public static extern void SelectedForeach(TreeSelection* selection, TreeSelectionForeachFunc func, void* data);
		[LinkName("gtk_tree_selection_set_mode")]
		public static extern void SetMode(TreeSelection* selection, SelectionMode type);
		[LinkName("gtk_tree_selection_set_select_function")]
		public static extern void SetSelectFunction(TreeSelection* selection, TreeSelectionFunc func, void* data, GLib.DestroyNotify destroy);
		[LinkName("gtk_tree_selection_unselect_all")]
		public static extern void UnselectAll(TreeSelection* selection);
		[LinkName("gtk_tree_selection_unselect_iter")]
		public static extern void UnselectIter(TreeSelection* selection, TreeIter* iter);
		[LinkName("gtk_tree_selection_unselect_path")]
		public static extern void UnselectPath(TreeSelection* selection, TreePath* path);
		[LinkName("gtk_tree_selection_unselect_range")]
		public static extern void UnselectRange(TreeSelection* selection, TreePath* start_path, TreePath* end_path);
		public function void ChangedFunc(TreeSelection* self, void* user_data);
	}
	[CRepr]
	public struct TreeStore : GObject.Object
	{
		[LinkName("gtk_tree_store_newv")]
		public static extern TreeStore* Newv(c_int n_columns, GLib.Type* types);
		[LinkName("gtk_tree_store_append")]
		public static extern void Append(TreeStore* tree_store, TreeIter* iter, TreeIter* parent);
		[LinkName("gtk_tree_store_clear")]
		public static extern void Clear(TreeStore* tree_store);
		[LinkName("gtk_tree_store_insert")]
		public static extern void Insert(TreeStore* tree_store, TreeIter* iter, TreeIter* parent, c_int position);
		[LinkName("gtk_tree_store_insert_after")]
		public static extern void InsertAfter(TreeStore* tree_store, TreeIter* iter, TreeIter* parent, TreeIter* sibling);
		[LinkName("gtk_tree_store_insert_before")]
		public static extern void InsertBefore(TreeStore* tree_store, TreeIter* iter, TreeIter* parent, TreeIter* sibling);
		[LinkName("gtk_tree_store_insert_with_valuesv")]
		public static extern void InsertWithValuesv(TreeStore* tree_store, TreeIter* iter, TreeIter* parent, c_int position, c_int* columns, GObject.Value* values, c_int n_values);
		[LinkName("gtk_tree_store_is_ancestor")]
		public static extern c_int IsAncestor(TreeStore* tree_store, TreeIter* iter, TreeIter* descendant);
		[LinkName("gtk_tree_store_iter_depth")]
		public static extern c_int IterDepth(TreeStore* tree_store, TreeIter* iter);
		[LinkName("gtk_tree_store_iter_is_valid")]
		public static extern c_int IterIsValid(TreeStore* tree_store, TreeIter* iter);
		[LinkName("gtk_tree_store_move_after")]
		public static extern void MoveAfter(TreeStore* tree_store, TreeIter* iter, TreeIter* position);
		[LinkName("gtk_tree_store_move_before")]
		public static extern void MoveBefore(TreeStore* tree_store, TreeIter* iter, TreeIter* position);
		[LinkName("gtk_tree_store_prepend")]
		public static extern void Prepend(TreeStore* tree_store, TreeIter* iter, TreeIter* parent);
		[LinkName("gtk_tree_store_remove")]
		public static extern c_int Remove(TreeStore* tree_store, TreeIter* iter);
		[LinkName("gtk_tree_store_set_column_types")]
		public static extern void SetColumnTypes(TreeStore* tree_store, c_int n_columns, GLib.Type* types);
		[LinkName("gtk_tree_store_set_value")]
		public static extern void SetValue(TreeStore* tree_store, TreeIter* iter, c_int column, GObject.Value* value);
		[LinkName("gtk_tree_store_set_valuesv")]
		public static extern void SetValuesv(TreeStore* tree_store, TreeIter* iter, c_int* columns, GObject.Value* values, c_int n_values);
		[LinkName("gtk_tree_store_swap")]
		public static extern void Swap(TreeStore* tree_store, TreeIter* a, TreeIter* b);
	}
	[CRepr]
	public struct TreeView : Widget
	{
		[LinkName("gtk_tree_view_new")]
		public static extern Widget* New();
		[LinkName("gtk_tree_view_new_with_model")]
		public static extern Widget* NewWithModel(TreeModel* model);
		[LinkName("gtk_tree_view_append_column")]
		public static extern c_int AppendColumn(TreeView* tree_view, TreeViewColumn* column);
		[LinkName("gtk_tree_view_collapse_all")]
		public static extern void CollapseAll(TreeView* tree_view);
		[LinkName("gtk_tree_view_collapse_row")]
		public static extern c_int CollapseRow(TreeView* tree_view, TreePath* path);
		[LinkName("gtk_tree_view_columns_autosize")]
		public static extern void ColumnsAutosize(TreeView* tree_view);
		[LinkName("gtk_tree_view_convert_bin_window_to_tree_coords")]
		public static extern void ConvertBinWindowToTreeCoords(TreeView* tree_view, c_int bx, c_int by, c_int* tx, c_int* ty);
		[LinkName("gtk_tree_view_convert_bin_window_to_widget_coords")]
		public static extern void ConvertBinWindowToWidgetCoords(TreeView* tree_view, c_int bx, c_int by, c_int* wx, c_int* wy);
		[LinkName("gtk_tree_view_convert_tree_to_bin_window_coords")]
		public static extern void ConvertTreeToBinWindowCoords(TreeView* tree_view, c_int tx, c_int ty, c_int* bx, c_int* by);
		[LinkName("gtk_tree_view_convert_tree_to_widget_coords")]
		public static extern void ConvertTreeToWidgetCoords(TreeView* tree_view, c_int tx, c_int ty, c_int* wx, c_int* wy);
		[LinkName("gtk_tree_view_convert_widget_to_bin_window_coords")]
		public static extern void ConvertWidgetToBinWindowCoords(TreeView* tree_view, c_int wx, c_int wy, c_int* bx, c_int* by);
		[LinkName("gtk_tree_view_convert_widget_to_tree_coords")]
		public static extern void ConvertWidgetToTreeCoords(TreeView* tree_view, c_int wx, c_int wy, c_int* tx, c_int* ty);
		[LinkName("gtk_tree_view_create_row_drag_icon")]
		public static extern Gdk.Paintable* CreateRowDragIcon(TreeView* tree_view, TreePath* path);
		[LinkName("gtk_tree_view_enable_model_drag_dest")]
		public static extern void EnableModelDragDest(TreeView* tree_view, Gdk.ContentFormats* formats, Gdk.DragAction actions);
		[LinkName("gtk_tree_view_enable_model_drag_source")]
		public static extern void EnableModelDragSource(TreeView* tree_view, Gdk.ModifierType start_button_mask, Gdk.ContentFormats* formats, Gdk.DragAction actions);
		[LinkName("gtk_tree_view_expand_all")]
		public static extern void ExpandAll(TreeView* tree_view);
		[LinkName("gtk_tree_view_expand_row")]
		public static extern c_int ExpandRow(TreeView* tree_view, TreePath* path, c_int open_all);
		[LinkName("gtk_tree_view_expand_to_path")]
		public static extern void ExpandToPath(TreeView* tree_view, TreePath* path);
		[LinkName("gtk_tree_view_get_activate_on_single_click")]
		public static extern c_int GetActivateOnSingleClick(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_background_area")]
		public static extern void GetBackgroundArea(TreeView* tree_view, TreePath* path, TreeViewColumn* column, Gdk.Rectangle* rect);
		[LinkName("gtk_tree_view_get_cell_area")]
		public static extern void GetCellArea(TreeView* tree_view, TreePath* path, TreeViewColumn* column, Gdk.Rectangle* rect);
		[LinkName("gtk_tree_view_get_column")]
		public static extern TreeViewColumn* GetColumn(TreeView* tree_view, c_int n);
		[LinkName("gtk_tree_view_get_columns")]
		public static extern GLib.List* GetColumns(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_cursor")]
		public static extern void GetCursor(TreeView* tree_view, TreePath** path, TreeViewColumn** focus_column);
		[LinkName("gtk_tree_view_get_dest_row_at_pos")]
		public static extern c_int GetDestRowAtPos(TreeView* tree_view, c_int drag_x, c_int drag_y, TreePath** path, TreeViewDropPosition* pos);
		[LinkName("gtk_tree_view_get_drag_dest_row")]
		public static extern void GetDragDestRow(TreeView* tree_view, TreePath** path, TreeViewDropPosition* pos);
		[LinkName("gtk_tree_view_get_enable_search")]
		public static extern c_int GetEnableSearch(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_enable_tree_lines")]
		public static extern c_int GetEnableTreeLines(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_expander_column")]
		public static extern TreeViewColumn* GetExpanderColumn(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_fixed_height_mode")]
		public static extern c_int GetFixedHeightMode(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_grid_lines")]
		public static extern TreeViewGridLines GetGridLines(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_headers_clickable")]
		public static extern c_int GetHeadersClickable(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_headers_visible")]
		public static extern c_int GetHeadersVisible(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_hover_expand")]
		public static extern c_int GetHoverExpand(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_hover_selection")]
		public static extern c_int GetHoverSelection(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_level_indentation")]
		public static extern c_int GetLevelIndentation(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_model")]
		public static extern TreeModel* GetModel(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_n_columns")]
		public static extern c_uint GetNColumns(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_path_at_pos")]
		public static extern c_int GetPathAtPos(TreeView* tree_view, c_int x, c_int y, TreePath** path, TreeViewColumn** column, c_int* cell_x, c_int* cell_y);
		[LinkName("gtk_tree_view_get_reorderable")]
		public static extern c_int GetReorderable(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_rubber_banding")]
		public static extern c_int GetRubberBanding(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_search_column")]
		public static extern c_int GetSearchColumn(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_search_entry")]
		public static extern Editable* GetSearchEntry(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_selection")]
		public static extern TreeSelection* GetSelection(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_show_expanders")]
		public static extern c_int GetShowExpanders(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_tooltip_column")]
		public static extern c_int GetTooltipColumn(TreeView* tree_view);
		[LinkName("gtk_tree_view_get_tooltip_context")]
		public static extern c_int GetTooltipContext(TreeView* tree_view, c_int x, c_int y, c_int keyboard_tip, TreeModel** model, TreePath** path, TreeIter* iter);
		[LinkName("gtk_tree_view_get_visible_range")]
		public static extern c_int GetVisibleRange(TreeView* tree_view, TreePath** start_path, TreePath** end_path);
		[LinkName("gtk_tree_view_get_visible_rect")]
		public static extern void GetVisibleRect(TreeView* tree_view, Gdk.Rectangle* visible_rect);
		[LinkName("gtk_tree_view_insert_column")]
		public static extern c_int InsertColumn(TreeView* tree_view, TreeViewColumn* column, c_int position);
		[LinkName("gtk_tree_view_insert_column_with_data_func")]
		public static extern c_int InsertColumnWithDataFunc(TreeView* tree_view, c_int position, char8* title, CellRenderer* cell, TreeCellDataFunc func, void* data, GLib.DestroyNotify dnotify);
		[LinkName("gtk_tree_view_is_blank_at_pos")]
		public static extern c_int IsBlankAtPos(TreeView* tree_view, c_int x, c_int y, TreePath** path, TreeViewColumn** column, c_int* cell_x, c_int* cell_y);
		[LinkName("gtk_tree_view_is_rubber_banding_active")]
		public static extern c_int IsRubberBandingActive(TreeView* tree_view);
		[LinkName("gtk_tree_view_map_expanded_rows")]
		public static extern void MapExpandedRows(TreeView* tree_view, TreeViewMappingFunc func, void* data);
		[LinkName("gtk_tree_view_move_column_after")]
		public static extern void MoveColumnAfter(TreeView* tree_view, TreeViewColumn* column, TreeViewColumn* base_column);
		[LinkName("gtk_tree_view_remove_column")]
		public static extern c_int RemoveColumn(TreeView* tree_view, TreeViewColumn* column);
		[LinkName("gtk_tree_view_row_activated")]
		public static extern void RowActivated(TreeView* tree_view, TreePath* path, TreeViewColumn* column);
		[LinkName("gtk_tree_view_row_expanded")]
		public static extern c_int RowExpanded(TreeView* tree_view, TreePath* path);
		[LinkName("gtk_tree_view_scroll_to_cell")]
		public static extern void ScrollToCell(TreeView* tree_view, TreePath* path, TreeViewColumn* column, c_int use_align, float row_align, float col_align);
		[LinkName("gtk_tree_view_scroll_to_point")]
		public static extern void ScrollToPoint(TreeView* tree_view, c_int tree_x, c_int tree_y);
		[LinkName("gtk_tree_view_set_activate_on_single_click")]
		public static extern void SetActivateOnSingleClick(TreeView* tree_view, c_int single);
		[LinkName("gtk_tree_view_set_column_drag_function")]
		public static extern void SetColumnDragFunction(TreeView* tree_view, TreeViewColumnDropFunc func, void* user_data, GLib.DestroyNotify destroy);
		[LinkName("gtk_tree_view_set_cursor")]
		public static extern void SetCursor(TreeView* tree_view, TreePath* path, TreeViewColumn* focus_column, c_int start_editing);
		[LinkName("gtk_tree_view_set_cursor_on_cell")]
		public static extern void SetCursorOnCell(TreeView* tree_view, TreePath* path, TreeViewColumn* focus_column, CellRenderer* focus_cell, c_int start_editing);
		[LinkName("gtk_tree_view_set_drag_dest_row")]
		public static extern void SetDragDestRow(TreeView* tree_view, TreePath* path, TreeViewDropPosition pos);
		[LinkName("gtk_tree_view_set_enable_search")]
		public static extern void SetEnableSearch(TreeView* tree_view, c_int enable_search);
		[LinkName("gtk_tree_view_set_enable_tree_lines")]
		public static extern void SetEnableTreeLines(TreeView* tree_view, c_int enabled);
		[LinkName("gtk_tree_view_set_expander_column")]
		public static extern void SetExpanderColumn(TreeView* tree_view, TreeViewColumn* column);
		[LinkName("gtk_tree_view_set_fixed_height_mode")]
		public static extern void SetFixedHeightMode(TreeView* tree_view, c_int enable);
		[LinkName("gtk_tree_view_set_grid_lines")]
		public static extern void SetGridLines(TreeView* tree_view, TreeViewGridLines grid_lines);
		[LinkName("gtk_tree_view_set_headers_clickable")]
		public static extern void SetHeadersClickable(TreeView* tree_view, c_int setting);
		[LinkName("gtk_tree_view_set_headers_visible")]
		public static extern void SetHeadersVisible(TreeView* tree_view, c_int headers_visible);
		[LinkName("gtk_tree_view_set_hover_expand")]
		public static extern void SetHoverExpand(TreeView* tree_view, c_int expand);
		[LinkName("gtk_tree_view_set_hover_selection")]
		public static extern void SetHoverSelection(TreeView* tree_view, c_int hover);
		[LinkName("gtk_tree_view_set_level_indentation")]
		public static extern void SetLevelIndentation(TreeView* tree_view, c_int indentation);
		[LinkName("gtk_tree_view_set_model")]
		public static extern void SetModel(TreeView* tree_view, TreeModel* model);
		[LinkName("gtk_tree_view_set_reorderable")]
		public static extern void SetReorderable(TreeView* tree_view, c_int reorderable);
		[LinkName("gtk_tree_view_set_row_separator_func")]
		public static extern void SetRowSeparatorFunc(TreeView* tree_view, TreeViewRowSeparatorFunc func, void* data, GLib.DestroyNotify destroy);
		[LinkName("gtk_tree_view_set_rubber_banding")]
		public static extern void SetRubberBanding(TreeView* tree_view, c_int enable);
		[LinkName("gtk_tree_view_set_search_column")]
		public static extern void SetSearchColumn(TreeView* tree_view, c_int column);
		[LinkName("gtk_tree_view_set_search_entry")]
		public static extern void SetSearchEntry(TreeView* tree_view, Editable* entry);
		[LinkName("gtk_tree_view_set_search_equal_func")]
		public static extern void SetSearchEqualFunc(TreeView* tree_view, TreeViewSearchEqualFunc search_equal_func, void* search_user_data, GLib.DestroyNotify search_destroy);
		[LinkName("gtk_tree_view_set_show_expanders")]
		public static extern void SetShowExpanders(TreeView* tree_view, c_int enabled);
		[LinkName("gtk_tree_view_set_tooltip_cell")]
		public static extern void SetTooltipCell(TreeView* tree_view, Tooltip* tooltip, TreePath* path, TreeViewColumn* column, CellRenderer* cell);
		[LinkName("gtk_tree_view_set_tooltip_column")]
		public static extern void SetTooltipColumn(TreeView* tree_view, c_int column);
		[LinkName("gtk_tree_view_set_tooltip_row")]
		public static extern void SetTooltipRow(TreeView* tree_view, Tooltip* tooltip, TreePath* path);
		[LinkName("gtk_tree_view_unset_rows_drag_dest")]
		public static extern void UnsetRowsDragDest(TreeView* tree_view);
		[LinkName("gtk_tree_view_unset_rows_drag_source")]
		public static extern void UnsetRowsDragSource(TreeView* tree_view);
		public function void ColumnsChangedFunc(TreeView* self, void* user_data);
		public function void CursorChangedFunc(TreeView* self, void* user_data);
		public function c_int ExpandCollapseCursorRowFunc(TreeView* self, c_int object, c_int p0, c_int p1, void* user_data);
		public function c_int MoveCursorFunc(TreeView* self, MovementStep step, c_int direction, c_int extend, c_int modify, void* user_data);
		public function void RowActivatedFunc(TreeView* self, TreePath path, TreeViewColumn column, void* user_data);
		public function void RowCollapsedFunc(TreeView* self, TreeIter iter, TreePath path, void* user_data);
		public function void RowExpandedFunc(TreeView* self, TreeIter iter, TreePath path, void* user_data);
		public function c_int SelectAllFunc(TreeView* self, void* user_data);
		public function c_int SelectCursorParentFunc(TreeView* self, void* user_data);
		public function c_int SelectCursorRowFunc(TreeView* self, c_int object, void* user_data);
		public function c_int StartInteractiveSearchFunc(TreeView* self, void* user_data);
		public function c_int TestCollapseRowFunc(TreeView* self, TreeIter iter, TreePath path, void* user_data);
		public function c_int TestExpandRowFunc(TreeView* self, TreeIter iter, TreePath path, void* user_data);
		public function c_int ToggleCursorRowFunc(TreeView* self, void* user_data);
		public function c_int UnselectAllFunc(TreeView* self, void* user_data);
	}
	[CRepr]
	public struct TreeViewColumn : GObject.InitiallyUnowned
	{
		[LinkName("gtk_tree_view_column_new")]
		public static extern TreeViewColumn* New();
		[LinkName("gtk_tree_view_column_new_with_area")]
		public static extern TreeViewColumn* NewWithArea(CellArea* area);
		[LinkName("gtk_tree_view_column_add_attribute")]
		public static extern void AddAttribute(TreeViewColumn* tree_column, CellRenderer* cell_renderer, char8* attribute, c_int column);
		[LinkName("gtk_tree_view_column_cell_get_position")]
		public static extern c_int CellGetPosition(TreeViewColumn* tree_column, CellRenderer* cell_renderer, c_int* x_offset, c_int* width);
		[LinkName("gtk_tree_view_column_cell_get_size")]
		public static extern void CellGetSize(TreeViewColumn* tree_column, c_int* x_offset, c_int* y_offset, c_int* width, c_int* height);
		[LinkName("gtk_tree_view_column_cell_is_visible")]
		public static extern c_int CellIsVisible(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_cell_set_cell_data")]
		public static extern void CellSetCellData(TreeViewColumn* tree_column, TreeModel* tree_model, TreeIter* iter, c_int is_expander, c_int is_expanded);
		[LinkName("gtk_tree_view_column_clear")]
		public static extern void Clear(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_clear_attributes")]
		public static extern void ClearAttributes(TreeViewColumn* tree_column, CellRenderer* cell_renderer);
		[LinkName("gtk_tree_view_column_clicked")]
		public static extern void Clicked(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_focus_cell")]
		public static extern void FocusCell(TreeViewColumn* tree_column, CellRenderer* cell);
		[LinkName("gtk_tree_view_column_get_alignment")]
		public static extern float GetAlignment(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_button")]
		public static extern Widget* GetButton(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_clickable")]
		public static extern c_int GetClickable(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_expand")]
		public static extern c_int GetExpand(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_fixed_width")]
		public static extern c_int GetFixedWidth(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_max_width")]
		public static extern c_int GetMaxWidth(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_min_width")]
		public static extern c_int GetMinWidth(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_reorderable")]
		public static extern c_int GetReorderable(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_resizable")]
		public static extern c_int GetResizable(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_sizing")]
		public static extern TreeViewColumnSizing GetSizing(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_sort_column_id")]
		public static extern c_int GetSortColumnId(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_sort_indicator")]
		public static extern c_int GetSortIndicator(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_sort_order")]
		public static extern SortType GetSortOrder(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_spacing")]
		public static extern c_int GetSpacing(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_title")]
		public static extern char8* GetTitle(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_tree_view")]
		public static extern Widget* GetTreeView(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_visible")]
		public static extern c_int GetVisible(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_widget")]
		public static extern Widget* GetWidget(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_width")]
		public static extern c_int GetWidth(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_get_x_offset")]
		public static extern c_int GetXOffset(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_pack_end")]
		public static extern void PackEnd(TreeViewColumn* tree_column, CellRenderer* cell, c_int expand);
		[LinkName("gtk_tree_view_column_pack_start")]
		public static extern void PackStart(TreeViewColumn* tree_column, CellRenderer* cell, c_int expand);
		[LinkName("gtk_tree_view_column_queue_resize")]
		public static extern void QueueResize(TreeViewColumn* tree_column);
		[LinkName("gtk_tree_view_column_set_alignment")]
		public static extern void SetAlignment(TreeViewColumn* tree_column, float xalign);
		[LinkName("gtk_tree_view_column_set_cell_data_func")]
		public static extern void SetCellDataFunc(TreeViewColumn* tree_column, CellRenderer* cell_renderer, TreeCellDataFunc func, void* func_data, GLib.DestroyNotify destroy);
		[LinkName("gtk_tree_view_column_set_clickable")]
		public static extern void SetClickable(TreeViewColumn* tree_column, c_int clickable);
		[LinkName("gtk_tree_view_column_set_expand")]
		public static extern void SetExpand(TreeViewColumn* tree_column, c_int expand);
		[LinkName("gtk_tree_view_column_set_fixed_width")]
		public static extern void SetFixedWidth(TreeViewColumn* tree_column, c_int fixed_width);
		[LinkName("gtk_tree_view_column_set_max_width")]
		public static extern void SetMaxWidth(TreeViewColumn* tree_column, c_int max_width);
		[LinkName("gtk_tree_view_column_set_min_width")]
		public static extern void SetMinWidth(TreeViewColumn* tree_column, c_int min_width);
		[LinkName("gtk_tree_view_column_set_reorderable")]
		public static extern void SetReorderable(TreeViewColumn* tree_column, c_int reorderable);
		[LinkName("gtk_tree_view_column_set_resizable")]
		public static extern void SetResizable(TreeViewColumn* tree_column, c_int resizable);
		[LinkName("gtk_tree_view_column_set_sizing")]
		public static extern void SetSizing(TreeViewColumn* tree_column, TreeViewColumnSizing type);
		[LinkName("gtk_tree_view_column_set_sort_column_id")]
		public static extern void SetSortColumnId(TreeViewColumn* tree_column, c_int sort_column_id);
		[LinkName("gtk_tree_view_column_set_sort_indicator")]
		public static extern void SetSortIndicator(TreeViewColumn* tree_column, c_int setting);
		[LinkName("gtk_tree_view_column_set_sort_order")]
		public static extern void SetSortOrder(TreeViewColumn* tree_column, SortType order);
		[LinkName("gtk_tree_view_column_set_spacing")]
		public static extern void SetSpacing(TreeViewColumn* tree_column, c_int spacing);
		[LinkName("gtk_tree_view_column_set_title")]
		public static extern void SetTitle(TreeViewColumn* tree_column, char8* title);
		[LinkName("gtk_tree_view_column_set_visible")]
		public static extern void SetVisible(TreeViewColumn* tree_column, c_int visible);
		[LinkName("gtk_tree_view_column_set_widget")]
		public static extern void SetWidget(TreeViewColumn* tree_column, Widget* widget);
		public function void ClickedFunc(TreeViewColumn* self, void* user_data);
	}
	[CRepr]
	public struct UriLauncher : GObject.Object
	{
		[LinkName("gtk_uri_launcher_new")]
		public static extern UriLauncher* New(char8* uri);
		[LinkName("gtk_uri_launcher_get_uri")]
		public static extern char8* GetUri(UriLauncher* self);
		[LinkName("gtk_uri_launcher_launch")]
		public static extern void Launch(UriLauncher* self, Window* parent, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_uri_launcher_launch_finish")]
		public static extern c_int LaunchFinish(UriLauncher* self, Gio.AsyncResult* result);
		[LinkName("gtk_uri_launcher_set_uri")]
		public static extern void SetUri(UriLauncher* self, char8* uri);
	}
	[CRepr]
	public struct Video : Widget
	{
		[LinkName("gtk_video_new")]
		public static extern Widget* New();
		[LinkName("gtk_video_new_for_file")]
		public static extern Widget* NewForFile(Gio.File* file);
		[LinkName("gtk_video_new_for_filename")]
		public static extern Widget* NewForFilename(char8* filename);
		[LinkName("gtk_video_new_for_media_stream")]
		public static extern Widget* NewForMediaStream(MediaStream* stream);
		[LinkName("gtk_video_new_for_resource")]
		public static extern Widget* NewForResource(char8* resource_path);
		[LinkName("gtk_video_get_autoplay")]
		public static extern c_int GetAutoplay(Video* self);
		[LinkName("gtk_video_get_file")]
		public static extern Gio.File* GetFile(Video* self);
		[LinkName("gtk_video_get_loop")]
		public static extern c_int GetLoop(Video* self);
		[LinkName("gtk_video_get_media_stream")]
		public static extern MediaStream* GetMediaStream(Video* self);
		[LinkName("gtk_video_set_autoplay")]
		public static extern void SetAutoplay(Video* self, c_int autoplay);
		[LinkName("gtk_video_set_file")]
		public static extern void SetFile(Video* self, Gio.File* file);
		[LinkName("gtk_video_set_filename")]
		public static extern void SetFilename(Video* self, char8* filename);
		[LinkName("gtk_video_set_loop")]
		public static extern void SetLoop(Video* self, c_int loop);
		[LinkName("gtk_video_set_media_stream")]
		public static extern void SetMediaStream(Video* self, MediaStream* stream);
		[LinkName("gtk_video_set_resource")]
		public static extern void SetResource(Video* self, char8* resource_path);
	}
	[CRepr]
	public struct Viewport : Widget
	{
		[LinkName("gtk_viewport_new")]
		public static extern Widget* New(Adjustment* hadjustment, Adjustment* vadjustment);
		[LinkName("gtk_viewport_get_child")]
		public static extern Widget* GetChild(Viewport* viewport);
		[LinkName("gtk_viewport_get_scroll_to_focus")]
		public static extern c_int GetScrollToFocus(Viewport* viewport);
		[LinkName("gtk_viewport_set_child")]
		public static extern void SetChild(Viewport* viewport, Widget* child);
		[LinkName("gtk_viewport_set_scroll_to_focus")]
		public static extern void SetScrollToFocus(Viewport* viewport, c_int scroll_to_focus);
	}
	[CRepr]
	public struct VolumeButton : ScaleButton
	{
		[LinkName("gtk_volume_button_new")]
		public static extern Widget* New();
	}
	[CRepr]
	public struct Widget : GObject.InitiallyUnowned
	{
		[LinkName("gtk_widget_action_set_enabled")]
		public static extern void ActionSetEnabled(Widget* widget, char8* action_name, c_int enabled);
		[LinkName("gtk_widget_activate")]
		public static extern c_int Activate(Widget* widget);
		[LinkName("gtk_widget_activate_action_variant")]
		public static extern c_int ActivateActionVariant(Widget* widget, char8* name, GLib.Variant* args);
		[LinkName("gtk_widget_activate_default")]
		public static extern void ActivateDefault(Widget* widget);
		[LinkName("gtk_widget_add_controller")]
		public static extern void AddController(Widget* widget, EventController* controller);
		[LinkName("gtk_widget_add_css_class")]
		public static extern void AddCssClass(Widget* widget, char8* css_class);
		[LinkName("gtk_widget_add_mnemonic_label")]
		public static extern void AddMnemonicLabel(Widget* widget, Widget* label);
		[LinkName("gtk_widget_add_tick_callback")]
		public static extern c_uint AddTickCallback(Widget* widget, TickCallback callback, void* user_data, GLib.DestroyNotify notify);
		[LinkName("gtk_widget_allocate")]
		public static extern void Allocate(Widget* widget, c_int width, c_int height, c_int baseline, Gsk.Transform* transform);
		[LinkName("gtk_widget_child_focus")]
		public static extern c_int ChildFocus(Widget* widget, DirectionType direction);
		[LinkName("gtk_widget_compute_bounds")]
		public static extern c_int ComputeBounds(Widget* widget, Widget* target, Graphene.Rect* out_bounds);
		[LinkName("gtk_widget_compute_expand")]
		public static extern c_int ComputeExpand(Widget* widget, Orientation orientation);
		[LinkName("gtk_widget_compute_point")]
		public static extern c_int ComputePoint(Widget* widget, Widget* target, Graphene.Point* point, Graphene.Point* out_point);
		[LinkName("gtk_widget_compute_transform")]
		public static extern c_int ComputeTransform(Widget* widget, Widget* target, Graphene.Matrix* out_transform);
		[LinkName("gtk_widget_contains")]
		public static extern c_int Contains(Widget* widget, double x, double y);
		[LinkName("gtk_widget_create_pango_context")]
		public static extern Pango.Context* CreatePangoContext(Widget* widget);
		[LinkName("gtk_widget_create_pango_layout")]
		public static extern Pango.Layout* CreatePangoLayout(Widget* widget, char8* text);
		[LinkName("gtk_widget_dispose_template")]
		public static extern void DisposeTemplate(Widget* widget, GLib.Type widget_type);
		[LinkName("gtk_drag_check_threshold")]
		public static extern c_int DragCheckThreshold(Widget* widget, c_int start_x, c_int start_y, c_int current_x, c_int current_y);
		[LinkName("gtk_widget_error_bell")]
		public static extern void ErrorBell(Widget* widget);
		[LinkName("gtk_widget_get_allocated_baseline")]
		public static extern c_int GetAllocatedBaseline(Widget* widget);
		[LinkName("gtk_widget_get_allocated_height")]
		public static extern c_int GetAllocatedHeight(Widget* widget);
		[LinkName("gtk_widget_get_allocated_width")]
		public static extern c_int GetAllocatedWidth(Widget* widget);
		[LinkName("gtk_widget_get_allocation")]
		public static extern void GetAllocation(Widget* widget, Allocation* allocation);
		[LinkName("gtk_widget_get_ancestor")]
		public static extern Widget* GetAncestor(Widget* widget, GLib.Type widget_type);
		[LinkName("gtk_widget_get_baseline")]
		public static extern c_int GetBaseline(Widget* widget);
		[LinkName("gtk_widget_get_can_focus")]
		public static extern c_int GetCanFocus(Widget* widget);
		[LinkName("gtk_widget_get_can_target")]
		public static extern c_int GetCanTarget(Widget* widget);
		[LinkName("gtk_widget_get_child_visible")]
		public static extern c_int GetChildVisible(Widget* widget);
		[LinkName("gtk_widget_get_clipboard")]
		public static extern Gdk.Clipboard* GetClipboard(Widget* widget);
		[LinkName("gtk_widget_get_color")]
		public static extern void GetColor(Widget* widget, Gdk.RGBA* color);
		[LinkName("gtk_widget_get_css_classes")]
		public static extern char8** GetCssClasses(Widget* widget);
		[LinkName("gtk_widget_get_css_name")]
		public static extern char8* GetCssName(Widget* self);
		[LinkName("gtk_widget_get_cursor")]
		public static extern Gdk.Cursor* GetCursor(Widget* widget);
		[LinkName("gtk_widget_get_direction")]
		public static extern TextDirection GetDirection(Widget* widget);
		[LinkName("gtk_widget_get_display")]
		public static extern Gdk.Display* GetDisplay(Widget* widget);
		[LinkName("gtk_widget_get_first_child")]
		public static extern Widget* GetFirstChild(Widget* widget);
		[LinkName("gtk_widget_get_focus_child")]
		public static extern Widget* GetFocusChild(Widget* widget);
		[LinkName("gtk_widget_get_focus_on_click")]
		public static extern c_int GetFocusOnClick(Widget* widget);
		[LinkName("gtk_widget_get_focusable")]
		public static extern c_int GetFocusable(Widget* widget);
		[LinkName("gtk_widget_get_font_map")]
		public static extern Pango.FontMap* GetFontMap(Widget* widget);
		[LinkName("gtk_widget_get_font_options")]
		public static extern cairo.FontOptions* GetFontOptions(Widget* widget);
		[LinkName("gtk_widget_get_frame_clock")]
		public static extern Gdk.FrameClock* GetFrameClock(Widget* widget);
		[LinkName("gtk_widget_get_halign")]
		public static extern Align GetHalign(Widget* widget);
		[LinkName("gtk_widget_get_has_tooltip")]
		public static extern c_int GetHasTooltip(Widget* widget);
		[LinkName("gtk_widget_get_height")]
		public static extern c_int GetHeight(Widget* widget);
		[LinkName("gtk_widget_get_hexpand")]
		public static extern c_int GetHexpand(Widget* widget);
		[LinkName("gtk_widget_get_hexpand_set")]
		public static extern c_int GetHexpandSet(Widget* widget);
		[LinkName("gtk_widget_get_last_child")]
		public static extern Widget* GetLastChild(Widget* widget);
		[LinkName("gtk_widget_get_layout_manager")]
		public static extern LayoutManager* GetLayoutManager(Widget* widget);
		[LinkName("gtk_widget_get_mapped")]
		public static extern c_int GetMapped(Widget* widget);
		[LinkName("gtk_widget_get_margin_bottom")]
		public static extern c_int GetMarginBottom(Widget* widget);
		[LinkName("gtk_widget_get_margin_end")]
		public static extern c_int GetMarginEnd(Widget* widget);
		[LinkName("gtk_widget_get_margin_start")]
		public static extern c_int GetMarginStart(Widget* widget);
		[LinkName("gtk_widget_get_margin_top")]
		public static extern c_int GetMarginTop(Widget* widget);
		[LinkName("gtk_widget_get_name")]
		public static extern char8* GetName(Widget* widget);
		[LinkName("gtk_widget_get_native")]
		public static extern Native* GetNative(Widget* widget);
		[LinkName("gtk_widget_get_next_sibling")]
		public static extern Widget* GetNextSibling(Widget* widget);
		[LinkName("gtk_widget_get_opacity")]
		public static extern double GetOpacity(Widget* widget);
		[LinkName("gtk_widget_get_overflow")]
		public static extern Overflow GetOverflow(Widget* widget);
		[LinkName("gtk_widget_get_pango_context")]
		public static extern Pango.Context* GetPangoContext(Widget* widget);
		[LinkName("gtk_widget_get_parent")]
		public static extern Widget* GetParent(Widget* widget);
		[LinkName("gtk_widget_get_preferred_size")]
		public static extern void GetPreferredSize(Widget* widget, Requisition* minimum_size, Requisition* natural_size);
		[LinkName("gtk_widget_get_prev_sibling")]
		public static extern Widget* GetPrevSibling(Widget* widget);
		[LinkName("gtk_widget_get_primary_clipboard")]
		public static extern Gdk.Clipboard* GetPrimaryClipboard(Widget* widget);
		[LinkName("gtk_widget_get_realized")]
		public static extern c_int GetRealized(Widget* widget);
		[LinkName("gtk_widget_get_receives_default")]
		public static extern c_int GetReceivesDefault(Widget* widget);
		[LinkName("gtk_widget_get_request_mode")]
		public static extern SizeRequestMode GetRequestMode(Widget* widget);
		[LinkName("gtk_widget_get_root")]
		public static extern Root* GetRoot(Widget* widget);
		[LinkName("gtk_widget_get_scale_factor")]
		public static extern c_int GetScaleFactor(Widget* widget);
		[LinkName("gtk_widget_get_sensitive")]
		public static extern c_int GetSensitive(Widget* widget);
		[LinkName("gtk_widget_get_settings")]
		public static extern Settings* GetSettings(Widget* widget);
		[LinkName("gtk_widget_get_size")]
		public static extern c_int GetSize(Widget* widget, Orientation orientation);
		[LinkName("gtk_widget_get_size_request")]
		public static extern void GetSizeRequest(Widget* widget, c_int* width, c_int* height);
		[LinkName("gtk_widget_get_state_flags")]
		public static extern StateFlags GetStateFlags(Widget* widget);
		[LinkName("gtk_widget_get_style_context")]
		public static extern StyleContext* GetStyleContext(Widget* widget);
		[LinkName("gtk_widget_get_template_child")]
		public static extern GObject.Object* GetTemplateChild(Widget* widget, GLib.Type widget_type, char8* name);
		[LinkName("gtk_widget_get_tooltip_markup")]
		public static extern char8* GetTooltipMarkup(Widget* widget);
		[LinkName("gtk_widget_get_tooltip_text")]
		public static extern char8* GetTooltipText(Widget* widget);
		[LinkName("gtk_widget_get_valign")]
		public static extern Align GetValign(Widget* widget);
		[LinkName("gtk_widget_get_vexpand")]
		public static extern c_int GetVexpand(Widget* widget);
		[LinkName("gtk_widget_get_vexpand_set")]
		public static extern c_int GetVexpandSet(Widget* widget);
		[LinkName("gtk_widget_get_visible")]
		public static extern c_int GetVisible(Widget* widget);
		[LinkName("gtk_widget_get_width")]
		public static extern c_int GetWidth(Widget* widget);
		[LinkName("gtk_widget_grab_focus")]
		public static extern c_int GrabFocus(Widget* widget);
		[LinkName("gtk_widget_has_css_class")]
		public static extern c_int HasCssClass(Widget* widget, char8* css_class);
		[LinkName("gtk_widget_has_default")]
		public static extern c_int HasDefault(Widget* widget);
		[LinkName("gtk_widget_has_focus")]
		public static extern c_int HasFocus(Widget* widget);
		[LinkName("gtk_widget_has_visible_focus")]
		public static extern c_int HasVisibleFocus(Widget* widget);
		[LinkName("gtk_widget_hide")]
		public static extern void Hide(Widget* widget);
		[LinkName("gtk_widget_in_destruction")]
		public static extern c_int InDestruction(Widget* widget);
		[LinkName("gtk_widget_init_template")]
		public static extern void InitTemplate(Widget* widget);
		[LinkName("gtk_widget_insert_action_group")]
		public static extern void InsertActionGroup(Widget* widget, char8* name, Gio.ActionGroup* group);
		[LinkName("gtk_widget_insert_after")]
		public static extern void InsertAfter(Widget* widget, Widget* parent, Widget* previous_sibling);
		[LinkName("gtk_widget_insert_before")]
		public static extern void InsertBefore(Widget* widget, Widget* parent, Widget* next_sibling);
		[LinkName("gtk_widget_is_ancestor")]
		public static extern c_int IsAncestor(Widget* widget, Widget* ancestor);
		[LinkName("gtk_widget_is_drawable")]
		public static extern c_int IsDrawable(Widget* widget);
		[LinkName("gtk_widget_is_focus")]
		public static extern c_int IsFocus(Widget* widget);
		[LinkName("gtk_widget_is_sensitive")]
		public static extern c_int IsSensitive(Widget* widget);
		[LinkName("gtk_widget_is_visible")]
		public static extern c_int IsVisible(Widget* widget);
		[LinkName("gtk_widget_keynav_failed")]
		public static extern c_int KeynavFailed(Widget* widget, DirectionType direction);
		[LinkName("gtk_widget_list_mnemonic_labels")]
		public static extern GLib.List* ListMnemonicLabels(Widget* widget);
		[LinkName("gtk_widget_map")]
		public static extern void Map(Widget* widget);
		[LinkName("gtk_widget_measure")]
		public static extern void Measure(Widget* widget, Orientation orientation, c_int for_size, c_int* minimum, c_int* natural, c_int* minimum_baseline, c_int* natural_baseline);
		[LinkName("gtk_widget_mnemonic_activate")]
		public static extern c_int MnemonicActivate(Widget* widget, c_int group_cycling);
		[LinkName("gtk_widget_observe_children")]
		public static extern Gio.ListModel* ObserveChildren(Widget* widget);
		[LinkName("gtk_widget_observe_controllers")]
		public static extern Gio.ListModel* ObserveControllers(Widget* widget);
		[LinkName("gtk_widget_pick")]
		public static extern Widget* Pick(Widget* widget, double x, double y, PickFlags flags);
		[LinkName("gtk_widget_queue_allocate")]
		public static extern void QueueAllocate(Widget* widget);
		[LinkName("gtk_widget_queue_draw")]
		public static extern void QueueDraw(Widget* widget);
		[LinkName("gtk_widget_queue_resize")]
		public static extern void QueueResize(Widget* widget);
		[LinkName("gtk_widget_realize")]
		public static extern void Realize(Widget* widget);
		[LinkName("gtk_widget_remove_controller")]
		public static extern void RemoveController(Widget* widget, EventController* controller);
		[LinkName("gtk_widget_remove_css_class")]
		public static extern void RemoveCssClass(Widget* widget, char8* css_class);
		[LinkName("gtk_widget_remove_mnemonic_label")]
		public static extern void RemoveMnemonicLabel(Widget* widget, Widget* label);
		[LinkName("gtk_widget_remove_tick_callback")]
		public static extern void RemoveTickCallback(Widget* widget, c_uint id);
		[LinkName("gtk_widget_set_can_focus")]
		public static extern void SetCanFocus(Widget* widget, c_int can_focus);
		[LinkName("gtk_widget_set_can_target")]
		public static extern void SetCanTarget(Widget* widget, c_int can_target);
		[LinkName("gtk_widget_set_child_visible")]
		public static extern void SetChildVisible(Widget* widget, c_int child_visible);
		[LinkName("gtk_widget_set_css_classes")]
		public static extern void SetCssClasses(Widget* widget, char8** classes);
		[LinkName("gtk_widget_set_cursor")]
		public static extern void SetCursor(Widget* widget, Gdk.Cursor* cursor);
		[LinkName("gtk_widget_set_cursor_from_name")]
		public static extern void SetCursorFromName(Widget* widget, char8* name);
		[LinkName("gtk_widget_set_direction")]
		public static extern void SetDirection(Widget* widget, TextDirection dir);
		[LinkName("gtk_widget_set_focus_child")]
		public static extern void SetFocusChild(Widget* widget, Widget* child);
		[LinkName("gtk_widget_set_focus_on_click")]
		public static extern void SetFocusOnClick(Widget* widget, c_int focus_on_click);
		[LinkName("gtk_widget_set_focusable")]
		public static extern void SetFocusable(Widget* widget, c_int focusable);
		[LinkName("gtk_widget_set_font_map")]
		public static extern void SetFontMap(Widget* widget, Pango.FontMap* font_map);
		[LinkName("gtk_widget_set_font_options")]
		public static extern void SetFontOptions(Widget* widget, cairo.FontOptions* options);
		[LinkName("gtk_widget_set_halign")]
		public static extern void SetHalign(Widget* widget, Align align);
		[LinkName("gtk_widget_set_has_tooltip")]
		public static extern void SetHasTooltip(Widget* widget, c_int has_tooltip);
		[LinkName("gtk_widget_set_hexpand")]
		public static extern void SetHexpand(Widget* widget, c_int expand);
		[LinkName("gtk_widget_set_hexpand_set")]
		public static extern void SetHexpandSet(Widget* widget, c_int set);
		[LinkName("gtk_widget_set_layout_manager")]
		public static extern void SetLayoutManager(Widget* widget, LayoutManager* layout_manager);
		[LinkName("gtk_widget_set_margin_bottom")]
		public static extern void SetMarginBottom(Widget* widget, c_int margin);
		[LinkName("gtk_widget_set_margin_end")]
		public static extern void SetMarginEnd(Widget* widget, c_int margin);
		[LinkName("gtk_widget_set_margin_start")]
		public static extern void SetMarginStart(Widget* widget, c_int margin);
		[LinkName("gtk_widget_set_margin_top")]
		public static extern void SetMarginTop(Widget* widget, c_int margin);
		[LinkName("gtk_widget_set_name")]
		public static extern void SetName(Widget* widget, char8* name);
		[LinkName("gtk_widget_set_opacity")]
		public static extern void SetOpacity(Widget* widget, double opacity);
		[LinkName("gtk_widget_set_overflow")]
		public static extern void SetOverflow(Widget* widget, Overflow overflow);
		[LinkName("gtk_widget_set_parent")]
		public static extern void SetParent(Widget* widget, Widget* parent);
		[LinkName("gtk_widget_set_receives_default")]
		public static extern void SetReceivesDefault(Widget* widget, c_int receives_default);
		[LinkName("gtk_widget_set_sensitive")]
		public static extern void SetSensitive(Widget* widget, c_int sensitive);
		[LinkName("gtk_widget_set_size_request")]
		public static extern void SetSizeRequest(Widget* widget, c_int width, c_int height);
		[LinkName("gtk_widget_set_state_flags")]
		public static extern void SetStateFlags(Widget* widget, StateFlags flags, c_int clear);
		[LinkName("gtk_widget_set_tooltip_markup")]
		public static extern void SetTooltipMarkup(Widget* widget, char8* markup);
		[LinkName("gtk_widget_set_tooltip_text")]
		public static extern void SetTooltipText(Widget* widget, char8* text);
		[LinkName("gtk_widget_set_valign")]
		public static extern void SetValign(Widget* widget, Align align);
		[LinkName("gtk_widget_set_vexpand")]
		public static extern void SetVexpand(Widget* widget, c_int expand);
		[LinkName("gtk_widget_set_vexpand_set")]
		public static extern void SetVexpandSet(Widget* widget, c_int set);
		[LinkName("gtk_widget_set_visible")]
		public static extern void SetVisible(Widget* widget, c_int visible);
		[LinkName("gtk_widget_should_layout")]
		public static extern c_int ShouldLayout(Widget* widget);
		[LinkName("gtk_widget_show")]
		public static extern void Show(Widget* widget);
		[LinkName("gtk_widget_size_allocate")]
		public static extern void SizeAllocate(Widget* widget, Allocation* allocation, c_int baseline);
		[LinkName("gtk_widget_snapshot_child")]
		public static extern void SnapshotChild(Widget* widget, Widget* child, Snapshot* snapshot);
		[LinkName("gtk_widget_translate_coordinates")]
		public static extern c_int TranslateCoordinates(Widget* src_widget, Widget* dest_widget, double src_x, double src_y, double* dest_x, double* dest_y);
		[LinkName("gtk_widget_trigger_tooltip_query")]
		public static extern void TriggerTooltipQuery(Widget* widget);
		[LinkName("gtk_widget_unmap")]
		public static extern void Unmap(Widget* widget);
		[LinkName("gtk_widget_unparent")]
		public static extern void Unparent(Widget* widget);
		[LinkName("gtk_widget_unrealize")]
		public static extern void Unrealize(Widget* widget);
		[LinkName("gtk_widget_unset_state_flags")]
		public static extern void UnsetStateFlags(Widget* widget, StateFlags flags);
		public function void DestroyFunc(Widget* self, void* user_data);
		public function void DirectionChangedFunc(Widget* self, TextDirection previous_direction, void* user_data);
		public function void HideFunc(Widget* self, void* user_data);
		public function c_int KeynavFailedFunc(Widget* self, DirectionType direction, void* user_data);
		public function void MapFunc(Widget* self, void* user_data);
		public function c_int MnemonicActivateFunc(Widget* self, c_int group_cycling, void* user_data);
		public function void MoveFocusFunc(Widget* self, DirectionType direction, void* user_data);
		public function c_int QueryTooltipFunc(Widget* self, c_int x, c_int y, c_int keyboard_mode, Tooltip tooltip, void* user_data);
		public function void RealizeFunc(Widget* self, void* user_data);
		public function void ShowFunc(Widget* self, void* user_data);
		public function void StateFlagsChangedFunc(Widget* self, StateFlags flags, void* user_data);
		public function void UnmapFunc(Widget* self, void* user_data);
		public function void UnrealizeFunc(Widget* self, void* user_data);
	}
	[CRepr]
	public struct WidgetPaintable : GObject.Object
	{
		[LinkName("gtk_widget_paintable_new")]
		public static extern WidgetPaintable* New(Widget* widget);
		[LinkName("gtk_widget_paintable_get_widget")]
		public static extern Widget* GetWidget(WidgetPaintable* self);
		[LinkName("gtk_widget_paintable_set_widget")]
		public static extern void SetWidget(WidgetPaintable* self, Widget* widget);
	}
	[CRepr]
	public struct Window : Widget
	{
		[LinkName("gtk_window_new")]
		public static extern Widget* New();
		[LinkName("gtk_window_close")]
		public static extern void Close(Window* window);
		[LinkName("gtk_window_destroy")]
		public static extern void Destroy(Window* window);
		[LinkName("gtk_window_fullscreen")]
		public static extern void Fullscreen(Window* window);
		[LinkName("gtk_window_fullscreen_on_monitor")]
		public static extern void FullscreenOnMonitor(Window* window, Gdk.Monitor* monitor);
		[LinkName("gtk_window_get_application")]
		public static extern Application* GetApplication(Window* window);
		[LinkName("gtk_window_get_child")]
		public static extern Widget* GetChild(Window* window);
		[LinkName("gtk_window_get_decorated")]
		public static extern c_int GetDecorated(Window* window);
		[LinkName("gtk_window_get_default_size")]
		public static extern void GetDefaultSize(Window* window, c_int* width, c_int* height);
		[LinkName("gtk_window_get_default_widget")]
		public static extern Widget* GetDefaultWidget(Window* window);
		[LinkName("gtk_window_get_deletable")]
		public static extern c_int GetDeletable(Window* window);
		[LinkName("gtk_window_get_destroy_with_parent")]
		public static extern c_int GetDestroyWithParent(Window* window);
		[LinkName("gtk_window_get_focus")]
		public static extern Widget* GetFocus(Window* window);
		[LinkName("gtk_window_get_focus_visible")]
		public static extern c_int GetFocusVisible(Window* window);
		[LinkName("gtk_window_get_group")]
		public static extern WindowGroup* GetGroup(Window* window);
		[LinkName("gtk_window_get_handle_menubar_accel")]
		public static extern c_int GetHandleMenubarAccel(Window* window);
		[LinkName("gtk_window_get_hide_on_close")]
		public static extern c_int GetHideOnClose(Window* window);
		[LinkName("gtk_window_get_icon_name")]
		public static extern char8* GetIconName(Window* window);
		[LinkName("gtk_window_get_mnemonics_visible")]
		public static extern c_int GetMnemonicsVisible(Window* window);
		[LinkName("gtk_window_get_modal")]
		public static extern c_int GetModal(Window* window);
		[LinkName("gtk_window_get_resizable")]
		public static extern c_int GetResizable(Window* window);
		[LinkName("gtk_window_get_title")]
		public static extern char8* GetTitle(Window* window);
		[LinkName("gtk_window_get_titlebar")]
		public static extern Widget* GetTitlebar(Window* window);
		[LinkName("gtk_window_get_transient_for")]
		public static extern Window* GetTransientFor(Window* window);
		[LinkName("gtk_window_has_group")]
		public static extern c_int HasGroup(Window* window);
		[LinkName("gtk_window_is_active")]
		public static extern c_int IsActive(Window* window);
		[LinkName("gtk_window_is_fullscreen")]
		public static extern c_int IsFullscreen(Window* window);
		[LinkName("gtk_window_is_maximized")]
		public static extern c_int IsMaximized(Window* window);
		[LinkName("gtk_window_maximize")]
		public static extern void Maximize(Window* window);
		[LinkName("gtk_window_minimize")]
		public static extern void Minimize(Window* window);
		[LinkName("gtk_window_present")]
		public static extern void Present(Window* window);
		[LinkName("gtk_window_present_with_time")]
		public static extern void PresentWithTime(Window* window, c_uint timestamp);
		[LinkName("gtk_window_set_application")]
		public static extern void SetApplication(Window* window, Application* application);
		[LinkName("gtk_window_set_child")]
		public static extern void SetChild(Window* window, Widget* child);
		[LinkName("gtk_window_set_decorated")]
		public static extern void SetDecorated(Window* window, c_int setting);
		[LinkName("gtk_window_set_default_size")]
		public static extern void SetDefaultSize(Window* window, c_int width, c_int height);
		[LinkName("gtk_window_set_default_widget")]
		public static extern void SetDefaultWidget(Window* window, Widget* default_widget);
		[LinkName("gtk_window_set_deletable")]
		public static extern void SetDeletable(Window* window, c_int setting);
		[LinkName("gtk_window_set_destroy_with_parent")]
		public static extern void SetDestroyWithParent(Window* window, c_int setting);
		[LinkName("gtk_window_set_display")]
		public static extern void SetDisplay(Window* window, Gdk.Display* display);
		[LinkName("gtk_window_set_focus")]
		public static extern void SetFocus(Window* window, Widget* focus);
		[LinkName("gtk_window_set_focus_visible")]
		public static extern void SetFocusVisible(Window* window, c_int setting);
		[LinkName("gtk_window_set_handle_menubar_accel")]
		public static extern void SetHandleMenubarAccel(Window* window, c_int handle_menubar_accel);
		[LinkName("gtk_window_set_hide_on_close")]
		public static extern void SetHideOnClose(Window* window, c_int setting);
		[LinkName("gtk_window_set_icon_name")]
		public static extern void SetIconName(Window* window, char8* name);
		[LinkName("gtk_window_set_mnemonics_visible")]
		public static extern void SetMnemonicsVisible(Window* window, c_int setting);
		[LinkName("gtk_window_set_modal")]
		public static extern void SetModal(Window* window, c_int modal);
		[LinkName("gtk_window_set_resizable")]
		public static extern void SetResizable(Window* window, c_int resizable);
		[LinkName("gtk_window_set_startup_id")]
		public static extern void SetStartupId(Window* window, char8* startup_id);
		[LinkName("gtk_window_set_title")]
		public static extern void SetTitle(Window* window, char8* title);
		[LinkName("gtk_window_set_titlebar")]
		public static extern void SetTitlebar(Window* window, Widget* titlebar);
		[LinkName("gtk_window_set_transient_for")]
		public static extern void SetTransientFor(Window* window, Window* parent);
		[LinkName("gtk_window_unfullscreen")]
		public static extern void Unfullscreen(Window* window);
		[LinkName("gtk_window_unmaximize")]
		public static extern void Unmaximize(Window* window);
		[LinkName("gtk_window_unminimize")]
		public static extern void Unminimize(Window* window);
		public function void ActivateDefaultFunc(Window* self, void* user_data);
		public function void ActivateFocusFunc(Window* self, void* user_data);
		public function c_int CloseRequestFunc(Window* self, void* user_data);
		public function c_int EnableDebuggingFunc(Window* self, c_int toggle, void* user_data);
		public function void KeysChangedFunc(Window* self, void* user_data);
	}
	[CRepr]
	public struct WindowControls : Widget
	{
		[LinkName("gtk_window_controls_new")]
		public static extern Widget* New(PackType side);
		[LinkName("gtk_window_controls_get_decoration_layout")]
		public static extern char8* GetDecorationLayout(WindowControls* self);
		[LinkName("gtk_window_controls_get_empty")]
		public static extern c_int GetEmpty(WindowControls* self);
		[LinkName("gtk_window_controls_get_side")]
		public static extern PackType GetSide(WindowControls* self);
		[LinkName("gtk_window_controls_set_decoration_layout")]
		public static extern void SetDecorationLayout(WindowControls* self, char8* layout);
		[LinkName("gtk_window_controls_set_side")]
		public static extern void SetSide(WindowControls* self, PackType side);
	}
	[CRepr]
	public struct WindowGroup : GObject.Object
	{
		[LinkName("gtk_window_group_new")]
		public static extern WindowGroup* New();
		[LinkName("gtk_window_group_add_window")]
		public static extern void AddWindow(WindowGroup* window_group, Window* window);
		[LinkName("gtk_window_group_list_windows")]
		public static extern GLib.List* ListWindows(WindowGroup* window_group);
		[LinkName("gtk_window_group_remove_window")]
		public static extern void RemoveWindow(WindowGroup* window_group, Window* window);
	}
	[CRepr]
	public struct WindowHandle : Widget
	{
		[LinkName("gtk_window_handle_new")]
		public static extern Widget* New();
		[LinkName("gtk_window_handle_get_child")]
		public static extern Widget* GetChild(WindowHandle* self);
		[LinkName("gtk_window_handle_set_child")]
		public static extern void SetChild(WindowHandle* self, Widget* child);
	}
		[LinkName("gtk_accelerator_get_default_mod_mask")]
		public static extern Gdk.ModifierType AcceleratorGetDefaultModMask();
		[LinkName("gtk_accelerator_get_label")]
		public static extern char8* AcceleratorGetLabel(c_uint accelerator_key, Gdk.ModifierType accelerator_mods);
		[LinkName("gtk_accelerator_get_label_with_keycode")]
		public static extern char8* AcceleratorGetLabelWithKeycode(Gdk.Display* display, c_uint accelerator_key, c_uint keycode, Gdk.ModifierType accelerator_mods);
		[LinkName("gtk_accelerator_name")]
		public static extern char8* AcceleratorName(c_uint accelerator_key, Gdk.ModifierType accelerator_mods);
		[LinkName("gtk_accelerator_name_with_keycode")]
		public static extern char8* AcceleratorNameWithKeycode(Gdk.Display* display, c_uint accelerator_key, c_uint keycode, Gdk.ModifierType accelerator_mods);
		[LinkName("gtk_accelerator_parse")]
		public static extern c_int AcceleratorParse(char8* accelerator, c_uint* accelerator_key, Gdk.ModifierType* accelerator_mods);
		[LinkName("gtk_accelerator_parse_with_keycode")]
		public static extern c_int AcceleratorParseWithKeycode(char8* accelerator, Gdk.Display* display, c_uint* accelerator_key, c_uint** accelerator_codes, Gdk.ModifierType* accelerator_mods);
		[LinkName("gtk_accelerator_valid")]
		public static extern c_int AcceleratorValid(c_uint keyval, Gdk.ModifierType modifiers);
		[LinkName("gtk_accessible_property_init_value")]
		public static extern void AccessiblePropertyInitValue(AccessibleProperty property, GObject.Value* value);
		[LinkName("gtk_accessible_relation_init_value")]
		public static extern void AccessibleRelationInitValue(AccessibleRelation relation, GObject.Value* value);
		[LinkName("gtk_accessible_state_init_value")]
		public static extern void AccessibleStateInitValue(AccessibleState state, GObject.Value* value);
		[LinkName("gtk_bitset_iter_init_at")]
		public static extern c_int BitsetIterInitAt(BitsetIter* iter, Bitset* set, c_uint target, c_uint* value);
		[LinkName("gtk_bitset_iter_init_first")]
		public static extern c_int BitsetIterInitFirst(BitsetIter* iter, Bitset* set, c_uint* value);
		[LinkName("gtk_bitset_iter_init_last")]
		public static extern c_int BitsetIterInitLast(BitsetIter* iter, Bitset* set, c_uint* value);
		[LinkName("gtk_builder_error_quark")]
		public static extern GLib.Quark BuilderErrorQuark();
		[LinkName("gtk_check_version")]
		public static extern char8* CheckVersion(c_uint required_major, c_uint required_minor, c_uint required_micro);
		[LinkName("gtk_constraint_vfl_parser_error_quark")]
		public static extern GLib.Quark ConstraintVflParserErrorQuark();
		[LinkName("gtk_css_parser_error_quark")]
		public static extern GLib.Quark CssParserErrorQuark();
		[LinkName("gtk_css_parser_warning_quark")]
		public static extern GLib.Quark CssParserWarningQuark();
		[LinkName("gtk_dialog_error_quark")]
		public static extern GLib.Quark DialogErrorQuark();
		[LinkName("gtk_disable_setlocale")]
		public static extern void DisableSetlocale();
		[LinkName("gtk_distribute_natural_allocation")]
		public static extern c_int DistributeNaturalAllocation(c_int extra_space, c_uint n_requested_sizes, RequestedSize* sizes);
		[LinkName("gtk_editable_delegate_get_property")]
		public static extern c_int EditableDelegateGetProperty(GObject.Object* object, c_uint prop_id, GObject.Value* value, GObject.ParamSpec* pspec);
		[LinkName("gtk_editable_delegate_set_property")]
		public static extern c_int EditableDelegateSetProperty(GObject.Object* object, c_uint prop_id, GObject.Value* value, GObject.ParamSpec* pspec);
		[LinkName("gtk_editable_install_properties")]
		public static extern c_uint EditableInstallProperties(GObject.ObjectClass* object_class, c_uint first_prop);
		[LinkName("gtk_enumerate_printers")]
		public static extern void EnumeratePrinters(PrinterFunc func, void* data, GLib.DestroyNotify destroy, c_int wait);
		[LinkName("gtk_file_chooser_error_quark")]
		public static extern GLib.Quark FileChooserErrorQuark();
		[LinkName("gtk_get_binary_age")]
		public static extern c_uint GetBinaryAge();
		[LinkName("gtk_get_debug_flags")]
		public static extern DebugFlags GetDebugFlags();
		[LinkName("gtk_get_default_language")]
		public static extern Pango.Language* GetDefaultLanguage();
		[LinkName("gtk_get_interface_age")]
		public static extern c_uint GetInterfaceAge();
		[LinkName("gtk_get_locale_direction")]
		public static extern TextDirection GetLocaleDirection();
		[LinkName("gtk_get_major_version")]
		public static extern c_uint GetMajorVersion();
		[LinkName("gtk_get_micro_version")]
		public static extern c_uint GetMicroVersion();
		[LinkName("gtk_get_minor_version")]
		public static extern c_uint GetMinorVersion();
		[LinkName("gtk_hsv_to_rgb")]
		public static extern void HsvToRgb(float h, float s, float v, float* r, float* g, float* b);
		[LinkName("gtk_icon_theme_error_quark")]
		public static extern GLib.Quark IconThemeErrorQuark();
		[LinkName("gtk_init")]
		public static extern void Init();
		[LinkName("gtk_init_check")]
		public static extern c_int InitCheck();
		[LinkName("gtk_is_initialized")]
		public static extern c_int IsInitialized();
		[LinkName("gtk_native_get_for_surface")]
		public static extern Native* NativeGetForSurface(Gdk.Surface* surface);
		[LinkName("gtk_ordering_from_cmpfunc")]
		public static extern Ordering OrderingFromCmpfunc(c_int cmpfunc_result);
		[LinkName("gtk_paper_size_get_default")]
		public static extern char8* PaperSizeGetDefault();
		[LinkName("gtk_paper_size_get_paper_sizes")]
		public static extern GLib.List* PaperSizeGetPaperSizes(c_int include_custom);
		[LinkName("gtk_param_spec_expression")]
		public static extern GObject.ParamSpec* ParamSpecExpression(char8* name, char8* nick, char8* blurb, GObject.ParamFlags flags);
		[LinkName("gtk_print_error_quark")]
		public static extern GLib.Quark PrintErrorQuark();
		[LinkName("gtk_print_run_page_setup_dialog")]
		public static extern PageSetup* PrintRunPageSetupDialog(Window* parent, PageSetup* page_setup, PrintSettings* settings);
		[LinkName("gtk_print_run_page_setup_dialog_async")]
		public static extern void PrintRunPageSetupDialogAsync(Window* parent, PageSetup* page_setup, PrintSettings* settings, PageSetupDoneFunc done_cb, void* data);
		[LinkName("gtk_recent_manager_error_quark")]
		public static extern GLib.Quark RecentManagerErrorQuark();
		[LinkName("gtk_render_activity")]
		public static extern void RenderActivity(StyleContext* context, cairo.Context* cr, double x, double y, double width, double height);
		[LinkName("gtk_render_arrow")]
		public static extern void RenderArrow(StyleContext* context, cairo.Context* cr, double angle, double x, double y, double size);
		[LinkName("gtk_render_background")]
		public static extern void RenderBackground(StyleContext* context, cairo.Context* cr, double x, double y, double width, double height);
		[LinkName("gtk_render_check")]
		public static extern void RenderCheck(StyleContext* context, cairo.Context* cr, double x, double y, double width, double height);
		[LinkName("gtk_render_expander")]
		public static extern void RenderExpander(StyleContext* context, cairo.Context* cr, double x, double y, double width, double height);
		[LinkName("gtk_render_focus")]
		public static extern void RenderFocus(StyleContext* context, cairo.Context* cr, double x, double y, double width, double height);
		[LinkName("gtk_render_frame")]
		public static extern void RenderFrame(StyleContext* context, cairo.Context* cr, double x, double y, double width, double height);
		[LinkName("gtk_render_handle")]
		public static extern void RenderHandle(StyleContext* context, cairo.Context* cr, double x, double y, double width, double height);
		[LinkName("gtk_render_icon")]
		public static extern void RenderIcon(StyleContext* context, cairo.Context* cr, Gdk.Texture* texture, double x, double y);
		[LinkName("gtk_render_layout")]
		public static extern void RenderLayout(StyleContext* context, cairo.Context* cr, double x, double y, Pango.Layout* layout);
		[LinkName("gtk_render_line")]
		public static extern void RenderLine(StyleContext* context, cairo.Context* cr, double x0, double y0, double x1, double y1);
		[LinkName("gtk_render_option")]
		public static extern void RenderOption(StyleContext* context, cairo.Context* cr, double x, double y, double width, double height);
		[LinkName("gtk_rgb_to_hsv")]
		public static extern void RgbToHsv(float r, float g, float b, float* h, float* s, float* v);
		[LinkName("gtk_set_debug_flags")]
		public static extern void SetDebugFlags(DebugFlags flags);
		[LinkName("gtk_show_uri")]
		public static extern void ShowUri(Window* parent, char8* uri, c_uint timestamp);
		[LinkName("gtk_show_uri_full")]
		public static extern void ShowUriFull(Window* parent, char8* uri, c_uint timestamp, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gtk_show_uri_full_finish")]
		public static extern c_int ShowUriFullFinish(Window* parent, Gio.AsyncResult* result);
		[LinkName("gtk_test_accessible_assertion_message_role")]
		public static extern void TestAccessibleAssertionMessageRole(char8* domain, char8* file, c_int line, char8* func, char8* expr, Accessible* accessible, AccessibleRole expected_role, AccessibleRole actual_role);
		[LinkName("gtk_test_accessible_has_property")]
		public static extern c_int TestAccessibleHasProperty(Accessible* accessible, AccessibleProperty property);
		[LinkName("gtk_test_accessible_has_relation")]
		public static extern c_int TestAccessibleHasRelation(Accessible* accessible, AccessibleRelation relation);
		[LinkName("gtk_test_accessible_has_role")]
		public static extern c_int TestAccessibleHasRole(Accessible* accessible, AccessibleRole role);
		[LinkName("gtk_test_accessible_has_state")]
		public static extern c_int TestAccessibleHasState(Accessible* accessible, AccessibleState state);
		[LinkName("gtk_test_list_all_types")]
		public static extern GLib.Type* TestListAllTypes(c_uint* n_types);
		[LinkName("gtk_test_register_all_types")]
		public static extern void TestRegisterAllTypes();
		[LinkName("gtk_test_widget_wait_for_draw")]
		public static extern void TestWidgetWaitForDraw(Widget* widget);
		[LinkName("gtk_tree_create_row_drag_content")]
		public static extern Gdk.ContentProvider* TreeCreateRowDragContent(TreeModel* tree_model, TreePath* path);
		[LinkName("gtk_tree_get_row_drag_data")]
		public static extern c_int TreeGetRowDragData(GObject.Value* value, TreeModel** tree_model, TreePath** path);
		[LinkName("gtk_tree_row_reference_deleted")]
		public static extern void TreeRowReferenceDeleted(GObject.Object* proxy, TreePath* path);
		[LinkName("gtk_tree_row_reference_inserted")]
		public static extern void TreeRowReferenceInserted(GObject.Object* proxy, TreePath* path);
		[LinkName("gtk_value_dup_expression")]
		public static extern Expression* ValueDupExpression(GObject.Value* value);
		[LinkName("gtk_value_get_expression")]
		public static extern Expression* ValueGetExpression(GObject.Value* value);
		[LinkName("gtk_value_set_expression")]
		public static extern void ValueSetExpression(GObject.Value* value, Expression* expression);
		[LinkName("gtk_value_take_expression")]
		public static extern void ValueTakeExpression(GObject.Value* value, Expression* expression);
	[CRepr]
	public struct ATContextClass : int
	{
	}
	[CRepr]
	public struct AccessibleInterface
	{
		public GObject.TypeInterface g_iface;
		public function ATContext*(Accessible* self) get_at_context;
		public function c_int(Accessible* self, AccessiblePlatformState state) get_platform_state;
		public function Accessible*(Accessible* self) get_accessible_parent;
		public function Accessible*(Accessible* self) get_first_accessible_child;
		public function Accessible*(Accessible* self) get_next_accessible_sibling;
		public function c_int(Accessible* self, c_int* x, c_int* y, c_int* width, c_int* height) get_bounds;
	}
	[CRepr]
	public struct AccessibleRangeInterface
	{
		public GObject.TypeInterface g_iface;
		public function c_int(AccessibleRange* self, double value) set_current_value;
	}
	[CRepr]
	public struct ActionableInterface
	{
		public GObject.TypeInterface g_iface;
		public function char8*(Actionable* actionable) get_action_name;
		public function void(Actionable* actionable, char8* action_name) set_action_name;
		public function GLib.Variant*(Actionable* actionable) get_action_target_value;
		public function void(Actionable* actionable, GLib.Variant* target_value) set_action_target_value;
	}
	[CRepr]
	public struct ActivateActionClass : int
	{
	}
	[CRepr]
	public struct AdjustmentClass
	{
		public GObject.InitiallyUnownedClass parent_class;
		public function void(Adjustment* adjustment) changed;
		public function void(Adjustment* adjustment) value_changed;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
	}
	[CRepr]
	public struct AlertDialogClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct AlternativeTriggerClass : int
	{
	}
	[CRepr]
	public struct AnyFilterClass : int
	{
	}
	[CRepr]
	public struct ApplicationClass
	{
		public Gio.ApplicationClass parent_class;
		public function void(Application* application, Window* window) window_added;
		public function void(Application* application, Window* window) window_removed;
		public void* padding;
	}
	[CRepr]
	public struct ApplicationWindowClass
	{
		public WindowClass parent_class;
		public void* padding;
	}
	[CRepr]
	public struct BinLayoutClass
	{
		public LayoutManagerClass parent_class;
	}
	[CRepr]
	public struct Bitset
	{
		[LinkName("gtk_bitset_new_empty")]
		public static extern Bitset* NewEmpty();
		[LinkName("gtk_bitset_new_range")]
		public static extern Bitset* NewRange(c_uint start, c_uint n_items);
		[LinkName("gtk_bitset_add")]
		public static extern c_int Add(Bitset* self, c_uint value);
		[LinkName("gtk_bitset_add_range")]
		public static extern void AddRange(Bitset* self, c_uint start, c_uint n_items);
		[LinkName("gtk_bitset_add_range_closed")]
		public static extern void AddRangeClosed(Bitset* self, c_uint first, c_uint last);
		[LinkName("gtk_bitset_add_rectangle")]
		public static extern void AddRectangle(Bitset* self, c_uint start, c_uint width, c_uint height, c_uint stride);
		[LinkName("gtk_bitset_contains")]
		public static extern c_int Contains(Bitset* self, c_uint value);
		[LinkName("gtk_bitset_copy")]
		public static extern Bitset* Copy(Bitset* self);
		[LinkName("gtk_bitset_difference")]
		public static extern void Difference(Bitset* self, Bitset* other);
		[LinkName("gtk_bitset_equals")]
		public static extern c_int Equals(Bitset* self, Bitset* other);
		[LinkName("gtk_bitset_get_maximum")]
		public static extern c_uint GetMaximum(Bitset* self);
		[LinkName("gtk_bitset_get_minimum")]
		public static extern c_uint GetMinimum(Bitset* self);
		[LinkName("gtk_bitset_get_nth")]
		public static extern c_uint GetNth(Bitset* self, c_uint nth);
		[LinkName("gtk_bitset_get_size")]
		public static extern c_ulonglong GetSize(Bitset* self);
		[LinkName("gtk_bitset_get_size_in_range")]
		public static extern c_ulonglong GetSizeInRange(Bitset* self, c_uint first, c_uint last);
		[LinkName("gtk_bitset_intersect")]
		public static extern void Intersect(Bitset* self, Bitset* other);
		[LinkName("gtk_bitset_is_empty")]
		public static extern c_int IsEmpty(Bitset* self);
		[LinkName("gtk_bitset_ref")]
		public static extern Bitset* Ref(Bitset* self);
		[LinkName("gtk_bitset_remove")]
		public static extern c_int Remove(Bitset* self, c_uint value);
		[LinkName("gtk_bitset_remove_all")]
		public static extern void RemoveAll(Bitset* self);
		[LinkName("gtk_bitset_remove_range")]
		public static extern void RemoveRange(Bitset* self, c_uint start, c_uint n_items);
		[LinkName("gtk_bitset_remove_range_closed")]
		public static extern void RemoveRangeClosed(Bitset* self, c_uint first, c_uint last);
		[LinkName("gtk_bitset_remove_rectangle")]
		public static extern void RemoveRectangle(Bitset* self, c_uint start, c_uint width, c_uint height, c_uint stride);
		[LinkName("gtk_bitset_shift_left")]
		public static extern void ShiftLeft(Bitset* self, c_uint amount);
		[LinkName("gtk_bitset_shift_right")]
		public static extern void ShiftRight(Bitset* self, c_uint amount);
		[LinkName("gtk_bitset_splice")]
		public static extern void Splice(Bitset* self, c_uint position, c_uint removed, c_uint added);
		[LinkName("gtk_bitset_subtract")]
		public static extern void Subtract(Bitset* self, Bitset* other);
		[LinkName("gtk_bitset_union")]
		public static extern void Union(Bitset* self, Bitset* other);
		[LinkName("gtk_bitset_unref")]
		public static extern void Unref(Bitset* self);
	}
	[CRepr]
	public struct BitsetIter
	{
		public void* private_data;
		[LinkName("gtk_bitset_iter_get_value")]
		public static extern c_uint GetValue(BitsetIter* iter);
		[LinkName("gtk_bitset_iter_is_valid")]
		public static extern c_int IsValid(BitsetIter* iter);
		[LinkName("gtk_bitset_iter_next")]
		public static extern c_int Next(BitsetIter* iter, c_uint* value);
		[LinkName("gtk_bitset_iter_previous")]
		public static extern c_int Previous(BitsetIter* iter, c_uint* value);
	}
	[CRepr]
	public struct BookmarkListClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct BoolFilterClass
	{
		public FilterClass parent_class;
	}
	[CRepr]
	public struct Border
	{
		public c_short left;
		public c_short right;
		public c_short top;
		public c_short bottom;
		[LinkName("gtk_border_new")]
		public static extern Border* New();
		[LinkName("gtk_border_copy")]
		public static extern Border* Copy(Border* border_);
		[LinkName("gtk_border_free")]
		public static extern void Free(Border* border_);
	}
	[CRepr]
	public struct BoxClass
	{
		public WidgetClass parent_class;
		public void* padding;
	}
	[CRepr]
	public struct BoxLayoutClass
	{
		public LayoutManagerClass parent_class;
	}
	[CRepr]
	public struct BuildableIface
	{
		public GObject.TypeInterface g_iface;
		public function void(Buildable* buildable, char8* id) set_id;
		public function char8*(Buildable* buildable) get_id;
		public function void(Buildable* buildable, Builder* builder, GObject.Object* child, char8* type) add_child;
		public function void(Buildable* buildable, Builder* builder, char8* name, GObject.Value* value) set_buildable_property;
		public function GObject.Object*(Buildable* buildable, Builder* builder, char8* name) construct_child;
		public function c_int(Buildable* buildable, Builder* builder, GObject.Object* child, char8* tagname, BuildableParser* parser, void** data) custom_tag_start;
		public function void(Buildable* buildable, Builder* builder, GObject.Object* child, char8* tagname, void* data) custom_tag_end;
		public function void(Buildable* buildable, Builder* builder, GObject.Object* child, char8* tagname, void* data) custom_finished;
		public function void(Buildable* buildable, Builder* builder) parser_finished;
		public function GObject.Object*(Buildable* buildable, Builder* builder, char8* childname) get_internal_child;
	}
	[CRepr]
	public struct BuildableParseContext : int
	{
		[LinkName("gtk_buildable_parse_context_get_element")]
		public static extern char8* GetElement(BuildableParseContext* context);
		[LinkName("gtk_buildable_parse_context_get_element_stack")]
		public static extern char8* GetElementStack(BuildableParseContext* context);
		[LinkName("gtk_buildable_parse_context_get_position")]
		public static extern void GetPosition(BuildableParseContext* context, c_int* line_number, c_int* char_number);
		[LinkName("gtk_buildable_parse_context_pop")]
		public static extern void* Pop(BuildableParseContext* context);
		[LinkName("gtk_buildable_parse_context_push")]
		public static extern void Push(BuildableParseContext* context, BuildableParser* parser, void* user_data);
	}
	[CRepr]
	public struct BuildableParser
	{
		public function void(BuildableParseContext* context, char8* element_name, char8** attribute_names, char8** attribute_values, void* user_data) start_element;
		public function void(BuildableParseContext* context, char8* element_name, void* user_data) end_element;
		public function void(BuildableParseContext* context, char8* text, c_ulong text_len, void* user_data) text;
		public function void(BuildableParseContext* context, GLib.Error* error, void* user_data) error;
		public void* padding;
	}
	[CRepr]
	public struct BuilderCScopeClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct BuilderClass : int
	{
	}
	[CRepr]
	public struct BuilderListItemFactoryClass : int
	{
	}
	[CRepr]
	public struct BuilderScopeInterface
	{
		public GObject.TypeInterface g_iface;
		public function GLib.Type(BuilderScope* self, Builder* builder, char8* type_name) get_type_from_name;
		public function GLib.Type(BuilderScope* self, Builder* builder, char8* function_name) get_type_from_function;
		public function GObject.Closure*(BuilderScope* self, Builder* builder, char8* function_name, BuilderClosureFlags flags, GObject.Object* object) create_closure;
	}
	[CRepr]
	public struct ButtonClass
	{
		public WidgetClass parent_class;
		public function void(Button* button) clicked;
		public function void(Button* button) activate;
		public void* padding;
	}
	[CRepr]
	public struct ButtonPrivate : int
	{
	}
	[CRepr]
	public struct CallbackActionClass : int
	{
	}
	[CRepr]
	public struct CellAreaClass
	{
		public GObject.InitiallyUnownedClass parent_class;
		public function void(CellArea* area, CellRenderer* renderer) add;
		public function void(CellArea* area, CellRenderer* renderer) remove;
		public function void(CellArea* area, CellCallback callback, void* callback_data) _foreach;
		public function void(CellArea* area, CellAreaContext* context, Widget* widget, Gdk.Rectangle* cell_area, Gdk.Rectangle* background_area, CellAllocCallback callback, void* callback_data) foreach_alloc;
		public function c_int(CellArea* area, CellAreaContext* context, Widget* widget, Gdk.Event* event, Gdk.Rectangle* cell_area, CellRendererState flags) event;
		public function void(CellArea* area, CellAreaContext* context, Widget* widget, Snapshot* snapshot, Gdk.Rectangle* background_area, Gdk.Rectangle* cell_area, CellRendererState flags, c_int paint_focus) snapshot;
		public function void(CellArea* area, TreeModel* tree_model, TreeIter* iter, c_int is_expander, c_int is_expanded) apply_attributes;
		public function CellAreaContext*(CellArea* area) create_context;
		public function CellAreaContext*(CellArea* area, CellAreaContext* context) copy_context;
		public function SizeRequestMode(CellArea* area) get_request_mode;
		public function void(CellArea* area, CellAreaContext* context, Widget* widget, c_int* minimum_width, c_int* natural_width) get_preferred_width;
		public function void(CellArea* area, CellAreaContext* context, Widget* widget, c_int width, c_int* minimum_height, c_int* natural_height) get_preferred_height_for_width;
		public function void(CellArea* area, CellAreaContext* context, Widget* widget, c_int* minimum_height, c_int* natural_height) get_preferred_height;
		public function void(CellArea* area, CellAreaContext* context, Widget* widget, c_int height, c_int* minimum_width, c_int* natural_width) get_preferred_width_for_height;
		public function void(CellArea* area, CellRenderer* renderer, c_uint property_id, GObject.Value* value, GObject.ParamSpec* pspec) set_cell_property;
		public function void(CellArea* area, CellRenderer* renderer, c_uint property_id, GObject.Value* value, GObject.ParamSpec* pspec) get_cell_property;
		public function c_int(CellArea* area, DirectionType direction) focus;
		public function c_int(CellArea* area) is_activatable;
		public function c_int(CellArea* area, CellAreaContext* context, Widget* widget, Gdk.Rectangle* cell_area, CellRendererState flags, c_int edit_only) activate;
		public void* padding;
		[LinkName("gtk_cell_area_class_find_cell_property")]
		public static extern GObject.ParamSpec* FindCellProperty(CellAreaClass* aclass, char8* property_name);
		[LinkName("gtk_cell_area_class_install_cell_property")]
		public static extern void InstallCellProperty(CellAreaClass* aclass, c_uint property_id, GObject.ParamSpec* pspec);
		[LinkName("gtk_cell_area_class_list_cell_properties")]
		public static extern GObject.ParamSpec** ListCellProperties(CellAreaClass* aclass, c_uint* n_properties);
	}
	[CRepr]
	public struct CellAreaContextClass
	{
		public GObject.ObjectClass parent_class;
		public function void(CellAreaContext* context, c_int width, c_int height) allocate;
		public function void(CellAreaContext* context) reset;
		public function void(CellAreaContext* context, c_int width, c_int* minimum_height, c_int* natural_height) get_preferred_height_for_width;
		public function void(CellAreaContext* context, c_int height, c_int* minimum_width, c_int* natural_width) get_preferred_width_for_height;
		public void* padding;
	}
	[CRepr]
	public struct CellAreaContextPrivate : int
	{
	}
	[CRepr]
	public struct CellEditableIface
	{
		public GObject.TypeInterface g_iface;
		public function void(CellEditable* cell_editable) editing_done;
		public function void(CellEditable* cell_editable) remove_widget;
		public function void(CellEditable* cell_editable, Gdk.Event* event) start_editing;
	}
	[CRepr]
	public struct CellLayoutIface
	{
		public GObject.TypeInterface g_iface;
		public function void(CellLayout* cell_layout, CellRenderer* cell, c_int expand) pack_start;
		public function void(CellLayout* cell_layout, CellRenderer* cell, c_int expand) pack_end;
		public function void(CellLayout* cell_layout) clear;
		public function void(CellLayout* cell_layout, CellRenderer* cell, char8* attribute, c_int column) add_attribute;
		public function void(CellLayout* cell_layout, CellRenderer* cell, CellLayoutDataFunc func, void* func_data, GLib.DestroyNotify destroy) set_cell_data_func;
		public function void(CellLayout* cell_layout, CellRenderer* cell) clear_attributes;
		public function void(CellLayout* cell_layout, CellRenderer* cell, c_int position) reorder;
		public function GLib.List*(CellLayout* cell_layout) get_cells;
		public function CellArea*(CellLayout* cell_layout) get_area;
	}
	[CRepr]
	public struct CellRendererClass
	{
		public GObject.InitiallyUnownedClass parent_class;
		public function SizeRequestMode(CellRenderer* cell) get_request_mode;
		public function void(CellRenderer* cell, Widget* widget, c_int* minimum_size, c_int* natural_size) get_preferred_width;
		public function void(CellRenderer* cell, Widget* widget, c_int width, c_int* minimum_height, c_int* natural_height) get_preferred_height_for_width;
		public function void(CellRenderer* cell, Widget* widget, c_int* minimum_size, c_int* natural_size) get_preferred_height;
		public function void(CellRenderer* cell, Widget* widget, c_int height, c_int* minimum_width, c_int* natural_width) get_preferred_width_for_height;
		public function void(CellRenderer* cell, Widget* widget, CellRendererState flags, Gdk.Rectangle* cell_area, Gdk.Rectangle* aligned_area) get_aligned_area;
		public function void(CellRenderer* cell, Snapshot* snapshot, Widget* widget, Gdk.Rectangle* background_area, Gdk.Rectangle* cell_area, CellRendererState flags) snapshot;
		public function c_int(CellRenderer* cell, Gdk.Event* event, Widget* widget, char8* path, Gdk.Rectangle* background_area, Gdk.Rectangle* cell_area, CellRendererState flags) activate;
		public function CellEditable*(CellRenderer* cell, Gdk.Event* event, Widget* widget, char8* path, Gdk.Rectangle* background_area, Gdk.Rectangle* cell_area, CellRendererState flags) start_editing;
		public function void(CellRenderer* cell) editing_canceled;
		public function void(CellRenderer* cell, CellEditable* editable, char8* path) editing_started;
		public void* padding;
	}
	[CRepr]
	public struct CellRendererClassPrivate : int
	{
	}
	[CRepr]
	public struct CellRendererPrivate : int
	{
	}
	[CRepr]
	public struct CellRendererTextClass
	{
		public CellRendererClass parent_class;
		public function void(CellRendererText* cell_renderer_text, char8* path, char8* new_text) edited;
		public void* padding;
	}
	[CRepr]
	public struct CenterBoxClass : int
	{
	}
	[CRepr]
	public struct CenterLayoutClass
	{
		public LayoutManagerClass parent_class;
	}
	[CRepr]
	public struct CheckButtonClass
	{
		public WidgetClass parent_class;
		public function void(CheckButton* check_button) toggled;
		public function void(CheckButton* check_button) activate;
		public void* padding;
	}
	[CRepr]
	public struct ColorChooserInterface
	{
		public GObject.TypeInterface base_interface;
		public function void(ColorChooser* chooser, Gdk.RGBA* color) get_rgba;
		public function void(ColorChooser* chooser, Gdk.RGBA* color) set_rgba;
		public function void(ColorChooser* chooser, Orientation orientation, c_int colors_per_line, c_int n_colors, Gdk.RGBA* colors) add_palette;
		public function void(ColorChooser* chooser, Gdk.RGBA* color) color_activated;
		public void* padding;
	}
	[CRepr]
	public struct ColorDialogButtonClass
	{
		public WidgetClass parent_class;
	}
	[CRepr]
	public struct ColorDialogClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ColumnViewCellClass : int
	{
	}
	[CRepr]
	public struct ColumnViewClass : int
	{
	}
	[CRepr]
	public struct ColumnViewColumnClass : int
	{
	}
	[CRepr]
	public struct ColumnViewRowClass : int
	{
	}
	[CRepr]
	public struct ColumnViewSorterClass
	{
		public SorterClass parent_class;
	}
	[CRepr]
	public struct ComboBoxClass
	{
		public WidgetClass parent_class;
		public function void(ComboBox* combo_box) changed;
		public function char8*(ComboBox* combo_box, char8* path) format_entry_text;
		public function void(ComboBox* combo_box) activate;
		public void* padding;
	}
	[CRepr]
	public struct ConstraintClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ConstraintGuideClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ConstraintLayoutChildClass
	{
		public LayoutChildClass parent_class;
	}
	[CRepr]
	public struct ConstraintLayoutClass
	{
		public LayoutManagerClass parent_class;
	}
	[CRepr]
	public struct ConstraintTargetInterface : int
	{
	}
	[CRepr]
	public struct CssLocation
	{
		public c_ulong bytes;
		public c_ulong chars;
		public c_ulong lines;
		public c_ulong line_bytes;
		public c_ulong line_chars;
	}
	[CRepr]
	public struct CssProviderClass : int
	{
	}
	[CRepr]
	public struct CssProviderPrivate : int
	{
	}
	[CRepr]
	public struct CssSection
	{
		[LinkName("gtk_css_section_new")]
		public static extern CssSection* New(Gio.File* file, CssLocation* start, CssLocation* end);
		[LinkName("gtk_css_section_get_end_location")]
		public static extern CssLocation* GetEndLocation(CssSection* section);
		[LinkName("gtk_css_section_get_file")]
		public static extern Gio.File* GetFile(CssSection* section);
		[LinkName("gtk_css_section_get_parent")]
		public static extern CssSection* GetParent(CssSection* section);
		[LinkName("gtk_css_section_get_start_location")]
		public static extern CssLocation* GetStartLocation(CssSection* section);
		[LinkName("gtk_css_section_print")]
		public static extern void Print(CssSection* section, GLib.String* string);
		[LinkName("gtk_css_section_ref")]
		public static extern CssSection* Ref(CssSection* section);
		[LinkName("gtk_css_section_to_string")]
		public static extern char8* ToString(CssSection* section);
		[LinkName("gtk_css_section_unref")]
		public static extern void Unref(CssSection* section);
	}
	[CRepr]
	public struct CssStyleChange : int
	{
	}
	[CRepr]
	public struct CustomFilterClass
	{
		public FilterClass parent_class;
	}
	[CRepr]
	public struct CustomLayoutClass
	{
		public LayoutManagerClass parent_class;
	}
	[CRepr]
	public struct CustomSorterClass
	{
		public SorterClass parent_class;
	}
	[CRepr]
	public struct DialogClass
	{
		public WindowClass parent_class;
		public function void(Dialog* dialog, c_int response_id) response;
		public function void(Dialog* dialog) close;
		public void* padding;
	}
	[CRepr]
	public struct DirectoryListClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct DragIconClass
	{
		public WidgetClass parent_class;
	}
	[CRepr]
	public struct DragSourceClass : int
	{
	}
	[CRepr]
	public struct DrawingAreaClass
	{
		public WidgetClass parent_class;
		public function void(DrawingArea* area, c_int width, c_int height) resize;
		public void* padding;
	}
	[CRepr]
	public struct DropControllerMotionClass : int
	{
	}
	[CRepr]
	public struct DropDownClass
	{
		public WidgetClass parent_class;
	}
	[CRepr]
	public struct DropTargetAsyncClass : int
	{
	}
	[CRepr]
	public struct DropTargetClass : int
	{
	}
	[CRepr]
	public struct EditableInterface
	{
		public GObject.TypeInterface base_iface;
		public function void(Editable* editable, char8* text, c_int length, c_int* position) insert_text;
		public function void(Editable* editable, c_int start_pos, c_int end_pos) delete_text;
		public function void(Editable* editable) changed;
		public function char8*(Editable* editable) get_text;
		public function void(Editable* editable, char8* text, c_int length, c_int* position) do_insert_text;
		public function void(Editable* editable, c_int start_pos, c_int end_pos) do_delete_text;
		public function c_int(Editable* editable, c_int* start_pos, c_int* end_pos) get_selection_bounds;
		public function void(Editable* editable, c_int start_pos, c_int end_pos) set_selection_bounds;
		public function Editable*(Editable* editable) get_delegate;
	}
	[CRepr]
	public struct EditableLabelClass
	{
		public WidgetClass parent_class;
	}
	[CRepr]
	public struct EmojiChooserClass : int
	{
	}
	[CRepr]
	public struct EntryBufferClass
	{
		public GObject.ObjectClass parent_class;
		public function void(EntryBuffer* buffer, c_uint position, char8* chars, c_uint n_chars) inserted_text;
		public function void(EntryBuffer* buffer, c_uint position, c_uint n_chars) deleted_text;
		public function char8*(EntryBuffer* buffer, c_ulong* n_bytes) get_text;
		public function c_uint(EntryBuffer* buffer) get_length;
		public function c_uint(EntryBuffer* buffer, c_uint position, char8* chars, c_uint n_chars) insert_text;
		public function c_uint(EntryBuffer* buffer, c_uint position, c_uint n_chars) delete_text;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
		public function void() _gtk_reserved5;
		public function void() _gtk_reserved6;
		public function void() _gtk_reserved7;
		public function void() _gtk_reserved8;
	}
	[CRepr]
	public struct EntryClass
	{
		public WidgetClass parent_class;
		public function void(Entry* entry) activate;
		public void* padding;
	}
	[CRepr]
	public struct EventControllerClass : int
	{
	}
	[CRepr]
	public struct EventControllerFocusClass : int
	{
	}
	[CRepr]
	public struct EventControllerKeyClass : int
	{
	}
	[CRepr]
	public struct EventControllerLegacyClass : int
	{
	}
	[CRepr]
	public struct EventControllerMotionClass : int
	{
	}
	[CRepr]
	public struct EventControllerScrollClass : int
	{
	}
	[CRepr]
	public struct EveryFilterClass : int
	{
	}
	[CRepr]
	public struct ExpressionWatch
	{
		[LinkName("gtk_expression_watch_evaluate")]
		public static extern c_int Evaluate(ExpressionWatch* watch, GObject.Value* value);
		[LinkName("gtk_expression_watch_ref")]
		public static extern ExpressionWatch* Ref(ExpressionWatch* watch);
		[LinkName("gtk_expression_watch_unref")]
		public static extern void Unref(ExpressionWatch* watch);
		[LinkName("gtk_expression_watch_unwatch")]
		public static extern void Unwatch(ExpressionWatch* watch);
	}
	[CRepr]
	public struct FileChooserNativeClass
	{
		public NativeDialogClass parent_class;
	}
	[CRepr]
	public struct FileDialogClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FileLauncherClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FilterClass
	{
		public GObject.ObjectClass parent_class;
		public function c_int(Filter* self, GObject.Object* item) match;
		public function FilterMatch(Filter* self) get_strictness;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
		public function void() _gtk_reserved5;
		public function void() _gtk_reserved6;
		public function void() _gtk_reserved7;
		public function void() _gtk_reserved8;
	}
	[CRepr]
	public struct FilterListModelClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FixedClass
	{
		public WidgetClass parent_class;
		public void* padding;
	}
	[CRepr]
	public struct FixedLayoutChildClass
	{
		public LayoutChildClass parent_class;
	}
	[CRepr]
	public struct FixedLayoutClass
	{
		public LayoutManagerClass parent_class;
	}
	[CRepr]
	public struct FlattenListModelClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FlowBoxChildClass
	{
		public WidgetClass parent_class;
		public function void(FlowBoxChild* child) activate;
		public void* padding;
	}
	[CRepr]
	public struct FontChooserIface
	{
		public GObject.TypeInterface base_iface;
		public function Pango.FontFamily*(FontChooser* fontchooser) get_font_family;
		public function Pango.FontFace*(FontChooser* fontchooser) get_font_face;
		public function c_int(FontChooser* fontchooser) get_font_size;
		public function void(FontChooser* fontchooser, FontFilterFunc filter, void* user_data, GLib.DestroyNotify destroy) set_filter_func;
		public function void(FontChooser* chooser, char8* fontname) font_activated;
		public function void(FontChooser* fontchooser, Pango.FontMap* fontmap) set_font_map;
		public function Pango.FontMap*(FontChooser* fontchooser) get_font_map;
		public void* padding;
	}
	[CRepr]
	public struct FontDialogButtonClass
	{
		public WidgetClass parent_class;
	}
	[CRepr]
	public struct FontDialogClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct FrameClass
	{
		public WidgetClass parent_class;
		public function void(Frame* frame, Allocation* allocation) compute_child_allocation;
		public void* padding;
	}
	[CRepr]
	public struct GLAreaClass
	{
		public WidgetClass parent_class;
		public function c_int(GLArea* area, Gdk.GLContext* context) render;
		public function void(GLArea* area, c_int width, c_int height) resize;
		public function Gdk.GLContext*(GLArea* area) create_context;
		public void* _padding;
	}
	[CRepr]
	public struct GestureClass : int
	{
	}
	[CRepr]
	public struct GestureClickClass : int
	{
	}
	[CRepr]
	public struct GestureDragClass : int
	{
	}
	[CRepr]
	public struct GestureLongPressClass : int
	{
	}
	[CRepr]
	public struct GesturePanClass : int
	{
	}
	[CRepr]
	public struct GestureRotateClass : int
	{
	}
	[CRepr]
	public struct GestureSingleClass : int
	{
	}
	[CRepr]
	public struct GestureStylusClass : int
	{
	}
	[CRepr]
	public struct GestureSwipeClass : int
	{
	}
	[CRepr]
	public struct GestureZoomClass : int
	{
	}
	[CRepr]
	public struct GridClass
	{
		public WidgetClass parent_class;
		public void* padding;
	}
	[CRepr]
	public struct GridLayoutChildClass
	{
		public LayoutChildClass parent_class;
	}
	[CRepr]
	public struct GridLayoutClass
	{
		public LayoutManagerClass parent_class;
	}
	[CRepr]
	public struct GridViewClass : int
	{
	}
	[CRepr]
	public struct IMContextClass
	{
		public GObject.ObjectClass parent_class;
		public function void(IMContext* context) preedit_start;
		public function void(IMContext* context) preedit_end;
		public function void(IMContext* context) preedit_changed;
		public function void(IMContext* context, char8* str) commit;
		public function c_int(IMContext* context) retrieve_surrounding;
		public function c_int(IMContext* context, c_int offset, c_int n_chars) delete_surrounding;
		public function void(IMContext* context, Widget* widget) set_client_widget;
		public function void(IMContext* context, char8** str, Pango.AttrList** attrs, c_int* cursor_pos) get_preedit_string;
		public function c_int(IMContext* context, Gdk.Event* event) filter_keypress;
		public function void(IMContext* context) focus_in;
		public function void(IMContext* context) focus_out;
		public function void(IMContext* context) reset;
		public function void(IMContext* context, Gdk.Rectangle* area) set_cursor_location;
		public function void(IMContext* context, c_int use_preedit) set_use_preedit;
		public function void(IMContext* context, char8* text, c_int len, c_int cursor_index) set_surrounding;
		public function c_int(IMContext* context, char8** text, c_int* cursor_index) get_surrounding;
		public function void(IMContext* context, char8* text, c_int len, c_int cursor_index, c_int anchor_index) set_surrounding_with_selection;
		public function c_int(IMContext* context, char8** text, c_int* cursor_index, c_int* anchor_index) get_surrounding_with_selection;
		public function void(IMContext* context) activate_osk;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
	}
	[CRepr]
	public struct IMContextSimpleClass
	{
		public IMContextClass parent_class;
	}
	[CRepr]
	public struct IMContextSimplePrivate : int
	{
	}
	[CRepr]
	public struct IMMulticontextClass
	{
		public IMContextClass parent_class;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
	}
	[CRepr]
	public struct IMMulticontextPrivate : int
	{
	}
	[CRepr]
	public struct InscriptionClass
	{
		public WidgetClass parent_class;
	}
	[CRepr]
	public struct KeyvalTriggerClass : int
	{
	}
	[CRepr]
	public struct LayoutChildClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct LayoutManagerClass
	{
		public GObject.ObjectClass parent_class;
		public function SizeRequestMode(LayoutManager* manager, Widget* widget) get_request_mode;
		public function void(LayoutManager* manager, Widget* widget, Orientation orientation, c_int for_size, c_int* minimum, c_int* natural, c_int* minimum_baseline, c_int* natural_baseline) measure;
		public function void(LayoutManager* manager, Widget* widget, c_int width, c_int height, c_int baseline) allocate;
		public GLib.Type layout_child_type;
		public function LayoutChild*(LayoutManager* manager, Widget* widget, Widget* for_child) create_layout_child;
		public function void(LayoutManager* manager) root;
		public function void(LayoutManager* manager) unroot;
		public void* _padding;
	}
	[CRepr]
	public struct ListBaseClass : int
	{
	}
	[CRepr]
	public struct ListBoxRowClass
	{
		public WidgetClass parent_class;
		public function void(ListBoxRow* row) activate;
		public void* padding;
	}
	[CRepr]
	public struct ListHeaderClass : int
	{
	}
	[CRepr]
	public struct ListItemClass : int
	{
	}
	[CRepr]
	public struct ListItemFactoryClass : int
	{
	}
	[CRepr]
	public struct ListStoreClass
	{
		public GObject.ObjectClass parent_class;
		public void* padding;
	}
	[CRepr]
	public struct ListStorePrivate : int
	{
	}
	[CRepr]
	public struct ListViewClass : int
	{
	}
	[CRepr]
	public struct MapListModelClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct MediaControlsClass
	{
		public WidgetClass parent_class;
	}
	[CRepr]
	public struct MediaFileClass
	{
		public MediaStreamClass parent_class;
		public function void(MediaFile* self) open;
		public function void(MediaFile* self) close;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
	}
	[CRepr]
	public struct MediaStreamClass
	{
		public GObject.ObjectClass parent_class;
		public function c_int(MediaStream* self) play;
		public function void(MediaStream* self) pause;
		public function void(MediaStream* self, c_longlong timestamp) seek;
		public function void(MediaStream* self, c_int muted, double volume) update_audio;
		public function void(MediaStream* self, Gdk.Surface* surface) realize;
		public function void(MediaStream* self, Gdk.Surface* surface) unrealize;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
		public function void() _gtk_reserved5;
		public function void() _gtk_reserved6;
		public function void() _gtk_reserved7;
		public function void() _gtk_reserved8;
	}
	[CRepr]
	public struct MessageDialogClass : int
	{
	}
	[CRepr]
	public struct MnemonicActionClass : int
	{
	}
	[CRepr]
	public struct MnemonicTriggerClass : int
	{
	}
	[CRepr]
	public struct MountOperationClass
	{
		public Gio.MountOperationClass parent_class;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
	}
	[CRepr]
	public struct MountOperationPrivate : int
	{
	}
	[CRepr]
	public struct MultiFilterClass : int
	{
	}
	[CRepr]
	public struct MultiSelectionClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct MultiSorterClass
	{
		public SorterClass parent_class;
	}
	[CRepr]
	public struct NamedActionClass : int
	{
	}
	[CRepr]
	public struct NativeDialogClass
	{
		public GObject.ObjectClass parent_class;
		public function void(NativeDialog* self, c_int response_id) response;
		public function void(NativeDialog* self) show;
		public function void(NativeDialog* self) hide;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
	}
	[CRepr]
	public struct NativeInterface : int
	{
	}
	[CRepr]
	public struct NeverTriggerClass : int
	{
	}
	[CRepr]
	public struct NoSelectionClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct NothingActionClass : int
	{
	}
	[CRepr]
	public struct NumericSorterClass
	{
		public SorterClass parent_class;
	}
	[CRepr]
	public struct OrientableIface
	{
		public GObject.TypeInterface base_iface;
	}
	[CRepr]
	public struct OverlayLayoutChildClass
	{
		public LayoutChildClass parent_class;
	}
	[CRepr]
	public struct OverlayLayoutClass
	{
		public LayoutManagerClass parent_class;
	}
	[CRepr]
	public struct PadActionEntry
	{
		public PadActionType type;
		public c_int index;
		public c_int mode;
		public char8* label;
		public char8* action_name;
	}
	[CRepr]
	public struct PadControllerClass : int
	{
	}
	[CRepr]
	public struct PageRange
	{
		public c_int start;
		public c_int end;
	}
	[CRepr]
	public struct PaperSize
	{
		[LinkName("gtk_paper_size_new")]
		public static extern PaperSize* New(char8* name);
		[LinkName("gtk_paper_size_new_custom")]
		public static extern PaperSize* NewCustom(char8* name, char8* display_name, double width, double height, Unit unit);
		[LinkName("gtk_paper_size_new_from_gvariant")]
		public static extern PaperSize* NewFromGvariant(GLib.Variant* variant);
		[LinkName("gtk_paper_size_new_from_ipp")]
		public static extern PaperSize* NewFromIpp(char8* ipp_name, double width, double height);
		[LinkName("gtk_paper_size_new_from_key_file")]
		public static extern PaperSize* NewFromKeyFile(GLib.KeyFile* key_file, char8* group_name);
		[LinkName("gtk_paper_size_new_from_ppd")]
		public static extern PaperSize* NewFromPpd(char8* ppd_name, char8* ppd_display_name, double width, double height);
		[LinkName("gtk_paper_size_copy")]
		public static extern PaperSize* Copy(PaperSize* other);
		[LinkName("gtk_paper_size_free")]
		public static extern void Free(PaperSize* size);
		[LinkName("gtk_paper_size_get_default_bottom_margin")]
		public static extern double GetDefaultBottomMargin(PaperSize* size, Unit unit);
		[LinkName("gtk_paper_size_get_default_left_margin")]
		public static extern double GetDefaultLeftMargin(PaperSize* size, Unit unit);
		[LinkName("gtk_paper_size_get_default_right_margin")]
		public static extern double GetDefaultRightMargin(PaperSize* size, Unit unit);
		[LinkName("gtk_paper_size_get_default_top_margin")]
		public static extern double GetDefaultTopMargin(PaperSize* size, Unit unit);
		[LinkName("gtk_paper_size_get_display_name")]
		public static extern char8* GetDisplayName(PaperSize* size);
		[LinkName("gtk_paper_size_get_height")]
		public static extern double GetHeight(PaperSize* size, Unit unit);
		[LinkName("gtk_paper_size_get_name")]
		public static extern char8* GetName(PaperSize* size);
		[LinkName("gtk_paper_size_get_ppd_name")]
		public static extern char8* GetPpdName(PaperSize* size);
		[LinkName("gtk_paper_size_get_width")]
		public static extern double GetWidth(PaperSize* size, Unit unit);
		[LinkName("gtk_paper_size_is_custom")]
		public static extern c_int IsCustom(PaperSize* size);
		[LinkName("gtk_paper_size_is_equal")]
		public static extern c_int IsEqual(PaperSize* size1, PaperSize* size2);
		[LinkName("gtk_paper_size_is_ipp")]
		public static extern c_int IsIpp(PaperSize* size);
		[LinkName("gtk_paper_size_set_size")]
		public static extern void SetSize(PaperSize* size, double width, double height, Unit unit);
		[LinkName("gtk_paper_size_to_gvariant")]
		public static extern GLib.Variant* ToGvariant(PaperSize* paper_size);
		[LinkName("gtk_paper_size_to_key_file")]
		public static extern void ToKeyFile(PaperSize* size, GLib.KeyFile* key_file, char8* group_name);
	}
	[CRepr]
	public struct PasswordEntryBufferClass
	{
		public EntryBufferClass parent_class;
	}
	[CRepr]
	public struct PasswordEntryClass : int
	{
	}
	[CRepr]
	public struct PictureClass
	{
		public WidgetClass parent_class;
	}
	[CRepr]
	public struct PopoverClass
	{
		public WidgetClass parent_class;
		public function void(Popover* popover) closed;
		public function void(Popover* popover) activate_default;
		public void* reserved;
	}
	[CRepr]
	public struct PrintBackend : int
	{
	}
	[CRepr]
	public struct PrintOperationClass
	{
		public GObject.ObjectClass parent_class;
		public function void(PrintOperation* operation, PrintOperationResult result) done;
		public function void(PrintOperation* operation, PrintContext* context) begin_print;
		public function c_int(PrintOperation* operation, PrintContext* context) paginate;
		public function void(PrintOperation* operation, PrintContext* context, c_int page_nr, PageSetup* setup) request_page_setup;
		public function void(PrintOperation* operation, PrintContext* context, c_int page_nr) draw_page;
		public function void(PrintOperation* operation, PrintContext* context) end_print;
		public function void(PrintOperation* operation) status_changed;
		public function Widget*(PrintOperation* operation) create_custom_widget;
		public function void(PrintOperation* operation, Widget* widget) custom_widget_apply;
		public function c_int(PrintOperation* operation, PrintOperationPreview* preview, PrintContext* context, Window* parent) preview;
		public function void(PrintOperation* operation, Widget* widget, PageSetup* setup, PrintSettings* settings) update_custom_widget;
		public void* padding;
	}
	[CRepr]
	public struct PrintOperationPreviewIface
	{
		public GObject.TypeInterface g_iface;
		public function void(PrintOperationPreview* preview, PrintContext* context) ready;
		public function void(PrintOperationPreview* preview, PrintContext* context, PageSetup* page_setup) got_page_size;
		public function void(PrintOperationPreview* preview, c_int page_nr) render_page;
		public function c_int(PrintOperationPreview* preview, c_int page_nr) is_selected;
		public function void(PrintOperationPreview* preview) end_preview;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
		public function void() _gtk_reserved5;
		public function void() _gtk_reserved6;
		public function void() _gtk_reserved7;
		public function void() _gtk_reserved8;
	}
	[CRepr]
	public struct PrintOperationPrivate : int
	{
	}
	[CRepr]
	public struct RangeClass
	{
		public WidgetClass parent_class;
		public function void(Range* range) value_changed;
		public function void(Range* range, double new_value) adjust_bounds;
		public function void(Range* range, ScrollType scroll) move_slider;
		public function void(Range* range, Border* border_) get_range_border;
		public function c_int(Range* range, ScrollType scroll, double new_value) change_value;
		public void* padding;
	}
	[CRepr]
	public struct RecentData
	{
		public char8* display_name;
		public char8* description;
		public char8* mime_type;
		public char8* app_name;
		public char8* app_exec;
		public char8** groups;
		public c_int is_private;
	}
	[CRepr]
	public struct RecentInfo
	{
		[LinkName("gtk_recent_info_create_app_info")]
		public static extern Gio.AppInfo* CreateAppInfo(RecentInfo* info, char8* app_name);
		[LinkName("gtk_recent_info_exists")]
		public static extern c_int Exists(RecentInfo* info);
		[LinkName("gtk_recent_info_get_added")]
		public static extern GLib.DateTime* GetAdded(RecentInfo* info);
		[LinkName("gtk_recent_info_get_age")]
		public static extern c_int GetAge(RecentInfo* info);
		[LinkName("gtk_recent_info_get_application_info")]
		public static extern c_int GetApplicationInfo(RecentInfo* info, char8* app_name, char8** app_exec, c_uint* count, GLib.DateTime** stamp);
		[LinkName("gtk_recent_info_get_applications")]
		public static extern char8** GetApplications(RecentInfo* info, c_ulong* length);
		[LinkName("gtk_recent_info_get_description")]
		public static extern char8* GetDescription(RecentInfo* info);
		[LinkName("gtk_recent_info_get_display_name")]
		public static extern char8* GetDisplayName(RecentInfo* info);
		[LinkName("gtk_recent_info_get_gicon")]
		public static extern Gio.Icon* GetGicon(RecentInfo* info);
		[LinkName("gtk_recent_info_get_groups")]
		public static extern char8** GetGroups(RecentInfo* info, c_ulong* length);
		[LinkName("gtk_recent_info_get_mime_type")]
		public static extern char8* GetMimeType(RecentInfo* info);
		[LinkName("gtk_recent_info_get_modified")]
		public static extern GLib.DateTime* GetModified(RecentInfo* info);
		[LinkName("gtk_recent_info_get_private_hint")]
		public static extern c_int GetPrivateHint(RecentInfo* info);
		[LinkName("gtk_recent_info_get_short_name")]
		public static extern char8* GetShortName(RecentInfo* info);
		[LinkName("gtk_recent_info_get_uri")]
		public static extern char8* GetUri(RecentInfo* info);
		[LinkName("gtk_recent_info_get_uri_display")]
		public static extern char8* GetUriDisplay(RecentInfo* info);
		[LinkName("gtk_recent_info_get_visited")]
		public static extern GLib.DateTime* GetVisited(RecentInfo* info);
		[LinkName("gtk_recent_info_has_application")]
		public static extern c_int HasApplication(RecentInfo* info, char8* app_name);
		[LinkName("gtk_recent_info_has_group")]
		public static extern c_int HasGroup(RecentInfo* info, char8* group_name);
		[LinkName("gtk_recent_info_is_local")]
		public static extern c_int IsLocal(RecentInfo* info);
		[LinkName("gtk_recent_info_last_application")]
		public static extern char8* LastApplication(RecentInfo* info);
		[LinkName("gtk_recent_info_match")]
		public static extern c_int Match(RecentInfo* info_a, RecentInfo* info_b);
		[LinkName("gtk_recent_info_ref")]
		public static extern RecentInfo* Ref(RecentInfo* info);
		[LinkName("gtk_recent_info_unref")]
		public static extern void Unref(RecentInfo* info);
	}
	[CRepr]
	public struct RecentManagerClass
	{
		public GObject.ObjectClass parent_class;
		public function void(RecentManager* manager) changed;
		public function void() _gtk_recent1;
		public function void() _gtk_recent2;
		public function void() _gtk_recent3;
		public function void() _gtk_recent4;
	}
	[CRepr]
	public struct RecentManagerPrivate : int
	{
	}
	[CRepr]
	public struct RequestedSize
	{
		public void* data;
		public c_int minimum_size;
		public c_int natural_size;
	}
	[CRepr]
	public struct Requisition
	{
		public c_int width;
		public c_int height;
		[LinkName("gtk_requisition_new")]
		public static extern Requisition* New();
		[LinkName("gtk_requisition_copy")]
		public static extern Requisition* Copy(Requisition* requisition);
		[LinkName("gtk_requisition_free")]
		public static extern void Free(Requisition* requisition);
	}
	[CRepr]
	public struct RootInterface : int
	{
	}
	[CRepr]
	public struct ScaleButtonClass
	{
		public WidgetClass parent_class;
		public function void(ScaleButton* button, double value) value_changed;
		public void* padding;
	}
	[CRepr]
	public struct ScaleClass
	{
		public RangeClass parent_class;
		public function void(Scale* scale, c_int* x, c_int* y) get_layout_offsets;
		public void* padding;
	}
	[CRepr]
	public struct ScrollableInterface
	{
		public GObject.TypeInterface base_iface;
		public function c_int(Scrollable* scrollable, Border* border) get_border;
	}
	[CRepr]
	public struct SectionModelInterface
	{
		public GObject.TypeInterface g_iface;
		public function void(SectionModel* self, c_uint position, c_uint* out_start, c_uint* out_end) get_section;
	}
	[CRepr]
	public struct SelectionFilterModelClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct SelectionModelInterface
	{
		public GObject.TypeInterface g_iface;
		public function c_int(SelectionModel* model, c_uint position) is_selected;
		public function Bitset*(SelectionModel* model, c_uint position, c_uint n_items) get_selection_in_range;
		public function c_int(SelectionModel* model, c_uint position, c_int unselect_rest) select_item;
		public function c_int(SelectionModel* model, c_uint position) unselect_item;
		public function c_int(SelectionModel* model, c_uint position, c_uint n_items, c_int unselect_rest) select_range;
		public function c_int(SelectionModel* model, c_uint position, c_uint n_items) unselect_range;
		public function c_int(SelectionModel* model) select_all;
		public function c_int(SelectionModel* model) unselect_all;
		public function c_int(SelectionModel* model, Bitset* selected, Bitset* mask) set_selection;
	}
	[CRepr]
	public struct ShortcutActionClass : int
	{
	}
	[CRepr]
	public struct ShortcutClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct ShortcutControllerClass : int
	{
	}
	[CRepr]
	public struct ShortcutLabelClass : int
	{
	}
	[CRepr]
	public struct ShortcutManagerInterface
	{
		public GObject.TypeInterface g_iface;
		public function void(ShortcutManager* self, ShortcutController* controller) add_controller;
		public function void(ShortcutManager* self, ShortcutController* controller) remove_controller;
	}
	[CRepr]
	public struct ShortcutTriggerClass : int
	{
	}
	[CRepr]
	public struct ShortcutsGroupClass : int
	{
	}
	[CRepr]
	public struct ShortcutsSectionClass : int
	{
	}
	[CRepr]
	public struct ShortcutsShortcutClass : int
	{
	}
	[CRepr]
	public struct SignalActionClass : int
	{
	}
	[CRepr]
	public struct SignalListItemFactoryClass : int
	{
	}
	[CRepr]
	public struct SingleSelectionClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct SliceListModelClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct SnapshotClass : int
	{
	}
	[CRepr]
	public struct SortListModelClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct SorterClass
	{
		public GObject.ObjectClass parent_class;
		public function Ordering(Sorter* self, GObject.Object* item1, GObject.Object* item2) compare;
		public function SorterOrder(Sorter* self) get_order;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
		public function void() _gtk_reserved5;
		public function void() _gtk_reserved6;
		public function void() _gtk_reserved7;
		public function void() _gtk_reserved8;
	}
	[CRepr]
	public struct StringFilterClass
	{
		public FilterClass parent_class;
	}
	[CRepr]
	public struct StringListClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct StringObjectClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct StringSorterClass
	{
		public SorterClass parent_class;
	}
	[CRepr]
	public struct StyleContextClass
	{
		public GObject.ObjectClass parent_class;
		public function void(StyleContext* context) changed;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
	}
	[CRepr]
	public struct SymbolicPaintableInterface
	{
		public GObject.TypeInterface g_iface;
		public function void(SymbolicPaintable* paintable, Gdk.Snapshot* snapshot, double width, double height, Gdk.RGBA* colors, c_ulong n_colors) snapshot_symbolic;
	}
	[CRepr]
	public struct TextBufferClass
	{
		public GObject.ObjectClass parent_class;
		public function void(TextBuffer* buffer, TextIter* pos, char8* new_text, c_int new_text_length) insert_text;
		public function void(TextBuffer* buffer, TextIter* iter, Gdk.Paintable* paintable) insert_paintable;
		public function void(TextBuffer* buffer, TextIter* iter, TextChildAnchor* anchor) insert_child_anchor;
		public function void(TextBuffer* buffer, TextIter* start, TextIter* end) delete_range;
		public function void(TextBuffer* buffer) changed;
		public function void(TextBuffer* buffer) modified_changed;
		public function void(TextBuffer* buffer, TextIter* location, TextMark* mark) mark_set;
		public function void(TextBuffer* buffer, TextMark* mark) mark_deleted;
		public function void(TextBuffer* buffer, TextTag* tag, TextIter* start, TextIter* end) apply_tag;
		public function void(TextBuffer* buffer, TextTag* tag, TextIter* start, TextIter* end) remove_tag;
		public function void(TextBuffer* buffer) begin_user_action;
		public function void(TextBuffer* buffer) end_user_action;
		public function void(TextBuffer* buffer, Gdk.Clipboard* clipboard) paste_done;
		public function void(TextBuffer* buffer) undo;
		public function void(TextBuffer* buffer) redo;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
	}
	[CRepr]
	public struct TextBufferPrivate : int
	{
	}
	[CRepr]
	public struct TextChildAnchorClass
	{
		public GObject.ObjectClass parent_class;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
	}
	[CRepr]
	public struct TextIter
	{
		public void* dummy1;
		public void* dummy2;
		public c_int dummy3;
		public c_int dummy4;
		public c_int dummy5;
		public c_int dummy6;
		public c_int dummy7;
		public c_int dummy8;
		public void* dummy9;
		public void* dummy10;
		public c_int dummy11;
		public c_int dummy12;
		public c_int dummy13;
		public void* dummy14;
		[LinkName("gtk_text_iter_assign")]
		public static extern void Assign(TextIter* iter, TextIter* other);
		[LinkName("gtk_text_iter_backward_char")]
		public static extern c_int BackwardChar(TextIter* iter);
		[LinkName("gtk_text_iter_backward_chars")]
		public static extern c_int BackwardChars(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_backward_cursor_position")]
		public static extern c_int BackwardCursorPosition(TextIter* iter);
		[LinkName("gtk_text_iter_backward_cursor_positions")]
		public static extern c_int BackwardCursorPositions(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_backward_find_char")]
		public static extern c_int BackwardFindChar(TextIter* iter, TextCharPredicate pred, void* user_data, TextIter* limit);
		[LinkName("gtk_text_iter_backward_line")]
		public static extern c_int BackwardLine(TextIter* iter);
		[LinkName("gtk_text_iter_backward_lines")]
		public static extern c_int BackwardLines(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_backward_search")]
		public static extern c_int BackwardSearch(TextIter* iter, char8* str, TextSearchFlags flags, TextIter* match_start, TextIter* match_end, TextIter* limit);
		[LinkName("gtk_text_iter_backward_sentence_start")]
		public static extern c_int BackwardSentenceStart(TextIter* iter);
		[LinkName("gtk_text_iter_backward_sentence_starts")]
		public static extern c_int BackwardSentenceStarts(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_backward_to_tag_toggle")]
		public static extern c_int BackwardToTagToggle(TextIter* iter, TextTag* tag);
		[LinkName("gtk_text_iter_backward_visible_cursor_position")]
		public static extern c_int BackwardVisibleCursorPosition(TextIter* iter);
		[LinkName("gtk_text_iter_backward_visible_cursor_positions")]
		public static extern c_int BackwardVisibleCursorPositions(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_backward_visible_line")]
		public static extern c_int BackwardVisibleLine(TextIter* iter);
		[LinkName("gtk_text_iter_backward_visible_lines")]
		public static extern c_int BackwardVisibleLines(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_backward_visible_word_start")]
		public static extern c_int BackwardVisibleWordStart(TextIter* iter);
		[LinkName("gtk_text_iter_backward_visible_word_starts")]
		public static extern c_int BackwardVisibleWordStarts(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_backward_word_start")]
		public static extern c_int BackwardWordStart(TextIter* iter);
		[LinkName("gtk_text_iter_backward_word_starts")]
		public static extern c_int BackwardWordStarts(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_can_insert")]
		public static extern c_int CanInsert(TextIter* iter, c_int default_editability);
		[LinkName("gtk_text_iter_compare")]
		public static extern c_int Compare(TextIter* lhs, TextIter* rhs);
		[LinkName("gtk_text_iter_copy")]
		public static extern TextIter* Copy(TextIter* iter);
		[LinkName("gtk_text_iter_editable")]
		public static extern c_int Editable(TextIter* iter, c_int default_setting);
		[LinkName("gtk_text_iter_ends_line")]
		public static extern c_int EndsLine(TextIter* iter);
		[LinkName("gtk_text_iter_ends_sentence")]
		public static extern c_int EndsSentence(TextIter* iter);
		[LinkName("gtk_text_iter_ends_tag")]
		public static extern c_int EndsTag(TextIter* iter, TextTag* tag);
		[LinkName("gtk_text_iter_ends_word")]
		public static extern c_int EndsWord(TextIter* iter);
		[LinkName("gtk_text_iter_equal")]
		public static extern c_int Equal(TextIter* lhs, TextIter* rhs);
		[LinkName("gtk_text_iter_forward_char")]
		public static extern c_int ForwardChar(TextIter* iter);
		[LinkName("gtk_text_iter_forward_chars")]
		public static extern c_int ForwardChars(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_forward_cursor_position")]
		public static extern c_int ForwardCursorPosition(TextIter* iter);
		[LinkName("gtk_text_iter_forward_cursor_positions")]
		public static extern c_int ForwardCursorPositions(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_forward_find_char")]
		public static extern c_int ForwardFindChar(TextIter* iter, TextCharPredicate pred, void* user_data, TextIter* limit);
		[LinkName("gtk_text_iter_forward_line")]
		public static extern c_int ForwardLine(TextIter* iter);
		[LinkName("gtk_text_iter_forward_lines")]
		public static extern c_int ForwardLines(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_forward_search")]
		public static extern c_int ForwardSearch(TextIter* iter, char8* str, TextSearchFlags flags, TextIter* match_start, TextIter* match_end, TextIter* limit);
		[LinkName("gtk_text_iter_forward_sentence_end")]
		public static extern c_int ForwardSentenceEnd(TextIter* iter);
		[LinkName("gtk_text_iter_forward_sentence_ends")]
		public static extern c_int ForwardSentenceEnds(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_forward_to_end")]
		public static extern void ForwardToEnd(TextIter* iter);
		[LinkName("gtk_text_iter_forward_to_line_end")]
		public static extern c_int ForwardToLineEnd(TextIter* iter);
		[LinkName("gtk_text_iter_forward_to_tag_toggle")]
		public static extern c_int ForwardToTagToggle(TextIter* iter, TextTag* tag);
		[LinkName("gtk_text_iter_forward_visible_cursor_position")]
		public static extern c_int ForwardVisibleCursorPosition(TextIter* iter);
		[LinkName("gtk_text_iter_forward_visible_cursor_positions")]
		public static extern c_int ForwardVisibleCursorPositions(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_forward_visible_line")]
		public static extern c_int ForwardVisibleLine(TextIter* iter);
		[LinkName("gtk_text_iter_forward_visible_lines")]
		public static extern c_int ForwardVisibleLines(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_forward_visible_word_end")]
		public static extern c_int ForwardVisibleWordEnd(TextIter* iter);
		[LinkName("gtk_text_iter_forward_visible_word_ends")]
		public static extern c_int ForwardVisibleWordEnds(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_forward_word_end")]
		public static extern c_int ForwardWordEnd(TextIter* iter);
		[LinkName("gtk_text_iter_forward_word_ends")]
		public static extern c_int ForwardWordEnds(TextIter* iter, c_int count);
		[LinkName("gtk_text_iter_free")]
		public static extern void Free(TextIter* iter);
		[LinkName("gtk_text_iter_get_buffer")]
		public static extern TextBuffer* GetBuffer(TextIter* iter);
		[LinkName("gtk_text_iter_get_bytes_in_line")]
		public static extern c_int GetBytesInLine(TextIter* iter);
		[LinkName("gtk_text_iter_get_char")]
		public static extern c_uint GetChar(TextIter* iter);
		[LinkName("gtk_text_iter_get_chars_in_line")]
		public static extern c_int GetCharsInLine(TextIter* iter);
		[LinkName("gtk_text_iter_get_child_anchor")]
		public static extern TextChildAnchor* GetChildAnchor(TextIter* iter);
		[LinkName("gtk_text_iter_get_language")]
		public static extern Pango.Language* GetLanguage(TextIter* iter);
		[LinkName("gtk_text_iter_get_line")]
		public static extern c_int GetLine(TextIter* iter);
		[LinkName("gtk_text_iter_get_line_index")]
		public static extern c_int GetLineIndex(TextIter* iter);
		[LinkName("gtk_text_iter_get_line_offset")]
		public static extern c_int GetLineOffset(TextIter* iter);
		[LinkName("gtk_text_iter_get_marks")]
		public static extern GLib.SList* GetMarks(TextIter* iter);
		[LinkName("gtk_text_iter_get_offset")]
		public static extern c_int GetOffset(TextIter* iter);
		[LinkName("gtk_text_iter_get_paintable")]
		public static extern Gdk.Paintable* GetPaintable(TextIter* iter);
		[LinkName("gtk_text_iter_get_slice")]
		public static extern char8* GetSlice(TextIter* start, TextIter* end);
		[LinkName("gtk_text_iter_get_tags")]
		public static extern GLib.SList* GetTags(TextIter* iter);
		[LinkName("gtk_text_iter_get_text")]
		public static extern char8* GetText(TextIter* start, TextIter* end);
		[LinkName("gtk_text_iter_get_toggled_tags")]
		public static extern GLib.SList* GetToggledTags(TextIter* iter, c_int toggled_on);
		[LinkName("gtk_text_iter_get_visible_line_index")]
		public static extern c_int GetVisibleLineIndex(TextIter* iter);
		[LinkName("gtk_text_iter_get_visible_line_offset")]
		public static extern c_int GetVisibleLineOffset(TextIter* iter);
		[LinkName("gtk_text_iter_get_visible_slice")]
		public static extern char8* GetVisibleSlice(TextIter* start, TextIter* end);
		[LinkName("gtk_text_iter_get_visible_text")]
		public static extern char8* GetVisibleText(TextIter* start, TextIter* end);
		[LinkName("gtk_text_iter_has_tag")]
		public static extern c_int HasTag(TextIter* iter, TextTag* tag);
		[LinkName("gtk_text_iter_in_range")]
		public static extern c_int InRange(TextIter* iter, TextIter* start, TextIter* end);
		[LinkName("gtk_text_iter_inside_sentence")]
		public static extern c_int InsideSentence(TextIter* iter);
		[LinkName("gtk_text_iter_inside_word")]
		public static extern c_int InsideWord(TextIter* iter);
		[LinkName("gtk_text_iter_is_cursor_position")]
		public static extern c_int IsCursorPosition(TextIter* iter);
		[LinkName("gtk_text_iter_is_end")]
		public static extern c_int IsEnd(TextIter* iter);
		[LinkName("gtk_text_iter_is_start")]
		public static extern c_int IsStart(TextIter* iter);
		[LinkName("gtk_text_iter_order")]
		public static extern void Order(TextIter* first, TextIter* second);
		[LinkName("gtk_text_iter_set_line")]
		public static extern void SetLine(TextIter* iter, c_int line_number);
		[LinkName("gtk_text_iter_set_line_index")]
		public static extern void SetLineIndex(TextIter* iter, c_int byte_on_line);
		[LinkName("gtk_text_iter_set_line_offset")]
		public static extern void SetLineOffset(TextIter* iter, c_int char_on_line);
		[LinkName("gtk_text_iter_set_offset")]
		public static extern void SetOffset(TextIter* iter, c_int char_offset);
		[LinkName("gtk_text_iter_set_visible_line_index")]
		public static extern void SetVisibleLineIndex(TextIter* iter, c_int byte_on_line);
		[LinkName("gtk_text_iter_set_visible_line_offset")]
		public static extern void SetVisibleLineOffset(TextIter* iter, c_int char_on_line);
		[LinkName("gtk_text_iter_starts_line")]
		public static extern c_int StartsLine(TextIter* iter);
		[LinkName("gtk_text_iter_starts_sentence")]
		public static extern c_int StartsSentence(TextIter* iter);
		[LinkName("gtk_text_iter_starts_tag")]
		public static extern c_int StartsTag(TextIter* iter, TextTag* tag);
		[LinkName("gtk_text_iter_starts_word")]
		public static extern c_int StartsWord(TextIter* iter);
		[LinkName("gtk_text_iter_toggles_tag")]
		public static extern c_int TogglesTag(TextIter* iter, TextTag* tag);
	}
	[CRepr]
	public struct TextMarkClass
	{
		public GObject.ObjectClass parent_class;
		public void* padding;
	}
	[CRepr]
	public struct TextTagClass
	{
		public GObject.ObjectClass parent_class;
		public void* padding;
	}
	[CRepr]
	public struct TextTagPrivate : int
	{
	}
	[CRepr]
	public struct TextViewClass
	{
		public WidgetClass parent_class;
		public function void(TextView* text_view, MovementStep step, c_int count, c_int extend_selection) move_cursor;
		public function void(TextView* text_view) set_anchor;
		public function void(TextView* text_view, char8* str) insert_at_cursor;
		public function void(TextView* text_view, DeleteType type, c_int count) delete_from_cursor;
		public function void(TextView* text_view) backspace;
		public function void(TextView* text_view) cut_clipboard;
		public function void(TextView* text_view) copy_clipboard;
		public function void(TextView* text_view) paste_clipboard;
		public function void(TextView* text_view) toggle_overwrite;
		public function TextBuffer*(TextView* text_view) create_buffer;
		public function void(TextView* text_view, TextViewLayer layer, Snapshot* snapshot) snapshot_layer;
		public function c_int(TextView* text_view, TextExtendSelection granularity, TextIter* location, TextIter* start, TextIter* end) extend_selection;
		public function void(TextView* text_view) insert_emoji;
		public void* padding;
	}
	[CRepr]
	public struct TextViewPrivate : int
	{
	}
	[CRepr]
	public struct ToggleButtonClass
	{
		public ButtonClass parent_class;
		public function void(ToggleButton* toggle_button) toggled;
		public void* padding;
	}
	[CRepr]
	public struct TreeDragDestIface
	{
		public GObject.TypeInterface g_iface;
		public function c_int(TreeDragDest* drag_dest, TreePath* dest, GObject.Value* value) drag_data_received;
		public function c_int(TreeDragDest* drag_dest, TreePath* dest_path, GObject.Value* value) row_drop_possible;
	}
	[CRepr]
	public struct TreeDragSourceIface
	{
		public GObject.TypeInterface g_iface;
		public function c_int(TreeDragSource* drag_source, TreePath* path) row_draggable;
		public function Gdk.ContentProvider*(TreeDragSource* drag_source, TreePath* path) drag_data_get;
		public function c_int(TreeDragSource* drag_source, TreePath* path) drag_data_delete;
	}
	[CRepr]
	public struct TreeExpanderClass
	{
		public WidgetClass parent_class;
	}
	[CRepr]
	public struct TreeIter
	{
		public c_int stamp;
		public void* user_data;
		public void* user_data2;
		public void* user_data3;
		[LinkName("gtk_tree_iter_copy")]
		public static extern TreeIter* Copy(TreeIter* iter);
		[LinkName("gtk_tree_iter_free")]
		public static extern void Free(TreeIter* iter);
	}
	[CRepr]
	public struct TreeListModelClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct TreeListRowClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct TreeListRowSorterClass
	{
		public SorterClass parent_class;
	}
	[CRepr]
	public struct TreeModelFilterClass
	{
		public GObject.ObjectClass parent_class;
		public function c_int(TreeModelFilter* self, TreeModel* child_model, TreeIter* iter) visible;
		public function void(TreeModelFilter* self, TreeModel* child_model, TreeIter* iter, GObject.Value* value, c_int column) modify;
		public void* padding;
	}
	[CRepr]
	public struct TreeModelFilterPrivate : int
	{
	}
	[CRepr]
	public struct TreeModelIface
	{
		public GObject.TypeInterface g_iface;
		public function void(TreeModel* tree_model, TreePath* path, TreeIter* iter) row_changed;
		public function void(TreeModel* tree_model, TreePath* path, TreeIter* iter) row_inserted;
		public function void(TreeModel* tree_model, TreePath* path, TreeIter* iter) row_has_child_toggled;
		public function void(TreeModel* tree_model, TreePath* path) row_deleted;
		public function void(TreeModel* tree_model, TreePath* path, TreeIter* iter, c_int* new_order) rows_reordered;
		public function TreeModelFlags(TreeModel* tree_model) get_flags;
		public function c_int(TreeModel* tree_model) get_n_columns;
		public function GLib.Type(TreeModel* tree_model, c_int index_) get_column_type;
		public function c_int(TreeModel* tree_model, TreeIter* iter, TreePath* path) get_iter;
		public function TreePath*(TreeModel* tree_model, TreeIter* iter) get_path;
		public function void(TreeModel* tree_model, TreeIter* iter, c_int column, GObject.Value* value) get_value;
		public function c_int(TreeModel* tree_model, TreeIter* iter) iter_next;
		public function c_int(TreeModel* tree_model, TreeIter* iter) iter_previous;
		public function c_int(TreeModel* tree_model, TreeIter* iter, TreeIter* parent) iter_children;
		public function c_int(TreeModel* tree_model, TreeIter* iter) iter_has_child;
		public function c_int(TreeModel* tree_model, TreeIter* iter) iter_n_children;
		public function c_int(TreeModel* tree_model, TreeIter* iter, TreeIter* parent, c_int n) iter_nth_child;
		public function c_int(TreeModel* tree_model, TreeIter* iter, TreeIter* child) iter_parent;
		public function void(TreeModel* tree_model, TreeIter* iter) ref_node;
		public function void(TreeModel* tree_model, TreeIter* iter) unref_node;
	}
	[CRepr]
	public struct TreeModelSortClass
	{
		public GObject.ObjectClass parent_class;
		public void* padding;
	}
	[CRepr]
	public struct TreeModelSortPrivate : int
	{
	}
	[CRepr]
	public struct TreePath
	{
		[LinkName("gtk_tree_path_new")]
		public static extern TreePath* New();
		[LinkName("gtk_tree_path_new_first")]
		public static extern TreePath* NewFirst();
		[LinkName("gtk_tree_path_new_from_indicesv")]
		public static extern TreePath* NewFromIndicesv(c_int* indices, c_ulong length);
		[LinkName("gtk_tree_path_new_from_string")]
		public static extern TreePath* NewFromString(char8* path);
		[LinkName("gtk_tree_path_append_index")]
		public static extern void AppendIndex(TreePath* path, c_int index_);
		[LinkName("gtk_tree_path_compare")]
		public static extern c_int Compare(TreePath* a, TreePath* b);
		[LinkName("gtk_tree_path_copy")]
		public static extern TreePath* Copy(TreePath* path);
		[LinkName("gtk_tree_path_down")]
		public static extern void Down(TreePath* path);
		[LinkName("gtk_tree_path_free")]
		public static extern void Free(TreePath* path);
		[LinkName("gtk_tree_path_get_depth")]
		public static extern c_int GetDepth(TreePath* path);
		[LinkName("gtk_tree_path_get_indices_with_depth")]
		public static extern c_int* GetIndicesWithDepth(TreePath* path, c_int* depth);
		[LinkName("gtk_tree_path_is_ancestor")]
		public static extern c_int IsAncestor(TreePath* path, TreePath* descendant);
		[LinkName("gtk_tree_path_is_descendant")]
		public static extern c_int IsDescendant(TreePath* path, TreePath* ancestor);
		[LinkName("gtk_tree_path_next")]
		public static extern void Next(TreePath* path);
		[LinkName("gtk_tree_path_prepend_index")]
		public static extern void PrependIndex(TreePath* path, c_int index_);
		[LinkName("gtk_tree_path_prev")]
		public static extern c_int Prev(TreePath* path);
		[LinkName("gtk_tree_path_to_string")]
		public static extern char8* ToString(TreePath* path);
		[LinkName("gtk_tree_path_up")]
		public static extern c_int Up(TreePath* path);
	}
	[CRepr]
	public struct TreeRowReference
	{
		[LinkName("gtk_tree_row_reference_new")]
		public static extern TreeRowReference* New(TreeModel* model, TreePath* path);
		[LinkName("gtk_tree_row_reference_new_proxy")]
		public static extern TreeRowReference* NewProxy(GObject.Object* proxy, TreeModel* model, TreePath* path);
		[LinkName("gtk_tree_row_reference_copy")]
		public static extern TreeRowReference* Copy(TreeRowReference* reference);
		[LinkName("gtk_tree_row_reference_free")]
		public static extern void Free(TreeRowReference* reference);
		[LinkName("gtk_tree_row_reference_get_model")]
		public static extern TreeModel* GetModel(TreeRowReference* reference);
		[LinkName("gtk_tree_row_reference_get_path")]
		public static extern TreePath* GetPath(TreeRowReference* reference);
		[LinkName("gtk_tree_row_reference_valid")]
		public static extern c_int Valid(TreeRowReference* reference);
	}
	[CRepr]
	public struct TreeSortableIface
	{
		public GObject.TypeInterface g_iface;
		public function void(TreeSortable* sortable) sort_column_changed;
		public function c_int(TreeSortable* sortable, c_int* sort_column_id, SortType* order) get_sort_column_id;
		public function void(TreeSortable* sortable, c_int sort_column_id, SortType order) set_sort_column_id;
		public function void(TreeSortable* sortable, c_int sort_column_id, TreeIterCompareFunc sort_func, void* user_data, GLib.DestroyNotify destroy) set_sort_func;
		public function void(TreeSortable* sortable, TreeIterCompareFunc sort_func, void* user_data, GLib.DestroyNotify destroy) set_default_sort_func;
		public function c_int(TreeSortable* sortable) has_default_sort_func;
	}
	[CRepr]
	public struct TreeStoreClass
	{
		public GObject.ObjectClass parent_class;
		public void* padding;
	}
	[CRepr]
	public struct TreeStorePrivate : int
	{
	}
	[CRepr]
	public struct TreeViewClass
	{
		public WidgetClass parent_class;
		public function void(TreeView* tree_view, TreePath* path, TreeViewColumn* column) row_activated;
		public function c_int(TreeView* tree_view, TreeIter* iter, TreePath* path) test_expand_row;
		public function c_int(TreeView* tree_view, TreeIter* iter, TreePath* path) test_collapse_row;
		public function void(TreeView* tree_view, TreeIter* iter, TreePath* path) row_expanded;
		public function void(TreeView* tree_view, TreeIter* iter, TreePath* path) row_collapsed;
		public function void(TreeView* tree_view) columns_changed;
		public function void(TreeView* tree_view) cursor_changed;
		public function c_int(TreeView* tree_view, MovementStep step, c_int count, c_int extend, c_int modify) move_cursor;
		public function c_int(TreeView* tree_view) select_all;
		public function c_int(TreeView* tree_view) unselect_all;
		public function c_int(TreeView* tree_view, c_int start_editing) select_cursor_row;
		public function c_int(TreeView* tree_view) toggle_cursor_row;
		public function c_int(TreeView* tree_view, c_int logical, c_int expand, c_int open_all) expand_collapse_cursor_row;
		public function c_int(TreeView* tree_view) select_cursor_parent;
		public function c_int(TreeView* tree_view) start_interactive_search;
		public void* _reserved;
	}
	[CRepr]
	public struct UriLauncherClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct VideoClass
	{
		public WidgetClass parent_class;
	}
	[CRepr]
	public struct WidgetClass
	{
		public GObject.InitiallyUnownedClass parent_class;
		public function void(Widget* widget) show;
		public function void(Widget* widget) hide;
		public function void(Widget* widget) map;
		public function void(Widget* widget) unmap;
		public function void(Widget* widget) realize;
		public function void(Widget* widget) unrealize;
		public function void(Widget* widget) root;
		public function void(Widget* widget) unroot;
		public function void(Widget* widget, c_int width, c_int height, c_int baseline) size_allocate;
		public function void(Widget* widget, StateFlags previous_state_flags) state_flags_changed;
		public function void(Widget* widget, TextDirection previous_direction) direction_changed;
		public function SizeRequestMode(Widget* widget) get_request_mode;
		public function void(Widget* widget, Orientation orientation, c_int for_size, c_int* minimum, c_int* natural, c_int* minimum_baseline, c_int* natural_baseline) measure;
		public function c_int(Widget* widget, c_int group_cycling) mnemonic_activate;
		public function c_int(Widget* widget) grab_focus;
		public function c_int(Widget* widget, DirectionType direction) focus;
		public function void(Widget* widget, Widget* child) set_focus_child;
		public function void(Widget* widget, DirectionType direction) move_focus;
		public function c_int(Widget* widget, DirectionType direction) keynav_failed;
		public function c_int(Widget* widget, c_int x, c_int y, c_int keyboard_tooltip, Tooltip* tooltip) query_tooltip;
		public function void(Widget* widget, c_int* hexpand_p, c_int* vexpand_p) compute_expand;
		public function void(Widget* widget, CssStyleChange* change) css_changed;
		public function void(Widget* widget, SystemSetting settings) system_setting_changed;
		public function void(Widget* widget, Snapshot* snapshot) snapshot;
		public function c_int(Widget* widget, double x, double y) contains;
		public WidgetClassPrivate* priv;
		public void* padding;
		[LinkName("gtk_widget_class_add_shortcut")]
		public static extern void AddShortcut(WidgetClass* widget_class, Shortcut* shortcut);
		[LinkName("gtk_widget_class_bind_template_callback_full")]
		public static extern void BindTemplateCallbackFull(WidgetClass* widget_class, char8* callback_name, GObject.Callback callback_symbol);
		[LinkName("gtk_widget_class_bind_template_child_full")]
		public static extern void BindTemplateChildFull(WidgetClass* widget_class, char8* name, c_int internal_child, c_long struct_offset);
		[LinkName("gtk_widget_class_get_accessible_role")]
		public static extern AccessibleRole GetAccessibleRole(WidgetClass* widget_class);
		[LinkName("gtk_widget_class_get_activate_signal")]
		public static extern c_uint GetActivateSignal(WidgetClass* widget_class);
		[LinkName("gtk_widget_class_get_css_name")]
		public static extern char8* GetCssName(WidgetClass* widget_class);
		[LinkName("gtk_widget_class_get_layout_manager_type")]
		public static extern GLib.Type GetLayoutManagerType(WidgetClass* widget_class);
		[LinkName("gtk_widget_class_install_action")]
		public static extern void InstallAction(WidgetClass* widget_class, char8* action_name, char8* parameter_type, WidgetActionActivateFunc activate);
		[LinkName("gtk_widget_class_install_property_action")]
		public static extern void InstallPropertyAction(WidgetClass* widget_class, char8* action_name, char8* property_name);
		[LinkName("gtk_widget_class_query_action")]
		public static extern c_int QueryAction(WidgetClass* widget_class, c_uint index_, GLib.Type* owner, char8** action_name, GLib.VariantType** parameter_type, char8** property_name);
		[LinkName("gtk_widget_class_set_accessible_role")]
		public static extern void SetAccessibleRole(WidgetClass* widget_class, AccessibleRole accessible_role);
		[LinkName("gtk_widget_class_set_activate_signal")]
		public static extern void SetActivateSignal(WidgetClass* widget_class, c_uint signal_id);
		[LinkName("gtk_widget_class_set_activate_signal_from_name")]
		public static extern void SetActivateSignalFromName(WidgetClass* widget_class, char8* signal_name);
		[LinkName("gtk_widget_class_set_css_name")]
		public static extern void SetCssName(WidgetClass* widget_class, char8* name);
		[LinkName("gtk_widget_class_set_layout_manager_type")]
		public static extern void SetLayoutManagerType(WidgetClass* widget_class, GLib.Type type);
		[LinkName("gtk_widget_class_set_template")]
		public static extern void SetTemplate(WidgetClass* widget_class, GLib.Bytes* template_bytes);
		[LinkName("gtk_widget_class_set_template_from_resource")]
		public static extern void SetTemplateFromResource(WidgetClass* widget_class, char8* resource_name);
		[LinkName("gtk_widget_class_set_template_scope")]
		public static extern void SetTemplateScope(WidgetClass* widget_class, BuilderScope* scope_);
	}
	[CRepr]
	public struct WidgetClassPrivate : int
	{
	}
	[CRepr]
	public struct WidgetPaintableClass
	{
		public GObject.ObjectClass parent_class;
	}
	[CRepr]
	public struct WidgetPrivate : int
	{
	}
	[CRepr]
	public struct WindowClass
	{
		public WidgetClass parent_class;
		public function void(Window* window) activate_focus;
		public function void(Window* window) activate_default;
		public function void(Window* window) keys_changed;
		public function c_int(Window* window, c_int toggle) enable_debugging;
		public function c_int(Window* window) close_request;
		public void* padding;
	}
	[CRepr]
	public struct WindowControlsClass
	{
		public WidgetClass parent_class;
	}
	[CRepr]
	public struct WindowGroupClass
	{
		public GObject.ObjectClass parent_class;
		public function void() _gtk_reserved1;
		public function void() _gtk_reserved2;
		public function void() _gtk_reserved3;
		public function void() _gtk_reserved4;
	}
	[CRepr]
	public struct WindowGroupPrivate : int
	{
	}
	[CRepr]
	public struct WindowHandleClass
	{
		public WidgetClass parent_class;
	}
	[CRepr, AllowDuplicates]
	public enum AccessibleAutocomplete
	{
		None = 0,
		Inline = 1,
		List = 2,
		Both = 3
	}
	[CRepr, AllowDuplicates]
	public enum AccessibleInvalidState
	{
		False = 0,
		True = 1,
		Grammar = 2,
		Spelling = 3
	}
	[CRepr, AllowDuplicates]
	public enum AccessiblePlatformState
	{
		Focusable = 0,
		Focused = 1,
		Active = 2
	}
	[CRepr, AllowDuplicates]
	public enum AccessibleProperty
	{
		Autocomplete = 0,
		Description = 1,
		HasPopup = 2,
		KeyShortcuts = 3,
		Label = 4,
		Level = 5,
		Modal = 6,
		MultiLine = 7,
		MultiSelectable = 8,
		Orientation = 9,
		Placeholder = 10,
		ReadOnly = 11,
		Required = 12,
		RoleDescription = 13,
		Sort = 14,
		ValueMax = 15,
		ValueMin = 16,
		ValueNow = 17,
		ValueText = 18
	}
	[CRepr, AllowDuplicates]
	public enum AccessibleRelation
	{
		ActiveDescendant = 0,
		ColCount = 1,
		ColIndex = 2,
		ColIndexText = 3,
		ColSpan = 4,
		Controls = 5,
		DescribedBy = 6,
		Details = 7,
		ErrorMessage = 8,
		FlowTo = 9,
		LabelledBy = 10,
		Owns = 11,
		PosInSet = 12,
		RowCount = 13,
		RowIndex = 14,
		RowIndexText = 15,
		RowSpan = 16,
		SetSize = 17
	}
	[CRepr, AllowDuplicates]
	public enum AccessibleRole
	{
		Alert = 0,
		AlertDialog = 1,
		Banner = 2,
		Button = 3,
		Caption = 4,
		Cell = 5,
		Checkbox = 6,
		ColumnHeader = 7,
		ComboBox = 8,
		Command = 9,
		Composite = 10,
		Dialog = 11,
		Document = 12,
		Feed = 13,
		Form = 14,
		Generic = 15,
		Grid = 16,
		GridCell = 17,
		Group = 18,
		Heading = 19,
		Img = 20,
		Input = 21,
		Label = 22,
		Landmark = 23,
		Legend = 24,
		Link = 25,
		List = 26,
		ListBox = 27,
		ListItem = 28,
		Log = 29,
		Main = 30,
		Marquee = 31,
		Math = 32,
		Meter = 33,
		Menu = 34,
		MenuBar = 35,
		MenuItem = 36,
		MenuItemCheckbox = 37,
		MenuItemRadio = 38,
		Navigation = 39,
		None = 40,
		Note = 41,
		Option = 42,
		Presentation = 43,
		ProgressBar = 44,
		Radio = 45,
		RadioGroup = 46,
		Range = 47,
		Region = 48,
		Row = 49,
		RowGroup = 50,
		RowHeader = 51,
		Scrollbar = 52,
		Search = 53,
		SearchBox = 54,
		Section = 55,
		SectionHead = 56,
		Select = 57,
		Separator = 58,
		Slider = 59,
		SpinButton = 60,
		Status = 61,
		Structure = 62,
		Switch = 63,
		Tab = 64,
		Table = 65,
		TabList = 66,
		TabPanel = 67,
		TextBox = 68,
		Time = 69,
		Timer = 70,
		Toolbar = 71,
		Tooltip = 72,
		Tree = 73,
		TreeGrid = 74,
		TreeItem = 75,
		Widget = 76,
		Window = 77,
		ToggleButton = 78
	}
	[CRepr, AllowDuplicates]
	public enum AccessibleSort
	{
		None = 0,
		Ascending = 1,
		Descending = 2,
		Other = 3
	}
	[CRepr, AllowDuplicates]
	public enum AccessibleState
	{
		Busy = 0,
		Checked = 1,
		Disabled = 2,
		Expanded = 3,
		Hidden = 4,
		Invalid = 5,
		Pressed = 6,
		Selected = 7,
		Visited = 8
	}
	[CRepr, AllowDuplicates]
	public enum AccessibleTristate
	{
		False = 0,
		True = 1,
		Mixed = 2
	}
	[CRepr, AllowDuplicates]
	public enum Align
	{
		Fill = 0,
		Start = 1,
		End = 2,
		Center = 3,
		BaselineFill = 4,
		Baseline = 4,
		BaselineCenter = 5
	}
	[CRepr, AllowDuplicates]
	public enum ApplicationInhibitFlags
	{
		Logout = 1,
		Switch = 2,
		Suspend = 4,
		Idle = 8
	}
	[CRepr, AllowDuplicates]
	public enum ArrowType
	{
		Up = 0,
		Down = 1,
		Left = 2,
		Right = 3,
		None = 4
	}
	[CRepr, AllowDuplicates]
	public enum AssistantPageType
	{
		Content = 0,
		Intro = 1,
		Confirm = 2,
		Summary = 3,
		Progress = 4,
		Custom = 5
	}
	[CRepr, AllowDuplicates]
	public enum BaselinePosition
	{
		Top = 0,
		Center = 1,
		Bottom = 2
	}
	[CRepr, AllowDuplicates]
	public enum BorderStyle
	{
		None = 0,
		Hidden = 1,
		Solid = 2,
		Inset = 3,
		Outset = 4,
		Dotted = 5,
		Dashed = 6,
		Double = 7,
		Groove = 8,
		Ridge = 9
	}
	[CRepr, AllowDuplicates]
	public enum BuilderClosureFlags
	{
		Swapped = 1
	}
	[CRepr, AllowDuplicates]
	public enum BuilderError
	{
		InvalidTypeFunction = 0,
		UnhandledTag = 1,
		MissingAttribute = 2,
		InvalidAttribute = 3,
		InvalidTag = 4,
		MissingPropertyValue = 5,
		InvalidValue = 6,
		VersionMismatch = 7,
		DuplicateId = 8,
		ObjectTypeRefused = 9,
		TemplateMismatch = 10,
		InvalidProperty = 11,
		InvalidSignal = 12,
		InvalidId = 13,
		InvalidFunction = 14
	}
	[CRepr, AllowDuplicates]
	public enum ButtonsType
	{
		None = 0,
		Ok = 1,
		Close = 2,
		Cancel = 3,
		YesNo = 4,
		OkCancel = 5
	}
	[CRepr, AllowDuplicates]
	public enum CellRendererAccelMode
	{
		Gtk = 0,
		Other = 1
	}
	[CRepr, AllowDuplicates]
	public enum CellRendererMode
	{
		Inert = 0,
		Activatable = 1,
		Editable = 2
	}
	[CRepr, AllowDuplicates]
	public enum CellRendererState
	{
		Selected = 1,
		Prelit = 2,
		Insensitive = 4,
		Sorted = 8,
		Focused = 16,
		Expandable = 32,
		Expanded = 64
	}
	[CRepr, AllowDuplicates]
	public enum Collation
	{
		None = 0,
		Unicode = 1,
		Filename = 2
	}
	[CRepr, AllowDuplicates]
	public enum ConstraintAttribute
	{
		None = 0,
		Left = 1,
		Right = 2,
		Top = 3,
		Bottom = 4,
		Start = 5,
		End = 6,
		Width = 7,
		Height = 8,
		CenterX = 9,
		CenterY = 10,
		Baseline = 11
	}
	[CRepr, AllowDuplicates]
	public enum ConstraintRelation
	{
		Le = -1,
		Eq = 0,
		Ge = 1
	}
	[CRepr, AllowDuplicates]
	public enum ConstraintStrength
	{
		Required = 1001001000,
		Strong = 1000000000,
		Medium = 1000,
		Weak = 1
	}
	[CRepr, AllowDuplicates]
	public enum ConstraintVflParserError
	{
		Symbol = 0,
		Attribute = 1,
		View = 2,
		Metric = 3,
		Priority = 4,
		Relation = 5
	}
	[CRepr, AllowDuplicates]
	public enum ContentFit
	{
		Fill = 0,
		Contain = 1,
		Cover = 2,
		ScaleDown = 3
	}
	[CRepr, AllowDuplicates]
	public enum CornerType
	{
		TopLeft = 0,
		BottomLeft = 1,
		TopRight = 2,
		BottomRight = 3
	}
	[CRepr, AllowDuplicates]
	public enum CssParserError
	{
		Failed = 0,
		Syntax = 1,
		Import = 2,
		Name = 3,
		UnknownValue = 4
	}
	[CRepr, AllowDuplicates]
	public enum CssParserWarning
	{
		Deprecated = 0,
		Syntax = 1,
		Unimplemented = 2
	}
	[CRepr, AllowDuplicates]
	public enum DebugFlags
	{
		Text = 1,
		Tree = 2,
		Keybindings = 4,
		Modules = 8,
		Geometry = 16,
		Icontheme = 32,
		Printing = 64,
		Builder = 128,
		SizeRequest = 256,
		NoCssCache = 512,
		Interactive = 1024,
		Touchscreen = 2048,
		Actions = 4096,
		Layout = 8192,
		Snapshot = 16384,
		Constraints = 32768,
		BuilderObjects = 65536,
		A11y = 131072,
		Iconfallback = 262144,
		InvertTextDir = 524288
	}
	[CRepr, AllowDuplicates]
	public enum DeleteType
	{
		Chars = 0,
		WordEnds = 1,
		Words = 2,
		DisplayLines = 3,
		DisplayLineEnds = 4,
		ParagraphEnds = 5,
		Paragraphs = 6,
		Whitespace = 7
	}
	[CRepr, AllowDuplicates]
	public enum DialogError
	{
		Failed = 0,
		Cancelled = 1,
		Dismissed = 2
	}
	[CRepr, AllowDuplicates]
	public enum DialogFlags
	{
		Modal = 1,
		DestroyWithParent = 2,
		UseHeaderBar = 4
	}
	[CRepr, AllowDuplicates]
	public enum DirectionType
	{
		TabForward = 0,
		TabBackward = 1,
		Up = 2,
		Down = 3,
		Left = 4,
		Right = 5
	}
	[CRepr, AllowDuplicates]
	public enum EditableProperties
	{
		PropText = 0,
		PropCursorPosition = 1,
		PropSelectionBound = 2,
		PropEditable = 3,
		PropWidthChars = 4,
		PropMaxWidthChars = 5,
		PropXalign = 6,
		PropEnableUndo = 7,
		NumProperties = 8
	}
	[CRepr, AllowDuplicates]
	public enum EntryIconPosition
	{
		Primary = 0,
		Secondary = 1
	}
	[CRepr, AllowDuplicates]
	public enum EventControllerScrollFlags
	{
		None = 0,
		Vertical = 1,
		Horizontal = 2,
		Discrete = 4,
		Kinetic = 8,
		BothAxes = 3
	}
	[CRepr, AllowDuplicates]
	public enum EventSequenceState
	{
		None = 0,
		Claimed = 1,
		Denied = 2
	}
	[CRepr, AllowDuplicates]
	public enum FileChooserAction
	{
		Open = 0,
		Save = 1,
		SelectFolder = 2
	}
	[CRepr, AllowDuplicates]
	public enum FileChooserError
	{
		Nonexistent = 0,
		BadFilename = 1,
		AlreadyExists = 2,
		IncompleteHostname = 3
	}
	[CRepr, AllowDuplicates]
	public enum FilterChange
	{
		Different = 0,
		LessStrict = 1,
		MoreStrict = 2
	}
	[CRepr, AllowDuplicates]
	public enum FilterMatch
	{
		Some = 0,
		None = 1,
		All = 2
	}
	[CRepr, AllowDuplicates]
	public enum FontChooserLevel
	{
		Family = 0,
		Style = 1,
		Size = 2,
		Variations = 4,
		Features = 8
	}
	[CRepr, AllowDuplicates]
	public enum FontLevel
	{
		Family = 0,
		Face = 1,
		Font = 2,
		Features = 3
	}
	[CRepr, AllowDuplicates]
	public enum IconLookupFlags
	{
		ForceRegular = 1,
		ForceSymbolic = 2,
		Preload = 4
	}
	[CRepr, AllowDuplicates]
	public enum IconSize
	{
		Inherit = 0,
		Normal = 1,
		Large = 2
	}
	[CRepr, AllowDuplicates]
	public enum IconThemeError
	{
		NotFound = 0,
		Failed = 1
	}
	[CRepr, AllowDuplicates]
	public enum IconViewDropPosition
	{
		NoDrop = 0,
		DropInto = 1,
		DropLeft = 2,
		DropRight = 3,
		DropAbove = 4,
		DropBelow = 5
	}
	[CRepr, AllowDuplicates]
	public enum ImageType
	{
		Empty = 0,
		IconName = 1,
		Gicon = 2,
		Paintable = 3
	}
	[CRepr, AllowDuplicates]
	public enum InputHints
	{
		None = 0,
		Spellcheck = 1,
		NoSpellcheck = 2,
		WordCompletion = 4,
		Lowercase = 8,
		UppercaseChars = 16,
		UppercaseWords = 32,
		UppercaseSentences = 64,
		InhibitOsk = 128,
		VerticalWriting = 256,
		Emoji = 512,
		NoEmoji = 1024,
		Private = 2048
	}
	[CRepr, AllowDuplicates]
	public enum InputPurpose
	{
		FreeForm = 0,
		Alpha = 1,
		Digits = 2,
		Number = 3,
		Phone = 4,
		Url = 5,
		Email = 6,
		Name = 7,
		Password = 8,
		Pin = 9,
		Terminal = 10
	}
	[CRepr, AllowDuplicates]
	public enum InscriptionOverflow
	{
		Clip = 0,
		EllipsizeStart = 1,
		EllipsizeMiddle = 2,
		EllipsizeEnd = 3
	}
	[CRepr, AllowDuplicates]
	public enum Justification
	{
		Left = 0,
		Right = 1,
		Center = 2,
		Fill = 3
	}
	[CRepr, AllowDuplicates]
	public enum LevelBarMode
	{
		Continuous = 0,
		Discrete = 1
	}
	[CRepr, AllowDuplicates]
	public enum License
	{
		Unknown = 0,
		Custom = 1,
		Gpl20 = 2,
		Gpl30 = 3,
		Lgpl21 = 4,
		Lgpl30 = 5,
		Bsd = 6,
		MitX11 = 7,
		Artistic = 8,
		Gpl20Only = 9,
		Gpl30Only = 10,
		Lgpl21Only = 11,
		Lgpl30Only = 12,
		Agpl30 = 13,
		Agpl30Only = 14,
		Bsd3 = 15,
		Apache20 = 16,
		Mpl20 = 17
	}
	[CRepr, AllowDuplicates]
	public enum ListTabBehavior
	{
		All = 0,
		Item = 1,
		Cell = 2
	}
	[CRepr, AllowDuplicates]
	public enum MessageType
	{
		Info = 0,
		Warning = 1,
		Question = 2,
		Error = 3,
		Other = 4
	}
	[CRepr, AllowDuplicates]
	public enum MovementStep
	{
		LogicalPositions = 0,
		VisualPositions = 1,
		Words = 2,
		DisplayLines = 3,
		DisplayLineEnds = 4,
		Paragraphs = 5,
		ParagraphEnds = 6,
		Pages = 7,
		BufferEnds = 8,
		HorizontalPages = 9
	}
	[CRepr, AllowDuplicates]
	public enum NaturalWrapMode
	{
		Inherit = 0,
		None = 1,
		Word = 2
	}
	[CRepr, AllowDuplicates]
	public enum NotebookTab
	{
		First = 0,
		Last = 1
	}
	[CRepr, AllowDuplicates]
	public enum NumberUpLayout
	{
		Lrtb = 0,
		Lrbt = 1,
		Rltb = 2,
		Rlbt = 3,
		Tblr = 4,
		Tbrl = 5,
		Btlr = 6,
		Btrl = 7
	}
	[CRepr, AllowDuplicates]
	public enum Ordering
	{
		Smaller = -1,
		Equal = 0,
		Larger = 1
	}
	[CRepr, AllowDuplicates]
	public enum Orientation
	{
		Horizontal = 0,
		Vertical = 1
	}
	[CRepr, AllowDuplicates]
	public enum Overflow
	{
		Visible = 0,
		Hidden = 1
	}
	[CRepr, AllowDuplicates]
	public enum PackType
	{
		Start = 0,
		End = 1
	}
	[CRepr, AllowDuplicates]
	public enum PadActionType
	{
		Button = 0,
		Ring = 1,
		Strip = 2
	}
	[CRepr, AllowDuplicates]
	public enum PageOrientation
	{
		Portrait = 0,
		Landscape = 1,
		ReversePortrait = 2,
		ReverseLandscape = 3
	}
	[CRepr, AllowDuplicates]
	public enum PageSet
	{
		All = 0,
		Even = 1,
		Odd = 2
	}
	[CRepr, AllowDuplicates]
	public enum PanDirection
	{
		Left = 0,
		Right = 1,
		Up = 2,
		Down = 3
	}
	[CRepr, AllowDuplicates]
	public enum PickFlags
	{
		Default = 0,
		Insensitive = 1,
		NonTargetable = 2
	}
	[CRepr, AllowDuplicates]
	public enum PolicyType
	{
		Always = 0,
		Automatic = 1,
		Never = 2,
		External = 3
	}
	[CRepr, AllowDuplicates]
	public enum PopoverMenuFlags
	{
		Nested = 1
	}
	[CRepr, AllowDuplicates]
	public enum PositionType
	{
		Left = 0,
		Right = 1,
		Top = 2,
		Bottom = 3
	}
	[CRepr, AllowDuplicates]
	public enum PrintCapabilities
	{
		PageSet = 1,
		Copies = 2,
		Collate = 4,
		Reverse = 8,
		Scale = 16,
		GeneratePdf = 32,
		GeneratePs = 64,
		Preview = 128,
		NumberUp = 256,
		NumberUpLayout = 512
	}
	[CRepr, AllowDuplicates]
	public enum PrintDuplex
	{
		Simplex = 0,
		Horizontal = 1,
		Vertical = 2
	}
	[CRepr, AllowDuplicates]
	public enum PrintError
	{
		General = 0,
		InternalError = 1,
		Nomem = 2,
		InvalidFile = 3
	}
	[CRepr, AllowDuplicates]
	public enum PrintOperationAction
	{
		PrintDialog = 0,
		Print = 1,
		Preview = 2,
		Export = 3
	}
	[CRepr, AllowDuplicates]
	public enum PrintOperationResult
	{
		Error = 0,
		Apply = 1,
		Cancel = 2,
		InProgress = 3
	}
	[CRepr, AllowDuplicates]
	public enum PrintPages
	{
		All = 0,
		Current = 1,
		Ranges = 2,
		Selection = 3
	}
	[CRepr, AllowDuplicates]
	public enum PrintQuality
	{
		Low = 0,
		Normal = 1,
		High = 2,
		Draft = 3
	}
	[CRepr, AllowDuplicates]
	public enum PrintStatus
	{
		Initial = 0,
		Preparing = 1,
		GeneratingData = 2,
		SendingData = 3,
		Pending = 4,
		PendingIssue = 5,
		Printing = 6,
		Finished = 7,
		FinishedAborted = 8
	}
	[CRepr, AllowDuplicates]
	public enum PropagationLimit
	{
		None = 0,
		SameNative = 1
	}
	[CRepr, AllowDuplicates]
	public enum PropagationPhase
	{
		None = 0,
		Capture = 1,
		Bubble = 2,
		Target = 3
	}
	[CRepr, AllowDuplicates]
	public enum RecentManagerError
	{
		NotFound = 0,
		InvalidUri = 1,
		InvalidEncoding = 2,
		NotRegistered = 3,
		Read = 4,
		Write = 5,
		Unknown = 6
	}
	[CRepr, AllowDuplicates]
	public enum ResponseType
	{
		None = -1,
		Reject = -2,
		Accept = -3,
		DeleteEvent = -4,
		Ok = -5,
		Cancel = -6,
		Close = -7,
		Yes = -8,
		No = -9,
		Apply = -10,
		Help = -11
	}
	[CRepr, AllowDuplicates]
	public enum RevealerTransitionType
	{
		None = 0,
		Crossfade = 1,
		SlideRight = 2,
		SlideLeft = 3,
		SlideUp = 4,
		SlideDown = 5,
		SwingRight = 6,
		SwingLeft = 7,
		SwingUp = 8,
		SwingDown = 9
	}
	[CRepr, AllowDuplicates]
	public enum ScrollStep
	{
		Steps = 0,
		Pages = 1,
		Ends = 2,
		HorizontalSteps = 3,
		HorizontalPages = 4,
		HorizontalEnds = 5
	}
	[CRepr, AllowDuplicates]
	public enum ScrollType
	{
		None = 0,
		Jump = 1,
		StepBackward = 2,
		StepForward = 3,
		PageBackward = 4,
		PageForward = 5,
		StepUp = 6,
		StepDown = 7,
		PageUp = 8,
		PageDown = 9,
		StepLeft = 10,
		StepRight = 11,
		PageLeft = 12,
		PageRight = 13,
		Start = 14,
		End = 15
	}
	[CRepr, AllowDuplicates]
	public enum ScrollablePolicy
	{
		Minimum = 0,
		Natural = 1
	}
	[CRepr, AllowDuplicates]
	public enum SelectionMode
	{
		None = 0,
		Single = 1,
		Browse = 2,
		Multiple = 3
	}
	[CRepr, AllowDuplicates]
	public enum SensitivityType
	{
		Auto = 0,
		On = 1,
		Off = 2
	}
	[CRepr, AllowDuplicates]
	public enum ShortcutActionFlags
	{
		Exclusive = 1
	}
	[CRepr, AllowDuplicates]
	public enum ShortcutScope
	{
		Local = 0,
		Managed = 1,
		Global = 2
	}
	[CRepr, AllowDuplicates]
	public enum ShortcutType
	{
		Accelerator = 0,
		GesturePinch = 1,
		GestureStretch = 2,
		GestureRotateClockwise = 3,
		GestureRotateCounterclockwise = 4,
		GestureTwoFingerSwipeLeft = 5,
		GestureTwoFingerSwipeRight = 6,
		Gesture = 7,
		GestureSwipeLeft = 8,
		GestureSwipeRight = 9
	}
	[CRepr, AllowDuplicates]
	public enum SizeGroupMode
	{
		None = 0,
		Horizontal = 1,
		Vertical = 2,
		Both = 3
	}
	[CRepr, AllowDuplicates]
	public enum SizeRequestMode
	{
		HeightForWidth = 0,
		WidthForHeight = 1,
		ConstantSize = 2
	}
	[CRepr, AllowDuplicates]
	public enum SortType
	{
		Ascending = 0,
		Descending = 1
	}
	[CRepr, AllowDuplicates]
	public enum SorterChange
	{
		Different = 0,
		Inverted = 1,
		LessStrict = 2,
		MoreStrict = 3
	}
	[CRepr, AllowDuplicates]
	public enum SorterOrder
	{
		Partial = 0,
		None = 1,
		Total = 2
	}
	[CRepr, AllowDuplicates]
	public enum SpinButtonUpdatePolicy
	{
		Always = 0,
		IfValid = 1
	}
	[CRepr, AllowDuplicates]
	public enum SpinType
	{
		StepForward = 0,
		StepBackward = 1,
		PageForward = 2,
		PageBackward = 3,
		Home = 4,
		End = 5,
		UserDefined = 6
	}
	[CRepr, AllowDuplicates]
	public enum StackTransitionType
	{
		None = 0,
		Crossfade = 1,
		SlideRight = 2,
		SlideLeft = 3,
		SlideUp = 4,
		SlideDown = 5,
		SlideLeftRight = 6,
		SlideUpDown = 7,
		OverUp = 8,
		OverDown = 9,
		OverLeft = 10,
		OverRight = 11,
		UnderUp = 12,
		UnderDown = 13,
		UnderLeft = 14,
		UnderRight = 15,
		OverUpDown = 16,
		OverDownUp = 17,
		OverLeftRight = 18,
		OverRightLeft = 19,
		RotateLeft = 20,
		RotateRight = 21,
		RotateLeftRight = 22
	}
	[CRepr, AllowDuplicates]
	public enum StateFlags
	{
		Normal = 0,
		Active = 1,
		Prelight = 2,
		Selected = 4,
		Insensitive = 8,
		Inconsistent = 16,
		Focused = 32,
		Backdrop = 64,
		DirLtr = 128,
		DirRtl = 256,
		Link = 512,
		Visited = 1024,
		Checked = 2048,
		DropActive = 4096,
		FocusVisible = 8192,
		FocusWithin = 16384
	}
	[CRepr, AllowDuplicates]
	public enum StringFilterMatchMode
	{
		Exact = 0,
		Substring = 1,
		Prefix = 2
	}
	[CRepr, AllowDuplicates]
	public enum StyleContextPrintFlags
	{
		None = 0,
		Recurse = 1,
		ShowStyle = 2,
		ShowChange = 4
	}
	[CRepr, AllowDuplicates]
	public enum SymbolicColor
	{
		Foreground = 0,
		Error = 1,
		Warning = 2,
		Success = 3
	}
	[CRepr, AllowDuplicates]
	public enum SystemSetting
	{
		Dpi = 0,
		FontName = 1,
		FontConfig = 2,
		Display = 3,
		IconTheme = 4
	}
	[CRepr, AllowDuplicates]
	public enum TextDirection
	{
		None = 0,
		Ltr = 1,
		Rtl = 2
	}
	[CRepr, AllowDuplicates]
	public enum TextExtendSelection
	{
		Word = 0,
		Line = 1
	}
	[CRepr, AllowDuplicates]
	public enum TextSearchFlags
	{
		VisibleOnly = 1,
		TextOnly = 2,
		CaseInsensitive = 4
	}
	[CRepr, AllowDuplicates]
	public enum TextViewLayer
	{
		BelowText = 0,
		AboveText = 1
	}
	[CRepr, AllowDuplicates]
	public enum TextWindowType
	{
		Widget = 1,
		Text = 2,
		Left = 3,
		Right = 4,
		Top = 5,
		Bottom = 6
	}
	[CRepr, AllowDuplicates]
	public enum TreeModelFlags
	{
		ItersPersist = 1,
		ListOnly = 2
	}
	[CRepr, AllowDuplicates]
	public enum TreeViewColumnSizing
	{
		GrowOnly = 0,
		Autosize = 1,
		Fixed = 2
	}
	[CRepr, AllowDuplicates]
	public enum TreeViewDropPosition
	{
		Before = 0,
		After = 1,
		IntoOrBefore = 2,
		IntoOrAfter = 3
	}
	[CRepr, AllowDuplicates]
	public enum TreeViewGridLines
	{
		None = 0,
		Horizontal = 1,
		Vertical = 2,
		Both = 3
	}
	[CRepr, AllowDuplicates]
	public enum Unit
	{
		None = 0,
		Points = 1,
		Inch = 2,
		Mm = 3
	}
	[CRepr, AllowDuplicates]
	public enum WrapMode
	{
		None = 0,
		Char = 1,
		Word = 2,
		WordChar = 3
	}
	public struct Accessible;
	public struct AccessibleRange;
	public struct Actionable;
	public struct AppChooser;
	public struct Buildable;
	public struct BuilderScope;
	public struct CellEditable;
	public struct CellLayout;
	public struct ColorChooser;
	public struct ConstraintTarget;
	public struct Editable;
	public struct FileChooser;
	public struct FontChooser;
	public struct Native;
	public struct Orientable;
	public struct PrintOperationPreview;
	public struct Root;
	public struct Scrollable;
	public struct SectionModel;
	public struct SelectionModel;
	public struct ShortcutManager;
	public struct StyleProvider;
	public struct SymbolicPaintable;
	public struct TreeDragDest;
	public struct TreeDragSource;
	public struct TreeModel;
	public struct TreeSortable;
	public function c_int AssistantPageFunc(c_int current_page, void* data);
	public function c_int CellAllocCallback(CellRenderer* renderer, Gdk.Rectangle* cell_area, Gdk.Rectangle* cell_background, void* data);
	public function c_int CellCallback(CellRenderer* renderer, void* data);
	public function void CellLayoutDataFunc(CellLayout* cell_layout, CellRenderer* cell, TreeModel* tree_model, TreeIter* iter, void* data);
	public function void CustomAllocateFunc(Widget* widget, c_int width, c_int height, c_int baseline);
	public function c_int CustomFilterFunc(GObject.Object* item, void* user_data);
	public function void CustomMeasureFunc(Widget* widget, Orientation orientation, c_int for_size, c_int* minimum, c_int* natural, c_int* minimum_baseline, c_int* natural_baseline);
	public function SizeRequestMode CustomRequestModeFunc(Widget* widget);
	public function void DrawingAreaDrawFunc(DrawingArea* drawing_area, cairo.Context* cr, c_int width, c_int height, void* user_data);
	public function c_int EntryCompletionMatchFunc(EntryCompletion* completion, char8* key, TreeIter* iter, void* user_data);
	public function void ExpressionNotify(void* user_data);
	public function Widget* FlowBoxCreateWidgetFunc(GObject.Object* item, void* user_data);
	public function c_int FlowBoxFilterFunc(FlowBoxChild* child, void* user_data);
	public function void FlowBoxForeachFunc(FlowBox* box_, FlowBoxChild* child, void* user_data);
	public function c_int FlowBoxSortFunc(FlowBoxChild* child1, FlowBoxChild* child2, void* user_data);
	public function c_int FontFilterFunc(Pango.FontFamily* family, Pango.FontFace* face, void* data);
	public function void IconViewForeachFunc(IconView* icon_view, TreePath* path, void* data);
	public function Widget* ListBoxCreateWidgetFunc(GObject.Object* item, void* user_data);
	public function c_int ListBoxFilterFunc(ListBoxRow* row, void* user_data);
	public function void ListBoxForeachFunc(ListBox* box_, ListBoxRow* row, void* user_data);
	public function c_int ListBoxSortFunc(ListBoxRow* row1, ListBoxRow* row2, void* user_data);
	public function void ListBoxUpdateHeaderFunc(ListBoxRow* row, ListBoxRow* before, void* user_data);
	public function GObject.Object* MapListModelMapFunc(GObject.Object* item, void* user_data);
	public function void MenuButtonCreatePopupFunc(MenuButton* menu_button, void* user_data);
	public function void PageSetupDoneFunc(PageSetup* page_setup, void* data);
	public function void PrintJobCompleteFunc(PrintJob* print_job, void* user_data, GLib.Error* error);
	public function void PrintSettingsFunc(char8* key, char8* value, void* user_data);
	public function c_int PrinterFunc(Printer* printer, void* data);
	public function char8* ScaleFormatValueFunc(Scale* scale, double value, void* user_data);
	public function c_int ShortcutFunc(Widget* widget, GLib.Variant* args, void* user_data);
	public function c_int TextCharPredicate(c_uint ch, void* user_data);
	public function void TextTagTableForeach(TextTag* tag, void* data);
	public function c_int TickCallback(Widget* widget, Gdk.FrameClock* frame_clock, void* user_data);
	public function void TreeCellDataFunc(TreeViewColumn* tree_column, CellRenderer* cell, TreeModel* tree_model, TreeIter* iter, void* data);
	public function c_int TreeIterCompareFunc(TreeModel* model, TreeIter* a, TreeIter* b, void* user_data);
	public function Gio.ListModel* TreeListModelCreateModelFunc(GObject.Object* item, void* user_data);
	public function void TreeModelFilterModifyFunc(TreeModel* model, TreeIter* iter, GObject.Value* value, c_int column, void* data);
	public function c_int TreeModelFilterVisibleFunc(TreeModel* model, TreeIter* iter, void* data);
	public function c_int TreeModelForeachFunc(TreeModel* model, TreePath* path, TreeIter* iter, void* data);
	public function void TreeSelectionForeachFunc(TreeModel* model, TreePath* path, TreeIter* iter, void* data);
	public function c_int TreeSelectionFunc(TreeSelection* selection, TreeModel* model, TreePath* path, c_int path_currently_selected, void* data);
	public function c_int TreeViewColumnDropFunc(TreeView* tree_view, TreeViewColumn* column, TreeViewColumn* prev_column, TreeViewColumn* next_column, void* data);
	public function void TreeViewMappingFunc(TreeView* tree_view, TreePath* path, void* user_data);
	public function c_int TreeViewRowSeparatorFunc(TreeModel* model, TreeIter* iter, void* data);
	public function c_int TreeViewSearchEqualFunc(TreeModel* model, c_int column, char8* key, TreeIter* iter, void* search_data);
	public function void WidgetActionActivateFunc(Widget* widget, char8* action_name, GLib.Variant* parameter);
}
