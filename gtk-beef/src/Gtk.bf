namespace Gtk;

using System;
using System.Interop;

using static Gio.Gio;
using static GLib.GLib;
using static GObject.GObject;
using static Gdk.Gdk;
using static Graphene.Graphene;
using static Pango.Pango;
using static Cairo.Cairo;
using static Gsk.Gsk;
using static GdkPixbuf.GdkPixbuf;

class Gtk
{
	public typealias GtkAllocation = GdkRectangle;
	[CRepr]
	public struct GtkATContext;
	[LinkName("gtk_at_context_create")]
	public static extern GtkATContext* at_context_create(GtkAccessibleRole accessible_role, GtkAccessible* accessible, GdkDisplay* display);
	[LinkName("gtk_at_context_get_accessible")]
	public static extern GtkAccessible* at_context_get_accessible(GtkATContext* self);
	[LinkName("gtk_at_context_get_accessible_role")]
	public static extern GtkAccessibleRole at_context_get_accessible_role(GtkATContext* self);
	[CRepr]
	public struct GtkATContextClass
	{
	}
	[CRepr]
	public struct GtkAboutDialog;
	[LinkName("gtk_about_dialog_new")]
	public static extern GtkWidget* about_dialog_new();
	[LinkName("gtk_about_dialog_add_credit_section")]
	public static extern void about_dialog_add_credit_section(GtkAboutDialog* about,  c_char* section_name);
	[LinkName("gtk_about_dialog_get_artists")]
	public static extern  c_char* * about_dialog_get_artists(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_authors")]
	public static extern  c_char* * about_dialog_get_authors(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_comments")]
	public static extern  c_char* about_dialog_get_comments(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_copyright")]
	public static extern  c_char* about_dialog_get_copyright(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_documenters")]
	public static extern  c_char* * about_dialog_get_documenters(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_license")]
	public static extern  c_char* about_dialog_get_license(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_license_type")]
	public static extern GtkLicense about_dialog_get_license_type(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_logo")]
	public static extern GdkPaintable* about_dialog_get_logo(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_logo_icon_name")]
	public static extern  c_char* about_dialog_get_logo_icon_name(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_program_name")]
	public static extern  c_char* about_dialog_get_program_name(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_system_information")]
	public static extern  c_char* about_dialog_get_system_information(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_translator_credits")]
	public static extern  c_char* about_dialog_get_translator_credits(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_version")]
	public static extern  c_char* about_dialog_get_version(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_website")]
	public static extern  c_char* about_dialog_get_website(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_website_label")]
	public static extern  c_char* about_dialog_get_website_label(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_get_wrap_license")]
	public static extern c_int about_dialog_get_wrap_license(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_set_artists")]
	public static extern void about_dialog_set_artists(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_set_authors")]
	public static extern void about_dialog_set_authors(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_set_comments")]
	public static extern void about_dialog_set_comments(GtkAboutDialog* about,  c_char* comments);
	[LinkName("gtk_about_dialog_set_copyright")]
	public static extern void about_dialog_set_copyright(GtkAboutDialog* about,  c_char* copyright);
	[LinkName("gtk_about_dialog_set_documenters")]
	public static extern void about_dialog_set_documenters(GtkAboutDialog* about);
	[LinkName("gtk_about_dialog_set_license")]
	public static extern void about_dialog_set_license(GtkAboutDialog* about,  c_char* license);
	[LinkName("gtk_about_dialog_set_license_type")]
	public static extern void about_dialog_set_license_type(GtkAboutDialog* about, GtkLicense license_type);
	[LinkName("gtk_about_dialog_set_logo")]
	public static extern void about_dialog_set_logo(GtkAboutDialog* about, GdkPaintable* logo);
	[LinkName("gtk_about_dialog_set_logo_icon_name")]
	public static extern void about_dialog_set_logo_icon_name(GtkAboutDialog* about,  c_char* icon_name);
	[LinkName("gtk_about_dialog_set_program_name")]
	public static extern void about_dialog_set_program_name(GtkAboutDialog* about,  c_char* name);
	[LinkName("gtk_about_dialog_set_system_information")]
	public static extern void about_dialog_set_system_information(GtkAboutDialog* about,  c_char* system_information);
	[LinkName("gtk_about_dialog_set_translator_credits")]
	public static extern void about_dialog_set_translator_credits(GtkAboutDialog* about,  c_char* translator_credits);
	[LinkName("gtk_about_dialog_set_version")]
	public static extern void about_dialog_set_version(GtkAboutDialog* about,  c_char* version);
	[LinkName("gtk_about_dialog_set_website")]
	public static extern void about_dialog_set_website(GtkAboutDialog* about,  c_char* website);
	[LinkName("gtk_about_dialog_set_website_label")]
	public static extern void about_dialog_set_website_label(GtkAboutDialog* about,  c_char* website_label);
	[LinkName("gtk_about_dialog_set_wrap_license")]
	public static extern void about_dialog_set_wrap_license(GtkAboutDialog* about, c_int wrap_license);
	[CRepr]
	public struct GtkAccessible
	{
		public function GtkAccessible*(GtkAccessible this) get_accessible_parent;

		public function GtkATContext*(GtkAccessible this) get_at_context;

		public function c_int(GtkAccessible this, c_int* x, c_int* y, c_int* width, c_int* height) get_bounds;

		public function GtkAccessible*(GtkAccessible this) get_first_accessible_child;

		public function GtkAccessible*(GtkAccessible this) get_next_accessible_sibling;

		public function c_int(GtkAccessible this, GtkAccessiblePlatformState state) get_platform_state;
	}
	public enum GtkAccessibleAutocomplete : c_int
	{
		GTK_ACCESSIBLE_AUTOCOMPLETE_NONE,
		GTK_ACCESSIBLE_AUTOCOMPLETE_INLINE,
		GTK_ACCESSIBLE_AUTOCOMPLETE_LIST,
		GTK_ACCESSIBLE_AUTOCOMPLETE_BOTH
	}
	[CRepr]
	public struct GtkAccessibleInterface
	{
		GTypeInterface g_iface;
	}
	public enum GtkAccessibleInvalidState : c_int
	{
		GTK_ACCESSIBLE_INVALID_FALSE,
		GTK_ACCESSIBLE_INVALID_TRUE,
		GTK_ACCESSIBLE_INVALID_GRAMMAR,
		GTK_ACCESSIBLE_INVALID_SPELLING
	}
	public enum GtkAccessiblePlatformState : c_int
	{
		GTK_ACCESSIBLE_PLATFORM_STATE_FOCUSABLE,
		GTK_ACCESSIBLE_PLATFORM_STATE_FOCUSED,
		GTK_ACCESSIBLE_PLATFORM_STATE_ACTIVE
	}
	public enum GtkAccessibleProperty : c_int
	{
		GTK_ACCESSIBLE_PROPERTY_AUTOCOMPLETE,
		GTK_ACCESSIBLE_PROPERTY_DESCRIPTION,
		GTK_ACCESSIBLE_PROPERTY_HAS_POPUP,
		GTK_ACCESSIBLE_PROPERTY_KEY_SHORTCUTS,
		GTK_ACCESSIBLE_PROPERTY_LABEL,
		GTK_ACCESSIBLE_PROPERTY_LEVEL,
		GTK_ACCESSIBLE_PROPERTY_MODAL,
		GTK_ACCESSIBLE_PROPERTY_MULTI_LINE,
		GTK_ACCESSIBLE_PROPERTY_MULTI_SELECTABLE,
		GTK_ACCESSIBLE_PROPERTY_ORIENTATION,
		GTK_ACCESSIBLE_PROPERTY_PLACEHOLDER,
		GTK_ACCESSIBLE_PROPERTY_READ_ONLY,
		GTK_ACCESSIBLE_PROPERTY_REQUIRED,
		GTK_ACCESSIBLE_PROPERTY_ROLE_DESCRIPTION,
		GTK_ACCESSIBLE_PROPERTY_SORT,
		GTK_ACCESSIBLE_PROPERTY_VALUE_MAX,
		GTK_ACCESSIBLE_PROPERTY_VALUE_MIN,
		GTK_ACCESSIBLE_PROPERTY_VALUE_NOW,
		GTK_ACCESSIBLE_PROPERTY_VALUE_TEXT
	}
	[CRepr]
	public struct GtkAccessibleRange
	{
		public function c_int(GtkAccessibleRange this, double value) set_current_value;
	}
	[CRepr]
	public struct GtkAccessibleRangeInterface
	{
		GTypeInterface g_iface;
	}
	public enum GtkAccessibleRelation : c_int
	{
		GTK_ACCESSIBLE_RELATION_ACTIVE_DESCENDANT,
		GTK_ACCESSIBLE_RELATION_COL_COUNT,
		GTK_ACCESSIBLE_RELATION_COL_INDEX,
		GTK_ACCESSIBLE_RELATION_COL_INDEX_TEXT,
		GTK_ACCESSIBLE_RELATION_COL_SPAN,
		GTK_ACCESSIBLE_RELATION_CONTROLS,
		GTK_ACCESSIBLE_RELATION_DESCRIBED_BY,
		GTK_ACCESSIBLE_RELATION_DETAILS,
		GTK_ACCESSIBLE_RELATION_ERROR_MESSAGE,
		GTK_ACCESSIBLE_RELATION_FLOW_TO,
		GTK_ACCESSIBLE_RELATION_LABELLED_BY,
		GTK_ACCESSIBLE_RELATION_OWNS,
		GTK_ACCESSIBLE_RELATION_POS_IN_SET,
		GTK_ACCESSIBLE_RELATION_ROW_COUNT,
		GTK_ACCESSIBLE_RELATION_ROW_INDEX,
		GTK_ACCESSIBLE_RELATION_ROW_INDEX_TEXT,
		GTK_ACCESSIBLE_RELATION_ROW_SPAN,
		GTK_ACCESSIBLE_RELATION_SET_SIZE
	}
	public enum GtkAccessibleRole : c_int
	{
		GTK_ACCESSIBLE_ROLE_ALERT,
		GTK_ACCESSIBLE_ROLE_ALERT_DIALOG,
		GTK_ACCESSIBLE_ROLE_BANNER,
		GTK_ACCESSIBLE_ROLE_BUTTON,
		GTK_ACCESSIBLE_ROLE_CAPTION,
		GTK_ACCESSIBLE_ROLE_CELL,
		GTK_ACCESSIBLE_ROLE_CHECKBOX,
		GTK_ACCESSIBLE_ROLE_COLUMN_HEADER,
		GTK_ACCESSIBLE_ROLE_COMBO_BOX,
		GTK_ACCESSIBLE_ROLE_COMMAND,
		GTK_ACCESSIBLE_ROLE_COMPOSITE,
		GTK_ACCESSIBLE_ROLE_DIALOG,
		GTK_ACCESSIBLE_ROLE_DOCUMENT,
		GTK_ACCESSIBLE_ROLE_FEED,
		GTK_ACCESSIBLE_ROLE_FORM,
		GTK_ACCESSIBLE_ROLE_GENERIC,
		GTK_ACCESSIBLE_ROLE_GRID,
		GTK_ACCESSIBLE_ROLE_GRID_CELL,
		GTK_ACCESSIBLE_ROLE_GROUP,
		GTK_ACCESSIBLE_ROLE_HEADING,
		GTK_ACCESSIBLE_ROLE_IMG,
		GTK_ACCESSIBLE_ROLE_INPUT,
		GTK_ACCESSIBLE_ROLE_LABEL,
		GTK_ACCESSIBLE_ROLE_LANDMARK,
		GTK_ACCESSIBLE_ROLE_LEGEND,
		GTK_ACCESSIBLE_ROLE_LINK,
		GTK_ACCESSIBLE_ROLE_LIST,
		GTK_ACCESSIBLE_ROLE_LIST_BOX,
		GTK_ACCESSIBLE_ROLE_LIST_ITEM,
		GTK_ACCESSIBLE_ROLE_LOG,
		GTK_ACCESSIBLE_ROLE_MAIN,
		GTK_ACCESSIBLE_ROLE_MARQUEE,
		GTK_ACCESSIBLE_ROLE_MATH,
		GTK_ACCESSIBLE_ROLE_METER,
		GTK_ACCESSIBLE_ROLE_MENU,
		GTK_ACCESSIBLE_ROLE_MENU_BAR,
		GTK_ACCESSIBLE_ROLE_MENU_ITEM,
		GTK_ACCESSIBLE_ROLE_MENU_ITEM_CHECKBOX,
		GTK_ACCESSIBLE_ROLE_MENU_ITEM_RADIO,
		GTK_ACCESSIBLE_ROLE_NAVIGATION,
		GTK_ACCESSIBLE_ROLE_NONE,
		GTK_ACCESSIBLE_ROLE_NOTE,
		GTK_ACCESSIBLE_ROLE_OPTION,
		GTK_ACCESSIBLE_ROLE_PRESENTATION,
		GTK_ACCESSIBLE_ROLE_PROGRESS_BAR,
		GTK_ACCESSIBLE_ROLE_RADIO,
		GTK_ACCESSIBLE_ROLE_RADIO_GROUP,
		GTK_ACCESSIBLE_ROLE_RANGE,
		GTK_ACCESSIBLE_ROLE_REGION,
		GTK_ACCESSIBLE_ROLE_ROW,
		GTK_ACCESSIBLE_ROLE_ROW_GROUP,
		GTK_ACCESSIBLE_ROLE_ROW_HEADER,
		GTK_ACCESSIBLE_ROLE_SCROLLBAR,
		GTK_ACCESSIBLE_ROLE_SEARCH,
		GTK_ACCESSIBLE_ROLE_SEARCH_BOX,
		GTK_ACCESSIBLE_ROLE_SECTION,
		GTK_ACCESSIBLE_ROLE_SECTION_HEAD,
		GTK_ACCESSIBLE_ROLE_SELECT,
		GTK_ACCESSIBLE_ROLE_SEPARATOR,
		GTK_ACCESSIBLE_ROLE_SLIDER,
		GTK_ACCESSIBLE_ROLE_SPIN_BUTTON,
		GTK_ACCESSIBLE_ROLE_STATUS,
		GTK_ACCESSIBLE_ROLE_STRUCTURE,
		GTK_ACCESSIBLE_ROLE_SWITCH,
		GTK_ACCESSIBLE_ROLE_TAB,
		GTK_ACCESSIBLE_ROLE_TABLE,
		GTK_ACCESSIBLE_ROLE_TAB_LIST,
		GTK_ACCESSIBLE_ROLE_TAB_PANEL,
		GTK_ACCESSIBLE_ROLE_TEXT_BOX,
		GTK_ACCESSIBLE_ROLE_TIME,
		GTK_ACCESSIBLE_ROLE_TIMER,
		GTK_ACCESSIBLE_ROLE_TOOLBAR,
		GTK_ACCESSIBLE_ROLE_TOOLTIP,
		GTK_ACCESSIBLE_ROLE_TREE,
		GTK_ACCESSIBLE_ROLE_TREE_GRID,
		GTK_ACCESSIBLE_ROLE_TREE_ITEM,
		GTK_ACCESSIBLE_ROLE_WIDGET,
		GTK_ACCESSIBLE_ROLE_WINDOW,
		GTK_ACCESSIBLE_ROLE_TOGGLE_BUTTON
	}
	public enum GtkAccessibleSort : c_int
	{
		GTK_ACCESSIBLE_SORT_NONE,
		GTK_ACCESSIBLE_SORT_ASCENDING,
		GTK_ACCESSIBLE_SORT_DESCENDING,
		GTK_ACCESSIBLE_SORT_OTHER
	}
	public enum GtkAccessibleState : c_int
	{
		GTK_ACCESSIBLE_STATE_BUSY,
		GTK_ACCESSIBLE_STATE_CHECKED,
		GTK_ACCESSIBLE_STATE_DISABLED,
		GTK_ACCESSIBLE_STATE_EXPANDED,
		GTK_ACCESSIBLE_STATE_HIDDEN,
		GTK_ACCESSIBLE_STATE_INVALID,
		GTK_ACCESSIBLE_STATE_PRESSED,
		GTK_ACCESSIBLE_STATE_SELECTED,
		GTK_ACCESSIBLE_STATE_VISITED
	}
	public enum GtkAccessibleTristate : c_int
	{
		GTK_ACCESSIBLE_TRISTATE_FALSE,
		GTK_ACCESSIBLE_TRISTATE_TRUE,
		GTK_ACCESSIBLE_TRISTATE_MIXED
	}
	[CRepr]
	public struct GtkActionBar;
	[LinkName("gtk_action_bar_new")]
	public static extern GtkWidget* action_bar_new();
	[LinkName("gtk_action_bar_get_center_widget")]
	public static extern GtkWidget* action_bar_get_center_widget(GtkActionBar* action_bar);
	[LinkName("gtk_action_bar_get_revealed")]
	public static extern c_int action_bar_get_revealed(GtkActionBar* action_bar);
	[LinkName("gtk_action_bar_pack_end")]
	public static extern void action_bar_pack_end(GtkActionBar* action_bar, GtkWidget* child);
	[LinkName("gtk_action_bar_pack_start")]
	public static extern void action_bar_pack_start(GtkActionBar* action_bar, GtkWidget* child);
	[LinkName("gtk_action_bar_remove")]
	public static extern void action_bar_remove(GtkActionBar* action_bar, GtkWidget* child);
	[LinkName("gtk_action_bar_set_center_widget")]
	public static extern void action_bar_set_center_widget(GtkActionBar* action_bar, GtkWidget* center_widget);
	[LinkName("gtk_action_bar_set_revealed")]
	public static extern void action_bar_set_revealed(GtkActionBar* action_bar, c_int revealed);
	[CRepr]
	public struct GtkActionable
	{
		public function  c_char*(GtkActionable* actionable) get_action_name;

		public function GVariant*(GtkActionable* actionable) get_action_target_value;

		public function void(GtkActionable* actionable,  c_char* action_name) set_action_name;

		public function void(GtkActionable* actionable, GVariant* target_value) set_action_target_value;
	}
	[CRepr]
	public struct GtkActionableInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GtkActivateAction;
	[CRepr]
	public struct GtkActivateActionClass
	{
	}
	[CRepr]
	public struct GtkAdjustment;
	[LinkName("gtk_adjustment_new")]
	public static extern GtkAdjustment* adjustment_new(double value, double lower, double upper, double step_increment, double page_increment, double page_size);
	[LinkName("gtk_adjustment_clamp_page")]
	public static extern void adjustment_clamp_page(GtkAdjustment* adjustment, double lower, double upper);
	[LinkName("gtk_adjustment_configure")]
	public static extern void adjustment_configure(GtkAdjustment* adjustment, double value, double lower, double upper, double step_increment, double page_increment, double page_size);
	[LinkName("gtk_adjustment_get_lower")]
	public static extern double adjustment_get_lower(GtkAdjustment* adjustment);
	[LinkName("gtk_adjustment_get_minimum_increment")]
	public static extern double adjustment_get_minimum_increment(GtkAdjustment* adjustment);
	[LinkName("gtk_adjustment_get_page_increment")]
	public static extern double adjustment_get_page_increment(GtkAdjustment* adjustment);
	[LinkName("gtk_adjustment_get_page_size")]
	public static extern double adjustment_get_page_size(GtkAdjustment* adjustment);
	[LinkName("gtk_adjustment_get_step_increment")]
	public static extern double adjustment_get_step_increment(GtkAdjustment* adjustment);
	[LinkName("gtk_adjustment_get_upper")]
	public static extern double adjustment_get_upper(GtkAdjustment* adjustment);
	[LinkName("gtk_adjustment_get_value")]
	public static extern double adjustment_get_value(GtkAdjustment* adjustment);
	[LinkName("gtk_adjustment_set_lower")]
	public static extern void adjustment_set_lower(GtkAdjustment* adjustment, double lower);
	[LinkName("gtk_adjustment_set_page_increment")]
	public static extern void adjustment_set_page_increment(GtkAdjustment* adjustment, double page_increment);
	[LinkName("gtk_adjustment_set_page_size")]
	public static extern void adjustment_set_page_size(GtkAdjustment* adjustment, double page_size);
	[LinkName("gtk_adjustment_set_step_increment")]
	public static extern void adjustment_set_step_increment(GtkAdjustment* adjustment, double step_increment);
	[LinkName("gtk_adjustment_set_upper")]
	public static extern void adjustment_set_upper(GtkAdjustment* adjustment, double upper);
	[LinkName("gtk_adjustment_set_value")]
	public static extern void adjustment_set_value(GtkAdjustment* adjustment, double value);
	[CRepr]
	public struct GtkAdjustmentClass
	{
		GInitiallyUnownedClass parent_class;
	}
	[CRepr]
	public struct GtkAlertDialog;
	[LinkName("gtk_alert_dialog_new")]
	public static extern GtkAlertDialog* alert_dialog_new( c_char* format);
	[LinkName("gtk_alert_dialog_choose")]
	public static extern void alert_dialog_choose(GtkAlertDialog* self, GtkWindow* parent, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_alert_dialog_choose_finish")]
	public static extern c_int alert_dialog_choose_finish(GtkAlertDialog* self, GAsyncResult* result);
	[LinkName("gtk_alert_dialog_get_buttons")]
	public static extern  c_char* * alert_dialog_get_buttons(GtkAlertDialog* self);
	[LinkName("gtk_alert_dialog_get_cancel_button")]
	public static extern c_int alert_dialog_get_cancel_button(GtkAlertDialog* self);
	[LinkName("gtk_alert_dialog_get_default_button")]
	public static extern c_int alert_dialog_get_default_button(GtkAlertDialog* self);
	[LinkName("gtk_alert_dialog_get_detail")]
	public static extern  c_char* alert_dialog_get_detail(GtkAlertDialog* self);
	[LinkName("gtk_alert_dialog_get_message")]
	public static extern  c_char* alert_dialog_get_message(GtkAlertDialog* self);
	[LinkName("gtk_alert_dialog_get_modal")]
	public static extern c_int alert_dialog_get_modal(GtkAlertDialog* self);
	[LinkName("gtk_alert_dialog_set_buttons")]
	public static extern void alert_dialog_set_buttons(GtkAlertDialog* self);
	[LinkName("gtk_alert_dialog_set_cancel_button")]
	public static extern void alert_dialog_set_cancel_button(GtkAlertDialog* self, c_int button);
	[LinkName("gtk_alert_dialog_set_default_button")]
	public static extern void alert_dialog_set_default_button(GtkAlertDialog* self, c_int button);
	[LinkName("gtk_alert_dialog_set_detail")]
	public static extern void alert_dialog_set_detail(GtkAlertDialog* self,  c_char* detail);
	[LinkName("gtk_alert_dialog_set_message")]
	public static extern void alert_dialog_set_message(GtkAlertDialog* self,  c_char* message);
	[LinkName("gtk_alert_dialog_set_modal")]
	public static extern void alert_dialog_set_modal(GtkAlertDialog* self, c_int modal);
	[LinkName("gtk_alert_dialog_show")]
	public static extern void alert_dialog_show(GtkAlertDialog* self, GtkWindow* parent);
	[CRepr]
	public struct GtkAlertDialogClass
	{
		GObjectClass parent_class;
	}
	public enum GtkAlign : c_int
	{
		GTK_ALIGN_FILL,
		GTK_ALIGN_START,
		GTK_ALIGN_END,
		GTK_ALIGN_CENTER,
		GTK_ALIGN_BASELINE_FILL,
		GTK_ALIGN_BASELINE,
		GTK_ALIGN_BASELINE_CENTER
	}
	[CRepr]
	public struct GtkAlternativeTrigger;
	[LinkName("gtk_alternative_trigger_new")]
	public static extern GtkShortcutTrigger* alternative_trigger_new(GtkShortcutTrigger* first, GtkShortcutTrigger* second);
	[LinkName("gtk_alternative_trigger_get_first")]
	public static extern GtkShortcutTrigger* alternative_trigger_get_first(GtkAlternativeTrigger* self);
	[LinkName("gtk_alternative_trigger_get_second")]
	public static extern GtkShortcutTrigger* alternative_trigger_get_second(GtkAlternativeTrigger* self);
	[CRepr]
	public struct GtkAlternativeTriggerClass
	{
	}
	[CRepr]
	public struct GtkAnyFilter;
	[LinkName("gtk_any_filter_new")]
	public static extern GtkAnyFilter* any_filter_new();
	[CRepr]
	public struct GtkAnyFilterClass
	{
	}
	[CRepr]
	public struct GtkAppChooser
	{	}
	[CRepr]
	public struct GtkAppChooserButton;
	[LinkName("gtk_app_chooser_button_new")]
	public static extern GtkWidget* app_chooser_button_new( c_char* content_type);
	[LinkName("gtk_app_chooser_button_append_custom_item")]
	public static extern void app_chooser_button_append_custom_item(GtkAppChooserButton* self,  c_char* name,  c_char* label, GIcon* icon);
	[LinkName("gtk_app_chooser_button_append_separator")]
	public static extern void app_chooser_button_append_separator(GtkAppChooserButton* self);
	[LinkName("gtk_app_chooser_button_get_heading")]
	public static extern  c_char* app_chooser_button_get_heading(GtkAppChooserButton* self);
	[LinkName("gtk_app_chooser_button_get_modal")]
	public static extern c_int app_chooser_button_get_modal(GtkAppChooserButton* self);
	[LinkName("gtk_app_chooser_button_get_show_default_item")]
	public static extern c_int app_chooser_button_get_show_default_item(GtkAppChooserButton* self);
	[LinkName("gtk_app_chooser_button_get_show_dialog_item")]
	public static extern c_int app_chooser_button_get_show_dialog_item(GtkAppChooserButton* self);
	[LinkName("gtk_app_chooser_button_set_active_custom_item")]
	public static extern void app_chooser_button_set_active_custom_item(GtkAppChooserButton* self,  c_char* name);
	[LinkName("gtk_app_chooser_button_set_heading")]
	public static extern void app_chooser_button_set_heading(GtkAppChooserButton* self,  c_char* heading);
	[LinkName("gtk_app_chooser_button_set_modal")]
	public static extern void app_chooser_button_set_modal(GtkAppChooserButton* self, c_int modal);
	[LinkName("gtk_app_chooser_button_set_show_default_item")]
	public static extern void app_chooser_button_set_show_default_item(GtkAppChooserButton* self, c_int setting);
	[LinkName("gtk_app_chooser_button_set_show_dialog_item")]
	public static extern void app_chooser_button_set_show_dialog_item(GtkAppChooserButton* self, c_int setting);
	[CRepr]
	public struct GtkAppChooserDialog;
	[LinkName("gtk_app_chooser_dialog_new")]
	public static extern GtkWidget* app_chooser_dialog_new(GtkWindow* parent, GtkDialogFlags flags, GFile* file);
	[LinkName("gtk_app_chooser_dialog_new_for_content_type")]
	public static extern GtkWidget* app_chooser_dialog_new_for_content_type(GtkWindow* parent, GtkDialogFlags flags,  c_char* content_type);
	[LinkName("gtk_app_chooser_dialog_get_heading")]
	public static extern  c_char* app_chooser_dialog_get_heading(GtkAppChooserDialog* self);
	[LinkName("gtk_app_chooser_dialog_get_widget")]
	public static extern GtkWidget* app_chooser_dialog_get_widget(GtkAppChooserDialog* self);
	[LinkName("gtk_app_chooser_dialog_set_heading")]
	public static extern void app_chooser_dialog_set_heading(GtkAppChooserDialog* self,  c_char* heading);
	[CRepr]
	public struct GtkAppChooserWidget;
	[LinkName("gtk_app_chooser_widget_new")]
	public static extern GtkWidget* app_chooser_widget_new( c_char* content_type);
	[LinkName("gtk_app_chooser_widget_get_default_text")]
	public static extern  c_char* app_chooser_widget_get_default_text(GtkAppChooserWidget* self);
	[LinkName("gtk_app_chooser_widget_get_show_all")]
	public static extern c_int app_chooser_widget_get_show_all(GtkAppChooserWidget* self);
	[LinkName("gtk_app_chooser_widget_get_show_default")]
	public static extern c_int app_chooser_widget_get_show_default(GtkAppChooserWidget* self);
	[LinkName("gtk_app_chooser_widget_get_show_fallback")]
	public static extern c_int app_chooser_widget_get_show_fallback(GtkAppChooserWidget* self);
	[LinkName("gtk_app_chooser_widget_get_show_other")]
	public static extern c_int app_chooser_widget_get_show_other(GtkAppChooserWidget* self);
	[LinkName("gtk_app_chooser_widget_get_show_recommended")]
	public static extern c_int app_chooser_widget_get_show_recommended(GtkAppChooserWidget* self);
	[LinkName("gtk_app_chooser_widget_set_default_text")]
	public static extern void app_chooser_widget_set_default_text(GtkAppChooserWidget* self,  c_char* text);
	[LinkName("gtk_app_chooser_widget_set_show_all")]
	public static extern void app_chooser_widget_set_show_all(GtkAppChooserWidget* self, c_int setting);
	[LinkName("gtk_app_chooser_widget_set_show_default")]
	public static extern void app_chooser_widget_set_show_default(GtkAppChooserWidget* self, c_int setting);
	[LinkName("gtk_app_chooser_widget_set_show_fallback")]
	public static extern void app_chooser_widget_set_show_fallback(GtkAppChooserWidget* self, c_int setting);
	[LinkName("gtk_app_chooser_widget_set_show_other")]
	public static extern void app_chooser_widget_set_show_other(GtkAppChooserWidget* self, c_int setting);
	[LinkName("gtk_app_chooser_widget_set_show_recommended")]
	public static extern void app_chooser_widget_set_show_recommended(GtkAppChooserWidget* self, c_int setting);
	[CRepr]
	public struct GtkApplication;
	[LinkName("gtk_application_new")]
	public static extern GtkApplication* application_new( c_char* application_id, GApplicationFlags flags);
	[LinkName("gtk_application_add_window")]
	public static extern void application_add_window(GtkApplication* application, GtkWindow* window);
	[LinkName("gtk_application_get_accels_for_action")]
	public static extern c_char** application_get_accels_for_action(GtkApplication* application,  c_char* detailed_action_name);
	[LinkName("gtk_application_get_actions_for_accel")]
	public static extern c_char** application_get_actions_for_accel(GtkApplication* application,  c_char* accel);
	[LinkName("gtk_application_get_active_window")]
	public static extern GtkWindow* application_get_active_window(GtkApplication* application);
	[LinkName("gtk_application_get_menu_by_id")]
	public static extern GMenu* application_get_menu_by_id(GtkApplication* application,  c_char* id);
	[LinkName("gtk_application_get_menubar")]
	public static extern GMenuModel* application_get_menubar(GtkApplication* application);
	[LinkName("gtk_application_get_window_by_id")]
	public static extern GtkWindow* application_get_window_by_id(GtkApplication* application, c_uint id);
	[LinkName("gtk_application_get_windows")]
	public static extern GList* application_get_windows(GtkApplication* application);
	[LinkName("gtk_application_inhibit")]
	public static extern c_uint application_inhibit(GtkApplication* application, GtkWindow* window, GtkApplicationInhibitFlags flags,  c_char* reason);
	[LinkName("gtk_application_list_action_descriptions")]
	public static extern c_char** application_list_action_descriptions(GtkApplication* application);
	[LinkName("gtk_application_remove_window")]
	public static extern void application_remove_window(GtkApplication* application, GtkWindow* window);
	[LinkName("gtk_application_set_accels_for_action")]
	public static extern void application_set_accels_for_action(GtkApplication* application,  c_char* detailed_action_name);
	[LinkName("gtk_application_set_menubar")]
	public static extern void application_set_menubar(GtkApplication* application, GMenuModel* menubar);
	[LinkName("gtk_application_uninhibit")]
	public static extern void application_uninhibit(GtkApplication* application, c_uint cookie);
	[CRepr]
	public struct GtkApplicationClass
	{
		GApplicationClass parent_class;
	}
	[CRepr]
	public struct GtkApplicationInhibitFlags
	{
		public const int GTK_APPLICATION_INHIBIT_LOGOUT = 1;
		public const int GTK_APPLICATION_INHIBIT_SWITCH = 2;
		public const int GTK_APPLICATION_INHIBIT_SUSPEND = 4;
		public const int GTK_APPLICATION_INHIBIT_IDLE = 8;
	}
	[CRepr]
	public struct GtkApplicationWindow;
	[LinkName("gtk_application_window_new")]
	public static extern GtkWidget* application_window_new(GtkApplication* application);
	[LinkName("gtk_application_window_get_help_overlay")]
	public static extern GtkShortcutsWindow* application_window_get_help_overlay(GtkApplicationWindow* window);
	[LinkName("gtk_application_window_get_id")]
	public static extern c_uint application_window_get_id(GtkApplicationWindow* window);
	[LinkName("gtk_application_window_get_show_menubar")]
	public static extern c_int application_window_get_show_menubar(GtkApplicationWindow* window);
	[LinkName("gtk_application_window_set_help_overlay")]
	public static extern void application_window_set_help_overlay(GtkApplicationWindow* window, GtkShortcutsWindow* help_overlay);
	[LinkName("gtk_application_window_set_show_menubar")]
	public static extern void application_window_set_show_menubar(GtkApplicationWindow* window, c_int show_menubar);
	[CRepr]
	public struct GtkApplicationWindowClass
	{
		GtkWindowClass parent_class;
	}
	public enum GtkArrowType : c_int
	{
		GTK_ARROW_UP,
		GTK_ARROW_DOWN,
		GTK_ARROW_LEFT,
		GTK_ARROW_RIGHT,
		GTK_ARROW_NONE
	}
	[CRepr]
	public struct GtkAspectFrame;
	[LinkName("gtk_aspect_frame_new")]
	public static extern GtkWidget* aspect_frame_new(float xalign, float yalign, float ratio, c_int obey_child);
	[LinkName("gtk_aspect_frame_get_child")]
	public static extern GtkWidget* aspect_frame_get_child(GtkAspectFrame* self);
	[LinkName("gtk_aspect_frame_get_obey_child")]
	public static extern c_int aspect_frame_get_obey_child(GtkAspectFrame* self);
	[LinkName("gtk_aspect_frame_get_ratio")]
	public static extern float aspect_frame_get_ratio(GtkAspectFrame* self);
	[LinkName("gtk_aspect_frame_get_xalign")]
	public static extern float aspect_frame_get_xalign(GtkAspectFrame* self);
	[LinkName("gtk_aspect_frame_get_yalign")]
	public static extern float aspect_frame_get_yalign(GtkAspectFrame* self);
	[LinkName("gtk_aspect_frame_set_child")]
	public static extern void aspect_frame_set_child(GtkAspectFrame* self, GtkWidget* child);
	[LinkName("gtk_aspect_frame_set_obey_child")]
	public static extern void aspect_frame_set_obey_child(GtkAspectFrame* self, c_int obey_child);
	[LinkName("gtk_aspect_frame_set_ratio")]
	public static extern void aspect_frame_set_ratio(GtkAspectFrame* self, float ratio);
	[LinkName("gtk_aspect_frame_set_xalign")]
	public static extern void aspect_frame_set_xalign(GtkAspectFrame* self, float xalign);
	[LinkName("gtk_aspect_frame_set_yalign")]
	public static extern void aspect_frame_set_yalign(GtkAspectFrame* self, float yalign);
	[CRepr]
	public struct GtkAssistant;
	[LinkName("gtk_assistant_new")]
	public static extern GtkWidget* assistant_new();
	[LinkName("gtk_assistant_add_action_widget")]
	public static extern void assistant_add_action_widget(GtkAssistant* assistant, GtkWidget* child);
	[LinkName("gtk_assistant_append_page")]
	public static extern c_int assistant_append_page(GtkAssistant* assistant, GtkWidget* page);
	[LinkName("gtk_assistant_commit")]
	public static extern void assistant_commit(GtkAssistant* assistant);
	[LinkName("gtk_assistant_get_current_page")]
	public static extern c_int assistant_get_current_page(GtkAssistant* assistant);
	[LinkName("gtk_assistant_get_n_pages")]
	public static extern c_int assistant_get_n_pages(GtkAssistant* assistant);
	[LinkName("gtk_assistant_get_nth_page")]
	public static extern GtkWidget* assistant_get_nth_page(GtkAssistant* assistant, c_int page_num);
	[LinkName("gtk_assistant_get_page")]
	public static extern GtkAssistantPage* assistant_get_page(GtkAssistant* assistant, GtkWidget* child);
	[LinkName("gtk_assistant_get_page_complete")]
	public static extern c_int assistant_get_page_complete(GtkAssistant* assistant, GtkWidget* page);
	[LinkName("gtk_assistant_get_page_title")]
	public static extern  c_char* assistant_get_page_title(GtkAssistant* assistant, GtkWidget* page);
	[LinkName("gtk_assistant_get_page_type")]
	public static extern GtkAssistantPageType assistant_get_page_type(GtkAssistant* assistant, GtkWidget* page);
	[LinkName("gtk_assistant_get_pages")]
	public static extern GListModel* assistant_get_pages(GtkAssistant* assistant);
	[LinkName("gtk_assistant_insert_page")]
	public static extern c_int assistant_insert_page(GtkAssistant* assistant, GtkWidget* page, c_int position);
	[LinkName("gtk_assistant_next_page")]
	public static extern void assistant_next_page(GtkAssistant* assistant);
	[LinkName("gtk_assistant_prepend_page")]
	public static extern c_int assistant_prepend_page(GtkAssistant* assistant, GtkWidget* page);
	[LinkName("gtk_assistant_previous_page")]
	public static extern void assistant_previous_page(GtkAssistant* assistant);
	[LinkName("gtk_assistant_remove_action_widget")]
	public static extern void assistant_remove_action_widget(GtkAssistant* assistant, GtkWidget* child);
	[LinkName("gtk_assistant_remove_page")]
	public static extern void assistant_remove_page(GtkAssistant* assistant, c_int page_num);
	[LinkName("gtk_assistant_set_current_page")]
	public static extern void assistant_set_current_page(GtkAssistant* assistant, c_int page_num);
	[LinkName("gtk_assistant_set_forward_page_func")]
	public static extern void assistant_set_forward_page_func(GtkAssistant* assistant, GtkAssistantPageFunc page_func, void* data, GDestroyNotify destroy);
	[LinkName("gtk_assistant_set_page_complete")]
	public static extern void assistant_set_page_complete(GtkAssistant* assistant, GtkWidget* page, c_int complete);
	[LinkName("gtk_assistant_set_page_title")]
	public static extern void assistant_set_page_title(GtkAssistant* assistant, GtkWidget* page,  c_char* title);
	[LinkName("gtk_assistant_set_page_type")]
	public static extern void assistant_set_page_type(GtkAssistant* assistant, GtkWidget* page, GtkAssistantPageType type);
	[LinkName("gtk_assistant_update_buttons_state")]
	public static extern void assistant_update_buttons_state(GtkAssistant* assistant);
	[CRepr]
	public struct GtkAssistantPage;
	[LinkName("gtk_assistant_page_get_child")]
	public static extern GtkWidget* assistant_page_get_child(GtkAssistantPage* page);
	public function c_int GtkAssistantPageFunc(c_int current_page, void* data);
	public enum GtkAssistantPageType : c_int
	{
		GTK_ASSISTANT_PAGE_CONTENT,
		GTK_ASSISTANT_PAGE_INTRO,
		GTK_ASSISTANT_PAGE_CONFIRM,
		GTK_ASSISTANT_PAGE_SUMMARY,
		GTK_ASSISTANT_PAGE_PROGRESS,
		GTK_ASSISTANT_PAGE_CUSTOM
	}
	public enum GtkBaselinePosition : c_int
	{
		GTK_BASELINE_POSITION_TOP,
		GTK_BASELINE_POSITION_CENTER,
		GTK_BASELINE_POSITION_BOTTOM
	}
	[CRepr]
	public struct GtkBinLayout;
	[LinkName("gtk_bin_layout_new")]
	public static extern GtkLayoutManager* bin_layout_new();
	[CRepr]
	public struct GtkBinLayoutClass
	{
		GtkLayoutManagerClass parent_class;
	}
	[CRepr]
	public struct GtkBitset
	{
	}
	[CRepr]
	public struct GtkBitsetIter
	{
	}
	[CRepr]
	public struct GtkBookmarkList;
	[LinkName("gtk_bookmark_list_new")]
	public static extern GtkBookmarkList* bookmark_list_new( c_char* filename,  c_char* attributes);
	[LinkName("gtk_bookmark_list_get_attributes")]
	public static extern  c_char* bookmark_list_get_attributes(GtkBookmarkList* self);
	[LinkName("gtk_bookmark_list_get_filename")]
	public static extern  c_char* bookmark_list_get_filename(GtkBookmarkList* self);
	[LinkName("gtk_bookmark_list_get_io_priority")]
	public static extern c_int bookmark_list_get_io_priority(GtkBookmarkList* self);
	[LinkName("gtk_bookmark_list_is_loading")]
	public static extern c_int bookmark_list_is_loading(GtkBookmarkList* self);
	[LinkName("gtk_bookmark_list_set_attributes")]
	public static extern void bookmark_list_set_attributes(GtkBookmarkList* self,  c_char* attributes);
	[LinkName("gtk_bookmark_list_set_io_priority")]
	public static extern void bookmark_list_set_io_priority(GtkBookmarkList* self, c_int io_priority);
	[CRepr]
	public struct GtkBookmarkListClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkBoolFilter;
	[LinkName("gtk_bool_filter_new")]
	public static extern GtkBoolFilter* bool_filter_new(GtkExpression* expression);
	[LinkName("gtk_bool_filter_get_expression")]
	public static extern GtkExpression* bool_filter_get_expression(GtkBoolFilter* self);
	[LinkName("gtk_bool_filter_get_invert")]
	public static extern c_int bool_filter_get_invert(GtkBoolFilter* self);
	[LinkName("gtk_bool_filter_set_expression")]
	public static extern void bool_filter_set_expression(GtkBoolFilter* self, GtkExpression* expression);
	[LinkName("gtk_bool_filter_set_invert")]
	public static extern void bool_filter_set_invert(GtkBoolFilter* self, c_int invert);
	[CRepr]
	public struct GtkBoolFilterClass
	{
		GtkFilterClass parent_class;
	}
	[CRepr]
	public struct GtkBorder
	{
		c_short left;
		c_short right;
		c_short top;
		c_short bottom;
	}
	public enum GtkBorderStyle : c_int
	{
		GTK_BORDER_STYLE_NONE,
		GTK_BORDER_STYLE_HIDDEN,
		GTK_BORDER_STYLE_SOLID,
		GTK_BORDER_STYLE_INSET,
		GTK_BORDER_STYLE_OUTSET,
		GTK_BORDER_STYLE_DOTTED,
		GTK_BORDER_STYLE_DASHED,
		GTK_BORDER_STYLE_DOUBLE,
		GTK_BORDER_STYLE_GROOVE,
		GTK_BORDER_STYLE_RIDGE
	}
	[CRepr]
	public struct GtkBox;
	[LinkName("gtk_box_new")]
	public static extern GtkWidget* box_new(GtkOrientation orientation, c_int spacing);
	[LinkName("gtk_box_append")]
	public static extern void box_append(GtkBox* box_, GtkWidget* child);
	[LinkName("gtk_box_get_baseline_child")]
	public static extern c_int box_get_baseline_child(GtkBox* box_);
	[LinkName("gtk_box_get_baseline_position")]
	public static extern GtkBaselinePosition box_get_baseline_position(GtkBox* box_);
	[LinkName("gtk_box_get_homogeneous")]
	public static extern c_int box_get_homogeneous(GtkBox* box_);
	[LinkName("gtk_box_get_spacing")]
	public static extern c_int box_get_spacing(GtkBox* box_);
	[LinkName("gtk_box_insert_child_after")]
	public static extern void box_insert_child_after(GtkBox* box_, GtkWidget* child, GtkWidget* sibling);
	[LinkName("gtk_box_prepend")]
	public static extern void box_prepend(GtkBox* box_, GtkWidget* child);
	[LinkName("gtk_box_remove")]
	public static extern void box_remove(GtkBox* box_, GtkWidget* child);
	[LinkName("gtk_box_reorder_child_after")]
	public static extern void box_reorder_child_after(GtkBox* box_, GtkWidget* child, GtkWidget* sibling);
	[LinkName("gtk_box_set_baseline_child")]
	public static extern void box_set_baseline_child(GtkBox* box_, c_int child);
	[LinkName("gtk_box_set_baseline_position")]
	public static extern void box_set_baseline_position(GtkBox* box_, GtkBaselinePosition position);
	[LinkName("gtk_box_set_homogeneous")]
	public static extern void box_set_homogeneous(GtkBox* box_, c_int homogeneous);
	[LinkName("gtk_box_set_spacing")]
	public static extern void box_set_spacing(GtkBox* box_, c_int spacing);
	[CRepr]
	public struct GtkBoxClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkBoxLayout;
	[LinkName("gtk_box_layout_new")]
	public static extern GtkLayoutManager* box_layout_new(GtkOrientation orientation);
	[LinkName("gtk_box_layout_get_baseline_child")]
	public static extern c_int box_layout_get_baseline_child(GtkBoxLayout* box_layout);
	[LinkName("gtk_box_layout_get_baseline_position")]
	public static extern GtkBaselinePosition box_layout_get_baseline_position(GtkBoxLayout* box_layout);
	[LinkName("gtk_box_layout_get_homogeneous")]
	public static extern c_int box_layout_get_homogeneous(GtkBoxLayout* box_layout);
	[LinkName("gtk_box_layout_get_spacing")]
	public static extern c_uint box_layout_get_spacing(GtkBoxLayout* box_layout);
	[LinkName("gtk_box_layout_set_baseline_child")]
	public static extern void box_layout_set_baseline_child(GtkBoxLayout* box_layout, c_int child);
	[LinkName("gtk_box_layout_set_baseline_position")]
	public static extern void box_layout_set_baseline_position(GtkBoxLayout* box_layout, GtkBaselinePosition position);
	[LinkName("gtk_box_layout_set_homogeneous")]
	public static extern void box_layout_set_homogeneous(GtkBoxLayout* box_layout, c_int homogeneous);
	[LinkName("gtk_box_layout_set_spacing")]
	public static extern void box_layout_set_spacing(GtkBoxLayout* box_layout, c_uint spacing);
	[CRepr]
	public struct GtkBoxLayoutClass
	{
		GtkLayoutManagerClass parent_class;
	}
	[CRepr]
	public struct GtkBuildable
	{
		public function void(GtkBuildable* buildable, GtkBuilder* builder, GObject* child,  c_char* type) add_child;

		public function GObject*(GtkBuildable* buildable, GtkBuilder* builder,  c_char* name) construct_child;

		public function void(GtkBuildable* buildable, GtkBuilder* builder, GObject* child,  c_char* tagname, void* data) custom_finished;

		public function void(GtkBuildable* buildable, GtkBuilder* builder, GObject* child,  c_char* tagname, void* data) custom_tag_end;

		public function c_int(GtkBuildable* buildable, GtkBuilder* builder, GObject* child,  c_char* tagname, GtkBuildableParser* parser, void** data) custom_tag_start;

		public function  c_char*(GtkBuildable* buildable) get_id;

		public function GObject*(GtkBuildable* buildable, GtkBuilder* builder,  c_char* childname) get_internal_child;

		public function void(GtkBuildable* buildable, GtkBuilder* builder) parser_finished;

		public function void(GtkBuildable* buildable, GtkBuilder* builder,  c_char* name,  GValue* value) set_buildable_property;

		public function void(GtkBuildable* buildable,  c_char* id) set_id;
	}
	[CRepr]
	public struct GtkBuildableIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GtkBuildableParseContext
	{
	}
	[CRepr]
	public struct GtkBuildableParser
	{
	}
	[CRepr]
	public struct GtkBuilder;
	[LinkName("gtk_builder_new")]
	public static extern GtkBuilder* builder_new();
	[LinkName("gtk_builder_new_from_file")]
	public static extern GtkBuilder* builder_new_from_file( c_char* filename);
	[LinkName("gtk_builder_new_from_resource")]
	public static extern GtkBuilder* builder_new_from_resource( c_char* resource_path);
	[LinkName("gtk_builder_new_from_string")]
	public static extern GtkBuilder* builder_new_from_string( c_char* string, c_long length);
	[LinkName("gtk_builder_add_from_file")]
	public static extern c_int builder_add_from_file(GtkBuilder* builder,  c_char* filename);
	[LinkName("gtk_builder_add_from_resource")]
	public static extern c_int builder_add_from_resource(GtkBuilder* builder,  c_char* resource_path);
	[LinkName("gtk_builder_add_from_string")]
	public static extern c_int builder_add_from_string(GtkBuilder* builder,  c_char* buffer, c_long length);
	[LinkName("gtk_builder_add_objects_from_file")]
	public static extern c_int builder_add_objects_from_file(GtkBuilder* builder,  c_char* filename);
	[LinkName("gtk_builder_add_objects_from_resource")]
	public static extern c_int builder_add_objects_from_resource(GtkBuilder* builder,  c_char* resource_path);
	[LinkName("gtk_builder_add_objects_from_string")]
	public static extern c_int builder_add_objects_from_string(GtkBuilder* builder,  c_char* buffer, c_long length);
	[LinkName("gtk_builder_create_closure")]
	public static extern GClosure* builder_create_closure(GtkBuilder* builder,  c_char* function_name, GtkBuilderClosureFlags flags, GObject* object);
	[LinkName("gtk_builder_expose_object")]
	public static extern void builder_expose_object(GtkBuilder* builder,  c_char* name, GObject* object);
	[LinkName("gtk_builder_extend_with_template")]
	public static extern c_int builder_extend_with_template(GtkBuilder* builder, GObject* object, GType template_type,  c_char* buffer, c_long length);
	[LinkName("gtk_builder_get_current_object")]
	public static extern GObject* builder_get_current_object(GtkBuilder* builder);
	[LinkName("gtk_builder_get_object")]
	public static extern GObject* builder_get_object(GtkBuilder* builder,  c_char* name);
	[LinkName("gtk_builder_get_objects")]
	public static extern GSList* builder_get_objects(GtkBuilder* builder);
	[LinkName("gtk_builder_get_scope")]
	public static extern GtkBuilderScope* builder_get_scope(GtkBuilder* builder);
	[LinkName("gtk_builder_get_translation_domain")]
	public static extern  c_char* builder_get_translation_domain(GtkBuilder* builder);
	[LinkName("gtk_builder_get_type_from_name")]
	public static extern GType builder_get_type_from_name(GtkBuilder* builder,  c_char* type_name);
	[LinkName("gtk_builder_set_current_object")]
	public static extern void builder_set_current_object(GtkBuilder* builder, GObject* current_object);
	[LinkName("gtk_builder_set_scope")]
	public static extern void builder_set_scope(GtkBuilder* builder, GtkBuilderScope* scope_);
	[LinkName("gtk_builder_set_translation_domain")]
	public static extern void builder_set_translation_domain(GtkBuilder* builder,  c_char* domain);
	[LinkName("gtk_builder_value_from_string")]
	public static extern c_int builder_value_from_string(GtkBuilder* builder, GParamSpec* pspec,  c_char* string, GValue* value);
	[LinkName("gtk_builder_value_from_string_type")]
	public static extern c_int builder_value_from_string_type(GtkBuilder* builder, GType type,  c_char* string, GValue* value);
	[CRepr]
	public struct GtkBuilderCScope;
	[LinkName("gtk_builder_cscope_new")]
	public static extern GtkBuilderScope* builder_cscope_new();
	[LinkName("gtk_builder_cscope_add_callback_symbol")]
	public static extern void builder_cscope_add_callback_symbol(GtkBuilderCScope* self,  c_char* callback_name, GCallback callback_symbol);
	[LinkName("gtk_builder_cscope_add_callback_symbols")]
	public static extern void builder_cscope_add_callback_symbols(GtkBuilderCScope* self,  c_char* first_callback_name, GCallback first_callback_symbol);
	[LinkName("gtk_builder_cscope_lookup_callback_symbol")]
	public static extern GCallback builder_cscope_lookup_callback_symbol(GtkBuilderCScope* self,  c_char* callback_name);
	[CRepr]
	public struct GtkBuilderCScopeClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkBuilderClass
	{
	}
	[CRepr]
	public struct GtkBuilderClosureFlags
	{
		public const int GTK_BUILDER_CLOSURE_SWAPPED = 1;
	}
	public enum GtkBuilderError : c_int
	{
		GTK_BUILDER_ERROR_INVALID_TYPE_FUNCTION,
		GTK_BUILDER_ERROR_UNHANDLED_TAG,
		GTK_BUILDER_ERROR_MISSING_ATTRIBUTE,
		GTK_BUILDER_ERROR_INVALID_ATTRIBUTE,
		GTK_BUILDER_ERROR_INVALID_TAG,
		GTK_BUILDER_ERROR_MISSING_PROPERTY_VALUE,
		GTK_BUILDER_ERROR_INVALID_VALUE,
		GTK_BUILDER_ERROR_VERSION_MISMATCH,
		GTK_BUILDER_ERROR_DUPLICATE_ID,
		GTK_BUILDER_ERROR_OBJECT_TYPE_REFUSED,
		GTK_BUILDER_ERROR_TEMPLATE_MISMATCH,
		GTK_BUILDER_ERROR_INVALID_PROPERTY,
		GTK_BUILDER_ERROR_INVALID_SIGNAL,
		GTK_BUILDER_ERROR_INVALID_ID,
		GTK_BUILDER_ERROR_INVALID_FUNCTION
	}
	[CRepr]
	public struct GtkBuilderListItemFactory;
	[LinkName("gtk_builder_list_item_factory_new_from_bytes")]
	public static extern GtkListItemFactory* builder_list_item_factory_new_from_bytes(GtkBuilderScope* scope_, GBytes* bytes);
	[LinkName("gtk_builder_list_item_factory_new_from_resource")]
	public static extern GtkListItemFactory* builder_list_item_factory_new_from_resource(GtkBuilderScope* scope_,  c_char* resource_path);
	[LinkName("gtk_builder_list_item_factory_get_bytes")]
	public static extern GBytes* builder_list_item_factory_get_bytes(GtkBuilderListItemFactory* self);
	[LinkName("gtk_builder_list_item_factory_get_resource")]
	public static extern  c_char* builder_list_item_factory_get_resource(GtkBuilderListItemFactory* self);
	[LinkName("gtk_builder_list_item_factory_get_scope")]
	public static extern GtkBuilderScope* builder_list_item_factory_get_scope(GtkBuilderListItemFactory* self);
	[CRepr]
	public struct GtkBuilderListItemFactoryClass
	{
	}
	[CRepr]
	public struct GtkBuilderScope
	{
		public function GClosure*(GtkBuilderScope this, GtkBuilder* builder,  c_char* function_name, GtkBuilderClosureFlags flags, GObject* object) create_closure;

		public function GType(GtkBuilderScope this, GtkBuilder* builder,  c_char* function_name) get_type_from_function;

		public function GType(GtkBuilderScope this, GtkBuilder* builder,  c_char* type_name) get_type_from_name;
	}
	[CRepr]
	public struct GtkBuilderScopeInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GtkButton;
	[LinkName("gtk_button_new")]
	public static extern GtkWidget* button_new();
	[LinkName("gtk_button_new_from_icon_name")]
	public static extern GtkWidget* button_new_from_icon_name( c_char* icon_name);
	[LinkName("gtk_button_new_with_label")]
	public static extern GtkWidget* button_new_with_label( c_char* label);
	[LinkName("gtk_button_new_with_mnemonic")]
	public static extern GtkWidget* button_new_with_mnemonic( c_char* label);
	[LinkName("gtk_button_get_can_shrink")]
	public static extern c_int button_get_can_shrink(GtkButton* button);
	[LinkName("gtk_button_get_child")]
	public static extern GtkWidget* button_get_child(GtkButton* button);
	[LinkName("gtk_button_get_has_frame")]
	public static extern c_int button_get_has_frame(GtkButton* button);
	[LinkName("gtk_button_get_icon_name")]
	public static extern  c_char* button_get_icon_name(GtkButton* button);
	[LinkName("gtk_button_get_label")]
	public static extern  c_char* button_get_label(GtkButton* button);
	[LinkName("gtk_button_get_use_underline")]
	public static extern c_int button_get_use_underline(GtkButton* button);
	[LinkName("gtk_button_set_can_shrink")]
	public static extern void button_set_can_shrink(GtkButton* button, c_int can_shrink);
	[LinkName("gtk_button_set_child")]
	public static extern void button_set_child(GtkButton* button, GtkWidget* child);
	[LinkName("gtk_button_set_has_frame")]
	public static extern void button_set_has_frame(GtkButton* button, c_int has_frame);
	[LinkName("gtk_button_set_icon_name")]
	public static extern void button_set_icon_name(GtkButton* button,  c_char* icon_name);
	[LinkName("gtk_button_set_label")]
	public static extern void button_set_label(GtkButton* button,  c_char* label);
	[LinkName("gtk_button_set_use_underline")]
	public static extern void button_set_use_underline(GtkButton* button, c_int use_underline);
	[CRepr]
	public struct GtkButtonClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkButtonPrivate
	{
	}
	public enum GtkButtonsType : c_int
	{
		GTK_BUTTONS_NONE,
		GTK_BUTTONS_OK,
		GTK_BUTTONS_CLOSE,
		GTK_BUTTONS_CANCEL,
		GTK_BUTTONS_YES_NO,
		GTK_BUTTONS_OK_CANCEL
	}
	[CRepr]
	public struct GtkCClosureExpression;
	[LinkName("gtk_cclosure_expression_new")]
	public static extern GtkExpression* cclosure_expression_new(GType value_type, GClosureMarshal marshal, c_uint n_params, GCallback callback_func, void* user_data, GClosureNotify user_destroy);
	[CRepr]
	public struct GtkCalendar;
	[LinkName("gtk_calendar_new")]
	public static extern GtkWidget* calendar_new();
	[LinkName("gtk_calendar_clear_marks")]
	public static extern void calendar_clear_marks(GtkCalendar* calendar);
	[LinkName("gtk_calendar_get_date")]
	public static extern GDateTime* calendar_get_date(GtkCalendar* self);
	[LinkName("gtk_calendar_get_day_is_marked")]
	public static extern c_int calendar_get_day_is_marked(GtkCalendar* calendar, c_uint day);
	[LinkName("gtk_calendar_get_show_day_names")]
	public static extern c_int calendar_get_show_day_names(GtkCalendar* self);
	[LinkName("gtk_calendar_get_show_heading")]
	public static extern c_int calendar_get_show_heading(GtkCalendar* self);
	[LinkName("gtk_calendar_get_show_week_numbers")]
	public static extern c_int calendar_get_show_week_numbers(GtkCalendar* self);
	[LinkName("gtk_calendar_mark_day")]
	public static extern void calendar_mark_day(GtkCalendar* calendar, c_uint day);
	[LinkName("gtk_calendar_select_day")]
	public static extern void calendar_select_day(GtkCalendar* self, GDateTime* date);
	[LinkName("gtk_calendar_set_show_day_names")]
	public static extern void calendar_set_show_day_names(GtkCalendar* self, c_int value);
	[LinkName("gtk_calendar_set_show_heading")]
	public static extern void calendar_set_show_heading(GtkCalendar* self, c_int value);
	[LinkName("gtk_calendar_set_show_week_numbers")]
	public static extern void calendar_set_show_week_numbers(GtkCalendar* self, c_int value);
	[LinkName("gtk_calendar_unmark_day")]
	public static extern void calendar_unmark_day(GtkCalendar* calendar, c_uint day);
	[CRepr]
	public struct GtkCallbackAction;
	[LinkName("gtk_callback_action_new")]
	public static extern GtkShortcutAction* callback_action_new(GtkShortcutFunc callback, void* data, GDestroyNotify destroy);
	[CRepr]
	public struct GtkCallbackActionClass
	{
	}
	public function c_int GtkCellAllocCallback(GtkCellRenderer* renderer,  GdkRectangle* cell_area,  GdkRectangle* cell_background, void* data);
	[CRepr]
	public struct GtkCellArea;
	[LinkName("gtk_cell_area_activate")]
	public static extern c_int cell_area_activate(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget,  GdkRectangle* cell_area, GtkCellRendererState flags, c_int edit_only);
	[LinkName("gtk_cell_area_activate_cell")]
	public static extern c_int cell_area_activate_cell(GtkCellArea* area, GtkWidget* widget, GtkCellRenderer* renderer, GdkEvent* event,  GdkRectangle* cell_area, GtkCellRendererState flags);
	[LinkName("gtk_cell_area_add")]
	public static extern void cell_area_add(GtkCellArea* area, GtkCellRenderer* renderer);
	[LinkName("gtk_cell_area_add_focus_sibling")]
	public static extern void cell_area_add_focus_sibling(GtkCellArea* area, GtkCellRenderer* renderer, GtkCellRenderer* sibling);
	[LinkName("gtk_cell_area_add_with_properties")]
	public static extern void cell_area_add_with_properties(GtkCellArea* area, GtkCellRenderer* renderer,  c_char* first_prop_name);
	[LinkName("gtk_cell_area_apply_attributes")]
	public static extern void cell_area_apply_attributes(GtkCellArea* area, GtkTreeModel* tree_model, GtkTreeIter* iter, c_int is_expander, c_int is_expanded);
	[LinkName("gtk_cell_area_attribute_connect")]
	public static extern void cell_area_attribute_connect(GtkCellArea* area, GtkCellRenderer* renderer,  c_char* attribute, c_int column);
	[LinkName("gtk_cell_area_attribute_disconnect")]
	public static extern void cell_area_attribute_disconnect(GtkCellArea* area, GtkCellRenderer* renderer,  c_char* attribute);
	[LinkName("gtk_cell_area_attribute_get_column")]
	public static extern c_int cell_area_attribute_get_column(GtkCellArea* area, GtkCellRenderer* renderer,  c_char* attribute);
	[LinkName("gtk_cell_area_cell_get")]
	public static extern void cell_area_cell_get(GtkCellArea* area, GtkCellRenderer* renderer,  c_char* first_prop_name);
	[LinkName("gtk_cell_area_cell_get_property")]
	public static extern void cell_area_cell_get_property(GtkCellArea* area, GtkCellRenderer* renderer,  c_char* property_name, GValue* value);
	[LinkName("gtk_cell_area_cell_get_valist")]
	public static extern void cell_area_cell_get_valist(GtkCellArea* area, GtkCellRenderer* renderer,  c_char* first_property_name, VarArgs var_args);
	[LinkName("gtk_cell_area_cell_set")]
	public static extern void cell_area_cell_set(GtkCellArea* area, GtkCellRenderer* renderer,  c_char* first_prop_name);
	[LinkName("gtk_cell_area_cell_set_property")]
	public static extern void cell_area_cell_set_property(GtkCellArea* area, GtkCellRenderer* renderer,  c_char* property_name,  GValue* value);
	[LinkName("gtk_cell_area_cell_set_valist")]
	public static extern void cell_area_cell_set_valist(GtkCellArea* area, GtkCellRenderer* renderer,  c_char* first_property_name, VarArgs var_args);
	[LinkName("gtk_cell_area_copy_context")]
	public static extern GtkCellAreaContext* cell_area_copy_context(GtkCellArea* area, GtkCellAreaContext* context);
	[LinkName("gtk_cell_area_create_context")]
	public static extern GtkCellAreaContext* cell_area_create_context(GtkCellArea* area);
	[LinkName("gtk_cell_area_event")]
	public static extern c_int cell_area_event(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkEvent* event,  GdkRectangle* cell_area, GtkCellRendererState flags);
	[LinkName("gtk_cell_area_focus")]
	public static extern c_int cell_area_focus(GtkCellArea* area, GtkDirectionType direction);
	[LinkName("gtk_cell_area_foreach")]
	public static extern void cell_area_foreach(GtkCellArea* area, GtkCellCallback callback, void* callback_data);
	[LinkName("gtk_cell_area_foreach_alloc")]
	public static extern void cell_area_foreach_alloc(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget,  GdkRectangle* cell_area,  GdkRectangle* background_area, GtkCellAllocCallback callback, void* callback_data);
	[LinkName("gtk_cell_area_get_cell_allocation")]
	public static extern void cell_area_get_cell_allocation(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GtkCellRenderer* renderer,  GdkRectangle* cell_area, GdkRectangle* allocation);
	[LinkName("gtk_cell_area_get_cell_at_position")]
	public static extern GtkCellRenderer* cell_area_get_cell_at_position(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget,  GdkRectangle* cell_area, c_int x, c_int y, GdkRectangle* alloc_area);
	[LinkName("gtk_cell_area_get_current_path_string")]
	public static extern  c_char* cell_area_get_current_path_string(GtkCellArea* area);
	[LinkName("gtk_cell_area_get_edit_widget")]
	public static extern GtkCellEditable* cell_area_get_edit_widget(GtkCellArea* area);
	[LinkName("gtk_cell_area_get_edited_cell")]
	public static extern GtkCellRenderer* cell_area_get_edited_cell(GtkCellArea* area);
	[LinkName("gtk_cell_area_get_focus_cell")]
	public static extern GtkCellRenderer* cell_area_get_focus_cell(GtkCellArea* area);
	[LinkName("gtk_cell_area_get_focus_from_sibling")]
	public static extern GtkCellRenderer* cell_area_get_focus_from_sibling(GtkCellArea* area, GtkCellRenderer* renderer);
	[LinkName("gtk_cell_area_get_focus_siblings")]
	public static extern  GList* cell_area_get_focus_siblings(GtkCellArea* area, GtkCellRenderer* renderer);
	[LinkName("gtk_cell_area_get_preferred_height")]
	public static extern void cell_area_get_preferred_height(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, c_int* minimum_height, c_int* natural_height);
	[LinkName("gtk_cell_area_get_preferred_height_for_width")]
	public static extern void cell_area_get_preferred_height_for_width(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, c_int width, c_int* minimum_height, c_int* natural_height);
	[LinkName("gtk_cell_area_get_preferred_width")]
	public static extern void cell_area_get_preferred_width(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, c_int* minimum_width, c_int* natural_width);
	[LinkName("gtk_cell_area_get_preferred_width_for_height")]
	public static extern void cell_area_get_preferred_width_for_height(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, c_int height, c_int* minimum_width, c_int* natural_width);
	[LinkName("gtk_cell_area_get_request_mode")]
	public static extern GtkSizeRequestMode cell_area_get_request_mode(GtkCellArea* area);
	[LinkName("gtk_cell_area_has_renderer")]
	public static extern c_int cell_area_has_renderer(GtkCellArea* area, GtkCellRenderer* renderer);
	[LinkName("gtk_cell_area_inner_cell_area")]
	public static extern void cell_area_inner_cell_area(GtkCellArea* area, GtkWidget* widget,  GdkRectangle* cell_area, GdkRectangle* inner_area);
	[LinkName("gtk_cell_area_is_activatable")]
	public static extern c_int cell_area_is_activatable(GtkCellArea* area);
	[LinkName("gtk_cell_area_is_focus_sibling")]
	public static extern c_int cell_area_is_focus_sibling(GtkCellArea* area, GtkCellRenderer* renderer, GtkCellRenderer* sibling);
	[LinkName("gtk_cell_area_remove")]
	public static extern void cell_area_remove(GtkCellArea* area, GtkCellRenderer* renderer);
	[LinkName("gtk_cell_area_remove_focus_sibling")]
	public static extern void cell_area_remove_focus_sibling(GtkCellArea* area, GtkCellRenderer* renderer, GtkCellRenderer* sibling);
	[LinkName("gtk_cell_area_request_renderer")]
	public static extern void cell_area_request_renderer(GtkCellArea* area, GtkCellRenderer* renderer, GtkOrientation orientation, GtkWidget* widget, c_int for_size, c_int* minimum_size, c_int* natural_size);
	[LinkName("gtk_cell_area_set_focus_cell")]
	public static extern void cell_area_set_focus_cell(GtkCellArea* area, GtkCellRenderer* renderer);
	[LinkName("gtk_cell_area_snapshot")]
	public static extern void cell_area_snapshot(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GtkSnapshot* snapshot,  GdkRectangle* background_area,  GdkRectangle* cell_area, GtkCellRendererState flags, c_int paint_focus);
	[LinkName("gtk_cell_area_stop_editing")]
	public static extern void cell_area_stop_editing(GtkCellArea* area, c_int canceled);
	[CRepr]
	public struct GtkCellAreaBox;
	[LinkName("gtk_cell_area_box_new")]
	public static extern GtkCellArea* cell_area_box_new();
	[LinkName("gtk_cell_area_box_get_spacing")]
	public static extern c_int cell_area_box_get_spacing(GtkCellAreaBox* box_);
	[LinkName("gtk_cell_area_box_pack_end")]
	public static extern void cell_area_box_pack_end(GtkCellAreaBox* box_, GtkCellRenderer* renderer, c_int expand, c_int align, c_int fixed_);
	[LinkName("gtk_cell_area_box_pack_start")]
	public static extern void cell_area_box_pack_start(GtkCellAreaBox* box_, GtkCellRenderer* renderer, c_int expand, c_int align, c_int fixed_);
	[LinkName("gtk_cell_area_box_set_spacing")]
	public static extern void cell_area_box_set_spacing(GtkCellAreaBox* box_, c_int spacing);
	[CRepr]
	public struct GtkCellAreaClass
	{
		GInitiallyUnownedClass parent_class;
	}
	[CRepr]
	public struct GtkCellAreaContext;
	[LinkName("gtk_cell_area_context_allocate")]
	public static extern void cell_area_context_allocate(GtkCellAreaContext* context, c_int width, c_int height);
	[LinkName("gtk_cell_area_context_get_allocation")]
	public static extern void cell_area_context_get_allocation(GtkCellAreaContext* context, c_int* width, c_int* height);
	[LinkName("gtk_cell_area_context_get_area")]
	public static extern GtkCellArea* cell_area_context_get_area(GtkCellAreaContext* context);
	[LinkName("gtk_cell_area_context_get_preferred_height")]
	public static extern void cell_area_context_get_preferred_height(GtkCellAreaContext* context, c_int* minimum_height, c_int* natural_height);
	[LinkName("gtk_cell_area_context_get_preferred_height_for_width")]
	public static extern void cell_area_context_get_preferred_height_for_width(GtkCellAreaContext* context, c_int width, c_int* minimum_height, c_int* natural_height);
	[LinkName("gtk_cell_area_context_get_preferred_width")]
	public static extern void cell_area_context_get_preferred_width(GtkCellAreaContext* context, c_int* minimum_width, c_int* natural_width);
	[LinkName("gtk_cell_area_context_get_preferred_width_for_height")]
	public static extern void cell_area_context_get_preferred_width_for_height(GtkCellAreaContext* context, c_int height, c_int* minimum_width, c_int* natural_width);
	[LinkName("gtk_cell_area_context_push_preferred_height")]
	public static extern void cell_area_context_push_preferred_height(GtkCellAreaContext* context, c_int minimum_height, c_int natural_height);
	[LinkName("gtk_cell_area_context_push_preferred_width")]
	public static extern void cell_area_context_push_preferred_width(GtkCellAreaContext* context, c_int minimum_width, c_int natural_width);
	[LinkName("gtk_cell_area_context_reset")]
	public static extern void cell_area_context_reset(GtkCellAreaContext* context);
	[CRepr]
	public struct GtkCellAreaContextClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkCellAreaContextPrivate
	{
	}
	public function c_int GtkCellCallback(GtkCellRenderer* renderer, void* data);
	[CRepr]
	public struct GtkCellEditable
	{
		public function void(GtkCellEditable* cell_editable) editing_done;

		public function void(GtkCellEditable* cell_editable) remove_widget;

		public function void(GtkCellEditable* cell_editable, GdkEvent* event) start_editing;
	}
	[CRepr]
	public struct GtkCellEditableIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GtkCellLayout
	{
		public function void(GtkCellLayout* cell_layout, GtkCellRenderer* cell,  c_char* attribute, c_int column) add_attribute;

		public function void(GtkCellLayout* cell_layout) clear;

		public function void(GtkCellLayout* cell_layout, GtkCellRenderer* cell) clear_attributes;

		public function GtkCellArea*(GtkCellLayout* cell_layout) get_area;

		public function GList*(GtkCellLayout* cell_layout) get_cells;

		public function void(GtkCellLayout* cell_layout, GtkCellRenderer* cell, c_int expand) pack_end;

		public function void(GtkCellLayout* cell_layout, GtkCellRenderer* cell, c_int expand) pack_start;

		public function void(GtkCellLayout* cell_layout, GtkCellRenderer* cell, c_int position) reorder;

		public function void(GtkCellLayout* cell_layout, GtkCellRenderer* cell, GtkCellLayoutDataFunc func, void* func_data, GDestroyNotify destroy) set_cell_data_func;
	}
	public function void GtkCellLayoutDataFunc(GtkCellLayout* cell_layout, GtkCellRenderer* cell, GtkTreeModel* tree_model, GtkTreeIter* iter, void* data);
	[CRepr]
	public struct GtkCellLayoutIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GtkCellRenderer;
	[LinkName("gtk_cell_renderer_activate")]
	public static extern c_int cell_renderer_activate(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget,  c_char* path,  GdkRectangle* background_area,  GdkRectangle* cell_area, GtkCellRendererState flags);
	[LinkName("gtk_cell_renderer_get_aligned_area")]
	public static extern void cell_renderer_get_aligned_area(GtkCellRenderer* cell, GtkWidget* widget, GtkCellRendererState flags,  GdkRectangle* cell_area, GdkRectangle* aligned_area);
	[LinkName("gtk_cell_renderer_get_alignment")]
	public static extern void cell_renderer_get_alignment(GtkCellRenderer* cell, float* xalign, float* yalign);
	[LinkName("gtk_cell_renderer_get_fixed_size")]
	public static extern void cell_renderer_get_fixed_size(GtkCellRenderer* cell, c_int* width, c_int* height);
	[LinkName("gtk_cell_renderer_get_is_expanded")]
	public static extern c_int cell_renderer_get_is_expanded(GtkCellRenderer* cell);
	[LinkName("gtk_cell_renderer_get_is_expander")]
	public static extern c_int cell_renderer_get_is_expander(GtkCellRenderer* cell);
	[LinkName("gtk_cell_renderer_get_padding")]
	public static extern void cell_renderer_get_padding(GtkCellRenderer* cell, c_int* xpad, c_int* ypad);
	[LinkName("gtk_cell_renderer_get_preferred_height")]
	public static extern void cell_renderer_get_preferred_height(GtkCellRenderer* cell, GtkWidget* widget, c_int* minimum_size, c_int* natural_size);
	[LinkName("gtk_cell_renderer_get_preferred_height_for_width")]
	public static extern void cell_renderer_get_preferred_height_for_width(GtkCellRenderer* cell, GtkWidget* widget, c_int width, c_int* minimum_height, c_int* natural_height);
	[LinkName("gtk_cell_renderer_get_preferred_size")]
	public static extern void cell_renderer_get_preferred_size(GtkCellRenderer* cell, GtkWidget* widget, GtkRequisition* minimum_size, GtkRequisition* natural_size);
	[LinkName("gtk_cell_renderer_get_preferred_width")]
	public static extern void cell_renderer_get_preferred_width(GtkCellRenderer* cell, GtkWidget* widget, c_int* minimum_size, c_int* natural_size);
	[LinkName("gtk_cell_renderer_get_preferred_width_for_height")]
	public static extern void cell_renderer_get_preferred_width_for_height(GtkCellRenderer* cell, GtkWidget* widget, c_int height, c_int* minimum_width, c_int* natural_width);
	[LinkName("gtk_cell_renderer_get_request_mode")]
	public static extern GtkSizeRequestMode cell_renderer_get_request_mode(GtkCellRenderer* cell);
	[LinkName("gtk_cell_renderer_get_sensitive")]
	public static extern c_int cell_renderer_get_sensitive(GtkCellRenderer* cell);
	[LinkName("gtk_cell_renderer_get_state")]
	public static extern GtkStateFlags cell_renderer_get_state(GtkCellRenderer* cell, GtkWidget* widget, GtkCellRendererState cell_state);
	[LinkName("gtk_cell_renderer_get_visible")]
	public static extern c_int cell_renderer_get_visible(GtkCellRenderer* cell);
	[LinkName("gtk_cell_renderer_is_activatable")]
	public static extern c_int cell_renderer_is_activatable(GtkCellRenderer* cell);
	[LinkName("gtk_cell_renderer_set_alignment")]
	public static extern void cell_renderer_set_alignment(GtkCellRenderer* cell, float xalign, float yalign);
	[LinkName("gtk_cell_renderer_set_fixed_size")]
	public static extern void cell_renderer_set_fixed_size(GtkCellRenderer* cell, c_int width, c_int height);
	[LinkName("gtk_cell_renderer_set_is_expanded")]
	public static extern void cell_renderer_set_is_expanded(GtkCellRenderer* cell, c_int is_expanded);
	[LinkName("gtk_cell_renderer_set_is_expander")]
	public static extern void cell_renderer_set_is_expander(GtkCellRenderer* cell, c_int is_expander);
	[LinkName("gtk_cell_renderer_set_padding")]
	public static extern void cell_renderer_set_padding(GtkCellRenderer* cell, c_int xpad, c_int ypad);
	[LinkName("gtk_cell_renderer_set_sensitive")]
	public static extern void cell_renderer_set_sensitive(GtkCellRenderer* cell, c_int sensitive);
	[LinkName("gtk_cell_renderer_set_visible")]
	public static extern void cell_renderer_set_visible(GtkCellRenderer* cell, c_int visible);
	[LinkName("gtk_cell_renderer_snapshot")]
	public static extern void cell_renderer_snapshot(GtkCellRenderer* cell, GtkSnapshot* snapshot, GtkWidget* widget,  GdkRectangle* background_area,  GdkRectangle* cell_area, GtkCellRendererState flags);
	[LinkName("gtk_cell_renderer_start_editing")]
	public static extern GtkCellEditable* cell_renderer_start_editing(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget,  c_char* path,  GdkRectangle* background_area,  GdkRectangle* cell_area, GtkCellRendererState flags);
	[LinkName("gtk_cell_renderer_stop_editing")]
	public static extern void cell_renderer_stop_editing(GtkCellRenderer* cell, c_int canceled);
	[CRepr]
	public struct GtkCellRendererAccel;
	[LinkName("gtk_cell_renderer_accel_new")]
	public static extern GtkCellRenderer* cell_renderer_accel_new();
	public enum GtkCellRendererAccelMode : c_int
	{
		GTK_CELL_RENDERER_ACCEL_MODE_GTK,
		GTK_CELL_RENDERER_ACCEL_MODE_OTHER
	}
	[CRepr]
	public struct GtkCellRendererClass
	{
		GInitiallyUnownedClass parent_class;
	}
	[CRepr]
	public struct GtkCellRendererClassPrivate
	{
	}
	[CRepr]
	public struct GtkCellRendererCombo;
	[LinkName("gtk_cell_renderer_combo_new")]
	public static extern GtkCellRenderer* cell_renderer_combo_new();
	public enum GtkCellRendererMode : c_int
	{
		GTK_CELL_RENDERER_MODE_INERT,
		GTK_CELL_RENDERER_MODE_ACTIVATABLE,
		GTK_CELL_RENDERER_MODE_EDITABLE
	}
	[CRepr]
	public struct GtkCellRendererPixbuf;
	[LinkName("gtk_cell_renderer_pixbuf_new")]
	public static extern GtkCellRenderer* cell_renderer_pixbuf_new();
	[CRepr]
	public struct GtkCellRendererPrivate
	{
	}
	[CRepr]
	public struct GtkCellRendererProgress;
	[LinkName("gtk_cell_renderer_progress_new")]
	public static extern GtkCellRenderer* cell_renderer_progress_new();
	[CRepr]
	public struct GtkCellRendererSpin;
	[LinkName("gtk_cell_renderer_spin_new")]
	public static extern GtkCellRenderer* cell_renderer_spin_new();
	[CRepr]
	public struct GtkCellRendererSpinner;
	[LinkName("gtk_cell_renderer_spinner_new")]
	public static extern GtkCellRenderer* cell_renderer_spinner_new();
	[CRepr]
	public struct GtkCellRendererState
	{
		public const int GTK_CELL_RENDERER_SELECTED = 1;
		public const int GTK_CELL_RENDERER_PRELIT = 2;
		public const int GTK_CELL_RENDERER_INSENSITIVE = 4;
		public const int GTK_CELL_RENDERER_SORTED = 8;
		public const int GTK_CELL_RENDERER_FOCUSED = 16;
		public const int GTK_CELL_RENDERER_EXPANDABLE = 32;
		public const int GTK_CELL_RENDERER_EXPANDED = 64;
	}
	[CRepr]
	public struct GtkCellRendererText;
	[LinkName("gtk_cell_renderer_text_new")]
	public static extern GtkCellRenderer* cell_renderer_text_new();
	[LinkName("gtk_cell_renderer_text_set_fixed_height_from_font")]
	public static extern void cell_renderer_text_set_fixed_height_from_font(GtkCellRendererText* renderer, c_int number_of_rows);
	[CRepr]
	public struct GtkCellRendererTextClass
	{
		GtkCellRendererClass parent_class;
	}
	[CRepr]
	public struct GtkCellRendererToggle;
	[LinkName("gtk_cell_renderer_toggle_new")]
	public static extern GtkCellRenderer* cell_renderer_toggle_new();
	[LinkName("gtk_cell_renderer_toggle_get_activatable")]
	public static extern c_int cell_renderer_toggle_get_activatable(GtkCellRendererToggle* toggle);
	[LinkName("gtk_cell_renderer_toggle_get_active")]
	public static extern c_int cell_renderer_toggle_get_active(GtkCellRendererToggle* toggle);
	[LinkName("gtk_cell_renderer_toggle_get_radio")]
	public static extern c_int cell_renderer_toggle_get_radio(GtkCellRendererToggle* toggle);
	[LinkName("gtk_cell_renderer_toggle_set_activatable")]
	public static extern void cell_renderer_toggle_set_activatable(GtkCellRendererToggle* toggle, c_int setting);
	[LinkName("gtk_cell_renderer_toggle_set_active")]
	public static extern void cell_renderer_toggle_set_active(GtkCellRendererToggle* toggle, c_int setting);
	[LinkName("gtk_cell_renderer_toggle_set_radio")]
	public static extern void cell_renderer_toggle_set_radio(GtkCellRendererToggle* toggle, c_int radio);
	[CRepr]
	public struct GtkCellView;
	[LinkName("gtk_cell_view_new")]
	public static extern GtkWidget* cell_view_new();
	[LinkName("gtk_cell_view_new_with_context")]
	public static extern GtkWidget* cell_view_new_with_context(GtkCellArea* area, GtkCellAreaContext* context);
	[LinkName("gtk_cell_view_new_with_markup")]
	public static extern GtkWidget* cell_view_new_with_markup( c_char* markup);
	[LinkName("gtk_cell_view_new_with_text")]
	public static extern GtkWidget* cell_view_new_with_text( c_char* text);
	[LinkName("gtk_cell_view_new_with_texture")]
	public static extern GtkWidget* cell_view_new_with_texture(GdkTexture* texture);
	[LinkName("gtk_cell_view_get_displayed_row")]
	public static extern GtkTreePath* cell_view_get_displayed_row(GtkCellView* cell_view);
	[LinkName("gtk_cell_view_get_draw_sensitive")]
	public static extern c_int cell_view_get_draw_sensitive(GtkCellView* cell_view);
	[LinkName("gtk_cell_view_get_fit_model")]
	public static extern c_int cell_view_get_fit_model(GtkCellView* cell_view);
	[LinkName("gtk_cell_view_get_model")]
	public static extern GtkTreeModel* cell_view_get_model(GtkCellView* cell_view);
	[LinkName("gtk_cell_view_set_displayed_row")]
	public static extern void cell_view_set_displayed_row(GtkCellView* cell_view, GtkTreePath* path);
	[LinkName("gtk_cell_view_set_draw_sensitive")]
	public static extern void cell_view_set_draw_sensitive(GtkCellView* cell_view, c_int draw_sensitive);
	[LinkName("gtk_cell_view_set_fit_model")]
	public static extern void cell_view_set_fit_model(GtkCellView* cell_view, c_int fit_model);
	[LinkName("gtk_cell_view_set_model")]
	public static extern void cell_view_set_model(GtkCellView* cell_view, GtkTreeModel* model);
	[CRepr]
	public struct GtkCenterBox;
	[LinkName("gtk_center_box_new")]
	public static extern GtkWidget* center_box_new();
	[LinkName("gtk_center_box_get_baseline_position")]
	public static extern GtkBaselinePosition center_box_get_baseline_position(GtkCenterBox* self);
	[LinkName("gtk_center_box_get_center_widget")]
	public static extern GtkWidget* center_box_get_center_widget(GtkCenterBox* self);
	[LinkName("gtk_center_box_get_end_widget")]
	public static extern GtkWidget* center_box_get_end_widget(GtkCenterBox* self);
	[LinkName("gtk_center_box_get_shrink_center_last")]
	public static extern c_int center_box_get_shrink_center_last(GtkCenterBox* self);
	[LinkName("gtk_center_box_get_start_widget")]
	public static extern GtkWidget* center_box_get_start_widget(GtkCenterBox* self);
	[LinkName("gtk_center_box_set_baseline_position")]
	public static extern void center_box_set_baseline_position(GtkCenterBox* self, GtkBaselinePosition position);
	[LinkName("gtk_center_box_set_center_widget")]
	public static extern void center_box_set_center_widget(GtkCenterBox* self, GtkWidget* child);
	[LinkName("gtk_center_box_set_end_widget")]
	public static extern void center_box_set_end_widget(GtkCenterBox* self, GtkWidget* child);
	[LinkName("gtk_center_box_set_shrink_center_last")]
	public static extern void center_box_set_shrink_center_last(GtkCenterBox* self, c_int shrink_center_last);
	[LinkName("gtk_center_box_set_start_widget")]
	public static extern void center_box_set_start_widget(GtkCenterBox* self, GtkWidget* child);
	[CRepr]
	public struct GtkCenterBoxClass
	{
	}
	[CRepr]
	public struct GtkCenterLayout;
	[LinkName("gtk_center_layout_new")]
	public static extern GtkLayoutManager* center_layout_new();
	[LinkName("gtk_center_layout_get_baseline_position")]
	public static extern GtkBaselinePosition center_layout_get_baseline_position(GtkCenterLayout* self);
	[LinkName("gtk_center_layout_get_center_widget")]
	public static extern GtkWidget* center_layout_get_center_widget(GtkCenterLayout* self);
	[LinkName("gtk_center_layout_get_end_widget")]
	public static extern GtkWidget* center_layout_get_end_widget(GtkCenterLayout* self);
	[LinkName("gtk_center_layout_get_orientation")]
	public static extern GtkOrientation center_layout_get_orientation(GtkCenterLayout* self);
	[LinkName("gtk_center_layout_get_shrink_center_last")]
	public static extern c_int center_layout_get_shrink_center_last(GtkCenterLayout* self);
	[LinkName("gtk_center_layout_get_start_widget")]
	public static extern GtkWidget* center_layout_get_start_widget(GtkCenterLayout* self);
	[LinkName("gtk_center_layout_set_baseline_position")]
	public static extern void center_layout_set_baseline_position(GtkCenterLayout* self, GtkBaselinePosition baseline_position);
	[LinkName("gtk_center_layout_set_center_widget")]
	public static extern void center_layout_set_center_widget(GtkCenterLayout* self, GtkWidget* widget);
	[LinkName("gtk_center_layout_set_end_widget")]
	public static extern void center_layout_set_end_widget(GtkCenterLayout* self, GtkWidget* widget);
	[LinkName("gtk_center_layout_set_orientation")]
	public static extern void center_layout_set_orientation(GtkCenterLayout* self, GtkOrientation orientation);
	[LinkName("gtk_center_layout_set_shrink_center_last")]
	public static extern void center_layout_set_shrink_center_last(GtkCenterLayout* self, c_int shrink_center_last);
	[LinkName("gtk_center_layout_set_start_widget")]
	public static extern void center_layout_set_start_widget(GtkCenterLayout* self, GtkWidget* widget);
	[CRepr]
	public struct GtkCenterLayoutClass
	{
		GtkLayoutManagerClass parent_class;
	}
	[CRepr]
	public struct GtkCheckButton;
	[LinkName("gtk_check_button_new")]
	public static extern GtkWidget* check_button_new();
	[LinkName("gtk_check_button_new_with_label")]
	public static extern GtkWidget* check_button_new_with_label( c_char* label);
	[LinkName("gtk_check_button_new_with_mnemonic")]
	public static extern GtkWidget* check_button_new_with_mnemonic( c_char* label);
	[LinkName("gtk_check_button_get_active")]
	public static extern c_int check_button_get_active(GtkCheckButton* self);
	[LinkName("gtk_check_button_get_child")]
	public static extern GtkWidget* check_button_get_child(GtkCheckButton* button);
	[LinkName("gtk_check_button_get_inconsistent")]
	public static extern c_int check_button_get_inconsistent(GtkCheckButton* check_button);
	[LinkName("gtk_check_button_get_label")]
	public static extern  c_char* check_button_get_label(GtkCheckButton* self);
	[LinkName("gtk_check_button_get_use_underline")]
	public static extern c_int check_button_get_use_underline(GtkCheckButton* self);
	[LinkName("gtk_check_button_set_active")]
	public static extern void check_button_set_active(GtkCheckButton* self, c_int setting);
	[LinkName("gtk_check_button_set_child")]
	public static extern void check_button_set_child(GtkCheckButton* button, GtkWidget* child);
	[LinkName("gtk_check_button_set_group")]
	public static extern void check_button_set_group(GtkCheckButton* self, GtkCheckButton* group);
	[LinkName("gtk_check_button_set_inconsistent")]
	public static extern void check_button_set_inconsistent(GtkCheckButton* check_button, c_int inconsistent);
	[LinkName("gtk_check_button_set_label")]
	public static extern void check_button_set_label(GtkCheckButton* self,  c_char* label);
	[LinkName("gtk_check_button_set_use_underline")]
	public static extern void check_button_set_use_underline(GtkCheckButton* self, c_int setting);
	[CRepr]
	public struct GtkCheckButtonClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkClosureExpression;
	[LinkName("gtk_closure_expression_new")]
	public static extern GtkExpression* closure_expression_new(GType value_type, GClosure* closure, c_uint n_params);
	public enum GtkCollation : c_int
	{
		GTK_COLLATION_NONE,
		GTK_COLLATION_UNICODE,
		GTK_COLLATION_FILENAME
	}
	[CRepr]
	public struct GtkColorButton;
	[LinkName("gtk_color_button_new")]
	public static extern GtkWidget* color_button_new();
	[LinkName("gtk_color_button_new_with_rgba")]
	public static extern GtkWidget* color_button_new_with_rgba( GdkRGBA* rgba);
	[LinkName("gtk_color_button_get_modal")]
	public static extern c_int color_button_get_modal(GtkColorButton* button);
	[LinkName("gtk_color_button_get_title")]
	public static extern  c_char* color_button_get_title(GtkColorButton* button);
	[LinkName("gtk_color_button_set_modal")]
	public static extern void color_button_set_modal(GtkColorButton* button, c_int modal);
	[LinkName("gtk_color_button_set_title")]
	public static extern void color_button_set_title(GtkColorButton* button,  c_char* title);
	[CRepr]
	public struct GtkColorChooser
	{
		public function void(GtkColorChooser* chooser, GtkOrientation orientation, c_int colors_per_line, c_int n_colors) add_palette;

		public function void(GtkColorChooser* chooser,  GdkRGBA* color) color_activated;

		public function void(GtkColorChooser* chooser, GdkRGBA* color) get_rgba;

		public function void(GtkColorChooser* chooser,  GdkRGBA* color) set_rgba;
	}
	[CRepr]
	public struct GtkColorChooserDialog;
	[LinkName("gtk_color_chooser_dialog_new")]
	public static extern GtkWidget* color_chooser_dialog_new( c_char* title, GtkWindow* parent);
	[CRepr]
	public struct GtkColorChooserInterface
	{
		GTypeInterface base_interface;
	}
	[CRepr]
	public struct GtkColorChooserWidget;
	[LinkName("gtk_color_chooser_widget_new")]
	public static extern GtkWidget* color_chooser_widget_new();
	[CRepr]
	public struct GtkColorDialog;
	[LinkName("gtk_color_dialog_new")]
	public static extern GtkColorDialog* color_dialog_new();
	[LinkName("gtk_color_dialog_choose_rgba")]
	public static extern void color_dialog_choose_rgba(GtkColorDialog* self, GtkWindow* parent,  GdkRGBA* initial_color, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_color_dialog_choose_rgba_finish")]
	public static extern GdkRGBA* color_dialog_choose_rgba_finish(GtkColorDialog* self, GAsyncResult* result);
	[LinkName("gtk_color_dialog_get_modal")]
	public static extern c_int color_dialog_get_modal(GtkColorDialog* self);
	[LinkName("gtk_color_dialog_get_title")]
	public static extern  c_char* color_dialog_get_title(GtkColorDialog* self);
	[LinkName("gtk_color_dialog_get_with_alpha")]
	public static extern c_int color_dialog_get_with_alpha(GtkColorDialog* self);
	[LinkName("gtk_color_dialog_set_modal")]
	public static extern void color_dialog_set_modal(GtkColorDialog* self, c_int modal);
	[LinkName("gtk_color_dialog_set_title")]
	public static extern void color_dialog_set_title(GtkColorDialog* self,  c_char* title);
	[LinkName("gtk_color_dialog_set_with_alpha")]
	public static extern void color_dialog_set_with_alpha(GtkColorDialog* self, c_int with_alpha);
	[CRepr]
	public struct GtkColorDialogButton;
	[LinkName("gtk_color_dialog_button_new")]
	public static extern GtkWidget* color_dialog_button_new(GtkColorDialog* dialog);
	[LinkName("gtk_color_dialog_button_get_dialog")]
	public static extern GtkColorDialog* color_dialog_button_get_dialog(GtkColorDialogButton* self);
	[LinkName("gtk_color_dialog_button_get_rgba")]
	public static extern  GdkRGBA* color_dialog_button_get_rgba(GtkColorDialogButton* self);
	[LinkName("gtk_color_dialog_button_set_dialog")]
	public static extern void color_dialog_button_set_dialog(GtkColorDialogButton* self, GtkColorDialog* dialog);
	[LinkName("gtk_color_dialog_button_set_rgba")]
	public static extern void color_dialog_button_set_rgba(GtkColorDialogButton* self,  GdkRGBA* color);
	[CRepr]
	public struct GtkColorDialogButtonClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkColorDialogClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkColumnView;
	[LinkName("gtk_column_view_new")]
	public static extern GtkWidget* column_view_new(GtkSelectionModel* model);
	[LinkName("gtk_column_view_append_column")]
	public static extern void column_view_append_column(GtkColumnView* self, GtkColumnViewColumn* column);
	[LinkName("gtk_column_view_get_columns")]
	public static extern GListModel* column_view_get_columns(GtkColumnView* self);
	[LinkName("gtk_column_view_get_enable_rubberband")]
	public static extern c_int column_view_get_enable_rubberband(GtkColumnView* self);
	[LinkName("gtk_column_view_get_header_factory")]
	public static extern GtkListItemFactory* column_view_get_header_factory(GtkColumnView* self);
	[LinkName("gtk_column_view_get_model")]
	public static extern GtkSelectionModel* column_view_get_model(GtkColumnView* self);
	[LinkName("gtk_column_view_get_reorderable")]
	public static extern c_int column_view_get_reorderable(GtkColumnView* self);
	[LinkName("gtk_column_view_get_row_factory")]
	public static extern GtkListItemFactory* column_view_get_row_factory(GtkColumnView* self);
	[LinkName("gtk_column_view_get_show_column_separators")]
	public static extern c_int column_view_get_show_column_separators(GtkColumnView* self);
	[LinkName("gtk_column_view_get_show_row_separators")]
	public static extern c_int column_view_get_show_row_separators(GtkColumnView* self);
	[LinkName("gtk_column_view_get_single_click_activate")]
	public static extern c_int column_view_get_single_click_activate(GtkColumnView* self);
	[LinkName("gtk_column_view_get_sorter")]
	public static extern GtkSorter* column_view_get_sorter(GtkColumnView* self);
	[LinkName("gtk_column_view_get_tab_behavior")]
	public static extern GtkListTabBehavior column_view_get_tab_behavior(GtkColumnView* self);
	[LinkName("gtk_column_view_insert_column")]
	public static extern void column_view_insert_column(GtkColumnView* self, c_uint position, GtkColumnViewColumn* column);
	[LinkName("gtk_column_view_remove_column")]
	public static extern void column_view_remove_column(GtkColumnView* self, GtkColumnViewColumn* column);
	[LinkName("gtk_column_view_set_enable_rubberband")]
	public static extern void column_view_set_enable_rubberband(GtkColumnView* self, c_int enable_rubberband);
	[LinkName("gtk_column_view_set_header_factory")]
	public static extern void column_view_set_header_factory(GtkColumnView* self, GtkListItemFactory* factory);
	[LinkName("gtk_column_view_set_model")]
	public static extern void column_view_set_model(GtkColumnView* self, GtkSelectionModel* model);
	[LinkName("gtk_column_view_set_reorderable")]
	public static extern void column_view_set_reorderable(GtkColumnView* self, c_int reorderable);
	[LinkName("gtk_column_view_set_row_factory")]
	public static extern void column_view_set_row_factory(GtkColumnView* self, GtkListItemFactory* factory);
	[LinkName("gtk_column_view_set_show_column_separators")]
	public static extern void column_view_set_show_column_separators(GtkColumnView* self, c_int show_column_separators);
	[LinkName("gtk_column_view_set_show_row_separators")]
	public static extern void column_view_set_show_row_separators(GtkColumnView* self, c_int show_row_separators);
	[LinkName("gtk_column_view_set_single_click_activate")]
	public static extern void column_view_set_single_click_activate(GtkColumnView* self, c_int single_click_activate);
	[LinkName("gtk_column_view_set_tab_behavior")]
	public static extern void column_view_set_tab_behavior(GtkColumnView* self, GtkListTabBehavior tab_behavior);
	[LinkName("gtk_column_view_sort_by_column")]
	public static extern void column_view_sort_by_column(GtkColumnView* self, GtkColumnViewColumn* column, GtkSortType direction);
	[CRepr]
	public struct GtkColumnViewCell;
	[LinkName("gtk_column_view_cell_get_child")]
	public static extern GtkWidget* column_view_cell_get_child(GtkColumnViewCell* self);
	[LinkName("gtk_column_view_cell_get_focusable")]
	public static extern c_int column_view_cell_get_focusable(GtkColumnViewCell* self);
	[LinkName("gtk_column_view_cell_get_item")]
	public static extern void* column_view_cell_get_item(GtkColumnViewCell* self);
	[LinkName("gtk_column_view_cell_get_position")]
	public static extern c_uint column_view_cell_get_position(GtkColumnViewCell* self);
	[LinkName("gtk_column_view_cell_get_selected")]
	public static extern c_int column_view_cell_get_selected(GtkColumnViewCell* self);
	[LinkName("gtk_column_view_cell_set_child")]
	public static extern void column_view_cell_set_child(GtkColumnViewCell* self, GtkWidget* child);
	[LinkName("gtk_column_view_cell_set_focusable")]
	public static extern void column_view_cell_set_focusable(GtkColumnViewCell* self, c_int focusable);
	[CRepr]
	public struct GtkColumnViewCellClass
	{
	}
	[CRepr]
	public struct GtkColumnViewClass
	{
	}
	[CRepr]
	public struct GtkColumnViewColumn;
	[LinkName("gtk_column_view_column_new")]
	public static extern GtkColumnViewColumn* column_view_column_new( c_char* title, GtkListItemFactory* factory);
	[LinkName("gtk_column_view_column_get_column_view")]
	public static extern GtkColumnView* column_view_column_get_column_view(GtkColumnViewColumn* self);
	[LinkName("gtk_column_view_column_get_expand")]
	public static extern c_int column_view_column_get_expand(GtkColumnViewColumn* self);
	[LinkName("gtk_column_view_column_get_factory")]
	public static extern GtkListItemFactory* column_view_column_get_factory(GtkColumnViewColumn* self);
	[LinkName("gtk_column_view_column_get_fixed_width")]
	public static extern c_int column_view_column_get_fixed_width(GtkColumnViewColumn* self);
	[LinkName("gtk_column_view_column_get_header_menu")]
	public static extern GMenuModel* column_view_column_get_header_menu(GtkColumnViewColumn* self);
	[LinkName("gtk_column_view_column_get_id")]
	public static extern  c_char* column_view_column_get_id(GtkColumnViewColumn* self);
	[LinkName("gtk_column_view_column_get_resizable")]
	public static extern c_int column_view_column_get_resizable(GtkColumnViewColumn* self);
	[LinkName("gtk_column_view_column_get_sorter")]
	public static extern GtkSorter* column_view_column_get_sorter(GtkColumnViewColumn* self);
	[LinkName("gtk_column_view_column_get_title")]
	public static extern  c_char* column_view_column_get_title(GtkColumnViewColumn* self);
	[LinkName("gtk_column_view_column_get_visible")]
	public static extern c_int column_view_column_get_visible(GtkColumnViewColumn* self);
	[LinkName("gtk_column_view_column_set_expand")]
	public static extern void column_view_column_set_expand(GtkColumnViewColumn* self, c_int expand);
	[LinkName("gtk_column_view_column_set_factory")]
	public static extern void column_view_column_set_factory(GtkColumnViewColumn* self, GtkListItemFactory* factory);
	[LinkName("gtk_column_view_column_set_fixed_width")]
	public static extern void column_view_column_set_fixed_width(GtkColumnViewColumn* self, c_int fixed_width);
	[LinkName("gtk_column_view_column_set_header_menu")]
	public static extern void column_view_column_set_header_menu(GtkColumnViewColumn* self, GMenuModel* menu);
	[LinkName("gtk_column_view_column_set_id")]
	public static extern void column_view_column_set_id(GtkColumnViewColumn* self,  c_char* id);
	[LinkName("gtk_column_view_column_set_resizable")]
	public static extern void column_view_column_set_resizable(GtkColumnViewColumn* self, c_int resizable);
	[LinkName("gtk_column_view_column_set_sorter")]
	public static extern void column_view_column_set_sorter(GtkColumnViewColumn* self, GtkSorter* sorter);
	[LinkName("gtk_column_view_column_set_title")]
	public static extern void column_view_column_set_title(GtkColumnViewColumn* self,  c_char* title);
	[LinkName("gtk_column_view_column_set_visible")]
	public static extern void column_view_column_set_visible(GtkColumnViewColumn* self, c_int visible);
	[CRepr]
	public struct GtkColumnViewColumnClass
	{
	}
	[CRepr]
	public struct GtkColumnViewRow;
	[LinkName("gtk_column_view_row_get_activatable")]
	public static extern c_int column_view_row_get_activatable(GtkColumnViewRow* self);
	[LinkName("gtk_column_view_row_get_focusable")]
	public static extern c_int column_view_row_get_focusable(GtkColumnViewRow* self);
	[LinkName("gtk_column_view_row_get_item")]
	public static extern void* column_view_row_get_item(GtkColumnViewRow* self);
	[LinkName("gtk_column_view_row_get_position")]
	public static extern c_uint column_view_row_get_position(GtkColumnViewRow* self);
	[LinkName("gtk_column_view_row_get_selectable")]
	public static extern c_int column_view_row_get_selectable(GtkColumnViewRow* self);
	[LinkName("gtk_column_view_row_get_selected")]
	public static extern c_int column_view_row_get_selected(GtkColumnViewRow* self);
	[LinkName("gtk_column_view_row_set_activatable")]
	public static extern void column_view_row_set_activatable(GtkColumnViewRow* self, c_int activatable);
	[LinkName("gtk_column_view_row_set_focusable")]
	public static extern void column_view_row_set_focusable(GtkColumnViewRow* self, c_int focusable);
	[LinkName("gtk_column_view_row_set_selectable")]
	public static extern void column_view_row_set_selectable(GtkColumnViewRow* self, c_int selectable);
	[CRepr]
	public struct GtkColumnViewRowClass
	{
	}
	[CRepr]
	public struct GtkColumnViewSorter;
	[LinkName("gtk_column_view_sorter_get_n_sort_columns")]
	public static extern c_uint column_view_sorter_get_n_sort_columns(GtkColumnViewSorter* self);
	[LinkName("gtk_column_view_sorter_get_nth_sort_column")]
	public static extern GtkColumnViewColumn* column_view_sorter_get_nth_sort_column(GtkColumnViewSorter* self, c_uint position, GtkSortType* sort_order);
	[LinkName("gtk_column_view_sorter_get_primary_sort_column")]
	public static extern GtkColumnViewColumn* column_view_sorter_get_primary_sort_column(GtkColumnViewSorter* self);
	[LinkName("gtk_column_view_sorter_get_primary_sort_order")]
	public static extern GtkSortType column_view_sorter_get_primary_sort_order(GtkColumnViewSorter* self);
	[CRepr]
	public struct GtkColumnViewSorterClass
	{
		GtkSorterClass parent_class;
	}
	[CRepr]
	public struct GtkComboBox;
	[LinkName("gtk_combo_box_new")]
	public static extern GtkWidget* combo_box_new();
	[LinkName("gtk_combo_box_new_with_entry")]
	public static extern GtkWidget* combo_box_new_with_entry();
	[LinkName("gtk_combo_box_new_with_model")]
	public static extern GtkWidget* combo_box_new_with_model(GtkTreeModel* model);
	[LinkName("gtk_combo_box_new_with_model_and_entry")]
	public static extern GtkWidget* combo_box_new_with_model_and_entry(GtkTreeModel* model);
	[LinkName("gtk_combo_box_get_active")]
	public static extern c_int combo_box_get_active(GtkComboBox* combo_box);
	[LinkName("gtk_combo_box_get_active_id")]
	public static extern  c_char* combo_box_get_active_id(GtkComboBox* combo_box);
	[LinkName("gtk_combo_box_get_active_iter")]
	public static extern c_int combo_box_get_active_iter(GtkComboBox* combo_box, GtkTreeIter* iter);
	[LinkName("gtk_combo_box_get_button_sensitivity")]
	public static extern GtkSensitivityType combo_box_get_button_sensitivity(GtkComboBox* combo_box);
	[LinkName("gtk_combo_box_get_child")]
	public static extern GtkWidget* combo_box_get_child(GtkComboBox* combo_box);
	[LinkName("gtk_combo_box_get_entry_text_column")]
	public static extern c_int combo_box_get_entry_text_column(GtkComboBox* combo_box);
	[LinkName("gtk_combo_box_get_has_entry")]
	public static extern c_int combo_box_get_has_entry(GtkComboBox* combo_box);
	[LinkName("gtk_combo_box_get_id_column")]
	public static extern c_int combo_box_get_id_column(GtkComboBox* combo_box);
	[LinkName("gtk_combo_box_get_model")]
	public static extern GtkTreeModel* combo_box_get_model(GtkComboBox* combo_box);
	[LinkName("gtk_combo_box_get_popup_fixed_width")]
	public static extern c_int combo_box_get_popup_fixed_width(GtkComboBox* combo_box);
	[LinkName("gtk_combo_box_get_row_separator_func")]
	public static extern GtkTreeViewRowSeparatorFunc combo_box_get_row_separator_func(GtkComboBox* combo_box);
	[LinkName("gtk_combo_box_popdown")]
	public static extern void combo_box_popdown(GtkComboBox* combo_box);
	[LinkName("gtk_combo_box_popup")]
	public static extern void combo_box_popup(GtkComboBox* combo_box);
	[LinkName("gtk_combo_box_popup_for_device")]
	public static extern void combo_box_popup_for_device(GtkComboBox* combo_box, GdkDevice* device);
	[LinkName("gtk_combo_box_set_active")]
	public static extern void combo_box_set_active(GtkComboBox* combo_box, c_int index_);
	[LinkName("gtk_combo_box_set_active_id")]
	public static extern c_int combo_box_set_active_id(GtkComboBox* combo_box,  c_char* active_id);
	[LinkName("gtk_combo_box_set_active_iter")]
	public static extern void combo_box_set_active_iter(GtkComboBox* combo_box, GtkTreeIter* iter);
	[LinkName("gtk_combo_box_set_button_sensitivity")]
	public static extern void combo_box_set_button_sensitivity(GtkComboBox* combo_box, GtkSensitivityType sensitivity);
	[LinkName("gtk_combo_box_set_child")]
	public static extern void combo_box_set_child(GtkComboBox* combo_box, GtkWidget* child);
	[LinkName("gtk_combo_box_set_entry_text_column")]
	public static extern void combo_box_set_entry_text_column(GtkComboBox* combo_box, c_int text_column);
	[LinkName("gtk_combo_box_set_id_column")]
	public static extern void combo_box_set_id_column(GtkComboBox* combo_box, c_int id_column);
	[LinkName("gtk_combo_box_set_model")]
	public static extern void combo_box_set_model(GtkComboBox* combo_box, GtkTreeModel* model);
	[LinkName("gtk_combo_box_set_popup_fixed_width")]
	public static extern void combo_box_set_popup_fixed_width(GtkComboBox* combo_box, c_int fixed_);
	[LinkName("gtk_combo_box_set_row_separator_func")]
	public static extern void combo_box_set_row_separator_func(GtkComboBox* combo_box, GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy);
	[CRepr]
	public struct GtkComboBoxClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkComboBoxText;
	[LinkName("gtk_combo_box_text_new")]
	public static extern GtkWidget* combo_box_text_new();
	[LinkName("gtk_combo_box_text_new_with_entry")]
	public static extern GtkWidget* combo_box_text_new_with_entry();
	[LinkName("gtk_combo_box_text_append")]
	public static extern void combo_box_text_append(GtkComboBoxText* combo_box,  c_char* id,  c_char* text);
	[LinkName("gtk_combo_box_text_append_text")]
	public static extern void combo_box_text_append_text(GtkComboBoxText* combo_box,  c_char* text);
	[LinkName("gtk_combo_box_text_get_active_text")]
	public static extern c_char* combo_box_text_get_active_text(GtkComboBoxText* combo_box);
	[LinkName("gtk_combo_box_text_insert")]
	public static extern void combo_box_text_insert(GtkComboBoxText* combo_box, c_int position,  c_char* id,  c_char* text);
	[LinkName("gtk_combo_box_text_insert_text")]
	public static extern void combo_box_text_insert_text(GtkComboBoxText* combo_box, c_int position,  c_char* text);
	[LinkName("gtk_combo_box_text_prepend")]
	public static extern void combo_box_text_prepend(GtkComboBoxText* combo_box,  c_char* id,  c_char* text);
	[LinkName("gtk_combo_box_text_prepend_text")]
	public static extern void combo_box_text_prepend_text(GtkComboBoxText* combo_box,  c_char* text);
	[LinkName("gtk_combo_box_text_remove")]
	public static extern void combo_box_text_remove(GtkComboBoxText* combo_box, c_int position);
	[LinkName("gtk_combo_box_text_remove_all")]
	public static extern void combo_box_text_remove_all(GtkComboBoxText* combo_box);
	[CRepr]
	public struct GtkConstantExpression;
	[LinkName("gtk_constant_expression_new")]
	public static extern GtkExpression* constant_expression_new(GType value_type);
	[LinkName("gtk_constant_expression_new_for_value")]
	public static extern GtkExpression* constant_expression_new_for_value( GValue* value);
	[LinkName("gtk_constant_expression_get_value")]
	public static extern  GValue* constant_expression_get_value(GtkExpression* expression);
	[CRepr]
	public struct GtkConstraint;
	[LinkName("gtk_constraint_new")]
	public static extern GtkConstraint* constraint_new(void* target, GtkConstraintAttribute target_attribute, GtkConstraintRelation relation, void* source, GtkConstraintAttribute source_attribute, double multiplier, double constant, c_int strength);
	[LinkName("gtk_constraint_new_constant")]
	public static extern GtkConstraint* constraint_new_constant(void* target, GtkConstraintAttribute target_attribute, GtkConstraintRelation relation, double constant, c_int strength);
	[LinkName("gtk_constraint_get_constant")]
	public static extern double constraint_get_constant(GtkConstraint* constraint);
	[LinkName("gtk_constraint_get_multiplier")]
	public static extern double constraint_get_multiplier(GtkConstraint* constraint);
	[LinkName("gtk_constraint_get_relation")]
	public static extern GtkConstraintRelation constraint_get_relation(GtkConstraint* constraint);
	[LinkName("gtk_constraint_get_source")]
	public static extern GtkConstraintTarget* constraint_get_source(GtkConstraint* constraint);
	[LinkName("gtk_constraint_get_source_attribute")]
	public static extern GtkConstraintAttribute constraint_get_source_attribute(GtkConstraint* constraint);
	[LinkName("gtk_constraint_get_strength")]
	public static extern c_int constraint_get_strength(GtkConstraint* constraint);
	[LinkName("gtk_constraint_get_target")]
	public static extern GtkConstraintTarget* constraint_get_target(GtkConstraint* constraint);
	[LinkName("gtk_constraint_get_target_attribute")]
	public static extern GtkConstraintAttribute constraint_get_target_attribute(GtkConstraint* constraint);
	[LinkName("gtk_constraint_is_attached")]
	public static extern c_int constraint_is_attached(GtkConstraint* constraint);
	[LinkName("gtk_constraint_is_constant")]
	public static extern c_int constraint_is_constant(GtkConstraint* constraint);
	[LinkName("gtk_constraint_is_required")]
	public static extern c_int constraint_is_required(GtkConstraint* constraint);
	public enum GtkConstraintAttribute : c_int
	{
		GTK_CONSTRAINT_ATTRIBUTE_NONE,
		GTK_CONSTRAINT_ATTRIBUTE_LEFT,
		GTK_CONSTRAINT_ATTRIBUTE_RIGHT,
		GTK_CONSTRAINT_ATTRIBUTE_TOP,
		GTK_CONSTRAINT_ATTRIBUTE_BOTTOM,
		GTK_CONSTRAINT_ATTRIBUTE_START,
		GTK_CONSTRAINT_ATTRIBUTE_END,
		GTK_CONSTRAINT_ATTRIBUTE_WIDTH,
		GTK_CONSTRAINT_ATTRIBUTE_HEIGHT,
		GTK_CONSTRAINT_ATTRIBUTE_CENTER_X,
		GTK_CONSTRAINT_ATTRIBUTE_CENTER_Y,
		GTK_CONSTRAINT_ATTRIBUTE_BASELINE
	}
	[CRepr]
	public struct GtkConstraintClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkConstraintGuide;
	[LinkName("gtk_constraint_guide_new")]
	public static extern GtkConstraintGuide* constraint_guide_new();
	[LinkName("gtk_constraint_guide_get_max_size")]
	public static extern void constraint_guide_get_max_size(GtkConstraintGuide* guide, c_int* width, c_int* height);
	[LinkName("gtk_constraint_guide_get_min_size")]
	public static extern void constraint_guide_get_min_size(GtkConstraintGuide* guide, c_int* width, c_int* height);
	[LinkName("gtk_constraint_guide_get_name")]
	public static extern  c_char* constraint_guide_get_name(GtkConstraintGuide* guide);
	[LinkName("gtk_constraint_guide_get_nat_size")]
	public static extern void constraint_guide_get_nat_size(GtkConstraintGuide* guide, c_int* width, c_int* height);
	[LinkName("gtk_constraint_guide_get_strength")]
	public static extern GtkConstraintStrength constraint_guide_get_strength(GtkConstraintGuide* guide);
	[LinkName("gtk_constraint_guide_set_max_size")]
	public static extern void constraint_guide_set_max_size(GtkConstraintGuide* guide, c_int width, c_int height);
	[LinkName("gtk_constraint_guide_set_min_size")]
	public static extern void constraint_guide_set_min_size(GtkConstraintGuide* guide, c_int width, c_int height);
	[LinkName("gtk_constraint_guide_set_name")]
	public static extern void constraint_guide_set_name(GtkConstraintGuide* guide,  c_char* name);
	[LinkName("gtk_constraint_guide_set_nat_size")]
	public static extern void constraint_guide_set_nat_size(GtkConstraintGuide* guide, c_int width, c_int height);
	[LinkName("gtk_constraint_guide_set_strength")]
	public static extern void constraint_guide_set_strength(GtkConstraintGuide* guide, GtkConstraintStrength strength);
	[CRepr]
	public struct GtkConstraintGuideClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkConstraintLayout;
	[LinkName("gtk_constraint_layout_new")]
	public static extern GtkLayoutManager* constraint_layout_new();
	[LinkName("gtk_constraint_layout_add_constraint")]
	public static extern void constraint_layout_add_constraint(GtkConstraintLayout* layout, GtkConstraint* constraint);
	[LinkName("gtk_constraint_layout_add_constraints_from_description")]
	public static extern GList* constraint_layout_add_constraints_from_description(GtkConstraintLayout* layout, c_ulong n_lines, c_int hspacing, c_int vspacing, GError** error,  c_char* first_view);
	[LinkName("gtk_constraint_layout_add_constraints_from_descriptionv")]
	public static extern GList* constraint_layout_add_constraints_from_descriptionv(GtkConstraintLayout* layout, c_ulong n_lines, c_int hspacing, c_int vspacing, GHashTable* views);
	[LinkName("gtk_constraint_layout_add_guide")]
	public static extern void constraint_layout_add_guide(GtkConstraintLayout* layout, GtkConstraintGuide* guide);
	[LinkName("gtk_constraint_layout_observe_constraints")]
	public static extern GListModel* constraint_layout_observe_constraints(GtkConstraintLayout* layout);
	[LinkName("gtk_constraint_layout_observe_guides")]
	public static extern GListModel* constraint_layout_observe_guides(GtkConstraintLayout* layout);
	[LinkName("gtk_constraint_layout_remove_all_constraints")]
	public static extern void constraint_layout_remove_all_constraints(GtkConstraintLayout* layout);
	[LinkName("gtk_constraint_layout_remove_constraint")]
	public static extern void constraint_layout_remove_constraint(GtkConstraintLayout* layout, GtkConstraint* constraint);
	[LinkName("gtk_constraint_layout_remove_guide")]
	public static extern void constraint_layout_remove_guide(GtkConstraintLayout* layout, GtkConstraintGuide* guide);
	[CRepr]
	public struct GtkConstraintLayoutChild;
	[CRepr]
	public struct GtkConstraintLayoutChildClass
	{
		GtkLayoutChildClass parent_class;
	}
	[CRepr]
	public struct GtkConstraintLayoutClass
	{
		GtkLayoutManagerClass parent_class;
	}
	public enum GtkConstraintRelation : c_int
	{
		GTK_CONSTRAINT_RELATION_LE,
		GTK_CONSTRAINT_RELATION_EQ,
		GTK_CONSTRAINT_RELATION_GE
	}
	public enum GtkConstraintStrength : c_int
	{
		GTK_CONSTRAINT_STRENGTH_REQUIRED,
		GTK_CONSTRAINT_STRENGTH_STRONG,
		GTK_CONSTRAINT_STRENGTH_MEDIUM,
		GTK_CONSTRAINT_STRENGTH_WEAK
	}
	[CRepr]
	public struct GtkConstraintTarget
	{	}
	[CRepr]
	public struct GtkConstraintTargetInterface
	{
	}
	public enum GtkConstraintVflParserError : c_int
	{
		GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_SYMBOL,
		GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_ATTRIBUTE,
		GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_VIEW,
		GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_METRIC,
		GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_PRIORITY,
		GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_RELATION
	}
	public enum GtkContentFit : c_int
	{
		GTK_CONTENT_FIT_FILL,
		GTK_CONTENT_FIT_CONTAIN,
		GTK_CONTENT_FIT_COVER,
		GTK_CONTENT_FIT_SCALE_DOWN
	}
	public enum GtkCornerType : c_int
	{
		GTK_CORNER_TOP_LEFT,
		GTK_CORNER_BOTTOM_LEFT,
		GTK_CORNER_TOP_RIGHT,
		GTK_CORNER_BOTTOM_RIGHT
	}
	[CRepr]
	public struct GtkCssLocation
	{
		c_ulong bytes;
		c_ulong chars;
		c_ulong lines;
		c_ulong line_bytes;
		c_ulong line_chars;
	}
	public enum GtkCssParserError : c_int
	{
		GTK_CSS_PARSER_ERROR_FAILED,
		GTK_CSS_PARSER_ERROR_SYNTAX,
		GTK_CSS_PARSER_ERROR_IMPORT,
		GTK_CSS_PARSER_ERROR_NAME,
		GTK_CSS_PARSER_ERROR_UNKNOWN_VALUE
	}
	public enum GtkCssParserWarning : c_int
	{
		GTK_CSS_PARSER_WARNING_DEPRECATED,
		GTK_CSS_PARSER_WARNING_SYNTAX,
		GTK_CSS_PARSER_WARNING_UNIMPLEMENTED
	}
	[CRepr]
	public struct GtkCssProvider;
	[LinkName("gtk_css_provider_new")]
	public static extern GtkCssProvider* css_provider_new();
	[LinkName("gtk_css_provider_load_from_bytes")]
	public static extern void css_provider_load_from_bytes(GtkCssProvider* css_provider, GBytes* data);
	[LinkName("gtk_css_provider_load_from_data")]
	public static extern void css_provider_load_from_data(GtkCssProvider* css_provider,  c_char* data, c_long length);
	[LinkName("gtk_css_provider_load_from_file")]
	public static extern void css_provider_load_from_file(GtkCssProvider* css_provider, GFile* file);
	[LinkName("gtk_css_provider_load_from_path")]
	public static extern void css_provider_load_from_path(GtkCssProvider* css_provider,  c_char* path);
	[LinkName("gtk_css_provider_load_from_resource")]
	public static extern void css_provider_load_from_resource(GtkCssProvider* css_provider,  c_char* resource_path);
	[LinkName("gtk_css_provider_load_from_string")]
	public static extern void css_provider_load_from_string(GtkCssProvider* css_provider,  c_char* string);
	[LinkName("gtk_css_provider_load_named")]
	public static extern void css_provider_load_named(GtkCssProvider* provider,  c_char* name,  c_char* variant);
	[LinkName("gtk_css_provider_to_string")]
	public static extern c_char* css_provider_to_string(GtkCssProvider* provider);
	[CRepr]
	public struct GtkCssProviderClass
	{
	}
	[CRepr]
	public struct GtkCssProviderPrivate
	{
	}
	[CRepr]
	public struct GtkCssSection
	{
	}
	[CRepr]
	public struct GtkCssStyleChange
	{
	}
	public function void GtkCustomAllocateFunc(GtkWidget* widget, c_int width, c_int height, c_int baseline);
	[CRepr]
	public struct GtkCustomFilter;
	[LinkName("gtk_custom_filter_new")]
	public static extern GtkCustomFilter* custom_filter_new(GtkCustomFilterFunc match_func, void* user_data, GDestroyNotify user_destroy);
	[LinkName("gtk_custom_filter_set_filter_func")]
	public static extern void custom_filter_set_filter_func(GtkCustomFilter* self, GtkCustomFilterFunc match_func, void* user_data, GDestroyNotify user_destroy);
	[CRepr]
	public struct GtkCustomFilterClass
	{
		GtkFilterClass parent_class;
	}
	public function c_int GtkCustomFilterFunc(void* item, void* user_data);
	[CRepr]
	public struct GtkCustomLayout;
	[LinkName("gtk_custom_layout_new")]
	public static extern GtkLayoutManager* custom_layout_new(GtkCustomRequestModeFunc request_mode, GtkCustomMeasureFunc measure, GtkCustomAllocateFunc allocate);
	[CRepr]
	public struct GtkCustomLayoutClass
	{
		GtkLayoutManagerClass parent_class;
	}
	public function void GtkCustomMeasureFunc(GtkWidget* widget, GtkOrientation orientation, c_int for_size, c_int* minimum, c_int* natural, c_int* minimum_baseline, c_int* natural_baseline);
	public function GtkSizeRequestMode GtkCustomRequestModeFunc(GtkWidget* widget);
	[CRepr]
	public struct GtkCustomSorter;
	[LinkName("gtk_custom_sorter_new")]
	public static extern GtkCustomSorter* custom_sorter_new(GCompareDataFunc sort_func, void* user_data, GDestroyNotify user_destroy);
	[LinkName("gtk_custom_sorter_set_sort_func")]
	public static extern void custom_sorter_set_sort_func(GtkCustomSorter* self, GCompareDataFunc sort_func, void* user_data, GDestroyNotify user_destroy);
	[CRepr]
	public struct GtkCustomSorterClass
	{
		GtkSorterClass parent_class;
	}
	[CRepr]
	public struct GtkDebugFlags
	{
		public const int GTK_DEBUG_TEXT = 1;
		public const int GTK_DEBUG_TREE = 2;
		public const int GTK_DEBUG_KEYBINDINGS = 4;
		public const int GTK_DEBUG_MODULES = 8;
		public const int GTK_DEBUG_GEOMETRY = 16;
		public const int GTK_DEBUG_ICONTHEME = 32;
		public const int GTK_DEBUG_PRINTING = 64;
		public const int GTK_DEBUG_BUILDER = 128;
		public const int GTK_DEBUG_SIZE_REQUEST = 256;
		public const int GTK_DEBUG_NO_CSS_CACHE = 512;
		public const int GTK_DEBUG_INTERACTIVE = 1024;
		public const int GTK_DEBUG_TOUCHSCREEN = 2048;
		public const int GTK_DEBUG_ACTIONS = 4096;
		public const int GTK_DEBUG_LAYOUT = 8192;
		public const int GTK_DEBUG_SNAPSHOT = 16384;
		public const int GTK_DEBUG_CONSTRAINTS = 32768;
		public const int GTK_DEBUG_BUILDER_OBJECTS = 65536;
		public const int GTK_DEBUG_A11Y = 131072;
		public const int GTK_DEBUG_ICONFALLBACK = 262144;
		public const int GTK_DEBUG_INVERT_TEXT_DIR = 524288;
	}
	public enum GtkDeleteType : c_int
	{
		GTK_DELETE_CHARS,
		GTK_DELETE_WORD_ENDS,
		GTK_DELETE_WORDS,
		GTK_DELETE_DISPLAY_LINES,
		GTK_DELETE_DISPLAY_LINE_ENDS,
		GTK_DELETE_PARAGRAPH_ENDS,
		GTK_DELETE_PARAGRAPHS,
		GTK_DELETE_WHITESPACE
	}
	[CRepr]
	public struct GtkDialog;
	[LinkName("gtk_dialog_new")]
	public static extern GtkWidget* dialog_new();
	[LinkName("gtk_dialog_new_with_buttons")]
	public static extern GtkWidget* dialog_new_with_buttons( c_char* title, GtkWindow* parent, GtkDialogFlags flags,  c_char* first_button_text);
	[LinkName("gtk_dialog_add_action_widget")]
	public static extern void dialog_add_action_widget(GtkDialog* dialog, GtkWidget* child, c_int response_id);
	[LinkName("gtk_dialog_add_button")]
	public static extern GtkWidget* dialog_add_button(GtkDialog* dialog,  c_char* button_text, c_int response_id);
	[LinkName("gtk_dialog_add_buttons")]
	public static extern void dialog_add_buttons(GtkDialog* dialog,  c_char* first_button_text);
	[LinkName("gtk_dialog_get_content_area")]
	public static extern GtkWidget* dialog_get_content_area(GtkDialog* dialog);
	[LinkName("gtk_dialog_get_header_bar")]
	public static extern GtkWidget* dialog_get_header_bar(GtkDialog* dialog);
	[LinkName("gtk_dialog_get_response_for_widget")]
	public static extern c_int dialog_get_response_for_widget(GtkDialog* dialog, GtkWidget* widget);
	[LinkName("gtk_dialog_get_widget_for_response")]
	public static extern GtkWidget* dialog_get_widget_for_response(GtkDialog* dialog, c_int response_id);
	[LinkName("gtk_dialog_response")]
	public static extern void dialog_response(GtkDialog* dialog, c_int response_id);
	[LinkName("gtk_dialog_set_default_response")]
	public static extern void dialog_set_default_response(GtkDialog* dialog, c_int response_id);
	[LinkName("gtk_dialog_set_response_sensitive")]
	public static extern void dialog_set_response_sensitive(GtkDialog* dialog, c_int response_id, c_int setting);
	[CRepr]
	public struct GtkDialogClass
	{
		GtkWindowClass parent_class;
	}
	public enum GtkDialogError : c_int
	{
		GTK_DIALOG_ERROR_FAILED,
		GTK_DIALOG_ERROR_CANCELLED,
		GTK_DIALOG_ERROR_DISMISSED
	}
	[CRepr]
	public struct GtkDialogFlags
	{
		public const int GTK_DIALOG_MODAL = 1;
		public const int GTK_DIALOG_DESTROY_WITH_PARENT = 2;
		public const int GTK_DIALOG_USE_HEADER_BAR = 4;
	}
	public enum GtkDirectionType : c_int
	{
		GTK_DIR_TAB_FORWARD,
		GTK_DIR_TAB_BACKWARD,
		GTK_DIR_UP,
		GTK_DIR_DOWN,
		GTK_DIR_LEFT,
		GTK_DIR_RIGHT
	}
	[CRepr]
	public struct GtkDirectoryList;
	[LinkName("gtk_directory_list_new")]
	public static extern GtkDirectoryList* directory_list_new( c_char* attributes, GFile* file);
	[LinkName("gtk_directory_list_get_attributes")]
	public static extern  c_char* directory_list_get_attributes(GtkDirectoryList* self);
	[LinkName("gtk_directory_list_get_error")]
	public static extern  GError* directory_list_get_error(GtkDirectoryList* self);
	[LinkName("gtk_directory_list_get_file")]
	public static extern GFile* directory_list_get_file(GtkDirectoryList* self);
	[LinkName("gtk_directory_list_get_io_priority")]
	public static extern c_int directory_list_get_io_priority(GtkDirectoryList* self);
	[LinkName("gtk_directory_list_get_monitored")]
	public static extern c_int directory_list_get_monitored(GtkDirectoryList* self);
	[LinkName("gtk_directory_list_is_loading")]
	public static extern c_int directory_list_is_loading(GtkDirectoryList* self);
	[LinkName("gtk_directory_list_set_attributes")]
	public static extern void directory_list_set_attributes(GtkDirectoryList* self,  c_char* attributes);
	[LinkName("gtk_directory_list_set_file")]
	public static extern void directory_list_set_file(GtkDirectoryList* self, GFile* file);
	[LinkName("gtk_directory_list_set_io_priority")]
	public static extern void directory_list_set_io_priority(GtkDirectoryList* self, c_int io_priority);
	[LinkName("gtk_directory_list_set_monitored")]
	public static extern void directory_list_set_monitored(GtkDirectoryList* self, c_int monitored);
	[CRepr]
	public struct GtkDirectoryListClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkDragIcon;
	[LinkName("gtk_drag_icon_get_child")]
	public static extern GtkWidget* drag_icon_get_child(GtkDragIcon* self);
	[LinkName("gtk_drag_icon_set_child")]
	public static extern void drag_icon_set_child(GtkDragIcon* self, GtkWidget* child);
	[CRepr]
	public struct GtkDragIconClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkDragSource;
	[LinkName("gtk_drag_source_new")]
	public static extern GtkDragSource* drag_source_new();
	[LinkName("gtk_drag_source_drag_cancel")]
	public static extern void drag_source_drag_cancel(GtkDragSource* source);
	[LinkName("gtk_drag_source_get_actions")]
	public static extern GdkDragAction drag_source_get_actions(GtkDragSource* source);
	[LinkName("gtk_drag_source_get_content")]
	public static extern GdkContentProvider* drag_source_get_content(GtkDragSource* source);
	[LinkName("gtk_drag_source_get_drag")]
	public static extern GdkDrag* drag_source_get_drag(GtkDragSource* source);
	[LinkName("gtk_drag_source_set_actions")]
	public static extern void drag_source_set_actions(GtkDragSource* source, GdkDragAction actions);
	[LinkName("gtk_drag_source_set_content")]
	public static extern void drag_source_set_content(GtkDragSource* source, GdkContentProvider* content);
	[LinkName("gtk_drag_source_set_icon")]
	public static extern void drag_source_set_icon(GtkDragSource* source, GdkPaintable* paintable, c_int hot_x, c_int hot_y);
	[CRepr]
	public struct GtkDragSourceClass
	{
	}
	[CRepr]
	public struct GtkDrawingArea;
	[LinkName("gtk_drawing_area_new")]
	public static extern GtkWidget* drawing_area_new();
	[LinkName("gtk_drawing_area_get_content_height")]
	public static extern c_int drawing_area_get_content_height(GtkDrawingArea* self);
	[LinkName("gtk_drawing_area_get_content_width")]
	public static extern c_int drawing_area_get_content_width(GtkDrawingArea* self);
	[LinkName("gtk_drawing_area_set_content_height")]
	public static extern void drawing_area_set_content_height(GtkDrawingArea* self, c_int height);
	[LinkName("gtk_drawing_area_set_content_width")]
	public static extern void drawing_area_set_content_width(GtkDrawingArea* self, c_int width);
	[LinkName("gtk_drawing_area_set_draw_func")]
	public static extern void drawing_area_set_draw_func(GtkDrawingArea* self, GtkDrawingAreaDrawFunc draw_func, void* user_data, GDestroyNotify destroy);
	[CRepr]
	public struct GtkDrawingAreaClass
	{
		GtkWidgetClass parent_class;
	}
	public function void GtkDrawingAreaDrawFunc(GtkDrawingArea* drawing_area, cairo_t* cr, c_int width, c_int height, void* user_data);
	[CRepr]
	public struct GtkDropControllerMotion;
	[LinkName("gtk_drop_controller_motion_new")]
	public static extern GtkEventController* drop_controller_motion_new();
	[LinkName("gtk_drop_controller_motion_contains_pointer")]
	public static extern c_int drop_controller_motion_contains_pointer(GtkDropControllerMotion* self);
	[LinkName("gtk_drop_controller_motion_get_drop")]
	public static extern GdkDrop* drop_controller_motion_get_drop(GtkDropControllerMotion* self);
	[LinkName("gtk_drop_controller_motion_is_pointer")]
	public static extern c_int drop_controller_motion_is_pointer(GtkDropControllerMotion* self);
	[CRepr]
	public struct GtkDropControllerMotionClass
	{
	}
	[CRepr]
	public struct GtkDropDown;
	[LinkName("gtk_drop_down_new")]
	public static extern GtkWidget* drop_down_new(GListModel* model, GtkExpression* expression);
	[LinkName("gtk_drop_down_new_from_strings")]
	public static extern GtkWidget* drop_down_new_from_strings();
	[LinkName("gtk_drop_down_get_enable_search")]
	public static extern c_int drop_down_get_enable_search(GtkDropDown* self);
	[LinkName("gtk_drop_down_get_expression")]
	public static extern GtkExpression* drop_down_get_expression(GtkDropDown* self);
	[LinkName("gtk_drop_down_get_factory")]
	public static extern GtkListItemFactory* drop_down_get_factory(GtkDropDown* self);
	[LinkName("gtk_drop_down_get_list_factory")]
	public static extern GtkListItemFactory* drop_down_get_list_factory(GtkDropDown* self);
	[LinkName("gtk_drop_down_get_model")]
	public static extern GListModel* drop_down_get_model(GtkDropDown* self);
	[LinkName("gtk_drop_down_get_selected")]
	public static extern c_uint drop_down_get_selected(GtkDropDown* self);
	[LinkName("gtk_drop_down_get_selected_item")]
	public static extern void* drop_down_get_selected_item(GtkDropDown* self);
	[LinkName("gtk_drop_down_get_show_arrow")]
	public static extern c_int drop_down_get_show_arrow(GtkDropDown* self);
	[LinkName("gtk_drop_down_set_enable_search")]
	public static extern void drop_down_set_enable_search(GtkDropDown* self, c_int enable_search);
	[LinkName("gtk_drop_down_set_expression")]
	public static extern void drop_down_set_expression(GtkDropDown* self, GtkExpression* expression);
	[LinkName("gtk_drop_down_set_factory")]
	public static extern void drop_down_set_factory(GtkDropDown* self, GtkListItemFactory* factory);
	[LinkName("gtk_drop_down_set_list_factory")]
	public static extern void drop_down_set_list_factory(GtkDropDown* self, GtkListItemFactory* factory);
	[LinkName("gtk_drop_down_set_model")]
	public static extern void drop_down_set_model(GtkDropDown* self, GListModel* model);
	[LinkName("gtk_drop_down_set_selected")]
	public static extern void drop_down_set_selected(GtkDropDown* self, c_uint position);
	[LinkName("gtk_drop_down_set_show_arrow")]
	public static extern void drop_down_set_show_arrow(GtkDropDown* self, c_int show_arrow);
	[CRepr]
	public struct GtkDropDownClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkDropTarget;
	[LinkName("gtk_drop_target_new")]
	public static extern GtkDropTarget* drop_target_new(GType type, GdkDragAction actions);
	[LinkName("gtk_drop_target_get_actions")]
	public static extern GdkDragAction drop_target_get_actions(GtkDropTarget* self);
	[LinkName("gtk_drop_target_get_current_drop")]
	public static extern GdkDrop* drop_target_get_current_drop(GtkDropTarget* self);
	[LinkName("gtk_drop_target_get_drop")]
	public static extern GdkDrop* drop_target_get_drop(GtkDropTarget* self);
	[LinkName("gtk_drop_target_get_formats")]
	public static extern GdkContentFormats* drop_target_get_formats(GtkDropTarget* self);
	[LinkName("gtk_drop_target_get_gtypes")]
	public static extern  GType* drop_target_get_gtypes(GtkDropTarget* self, c_ulong* n_types);
	[LinkName("gtk_drop_target_get_preload")]
	public static extern c_int drop_target_get_preload(GtkDropTarget* self);
	[LinkName("gtk_drop_target_get_value")]
	public static extern  GValue* drop_target_get_value(GtkDropTarget* self);
	[LinkName("gtk_drop_target_reject")]
	public static extern void drop_target_reject(GtkDropTarget* self);
	[LinkName("gtk_drop_target_set_actions")]
	public static extern void drop_target_set_actions(GtkDropTarget* self, GdkDragAction actions);
	[LinkName("gtk_drop_target_set_gtypes")]
	public static extern void drop_target_set_gtypes(GtkDropTarget* self, c_ulong n_types);
	[LinkName("gtk_drop_target_set_preload")]
	public static extern void drop_target_set_preload(GtkDropTarget* self, c_int preload);
	[CRepr]
	public struct GtkDropTargetAsync;
	[LinkName("gtk_drop_target_async_new")]
	public static extern GtkDropTargetAsync* drop_target_async_new(GdkContentFormats* formats, GdkDragAction actions);
	[LinkName("gtk_drop_target_async_get_actions")]
	public static extern GdkDragAction drop_target_async_get_actions(GtkDropTargetAsync* self);
	[LinkName("gtk_drop_target_async_get_formats")]
	public static extern GdkContentFormats* drop_target_async_get_formats(GtkDropTargetAsync* self);
	[LinkName("gtk_drop_target_async_reject_drop")]
	public static extern void drop_target_async_reject_drop(GtkDropTargetAsync* self, GdkDrop* drop);
	[LinkName("gtk_drop_target_async_set_actions")]
	public static extern void drop_target_async_set_actions(GtkDropTargetAsync* self, GdkDragAction actions);
	[LinkName("gtk_drop_target_async_set_formats")]
	public static extern void drop_target_async_set_formats(GtkDropTargetAsync* self, GdkContentFormats* formats);
	[CRepr]
	public struct GtkDropTargetAsyncClass
	{
	}
	[CRepr]
	public struct GtkDropTargetClass
	{
	}
	[CRepr]
	public struct GtkEditable
	{
		public function void(GtkEditable* editable) changed;

		public function void(GtkEditable* editable, c_int start_pos, c_int end_pos) delete_text;

		public function void(GtkEditable* editable, c_int start_pos, c_int end_pos) do_delete_text;

		public function void(GtkEditable* editable,  c_char* text, c_int length, c_int* position) do_insert_text;

		public function GtkEditable*(GtkEditable* editable) get_delegate;

		public function c_int(GtkEditable* editable, c_int* start_pos, c_int* end_pos) get_selection_bounds;

		public function  c_char*(GtkEditable* editable) get_text;

		public function void(GtkEditable* editable,  c_char* text, c_int length, c_int* position) insert_text;

		public function void(GtkEditable* editable, c_int start_pos, c_int end_pos) set_selection_bounds;
	}
	[CRepr]
	public struct GtkEditableInterface
	{
		GTypeInterface base_iface;
	}
	[CRepr]
	public struct GtkEditableLabel;
	[LinkName("gtk_editable_label_new")]
	public static extern GtkWidget* editable_label_new( c_char* str);
	[LinkName("gtk_editable_label_get_editing")]
	public static extern c_int editable_label_get_editing(GtkEditableLabel* self);
	[LinkName("gtk_editable_label_start_editing")]
	public static extern void editable_label_start_editing(GtkEditableLabel* self);
	[LinkName("gtk_editable_label_stop_editing")]
	public static extern void editable_label_stop_editing(GtkEditableLabel* self, c_int commit);
	[CRepr]
	public struct GtkEditableLabelClass
	{
		GtkWidgetClass parent_class;
	}
	public enum GtkEditableProperties : c_int
	{
		GTK_EDITABLE_PROP_TEXT,
		GTK_EDITABLE_PROP_CURSOR_POSITION,
		GTK_EDITABLE_PROP_SELECTION_BOUND,
		GTK_EDITABLE_PROP_EDITABLE,
		GTK_EDITABLE_PROP_WIDTH_CHARS,
		GTK_EDITABLE_PROP_MAX_WIDTH_CHARS,
		GTK_EDITABLE_PROP_XALIGN,
		GTK_EDITABLE_PROP_ENABLE_UNDO,
		GTK_EDITABLE_NUM_PROPERTIES
	}
	[CRepr]
	public struct GtkEmojiChooser;
	[LinkName("gtk_emoji_chooser_new")]
	public static extern GtkWidget* emoji_chooser_new();
	[CRepr]
	public struct GtkEmojiChooserClass
	{
	}
	[CRepr]
	public struct GtkEntry;
	[LinkName("gtk_entry_new")]
	public static extern GtkWidget* entry_new();
	[LinkName("gtk_entry_new_with_buffer")]
	public static extern GtkWidget* entry_new_with_buffer(GtkEntryBuffer* buffer);
	[LinkName("gtk_entry_get_activates_default")]
	public static extern c_int entry_get_activates_default(GtkEntry* entry);
	[LinkName("gtk_entry_get_alignment")]
	public static extern float entry_get_alignment(GtkEntry* entry);
	[LinkName("gtk_entry_get_attributes")]
	public static extern PangoAttrList* entry_get_attributes(GtkEntry* entry);
	[LinkName("gtk_entry_get_buffer")]
	public static extern GtkEntryBuffer* entry_get_buffer(GtkEntry* entry);
	[LinkName("gtk_entry_get_completion")]
	public static extern GtkEntryCompletion* entry_get_completion(GtkEntry* entry);
	[LinkName("gtk_entry_get_current_icon_drag_source")]
	public static extern c_int entry_get_current_icon_drag_source(GtkEntry* entry);
	[LinkName("gtk_entry_get_extra_menu")]
	public static extern GMenuModel* entry_get_extra_menu(GtkEntry* entry);
	[LinkName("gtk_entry_get_has_frame")]
	public static extern c_int entry_get_has_frame(GtkEntry* entry);
	[LinkName("gtk_entry_get_icon_activatable")]
	public static extern c_int entry_get_icon_activatable(GtkEntry* entry, GtkEntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_area")]
	public static extern void entry_get_icon_area(GtkEntry* entry, GtkEntryIconPosition icon_pos, GdkRectangle* icon_area);
	[LinkName("gtk_entry_get_icon_at_pos")]
	public static extern c_int entry_get_icon_at_pos(GtkEntry* entry, c_int x, c_int y);
	[LinkName("gtk_entry_get_icon_gicon")]
	public static extern GIcon* entry_get_icon_gicon(GtkEntry* entry, GtkEntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_name")]
	public static extern  c_char* entry_get_icon_name(GtkEntry* entry, GtkEntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_paintable")]
	public static extern GdkPaintable* entry_get_icon_paintable(GtkEntry* entry, GtkEntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_sensitive")]
	public static extern c_int entry_get_icon_sensitive(GtkEntry* entry, GtkEntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_storage_type")]
	public static extern GtkImageType entry_get_icon_storage_type(GtkEntry* entry, GtkEntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_tooltip_markup")]
	public static extern c_char* entry_get_icon_tooltip_markup(GtkEntry* entry, GtkEntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_icon_tooltip_text")]
	public static extern c_char* entry_get_icon_tooltip_text(GtkEntry* entry, GtkEntryIconPosition icon_pos);
	[LinkName("gtk_entry_get_input_hints")]
	public static extern GtkInputHints entry_get_input_hints(GtkEntry* entry);
	[LinkName("gtk_entry_get_input_purpose")]
	public static extern GtkInputPurpose entry_get_input_purpose(GtkEntry* entry);
	[LinkName("gtk_entry_get_invisible_char")]
	public static extern c_uint entry_get_invisible_char(GtkEntry* entry);
	[LinkName("gtk_entry_get_max_length")]
	public static extern c_int entry_get_max_length(GtkEntry* entry);
	[LinkName("gtk_entry_get_overwrite_mode")]
	public static extern c_int entry_get_overwrite_mode(GtkEntry* entry);
	[LinkName("gtk_entry_get_placeholder_text")]
	public static extern  c_char* entry_get_placeholder_text(GtkEntry* entry);
	[LinkName("gtk_entry_get_progress_fraction")]
	public static extern double entry_get_progress_fraction(GtkEntry* entry);
	[LinkName("gtk_entry_get_progress_pulse_step")]
	public static extern double entry_get_progress_pulse_step(GtkEntry* entry);
	[LinkName("gtk_entry_get_tabs")]
	public static extern PangoTabArray* entry_get_tabs(GtkEntry* entry);
	[LinkName("gtk_entry_get_text_length")]
	public static extern c_ushort entry_get_text_length(GtkEntry* entry);
	[LinkName("gtk_entry_get_visibility")]
	public static extern c_int entry_get_visibility(GtkEntry* entry);
	[LinkName("gtk_entry_grab_focus_without_selecting")]
	public static extern c_int entry_grab_focus_without_selecting(GtkEntry* entry);
	[LinkName("gtk_entry_progress_pulse")]
	public static extern void entry_progress_pulse(GtkEntry* entry);
	[LinkName("gtk_entry_reset_im_context")]
	public static extern void entry_reset_im_context(GtkEntry* entry);
	[LinkName("gtk_entry_set_activates_default")]
	public static extern void entry_set_activates_default(GtkEntry* entry, c_int setting);
	[LinkName("gtk_entry_set_alignment")]
	public static extern void entry_set_alignment(GtkEntry* entry, float xalign);
	[LinkName("gtk_entry_set_attributes")]
	public static extern void entry_set_attributes(GtkEntry* entry, PangoAttrList* attrs);
	[LinkName("gtk_entry_set_buffer")]
	public static extern void entry_set_buffer(GtkEntry* entry, GtkEntryBuffer* buffer);
	[LinkName("gtk_entry_set_completion")]
	public static extern void entry_set_completion(GtkEntry* entry, GtkEntryCompletion* completion);
	[LinkName("gtk_entry_set_extra_menu")]
	public static extern void entry_set_extra_menu(GtkEntry* entry, GMenuModel* model);
	[LinkName("gtk_entry_set_has_frame")]
	public static extern void entry_set_has_frame(GtkEntry* entry, c_int setting);
	[LinkName("gtk_entry_set_icon_activatable")]
	public static extern void entry_set_icon_activatable(GtkEntry* entry, GtkEntryIconPosition icon_pos, c_int activatable);
	[LinkName("gtk_entry_set_icon_drag_source")]
	public static extern void entry_set_icon_drag_source(GtkEntry* entry, GtkEntryIconPosition icon_pos, GdkContentProvider* provider, GdkDragAction actions);
	[LinkName("gtk_entry_set_icon_from_gicon")]
	public static extern void entry_set_icon_from_gicon(GtkEntry* entry, GtkEntryIconPosition icon_pos, GIcon* icon);
	[LinkName("gtk_entry_set_icon_from_icon_name")]
	public static extern void entry_set_icon_from_icon_name(GtkEntry* entry, GtkEntryIconPosition icon_pos,  c_char* icon_name);
	[LinkName("gtk_entry_set_icon_from_paintable")]
	public static extern void entry_set_icon_from_paintable(GtkEntry* entry, GtkEntryIconPosition icon_pos, GdkPaintable* paintable);
	[LinkName("gtk_entry_set_icon_sensitive")]
	public static extern void entry_set_icon_sensitive(GtkEntry* entry, GtkEntryIconPosition icon_pos, c_int sensitive);
	[LinkName("gtk_entry_set_icon_tooltip_markup")]
	public static extern void entry_set_icon_tooltip_markup(GtkEntry* entry, GtkEntryIconPosition icon_pos,  c_char* tooltip);
	[LinkName("gtk_entry_set_icon_tooltip_text")]
	public static extern void entry_set_icon_tooltip_text(GtkEntry* entry, GtkEntryIconPosition icon_pos,  c_char* tooltip);
	[LinkName("gtk_entry_set_input_hints")]
	public static extern void entry_set_input_hints(GtkEntry* entry, GtkInputHints hints);
	[LinkName("gtk_entry_set_input_purpose")]
	public static extern void entry_set_input_purpose(GtkEntry* entry, GtkInputPurpose purpose);
	[LinkName("gtk_entry_set_invisible_char")]
	public static extern void entry_set_invisible_char(GtkEntry* entry, c_uint ch);
	[LinkName("gtk_entry_set_max_length")]
	public static extern void entry_set_max_length(GtkEntry* entry, c_int max);
	[LinkName("gtk_entry_set_overwrite_mode")]
	public static extern void entry_set_overwrite_mode(GtkEntry* entry, c_int overwrite);
	[LinkName("gtk_entry_set_placeholder_text")]
	public static extern void entry_set_placeholder_text(GtkEntry* entry,  c_char* text);
	[LinkName("gtk_entry_set_progress_fraction")]
	public static extern void entry_set_progress_fraction(GtkEntry* entry, double fraction);
	[LinkName("gtk_entry_set_progress_pulse_step")]
	public static extern void entry_set_progress_pulse_step(GtkEntry* entry, double fraction);
	[LinkName("gtk_entry_set_tabs")]
	public static extern void entry_set_tabs(GtkEntry* entry, PangoTabArray* tabs);
	[LinkName("gtk_entry_set_visibility")]
	public static extern void entry_set_visibility(GtkEntry* entry, c_int visible);
	[LinkName("gtk_entry_unset_invisible_char")]
	public static extern void entry_unset_invisible_char(GtkEntry* entry);
	[CRepr]
	public struct GtkEntryBuffer;
	[LinkName("gtk_entry_buffer_new")]
	public static extern GtkEntryBuffer* entry_buffer_new( c_char* initial_chars, c_int n_initial_chars);
	[LinkName("gtk_entry_buffer_delete_text")]
	public static extern c_uint entry_buffer_delete_text(GtkEntryBuffer* buffer, c_uint position, c_int n_chars);
	[LinkName("gtk_entry_buffer_emit_deleted_text")]
	public static extern void entry_buffer_emit_deleted_text(GtkEntryBuffer* buffer, c_uint position, c_uint n_chars);
	[LinkName("gtk_entry_buffer_emit_inserted_text")]
	public static extern void entry_buffer_emit_inserted_text(GtkEntryBuffer* buffer, c_uint position,  c_char* chars, c_uint n_chars);
	[LinkName("gtk_entry_buffer_get_bytes")]
	public static extern c_ulong entry_buffer_get_bytes(GtkEntryBuffer* buffer);
	[LinkName("gtk_entry_buffer_get_length")]
	public static extern c_uint entry_buffer_get_length(GtkEntryBuffer* buffer);
	[LinkName("gtk_entry_buffer_get_max_length")]
	public static extern c_int entry_buffer_get_max_length(GtkEntryBuffer* buffer);
	[LinkName("gtk_entry_buffer_get_text")]
	public static extern  c_char* entry_buffer_get_text(GtkEntryBuffer* buffer);
	[LinkName("gtk_entry_buffer_insert_text")]
	public static extern c_uint entry_buffer_insert_text(GtkEntryBuffer* buffer, c_uint position,  c_char* chars, c_int n_chars);
	[LinkName("gtk_entry_buffer_set_max_length")]
	public static extern void entry_buffer_set_max_length(GtkEntryBuffer* buffer, c_int max_length);
	[LinkName("gtk_entry_buffer_set_text")]
	public static extern void entry_buffer_set_text(GtkEntryBuffer* buffer,  c_char* chars, c_int n_chars);
	[CRepr]
	public struct GtkEntryBufferClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkEntryClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkEntryCompletion;
	[LinkName("gtk_entry_completion_new")]
	public static extern GtkEntryCompletion* entry_completion_new();
	[LinkName("gtk_entry_completion_new_with_area")]
	public static extern GtkEntryCompletion* entry_completion_new_with_area(GtkCellArea* area);
	[LinkName("gtk_entry_completion_complete")]
	public static extern void entry_completion_complete(GtkEntryCompletion* completion);
	[LinkName("gtk_entry_completion_compute_prefix")]
	public static extern c_char* entry_completion_compute_prefix(GtkEntryCompletion* completion,  c_char* key);
	[LinkName("gtk_entry_completion_get_completion_prefix")]
	public static extern  c_char* entry_completion_get_completion_prefix(GtkEntryCompletion* completion);
	[LinkName("gtk_entry_completion_get_entry")]
	public static extern GtkWidget* entry_completion_get_entry(GtkEntryCompletion* completion);
	[LinkName("gtk_entry_completion_get_inline_completion")]
	public static extern c_int entry_completion_get_inline_completion(GtkEntryCompletion* completion);
	[LinkName("gtk_entry_completion_get_inline_selection")]
	public static extern c_int entry_completion_get_inline_selection(GtkEntryCompletion* completion);
	[LinkName("gtk_entry_completion_get_minimum_key_length")]
	public static extern c_int entry_completion_get_minimum_key_length(GtkEntryCompletion* completion);
	[LinkName("gtk_entry_completion_get_model")]
	public static extern GtkTreeModel* entry_completion_get_model(GtkEntryCompletion* completion);
	[LinkName("gtk_entry_completion_get_popup_completion")]
	public static extern c_int entry_completion_get_popup_completion(GtkEntryCompletion* completion);
	[LinkName("gtk_entry_completion_get_popup_set_width")]
	public static extern c_int entry_completion_get_popup_set_width(GtkEntryCompletion* completion);
	[LinkName("gtk_entry_completion_get_popup_single_match")]
	public static extern c_int entry_completion_get_popup_single_match(GtkEntryCompletion* completion);
	[LinkName("gtk_entry_completion_get_text_column")]
	public static extern c_int entry_completion_get_text_column(GtkEntryCompletion* completion);
	[LinkName("gtk_entry_completion_insert_prefix")]
	public static extern void entry_completion_insert_prefix(GtkEntryCompletion* completion);
	[LinkName("gtk_entry_completion_set_inline_completion")]
	public static extern void entry_completion_set_inline_completion(GtkEntryCompletion* completion, c_int inline_completion);
	[LinkName("gtk_entry_completion_set_inline_selection")]
	public static extern void entry_completion_set_inline_selection(GtkEntryCompletion* completion, c_int inline_selection);
	[LinkName("gtk_entry_completion_set_match_func")]
	public static extern void entry_completion_set_match_func(GtkEntryCompletion* completion, GtkEntryCompletionMatchFunc func, void* func_data, GDestroyNotify func_notify);
	[LinkName("gtk_entry_completion_set_minimum_key_length")]
	public static extern void entry_completion_set_minimum_key_length(GtkEntryCompletion* completion, c_int length);
	[LinkName("gtk_entry_completion_set_model")]
	public static extern void entry_completion_set_model(GtkEntryCompletion* completion, GtkTreeModel* model);
	[LinkName("gtk_entry_completion_set_popup_completion")]
	public static extern void entry_completion_set_popup_completion(GtkEntryCompletion* completion, c_int popup_completion);
	[LinkName("gtk_entry_completion_set_popup_set_width")]
	public static extern void entry_completion_set_popup_set_width(GtkEntryCompletion* completion, c_int popup_set_width);
	[LinkName("gtk_entry_completion_set_popup_single_match")]
	public static extern void entry_completion_set_popup_single_match(GtkEntryCompletion* completion, c_int popup_single_match);
	[LinkName("gtk_entry_completion_set_text_column")]
	public static extern void entry_completion_set_text_column(GtkEntryCompletion* completion, c_int column);
	public function c_int GtkEntryCompletionMatchFunc(GtkEntryCompletion* completion,  c_char* key, GtkTreeIter* iter, void* user_data);
	public enum GtkEntryIconPosition : c_int
	{
		GTK_ENTRY_ICON_PRIMARY,
		GTK_ENTRY_ICON_SECONDARY
	}
	[CRepr]
	public struct GtkEventController;
	[LinkName("gtk_event_controller_get_current_event")]
	public static extern GdkEvent* event_controller_get_current_event(GtkEventController* controller);
	[LinkName("gtk_event_controller_get_current_event_device")]
	public static extern GdkDevice* event_controller_get_current_event_device(GtkEventController* controller);
	[LinkName("gtk_event_controller_get_current_event_state")]
	public static extern GdkModifierType event_controller_get_current_event_state(GtkEventController* controller);
	[LinkName("gtk_event_controller_get_current_event_time")]
	public static extern c_uint event_controller_get_current_event_time(GtkEventController* controller);
	[LinkName("gtk_event_controller_get_name")]
	public static extern  c_char* event_controller_get_name(GtkEventController* controller);
	[LinkName("gtk_event_controller_get_propagation_limit")]
	public static extern GtkPropagationLimit event_controller_get_propagation_limit(GtkEventController* controller);
	[LinkName("gtk_event_controller_get_propagation_phase")]
	public static extern GtkPropagationPhase event_controller_get_propagation_phase(GtkEventController* controller);
	[LinkName("gtk_event_controller_get_widget")]
	public static extern GtkWidget* event_controller_get_widget(GtkEventController* controller);
	[LinkName("gtk_event_controller_reset")]
	public static extern void event_controller_reset(GtkEventController* controller);
	[LinkName("gtk_event_controller_set_name")]
	public static extern void event_controller_set_name(GtkEventController* controller,  c_char* name);
	[LinkName("gtk_event_controller_set_propagation_limit")]
	public static extern void event_controller_set_propagation_limit(GtkEventController* controller, GtkPropagationLimit limit);
	[LinkName("gtk_event_controller_set_propagation_phase")]
	public static extern void event_controller_set_propagation_phase(GtkEventController* controller, GtkPropagationPhase phase);
	[LinkName("gtk_event_controller_set_static_name")]
	public static extern void event_controller_set_static_name(GtkEventController* controller,  c_char* name);
	[CRepr]
	public struct GtkEventControllerClass
	{
	}
	[CRepr]
	public struct GtkEventControllerFocus;
	[LinkName("gtk_event_controller_focus_new")]
	public static extern GtkEventController* event_controller_focus_new();
	[LinkName("gtk_event_controller_focus_contains_focus")]
	public static extern c_int event_controller_focus_contains_focus(GtkEventControllerFocus* self);
	[LinkName("gtk_event_controller_focus_is_focus")]
	public static extern c_int event_controller_focus_is_focus(GtkEventControllerFocus* self);
	[CRepr]
	public struct GtkEventControllerFocusClass
	{
	}
	[CRepr]
	public struct GtkEventControllerKey;
	[LinkName("gtk_event_controller_key_new")]
	public static extern GtkEventController* event_controller_key_new();
	[LinkName("gtk_event_controller_key_forward")]
	public static extern c_int event_controller_key_forward(GtkEventControllerKey* controller, GtkWidget* widget);
	[LinkName("gtk_event_controller_key_get_group")]
	public static extern c_uint event_controller_key_get_group(GtkEventControllerKey* controller);
	[LinkName("gtk_event_controller_key_get_im_context")]
	public static extern GtkIMContext* event_controller_key_get_im_context(GtkEventControllerKey* controller);
	[LinkName("gtk_event_controller_key_set_im_context")]
	public static extern void event_controller_key_set_im_context(GtkEventControllerKey* controller, GtkIMContext* im_context);
	[CRepr]
	public struct GtkEventControllerKeyClass
	{
	}
	[CRepr]
	public struct GtkEventControllerLegacy;
	[LinkName("gtk_event_controller_legacy_new")]
	public static extern GtkEventController* event_controller_legacy_new();
	[CRepr]
	public struct GtkEventControllerLegacyClass
	{
	}
	[CRepr]
	public struct GtkEventControllerMotion;
	[LinkName("gtk_event_controller_motion_new")]
	public static extern GtkEventController* event_controller_motion_new();
	[LinkName("gtk_event_controller_motion_contains_pointer")]
	public static extern c_int event_controller_motion_contains_pointer(GtkEventControllerMotion* self);
	[LinkName("gtk_event_controller_motion_is_pointer")]
	public static extern c_int event_controller_motion_is_pointer(GtkEventControllerMotion* self);
	[CRepr]
	public struct GtkEventControllerMotionClass
	{
	}
	[CRepr]
	public struct GtkEventControllerScroll;
	[LinkName("gtk_event_controller_scroll_new")]
	public static extern GtkEventController* event_controller_scroll_new(GtkEventControllerScrollFlags flags);
	[LinkName("gtk_event_controller_scroll_get_flags")]
	public static extern GtkEventControllerScrollFlags event_controller_scroll_get_flags(GtkEventControllerScroll* scroll);
	[LinkName("gtk_event_controller_scroll_get_unit")]
	public static extern GdkScrollUnit event_controller_scroll_get_unit(GtkEventControllerScroll* scroll);
	[LinkName("gtk_event_controller_scroll_set_flags")]
	public static extern void event_controller_scroll_set_flags(GtkEventControllerScroll* scroll, GtkEventControllerScrollFlags flags);
	[CRepr]
	public struct GtkEventControllerScrollClass
	{
	}
	[CRepr]
	public struct GtkEventControllerScrollFlags
	{
		public const int GTK_EVENT_CONTROLLER_SCROLL_NONE = 0;
		public const int GTK_EVENT_CONTROLLER_SCROLL_VERTICAL = 1;
		public const int GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL = 2;
		public const int GTK_EVENT_CONTROLLER_SCROLL_DISCRETE = 4;
		public const int GTK_EVENT_CONTROLLER_SCROLL_KINETIC = 8;
		public const int GTK_EVENT_CONTROLLER_SCROLL_BOTH_AXES = 3;
	}
	public enum GtkEventSequenceState : c_int
	{
		GTK_EVENT_SEQUENCE_NONE,
		GTK_EVENT_SEQUENCE_CLAIMED,
		GTK_EVENT_SEQUENCE_DENIED
	}
	[CRepr]
	public struct GtkEveryFilter;
	[LinkName("gtk_every_filter_new")]
	public static extern GtkEveryFilter* every_filter_new();
	[CRepr]
	public struct GtkEveryFilterClass
	{
	}
	[CRepr]
	public struct GtkExpander;
	[LinkName("gtk_expander_new")]
	public static extern GtkWidget* expander_new( c_char* label);
	[LinkName("gtk_expander_new_with_mnemonic")]
	public static extern GtkWidget* expander_new_with_mnemonic( c_char* label);
	[LinkName("gtk_expander_get_child")]
	public static extern GtkWidget* expander_get_child(GtkExpander* expander);
	[LinkName("gtk_expander_get_expanded")]
	public static extern c_int expander_get_expanded(GtkExpander* expander);
	[LinkName("gtk_expander_get_label")]
	public static extern  c_char* expander_get_label(GtkExpander* expander);
	[LinkName("gtk_expander_get_label_widget")]
	public static extern GtkWidget* expander_get_label_widget(GtkExpander* expander);
	[LinkName("gtk_expander_get_resize_toplevel")]
	public static extern c_int expander_get_resize_toplevel(GtkExpander* expander);
	[LinkName("gtk_expander_get_use_markup")]
	public static extern c_int expander_get_use_markup(GtkExpander* expander);
	[LinkName("gtk_expander_get_use_underline")]
	public static extern c_int expander_get_use_underline(GtkExpander* expander);
	[LinkName("gtk_expander_set_child")]
	public static extern void expander_set_child(GtkExpander* expander, GtkWidget* child);
	[LinkName("gtk_expander_set_expanded")]
	public static extern void expander_set_expanded(GtkExpander* expander, c_int expanded);
	[LinkName("gtk_expander_set_label")]
	public static extern void expander_set_label(GtkExpander* expander,  c_char* label);
	[LinkName("gtk_expander_set_label_widget")]
	public static extern void expander_set_label_widget(GtkExpander* expander, GtkWidget* label_widget);
	[LinkName("gtk_expander_set_resize_toplevel")]
	public static extern void expander_set_resize_toplevel(GtkExpander* expander, c_int resize_toplevel);
	[LinkName("gtk_expander_set_use_markup")]
	public static extern void expander_set_use_markup(GtkExpander* expander, c_int use_markup);
	[LinkName("gtk_expander_set_use_underline")]
	public static extern void expander_set_use_underline(GtkExpander* expander, c_int use_underline);
	[CRepr]
	public struct GtkExpression;
	[LinkName("gtk_expression_bind")]
	public static extern GtkExpressionWatch* expression_bind(GtkExpression* self, void* target,  c_char* property, void* this_);
	[LinkName("gtk_expression_evaluate")]
	public static extern c_int expression_evaluate(GtkExpression* self, void* this_, GValue* value);
	[LinkName("gtk_expression_get_value_type")]
	public static extern GType expression_get_value_type(GtkExpression* self);
	[LinkName("gtk_expression_is_static")]
	public static extern c_int expression_is_static(GtkExpression* self);
	[LinkName("gtk_expression_ref")]
	public static extern GtkExpression* expression_ref(GtkExpression* self);
	[LinkName("gtk_expression_unref")]
	public static extern void expression_unref(GtkExpression* self);
	[LinkName("gtk_expression_watch")]
	public static extern GtkExpressionWatch* expression_watch(GtkExpression* self, void* this_, GtkExpressionNotify notify, void* user_data, GDestroyNotify user_destroy);
	public function void GtkExpressionNotify(void* user_data);
	[CRepr]
	public struct GtkExpressionWatch
	{
	}
	[CRepr]
	public struct GtkFileChooser
	{	}
	public enum GtkFileChooserAction : c_int
	{
		GTK_FILE_CHOOSER_ACTION_OPEN,
		GTK_FILE_CHOOSER_ACTION_SAVE,
		GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER
	}
	[CRepr]
	public struct GtkFileChooserDialog;
	[LinkName("gtk_file_chooser_dialog_new")]
	public static extern GtkWidget* file_chooser_dialog_new( c_char* title, GtkWindow* parent, GtkFileChooserAction action,  c_char* first_button_text);
	public enum GtkFileChooserError : c_int
	{
		GTK_FILE_CHOOSER_ERROR_NONEXISTENT,
		GTK_FILE_CHOOSER_ERROR_BAD_FILENAME,
		GTK_FILE_CHOOSER_ERROR_ALREADY_EXISTS,
		GTK_FILE_CHOOSER_ERROR_INCOMPLETE_HOSTNAME
	}
	[CRepr]
	public struct GtkFileChooserNative;
	[LinkName("gtk_file_chooser_native_new")]
	public static extern GtkFileChooserNative* file_chooser_native_new( c_char* title, GtkWindow* parent, GtkFileChooserAction action,  c_char* accept_label,  c_char* cancel_label);
	[LinkName("gtk_file_chooser_native_get_accept_label")]
	public static extern  c_char* file_chooser_native_get_accept_label(GtkFileChooserNative* self);
	[LinkName("gtk_file_chooser_native_get_cancel_label")]
	public static extern  c_char* file_chooser_native_get_cancel_label(GtkFileChooserNative* self);
	[LinkName("gtk_file_chooser_native_set_accept_label")]
	public static extern void file_chooser_native_set_accept_label(GtkFileChooserNative* self,  c_char* accept_label);
	[LinkName("gtk_file_chooser_native_set_cancel_label")]
	public static extern void file_chooser_native_set_cancel_label(GtkFileChooserNative* self,  c_char* cancel_label);
	[CRepr]
	public struct GtkFileChooserNativeClass
	{
		GtkNativeDialogClass parent_class;
	}
	[CRepr]
	public struct GtkFileChooserWidget;
	[LinkName("gtk_file_chooser_widget_new")]
	public static extern GtkWidget* file_chooser_widget_new(GtkFileChooserAction action);
	[CRepr]
	public struct GtkFileDialog;
	[LinkName("gtk_file_dialog_new")]
	public static extern GtkFileDialog* file_dialog_new();
	[LinkName("gtk_file_dialog_get_accept_label")]
	public static extern  c_char* file_dialog_get_accept_label(GtkFileDialog* self);
	[LinkName("gtk_file_dialog_get_default_filter")]
	public static extern GtkFileFilter* file_dialog_get_default_filter(GtkFileDialog* self);
	[LinkName("gtk_file_dialog_get_filters")]
	public static extern GListModel* file_dialog_get_filters(GtkFileDialog* self);
	[LinkName("gtk_file_dialog_get_initial_file")]
	public static extern GFile* file_dialog_get_initial_file(GtkFileDialog* self);
	[LinkName("gtk_file_dialog_get_initial_folder")]
	public static extern GFile* file_dialog_get_initial_folder(GtkFileDialog* self);
	[LinkName("gtk_file_dialog_get_initial_name")]
	public static extern  c_char* file_dialog_get_initial_name(GtkFileDialog* self);
	[LinkName("gtk_file_dialog_get_modal")]
	public static extern c_int file_dialog_get_modal(GtkFileDialog* self);
	[LinkName("gtk_file_dialog_get_title")]
	public static extern  c_char* file_dialog_get_title(GtkFileDialog* self);
	[LinkName("gtk_file_dialog_open")]
	public static extern void file_dialog_open(GtkFileDialog* self, GtkWindow* parent, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_dialog_open_finish")]
	public static extern GFile* file_dialog_open_finish(GtkFileDialog* self, GAsyncResult* result);
	[LinkName("gtk_file_dialog_open_multiple")]
	public static extern void file_dialog_open_multiple(GtkFileDialog* self, GtkWindow* parent, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_dialog_open_multiple_finish")]
	public static extern GListModel* file_dialog_open_multiple_finish(GtkFileDialog* self, GAsyncResult* result);
	[LinkName("gtk_file_dialog_save")]
	public static extern void file_dialog_save(GtkFileDialog* self, GtkWindow* parent, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_dialog_save_finish")]
	public static extern GFile* file_dialog_save_finish(GtkFileDialog* self, GAsyncResult* result);
	[LinkName("gtk_file_dialog_select_folder")]
	public static extern void file_dialog_select_folder(GtkFileDialog* self, GtkWindow* parent, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_dialog_select_folder_finish")]
	public static extern GFile* file_dialog_select_folder_finish(GtkFileDialog* self, GAsyncResult* result);
	[LinkName("gtk_file_dialog_select_multiple_folders")]
	public static extern void file_dialog_select_multiple_folders(GtkFileDialog* self, GtkWindow* parent, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_dialog_select_multiple_folders_finish")]
	public static extern GListModel* file_dialog_select_multiple_folders_finish(GtkFileDialog* self, GAsyncResult* result);
	[LinkName("gtk_file_dialog_set_accept_label")]
	public static extern void file_dialog_set_accept_label(GtkFileDialog* self,  c_char* accept_label);
	[LinkName("gtk_file_dialog_set_default_filter")]
	public static extern void file_dialog_set_default_filter(GtkFileDialog* self, GtkFileFilter* filter);
	[LinkName("gtk_file_dialog_set_filters")]
	public static extern void file_dialog_set_filters(GtkFileDialog* self, GListModel* filters);
	[LinkName("gtk_file_dialog_set_initial_file")]
	public static extern void file_dialog_set_initial_file(GtkFileDialog* self, GFile* file);
	[LinkName("gtk_file_dialog_set_initial_folder")]
	public static extern void file_dialog_set_initial_folder(GtkFileDialog* self, GFile* folder);
	[LinkName("gtk_file_dialog_set_initial_name")]
	public static extern void file_dialog_set_initial_name(GtkFileDialog* self,  c_char* name);
	[LinkName("gtk_file_dialog_set_modal")]
	public static extern void file_dialog_set_modal(GtkFileDialog* self, c_int modal);
	[LinkName("gtk_file_dialog_set_title")]
	public static extern void file_dialog_set_title(GtkFileDialog* self,  c_char* title);
	[CRepr]
	public struct GtkFileDialogClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkFileFilter;
	[LinkName("gtk_file_filter_new")]
	public static extern GtkFileFilter* file_filter_new();
	[LinkName("gtk_file_filter_new_from_gvariant")]
	public static extern GtkFileFilter* file_filter_new_from_gvariant(GVariant* variant);
	[LinkName("gtk_file_filter_add_mime_type")]
	public static extern void file_filter_add_mime_type(GtkFileFilter* filter,  c_char* mime_type);
	[LinkName("gtk_file_filter_add_pattern")]
	public static extern void file_filter_add_pattern(GtkFileFilter* filter,  c_char* pattern);
	[LinkName("gtk_file_filter_add_pixbuf_formats")]
	public static extern void file_filter_add_pixbuf_formats(GtkFileFilter* filter);
	[LinkName("gtk_file_filter_add_suffix")]
	public static extern void file_filter_add_suffix(GtkFileFilter* filter,  c_char* suffix);
	[LinkName("gtk_file_filter_get_attributes")]
	public static extern  c_char** file_filter_get_attributes(GtkFileFilter* filter);
	[LinkName("gtk_file_filter_get_name")]
	public static extern  c_char* file_filter_get_name(GtkFileFilter* filter);
	[LinkName("gtk_file_filter_set_name")]
	public static extern void file_filter_set_name(GtkFileFilter* filter,  c_char* name);
	[LinkName("gtk_file_filter_to_gvariant")]
	public static extern GVariant* file_filter_to_gvariant(GtkFileFilter* filter);
	[CRepr]
	public struct GtkFileLauncher;
	[LinkName("gtk_file_launcher_new")]
	public static extern GtkFileLauncher* file_launcher_new(GFile* file);
	[LinkName("gtk_file_launcher_get_file")]
	public static extern GFile* file_launcher_get_file(GtkFileLauncher* self);
	[LinkName("gtk_file_launcher_launch")]
	public static extern void file_launcher_launch(GtkFileLauncher* self, GtkWindow* parent, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_launcher_launch_finish")]
	public static extern c_int file_launcher_launch_finish(GtkFileLauncher* self, GAsyncResult* result);
	[LinkName("gtk_file_launcher_open_containing_folder")]
	public static extern void file_launcher_open_containing_folder(GtkFileLauncher* self, GtkWindow* parent, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_file_launcher_open_containing_folder_finish")]
	public static extern c_int file_launcher_open_containing_folder_finish(GtkFileLauncher* self, GAsyncResult* result);
	[LinkName("gtk_file_launcher_set_file")]
	public static extern void file_launcher_set_file(GtkFileLauncher* self, GFile* file);
	[CRepr]
	public struct GtkFileLauncherClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkFilter;
	[LinkName("gtk_filter_changed")]
	public static extern void filter_changed(GtkFilter* self, GtkFilterChange change);
	[LinkName("gtk_filter_get_strictness")]
	public static extern GtkFilterMatch filter_get_strictness(GtkFilter* self);
	[LinkName("gtk_filter_match")]
	public static extern c_int filter_match(GtkFilter* self, void* item);
	public enum GtkFilterChange : c_int
	{
		GTK_FILTER_CHANGE_DIFFERENT,
		GTK_FILTER_CHANGE_LESS_STRICT,
		GTK_FILTER_CHANGE_MORE_STRICT
	}
	[CRepr]
	public struct GtkFilterClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkFilterListModel;
	[LinkName("gtk_filter_list_model_new")]
	public static extern GtkFilterListModel* filter_list_model_new(GListModel* model, GtkFilter* filter);
	[LinkName("gtk_filter_list_model_get_filter")]
	public static extern GtkFilter* filter_list_model_get_filter(GtkFilterListModel* self);
	[LinkName("gtk_filter_list_model_get_incremental")]
	public static extern c_int filter_list_model_get_incremental(GtkFilterListModel* self);
	[LinkName("gtk_filter_list_model_get_model")]
	public static extern GListModel* filter_list_model_get_model(GtkFilterListModel* self);
	[LinkName("gtk_filter_list_model_get_pending")]
	public static extern c_uint filter_list_model_get_pending(GtkFilterListModel* self);
	[LinkName("gtk_filter_list_model_set_filter")]
	public static extern void filter_list_model_set_filter(GtkFilterListModel* self, GtkFilter* filter);
	[LinkName("gtk_filter_list_model_set_incremental")]
	public static extern void filter_list_model_set_incremental(GtkFilterListModel* self, c_int incremental);
	[LinkName("gtk_filter_list_model_set_model")]
	public static extern void filter_list_model_set_model(GtkFilterListModel* self, GListModel* model);
	[CRepr]
	public struct GtkFilterListModelClass
	{
		GObjectClass parent_class;
	}
	public enum GtkFilterMatch : c_int
	{
		GTK_FILTER_MATCH_SOME,
		GTK_FILTER_MATCH_NONE,
		GTK_FILTER_MATCH_ALL
	}
	[CRepr]
	public struct GtkFixed;
	[LinkName("gtk_fixed_new")]
	public static extern GtkWidget* fixed_new();
	[LinkName("gtk_fixed_get_child_position")]
	public static extern void fixed_get_child_position(GtkFixed* fixed_, GtkWidget* widget, double* x, double* y);
	[LinkName("gtk_fixed_get_child_transform")]
	public static extern GskTransform* fixed_get_child_transform(GtkFixed* fixed_, GtkWidget* widget);
	[LinkName("gtk_fixed_move")]
	public static extern void fixed_move(GtkFixed* fixed_, GtkWidget* widget, double x, double y);
	[LinkName("gtk_fixed_put")]
	public static extern void fixed_put(GtkFixed* fixed_, GtkWidget* widget, double x, double y);
	[LinkName("gtk_fixed_remove")]
	public static extern void fixed_remove(GtkFixed* fixed_, GtkWidget* widget);
	[LinkName("gtk_fixed_set_child_transform")]
	public static extern void fixed_set_child_transform(GtkFixed* fixed_, GtkWidget* widget, GskTransform* transform);
	[CRepr]
	public struct GtkFixedClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkFixedLayout;
	[LinkName("gtk_fixed_layout_new")]
	public static extern GtkLayoutManager* fixed_layout_new();
	[CRepr]
	public struct GtkFixedLayoutChild;
	[LinkName("gtk_fixed_layout_child_get_transform")]
	public static extern GskTransform* fixed_layout_child_get_transform(GtkFixedLayoutChild* child);
	[LinkName("gtk_fixed_layout_child_set_transform")]
	public static extern void fixed_layout_child_set_transform(GtkFixedLayoutChild* child, GskTransform* transform);
	[CRepr]
	public struct GtkFixedLayoutChildClass
	{
		GtkLayoutChildClass parent_class;
	}
	[CRepr]
	public struct GtkFixedLayoutClass
	{
		GtkLayoutManagerClass parent_class;
	}
	[CRepr]
	public struct GtkFlattenListModel;
	[LinkName("gtk_flatten_list_model_new")]
	public static extern GtkFlattenListModel* flatten_list_model_new(GListModel* model);
	[LinkName("gtk_flatten_list_model_get_model")]
	public static extern GListModel* flatten_list_model_get_model(GtkFlattenListModel* self);
	[LinkName("gtk_flatten_list_model_get_model_for_item")]
	public static extern GListModel* flatten_list_model_get_model_for_item(GtkFlattenListModel* self, c_uint position);
	[LinkName("gtk_flatten_list_model_set_model")]
	public static extern void flatten_list_model_set_model(GtkFlattenListModel* self, GListModel* model);
	[CRepr]
	public struct GtkFlattenListModelClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkFlowBox;
	[LinkName("gtk_flow_box_new")]
	public static extern GtkWidget* flow_box_new();
	[LinkName("gtk_flow_box_append")]
	public static extern void flow_box_append(GtkFlowBox* self, GtkWidget* child);
	[LinkName("gtk_flow_box_bind_model")]
	public static extern void flow_box_bind_model(GtkFlowBox* box_, GListModel* model, GtkFlowBoxCreateWidgetFunc create_widget_func, void* user_data, GDestroyNotify user_data_free_func);
	[LinkName("gtk_flow_box_get_activate_on_single_click")]
	public static extern c_int flow_box_get_activate_on_single_click(GtkFlowBox* box_);
	[LinkName("gtk_flow_box_get_child_at_index")]
	public static extern GtkFlowBoxChild* flow_box_get_child_at_index(GtkFlowBox* box_, c_int idx);
	[LinkName("gtk_flow_box_get_child_at_pos")]
	public static extern GtkFlowBoxChild* flow_box_get_child_at_pos(GtkFlowBox* box_, c_int x, c_int y);
	[LinkName("gtk_flow_box_get_column_spacing")]
	public static extern c_uint flow_box_get_column_spacing(GtkFlowBox* box_);
	[LinkName("gtk_flow_box_get_homogeneous")]
	public static extern c_int flow_box_get_homogeneous(GtkFlowBox* box_);
	[LinkName("gtk_flow_box_get_max_children_per_line")]
	public static extern c_uint flow_box_get_max_children_per_line(GtkFlowBox* box_);
	[LinkName("gtk_flow_box_get_min_children_per_line")]
	public static extern c_uint flow_box_get_min_children_per_line(GtkFlowBox* box_);
	[LinkName("gtk_flow_box_get_row_spacing")]
	public static extern c_uint flow_box_get_row_spacing(GtkFlowBox* box_);
	[LinkName("gtk_flow_box_get_selected_children")]
	public static extern GList* flow_box_get_selected_children(GtkFlowBox* box_);
	[LinkName("gtk_flow_box_get_selection_mode")]
	public static extern GtkSelectionMode flow_box_get_selection_mode(GtkFlowBox* box_);
	[LinkName("gtk_flow_box_insert")]
	public static extern void flow_box_insert(GtkFlowBox* box_, GtkWidget* widget, c_int position);
	[LinkName("gtk_flow_box_invalidate_filter")]
	public static extern void flow_box_invalidate_filter(GtkFlowBox* box_);
	[LinkName("gtk_flow_box_invalidate_sort")]
	public static extern void flow_box_invalidate_sort(GtkFlowBox* box_);
	[LinkName("gtk_flow_box_prepend")]
	public static extern void flow_box_prepend(GtkFlowBox* self, GtkWidget* child);
	[LinkName("gtk_flow_box_remove")]
	public static extern void flow_box_remove(GtkFlowBox* box_, GtkWidget* widget);
	[LinkName("gtk_flow_box_remove_all")]
	public static extern void flow_box_remove_all(GtkFlowBox* box_);
	[LinkName("gtk_flow_box_select_all")]
	public static extern void flow_box_select_all(GtkFlowBox* box_);
	[LinkName("gtk_flow_box_select_child")]
	public static extern void flow_box_select_child(GtkFlowBox* box_, GtkFlowBoxChild* child);
	[LinkName("gtk_flow_box_selected_foreach")]
	public static extern void flow_box_selected_foreach(GtkFlowBox* box_, GtkFlowBoxForeachFunc func, void* data);
	[LinkName("gtk_flow_box_set_activate_on_single_click")]
	public static extern void flow_box_set_activate_on_single_click(GtkFlowBox* box_, c_int single);
	[LinkName("gtk_flow_box_set_column_spacing")]
	public static extern void flow_box_set_column_spacing(GtkFlowBox* box_, c_uint spacing);
	[LinkName("gtk_flow_box_set_filter_func")]
	public static extern void flow_box_set_filter_func(GtkFlowBox* box_, GtkFlowBoxFilterFunc filter_func, void* user_data, GDestroyNotify destroy);
	[LinkName("gtk_flow_box_set_hadjustment")]
	public static extern void flow_box_set_hadjustment(GtkFlowBox* box_, GtkAdjustment* adjustment);
	[LinkName("gtk_flow_box_set_homogeneous")]
	public static extern void flow_box_set_homogeneous(GtkFlowBox* box_, c_int homogeneous);
	[LinkName("gtk_flow_box_set_max_children_per_line")]
	public static extern void flow_box_set_max_children_per_line(GtkFlowBox* box_, c_uint n_children);
	[LinkName("gtk_flow_box_set_min_children_per_line")]
	public static extern void flow_box_set_min_children_per_line(GtkFlowBox* box_, c_uint n_children);
	[LinkName("gtk_flow_box_set_row_spacing")]
	public static extern void flow_box_set_row_spacing(GtkFlowBox* box_, c_uint spacing);
	[LinkName("gtk_flow_box_set_selection_mode")]
	public static extern void flow_box_set_selection_mode(GtkFlowBox* box_, GtkSelectionMode mode);
	[LinkName("gtk_flow_box_set_sort_func")]
	public static extern void flow_box_set_sort_func(GtkFlowBox* box_, GtkFlowBoxSortFunc sort_func, void* user_data, GDestroyNotify destroy);
	[LinkName("gtk_flow_box_set_vadjustment")]
	public static extern void flow_box_set_vadjustment(GtkFlowBox* box_, GtkAdjustment* adjustment);
	[LinkName("gtk_flow_box_unselect_all")]
	public static extern void flow_box_unselect_all(GtkFlowBox* box_);
	[LinkName("gtk_flow_box_unselect_child")]
	public static extern void flow_box_unselect_child(GtkFlowBox* box_, GtkFlowBoxChild* child);
	[CRepr]
	public struct GtkFlowBoxChild;
	[LinkName("gtk_flow_box_child_new")]
	public static extern GtkWidget* flow_box_child_new();
	[LinkName("gtk_flow_box_child_changed")]
	public static extern void flow_box_child_changed(GtkFlowBoxChild* child);
	[LinkName("gtk_flow_box_child_get_child")]
	public static extern GtkWidget* flow_box_child_get_child(GtkFlowBoxChild* self);
	[LinkName("gtk_flow_box_child_get_index")]
	public static extern c_int flow_box_child_get_index(GtkFlowBoxChild* child);
	[LinkName("gtk_flow_box_child_is_selected")]
	public static extern c_int flow_box_child_is_selected(GtkFlowBoxChild* child);
	[LinkName("gtk_flow_box_child_set_child")]
	public static extern void flow_box_child_set_child(GtkFlowBoxChild* self, GtkWidget* child);
	[CRepr]
	public struct GtkFlowBoxChildClass
	{
		GtkWidgetClass parent_class;
	}
	public function GtkWidget* GtkFlowBoxCreateWidgetFunc(void* item, void* user_data);
	public function c_int GtkFlowBoxFilterFunc(GtkFlowBoxChild* child, void* user_data);
	public function void GtkFlowBoxForeachFunc(GtkFlowBox* box_, GtkFlowBoxChild* child, void* user_data);
	public function c_int GtkFlowBoxSortFunc(GtkFlowBoxChild* child1, GtkFlowBoxChild* child2, void* user_data);
	[CRepr]
	public struct GtkFontButton;
	[LinkName("gtk_font_button_new")]
	public static extern GtkWidget* font_button_new();
	[LinkName("gtk_font_button_new_with_font")]
	public static extern GtkWidget* font_button_new_with_font( c_char* fontname);
	[LinkName("gtk_font_button_get_modal")]
	public static extern c_int font_button_get_modal(GtkFontButton* font_button);
	[LinkName("gtk_font_button_get_title")]
	public static extern  c_char* font_button_get_title(GtkFontButton* font_button);
	[LinkName("gtk_font_button_get_use_font")]
	public static extern c_int font_button_get_use_font(GtkFontButton* font_button);
	[LinkName("gtk_font_button_get_use_size")]
	public static extern c_int font_button_get_use_size(GtkFontButton* font_button);
	[LinkName("gtk_font_button_set_modal")]
	public static extern void font_button_set_modal(GtkFontButton* font_button, c_int modal);
	[LinkName("gtk_font_button_set_title")]
	public static extern void font_button_set_title(GtkFontButton* font_button,  c_char* title);
	[LinkName("gtk_font_button_set_use_font")]
	public static extern void font_button_set_use_font(GtkFontButton* font_button, c_int use_font);
	[LinkName("gtk_font_button_set_use_size")]
	public static extern void font_button_set_use_size(GtkFontButton* font_button, c_int use_size);
	[CRepr]
	public struct GtkFontChooser
	{
		public function void(GtkFontChooser* chooser,  c_char* fontname) font_activated;

		public function PangoFontFace*(GtkFontChooser* fontchooser) get_font_face;

		public function PangoFontFamily*(GtkFontChooser* fontchooser) get_font_family;

		public function PangoFontMap*(GtkFontChooser* fontchooser) get_font_map;

		public function c_int(GtkFontChooser* fontchooser) get_font_size;

		public function void(GtkFontChooser* fontchooser, GtkFontFilterFunc filter, void* user_data, GDestroyNotify destroy) set_filter_func;

		public function void(GtkFontChooser* fontchooser, PangoFontMap* fontmap) set_font_map;
	}
	[CRepr]
	public struct GtkFontChooserDialog;
	[LinkName("gtk_font_chooser_dialog_new")]
	public static extern GtkWidget* font_chooser_dialog_new( c_char* title, GtkWindow* parent);
	[CRepr]
	public struct GtkFontChooserIface
	{
		GTypeInterface base_iface;
	}
	[CRepr]
	public struct GtkFontChooserLevel
	{
		public const int GTK_FONT_CHOOSER_LEVEL_FAMILY = 0;
		public const int GTK_FONT_CHOOSER_LEVEL_STYLE = 1;
		public const int GTK_FONT_CHOOSER_LEVEL_SIZE = 2;
		public const int GTK_FONT_CHOOSER_LEVEL_VARIATIONS = 4;
		public const int GTK_FONT_CHOOSER_LEVEL_FEATURES = 8;
	}
	[CRepr]
	public struct GtkFontChooserWidget;
	[LinkName("gtk_font_chooser_widget_new")]
	public static extern GtkWidget* font_chooser_widget_new();
	[CRepr]
	public struct GtkFontDialog;
	[LinkName("gtk_font_dialog_new")]
	public static extern GtkFontDialog* font_dialog_new();
	[LinkName("gtk_font_dialog_choose_face")]
	public static extern void font_dialog_choose_face(GtkFontDialog* self, GtkWindow* parent, PangoFontFace* initial_value, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_font_dialog_choose_face_finish")]
	public static extern PangoFontFace* font_dialog_choose_face_finish(GtkFontDialog* self, GAsyncResult* result);
	[LinkName("gtk_font_dialog_choose_family")]
	public static extern void font_dialog_choose_family(GtkFontDialog* self, GtkWindow* parent, PangoFontFamily* initial_value, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_font_dialog_choose_family_finish")]
	public static extern PangoFontFamily* font_dialog_choose_family_finish(GtkFontDialog* self, GAsyncResult* result);
	[LinkName("gtk_font_dialog_choose_font")]
	public static extern void font_dialog_choose_font(GtkFontDialog* self, GtkWindow* parent, PangoFontDescription* initial_value, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_font_dialog_choose_font_and_features")]
	public static extern void font_dialog_choose_font_and_features(GtkFontDialog* self, GtkWindow* parent, PangoFontDescription* initial_value, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_font_dialog_choose_font_and_features_finish")]
	public static extern c_int font_dialog_choose_font_and_features_finish(GtkFontDialog* self, GAsyncResult* result, PangoFontDescription** font_desc, c_char** font_features, PangoLanguage** language);
	[LinkName("gtk_font_dialog_choose_font_finish")]
	public static extern PangoFontDescription* font_dialog_choose_font_finish(GtkFontDialog* self, GAsyncResult* result);
	[LinkName("gtk_font_dialog_get_filter")]
	public static extern GtkFilter* font_dialog_get_filter(GtkFontDialog* self);
	[LinkName("gtk_font_dialog_get_font_map")]
	public static extern PangoFontMap* font_dialog_get_font_map(GtkFontDialog* self);
	[LinkName("gtk_font_dialog_get_language")]
	public static extern PangoLanguage* font_dialog_get_language(GtkFontDialog* self);
	[LinkName("gtk_font_dialog_get_modal")]
	public static extern c_int font_dialog_get_modal(GtkFontDialog* self);
	[LinkName("gtk_font_dialog_get_title")]
	public static extern  c_char* font_dialog_get_title(GtkFontDialog* self);
	[LinkName("gtk_font_dialog_set_filter")]
	public static extern void font_dialog_set_filter(GtkFontDialog* self, GtkFilter* filter);
	[LinkName("gtk_font_dialog_set_font_map")]
	public static extern void font_dialog_set_font_map(GtkFontDialog* self, PangoFontMap* fontmap);
	[LinkName("gtk_font_dialog_set_language")]
	public static extern void font_dialog_set_language(GtkFontDialog* self, PangoLanguage* language);
	[LinkName("gtk_font_dialog_set_modal")]
	public static extern void font_dialog_set_modal(GtkFontDialog* self, c_int modal);
	[LinkName("gtk_font_dialog_set_title")]
	public static extern void font_dialog_set_title(GtkFontDialog* self,  c_char* title);
	[CRepr]
	public struct GtkFontDialogButton;
	[LinkName("gtk_font_dialog_button_new")]
	public static extern GtkWidget* font_dialog_button_new(GtkFontDialog* dialog);
	[LinkName("gtk_font_dialog_button_get_dialog")]
	public static extern GtkFontDialog* font_dialog_button_get_dialog(GtkFontDialogButton* self);
	[LinkName("gtk_font_dialog_button_get_font_desc")]
	public static extern PangoFontDescription* font_dialog_button_get_font_desc(GtkFontDialogButton* self);
	[LinkName("gtk_font_dialog_button_get_font_features")]
	public static extern  c_char* font_dialog_button_get_font_features(GtkFontDialogButton* self);
	[LinkName("gtk_font_dialog_button_get_language")]
	public static extern PangoLanguage* font_dialog_button_get_language(GtkFontDialogButton* self);
	[LinkName("gtk_font_dialog_button_get_level")]
	public static extern GtkFontLevel font_dialog_button_get_level(GtkFontDialogButton* self);
	[LinkName("gtk_font_dialog_button_get_use_font")]
	public static extern c_int font_dialog_button_get_use_font(GtkFontDialogButton* self);
	[LinkName("gtk_font_dialog_button_get_use_size")]
	public static extern c_int font_dialog_button_get_use_size(GtkFontDialogButton* self);
	[LinkName("gtk_font_dialog_button_set_dialog")]
	public static extern void font_dialog_button_set_dialog(GtkFontDialogButton* self, GtkFontDialog* dialog);
	[LinkName("gtk_font_dialog_button_set_font_desc")]
	public static extern void font_dialog_button_set_font_desc(GtkFontDialogButton* self,  PangoFontDescription* font_desc);
	[LinkName("gtk_font_dialog_button_set_font_features")]
	public static extern void font_dialog_button_set_font_features(GtkFontDialogButton* self,  c_char* font_features);
	[LinkName("gtk_font_dialog_button_set_language")]
	public static extern void font_dialog_button_set_language(GtkFontDialogButton* self, PangoLanguage* language);
	[LinkName("gtk_font_dialog_button_set_level")]
	public static extern void font_dialog_button_set_level(GtkFontDialogButton* self, GtkFontLevel level);
	[LinkName("gtk_font_dialog_button_set_use_font")]
	public static extern void font_dialog_button_set_use_font(GtkFontDialogButton* self, c_int use_font);
	[LinkName("gtk_font_dialog_button_set_use_size")]
	public static extern void font_dialog_button_set_use_size(GtkFontDialogButton* self, c_int use_size);
	[CRepr]
	public struct GtkFontDialogButtonClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkFontDialogClass
	{
		GObjectClass parent_class;
	}
	public function c_int GtkFontFilterFunc( PangoFontFamily* family,  PangoFontFace* face, void* data);
	public enum GtkFontLevel : c_int
	{
		GTK_FONT_LEVEL_FAMILY,
		GTK_FONT_LEVEL_FACE,
		GTK_FONT_LEVEL_FONT,
		GTK_FONT_LEVEL_FEATURES
	}
	[CRepr]
	public struct GtkFrame;
	[LinkName("gtk_frame_new")]
	public static extern GtkWidget* frame_new( c_char* label);
	[LinkName("gtk_frame_get_child")]
	public static extern GtkWidget* frame_get_child(GtkFrame* frame);
	[LinkName("gtk_frame_get_label")]
	public static extern  c_char* frame_get_label(GtkFrame* frame);
	[LinkName("gtk_frame_get_label_align")]
	public static extern float frame_get_label_align(GtkFrame* frame);
	[LinkName("gtk_frame_get_label_widget")]
	public static extern GtkWidget* frame_get_label_widget(GtkFrame* frame);
	[LinkName("gtk_frame_set_child")]
	public static extern void frame_set_child(GtkFrame* frame, GtkWidget* child);
	[LinkName("gtk_frame_set_label")]
	public static extern void frame_set_label(GtkFrame* frame,  c_char* label);
	[LinkName("gtk_frame_set_label_align")]
	public static extern void frame_set_label_align(GtkFrame* frame, float xalign);
	[LinkName("gtk_frame_set_label_widget")]
	public static extern void frame_set_label_widget(GtkFrame* frame, GtkWidget* label_widget);
	[CRepr]
	public struct GtkFrameClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkGLArea;
	[LinkName("gtk_gl_area_new")]
	public static extern GtkWidget* gl_area_new();
	[LinkName("gtk_gl_area_attach_buffers")]
	public static extern void gl_area_attach_buffers(GtkGLArea* area);
	[LinkName("gtk_gl_area_get_allowed_apis")]
	public static extern GdkGLAPI gl_area_get_allowed_apis(GtkGLArea* area);
	[LinkName("gtk_gl_area_get_api")]
	public static extern GdkGLAPI gl_area_get_api(GtkGLArea* area);
	[LinkName("gtk_gl_area_get_auto_render")]
	public static extern c_int gl_area_get_auto_render(GtkGLArea* area);
	[LinkName("gtk_gl_area_get_context")]
	public static extern GdkGLContext* gl_area_get_context(GtkGLArea* area);
	[LinkName("gtk_gl_area_get_error")]
	public static extern GError* gl_area_get_error(GtkGLArea* area);
	[LinkName("gtk_gl_area_get_has_depth_buffer")]
	public static extern c_int gl_area_get_has_depth_buffer(GtkGLArea* area);
	[LinkName("gtk_gl_area_get_has_stencil_buffer")]
	public static extern c_int gl_area_get_has_stencil_buffer(GtkGLArea* area);
	[LinkName("gtk_gl_area_get_required_version")]
	public static extern void gl_area_get_required_version(GtkGLArea* area, c_int* major, c_int* minor);
	[LinkName("gtk_gl_area_get_use_es")]
	public static extern c_int gl_area_get_use_es(GtkGLArea* area);
	[LinkName("gtk_gl_area_make_current")]
	public static extern void gl_area_make_current(GtkGLArea* area);
	[LinkName("gtk_gl_area_queue_render")]
	public static extern void gl_area_queue_render(GtkGLArea* area);
	[LinkName("gtk_gl_area_set_allowed_apis")]
	public static extern void gl_area_set_allowed_apis(GtkGLArea* area, GdkGLAPI apis);
	[LinkName("gtk_gl_area_set_auto_render")]
	public static extern void gl_area_set_auto_render(GtkGLArea* area, c_int auto_render);
	[LinkName("gtk_gl_area_set_error")]
	public static extern void gl_area_set_error(GtkGLArea* area,  GError* error);
	[LinkName("gtk_gl_area_set_has_depth_buffer")]
	public static extern void gl_area_set_has_depth_buffer(GtkGLArea* area, c_int has_depth_buffer);
	[LinkName("gtk_gl_area_set_has_stencil_buffer")]
	public static extern void gl_area_set_has_stencil_buffer(GtkGLArea* area, c_int has_stencil_buffer);
	[LinkName("gtk_gl_area_set_required_version")]
	public static extern void gl_area_set_required_version(GtkGLArea* area, c_int major, c_int minor);
	[LinkName("gtk_gl_area_set_use_es")]
	public static extern void gl_area_set_use_es(GtkGLArea* area, c_int use_es);
	[CRepr]
	public struct GtkGLAreaClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkGesture;
	[LinkName("gtk_gesture_get_bounding_box")]
	public static extern c_int gesture_get_bounding_box(GtkGesture* gesture, GdkRectangle* rect);
	[LinkName("gtk_gesture_get_bounding_box_center")]
	public static extern c_int gesture_get_bounding_box_center(GtkGesture* gesture, double* x, double* y);
	[LinkName("gtk_gesture_get_device")]
	public static extern GdkDevice* gesture_get_device(GtkGesture* gesture);
	[LinkName("gtk_gesture_get_group")]
	public static extern GList* gesture_get_group(GtkGesture* gesture);
	[LinkName("gtk_gesture_get_last_event")]
	public static extern GdkEvent* gesture_get_last_event(GtkGesture* gesture, GdkEventSequence* sequence);
	[LinkName("gtk_gesture_get_last_updated_sequence")]
	public static extern GdkEventSequence* gesture_get_last_updated_sequence(GtkGesture* gesture);
	[LinkName("gtk_gesture_get_point")]
	public static extern c_int gesture_get_point(GtkGesture* gesture, GdkEventSequence* sequence, double* x, double* y);
	[LinkName("gtk_gesture_get_sequence_state")]
	public static extern GtkEventSequenceState gesture_get_sequence_state(GtkGesture* gesture, GdkEventSequence* sequence);
	[LinkName("gtk_gesture_get_sequences")]
	public static extern GList* gesture_get_sequences(GtkGesture* gesture);
	[LinkName("gtk_gesture_group")]
	public static extern void gesture_group(GtkGesture* group_gesture, GtkGesture* gesture);
	[LinkName("gtk_gesture_handles_sequence")]
	public static extern c_int gesture_handles_sequence(GtkGesture* gesture, GdkEventSequence* sequence);
	[LinkName("gtk_gesture_is_active")]
	public static extern c_int gesture_is_active(GtkGesture* gesture);
	[LinkName("gtk_gesture_is_grouped_with")]
	public static extern c_int gesture_is_grouped_with(GtkGesture* gesture, GtkGesture* other);
	[LinkName("gtk_gesture_is_recognized")]
	public static extern c_int gesture_is_recognized(GtkGesture* gesture);
	[LinkName("gtk_gesture_set_sequence_state")]
	public static extern c_int gesture_set_sequence_state(GtkGesture* gesture, GdkEventSequence* sequence, GtkEventSequenceState state);
	[LinkName("gtk_gesture_set_state")]
	public static extern c_int gesture_set_state(GtkGesture* gesture, GtkEventSequenceState state);
	[LinkName("gtk_gesture_ungroup")]
	public static extern void gesture_ungroup(GtkGesture* gesture);
	[CRepr]
	public struct GtkGestureClass
	{
	}
	[CRepr]
	public struct GtkGestureClick;
	[LinkName("gtk_gesture_click_new")]
	public static extern GtkGesture* gesture_click_new();
	[CRepr]
	public struct GtkGestureClickClass
	{
	}
	[CRepr]
	public struct GtkGestureDrag;
	[LinkName("gtk_gesture_drag_new")]
	public static extern GtkGesture* gesture_drag_new();
	[LinkName("gtk_gesture_drag_get_offset")]
	public static extern c_int gesture_drag_get_offset(GtkGestureDrag* gesture, double* x, double* y);
	[LinkName("gtk_gesture_drag_get_start_point")]
	public static extern c_int gesture_drag_get_start_point(GtkGestureDrag* gesture, double* x, double* y);
	[CRepr]
	public struct GtkGestureDragClass
	{
	}
	[CRepr]
	public struct GtkGestureLongPress;
	[LinkName("gtk_gesture_long_press_new")]
	public static extern GtkGesture* gesture_long_press_new();
	[LinkName("gtk_gesture_long_press_get_delay_factor")]
	public static extern double gesture_long_press_get_delay_factor(GtkGestureLongPress* gesture);
	[LinkName("gtk_gesture_long_press_set_delay_factor")]
	public static extern void gesture_long_press_set_delay_factor(GtkGestureLongPress* gesture, double delay_factor);
	[CRepr]
	public struct GtkGestureLongPressClass
	{
	}
	[CRepr]
	public struct GtkGesturePan;
	[LinkName("gtk_gesture_pan_new")]
	public static extern GtkGesture* gesture_pan_new(GtkOrientation orientation);
	[LinkName("gtk_gesture_pan_get_orientation")]
	public static extern GtkOrientation gesture_pan_get_orientation(GtkGesturePan* gesture);
	[LinkName("gtk_gesture_pan_set_orientation")]
	public static extern void gesture_pan_set_orientation(GtkGesturePan* gesture, GtkOrientation orientation);
	[CRepr]
	public struct GtkGesturePanClass
	{
	}
	[CRepr]
	public struct GtkGestureRotate;
	[LinkName("gtk_gesture_rotate_new")]
	public static extern GtkGesture* gesture_rotate_new();
	[LinkName("gtk_gesture_rotate_get_angle_delta")]
	public static extern double gesture_rotate_get_angle_delta(GtkGestureRotate* gesture);
	[CRepr]
	public struct GtkGestureRotateClass
	{
	}
	[CRepr]
	public struct GtkGestureSingle;
	[LinkName("gtk_gesture_single_get_button")]
	public static extern c_uint gesture_single_get_button(GtkGestureSingle* gesture);
	[LinkName("gtk_gesture_single_get_current_button")]
	public static extern c_uint gesture_single_get_current_button(GtkGestureSingle* gesture);
	[LinkName("gtk_gesture_single_get_current_sequence")]
	public static extern GdkEventSequence* gesture_single_get_current_sequence(GtkGestureSingle* gesture);
	[LinkName("gtk_gesture_single_get_exclusive")]
	public static extern c_int gesture_single_get_exclusive(GtkGestureSingle* gesture);
	[LinkName("gtk_gesture_single_get_touch_only")]
	public static extern c_int gesture_single_get_touch_only(GtkGestureSingle* gesture);
	[LinkName("gtk_gesture_single_set_button")]
	public static extern void gesture_single_set_button(GtkGestureSingle* gesture, c_uint button);
	[LinkName("gtk_gesture_single_set_exclusive")]
	public static extern void gesture_single_set_exclusive(GtkGestureSingle* gesture, c_int exclusive);
	[LinkName("gtk_gesture_single_set_touch_only")]
	public static extern void gesture_single_set_touch_only(GtkGestureSingle* gesture, c_int touch_only);
	[CRepr]
	public struct GtkGestureSingleClass
	{
	}
	[CRepr]
	public struct GtkGestureStylus;
	[LinkName("gtk_gesture_stylus_new")]
	public static extern GtkGesture* gesture_stylus_new();
	[LinkName("gtk_gesture_stylus_get_axes")]
	public static extern c_int gesture_stylus_get_axes(GtkGestureStylus* gesture);
	[LinkName("gtk_gesture_stylus_get_axis")]
	public static extern c_int gesture_stylus_get_axis(GtkGestureStylus* gesture, GdkAxisUse axis, double* value);
	[LinkName("gtk_gesture_stylus_get_backlog")]
	public static extern c_int gesture_stylus_get_backlog(GtkGestureStylus* gesture, c_uint* n_elems);
	[LinkName("gtk_gesture_stylus_get_device_tool")]
	public static extern GdkDeviceTool* gesture_stylus_get_device_tool(GtkGestureStylus* gesture);
	[LinkName("gtk_gesture_stylus_get_stylus_only")]
	public static extern c_int gesture_stylus_get_stylus_only(GtkGestureStylus* gesture);
	[LinkName("gtk_gesture_stylus_set_stylus_only")]
	public static extern void gesture_stylus_set_stylus_only(GtkGestureStylus* gesture, c_int stylus_only);
	[CRepr]
	public struct GtkGestureStylusClass
	{
	}
	[CRepr]
	public struct GtkGestureSwipe;
	[LinkName("gtk_gesture_swipe_new")]
	public static extern GtkGesture* gesture_swipe_new();
	[LinkName("gtk_gesture_swipe_get_velocity")]
	public static extern c_int gesture_swipe_get_velocity(GtkGestureSwipe* gesture, double* velocity_x, double* velocity_y);
	[CRepr]
	public struct GtkGestureSwipeClass
	{
	}
	[CRepr]
	public struct GtkGestureZoom;
	[LinkName("gtk_gesture_zoom_new")]
	public static extern GtkGesture* gesture_zoom_new();
	[LinkName("gtk_gesture_zoom_get_scale_delta")]
	public static extern double gesture_zoom_get_scale_delta(GtkGestureZoom* gesture);
	[CRepr]
	public struct GtkGestureZoomClass
	{
	}
	[CRepr]
	public struct GtkGrid;
	[LinkName("gtk_grid_new")]
	public static extern GtkWidget* grid_new();
	[LinkName("gtk_grid_attach")]
	public static extern void grid_attach(GtkGrid* grid, GtkWidget* child, c_int column, c_int row, c_int width, c_int height);
	[LinkName("gtk_grid_attach_next_to")]
	public static extern void grid_attach_next_to(GtkGrid* grid, GtkWidget* child, GtkWidget* sibling, GtkPositionType side, c_int width, c_int height);
	[LinkName("gtk_grid_get_baseline_row")]
	public static extern c_int grid_get_baseline_row(GtkGrid* grid);
	[LinkName("gtk_grid_get_child_at")]
	public static extern GtkWidget* grid_get_child_at(GtkGrid* grid, c_int column, c_int row);
	[LinkName("gtk_grid_get_column_homogeneous")]
	public static extern c_int grid_get_column_homogeneous(GtkGrid* grid);
	[LinkName("gtk_grid_get_column_spacing")]
	public static extern c_uint grid_get_column_spacing(GtkGrid* grid);
	[LinkName("gtk_grid_get_row_baseline_position")]
	public static extern GtkBaselinePosition grid_get_row_baseline_position(GtkGrid* grid, c_int row);
	[LinkName("gtk_grid_get_row_homogeneous")]
	public static extern c_int grid_get_row_homogeneous(GtkGrid* grid);
	[LinkName("gtk_grid_get_row_spacing")]
	public static extern c_uint grid_get_row_spacing(GtkGrid* grid);
	[LinkName("gtk_grid_insert_column")]
	public static extern void grid_insert_column(GtkGrid* grid, c_int position);
	[LinkName("gtk_grid_insert_next_to")]
	public static extern void grid_insert_next_to(GtkGrid* grid, GtkWidget* sibling, GtkPositionType side);
	[LinkName("gtk_grid_insert_row")]
	public static extern void grid_insert_row(GtkGrid* grid, c_int position);
	[LinkName("gtk_grid_query_child")]
	public static extern void grid_query_child(GtkGrid* grid, GtkWidget* child, c_int* column, c_int* row, c_int* width, c_int* height);
	[LinkName("gtk_grid_remove")]
	public static extern void grid_remove(GtkGrid* grid, GtkWidget* child);
	[LinkName("gtk_grid_remove_column")]
	public static extern void grid_remove_column(GtkGrid* grid, c_int position);
	[LinkName("gtk_grid_remove_row")]
	public static extern void grid_remove_row(GtkGrid* grid, c_int position);
	[LinkName("gtk_grid_set_baseline_row")]
	public static extern void grid_set_baseline_row(GtkGrid* grid, c_int row);
	[LinkName("gtk_grid_set_column_homogeneous")]
	public static extern void grid_set_column_homogeneous(GtkGrid* grid, c_int homogeneous);
	[LinkName("gtk_grid_set_column_spacing")]
	public static extern void grid_set_column_spacing(GtkGrid* grid, c_uint spacing);
	[LinkName("gtk_grid_set_row_baseline_position")]
	public static extern void grid_set_row_baseline_position(GtkGrid* grid, c_int row, GtkBaselinePosition pos);
	[LinkName("gtk_grid_set_row_homogeneous")]
	public static extern void grid_set_row_homogeneous(GtkGrid* grid, c_int homogeneous);
	[LinkName("gtk_grid_set_row_spacing")]
	public static extern void grid_set_row_spacing(GtkGrid* grid, c_uint spacing);
	[CRepr]
	public struct GtkGridClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkGridLayout;
	[LinkName("gtk_grid_layout_new")]
	public static extern GtkLayoutManager* grid_layout_new();
	[LinkName("gtk_grid_layout_get_baseline_row")]
	public static extern c_int grid_layout_get_baseline_row(GtkGridLayout* grid);
	[LinkName("gtk_grid_layout_get_column_homogeneous")]
	public static extern c_int grid_layout_get_column_homogeneous(GtkGridLayout* grid);
	[LinkName("gtk_grid_layout_get_column_spacing")]
	public static extern c_uint grid_layout_get_column_spacing(GtkGridLayout* grid);
	[LinkName("gtk_grid_layout_get_row_baseline_position")]
	public static extern GtkBaselinePosition grid_layout_get_row_baseline_position(GtkGridLayout* grid, c_int row);
	[LinkName("gtk_grid_layout_get_row_homogeneous")]
	public static extern c_int grid_layout_get_row_homogeneous(GtkGridLayout* grid);
	[LinkName("gtk_grid_layout_get_row_spacing")]
	public static extern c_uint grid_layout_get_row_spacing(GtkGridLayout* grid);
	[LinkName("gtk_grid_layout_set_baseline_row")]
	public static extern void grid_layout_set_baseline_row(GtkGridLayout* grid, c_int row);
	[LinkName("gtk_grid_layout_set_column_homogeneous")]
	public static extern void grid_layout_set_column_homogeneous(GtkGridLayout* grid, c_int homogeneous);
	[LinkName("gtk_grid_layout_set_column_spacing")]
	public static extern void grid_layout_set_column_spacing(GtkGridLayout* grid, c_uint spacing);
	[LinkName("gtk_grid_layout_set_row_baseline_position")]
	public static extern void grid_layout_set_row_baseline_position(GtkGridLayout* grid, c_int row, GtkBaselinePosition pos);
	[LinkName("gtk_grid_layout_set_row_homogeneous")]
	public static extern void grid_layout_set_row_homogeneous(GtkGridLayout* grid, c_int homogeneous);
	[LinkName("gtk_grid_layout_set_row_spacing")]
	public static extern void grid_layout_set_row_spacing(GtkGridLayout* grid, c_uint spacing);
	[CRepr]
	public struct GtkGridLayoutChild;
	[LinkName("gtk_grid_layout_child_get_column")]
	public static extern c_int grid_layout_child_get_column(GtkGridLayoutChild* child);
	[LinkName("gtk_grid_layout_child_get_column_span")]
	public static extern c_int grid_layout_child_get_column_span(GtkGridLayoutChild* child);
	[LinkName("gtk_grid_layout_child_get_row")]
	public static extern c_int grid_layout_child_get_row(GtkGridLayoutChild* child);
	[LinkName("gtk_grid_layout_child_get_row_span")]
	public static extern c_int grid_layout_child_get_row_span(GtkGridLayoutChild* child);
	[LinkName("gtk_grid_layout_child_set_column")]
	public static extern void grid_layout_child_set_column(GtkGridLayoutChild* child, c_int column);
	[LinkName("gtk_grid_layout_child_set_column_span")]
	public static extern void grid_layout_child_set_column_span(GtkGridLayoutChild* child, c_int span);
	[LinkName("gtk_grid_layout_child_set_row")]
	public static extern void grid_layout_child_set_row(GtkGridLayoutChild* child, c_int row);
	[LinkName("gtk_grid_layout_child_set_row_span")]
	public static extern void grid_layout_child_set_row_span(GtkGridLayoutChild* child, c_int span);
	[CRepr]
	public struct GtkGridLayoutChildClass
	{
		GtkLayoutChildClass parent_class;
	}
	[CRepr]
	public struct GtkGridLayoutClass
	{
		GtkLayoutManagerClass parent_class;
	}
	[CRepr]
	public struct GtkGridView;
	[LinkName("gtk_grid_view_new")]
	public static extern GtkWidget* grid_view_new(GtkSelectionModel* model, GtkListItemFactory* factory);
	[LinkName("gtk_grid_view_get_enable_rubberband")]
	public static extern c_int grid_view_get_enable_rubberband(GtkGridView* self);
	[LinkName("gtk_grid_view_get_factory")]
	public static extern GtkListItemFactory* grid_view_get_factory(GtkGridView* self);
	[LinkName("gtk_grid_view_get_max_columns")]
	public static extern c_uint grid_view_get_max_columns(GtkGridView* self);
	[LinkName("gtk_grid_view_get_min_columns")]
	public static extern c_uint grid_view_get_min_columns(GtkGridView* self);
	[LinkName("gtk_grid_view_get_model")]
	public static extern GtkSelectionModel* grid_view_get_model(GtkGridView* self);
	[LinkName("gtk_grid_view_get_single_click_activate")]
	public static extern c_int grid_view_get_single_click_activate(GtkGridView* self);
	[LinkName("gtk_grid_view_get_tab_behavior")]
	public static extern GtkListTabBehavior grid_view_get_tab_behavior(GtkGridView* self);
	[LinkName("gtk_grid_view_set_enable_rubberband")]
	public static extern void grid_view_set_enable_rubberband(GtkGridView* self, c_int enable_rubberband);
	[LinkName("gtk_grid_view_set_factory")]
	public static extern void grid_view_set_factory(GtkGridView* self, GtkListItemFactory* factory);
	[LinkName("gtk_grid_view_set_max_columns")]
	public static extern void grid_view_set_max_columns(GtkGridView* self, c_uint max_columns);
	[LinkName("gtk_grid_view_set_min_columns")]
	public static extern void grid_view_set_min_columns(GtkGridView* self, c_uint min_columns);
	[LinkName("gtk_grid_view_set_model")]
	public static extern void grid_view_set_model(GtkGridView* self, GtkSelectionModel* model);
	[LinkName("gtk_grid_view_set_single_click_activate")]
	public static extern void grid_view_set_single_click_activate(GtkGridView* self, c_int single_click_activate);
	[LinkName("gtk_grid_view_set_tab_behavior")]
	public static extern void grid_view_set_tab_behavior(GtkGridView* self, GtkListTabBehavior tab_behavior);
	[CRepr]
	public struct GtkGridViewClass
	{
	}
	[CRepr]
	public struct GtkHeaderBar;
	[LinkName("gtk_header_bar_new")]
	public static extern GtkWidget* header_bar_new();
	[LinkName("gtk_header_bar_get_decoration_layout")]
	public static extern  c_char* header_bar_get_decoration_layout(GtkHeaderBar* bar);
	[LinkName("gtk_header_bar_get_show_title_buttons")]
	public static extern c_int header_bar_get_show_title_buttons(GtkHeaderBar* bar);
	[LinkName("gtk_header_bar_get_title_widget")]
	public static extern GtkWidget* header_bar_get_title_widget(GtkHeaderBar* bar);
	[LinkName("gtk_header_bar_pack_end")]
	public static extern void header_bar_pack_end(GtkHeaderBar* bar, GtkWidget* child);
	[LinkName("gtk_header_bar_pack_start")]
	public static extern void header_bar_pack_start(GtkHeaderBar* bar, GtkWidget* child);
	[LinkName("gtk_header_bar_remove")]
	public static extern void header_bar_remove(GtkHeaderBar* bar, GtkWidget* child);
	[LinkName("gtk_header_bar_set_decoration_layout")]
	public static extern void header_bar_set_decoration_layout(GtkHeaderBar* bar,  c_char* layout);
	[LinkName("gtk_header_bar_set_show_title_buttons")]
	public static extern void header_bar_set_show_title_buttons(GtkHeaderBar* bar, c_int setting);
	[LinkName("gtk_header_bar_set_title_widget")]
	public static extern void header_bar_set_title_widget(GtkHeaderBar* bar, GtkWidget* title_widget);
	[CRepr]
	public struct GtkIMContext;
	[LinkName("gtk_im_context_delete_surrounding")]
	public static extern c_int im_context_delete_surrounding(GtkIMContext* context, c_int offset, c_int n_chars);
	[LinkName("gtk_im_context_filter_key")]
	public static extern c_int im_context_filter_key(GtkIMContext* context, c_int press, GdkSurface* surface, GdkDevice* device, c_uint time, c_uint keycode, GdkModifierType state, c_int group);
	[LinkName("gtk_im_context_filter_keypress")]
	public static extern c_int im_context_filter_keypress(GtkIMContext* context, GdkEvent* event);
	[LinkName("gtk_im_context_focus_in")]
	public static extern void im_context_focus_in(GtkIMContext* context);
	[LinkName("gtk_im_context_focus_out")]
	public static extern void im_context_focus_out(GtkIMContext* context);
	[LinkName("gtk_im_context_get_preedit_string")]
	public static extern void im_context_get_preedit_string(GtkIMContext* context, c_char** str, PangoAttrList** attrs, c_int* cursor_pos);
	[LinkName("gtk_im_context_get_surrounding")]
	public static extern c_int im_context_get_surrounding(GtkIMContext* context, c_char** text, c_int* cursor_index);
	[LinkName("gtk_im_context_get_surrounding_with_selection")]
	public static extern c_int im_context_get_surrounding_with_selection(GtkIMContext* context, c_char** text, c_int* cursor_index, c_int* anchor_index);
	[LinkName("gtk_im_context_reset")]
	public static extern void im_context_reset(GtkIMContext* context);
	[LinkName("gtk_im_context_set_client_widget")]
	public static extern void im_context_set_client_widget(GtkIMContext* context, GtkWidget* widget);
	[LinkName("gtk_im_context_set_cursor_location")]
	public static extern void im_context_set_cursor_location(GtkIMContext* context,  GdkRectangle* area);
	[LinkName("gtk_im_context_set_surrounding")]
	public static extern void im_context_set_surrounding(GtkIMContext* context,  c_char* text, c_int len, c_int cursor_index);
	[LinkName("gtk_im_context_set_surrounding_with_selection")]
	public static extern void im_context_set_surrounding_with_selection(GtkIMContext* context,  c_char* text, c_int len, c_int cursor_index, c_int anchor_index);
	[LinkName("gtk_im_context_set_use_preedit")]
	public static extern void im_context_set_use_preedit(GtkIMContext* context, c_int use_preedit);
	[CRepr]
	public struct GtkIMContextClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkIMContextSimple;
	[LinkName("gtk_im_context_simple_new")]
	public static extern GtkIMContext* im_context_simple_new();
	[LinkName("gtk_im_context_simple_add_compose_file")]
	public static extern void im_context_simple_add_compose_file(GtkIMContextSimple* context_simple,  c_char* compose_file);
	[LinkName("gtk_im_context_simple_add_table")]
	public static extern void im_context_simple_add_table(GtkIMContextSimple* context_simple, c_int max_seq_len, c_int n_seqs);
	[CRepr]
	public struct GtkIMContextSimpleClass
	{
		GtkIMContextClass parent_class;
	}
	[CRepr]
	public struct GtkIMContextSimplePrivate
	{
	}
	[CRepr]
	public struct GtkIMMulticontext;
	[LinkName("gtk_im_multicontext_new")]
	public static extern GtkIMContext* im_multicontext_new();
	[LinkName("gtk_im_multicontext_get_context_id")]
	public static extern  c_char* im_multicontext_get_context_id(GtkIMMulticontext* context);
	[LinkName("gtk_im_multicontext_set_context_id")]
	public static extern void im_multicontext_set_context_id(GtkIMMulticontext* context,  c_char* context_id);
	[CRepr]
	public struct GtkIMMulticontextClass
	{
		GtkIMContextClass parent_class;
	}
	[CRepr]
	public struct GtkIMMulticontextPrivate
	{
	}
	[CRepr]
	public struct GtkIconLookupFlags
	{
		public const int GTK_ICON_LOOKUP_FORCE_REGULAR = 1;
		public const int GTK_ICON_LOOKUP_FORCE_SYMBOLIC = 2;
		public const int GTK_ICON_LOOKUP_PRELOAD = 4;
	}
	[CRepr]
	public struct GtkIconPaintable;
	[LinkName("gtk_icon_paintable_new_for_file")]
	public static extern GtkIconPaintable* icon_paintable_new_for_file(GFile* file, c_int size, c_int scale);
	[LinkName("gtk_icon_paintable_get_file")]
	public static extern GFile* icon_paintable_get_file(GtkIconPaintable* self);
	[LinkName("gtk_icon_paintable_get_icon_name")]
	public static extern  c_char* icon_paintable_get_icon_name(GtkIconPaintable* self);
	[LinkName("gtk_icon_paintable_is_symbolic")]
	public static extern c_int icon_paintable_is_symbolic(GtkIconPaintable* self);
	public enum GtkIconSize : c_int
	{
		GTK_ICON_SIZE_INHERIT,
		GTK_ICON_SIZE_NORMAL,
		GTK_ICON_SIZE_LARGE
	}
	[CRepr]
	public struct GtkIconTheme;
	[LinkName("gtk_icon_theme_new")]
	public static extern GtkIconTheme* icon_theme_new();
	[LinkName("gtk_icon_theme_add_resource_path")]
	public static extern void icon_theme_add_resource_path(GtkIconTheme* self,  c_char* path);
	[LinkName("gtk_icon_theme_add_search_path")]
	public static extern void icon_theme_add_search_path(GtkIconTheme* self,  c_char* path);
	[LinkName("gtk_icon_theme_get_display")]
	public static extern GdkDisplay* icon_theme_get_display(GtkIconTheme* self);
	[LinkName("gtk_icon_theme_get_icon_names")]
	public static extern c_char** icon_theme_get_icon_names(GtkIconTheme* self);
	[LinkName("gtk_icon_theme_get_icon_sizes")]
	public static extern c_int* icon_theme_get_icon_sizes(GtkIconTheme* self,  c_char* icon_name);
	[LinkName("gtk_icon_theme_get_resource_path")]
	public static extern c_char** icon_theme_get_resource_path(GtkIconTheme* self);
	[LinkName("gtk_icon_theme_get_search_path")]
	public static extern c_char** icon_theme_get_search_path(GtkIconTheme* self);
	[LinkName("gtk_icon_theme_get_theme_name")]
	public static extern c_char* icon_theme_get_theme_name(GtkIconTheme* self);
	[LinkName("gtk_icon_theme_has_gicon")]
	public static extern c_int icon_theme_has_gicon(GtkIconTheme* self, GIcon* gicon);
	[LinkName("gtk_icon_theme_has_icon")]
	public static extern c_int icon_theme_has_icon(GtkIconTheme* self,  c_char* icon_name);
	[LinkName("gtk_icon_theme_lookup_by_gicon")]
	public static extern GtkIconPaintable* icon_theme_lookup_by_gicon(GtkIconTheme* self, GIcon* icon, c_int size, c_int scale, GtkTextDirection direction, GtkIconLookupFlags flags);
	[LinkName("gtk_icon_theme_lookup_icon")]
	public static extern GtkIconPaintable* icon_theme_lookup_icon(GtkIconTheme* self,  c_char* icon_name, c_int size, c_int scale, GtkTextDirection direction, GtkIconLookupFlags flags);
	[LinkName("gtk_icon_theme_set_resource_path")]
	public static extern void icon_theme_set_resource_path(GtkIconTheme* self);
	[LinkName("gtk_icon_theme_set_search_path")]
	public static extern void icon_theme_set_search_path(GtkIconTheme* self);
	[LinkName("gtk_icon_theme_set_theme_name")]
	public static extern void icon_theme_set_theme_name(GtkIconTheme* self,  c_char* theme_name);
	public enum GtkIconThemeError : c_int
	{
		GTK_ICON_THEME_NOT_FOUND,
		GTK_ICON_THEME_FAILED
	}
	[CRepr]
	public struct GtkIconView;
	[LinkName("gtk_icon_view_new")]
	public static extern GtkWidget* icon_view_new();
	[LinkName("gtk_icon_view_new_with_area")]
	public static extern GtkWidget* icon_view_new_with_area(GtkCellArea* area);
	[LinkName("gtk_icon_view_new_with_model")]
	public static extern GtkWidget* icon_view_new_with_model(GtkTreeModel* model);
	[LinkName("gtk_icon_view_create_drag_icon")]
	public static extern GdkPaintable* icon_view_create_drag_icon(GtkIconView* icon_view, GtkTreePath* path);
	[LinkName("gtk_icon_view_enable_model_drag_dest")]
	public static extern void icon_view_enable_model_drag_dest(GtkIconView* icon_view, GdkContentFormats* formats, GdkDragAction actions);
	[LinkName("gtk_icon_view_enable_model_drag_source")]
	public static extern void icon_view_enable_model_drag_source(GtkIconView* icon_view, GdkModifierType start_button_mask, GdkContentFormats* formats, GdkDragAction actions);
	[LinkName("gtk_icon_view_get_activate_on_single_click")]
	public static extern c_int icon_view_get_activate_on_single_click(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_cell_rect")]
	public static extern c_int icon_view_get_cell_rect(GtkIconView* icon_view, GtkTreePath* path, GtkCellRenderer* cell, GdkRectangle* rect);
	[LinkName("gtk_icon_view_get_column_spacing")]
	public static extern c_int icon_view_get_column_spacing(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_columns")]
	public static extern c_int icon_view_get_columns(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_cursor")]
	public static extern c_int icon_view_get_cursor(GtkIconView* icon_view, GtkTreePath** path, GtkCellRenderer** cell);
	[LinkName("gtk_icon_view_get_dest_item_at_pos")]
	public static extern c_int icon_view_get_dest_item_at_pos(GtkIconView* icon_view, c_int drag_x, c_int drag_y, GtkTreePath** path, GtkIconViewDropPosition* pos);
	[LinkName("gtk_icon_view_get_drag_dest_item")]
	public static extern void icon_view_get_drag_dest_item(GtkIconView* icon_view, GtkTreePath** path, GtkIconViewDropPosition* pos);
	[LinkName("gtk_icon_view_get_item_at_pos")]
	public static extern c_int icon_view_get_item_at_pos(GtkIconView* icon_view, c_int x, c_int y, GtkTreePath** path, GtkCellRenderer** cell);
	[LinkName("gtk_icon_view_get_item_column")]
	public static extern c_int icon_view_get_item_column(GtkIconView* icon_view, GtkTreePath* path);
	[LinkName("gtk_icon_view_get_item_orientation")]
	public static extern GtkOrientation icon_view_get_item_orientation(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_item_padding")]
	public static extern c_int icon_view_get_item_padding(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_item_row")]
	public static extern c_int icon_view_get_item_row(GtkIconView* icon_view, GtkTreePath* path);
	[LinkName("gtk_icon_view_get_item_width")]
	public static extern c_int icon_view_get_item_width(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_margin")]
	public static extern c_int icon_view_get_margin(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_markup_column")]
	public static extern c_int icon_view_get_markup_column(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_model")]
	public static extern GtkTreeModel* icon_view_get_model(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_path_at_pos")]
	public static extern GtkTreePath* icon_view_get_path_at_pos(GtkIconView* icon_view, c_int x, c_int y);
	[LinkName("gtk_icon_view_get_pixbuf_column")]
	public static extern c_int icon_view_get_pixbuf_column(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_reorderable")]
	public static extern c_int icon_view_get_reorderable(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_row_spacing")]
	public static extern c_int icon_view_get_row_spacing(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_selected_items")]
	public static extern GList* icon_view_get_selected_items(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_selection_mode")]
	public static extern GtkSelectionMode icon_view_get_selection_mode(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_spacing")]
	public static extern c_int icon_view_get_spacing(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_text_column")]
	public static extern c_int icon_view_get_text_column(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_tooltip_column")]
	public static extern c_int icon_view_get_tooltip_column(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_get_tooltip_context")]
	public static extern c_int icon_view_get_tooltip_context(GtkIconView* icon_view, c_int x, c_int y, c_int keyboard_tip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter);
	[LinkName("gtk_icon_view_get_visible_range")]
	public static extern c_int icon_view_get_visible_range(GtkIconView* icon_view, GtkTreePath** start_path, GtkTreePath** end_path);
	[LinkName("gtk_icon_view_item_activated")]
	public static extern void icon_view_item_activated(GtkIconView* icon_view, GtkTreePath* path);
	[LinkName("gtk_icon_view_path_is_selected")]
	public static extern c_int icon_view_path_is_selected(GtkIconView* icon_view, GtkTreePath* path);
	[LinkName("gtk_icon_view_scroll_to_path")]
	public static extern void icon_view_scroll_to_path(GtkIconView* icon_view, GtkTreePath* path, c_int use_align, float row_align, float col_align);
	[LinkName("gtk_icon_view_select_all")]
	public static extern void icon_view_select_all(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_select_path")]
	public static extern void icon_view_select_path(GtkIconView* icon_view, GtkTreePath* path);
	[LinkName("gtk_icon_view_selected_foreach")]
	public static extern void icon_view_selected_foreach(GtkIconView* icon_view, GtkIconViewForeachFunc func, void* data);
	[LinkName("gtk_icon_view_set_activate_on_single_click")]
	public static extern void icon_view_set_activate_on_single_click(GtkIconView* icon_view, c_int single);
	[LinkName("gtk_icon_view_set_column_spacing")]
	public static extern void icon_view_set_column_spacing(GtkIconView* icon_view, c_int column_spacing);
	[LinkName("gtk_icon_view_set_columns")]
	public static extern void icon_view_set_columns(GtkIconView* icon_view, c_int columns);
	[LinkName("gtk_icon_view_set_cursor")]
	public static extern void icon_view_set_cursor(GtkIconView* icon_view, GtkTreePath* path, GtkCellRenderer* cell, c_int start_editing);
	[LinkName("gtk_icon_view_set_drag_dest_item")]
	public static extern void icon_view_set_drag_dest_item(GtkIconView* icon_view, GtkTreePath* path, GtkIconViewDropPosition pos);
	[LinkName("gtk_icon_view_set_item_orientation")]
	public static extern void icon_view_set_item_orientation(GtkIconView* icon_view, GtkOrientation orientation);
	[LinkName("gtk_icon_view_set_item_padding")]
	public static extern void icon_view_set_item_padding(GtkIconView* icon_view, c_int item_padding);
	[LinkName("gtk_icon_view_set_item_width")]
	public static extern void icon_view_set_item_width(GtkIconView* icon_view, c_int item_width);
	[LinkName("gtk_icon_view_set_margin")]
	public static extern void icon_view_set_margin(GtkIconView* icon_view, c_int margin);
	[LinkName("gtk_icon_view_set_markup_column")]
	public static extern void icon_view_set_markup_column(GtkIconView* icon_view, c_int column);
	[LinkName("gtk_icon_view_set_model")]
	public static extern void icon_view_set_model(GtkIconView* icon_view, GtkTreeModel* model);
	[LinkName("gtk_icon_view_set_pixbuf_column")]
	public static extern void icon_view_set_pixbuf_column(GtkIconView* icon_view, c_int column);
	[LinkName("gtk_icon_view_set_reorderable")]
	public static extern void icon_view_set_reorderable(GtkIconView* icon_view, c_int reorderable);
	[LinkName("gtk_icon_view_set_row_spacing")]
	public static extern void icon_view_set_row_spacing(GtkIconView* icon_view, c_int row_spacing);
	[LinkName("gtk_icon_view_set_selection_mode")]
	public static extern void icon_view_set_selection_mode(GtkIconView* icon_view, GtkSelectionMode mode);
	[LinkName("gtk_icon_view_set_spacing")]
	public static extern void icon_view_set_spacing(GtkIconView* icon_view, c_int spacing);
	[LinkName("gtk_icon_view_set_text_column")]
	public static extern void icon_view_set_text_column(GtkIconView* icon_view, c_int column);
	[LinkName("gtk_icon_view_set_tooltip_cell")]
	public static extern void icon_view_set_tooltip_cell(GtkIconView* icon_view, GtkTooltip* tooltip, GtkTreePath* path, GtkCellRenderer* cell);
	[LinkName("gtk_icon_view_set_tooltip_column")]
	public static extern void icon_view_set_tooltip_column(GtkIconView* icon_view, c_int column);
	[LinkName("gtk_icon_view_set_tooltip_item")]
	public static extern void icon_view_set_tooltip_item(GtkIconView* icon_view, GtkTooltip* tooltip, GtkTreePath* path);
	[LinkName("gtk_icon_view_unselect_all")]
	public static extern void icon_view_unselect_all(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_unselect_path")]
	public static extern void icon_view_unselect_path(GtkIconView* icon_view, GtkTreePath* path);
	[LinkName("gtk_icon_view_unset_model_drag_dest")]
	public static extern void icon_view_unset_model_drag_dest(GtkIconView* icon_view);
	[LinkName("gtk_icon_view_unset_model_drag_source")]
	public static extern void icon_view_unset_model_drag_source(GtkIconView* icon_view);
	public enum GtkIconViewDropPosition : c_int
	{
		GTK_ICON_VIEW_NO_DROP,
		GTK_ICON_VIEW_DROP_INTO,
		GTK_ICON_VIEW_DROP_LEFT,
		GTK_ICON_VIEW_DROP_RIGHT,
		GTK_ICON_VIEW_DROP_ABOVE,
		GTK_ICON_VIEW_DROP_BELOW
	}
	public function void GtkIconViewForeachFunc(GtkIconView* icon_view, GtkTreePath* path, void* data);
	[CRepr]
	public struct GtkImage;
	[LinkName("gtk_image_new")]
	public static extern GtkWidget* image_new();
	[LinkName("gtk_image_new_from_file")]
	public static extern GtkWidget* image_new_from_file( c_char* filename);
	[LinkName("gtk_image_new_from_gicon")]
	public static extern GtkWidget* image_new_from_gicon(GIcon* icon);
	[LinkName("gtk_image_new_from_icon_name")]
	public static extern GtkWidget* image_new_from_icon_name( c_char* icon_name);
	[LinkName("gtk_image_new_from_paintable")]
	public static extern GtkWidget* image_new_from_paintable(GdkPaintable* paintable);
	[LinkName("gtk_image_new_from_pixbuf")]
	public static extern GtkWidget* image_new_from_pixbuf(GdkPixbuf* pixbuf);
	[LinkName("gtk_image_new_from_resource")]
	public static extern GtkWidget* image_new_from_resource( c_char* resource_path);
	[LinkName("gtk_image_clear")]
	public static extern void image_clear(GtkImage* image);
	[LinkName("gtk_image_get_gicon")]
	public static extern GIcon* image_get_gicon(GtkImage* image);
	[LinkName("gtk_image_get_icon_name")]
	public static extern  c_char* image_get_icon_name(GtkImage* image);
	[LinkName("gtk_image_get_icon_size")]
	public static extern GtkIconSize image_get_icon_size(GtkImage* image);
	[LinkName("gtk_image_get_paintable")]
	public static extern GdkPaintable* image_get_paintable(GtkImage* image);
	[LinkName("gtk_image_get_pixel_size")]
	public static extern c_int image_get_pixel_size(GtkImage* image);
	[LinkName("gtk_image_get_storage_type")]
	public static extern GtkImageType image_get_storage_type(GtkImage* image);
	[LinkName("gtk_image_set_from_file")]
	public static extern void image_set_from_file(GtkImage* image,  c_char* filename);
	[LinkName("gtk_image_set_from_gicon")]
	public static extern void image_set_from_gicon(GtkImage* image, GIcon* icon);
	[LinkName("gtk_image_set_from_icon_name")]
	public static extern void image_set_from_icon_name(GtkImage* image,  c_char* icon_name);
	[LinkName("gtk_image_set_from_paintable")]
	public static extern void image_set_from_paintable(GtkImage* image, GdkPaintable* paintable);
	[LinkName("gtk_image_set_from_pixbuf")]
	public static extern void image_set_from_pixbuf(GtkImage* image, GdkPixbuf* pixbuf);
	[LinkName("gtk_image_set_from_resource")]
	public static extern void image_set_from_resource(GtkImage* image,  c_char* resource_path);
	[LinkName("gtk_image_set_icon_size")]
	public static extern void image_set_icon_size(GtkImage* image, GtkIconSize icon_size);
	[LinkName("gtk_image_set_pixel_size")]
	public static extern void image_set_pixel_size(GtkImage* image, c_int pixel_size);
	public enum GtkImageType : c_int
	{
		GTK_IMAGE_EMPTY,
		GTK_IMAGE_ICON_NAME,
		GTK_IMAGE_GICON,
		GTK_IMAGE_PAINTABLE
	}
	[CRepr]
	public struct GtkInfoBar;
	[LinkName("gtk_info_bar_new")]
	public static extern GtkWidget* info_bar_new();
	[LinkName("gtk_info_bar_new_with_buttons")]
	public static extern GtkWidget* info_bar_new_with_buttons( c_char* first_button_text);
	[LinkName("gtk_info_bar_add_action_widget")]
	public static extern void info_bar_add_action_widget(GtkInfoBar* info_bar, GtkWidget* child, c_int response_id);
	[LinkName("gtk_info_bar_add_button")]
	public static extern GtkWidget* info_bar_add_button(GtkInfoBar* info_bar,  c_char* button_text, c_int response_id);
	[LinkName("gtk_info_bar_add_buttons")]
	public static extern void info_bar_add_buttons(GtkInfoBar* info_bar,  c_char* first_button_text);
	[LinkName("gtk_info_bar_add_child")]
	public static extern void info_bar_add_child(GtkInfoBar* info_bar, GtkWidget* widget);
	[LinkName("gtk_info_bar_get_message_type")]
	public static extern GtkMessageType info_bar_get_message_type(GtkInfoBar* info_bar);
	[LinkName("gtk_info_bar_get_revealed")]
	public static extern c_int info_bar_get_revealed(GtkInfoBar* info_bar);
	[LinkName("gtk_info_bar_get_show_close_button")]
	public static extern c_int info_bar_get_show_close_button(GtkInfoBar* info_bar);
	[LinkName("gtk_info_bar_remove_action_widget")]
	public static extern void info_bar_remove_action_widget(GtkInfoBar* info_bar, GtkWidget* widget);
	[LinkName("gtk_info_bar_remove_child")]
	public static extern void info_bar_remove_child(GtkInfoBar* info_bar, GtkWidget* widget);
	[LinkName("gtk_info_bar_response")]
	public static extern void info_bar_response(GtkInfoBar* info_bar, c_int response_id);
	[LinkName("gtk_info_bar_set_default_response")]
	public static extern void info_bar_set_default_response(GtkInfoBar* info_bar, c_int response_id);
	[LinkName("gtk_info_bar_set_message_type")]
	public static extern void info_bar_set_message_type(GtkInfoBar* info_bar, GtkMessageType message_type);
	[LinkName("gtk_info_bar_set_response_sensitive")]
	public static extern void info_bar_set_response_sensitive(GtkInfoBar* info_bar, c_int response_id, c_int setting);
	[LinkName("gtk_info_bar_set_revealed")]
	public static extern void info_bar_set_revealed(GtkInfoBar* info_bar, c_int revealed);
	[LinkName("gtk_info_bar_set_show_close_button")]
	public static extern void info_bar_set_show_close_button(GtkInfoBar* info_bar, c_int setting);
	[CRepr]
	public struct GtkInputHints
	{
		public const int GTK_INPUT_HINT_NONE = 0;
		public const int GTK_INPUT_HINT_SPELLCHECK = 1;
		public const int GTK_INPUT_HINT_NO_SPELLCHECK = 2;
		public const int GTK_INPUT_HINT_WORD_COMPLETION = 4;
		public const int GTK_INPUT_HINT_LOWERCASE = 8;
		public const int GTK_INPUT_HINT_UPPERCASE_CHARS = 16;
		public const int GTK_INPUT_HINT_UPPERCASE_WORDS = 32;
		public const int GTK_INPUT_HINT_UPPERCASE_SENTENCES = 64;
		public const int GTK_INPUT_HINT_INHIBIT_OSK = 128;
		public const int GTK_INPUT_HINT_VERTICAL_WRITING = 256;
		public const int GTK_INPUT_HINT_EMOJI = 512;
		public const int GTK_INPUT_HINT_NO_EMOJI = 1024;
		public const int GTK_INPUT_HINT_PRIVATE = 2048;
	}
	public enum GtkInputPurpose : c_int
	{
		GTK_INPUT_PURPOSE_FREE_FORM,
		GTK_INPUT_PURPOSE_ALPHA,
		GTK_INPUT_PURPOSE_DIGITS,
		GTK_INPUT_PURPOSE_NUMBER,
		GTK_INPUT_PURPOSE_PHONE,
		GTK_INPUT_PURPOSE_URL,
		GTK_INPUT_PURPOSE_EMAIL,
		GTK_INPUT_PURPOSE_NAME,
		GTK_INPUT_PURPOSE_PASSWORD,
		GTK_INPUT_PURPOSE_PIN,
		GTK_INPUT_PURPOSE_TERMINAL
	}
	[CRepr]
	public struct GtkInscription;
	[LinkName("gtk_inscription_new")]
	public static extern GtkWidget* inscription_new( c_char* text);
	[LinkName("gtk_inscription_get_attributes")]
	public static extern PangoAttrList* inscription_get_attributes(GtkInscription* self);
	[LinkName("gtk_inscription_get_min_chars")]
	public static extern c_uint inscription_get_min_chars(GtkInscription* self);
	[LinkName("gtk_inscription_get_min_lines")]
	public static extern c_uint inscription_get_min_lines(GtkInscription* self);
	[LinkName("gtk_inscription_get_nat_chars")]
	public static extern c_uint inscription_get_nat_chars(GtkInscription* self);
	[LinkName("gtk_inscription_get_nat_lines")]
	public static extern c_uint inscription_get_nat_lines(GtkInscription* self);
	[LinkName("gtk_inscription_get_text")]
	public static extern  c_char* inscription_get_text(GtkInscription* self);
	[LinkName("gtk_inscription_get_text_overflow")]
	public static extern GtkInscriptionOverflow inscription_get_text_overflow(GtkInscription* self);
	[LinkName("gtk_inscription_get_wrap_mode")]
	public static extern PangoWrapMode inscription_get_wrap_mode(GtkInscription* self);
	[LinkName("gtk_inscription_get_xalign")]
	public static extern float inscription_get_xalign(GtkInscription* self);
	[LinkName("gtk_inscription_get_yalign")]
	public static extern float inscription_get_yalign(GtkInscription* self);
	[LinkName("gtk_inscription_set_attributes")]
	public static extern void inscription_set_attributes(GtkInscription* self, PangoAttrList* attrs);
	[LinkName("gtk_inscription_set_markup")]
	public static extern void inscription_set_markup(GtkInscription* self,  c_char* markup);
	[LinkName("gtk_inscription_set_min_chars")]
	public static extern void inscription_set_min_chars(GtkInscription* self, c_uint min_chars);
	[LinkName("gtk_inscription_set_min_lines")]
	public static extern void inscription_set_min_lines(GtkInscription* self, c_uint min_lines);
	[LinkName("gtk_inscription_set_nat_chars")]
	public static extern void inscription_set_nat_chars(GtkInscription* self, c_uint nat_chars);
	[LinkName("gtk_inscription_set_nat_lines")]
	public static extern void inscription_set_nat_lines(GtkInscription* self, c_uint nat_lines);
	[LinkName("gtk_inscription_set_text")]
	public static extern void inscription_set_text(GtkInscription* self,  c_char* text);
	[LinkName("gtk_inscription_set_text_overflow")]
	public static extern void inscription_set_text_overflow(GtkInscription* self, GtkInscriptionOverflow overflow);
	[LinkName("gtk_inscription_set_wrap_mode")]
	public static extern void inscription_set_wrap_mode(GtkInscription* self, PangoWrapMode wrap_mode);
	[LinkName("gtk_inscription_set_xalign")]
	public static extern void inscription_set_xalign(GtkInscription* self, float xalign);
	[LinkName("gtk_inscription_set_yalign")]
	public static extern void inscription_set_yalign(GtkInscription* self, float yalign);
	[CRepr]
	public struct GtkInscriptionClass
	{
		GtkWidgetClass parent_class;
	}
	public enum GtkInscriptionOverflow : c_int
	{
		GTK_INSCRIPTION_OVERFLOW_CLIP,
		GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_START,
		GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_MIDDLE,
		GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_END
	}
	public enum GtkJustification : c_int
	{
		GTK_JUSTIFY_LEFT,
		GTK_JUSTIFY_RIGHT,
		GTK_JUSTIFY_CENTER,
		GTK_JUSTIFY_FILL
	}
	[CRepr]
	public struct GtkKeyvalTrigger;
	[LinkName("gtk_keyval_trigger_new")]
	public static extern GtkShortcutTrigger* keyval_trigger_new(c_uint keyval, GdkModifierType modifiers);
	[LinkName("gtk_keyval_trigger_get_keyval")]
	public static extern c_uint keyval_trigger_get_keyval(GtkKeyvalTrigger* self);
	[LinkName("gtk_keyval_trigger_get_modifiers")]
	public static extern GdkModifierType keyval_trigger_get_modifiers(GtkKeyvalTrigger* self);
	[CRepr]
	public struct GtkKeyvalTriggerClass
	{
	}
	[CRepr]
	public struct GtkLabel;
	[LinkName("gtk_label_new")]
	public static extern GtkWidget* label_new( c_char* str);
	[LinkName("gtk_label_new_with_mnemonic")]
	public static extern GtkWidget* label_new_with_mnemonic( c_char* str);
	[LinkName("gtk_label_get_attributes")]
	public static extern PangoAttrList* label_get_attributes(GtkLabel* self);
	[LinkName("gtk_label_get_current_uri")]
	public static extern  c_char* label_get_current_uri(GtkLabel* self);
	[LinkName("gtk_label_get_ellipsize")]
	public static extern PangoEllipsizeMode label_get_ellipsize(GtkLabel* self);
	[LinkName("gtk_label_get_extra_menu")]
	public static extern GMenuModel* label_get_extra_menu(GtkLabel* self);
	[LinkName("gtk_label_get_justify")]
	public static extern GtkJustification label_get_justify(GtkLabel* self);
	[LinkName("gtk_label_get_label")]
	public static extern  c_char* label_get_label(GtkLabel* self);
	[LinkName("gtk_label_get_layout")]
	public static extern PangoLayout* label_get_layout(GtkLabel* self);
	[LinkName("gtk_label_get_layout_offsets")]
	public static extern void label_get_layout_offsets(GtkLabel* self, c_int* x, c_int* y);
	[LinkName("gtk_label_get_lines")]
	public static extern c_int label_get_lines(GtkLabel* self);
	[LinkName("gtk_label_get_max_width_chars")]
	public static extern c_int label_get_max_width_chars(GtkLabel* self);
	[LinkName("gtk_label_get_mnemonic_keyval")]
	public static extern c_uint label_get_mnemonic_keyval(GtkLabel* self);
	[LinkName("gtk_label_get_mnemonic_widget")]
	public static extern GtkWidget* label_get_mnemonic_widget(GtkLabel* self);
	[LinkName("gtk_label_get_natural_wrap_mode")]
	public static extern GtkNaturalWrapMode label_get_natural_wrap_mode(GtkLabel* self);
	[LinkName("gtk_label_get_selectable")]
	public static extern c_int label_get_selectable(GtkLabel* self);
	[LinkName("gtk_label_get_selection_bounds")]
	public static extern c_int label_get_selection_bounds(GtkLabel* self, c_int* start, c_int* end);
	[LinkName("gtk_label_get_single_line_mode")]
	public static extern c_int label_get_single_line_mode(GtkLabel* self);
	[LinkName("gtk_label_get_tabs")]
	public static extern PangoTabArray* label_get_tabs(GtkLabel* self);
	[LinkName("gtk_label_get_text")]
	public static extern  c_char* label_get_text(GtkLabel* self);
	[LinkName("gtk_label_get_use_markup")]
	public static extern c_int label_get_use_markup(GtkLabel* self);
	[LinkName("gtk_label_get_use_underline")]
	public static extern c_int label_get_use_underline(GtkLabel* self);
	[LinkName("gtk_label_get_width_chars")]
	public static extern c_int label_get_width_chars(GtkLabel* self);
	[LinkName("gtk_label_get_wrap")]
	public static extern c_int label_get_wrap(GtkLabel* self);
	[LinkName("gtk_label_get_wrap_mode")]
	public static extern PangoWrapMode label_get_wrap_mode(GtkLabel* self);
	[LinkName("gtk_label_get_xalign")]
	public static extern float label_get_xalign(GtkLabel* self);
	[LinkName("gtk_label_get_yalign")]
	public static extern float label_get_yalign(GtkLabel* self);
	[LinkName("gtk_label_select_region")]
	public static extern void label_select_region(GtkLabel* self, c_int start_offset, c_int end_offset);
	[LinkName("gtk_label_set_attributes")]
	public static extern void label_set_attributes(GtkLabel* self, PangoAttrList* attrs);
	[LinkName("gtk_label_set_ellipsize")]
	public static extern void label_set_ellipsize(GtkLabel* self, PangoEllipsizeMode mode);
	[LinkName("gtk_label_set_extra_menu")]
	public static extern void label_set_extra_menu(GtkLabel* self, GMenuModel* model);
	[LinkName("gtk_label_set_justify")]
	public static extern void label_set_justify(GtkLabel* self, GtkJustification jtype);
	[LinkName("gtk_label_set_label")]
	public static extern void label_set_label(GtkLabel* self,  c_char* str);
	[LinkName("gtk_label_set_lines")]
	public static extern void label_set_lines(GtkLabel* self, c_int lines);
	[LinkName("gtk_label_set_markup")]
	public static extern void label_set_markup(GtkLabel* self,  c_char* str);
	[LinkName("gtk_label_set_markup_with_mnemonic")]
	public static extern void label_set_markup_with_mnemonic(GtkLabel* self,  c_char* str);
	[LinkName("gtk_label_set_max_width_chars")]
	public static extern void label_set_max_width_chars(GtkLabel* self, c_int n_chars);
	[LinkName("gtk_label_set_mnemonic_widget")]
	public static extern void label_set_mnemonic_widget(GtkLabel* self, GtkWidget* widget);
	[LinkName("gtk_label_set_natural_wrap_mode")]
	public static extern void label_set_natural_wrap_mode(GtkLabel* self, GtkNaturalWrapMode wrap_mode);
	[LinkName("gtk_label_set_selectable")]
	public static extern void label_set_selectable(GtkLabel* self, c_int setting);
	[LinkName("gtk_label_set_single_line_mode")]
	public static extern void label_set_single_line_mode(GtkLabel* self, c_int single_line_mode);
	[LinkName("gtk_label_set_tabs")]
	public static extern void label_set_tabs(GtkLabel* self, PangoTabArray* tabs);
	[LinkName("gtk_label_set_text")]
	public static extern void label_set_text(GtkLabel* self,  c_char* str);
	[LinkName("gtk_label_set_text_with_mnemonic")]
	public static extern void label_set_text_with_mnemonic(GtkLabel* self,  c_char* str);
	[LinkName("gtk_label_set_use_markup")]
	public static extern void label_set_use_markup(GtkLabel* self, c_int setting);
	[LinkName("gtk_label_set_use_underline")]
	public static extern void label_set_use_underline(GtkLabel* self, c_int setting);
	[LinkName("gtk_label_set_width_chars")]
	public static extern void label_set_width_chars(GtkLabel* self, c_int n_chars);
	[LinkName("gtk_label_set_wrap")]
	public static extern void label_set_wrap(GtkLabel* self, c_int wrap);
	[LinkName("gtk_label_set_wrap_mode")]
	public static extern void label_set_wrap_mode(GtkLabel* self, PangoWrapMode wrap_mode);
	[LinkName("gtk_label_set_xalign")]
	public static extern void label_set_xalign(GtkLabel* self, float xalign);
	[LinkName("gtk_label_set_yalign")]
	public static extern void label_set_yalign(GtkLabel* self, float yalign);
	[CRepr]
	public struct GtkLayoutChild;
	[LinkName("gtk_layout_child_get_child_widget")]
	public static extern GtkWidget* layout_child_get_child_widget(GtkLayoutChild* layout_child);
	[LinkName("gtk_layout_child_get_layout_manager")]
	public static extern GtkLayoutManager* layout_child_get_layout_manager(GtkLayoutChild* layout_child);
	[CRepr]
	public struct GtkLayoutChildClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkLayoutManager;
	[LinkName("gtk_layout_manager_allocate")]
	public static extern void layout_manager_allocate(GtkLayoutManager* manager, GtkWidget* widget, c_int width, c_int height, c_int baseline);
	[LinkName("gtk_layout_manager_get_layout_child")]
	public static extern GtkLayoutChild* layout_manager_get_layout_child(GtkLayoutManager* manager, GtkWidget* child);
	[LinkName("gtk_layout_manager_get_request_mode")]
	public static extern GtkSizeRequestMode layout_manager_get_request_mode(GtkLayoutManager* manager);
	[LinkName("gtk_layout_manager_get_widget")]
	public static extern GtkWidget* layout_manager_get_widget(GtkLayoutManager* manager);
	[LinkName("gtk_layout_manager_layout_changed")]
	public static extern void layout_manager_layout_changed(GtkLayoutManager* manager);
	[LinkName("gtk_layout_manager_measure")]
	public static extern void layout_manager_measure(GtkLayoutManager* manager, GtkWidget* widget, GtkOrientation orientation, c_int for_size, c_int* minimum, c_int* natural, c_int* minimum_baseline, c_int* natural_baseline);
	[CRepr]
	public struct GtkLayoutManagerClass
	{
		GObjectClass parent_class;
		GType layout_child_type;
	}
	[CRepr]
	public struct GtkLevelBar;
	[LinkName("gtk_level_bar_new")]
	public static extern GtkWidget* level_bar_new();
	[LinkName("gtk_level_bar_new_for_interval")]
	public static extern GtkWidget* level_bar_new_for_interval(double min_value, double max_value);
	[LinkName("gtk_level_bar_add_offset_value")]
	public static extern void level_bar_add_offset_value(GtkLevelBar* self,  c_char* name, double value);
	[LinkName("gtk_level_bar_get_inverted")]
	public static extern c_int level_bar_get_inverted(GtkLevelBar* self);
	[LinkName("gtk_level_bar_get_max_value")]
	public static extern double level_bar_get_max_value(GtkLevelBar* self);
	[LinkName("gtk_level_bar_get_min_value")]
	public static extern double level_bar_get_min_value(GtkLevelBar* self);
	[LinkName("gtk_level_bar_get_mode")]
	public static extern GtkLevelBarMode level_bar_get_mode(GtkLevelBar* self);
	[LinkName("gtk_level_bar_get_offset_value")]
	public static extern c_int level_bar_get_offset_value(GtkLevelBar* self,  c_char* name, double* value);
	[LinkName("gtk_level_bar_get_value")]
	public static extern double level_bar_get_value(GtkLevelBar* self);
	[LinkName("gtk_level_bar_remove_offset_value")]
	public static extern void level_bar_remove_offset_value(GtkLevelBar* self,  c_char* name);
	[LinkName("gtk_level_bar_set_inverted")]
	public static extern void level_bar_set_inverted(GtkLevelBar* self, c_int inverted);
	[LinkName("gtk_level_bar_set_max_value")]
	public static extern void level_bar_set_max_value(GtkLevelBar* self, double value);
	[LinkName("gtk_level_bar_set_min_value")]
	public static extern void level_bar_set_min_value(GtkLevelBar* self, double value);
	[LinkName("gtk_level_bar_set_mode")]
	public static extern void level_bar_set_mode(GtkLevelBar* self, GtkLevelBarMode mode);
	[LinkName("gtk_level_bar_set_value")]
	public static extern void level_bar_set_value(GtkLevelBar* self, double value);
	public enum GtkLevelBarMode : c_int
	{
		GTK_LEVEL_BAR_MODE_CONTINUOUS,
		GTK_LEVEL_BAR_MODE_DISCRETE
	}
	public enum GtkLicense : c_int
	{
		GTK_LICENSE_UNKNOWN,
		GTK_LICENSE_CUSTOM,
		GTK_LICENSE_GPL_2_0,
		GTK_LICENSE_GPL_3_0,
		GTK_LICENSE_LGPL_2_1,
		GTK_LICENSE_LGPL_3_0,
		GTK_LICENSE_BSD,
		GTK_LICENSE_MIT_X11,
		GTK_LICENSE_ARTISTIC,
		GTK_LICENSE_GPL_2_0_ONLY,
		GTK_LICENSE_GPL_3_0_ONLY,
		GTK_LICENSE_LGPL_2_1_ONLY,
		GTK_LICENSE_LGPL_3_0_ONLY,
		GTK_LICENSE_AGPL_3_0,
		GTK_LICENSE_AGPL_3_0_ONLY,
		GTK_LICENSE_BSD_3,
		GTK_LICENSE_APACHE_2_0,
		GTK_LICENSE_MPL_2_0
	}
	[CRepr]
	public struct GtkLinkButton;
	[LinkName("gtk_link_button_new")]
	public static extern GtkWidget* link_button_new( c_char* uri);
	[LinkName("gtk_link_button_new_with_label")]
	public static extern GtkWidget* link_button_new_with_label( c_char* uri,  c_char* label);
	[LinkName("gtk_link_button_get_uri")]
	public static extern  c_char* link_button_get_uri(GtkLinkButton* link_button);
	[LinkName("gtk_link_button_get_visited")]
	public static extern c_int link_button_get_visited(GtkLinkButton* link_button);
	[LinkName("gtk_link_button_set_uri")]
	public static extern void link_button_set_uri(GtkLinkButton* link_button,  c_char* uri);
	[LinkName("gtk_link_button_set_visited")]
	public static extern void link_button_set_visited(GtkLinkButton* link_button, c_int visited);
	[CRepr]
	public struct GtkListBase;
	[CRepr]
	public struct GtkListBaseClass
	{
	}
	[CRepr]
	public struct GtkListBox;
	[LinkName("gtk_list_box_new")]
	public static extern GtkWidget* list_box_new();
	[LinkName("gtk_list_box_append")]
	public static extern void list_box_append(GtkListBox* box_, GtkWidget* child);
	[LinkName("gtk_list_box_bind_model")]
	public static extern void list_box_bind_model(GtkListBox* box_, GListModel* model, GtkListBoxCreateWidgetFunc create_widget_func, void* user_data, GDestroyNotify user_data_free_func);
	[LinkName("gtk_list_box_drag_highlight_row")]
	public static extern void list_box_drag_highlight_row(GtkListBox* box_, GtkListBoxRow* row);
	[LinkName("gtk_list_box_drag_unhighlight_row")]
	public static extern void list_box_drag_unhighlight_row(GtkListBox* box_);
	[LinkName("gtk_list_box_get_activate_on_single_click")]
	public static extern c_int list_box_get_activate_on_single_click(GtkListBox* box_);
	[LinkName("gtk_list_box_get_adjustment")]
	public static extern GtkAdjustment* list_box_get_adjustment(GtkListBox* box_);
	[LinkName("gtk_list_box_get_row_at_index")]
	public static extern GtkListBoxRow* list_box_get_row_at_index(GtkListBox* box_, c_int index_);
	[LinkName("gtk_list_box_get_row_at_y")]
	public static extern GtkListBoxRow* list_box_get_row_at_y(GtkListBox* box_, c_int y);
	[LinkName("gtk_list_box_get_selected_row")]
	public static extern GtkListBoxRow* list_box_get_selected_row(GtkListBox* box_);
	[LinkName("gtk_list_box_get_selected_rows")]
	public static extern GList* list_box_get_selected_rows(GtkListBox* box_);
	[LinkName("gtk_list_box_get_selection_mode")]
	public static extern GtkSelectionMode list_box_get_selection_mode(GtkListBox* box_);
	[LinkName("gtk_list_box_get_show_separators")]
	public static extern c_int list_box_get_show_separators(GtkListBox* box_);
	[LinkName("gtk_list_box_insert")]
	public static extern void list_box_insert(GtkListBox* box_, GtkWidget* child, c_int position);
	[LinkName("gtk_list_box_invalidate_filter")]
	public static extern void list_box_invalidate_filter(GtkListBox* box_);
	[LinkName("gtk_list_box_invalidate_headers")]
	public static extern void list_box_invalidate_headers(GtkListBox* box_);
	[LinkName("gtk_list_box_invalidate_sort")]
	public static extern void list_box_invalidate_sort(GtkListBox* box_);
	[LinkName("gtk_list_box_prepend")]
	public static extern void list_box_prepend(GtkListBox* box_, GtkWidget* child);
	[LinkName("gtk_list_box_remove")]
	public static extern void list_box_remove(GtkListBox* box_, GtkWidget* child);
	[LinkName("gtk_list_box_remove_all")]
	public static extern void list_box_remove_all(GtkListBox* box_);
	[LinkName("gtk_list_box_select_all")]
	public static extern void list_box_select_all(GtkListBox* box_);
	[LinkName("gtk_list_box_select_row")]
	public static extern void list_box_select_row(GtkListBox* box_, GtkListBoxRow* row);
	[LinkName("gtk_list_box_selected_foreach")]
	public static extern void list_box_selected_foreach(GtkListBox* box_, GtkListBoxForeachFunc func, void* data);
	[LinkName("gtk_list_box_set_activate_on_single_click")]
	public static extern void list_box_set_activate_on_single_click(GtkListBox* box_, c_int single);
	[LinkName("gtk_list_box_set_adjustment")]
	public static extern void list_box_set_adjustment(GtkListBox* box_, GtkAdjustment* adjustment);
	[LinkName("gtk_list_box_set_filter_func")]
	public static extern void list_box_set_filter_func(GtkListBox* box_, GtkListBoxFilterFunc filter_func, void* user_data, GDestroyNotify destroy);
	[LinkName("gtk_list_box_set_header_func")]
	public static extern void list_box_set_header_func(GtkListBox* box_, GtkListBoxUpdateHeaderFunc update_header, void* user_data, GDestroyNotify destroy);
	[LinkName("gtk_list_box_set_placeholder")]
	public static extern void list_box_set_placeholder(GtkListBox* box_, GtkWidget* placeholder);
	[LinkName("gtk_list_box_set_selection_mode")]
	public static extern void list_box_set_selection_mode(GtkListBox* box_, GtkSelectionMode mode);
	[LinkName("gtk_list_box_set_show_separators")]
	public static extern void list_box_set_show_separators(GtkListBox* box_, c_int show_separators);
	[LinkName("gtk_list_box_set_sort_func")]
	public static extern void list_box_set_sort_func(GtkListBox* box_, GtkListBoxSortFunc sort_func, void* user_data, GDestroyNotify destroy);
	[LinkName("gtk_list_box_unselect_all")]
	public static extern void list_box_unselect_all(GtkListBox* box_);
	[LinkName("gtk_list_box_unselect_row")]
	public static extern void list_box_unselect_row(GtkListBox* box_, GtkListBoxRow* row);
	public function GtkWidget* GtkListBoxCreateWidgetFunc(void* item, void* user_data);
	public function c_int GtkListBoxFilterFunc(GtkListBoxRow* row, void* user_data);
	public function void GtkListBoxForeachFunc(GtkListBox* box_, GtkListBoxRow* row, void* user_data);
	[CRepr]
	public struct GtkListBoxRow;
	[LinkName("gtk_list_box_row_new")]
	public static extern GtkWidget* list_box_row_new();
	[LinkName("gtk_list_box_row_changed")]
	public static extern void list_box_row_changed(GtkListBoxRow* row);
	[LinkName("gtk_list_box_row_get_activatable")]
	public static extern c_int list_box_row_get_activatable(GtkListBoxRow* row);
	[LinkName("gtk_list_box_row_get_child")]
	public static extern GtkWidget* list_box_row_get_child(GtkListBoxRow* row);
	[LinkName("gtk_list_box_row_get_header")]
	public static extern GtkWidget* list_box_row_get_header(GtkListBoxRow* row);
	[LinkName("gtk_list_box_row_get_index")]
	public static extern c_int list_box_row_get_index(GtkListBoxRow* row);
	[LinkName("gtk_list_box_row_get_selectable")]
	public static extern c_int list_box_row_get_selectable(GtkListBoxRow* row);
	[LinkName("gtk_list_box_row_is_selected")]
	public static extern c_int list_box_row_is_selected(GtkListBoxRow* row);
	[LinkName("gtk_list_box_row_set_activatable")]
	public static extern void list_box_row_set_activatable(GtkListBoxRow* row, c_int activatable);
	[LinkName("gtk_list_box_row_set_child")]
	public static extern void list_box_row_set_child(GtkListBoxRow* row, GtkWidget* child);
	[LinkName("gtk_list_box_row_set_header")]
	public static extern void list_box_row_set_header(GtkListBoxRow* row, GtkWidget* header);
	[LinkName("gtk_list_box_row_set_selectable")]
	public static extern void list_box_row_set_selectable(GtkListBoxRow* row, c_int selectable);
	[CRepr]
	public struct GtkListBoxRowClass
	{
		GtkWidgetClass parent_class;
	}
	public function c_int GtkListBoxSortFunc(GtkListBoxRow* row1, GtkListBoxRow* row2, void* user_data);
	public function void GtkListBoxUpdateHeaderFunc(GtkListBoxRow* row, GtkListBoxRow* before, void* user_data);
	[CRepr]
	public struct GtkListHeader;
	[LinkName("gtk_list_header_get_child")]
	public static extern GtkWidget* list_header_get_child(GtkListHeader* self);
	[LinkName("gtk_list_header_get_end")]
	public static extern c_uint list_header_get_end(GtkListHeader* self);
	[LinkName("gtk_list_header_get_item")]
	public static extern void* list_header_get_item(GtkListHeader* self);
	[LinkName("gtk_list_header_get_n_items")]
	public static extern c_uint list_header_get_n_items(GtkListHeader* self);
	[LinkName("gtk_list_header_get_start")]
	public static extern c_uint list_header_get_start(GtkListHeader* self);
	[LinkName("gtk_list_header_set_child")]
	public static extern void list_header_set_child(GtkListHeader* self, GtkWidget* child);
	[CRepr]
	public struct GtkListHeaderClass
	{
	}
	[CRepr]
	public struct GtkListItem;
	[LinkName("gtk_list_item_get_activatable")]
	public static extern c_int list_item_get_activatable(GtkListItem* self);
	[LinkName("gtk_list_item_get_child")]
	public static extern GtkWidget* list_item_get_child(GtkListItem* self);
	[LinkName("gtk_list_item_get_focusable")]
	public static extern c_int list_item_get_focusable(GtkListItem* self);
	[LinkName("gtk_list_item_get_item")]
	public static extern void* list_item_get_item(GtkListItem* self);
	[LinkName("gtk_list_item_get_position")]
	public static extern c_uint list_item_get_position(GtkListItem* self);
	[LinkName("gtk_list_item_get_selectable")]
	public static extern c_int list_item_get_selectable(GtkListItem* self);
	[LinkName("gtk_list_item_get_selected")]
	public static extern c_int list_item_get_selected(GtkListItem* self);
	[LinkName("gtk_list_item_set_activatable")]
	public static extern void list_item_set_activatable(GtkListItem* self, c_int activatable);
	[LinkName("gtk_list_item_set_child")]
	public static extern void list_item_set_child(GtkListItem* self, GtkWidget* child);
	[LinkName("gtk_list_item_set_focusable")]
	public static extern void list_item_set_focusable(GtkListItem* self, c_int focusable);
	[LinkName("gtk_list_item_set_selectable")]
	public static extern void list_item_set_selectable(GtkListItem* self, c_int selectable);
	[CRepr]
	public struct GtkListItemClass
	{
	}
	[CRepr]
	public struct GtkListItemFactory;
	[CRepr]
	public struct GtkListItemFactoryClass
	{
	}
	[CRepr]
	public struct GtkListStore;
	[LinkName("gtk_list_store_new")]
	public static extern GtkListStore* list_store_new(c_int n_columns);
	[LinkName("gtk_list_store_newv")]
	public static extern GtkListStore* list_store_newv(c_int n_columns);
	[LinkName("gtk_list_store_append")]
	public static extern void list_store_append(GtkListStore* list_store, GtkTreeIter* iter);
	[LinkName("gtk_list_store_clear")]
	public static extern void list_store_clear(GtkListStore* list_store);
	[LinkName("gtk_list_store_insert")]
	public static extern void list_store_insert(GtkListStore* list_store, GtkTreeIter* iter, c_int position);
	[LinkName("gtk_list_store_insert_after")]
	public static extern void list_store_insert_after(GtkListStore* list_store, GtkTreeIter* iter, GtkTreeIter* sibling);
	[LinkName("gtk_list_store_insert_before")]
	public static extern void list_store_insert_before(GtkListStore* list_store, GtkTreeIter* iter, GtkTreeIter* sibling);
	[LinkName("gtk_list_store_insert_with_values")]
	public static extern void list_store_insert_with_values(GtkListStore* list_store, GtkTreeIter* iter, c_int position);
	[LinkName("gtk_list_store_insert_with_valuesv")]
	public static extern void list_store_insert_with_valuesv(GtkListStore* list_store, GtkTreeIter* iter, c_int position, c_int n_values);
	[LinkName("gtk_list_store_iter_is_valid")]
	public static extern c_int list_store_iter_is_valid(GtkListStore* list_store, GtkTreeIter* iter);
	[LinkName("gtk_list_store_move_after")]
	public static extern void list_store_move_after(GtkListStore* store, GtkTreeIter* iter, GtkTreeIter* position);
	[LinkName("gtk_list_store_move_before")]
	public static extern void list_store_move_before(GtkListStore* store, GtkTreeIter* iter, GtkTreeIter* position);
	[LinkName("gtk_list_store_prepend")]
	public static extern void list_store_prepend(GtkListStore* list_store, GtkTreeIter* iter);
	[LinkName("gtk_list_store_remove")]
	public static extern c_int list_store_remove(GtkListStore* list_store, GtkTreeIter* iter);
	[LinkName("gtk_list_store_reorder")]
	public static extern void list_store_reorder(GtkListStore* store);
	[LinkName("gtk_list_store_set")]
	public static extern void list_store_set(GtkListStore* list_store, GtkTreeIter* iter);
	[LinkName("gtk_list_store_set_column_types")]
	public static extern void list_store_set_column_types(GtkListStore* list_store, c_int n_columns);
	[LinkName("gtk_list_store_set_valist")]
	public static extern void list_store_set_valist(GtkListStore* list_store, GtkTreeIter* iter, VarArgs var_args);
	[LinkName("gtk_list_store_set_value")]
	public static extern void list_store_set_value(GtkListStore* list_store, GtkTreeIter* iter, c_int column, GValue* value);
	[LinkName("gtk_list_store_set_valuesv")]
	public static extern void list_store_set_valuesv(GtkListStore* list_store, GtkTreeIter* iter, c_int n_values);
	[LinkName("gtk_list_store_swap")]
	public static extern void list_store_swap(GtkListStore* store, GtkTreeIter* a, GtkTreeIter* b);
	[CRepr]
	public struct GtkListStoreClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkListStorePrivate
	{
	}
	public enum GtkListTabBehavior : c_int
	{
		GTK_LIST_TAB_ALL,
		GTK_LIST_TAB_ITEM,
		GTK_LIST_TAB_CELL
	}
	[CRepr]
	public struct GtkListView;
	[LinkName("gtk_list_view_new")]
	public static extern GtkWidget* list_view_new(GtkSelectionModel* model, GtkListItemFactory* factory);
	[LinkName("gtk_list_view_get_enable_rubberband")]
	public static extern c_int list_view_get_enable_rubberband(GtkListView* self);
	[LinkName("gtk_list_view_get_factory")]
	public static extern GtkListItemFactory* list_view_get_factory(GtkListView* self);
	[LinkName("gtk_list_view_get_header_factory")]
	public static extern GtkListItemFactory* list_view_get_header_factory(GtkListView* self);
	[LinkName("gtk_list_view_get_model")]
	public static extern GtkSelectionModel* list_view_get_model(GtkListView* self);
	[LinkName("gtk_list_view_get_show_separators")]
	public static extern c_int list_view_get_show_separators(GtkListView* self);
	[LinkName("gtk_list_view_get_single_click_activate")]
	public static extern c_int list_view_get_single_click_activate(GtkListView* self);
	[LinkName("gtk_list_view_get_tab_behavior")]
	public static extern GtkListTabBehavior list_view_get_tab_behavior(GtkListView* self);
	[LinkName("gtk_list_view_set_enable_rubberband")]
	public static extern void list_view_set_enable_rubberband(GtkListView* self, c_int enable_rubberband);
	[LinkName("gtk_list_view_set_factory")]
	public static extern void list_view_set_factory(GtkListView* self, GtkListItemFactory* factory);
	[LinkName("gtk_list_view_set_header_factory")]
	public static extern void list_view_set_header_factory(GtkListView* self, GtkListItemFactory* factory);
	[LinkName("gtk_list_view_set_model")]
	public static extern void list_view_set_model(GtkListView* self, GtkSelectionModel* model);
	[LinkName("gtk_list_view_set_show_separators")]
	public static extern void list_view_set_show_separators(GtkListView* self, c_int show_separators);
	[LinkName("gtk_list_view_set_single_click_activate")]
	public static extern void list_view_set_single_click_activate(GtkListView* self, c_int single_click_activate);
	[LinkName("gtk_list_view_set_tab_behavior")]
	public static extern void list_view_set_tab_behavior(GtkListView* self, GtkListTabBehavior tab_behavior);
	[CRepr]
	public struct GtkListViewClass
	{
	}
	[CRepr]
	public struct GtkLockButton;
	[LinkName("gtk_lock_button_new")]
	public static extern GtkWidget* lock_button_new(GPermission* permission);
	[LinkName("gtk_lock_button_get_permission")]
	public static extern GPermission* lock_button_get_permission(GtkLockButton* button);
	[LinkName("gtk_lock_button_set_permission")]
	public static extern void lock_button_set_permission(GtkLockButton* button, GPermission* permission);
	[CRepr]
	public struct GtkMapListModel;
	[LinkName("gtk_map_list_model_new")]
	public static extern GtkMapListModel* map_list_model_new(GListModel* model, GtkMapListModelMapFunc map_func, void* user_data, GDestroyNotify user_destroy);
	[LinkName("gtk_map_list_model_get_model")]
	public static extern GListModel* map_list_model_get_model(GtkMapListModel* self);
	[LinkName("gtk_map_list_model_has_map")]
	public static extern c_int map_list_model_has_map(GtkMapListModel* self);
	[LinkName("gtk_map_list_model_set_map_func")]
	public static extern void map_list_model_set_map_func(GtkMapListModel* self, GtkMapListModelMapFunc map_func, void* user_data, GDestroyNotify user_destroy);
	[LinkName("gtk_map_list_model_set_model")]
	public static extern void map_list_model_set_model(GtkMapListModel* self, GListModel* model);
	[CRepr]
	public struct GtkMapListModelClass
	{
		GObjectClass parent_class;
	}
	public function void* GtkMapListModelMapFunc(void* item, void* user_data);
	[CRepr]
	public struct GtkMediaControls;
	[LinkName("gtk_media_controls_new")]
	public static extern GtkWidget* media_controls_new(GtkMediaStream* stream);
	[LinkName("gtk_media_controls_get_media_stream")]
	public static extern GtkMediaStream* media_controls_get_media_stream(GtkMediaControls* controls);
	[LinkName("gtk_media_controls_set_media_stream")]
	public static extern void media_controls_set_media_stream(GtkMediaControls* controls, GtkMediaStream* stream);
	[CRepr]
	public struct GtkMediaControlsClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkMediaFile;
	[LinkName("gtk_media_file_new")]
	public static extern GtkMediaStream* media_file_new();
	[LinkName("gtk_media_file_new_for_file")]
	public static extern GtkMediaStream* media_file_new_for_file(GFile* file);
	[LinkName("gtk_media_file_new_for_filename")]
	public static extern GtkMediaStream* media_file_new_for_filename( c_char* filename);
	[LinkName("gtk_media_file_new_for_input_stream")]
	public static extern GtkMediaStream* media_file_new_for_input_stream(GInputStream* stream);
	[LinkName("gtk_media_file_new_for_resource")]
	public static extern GtkMediaStream* media_file_new_for_resource( c_char* resource_path);
	[LinkName("gtk_media_file_clear")]
	public static extern void media_file_clear(GtkMediaFile* self);
	[LinkName("gtk_media_file_get_file")]
	public static extern GFile* media_file_get_file(GtkMediaFile* self);
	[LinkName("gtk_media_file_get_input_stream")]
	public static extern GInputStream* media_file_get_input_stream(GtkMediaFile* self);
	[LinkName("gtk_media_file_set_file")]
	public static extern void media_file_set_file(GtkMediaFile* self, GFile* file);
	[LinkName("gtk_media_file_set_filename")]
	public static extern void media_file_set_filename(GtkMediaFile* self,  c_char* filename);
	[LinkName("gtk_media_file_set_input_stream")]
	public static extern void media_file_set_input_stream(GtkMediaFile* self, GInputStream* stream);
	[LinkName("gtk_media_file_set_resource")]
	public static extern void media_file_set_resource(GtkMediaFile* self,  c_char* resource_path);
	[CRepr]
	public struct GtkMediaFileClass
	{
		GtkMediaStreamClass parent_class;
	}
	[CRepr]
	public struct GtkMediaStream;
	[LinkName("gtk_media_stream_ended")]
	public static extern void media_stream_ended(GtkMediaStream* self);
	[LinkName("gtk_media_stream_error")]
	public static extern void media_stream_error(GtkMediaStream* self, GQuark domain, c_int code,  c_char* format);
	[LinkName("gtk_media_stream_error_valist")]
	public static extern void media_stream_error_valist(GtkMediaStream* self, GQuark domain, c_int code,  c_char* format, VarArgs args);
	[LinkName("gtk_media_stream_gerror")]
	public static extern void media_stream_gerror(GtkMediaStream* self, GError* error);
	[LinkName("gtk_media_stream_get_duration")]
	public static extern c_longlong media_stream_get_duration(GtkMediaStream* self);
	[LinkName("gtk_media_stream_get_ended")]
	public static extern c_int media_stream_get_ended(GtkMediaStream* self);
	[LinkName("gtk_media_stream_get_error")]
	public static extern  GError* media_stream_get_error(GtkMediaStream* self);
	[LinkName("gtk_media_stream_get_loop")]
	public static extern c_int media_stream_get_loop(GtkMediaStream* self);
	[LinkName("gtk_media_stream_get_muted")]
	public static extern c_int media_stream_get_muted(GtkMediaStream* self);
	[LinkName("gtk_media_stream_get_playing")]
	public static extern c_int media_stream_get_playing(GtkMediaStream* self);
	[LinkName("gtk_media_stream_get_timestamp")]
	public static extern c_longlong media_stream_get_timestamp(GtkMediaStream* self);
	[LinkName("gtk_media_stream_get_volume")]
	public static extern double media_stream_get_volume(GtkMediaStream* self);
	[LinkName("gtk_media_stream_has_audio")]
	public static extern c_int media_stream_has_audio(GtkMediaStream* self);
	[LinkName("gtk_media_stream_has_video")]
	public static extern c_int media_stream_has_video(GtkMediaStream* self);
	[LinkName("gtk_media_stream_is_prepared")]
	public static extern c_int media_stream_is_prepared(GtkMediaStream* self);
	[LinkName("gtk_media_stream_is_seekable")]
	public static extern c_int media_stream_is_seekable(GtkMediaStream* self);
	[LinkName("gtk_media_stream_is_seeking")]
	public static extern c_int media_stream_is_seeking(GtkMediaStream* self);
	[LinkName("gtk_media_stream_pause")]
	public static extern void media_stream_pause(GtkMediaStream* self);
	[LinkName("gtk_media_stream_play")]
	public static extern void media_stream_play(GtkMediaStream* self);
	[LinkName("gtk_media_stream_prepared")]
	public static extern void media_stream_prepared(GtkMediaStream* self, c_int has_audio, c_int has_video, c_int seekable, c_longlong duration);
	[LinkName("gtk_media_stream_realize")]
	public static extern void media_stream_realize(GtkMediaStream* self, GdkSurface* surface);
	[LinkName("gtk_media_stream_seek")]
	public static extern void media_stream_seek(GtkMediaStream* self, c_longlong timestamp);
	[LinkName("gtk_media_stream_seek_failed")]
	public static extern void media_stream_seek_failed(GtkMediaStream* self);
	[LinkName("gtk_media_stream_seek_success")]
	public static extern void media_stream_seek_success(GtkMediaStream* self);
	[LinkName("gtk_media_stream_set_loop")]
	public static extern void media_stream_set_loop(GtkMediaStream* self, c_int loop);
	[LinkName("gtk_media_stream_set_muted")]
	public static extern void media_stream_set_muted(GtkMediaStream* self, c_int muted);
	[LinkName("gtk_media_stream_set_playing")]
	public static extern void media_stream_set_playing(GtkMediaStream* self, c_int playing);
	[LinkName("gtk_media_stream_set_volume")]
	public static extern void media_stream_set_volume(GtkMediaStream* self, double volume);
	[LinkName("gtk_media_stream_stream_ended")]
	public static extern void media_stream_stream_ended(GtkMediaStream* self);
	[LinkName("gtk_media_stream_stream_prepared")]
	public static extern void media_stream_stream_prepared(GtkMediaStream* self, c_int has_audio, c_int has_video, c_int seekable, c_longlong duration);
	[LinkName("gtk_media_stream_stream_unprepared")]
	public static extern void media_stream_stream_unprepared(GtkMediaStream* self);
	[LinkName("gtk_media_stream_unprepared")]
	public static extern void media_stream_unprepared(GtkMediaStream* self);
	[LinkName("gtk_media_stream_unrealize")]
	public static extern void media_stream_unrealize(GtkMediaStream* self, GdkSurface* surface);
	[LinkName("gtk_media_stream_update")]
	public static extern void media_stream_update(GtkMediaStream* self, c_longlong timestamp);
	[CRepr]
	public struct GtkMediaStreamClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkMenuButton;
	[LinkName("gtk_menu_button_new")]
	public static extern GtkWidget* menu_button_new();
	[LinkName("gtk_menu_button_get_active")]
	public static extern c_int menu_button_get_active(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_get_always_show_arrow")]
	public static extern c_int menu_button_get_always_show_arrow(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_get_can_shrink")]
	public static extern c_int menu_button_get_can_shrink(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_get_child")]
	public static extern GtkWidget* menu_button_get_child(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_get_direction")]
	public static extern GtkArrowType menu_button_get_direction(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_get_has_frame")]
	public static extern c_int menu_button_get_has_frame(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_get_icon_name")]
	public static extern  c_char* menu_button_get_icon_name(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_get_label")]
	public static extern  c_char* menu_button_get_label(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_get_menu_model")]
	public static extern GMenuModel* menu_button_get_menu_model(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_get_popover")]
	public static extern GtkPopover* menu_button_get_popover(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_get_primary")]
	public static extern c_int menu_button_get_primary(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_get_use_underline")]
	public static extern c_int menu_button_get_use_underline(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_popdown")]
	public static extern void menu_button_popdown(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_popup")]
	public static extern void menu_button_popup(GtkMenuButton* menu_button);
	[LinkName("gtk_menu_button_set_active")]
	public static extern void menu_button_set_active(GtkMenuButton* menu_button, c_int active);
	[LinkName("gtk_menu_button_set_always_show_arrow")]
	public static extern void menu_button_set_always_show_arrow(GtkMenuButton* menu_button, c_int always_show_arrow);
	[LinkName("gtk_menu_button_set_can_shrink")]
	public static extern void menu_button_set_can_shrink(GtkMenuButton* menu_button, c_int can_shrink);
	[LinkName("gtk_menu_button_set_child")]
	public static extern void menu_button_set_child(GtkMenuButton* menu_button, GtkWidget* child);
	[LinkName("gtk_menu_button_set_create_popup_func")]
	public static extern void menu_button_set_create_popup_func(GtkMenuButton* menu_button, GtkMenuButtonCreatePopupFunc func, void* user_data, GDestroyNotify destroy_notify);
	[LinkName("gtk_menu_button_set_direction")]
	public static extern void menu_button_set_direction(GtkMenuButton* menu_button, GtkArrowType direction);
	[LinkName("gtk_menu_button_set_has_frame")]
	public static extern void menu_button_set_has_frame(GtkMenuButton* menu_button, c_int has_frame);
	[LinkName("gtk_menu_button_set_icon_name")]
	public static extern void menu_button_set_icon_name(GtkMenuButton* menu_button,  c_char* icon_name);
	[LinkName("gtk_menu_button_set_label")]
	public static extern void menu_button_set_label(GtkMenuButton* menu_button,  c_char* label);
	[LinkName("gtk_menu_button_set_menu_model")]
	public static extern void menu_button_set_menu_model(GtkMenuButton* menu_button, GMenuModel* menu_model);
	[LinkName("gtk_menu_button_set_popover")]
	public static extern void menu_button_set_popover(GtkMenuButton* menu_button, GtkWidget* popover);
	[LinkName("gtk_menu_button_set_primary")]
	public static extern void menu_button_set_primary(GtkMenuButton* menu_button, c_int primary);
	[LinkName("gtk_menu_button_set_use_underline")]
	public static extern void menu_button_set_use_underline(GtkMenuButton* menu_button, c_int use_underline);
	public function void GtkMenuButtonCreatePopupFunc(GtkMenuButton* menu_button, void* user_data);
	[CRepr]
	public struct GtkMessageDialog;
	[LinkName("gtk_message_dialog_new")]
	public static extern GtkWidget* message_dialog_new(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons,  c_char* message_format);
	[LinkName("gtk_message_dialog_new_with_markup")]
	public static extern GtkWidget* message_dialog_new_with_markup(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons,  c_char* message_format);
	[LinkName("gtk_message_dialog_format_secondary_markup")]
	public static extern void message_dialog_format_secondary_markup(GtkMessageDialog* message_dialog,  c_char* message_format);
	[LinkName("gtk_message_dialog_format_secondary_text")]
	public static extern void message_dialog_format_secondary_text(GtkMessageDialog* message_dialog,  c_char* message_format);
	[LinkName("gtk_message_dialog_get_message_area")]
	public static extern GtkWidget* message_dialog_get_message_area(GtkMessageDialog* message_dialog);
	[LinkName("gtk_message_dialog_set_markup")]
	public static extern void message_dialog_set_markup(GtkMessageDialog* message_dialog,  c_char* str);
	[CRepr]
	public struct GtkMessageDialogClass
	{
	}
	public enum GtkMessageType : c_int
	{
		GTK_MESSAGE_INFO,
		GTK_MESSAGE_WARNING,
		GTK_MESSAGE_QUESTION,
		GTK_MESSAGE_ERROR,
		GTK_MESSAGE_OTHER
	}
	[CRepr]
	public struct GtkMnemonicAction;
	[CRepr]
	public struct GtkMnemonicActionClass
	{
	}
	[CRepr]
	public struct GtkMnemonicTrigger;
	[LinkName("gtk_mnemonic_trigger_new")]
	public static extern GtkShortcutTrigger* mnemonic_trigger_new(c_uint keyval);
	[LinkName("gtk_mnemonic_trigger_get_keyval")]
	public static extern c_uint mnemonic_trigger_get_keyval(GtkMnemonicTrigger* self);
	[CRepr]
	public struct GtkMnemonicTriggerClass
	{
	}
	[CRepr]
	public struct GtkMountOperation;
	[LinkName("gtk_mount_operation_new")]
	public static extern GMountOperation* mount_operation_new(GtkWindow* parent);
	[LinkName("gtk_mount_operation_get_display")]
	public static extern GdkDisplay* mount_operation_get_display(GtkMountOperation* op);
	[LinkName("gtk_mount_operation_get_parent")]
	public static extern GtkWindow* mount_operation_get_parent(GtkMountOperation* op);
	[LinkName("gtk_mount_operation_is_showing")]
	public static extern c_int mount_operation_is_showing(GtkMountOperation* op);
	[LinkName("gtk_mount_operation_set_display")]
	public static extern void mount_operation_set_display(GtkMountOperation* op, GdkDisplay* display);
	[LinkName("gtk_mount_operation_set_parent")]
	public static extern void mount_operation_set_parent(GtkMountOperation* op, GtkWindow* parent);
	[CRepr]
	public struct GtkMountOperationClass
	{
		GMountOperationClass parent_class;
	}
	[CRepr]
	public struct GtkMountOperationPrivate
	{
	}
	public enum GtkMovementStep : c_int
	{
		GTK_MOVEMENT_LOGICAL_POSITIONS,
		GTK_MOVEMENT_VISUAL_POSITIONS,
		GTK_MOVEMENT_WORDS,
		GTK_MOVEMENT_DISPLAY_LINES,
		GTK_MOVEMENT_DISPLAY_LINE_ENDS,
		GTK_MOVEMENT_PARAGRAPHS,
		GTK_MOVEMENT_PARAGRAPH_ENDS,
		GTK_MOVEMENT_PAGES,
		GTK_MOVEMENT_BUFFER_ENDS,
		GTK_MOVEMENT_HORIZONTAL_PAGES
	}
	[CRepr]
	public struct GtkMultiFilter;
	[LinkName("gtk_multi_filter_append")]
	public static extern void multi_filter_append(GtkMultiFilter* self, GtkFilter* filter);
	[LinkName("gtk_multi_filter_remove")]
	public static extern void multi_filter_remove(GtkMultiFilter* self, c_uint position);
	[CRepr]
	public struct GtkMultiFilterClass
	{
	}
	[CRepr]
	public struct GtkMultiSelection;
	[LinkName("gtk_multi_selection_new")]
	public static extern GtkMultiSelection* multi_selection_new(GListModel* model);
	[LinkName("gtk_multi_selection_get_model")]
	public static extern GListModel* multi_selection_get_model(GtkMultiSelection* self);
	[LinkName("gtk_multi_selection_set_model")]
	public static extern void multi_selection_set_model(GtkMultiSelection* self, GListModel* model);
	[CRepr]
	public struct GtkMultiSelectionClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkMultiSorter;
	[LinkName("gtk_multi_sorter_new")]
	public static extern GtkMultiSorter* multi_sorter_new();
	[LinkName("gtk_multi_sorter_append")]
	public static extern void multi_sorter_append(GtkMultiSorter* self, GtkSorter* sorter);
	[LinkName("gtk_multi_sorter_remove")]
	public static extern void multi_sorter_remove(GtkMultiSorter* self, c_uint position);
	[CRepr]
	public struct GtkMultiSorterClass
	{
		GtkSorterClass parent_class;
	}
	[CRepr]
	public struct GtkNamedAction;
	[LinkName("gtk_named_action_new")]
	public static extern GtkShortcutAction* named_action_new( c_char* name);
	[LinkName("gtk_named_action_get_action_name")]
	public static extern  c_char* named_action_get_action_name(GtkNamedAction* self);
	[CRepr]
	public struct GtkNamedActionClass
	{
	}
	[CRepr]
	public struct GtkNative
	{	}
	[CRepr]
	public struct GtkNativeDialog;
	[LinkName("gtk_native_dialog_destroy")]
	public static extern void native_dialog_destroy(GtkNativeDialog* self);
	[LinkName("gtk_native_dialog_get_modal")]
	public static extern c_int native_dialog_get_modal(GtkNativeDialog* self);
	[LinkName("gtk_native_dialog_get_title")]
	public static extern  c_char* native_dialog_get_title(GtkNativeDialog* self);
	[LinkName("gtk_native_dialog_get_transient_for")]
	public static extern GtkWindow* native_dialog_get_transient_for(GtkNativeDialog* self);
	[LinkName("gtk_native_dialog_get_visible")]
	public static extern c_int native_dialog_get_visible(GtkNativeDialog* self);
	[LinkName("gtk_native_dialog_hide")]
	public static extern void native_dialog_hide(GtkNativeDialog* self);
	[LinkName("gtk_native_dialog_set_modal")]
	public static extern void native_dialog_set_modal(GtkNativeDialog* self, c_int modal);
	[LinkName("gtk_native_dialog_set_title")]
	public static extern void native_dialog_set_title(GtkNativeDialog* self,  c_char* title);
	[LinkName("gtk_native_dialog_set_transient_for")]
	public static extern void native_dialog_set_transient_for(GtkNativeDialog* self, GtkWindow* parent);
	[LinkName("gtk_native_dialog_show")]
	public static extern void native_dialog_show(GtkNativeDialog* self);
	[CRepr]
	public struct GtkNativeDialogClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkNativeInterface
	{
	}
	public enum GtkNaturalWrapMode : c_int
	{
		GTK_NATURAL_WRAP_INHERIT,
		GTK_NATURAL_WRAP_NONE,
		GTK_NATURAL_WRAP_WORD
	}
	[CRepr]
	public struct GtkNeverTrigger;
	[CRepr]
	public struct GtkNeverTriggerClass
	{
	}
	[CRepr]
	public struct GtkNoSelection;
	[LinkName("gtk_no_selection_new")]
	public static extern GtkNoSelection* no_selection_new(GListModel* model);
	[LinkName("gtk_no_selection_get_model")]
	public static extern GListModel* no_selection_get_model(GtkNoSelection* self);
	[LinkName("gtk_no_selection_set_model")]
	public static extern void no_selection_set_model(GtkNoSelection* self, GListModel* model);
	[CRepr]
	public struct GtkNoSelectionClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkNotebook;
	[LinkName("gtk_notebook_new")]
	public static extern GtkWidget* notebook_new();
	[LinkName("gtk_notebook_append_page")]
	public static extern c_int notebook_append_page(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tab_label);
	[LinkName("gtk_notebook_append_page_menu")]
	public static extern c_int notebook_append_page_menu(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tab_label, GtkWidget* menu_label);
	[LinkName("gtk_notebook_detach_tab")]
	public static extern void notebook_detach_tab(GtkNotebook* notebook, GtkWidget* child);
	[LinkName("gtk_notebook_get_action_widget")]
	public static extern GtkWidget* notebook_get_action_widget(GtkNotebook* notebook, GtkPackType pack_type);
	[LinkName("gtk_notebook_get_current_page")]
	public static extern c_int notebook_get_current_page(GtkNotebook* notebook);
	[LinkName("gtk_notebook_get_group_name")]
	public static extern  c_char* notebook_get_group_name(GtkNotebook* notebook);
	[LinkName("gtk_notebook_get_menu_label")]
	public static extern GtkWidget* notebook_get_menu_label(GtkNotebook* notebook, GtkWidget* child);
	[LinkName("gtk_notebook_get_menu_label_text")]
	public static extern  c_char* notebook_get_menu_label_text(GtkNotebook* notebook, GtkWidget* child);
	[LinkName("gtk_notebook_get_n_pages")]
	public static extern c_int notebook_get_n_pages(GtkNotebook* notebook);
	[LinkName("gtk_notebook_get_nth_page")]
	public static extern GtkWidget* notebook_get_nth_page(GtkNotebook* notebook, c_int page_num);
	[LinkName("gtk_notebook_get_page")]
	public static extern GtkNotebookPage* notebook_get_page(GtkNotebook* notebook, GtkWidget* child);
	[LinkName("gtk_notebook_get_pages")]
	public static extern GListModel* notebook_get_pages(GtkNotebook* notebook);
	[LinkName("gtk_notebook_get_scrollable")]
	public static extern c_int notebook_get_scrollable(GtkNotebook* notebook);
	[LinkName("gtk_notebook_get_show_border")]
	public static extern c_int notebook_get_show_border(GtkNotebook* notebook);
	[LinkName("gtk_notebook_get_show_tabs")]
	public static extern c_int notebook_get_show_tabs(GtkNotebook* notebook);
	[LinkName("gtk_notebook_get_tab_detachable")]
	public static extern c_int notebook_get_tab_detachable(GtkNotebook* notebook, GtkWidget* child);
	[LinkName("gtk_notebook_get_tab_label")]
	public static extern GtkWidget* notebook_get_tab_label(GtkNotebook* notebook, GtkWidget* child);
	[LinkName("gtk_notebook_get_tab_label_text")]
	public static extern  c_char* notebook_get_tab_label_text(GtkNotebook* notebook, GtkWidget* child);
	[LinkName("gtk_notebook_get_tab_pos")]
	public static extern GtkPositionType notebook_get_tab_pos(GtkNotebook* notebook);
	[LinkName("gtk_notebook_get_tab_reorderable")]
	public static extern c_int notebook_get_tab_reorderable(GtkNotebook* notebook, GtkWidget* child);
	[LinkName("gtk_notebook_insert_page")]
	public static extern c_int notebook_insert_page(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tab_label, c_int position);
	[LinkName("gtk_notebook_insert_page_menu")]
	public static extern c_int notebook_insert_page_menu(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tab_label, GtkWidget* menu_label, c_int position);
	[LinkName("gtk_notebook_next_page")]
	public static extern void notebook_next_page(GtkNotebook* notebook);
	[LinkName("gtk_notebook_page_num")]
	public static extern c_int notebook_page_num(GtkNotebook* notebook, GtkWidget* child);
	[LinkName("gtk_notebook_popup_disable")]
	public static extern void notebook_popup_disable(GtkNotebook* notebook);
	[LinkName("gtk_notebook_popup_enable")]
	public static extern void notebook_popup_enable(GtkNotebook* notebook);
	[LinkName("gtk_notebook_prepend_page")]
	public static extern c_int notebook_prepend_page(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tab_label);
	[LinkName("gtk_notebook_prepend_page_menu")]
	public static extern c_int notebook_prepend_page_menu(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tab_label, GtkWidget* menu_label);
	[LinkName("gtk_notebook_prev_page")]
	public static extern void notebook_prev_page(GtkNotebook* notebook);
	[LinkName("gtk_notebook_remove_page")]
	public static extern void notebook_remove_page(GtkNotebook* notebook, c_int page_num);
	[LinkName("gtk_notebook_reorder_child")]
	public static extern void notebook_reorder_child(GtkNotebook* notebook, GtkWidget* child, c_int position);
	[LinkName("gtk_notebook_set_action_widget")]
	public static extern void notebook_set_action_widget(GtkNotebook* notebook, GtkWidget* widget, GtkPackType pack_type);
	[LinkName("gtk_notebook_set_current_page")]
	public static extern void notebook_set_current_page(GtkNotebook* notebook, c_int page_num);
	[LinkName("gtk_notebook_set_group_name")]
	public static extern void notebook_set_group_name(GtkNotebook* notebook,  c_char* group_name);
	[LinkName("gtk_notebook_set_menu_label")]
	public static extern void notebook_set_menu_label(GtkNotebook* notebook, GtkWidget* child, GtkWidget* menu_label);
	[LinkName("gtk_notebook_set_menu_label_text")]
	public static extern void notebook_set_menu_label_text(GtkNotebook* notebook, GtkWidget* child,  c_char* menu_text);
	[LinkName("gtk_notebook_set_scrollable")]
	public static extern void notebook_set_scrollable(GtkNotebook* notebook, c_int scrollable);
	[LinkName("gtk_notebook_set_show_border")]
	public static extern void notebook_set_show_border(GtkNotebook* notebook, c_int show_border);
	[LinkName("gtk_notebook_set_show_tabs")]
	public static extern void notebook_set_show_tabs(GtkNotebook* notebook, c_int show_tabs);
	[LinkName("gtk_notebook_set_tab_detachable")]
	public static extern void notebook_set_tab_detachable(GtkNotebook* notebook, GtkWidget* child, c_int detachable);
	[LinkName("gtk_notebook_set_tab_label")]
	public static extern void notebook_set_tab_label(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tab_label);
	[LinkName("gtk_notebook_set_tab_label_text")]
	public static extern void notebook_set_tab_label_text(GtkNotebook* notebook, GtkWidget* child,  c_char* tab_text);
	[LinkName("gtk_notebook_set_tab_pos")]
	public static extern void notebook_set_tab_pos(GtkNotebook* notebook, GtkPositionType pos);
	[LinkName("gtk_notebook_set_tab_reorderable")]
	public static extern void notebook_set_tab_reorderable(GtkNotebook* notebook, GtkWidget* child, c_int reorderable);
	[CRepr]
	public struct GtkNotebookPage;
	[LinkName("gtk_notebook_page_get_child")]
	public static extern GtkWidget* notebook_page_get_child(GtkNotebookPage* page);
	public enum GtkNotebookTab : c_int
	{
		GTK_NOTEBOOK_TAB_FIRST,
		GTK_NOTEBOOK_TAB_LAST
	}
	[CRepr]
	public struct GtkNothingAction;
	[CRepr]
	public struct GtkNothingActionClass
	{
	}
	public enum GtkNumberUpLayout : c_int
	{
		GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_TOP_TO_BOTTOM,
		GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_BOTTOM_TO_TOP,
		GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_TOP_TO_BOTTOM,
		GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_BOTTOM_TO_TOP,
		GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_LEFT_TO_RIGHT,
		GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_RIGHT_TO_LEFT,
		GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_LEFT_TO_RIGHT,
		GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_RIGHT_TO_LEFT
	}
	[CRepr]
	public struct GtkNumericSorter;
	[LinkName("gtk_numeric_sorter_new")]
	public static extern GtkNumericSorter* numeric_sorter_new(GtkExpression* expression);
	[LinkName("gtk_numeric_sorter_get_expression")]
	public static extern GtkExpression* numeric_sorter_get_expression(GtkNumericSorter* self);
	[LinkName("gtk_numeric_sorter_get_sort_order")]
	public static extern GtkSortType numeric_sorter_get_sort_order(GtkNumericSorter* self);
	[LinkName("gtk_numeric_sorter_set_expression")]
	public static extern void numeric_sorter_set_expression(GtkNumericSorter* self, GtkExpression* expression);
	[LinkName("gtk_numeric_sorter_set_sort_order")]
	public static extern void numeric_sorter_set_sort_order(GtkNumericSorter* self, GtkSortType sort_order);
	[CRepr]
	public struct GtkNumericSorterClass
	{
		GtkSorterClass parent_class;
	}
	[CRepr]
	public struct GtkObjectExpression;
	[LinkName("gtk_object_expression_new")]
	public static extern GtkExpression* object_expression_new(GObject* object);
	[LinkName("gtk_object_expression_get_object")]
	public static extern GObject* object_expression_get_object(GtkExpression* expression);
	public enum GtkOrdering : c_int
	{
		GTK_ORDERING_SMALLER,
		GTK_ORDERING_EQUAL,
		GTK_ORDERING_LARGER
	}
	[CRepr]
	public struct GtkOrientable
	{	}
	[CRepr]
	public struct GtkOrientableIface
	{
		GTypeInterface base_iface;
	}
	public enum GtkOrientation : c_int
	{
		GTK_ORIENTATION_HORIZONTAL,
		GTK_ORIENTATION_VERTICAL
	}
	public enum GtkOverflow : c_int
	{
		GTK_OVERFLOW_VISIBLE,
		GTK_OVERFLOW_HIDDEN
	}
	[CRepr]
	public struct GtkOverlay;
	[LinkName("gtk_overlay_new")]
	public static extern GtkWidget* overlay_new();
	[LinkName("gtk_overlay_add_overlay")]
	public static extern void overlay_add_overlay(GtkOverlay* overlay, GtkWidget* widget);
	[LinkName("gtk_overlay_get_child")]
	public static extern GtkWidget* overlay_get_child(GtkOverlay* overlay);
	[LinkName("gtk_overlay_get_clip_overlay")]
	public static extern c_int overlay_get_clip_overlay(GtkOverlay* overlay, GtkWidget* widget);
	[LinkName("gtk_overlay_get_measure_overlay")]
	public static extern c_int overlay_get_measure_overlay(GtkOverlay* overlay, GtkWidget* widget);
	[LinkName("gtk_overlay_remove_overlay")]
	public static extern void overlay_remove_overlay(GtkOverlay* overlay, GtkWidget* widget);
	[LinkName("gtk_overlay_set_child")]
	public static extern void overlay_set_child(GtkOverlay* overlay, GtkWidget* child);
	[LinkName("gtk_overlay_set_clip_overlay")]
	public static extern void overlay_set_clip_overlay(GtkOverlay* overlay, GtkWidget* widget, c_int clip_overlay);
	[LinkName("gtk_overlay_set_measure_overlay")]
	public static extern void overlay_set_measure_overlay(GtkOverlay* overlay, GtkWidget* widget, c_int measure);
	[CRepr]
	public struct GtkOverlayLayout;
	[LinkName("gtk_overlay_layout_new")]
	public static extern GtkLayoutManager* overlay_layout_new();
	[CRepr]
	public struct GtkOverlayLayoutChild;
	[LinkName("gtk_overlay_layout_child_get_clip_overlay")]
	public static extern c_int overlay_layout_child_get_clip_overlay(GtkOverlayLayoutChild* child);
	[LinkName("gtk_overlay_layout_child_get_measure")]
	public static extern c_int overlay_layout_child_get_measure(GtkOverlayLayoutChild* child);
	[LinkName("gtk_overlay_layout_child_set_clip_overlay")]
	public static extern void overlay_layout_child_set_clip_overlay(GtkOverlayLayoutChild* child, c_int clip_overlay);
	[LinkName("gtk_overlay_layout_child_set_measure")]
	public static extern void overlay_layout_child_set_measure(GtkOverlayLayoutChild* child, c_int measure);
	[CRepr]
	public struct GtkOverlayLayoutChildClass
	{
		GtkLayoutChildClass parent_class;
	}
	[CRepr]
	public struct GtkOverlayLayoutClass
	{
		GtkLayoutManagerClass parent_class;
	}
	public enum GtkPackType : c_int
	{
		GTK_PACK_START,
		GTK_PACK_END
	}
	[CRepr]
	public struct GtkPadActionEntry
	{
		GtkPadActionType type;
		c_int index;
		c_int mode;
		 c_char* label;
		 c_char* action_name;
	}
	public enum GtkPadActionType : c_int
	{
		GTK_PAD_ACTION_BUTTON,
		GTK_PAD_ACTION_RING,
		GTK_PAD_ACTION_STRIP
	}
	[CRepr]
	public struct GtkPadController;
	[LinkName("gtk_pad_controller_new")]
	public static extern GtkPadController* pad_controller_new(GActionGroup* group, GdkDevice* pad);
	[LinkName("gtk_pad_controller_set_action")]
	public static extern void pad_controller_set_action(GtkPadController* controller, GtkPadActionType type, c_int index, c_int mode,  c_char* label,  c_char* action_name);
	[LinkName("gtk_pad_controller_set_action_entries")]
	public static extern void pad_controller_set_action_entries(GtkPadController* controller, c_int n_entries);
	[CRepr]
	public struct GtkPadControllerClass
	{
	}
	public enum GtkPageOrientation : c_int
	{
		GTK_PAGE_ORIENTATION_PORTRAIT,
		GTK_PAGE_ORIENTATION_LANDSCAPE,
		GTK_PAGE_ORIENTATION_REVERSE_PORTRAIT,
		GTK_PAGE_ORIENTATION_REVERSE_LANDSCAPE
	}
	[CRepr]
	public struct GtkPageRange
	{
		c_int start;
		c_int end;
	}
	public enum GtkPageSet : c_int
	{
		GTK_PAGE_SET_ALL,
		GTK_PAGE_SET_EVEN,
		GTK_PAGE_SET_ODD
	}
	[CRepr]
	public struct GtkPageSetup;
	[LinkName("gtk_page_setup_new")]
	public static extern GtkPageSetup* page_setup_new();
	[LinkName("gtk_page_setup_new_from_file")]
	public static extern GtkPageSetup* page_setup_new_from_file( c_char* file_name);
	[LinkName("gtk_page_setup_new_from_gvariant")]
	public static extern GtkPageSetup* page_setup_new_from_gvariant(GVariant* variant);
	[LinkName("gtk_page_setup_new_from_key_file")]
	public static extern GtkPageSetup* page_setup_new_from_key_file(GKeyFile* key_file,  c_char* group_name);
	[LinkName("gtk_page_setup_copy")]
	public static extern GtkPageSetup* page_setup_copy(GtkPageSetup* other);
	[LinkName("gtk_page_setup_get_bottom_margin")]
	public static extern double page_setup_get_bottom_margin(GtkPageSetup* setup, GtkUnit unit);
	[LinkName("gtk_page_setup_get_left_margin")]
	public static extern double page_setup_get_left_margin(GtkPageSetup* setup, GtkUnit unit);
	[LinkName("gtk_page_setup_get_orientation")]
	public static extern GtkPageOrientation page_setup_get_orientation(GtkPageSetup* setup);
	[LinkName("gtk_page_setup_get_page_height")]
	public static extern double page_setup_get_page_height(GtkPageSetup* setup, GtkUnit unit);
	[LinkName("gtk_page_setup_get_page_width")]
	public static extern double page_setup_get_page_width(GtkPageSetup* setup, GtkUnit unit);
	[LinkName("gtk_page_setup_get_paper_height")]
	public static extern double page_setup_get_paper_height(GtkPageSetup* setup, GtkUnit unit);
	[LinkName("gtk_page_setup_get_paper_size")]
	public static extern GtkPaperSize* page_setup_get_paper_size(GtkPageSetup* setup);
	[LinkName("gtk_page_setup_get_paper_width")]
	public static extern double page_setup_get_paper_width(GtkPageSetup* setup, GtkUnit unit);
	[LinkName("gtk_page_setup_get_right_margin")]
	public static extern double page_setup_get_right_margin(GtkPageSetup* setup, GtkUnit unit);
	[LinkName("gtk_page_setup_get_top_margin")]
	public static extern double page_setup_get_top_margin(GtkPageSetup* setup, GtkUnit unit);
	[LinkName("gtk_page_setup_load_file")]
	public static extern c_int page_setup_load_file(GtkPageSetup* setup,  c_char* file_name);
	[LinkName("gtk_page_setup_load_key_file")]
	public static extern c_int page_setup_load_key_file(GtkPageSetup* setup, GKeyFile* key_file,  c_char* group_name);
	[LinkName("gtk_page_setup_set_bottom_margin")]
	public static extern void page_setup_set_bottom_margin(GtkPageSetup* setup, double margin, GtkUnit unit);
	[LinkName("gtk_page_setup_set_left_margin")]
	public static extern void page_setup_set_left_margin(GtkPageSetup* setup, double margin, GtkUnit unit);
	[LinkName("gtk_page_setup_set_orientation")]
	public static extern void page_setup_set_orientation(GtkPageSetup* setup, GtkPageOrientation orientation);
	[LinkName("gtk_page_setup_set_paper_size")]
	public static extern void page_setup_set_paper_size(GtkPageSetup* setup, GtkPaperSize* size);
	[LinkName("gtk_page_setup_set_paper_size_and_default_margins")]
	public static extern void page_setup_set_paper_size_and_default_margins(GtkPageSetup* setup, GtkPaperSize* size);
	[LinkName("gtk_page_setup_set_right_margin")]
	public static extern void page_setup_set_right_margin(GtkPageSetup* setup, double margin, GtkUnit unit);
	[LinkName("gtk_page_setup_set_top_margin")]
	public static extern void page_setup_set_top_margin(GtkPageSetup* setup, double margin, GtkUnit unit);
	[LinkName("gtk_page_setup_to_file")]
	public static extern c_int page_setup_to_file(GtkPageSetup* setup,  c_char* file_name);
	[LinkName("gtk_page_setup_to_gvariant")]
	public static extern GVariant* page_setup_to_gvariant(GtkPageSetup* setup);
	[LinkName("gtk_page_setup_to_key_file")]
	public static extern void page_setup_to_key_file(GtkPageSetup* setup, GKeyFile* key_file,  c_char* group_name);
	public function void GtkPageSetupDoneFunc(GtkPageSetup* page_setup, void* data);
	[CRepr]
	public struct GtkPageSetupUnixDialog;
	[LinkName("gtk_page_setup_unix_dialog_new")]
	public static extern GtkWidget* page_setup_unix_dialog_new( c_char* title, GtkWindow* parent);
	[LinkName("gtk_page_setup_unix_dialog_get_page_setup")]
	public static extern GtkPageSetup* page_setup_unix_dialog_get_page_setup(GtkPageSetupUnixDialog* dialog);
	[LinkName("gtk_page_setup_unix_dialog_get_print_settings")]
	public static extern GtkPrintSettings* page_setup_unix_dialog_get_print_settings(GtkPageSetupUnixDialog* dialog);
	[LinkName("gtk_page_setup_unix_dialog_set_page_setup")]
	public static extern void page_setup_unix_dialog_set_page_setup(GtkPageSetupUnixDialog* dialog, GtkPageSetup* page_setup);
	[LinkName("gtk_page_setup_unix_dialog_set_print_settings")]
	public static extern void page_setup_unix_dialog_set_print_settings(GtkPageSetupUnixDialog* dialog, GtkPrintSettings* print_settings);
	public enum GtkPanDirection : c_int
	{
		GTK_PAN_DIRECTION_LEFT,
		GTK_PAN_DIRECTION_RIGHT,
		GTK_PAN_DIRECTION_UP,
		GTK_PAN_DIRECTION_DOWN
	}
	[CRepr]
	public struct GtkPaned;
	[LinkName("gtk_paned_new")]
	public static extern GtkWidget* paned_new(GtkOrientation orientation);
	[LinkName("gtk_paned_get_end_child")]
	public static extern GtkWidget* paned_get_end_child(GtkPaned* paned);
	[LinkName("gtk_paned_get_position")]
	public static extern c_int paned_get_position(GtkPaned* paned);
	[LinkName("gtk_paned_get_resize_end_child")]
	public static extern c_int paned_get_resize_end_child(GtkPaned* paned);
	[LinkName("gtk_paned_get_resize_start_child")]
	public static extern c_int paned_get_resize_start_child(GtkPaned* paned);
	[LinkName("gtk_paned_get_shrink_end_child")]
	public static extern c_int paned_get_shrink_end_child(GtkPaned* paned);
	[LinkName("gtk_paned_get_shrink_start_child")]
	public static extern c_int paned_get_shrink_start_child(GtkPaned* paned);
	[LinkName("gtk_paned_get_start_child")]
	public static extern GtkWidget* paned_get_start_child(GtkPaned* paned);
	[LinkName("gtk_paned_get_wide_handle")]
	public static extern c_int paned_get_wide_handle(GtkPaned* paned);
	[LinkName("gtk_paned_set_end_child")]
	public static extern void paned_set_end_child(GtkPaned* paned, GtkWidget* child);
	[LinkName("gtk_paned_set_position")]
	public static extern void paned_set_position(GtkPaned* paned, c_int position);
	[LinkName("gtk_paned_set_resize_end_child")]
	public static extern void paned_set_resize_end_child(GtkPaned* paned, c_int resize);
	[LinkName("gtk_paned_set_resize_start_child")]
	public static extern void paned_set_resize_start_child(GtkPaned* paned, c_int resize);
	[LinkName("gtk_paned_set_shrink_end_child")]
	public static extern void paned_set_shrink_end_child(GtkPaned* paned, c_int resize);
	[LinkName("gtk_paned_set_shrink_start_child")]
	public static extern void paned_set_shrink_start_child(GtkPaned* paned, c_int resize);
	[LinkName("gtk_paned_set_start_child")]
	public static extern void paned_set_start_child(GtkPaned* paned, GtkWidget* child);
	[LinkName("gtk_paned_set_wide_handle")]
	public static extern void paned_set_wide_handle(GtkPaned* paned, c_int wide);
	[CRepr]
	public struct GtkPaperSize
	{
	}
	[CRepr]
	public struct GtkParamSpecExpression;
	[CRepr]
	public struct GtkPasswordEntry;
	[LinkName("gtk_password_entry_new")]
	public static extern GtkWidget* password_entry_new();
	[LinkName("gtk_password_entry_get_extra_menu")]
	public static extern GMenuModel* password_entry_get_extra_menu(GtkPasswordEntry* entry);
	[LinkName("gtk_password_entry_get_show_peek_icon")]
	public static extern c_int password_entry_get_show_peek_icon(GtkPasswordEntry* entry);
	[LinkName("gtk_password_entry_set_extra_menu")]
	public static extern void password_entry_set_extra_menu(GtkPasswordEntry* entry, GMenuModel* model);
	[LinkName("gtk_password_entry_set_show_peek_icon")]
	public static extern void password_entry_set_show_peek_icon(GtkPasswordEntry* entry, c_int show_peek_icon);
	[CRepr]
	public struct GtkPasswordEntryBuffer;
	[LinkName("gtk_password_entry_buffer_new")]
	public static extern GtkEntryBuffer* password_entry_buffer_new();
	[CRepr]
	public struct GtkPasswordEntryBufferClass
	{
		GtkEntryBufferClass parent_class;
	}
	[CRepr]
	public struct GtkPasswordEntryClass
	{
	}
	[CRepr]
	public struct GtkPickFlags
	{
		public const int GTK_PICK_DEFAULT = 0;
		public const int GTK_PICK_INSENSITIVE = 1;
		public const int GTK_PICK_NON_TARGETABLE = 2;
	}
	[CRepr]
	public struct GtkPicture;
	[LinkName("gtk_picture_new")]
	public static extern GtkWidget* picture_new();
	[LinkName("gtk_picture_new_for_file")]
	public static extern GtkWidget* picture_new_for_file(GFile* file);
	[LinkName("gtk_picture_new_for_filename")]
	public static extern GtkWidget* picture_new_for_filename( c_char* filename);
	[LinkName("gtk_picture_new_for_paintable")]
	public static extern GtkWidget* picture_new_for_paintable(GdkPaintable* paintable);
	[LinkName("gtk_picture_new_for_pixbuf")]
	public static extern GtkWidget* picture_new_for_pixbuf(GdkPixbuf* pixbuf);
	[LinkName("gtk_picture_new_for_resource")]
	public static extern GtkWidget* picture_new_for_resource( c_char* resource_path);
	[LinkName("gtk_picture_get_alternative_text")]
	public static extern  c_char* picture_get_alternative_text(GtkPicture* self);
	[LinkName("gtk_picture_get_can_shrink")]
	public static extern c_int picture_get_can_shrink(GtkPicture* self);
	[LinkName("gtk_picture_get_content_fit")]
	public static extern GtkContentFit picture_get_content_fit(GtkPicture* self);
	[LinkName("gtk_picture_get_file")]
	public static extern GFile* picture_get_file(GtkPicture* self);
	[LinkName("gtk_picture_get_keep_aspect_ratio")]
	public static extern c_int picture_get_keep_aspect_ratio(GtkPicture* self);
	[LinkName("gtk_picture_get_paintable")]
	public static extern GdkPaintable* picture_get_paintable(GtkPicture* self);
	[LinkName("gtk_picture_set_alternative_text")]
	public static extern void picture_set_alternative_text(GtkPicture* self,  c_char* alternative_text);
	[LinkName("gtk_picture_set_can_shrink")]
	public static extern void picture_set_can_shrink(GtkPicture* self, c_int can_shrink);
	[LinkName("gtk_picture_set_content_fit")]
	public static extern void picture_set_content_fit(GtkPicture* self, GtkContentFit content_fit);
	[LinkName("gtk_picture_set_file")]
	public static extern void picture_set_file(GtkPicture* self, GFile* file);
	[LinkName("gtk_picture_set_filename")]
	public static extern void picture_set_filename(GtkPicture* self,  c_char* filename);
	[LinkName("gtk_picture_set_keep_aspect_ratio")]
	public static extern void picture_set_keep_aspect_ratio(GtkPicture* self, c_int keep_aspect_ratio);
	[LinkName("gtk_picture_set_paintable")]
	public static extern void picture_set_paintable(GtkPicture* self, GdkPaintable* paintable);
	[LinkName("gtk_picture_set_pixbuf")]
	public static extern void picture_set_pixbuf(GtkPicture* self, GdkPixbuf* pixbuf);
	[LinkName("gtk_picture_set_resource")]
	public static extern void picture_set_resource(GtkPicture* self,  c_char* resource_path);
	[CRepr]
	public struct GtkPictureClass
	{
		GtkWidgetClass parent_class;
	}
	public enum GtkPolicyType : c_int
	{
		GTK_POLICY_ALWAYS,
		GTK_POLICY_AUTOMATIC,
		GTK_POLICY_NEVER,
		GTK_POLICY_EXTERNAL
	}
	[CRepr]
	public struct GtkPopover;
	[LinkName("gtk_popover_new")]
	public static extern GtkWidget* popover_new();
	[LinkName("gtk_popover_get_autohide")]
	public static extern c_int popover_get_autohide(GtkPopover* popover);
	[LinkName("gtk_popover_get_cascade_popdown")]
	public static extern c_int popover_get_cascade_popdown(GtkPopover* popover);
	[LinkName("gtk_popover_get_child")]
	public static extern GtkWidget* popover_get_child(GtkPopover* popover);
	[LinkName("gtk_popover_get_has_arrow")]
	public static extern c_int popover_get_has_arrow(GtkPopover* popover);
	[LinkName("gtk_popover_get_mnemonics_visible")]
	public static extern c_int popover_get_mnemonics_visible(GtkPopover* popover);
	[LinkName("gtk_popover_get_offset")]
	public static extern void popover_get_offset(GtkPopover* popover, c_int* x_offset, c_int* y_offset);
	[LinkName("gtk_popover_get_pointing_to")]
	public static extern c_int popover_get_pointing_to(GtkPopover* popover, GdkRectangle* rect);
	[LinkName("gtk_popover_get_position")]
	public static extern GtkPositionType popover_get_position(GtkPopover* popover);
	[LinkName("gtk_popover_popdown")]
	public static extern void popover_popdown(GtkPopover* popover);
	[LinkName("gtk_popover_popup")]
	public static extern void popover_popup(GtkPopover* popover);
	[LinkName("gtk_popover_present")]
	public static extern void popover_present(GtkPopover* popover);
	[LinkName("gtk_popover_set_autohide")]
	public static extern void popover_set_autohide(GtkPopover* popover, c_int autohide);
	[LinkName("gtk_popover_set_cascade_popdown")]
	public static extern void popover_set_cascade_popdown(GtkPopover* popover, c_int cascade_popdown);
	[LinkName("gtk_popover_set_child")]
	public static extern void popover_set_child(GtkPopover* popover, GtkWidget* child);
	[LinkName("gtk_popover_set_default_widget")]
	public static extern void popover_set_default_widget(GtkPopover* popover, GtkWidget* widget);
	[LinkName("gtk_popover_set_has_arrow")]
	public static extern void popover_set_has_arrow(GtkPopover* popover, c_int has_arrow);
	[LinkName("gtk_popover_set_mnemonics_visible")]
	public static extern void popover_set_mnemonics_visible(GtkPopover* popover, c_int mnemonics_visible);
	[LinkName("gtk_popover_set_offset")]
	public static extern void popover_set_offset(GtkPopover* popover, c_int x_offset, c_int y_offset);
	[LinkName("gtk_popover_set_pointing_to")]
	public static extern void popover_set_pointing_to(GtkPopover* popover,  GdkRectangle* rect);
	[LinkName("gtk_popover_set_position")]
	public static extern void popover_set_position(GtkPopover* popover, GtkPositionType position);
	[CRepr]
	public struct GtkPopoverClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkPopoverMenu;
	[LinkName("gtk_popover_menu_new_from_model")]
	public static extern GtkWidget* popover_menu_new_from_model(GMenuModel* model);
	[LinkName("gtk_popover_menu_new_from_model_full")]
	public static extern GtkWidget* popover_menu_new_from_model_full(GMenuModel* model, GtkPopoverMenuFlags flags);
	[LinkName("gtk_popover_menu_add_child")]
	public static extern c_int popover_menu_add_child(GtkPopoverMenu* popover, GtkWidget* child,  c_char* id);
	[LinkName("gtk_popover_menu_get_menu_model")]
	public static extern GMenuModel* popover_menu_get_menu_model(GtkPopoverMenu* popover);
	[LinkName("gtk_popover_menu_remove_child")]
	public static extern c_int popover_menu_remove_child(GtkPopoverMenu* popover, GtkWidget* child);
	[LinkName("gtk_popover_menu_set_menu_model")]
	public static extern void popover_menu_set_menu_model(GtkPopoverMenu* popover, GMenuModel* model);
	[CRepr]
	public struct GtkPopoverMenuBar;
	[LinkName("gtk_popover_menu_bar_new_from_model")]
	public static extern GtkWidget* popover_menu_bar_new_from_model(GMenuModel* model);
	[LinkName("gtk_popover_menu_bar_add_child")]
	public static extern c_int popover_menu_bar_add_child(GtkPopoverMenuBar* bar, GtkWidget* child,  c_char* id);
	[LinkName("gtk_popover_menu_bar_get_menu_model")]
	public static extern GMenuModel* popover_menu_bar_get_menu_model(GtkPopoverMenuBar* bar);
	[LinkName("gtk_popover_menu_bar_remove_child")]
	public static extern c_int popover_menu_bar_remove_child(GtkPopoverMenuBar* bar, GtkWidget* child);
	[LinkName("gtk_popover_menu_bar_set_menu_model")]
	public static extern void popover_menu_bar_set_menu_model(GtkPopoverMenuBar* bar, GMenuModel* model);
	[CRepr]
	public struct GtkPopoverMenuFlags
	{
		public const int GTK_POPOVER_MENU_NESTED = 1;
	}
	public enum GtkPositionType : c_int
	{
		GTK_POS_LEFT,
		GTK_POS_RIGHT,
		GTK_POS_TOP,
		GTK_POS_BOTTOM
	}
	[CRepr]
	public struct GtkPrintBackend
	{
	}
	[CRepr]
	public struct GtkPrintCapabilities
	{
		public const int GTK_PRINT_CAPABILITY_PAGE_SET = 1;
		public const int GTK_PRINT_CAPABILITY_COPIES = 2;
		public const int GTK_PRINT_CAPABILITY_COLLATE = 4;
		public const int GTK_PRINT_CAPABILITY_REVERSE = 8;
		public const int GTK_PRINT_CAPABILITY_SCALE = 16;
		public const int GTK_PRINT_CAPABILITY_GENERATE_PDF = 32;
		public const int GTK_PRINT_CAPABILITY_GENERATE_PS = 64;
		public const int GTK_PRINT_CAPABILITY_PREVIEW = 128;
		public const int GTK_PRINT_CAPABILITY_NUMBER_UP = 256;
		public const int GTK_PRINT_CAPABILITY_NUMBER_UP_LAYOUT = 512;
	}
	[CRepr]
	public struct GtkPrintContext;
	[LinkName("gtk_print_context_create_pango_context")]
	public static extern PangoContext* print_context_create_pango_context(GtkPrintContext* context);
	[LinkName("gtk_print_context_create_pango_layout")]
	public static extern PangoLayout* print_context_create_pango_layout(GtkPrintContext* context);
	[LinkName("gtk_print_context_get_cairo_context")]
	public static extern cairo_t* print_context_get_cairo_context(GtkPrintContext* context);
	[LinkName("gtk_print_context_get_dpi_x")]
	public static extern double print_context_get_dpi_x(GtkPrintContext* context);
	[LinkName("gtk_print_context_get_dpi_y")]
	public static extern double print_context_get_dpi_y(GtkPrintContext* context);
	[LinkName("gtk_print_context_get_hard_margins")]
	public static extern c_int print_context_get_hard_margins(GtkPrintContext* context, double* top, double* bottom, double* left, double* right);
	[LinkName("gtk_print_context_get_height")]
	public static extern double print_context_get_height(GtkPrintContext* context);
	[LinkName("gtk_print_context_get_page_setup")]
	public static extern GtkPageSetup* print_context_get_page_setup(GtkPrintContext* context);
	[LinkName("gtk_print_context_get_pango_fontmap")]
	public static extern PangoFontMap* print_context_get_pango_fontmap(GtkPrintContext* context);
	[LinkName("gtk_print_context_get_width")]
	public static extern double print_context_get_width(GtkPrintContext* context);
	[LinkName("gtk_print_context_set_cairo_context")]
	public static extern void print_context_set_cairo_context(GtkPrintContext* context, cairo_t* cr, double dpi_x, double dpi_y);
	public enum GtkPrintDuplex : c_int
	{
		GTK_PRINT_DUPLEX_SIMPLEX,
		GTK_PRINT_DUPLEX_HORIZONTAL,
		GTK_PRINT_DUPLEX_VERTICAL
	}
	public enum GtkPrintError : c_int
	{
		GTK_PRINT_ERROR_GENERAL,
		GTK_PRINT_ERROR_INTERNAL_ERROR,
		GTK_PRINT_ERROR_NOMEM,
		GTK_PRINT_ERROR_INVALID_FILE
	}
	[CRepr]
	public struct GtkPrintJob;
	[LinkName("gtk_print_job_new")]
	public static extern GtkPrintJob* print_job_new( c_char* title, GtkPrinter* printer, GtkPrintSettings* settings, GtkPageSetup* page_setup);
	[LinkName("gtk_print_job_get_collate")]
	public static extern c_int print_job_get_collate(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_n_up")]
	public static extern c_uint print_job_get_n_up(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_n_up_layout")]
	public static extern GtkNumberUpLayout print_job_get_n_up_layout(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_num_copies")]
	public static extern c_int print_job_get_num_copies(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_page_ranges")]
	public static extern GtkPageRange* print_job_get_page_ranges(GtkPrintJob* job, c_int* n_ranges);
	[LinkName("gtk_print_job_get_page_set")]
	public static extern GtkPageSet print_job_get_page_set(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_pages")]
	public static extern GtkPrintPages print_job_get_pages(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_printer")]
	public static extern GtkPrinter* print_job_get_printer(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_reverse")]
	public static extern c_int print_job_get_reverse(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_rotate")]
	public static extern c_int print_job_get_rotate(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_scale")]
	public static extern double print_job_get_scale(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_settings")]
	public static extern GtkPrintSettings* print_job_get_settings(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_status")]
	public static extern GtkPrintStatus print_job_get_status(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_surface")]
	public static extern cairo_surface_t* print_job_get_surface(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_title")]
	public static extern  c_char* print_job_get_title(GtkPrintJob* job);
	[LinkName("gtk_print_job_get_track_print_status")]
	public static extern c_int print_job_get_track_print_status(GtkPrintJob* job);
	[LinkName("gtk_print_job_send")]
	public static extern void print_job_send(GtkPrintJob* job, GtkPrintJobCompleteFunc callback, void* user_data, GDestroyNotify dnotify);
	[LinkName("gtk_print_job_set_collate")]
	public static extern void print_job_set_collate(GtkPrintJob* job, c_int collate);
	[LinkName("gtk_print_job_set_n_up")]
	public static extern void print_job_set_n_up(GtkPrintJob* job, c_uint n_up);
	[LinkName("gtk_print_job_set_n_up_layout")]
	public static extern void print_job_set_n_up_layout(GtkPrintJob* job, GtkNumberUpLayout layout);
	[LinkName("gtk_print_job_set_num_copies")]
	public static extern void print_job_set_num_copies(GtkPrintJob* job, c_int num_copies);
	[LinkName("gtk_print_job_set_page_ranges")]
	public static extern void print_job_set_page_ranges(GtkPrintJob* job, c_int n_ranges);
	[LinkName("gtk_print_job_set_page_set")]
	public static extern void print_job_set_page_set(GtkPrintJob* job, GtkPageSet page_set);
	[LinkName("gtk_print_job_set_pages")]
	public static extern void print_job_set_pages(GtkPrintJob* job, GtkPrintPages pages);
	[LinkName("gtk_print_job_set_reverse")]
	public static extern void print_job_set_reverse(GtkPrintJob* job, c_int reverse);
	[LinkName("gtk_print_job_set_rotate")]
	public static extern void print_job_set_rotate(GtkPrintJob* job, c_int rotate);
	[LinkName("gtk_print_job_set_scale")]
	public static extern void print_job_set_scale(GtkPrintJob* job, double scale);
	[LinkName("gtk_print_job_set_source_fd")]
	public static extern c_int print_job_set_source_fd(GtkPrintJob* job, c_int fd);
	[LinkName("gtk_print_job_set_source_file")]
	public static extern c_int print_job_set_source_file(GtkPrintJob* job,  c_char* filename);
	[LinkName("gtk_print_job_set_track_print_status")]
	public static extern void print_job_set_track_print_status(GtkPrintJob* job, c_int track_status);
	public function void GtkPrintJobCompleteFunc(GtkPrintJob* print_job, void* user_data,  GError* error);
	[CRepr]
	public struct GtkPrintOperation;
	[LinkName("gtk_print_operation_new")]
	public static extern GtkPrintOperation* print_operation_new();
	[LinkName("gtk_print_operation_cancel")]
	public static extern void print_operation_cancel(GtkPrintOperation* op);
	[LinkName("gtk_print_operation_draw_page_finish")]
	public static extern void print_operation_draw_page_finish(GtkPrintOperation* op);
	[LinkName("gtk_print_operation_get_default_page_setup")]
	public static extern GtkPageSetup* print_operation_get_default_page_setup(GtkPrintOperation* op);
	[LinkName("gtk_print_operation_get_embed_page_setup")]
	public static extern c_int print_operation_get_embed_page_setup(GtkPrintOperation* op);
	[LinkName("gtk_print_operation_get_error")]
	public static extern void print_operation_get_error(GtkPrintOperation* op);
	[LinkName("gtk_print_operation_get_has_selection")]
	public static extern c_int print_operation_get_has_selection(GtkPrintOperation* op);
	[LinkName("gtk_print_operation_get_n_pages_to_print")]
	public static extern c_int print_operation_get_n_pages_to_print(GtkPrintOperation* op);
	[LinkName("gtk_print_operation_get_print_settings")]
	public static extern GtkPrintSettings* print_operation_get_print_settings(GtkPrintOperation* op);
	[LinkName("gtk_print_operation_get_status")]
	public static extern GtkPrintStatus print_operation_get_status(GtkPrintOperation* op);
	[LinkName("gtk_print_operation_get_status_string")]
	public static extern  c_char* print_operation_get_status_string(GtkPrintOperation* op);
	[LinkName("gtk_print_operation_get_support_selection")]
	public static extern c_int print_operation_get_support_selection(GtkPrintOperation* op);
	[LinkName("gtk_print_operation_is_finished")]
	public static extern c_int print_operation_is_finished(GtkPrintOperation* op);
	[LinkName("gtk_print_operation_run")]
	public static extern GtkPrintOperationResult print_operation_run(GtkPrintOperation* op, GtkPrintOperationAction action, GtkWindow* parent);
	[LinkName("gtk_print_operation_set_allow_async")]
	public static extern void print_operation_set_allow_async(GtkPrintOperation* op, c_int allow_async);
	[LinkName("gtk_print_operation_set_current_page")]
	public static extern void print_operation_set_current_page(GtkPrintOperation* op, c_int current_page);
	[LinkName("gtk_print_operation_set_custom_tab_label")]
	public static extern void print_operation_set_custom_tab_label(GtkPrintOperation* op,  c_char* label);
	[LinkName("gtk_print_operation_set_default_page_setup")]
	public static extern void print_operation_set_default_page_setup(GtkPrintOperation* op, GtkPageSetup* default_page_setup);
	[LinkName("gtk_print_operation_set_defer_drawing")]
	public static extern void print_operation_set_defer_drawing(GtkPrintOperation* op);
	[LinkName("gtk_print_operation_set_embed_page_setup")]
	public static extern void print_operation_set_embed_page_setup(GtkPrintOperation* op, c_int embed);
	[LinkName("gtk_print_operation_set_export_filename")]
	public static extern void print_operation_set_export_filename(GtkPrintOperation* op,  c_char* filename);
	[LinkName("gtk_print_operation_set_has_selection")]
	public static extern void print_operation_set_has_selection(GtkPrintOperation* op, c_int has_selection);
	[LinkName("gtk_print_operation_set_job_name")]
	public static extern void print_operation_set_job_name(GtkPrintOperation* op,  c_char* job_name);
	[LinkName("gtk_print_operation_set_n_pages")]
	public static extern void print_operation_set_n_pages(GtkPrintOperation* op, c_int n_pages);
	[LinkName("gtk_print_operation_set_print_settings")]
	public static extern void print_operation_set_print_settings(GtkPrintOperation* op, GtkPrintSettings* print_settings);
	[LinkName("gtk_print_operation_set_show_progress")]
	public static extern void print_operation_set_show_progress(GtkPrintOperation* op, c_int show_progress);
	[LinkName("gtk_print_operation_set_support_selection")]
	public static extern void print_operation_set_support_selection(GtkPrintOperation* op, c_int support_selection);
	[LinkName("gtk_print_operation_set_track_print_status")]
	public static extern void print_operation_set_track_print_status(GtkPrintOperation* op, c_int track_status);
	[LinkName("gtk_print_operation_set_unit")]
	public static extern void print_operation_set_unit(GtkPrintOperation* op, GtkUnit unit);
	[LinkName("gtk_print_operation_set_use_full_page")]
	public static extern void print_operation_set_use_full_page(GtkPrintOperation* op, c_int full_page);
	public enum GtkPrintOperationAction : c_int
	{
		GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG,
		GTK_PRINT_OPERATION_ACTION_PRINT,
		GTK_PRINT_OPERATION_ACTION_PREVIEW,
		GTK_PRINT_OPERATION_ACTION_EXPORT
	}
	[CRepr]
	public struct GtkPrintOperationClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkPrintOperationPreview
	{
		public function void(GtkPrintOperationPreview* preview) end_preview;

		public function void(GtkPrintOperationPreview* preview, GtkPrintContext* context, GtkPageSetup* page_setup) got_page_size;

		public function c_int(GtkPrintOperationPreview* preview, c_int page_nr) is_selected;

		public function void(GtkPrintOperationPreview* preview, GtkPrintContext* context) ready;

		public function void(GtkPrintOperationPreview* preview, c_int page_nr) render_page;
	}
	[CRepr]
	public struct GtkPrintOperationPreviewIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GtkPrintOperationPrivate
	{
	}
	public enum GtkPrintOperationResult : c_int
	{
		GTK_PRINT_OPERATION_RESULT_ERROR,
		GTK_PRINT_OPERATION_RESULT_APPLY,
		GTK_PRINT_OPERATION_RESULT_CANCEL,
		GTK_PRINT_OPERATION_RESULT_IN_PROGRESS
	}
	public enum GtkPrintPages : c_int
	{
		GTK_PRINT_PAGES_ALL,
		GTK_PRINT_PAGES_CURRENT,
		GTK_PRINT_PAGES_RANGES,
		GTK_PRINT_PAGES_SELECTION
	}
	public enum GtkPrintQuality : c_int
	{
		GTK_PRINT_QUALITY_LOW,
		GTK_PRINT_QUALITY_NORMAL,
		GTK_PRINT_QUALITY_HIGH,
		GTK_PRINT_QUALITY_DRAFT
	}
	[CRepr]
	public struct GtkPrintSettings;
	[LinkName("gtk_print_settings_new")]
	public static extern GtkPrintSettings* print_settings_new();
	[LinkName("gtk_print_settings_new_from_file")]
	public static extern GtkPrintSettings* print_settings_new_from_file( c_char* file_name);
	[LinkName("gtk_print_settings_new_from_gvariant")]
	public static extern GtkPrintSettings* print_settings_new_from_gvariant(GVariant* variant);
	[LinkName("gtk_print_settings_new_from_key_file")]
	public static extern GtkPrintSettings* print_settings_new_from_key_file(GKeyFile* key_file,  c_char* group_name);
	[LinkName("gtk_print_settings_copy")]
	public static extern GtkPrintSettings* print_settings_copy(GtkPrintSettings* other);
	[LinkName("gtk_print_settings_foreach")]
	public static extern void print_settings_foreach(GtkPrintSettings* settings, GtkPrintSettingsFunc func, void* user_data);
	[LinkName("gtk_print_settings_get")]
	public static extern  c_char* print_settings_get(GtkPrintSettings* settings,  c_char* key);
	[LinkName("gtk_print_settings_get_bool")]
	public static extern c_int print_settings_get_bool(GtkPrintSettings* settings,  c_char* key);
	[LinkName("gtk_print_settings_get_collate")]
	public static extern c_int print_settings_get_collate(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_default_source")]
	public static extern  c_char* print_settings_get_default_source(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_dither")]
	public static extern  c_char* print_settings_get_dither(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_double")]
	public static extern double print_settings_get_double(GtkPrintSettings* settings,  c_char* key);
	[LinkName("gtk_print_settings_get_double_with_default")]
	public static extern double print_settings_get_double_with_default(GtkPrintSettings* settings,  c_char* key, double def);
	[LinkName("gtk_print_settings_get_duplex")]
	public static extern GtkPrintDuplex print_settings_get_duplex(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_finishings")]
	public static extern  c_char* print_settings_get_finishings(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_int")]
	public static extern c_int print_settings_get_int(GtkPrintSettings* settings,  c_char* key);
	[LinkName("gtk_print_settings_get_int_with_default")]
	public static extern c_int print_settings_get_int_with_default(GtkPrintSettings* settings,  c_char* key, c_int def);
	[LinkName("gtk_print_settings_get_length")]
	public static extern double print_settings_get_length(GtkPrintSettings* settings,  c_char* key, GtkUnit unit);
	[LinkName("gtk_print_settings_get_media_type")]
	public static extern  c_char* print_settings_get_media_type(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_n_copies")]
	public static extern c_int print_settings_get_n_copies(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_number_up")]
	public static extern c_int print_settings_get_number_up(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_number_up_layout")]
	public static extern GtkNumberUpLayout print_settings_get_number_up_layout(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_orientation")]
	public static extern GtkPageOrientation print_settings_get_orientation(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_output_bin")]
	public static extern  c_char* print_settings_get_output_bin(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_page_ranges")]
	public static extern GtkPageRange* print_settings_get_page_ranges(GtkPrintSettings* settings, c_int* num_ranges);
	[LinkName("gtk_print_settings_get_page_set")]
	public static extern GtkPageSet print_settings_get_page_set(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_paper_height")]
	public static extern double print_settings_get_paper_height(GtkPrintSettings* settings, GtkUnit unit);
	[LinkName("gtk_print_settings_get_paper_size")]
	public static extern GtkPaperSize* print_settings_get_paper_size(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_paper_width")]
	public static extern double print_settings_get_paper_width(GtkPrintSettings* settings, GtkUnit unit);
	[LinkName("gtk_print_settings_get_print_pages")]
	public static extern GtkPrintPages print_settings_get_print_pages(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_printer")]
	public static extern  c_char* print_settings_get_printer(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_printer_lpi")]
	public static extern double print_settings_get_printer_lpi(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_quality")]
	public static extern GtkPrintQuality print_settings_get_quality(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_resolution")]
	public static extern c_int print_settings_get_resolution(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_resolution_x")]
	public static extern c_int print_settings_get_resolution_x(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_resolution_y")]
	public static extern c_int print_settings_get_resolution_y(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_reverse")]
	public static extern c_int print_settings_get_reverse(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_scale")]
	public static extern double print_settings_get_scale(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_get_use_color")]
	public static extern c_int print_settings_get_use_color(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_has_key")]
	public static extern c_int print_settings_has_key(GtkPrintSettings* settings,  c_char* key);
	[LinkName("gtk_print_settings_load_file")]
	public static extern c_int print_settings_load_file(GtkPrintSettings* settings,  c_char* file_name);
	[LinkName("gtk_print_settings_load_key_file")]
	public static extern c_int print_settings_load_key_file(GtkPrintSettings* settings, GKeyFile* key_file,  c_char* group_name);
	[LinkName("gtk_print_settings_set")]
	public static extern void print_settings_set(GtkPrintSettings* settings,  c_char* key,  c_char* value);
	[LinkName("gtk_print_settings_set_bool")]
	public static extern void print_settings_set_bool(GtkPrintSettings* settings,  c_char* key, c_int value);
	[LinkName("gtk_print_settings_set_collate")]
	public static extern void print_settings_set_collate(GtkPrintSettings* settings, c_int collate);
	[LinkName("gtk_print_settings_set_default_source")]
	public static extern void print_settings_set_default_source(GtkPrintSettings* settings,  c_char* default_source);
	[LinkName("gtk_print_settings_set_dither")]
	public static extern void print_settings_set_dither(GtkPrintSettings* settings,  c_char* dither);
	[LinkName("gtk_print_settings_set_double")]
	public static extern void print_settings_set_double(GtkPrintSettings* settings,  c_char* key, double value);
	[LinkName("gtk_print_settings_set_duplex")]
	public static extern void print_settings_set_duplex(GtkPrintSettings* settings, GtkPrintDuplex duplex);
	[LinkName("gtk_print_settings_set_finishings")]
	public static extern void print_settings_set_finishings(GtkPrintSettings* settings,  c_char* finishings);
	[LinkName("gtk_print_settings_set_int")]
	public static extern void print_settings_set_int(GtkPrintSettings* settings,  c_char* key, c_int value);
	[LinkName("gtk_print_settings_set_length")]
	public static extern void print_settings_set_length(GtkPrintSettings* settings,  c_char* key, double value, GtkUnit unit);
	[LinkName("gtk_print_settings_set_media_type")]
	public static extern void print_settings_set_media_type(GtkPrintSettings* settings,  c_char* media_type);
	[LinkName("gtk_print_settings_set_n_copies")]
	public static extern void print_settings_set_n_copies(GtkPrintSettings* settings, c_int num_copies);
	[LinkName("gtk_print_settings_set_number_up")]
	public static extern void print_settings_set_number_up(GtkPrintSettings* settings, c_int number_up);
	[LinkName("gtk_print_settings_set_number_up_layout")]
	public static extern void print_settings_set_number_up_layout(GtkPrintSettings* settings, GtkNumberUpLayout number_up_layout);
	[LinkName("gtk_print_settings_set_orientation")]
	public static extern void print_settings_set_orientation(GtkPrintSettings* settings, GtkPageOrientation orientation);
	[LinkName("gtk_print_settings_set_output_bin")]
	public static extern void print_settings_set_output_bin(GtkPrintSettings* settings,  c_char* output_bin);
	[LinkName("gtk_print_settings_set_page_ranges")]
	public static extern void print_settings_set_page_ranges(GtkPrintSettings* settings, c_int num_ranges);
	[LinkName("gtk_print_settings_set_page_set")]
	public static extern void print_settings_set_page_set(GtkPrintSettings* settings, GtkPageSet page_set);
	[LinkName("gtk_print_settings_set_paper_height")]
	public static extern void print_settings_set_paper_height(GtkPrintSettings* settings, double height, GtkUnit unit);
	[LinkName("gtk_print_settings_set_paper_size")]
	public static extern void print_settings_set_paper_size(GtkPrintSettings* settings, GtkPaperSize* paper_size);
	[LinkName("gtk_print_settings_set_paper_width")]
	public static extern void print_settings_set_paper_width(GtkPrintSettings* settings, double width, GtkUnit unit);
	[LinkName("gtk_print_settings_set_print_pages")]
	public static extern void print_settings_set_print_pages(GtkPrintSettings* settings, GtkPrintPages pages);
	[LinkName("gtk_print_settings_set_printer")]
	public static extern void print_settings_set_printer(GtkPrintSettings* settings,  c_char* printer);
	[LinkName("gtk_print_settings_set_printer_lpi")]
	public static extern void print_settings_set_printer_lpi(GtkPrintSettings* settings, double lpi);
	[LinkName("gtk_print_settings_set_quality")]
	public static extern void print_settings_set_quality(GtkPrintSettings* settings, GtkPrintQuality quality);
	[LinkName("gtk_print_settings_set_resolution")]
	public static extern void print_settings_set_resolution(GtkPrintSettings* settings, c_int resolution);
	[LinkName("gtk_print_settings_set_resolution_xy")]
	public static extern void print_settings_set_resolution_xy(GtkPrintSettings* settings, c_int resolution_x, c_int resolution_y);
	[LinkName("gtk_print_settings_set_reverse")]
	public static extern void print_settings_set_reverse(GtkPrintSettings* settings, c_int reverse);
	[LinkName("gtk_print_settings_set_scale")]
	public static extern void print_settings_set_scale(GtkPrintSettings* settings, double scale);
	[LinkName("gtk_print_settings_set_use_color")]
	public static extern void print_settings_set_use_color(GtkPrintSettings* settings, c_int use_color);
	[LinkName("gtk_print_settings_to_file")]
	public static extern c_int print_settings_to_file(GtkPrintSettings* settings,  c_char* file_name);
	[LinkName("gtk_print_settings_to_gvariant")]
	public static extern GVariant* print_settings_to_gvariant(GtkPrintSettings* settings);
	[LinkName("gtk_print_settings_to_key_file")]
	public static extern void print_settings_to_key_file(GtkPrintSettings* settings, GKeyFile* key_file,  c_char* group_name);
	[LinkName("gtk_print_settings_unset")]
	public static extern void print_settings_unset(GtkPrintSettings* settings,  c_char* key);
	public function void GtkPrintSettingsFunc( c_char* key,  c_char* value, void* user_data);
	public enum GtkPrintStatus : c_int
	{
		GTK_PRINT_STATUS_INITIAL,
		GTK_PRINT_STATUS_PREPARING,
		GTK_PRINT_STATUS_GENERATING_DATA,
		GTK_PRINT_STATUS_SENDING_DATA,
		GTK_PRINT_STATUS_PENDING,
		GTK_PRINT_STATUS_PENDING_ISSUE,
		GTK_PRINT_STATUS_PRINTING,
		GTK_PRINT_STATUS_FINISHED,
		GTK_PRINT_STATUS_FINISHED_ABORTED
	}
	[CRepr]
	public struct GtkPrintUnixDialog;
	[LinkName("gtk_print_unix_dialog_new")]
	public static extern GtkWidget* print_unix_dialog_new( c_char* title, GtkWindow* parent);
	[LinkName("gtk_print_unix_dialog_add_custom_tab")]
	public static extern void print_unix_dialog_add_custom_tab(GtkPrintUnixDialog* dialog, GtkWidget* child, GtkWidget* tab_label);
	[LinkName("gtk_print_unix_dialog_get_current_page")]
	public static extern c_int print_unix_dialog_get_current_page(GtkPrintUnixDialog* dialog);
	[LinkName("gtk_print_unix_dialog_get_embed_page_setup")]
	public static extern c_int print_unix_dialog_get_embed_page_setup(GtkPrintUnixDialog* dialog);
	[LinkName("gtk_print_unix_dialog_get_has_selection")]
	public static extern c_int print_unix_dialog_get_has_selection(GtkPrintUnixDialog* dialog);
	[LinkName("gtk_print_unix_dialog_get_manual_capabilities")]
	public static extern GtkPrintCapabilities print_unix_dialog_get_manual_capabilities(GtkPrintUnixDialog* dialog);
	[LinkName("gtk_print_unix_dialog_get_page_setup")]
	public static extern GtkPageSetup* print_unix_dialog_get_page_setup(GtkPrintUnixDialog* dialog);
	[LinkName("gtk_print_unix_dialog_get_page_setup_set")]
	public static extern c_int print_unix_dialog_get_page_setup_set(GtkPrintUnixDialog* dialog);
	[LinkName("gtk_print_unix_dialog_get_selected_printer")]
	public static extern GtkPrinter* print_unix_dialog_get_selected_printer(GtkPrintUnixDialog* dialog);
	[LinkName("gtk_print_unix_dialog_get_settings")]
	public static extern GtkPrintSettings* print_unix_dialog_get_settings(GtkPrintUnixDialog* dialog);
	[LinkName("gtk_print_unix_dialog_get_support_selection")]
	public static extern c_int print_unix_dialog_get_support_selection(GtkPrintUnixDialog* dialog);
	[LinkName("gtk_print_unix_dialog_set_current_page")]
	public static extern void print_unix_dialog_set_current_page(GtkPrintUnixDialog* dialog, c_int current_page);
	[LinkName("gtk_print_unix_dialog_set_embed_page_setup")]
	public static extern void print_unix_dialog_set_embed_page_setup(GtkPrintUnixDialog* dialog, c_int embed);
	[LinkName("gtk_print_unix_dialog_set_has_selection")]
	public static extern void print_unix_dialog_set_has_selection(GtkPrintUnixDialog* dialog, c_int has_selection);
	[LinkName("gtk_print_unix_dialog_set_manual_capabilities")]
	public static extern void print_unix_dialog_set_manual_capabilities(GtkPrintUnixDialog* dialog, GtkPrintCapabilities capabilities);
	[LinkName("gtk_print_unix_dialog_set_page_setup")]
	public static extern void print_unix_dialog_set_page_setup(GtkPrintUnixDialog* dialog, GtkPageSetup* page_setup);
	[LinkName("gtk_print_unix_dialog_set_settings")]
	public static extern void print_unix_dialog_set_settings(GtkPrintUnixDialog* dialog, GtkPrintSettings* settings);
	[LinkName("gtk_print_unix_dialog_set_support_selection")]
	public static extern void print_unix_dialog_set_support_selection(GtkPrintUnixDialog* dialog, c_int support_selection);
	[CRepr]
	public struct GtkPrinter;
	[LinkName("gtk_printer_new")]
	public static extern GtkPrinter* printer_new( c_char* name, GtkPrintBackend* backend, c_int virtual_);
	[LinkName("gtk_printer_accepts_pdf")]
	public static extern c_int printer_accepts_pdf(GtkPrinter* printer);
	[LinkName("gtk_printer_accepts_ps")]
	public static extern c_int printer_accepts_ps(GtkPrinter* printer);
	[LinkName("gtk_printer_compare")]
	public static extern c_int printer_compare(GtkPrinter* a, GtkPrinter* b);
	[LinkName("gtk_printer_get_backend")]
	public static extern GtkPrintBackend* printer_get_backend(GtkPrinter* printer);
	[LinkName("gtk_printer_get_capabilities")]
	public static extern GtkPrintCapabilities printer_get_capabilities(GtkPrinter* printer);
	[LinkName("gtk_printer_get_default_page_size")]
	public static extern GtkPageSetup* printer_get_default_page_size(GtkPrinter* printer);
	[LinkName("gtk_printer_get_description")]
	public static extern  c_char* printer_get_description(GtkPrinter* printer);
	[LinkName("gtk_printer_get_hard_margins")]
	public static extern c_int printer_get_hard_margins(GtkPrinter* printer, double* top, double* bottom, double* left, double* right);
	[LinkName("gtk_printer_get_hard_margins_for_paper_size")]
	public static extern c_int printer_get_hard_margins_for_paper_size(GtkPrinter* printer, GtkPaperSize* paper_size, double* top, double* bottom, double* left, double* right);
	[LinkName("gtk_printer_get_icon_name")]
	public static extern  c_char* printer_get_icon_name(GtkPrinter* printer);
	[LinkName("gtk_printer_get_job_count")]
	public static extern c_int printer_get_job_count(GtkPrinter* printer);
	[LinkName("gtk_printer_get_location")]
	public static extern  c_char* printer_get_location(GtkPrinter* printer);
	[LinkName("gtk_printer_get_name")]
	public static extern  c_char* printer_get_name(GtkPrinter* printer);
	[LinkName("gtk_printer_get_state_message")]
	public static extern  c_char* printer_get_state_message(GtkPrinter* printer);
	[LinkName("gtk_printer_has_details")]
	public static extern c_int printer_has_details(GtkPrinter* printer);
	[LinkName("gtk_printer_is_accepting_jobs")]
	public static extern c_int printer_is_accepting_jobs(GtkPrinter* printer);
	[LinkName("gtk_printer_is_active")]
	public static extern c_int printer_is_active(GtkPrinter* printer);
	[LinkName("gtk_printer_is_default")]
	public static extern c_int printer_is_default(GtkPrinter* printer);
	[LinkName("gtk_printer_is_paused")]
	public static extern c_int printer_is_paused(GtkPrinter* printer);
	[LinkName("gtk_printer_is_virtual")]
	public static extern c_int printer_is_virtual(GtkPrinter* printer);
	[LinkName("gtk_printer_list_papers")]
	public static extern GList* printer_list_papers(GtkPrinter* printer);
	[LinkName("gtk_printer_request_details")]
	public static extern void printer_request_details(GtkPrinter* printer);
	public function c_int GtkPrinterFunc(GtkPrinter* printer, void* data);
	[CRepr]
	public struct GtkProgressBar;
	[LinkName("gtk_progress_bar_new")]
	public static extern GtkWidget* progress_bar_new();
	[LinkName("gtk_progress_bar_get_ellipsize")]
	public static extern PangoEllipsizeMode progress_bar_get_ellipsize(GtkProgressBar* pbar);
	[LinkName("gtk_progress_bar_get_fraction")]
	public static extern double progress_bar_get_fraction(GtkProgressBar* pbar);
	[LinkName("gtk_progress_bar_get_inverted")]
	public static extern c_int progress_bar_get_inverted(GtkProgressBar* pbar);
	[LinkName("gtk_progress_bar_get_pulse_step")]
	public static extern double progress_bar_get_pulse_step(GtkProgressBar* pbar);
	[LinkName("gtk_progress_bar_get_show_text")]
	public static extern c_int progress_bar_get_show_text(GtkProgressBar* pbar);
	[LinkName("gtk_progress_bar_get_text")]
	public static extern  c_char* progress_bar_get_text(GtkProgressBar* pbar);
	[LinkName("gtk_progress_bar_pulse")]
	public static extern void progress_bar_pulse(GtkProgressBar* pbar);
	[LinkName("gtk_progress_bar_set_ellipsize")]
	public static extern void progress_bar_set_ellipsize(GtkProgressBar* pbar, PangoEllipsizeMode mode);
	[LinkName("gtk_progress_bar_set_fraction")]
	public static extern void progress_bar_set_fraction(GtkProgressBar* pbar, double fraction);
	[LinkName("gtk_progress_bar_set_inverted")]
	public static extern void progress_bar_set_inverted(GtkProgressBar* pbar, c_int inverted);
	[LinkName("gtk_progress_bar_set_pulse_step")]
	public static extern void progress_bar_set_pulse_step(GtkProgressBar* pbar, double fraction);
	[LinkName("gtk_progress_bar_set_show_text")]
	public static extern void progress_bar_set_show_text(GtkProgressBar* pbar, c_int show_text);
	[LinkName("gtk_progress_bar_set_text")]
	public static extern void progress_bar_set_text(GtkProgressBar* pbar,  c_char* text);
	public enum GtkPropagationLimit : c_int
	{
		GTK_LIMIT_NONE,
		GTK_LIMIT_SAME_NATIVE
	}
	public enum GtkPropagationPhase : c_int
	{
		GTK_PHASE_NONE,
		GTK_PHASE_CAPTURE,
		GTK_PHASE_BUBBLE,
		GTK_PHASE_TARGET
	}
	[CRepr]
	public struct GtkPropertyExpression;
	[LinkName("gtk_property_expression_new")]
	public static extern GtkExpression* property_expression_new(GType this_type, GtkExpression* expression,  c_char* property_name);
	[LinkName("gtk_property_expression_new_for_pspec")]
	public static extern GtkExpression* property_expression_new_for_pspec(GtkExpression* expression, GParamSpec* pspec);
	[LinkName("gtk_property_expression_get_expression")]
	public static extern GtkExpression* property_expression_get_expression(GtkExpression* expression);
	[LinkName("gtk_property_expression_get_pspec")]
	public static extern GParamSpec* property_expression_get_pspec(GtkExpression* expression);
	[CRepr]
	public struct GtkRange;
	[LinkName("gtk_range_get_adjustment")]
	public static extern GtkAdjustment* range_get_adjustment(GtkRange* range);
	[LinkName("gtk_range_get_fill_level")]
	public static extern double range_get_fill_level(GtkRange* range);
	[LinkName("gtk_range_get_flippable")]
	public static extern c_int range_get_flippable(GtkRange* range);
	[LinkName("gtk_range_get_inverted")]
	public static extern c_int range_get_inverted(GtkRange* range);
	[LinkName("gtk_range_get_range_rect")]
	public static extern void range_get_range_rect(GtkRange* range, GdkRectangle* range_rect);
	[LinkName("gtk_range_get_restrict_to_fill_level")]
	public static extern c_int range_get_restrict_to_fill_level(GtkRange* range);
	[LinkName("gtk_range_get_round_digits")]
	public static extern c_int range_get_round_digits(GtkRange* range);
	[LinkName("gtk_range_get_show_fill_level")]
	public static extern c_int range_get_show_fill_level(GtkRange* range);
	[LinkName("gtk_range_get_slider_range")]
	public static extern void range_get_slider_range(GtkRange* range, c_int* slider_start, c_int* slider_end);
	[LinkName("gtk_range_get_slider_size_fixed")]
	public static extern c_int range_get_slider_size_fixed(GtkRange* range);
	[LinkName("gtk_range_get_value")]
	public static extern double range_get_value(GtkRange* range);
	[LinkName("gtk_range_set_adjustment")]
	public static extern void range_set_adjustment(GtkRange* range, GtkAdjustment* adjustment);
	[LinkName("gtk_range_set_fill_level")]
	public static extern void range_set_fill_level(GtkRange* range, double fill_level);
	[LinkName("gtk_range_set_flippable")]
	public static extern void range_set_flippable(GtkRange* range, c_int flippable);
	[LinkName("gtk_range_set_increments")]
	public static extern void range_set_increments(GtkRange* range, double step, double page);
	[LinkName("gtk_range_set_inverted")]
	public static extern void range_set_inverted(GtkRange* range, c_int setting);
	[LinkName("gtk_range_set_range")]
	public static extern void range_set_range(GtkRange* range, double min, double max);
	[LinkName("gtk_range_set_restrict_to_fill_level")]
	public static extern void range_set_restrict_to_fill_level(GtkRange* range, c_int restrict_to_fill_level);
	[LinkName("gtk_range_set_round_digits")]
	public static extern void range_set_round_digits(GtkRange* range, c_int round_digits);
	[LinkName("gtk_range_set_show_fill_level")]
	public static extern void range_set_show_fill_level(GtkRange* range, c_int show_fill_level);
	[LinkName("gtk_range_set_slider_size_fixed")]
	public static extern void range_set_slider_size_fixed(GtkRange* range, c_int size_fixed);
	[LinkName("gtk_range_set_value")]
	public static extern void range_set_value(GtkRange* range, double value);
	[CRepr]
	public struct GtkRangeClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkRecentData
	{
		c_char* display_name;
		c_char* description;
		c_char* mime_type;
		c_char* app_name;
		c_char* app_exec;
		c_int is_private;
	}
	[CRepr]
	public struct GtkRecentInfo
	{
	}
	[CRepr]
	public struct GtkRecentManager;
	[LinkName("gtk_recent_manager_new")]
	public static extern GtkRecentManager* recent_manager_new();
	[LinkName("gtk_recent_manager_add_full")]
	public static extern c_int recent_manager_add_full(GtkRecentManager* manager,  c_char* uri,  GtkRecentData* recent_data);
	[LinkName("gtk_recent_manager_add_item")]
	public static extern c_int recent_manager_add_item(GtkRecentManager* manager,  c_char* uri);
	[LinkName("gtk_recent_manager_get_items")]
	public static extern GList* recent_manager_get_items(GtkRecentManager* manager);
	[LinkName("gtk_recent_manager_has_item")]
	public static extern c_int recent_manager_has_item(GtkRecentManager* manager,  c_char* uri);
	[LinkName("gtk_recent_manager_lookup_item")]
	public static extern GtkRecentInfo* recent_manager_lookup_item(GtkRecentManager* manager,  c_char* uri);
	[LinkName("gtk_recent_manager_move_item")]
	public static extern c_int recent_manager_move_item(GtkRecentManager* manager,  c_char* uri,  c_char* new_uri);
	[LinkName("gtk_recent_manager_purge_items")]
	public static extern c_int recent_manager_purge_items(GtkRecentManager* manager);
	[LinkName("gtk_recent_manager_remove_item")]
	public static extern c_int recent_manager_remove_item(GtkRecentManager* manager,  c_char* uri);
	[CRepr]
	public struct GtkRecentManagerClass
	{
		GObjectClass parent_class;
	}
	public enum GtkRecentManagerError : c_int
	{
		GTK_RECENT_MANAGER_ERROR_NOT_FOUND,
		GTK_RECENT_MANAGER_ERROR_INVALID_URI,
		GTK_RECENT_MANAGER_ERROR_INVALID_ENCODING,
		GTK_RECENT_MANAGER_ERROR_NOT_REGISTERED,
		GTK_RECENT_MANAGER_ERROR_READ,
		GTK_RECENT_MANAGER_ERROR_WRITE,
		GTK_RECENT_MANAGER_ERROR_UNKNOWN
	}
	[CRepr]
	public struct GtkRecentManagerPrivate
	{
	}
	[CRepr]
	public struct GtkRequestedSize
	{
		void* data;
		c_int minimum_size;
		c_int natural_size;
	}
	[CRepr]
	public struct GtkRequisition
	{
		c_int width;
		c_int height;
	}
	public enum GtkResponseType : c_int
	{
		GTK_RESPONSE_NONE,
		GTK_RESPONSE_REJECT,
		GTK_RESPONSE_ACCEPT,
		GTK_RESPONSE_DELETE_EVENT,
		GTK_RESPONSE_OK,
		GTK_RESPONSE_CANCEL,
		GTK_RESPONSE_CLOSE,
		GTK_RESPONSE_YES,
		GTK_RESPONSE_NO,
		GTK_RESPONSE_APPLY,
		GTK_RESPONSE_HELP
	}
	[CRepr]
	public struct GtkRevealer;
	[LinkName("gtk_revealer_new")]
	public static extern GtkWidget* revealer_new();
	[LinkName("gtk_revealer_get_child")]
	public static extern GtkWidget* revealer_get_child(GtkRevealer* revealer);
	[LinkName("gtk_revealer_get_child_revealed")]
	public static extern c_int revealer_get_child_revealed(GtkRevealer* revealer);
	[LinkName("gtk_revealer_get_reveal_child")]
	public static extern c_int revealer_get_reveal_child(GtkRevealer* revealer);
	[LinkName("gtk_revealer_get_transition_duration")]
	public static extern c_uint revealer_get_transition_duration(GtkRevealer* revealer);
	[LinkName("gtk_revealer_get_transition_type")]
	public static extern GtkRevealerTransitionType revealer_get_transition_type(GtkRevealer* revealer);
	[LinkName("gtk_revealer_set_child")]
	public static extern void revealer_set_child(GtkRevealer* revealer, GtkWidget* child);
	[LinkName("gtk_revealer_set_reveal_child")]
	public static extern void revealer_set_reveal_child(GtkRevealer* revealer, c_int reveal_child);
	[LinkName("gtk_revealer_set_transition_duration")]
	public static extern void revealer_set_transition_duration(GtkRevealer* revealer, c_uint duration);
	[LinkName("gtk_revealer_set_transition_type")]
	public static extern void revealer_set_transition_type(GtkRevealer* revealer, GtkRevealerTransitionType transition);
	public enum GtkRevealerTransitionType : c_int
	{
		GTK_REVEALER_TRANSITION_TYPE_NONE,
		GTK_REVEALER_TRANSITION_TYPE_CROSSFADE,
		GTK_REVEALER_TRANSITION_TYPE_SLIDE_RIGHT,
		GTK_REVEALER_TRANSITION_TYPE_SLIDE_LEFT,
		GTK_REVEALER_TRANSITION_TYPE_SLIDE_UP,
		GTK_REVEALER_TRANSITION_TYPE_SLIDE_DOWN,
		GTK_REVEALER_TRANSITION_TYPE_SWING_RIGHT,
		GTK_REVEALER_TRANSITION_TYPE_SWING_LEFT,
		GTK_REVEALER_TRANSITION_TYPE_SWING_UP,
		GTK_REVEALER_TRANSITION_TYPE_SWING_DOWN
	}
	[CRepr]
	public struct GtkRoot
	{	}
	[CRepr]
	public struct GtkRootInterface
	{
	}
	[CRepr]
	public struct GtkScale;
	[LinkName("gtk_scale_new")]
	public static extern GtkWidget* scale_new(GtkOrientation orientation, GtkAdjustment* adjustment);
	[LinkName("gtk_scale_new_with_range")]
	public static extern GtkWidget* scale_new_with_range(GtkOrientation orientation, double min, double max, double step);
	[LinkName("gtk_scale_add_mark")]
	public static extern void scale_add_mark(GtkScale* scale, double value, GtkPositionType position,  c_char* markup);
	[LinkName("gtk_scale_clear_marks")]
	public static extern void scale_clear_marks(GtkScale* scale);
	[LinkName("gtk_scale_get_digits")]
	public static extern c_int scale_get_digits(GtkScale* scale);
	[LinkName("gtk_scale_get_draw_value")]
	public static extern c_int scale_get_draw_value(GtkScale* scale);
	[LinkName("gtk_scale_get_has_origin")]
	public static extern c_int scale_get_has_origin(GtkScale* scale);
	[LinkName("gtk_scale_get_layout")]
	public static extern PangoLayout* scale_get_layout(GtkScale* scale);
	[LinkName("gtk_scale_get_layout_offsets")]
	public static extern void scale_get_layout_offsets(GtkScale* scale, c_int* x, c_int* y);
	[LinkName("gtk_scale_get_value_pos")]
	public static extern GtkPositionType scale_get_value_pos(GtkScale* scale);
	[LinkName("gtk_scale_set_digits")]
	public static extern void scale_set_digits(GtkScale* scale, c_int digits);
	[LinkName("gtk_scale_set_draw_value")]
	public static extern void scale_set_draw_value(GtkScale* scale, c_int draw_value);
	[LinkName("gtk_scale_set_format_value_func")]
	public static extern void scale_set_format_value_func(GtkScale* scale, GtkScaleFormatValueFunc func, void* user_data, GDestroyNotify destroy_notify);
	[LinkName("gtk_scale_set_has_origin")]
	public static extern void scale_set_has_origin(GtkScale* scale, c_int has_origin);
	[LinkName("gtk_scale_set_value_pos")]
	public static extern void scale_set_value_pos(GtkScale* scale, GtkPositionType pos);
	[CRepr]
	public struct GtkScaleButton;
	[LinkName("gtk_scale_button_new")]
	public static extern GtkWidget* scale_button_new(double min, double max, double step);
	[LinkName("gtk_scale_button_get_active")]
	public static extern c_int scale_button_get_active(GtkScaleButton* button);
	[LinkName("gtk_scale_button_get_adjustment")]
	public static extern GtkAdjustment* scale_button_get_adjustment(GtkScaleButton* button);
	[LinkName("gtk_scale_button_get_minus_button")]
	public static extern GtkWidget* scale_button_get_minus_button(GtkScaleButton* button);
	[LinkName("gtk_scale_button_get_plus_button")]
	public static extern GtkWidget* scale_button_get_plus_button(GtkScaleButton* button);
	[LinkName("gtk_scale_button_get_popup")]
	public static extern GtkWidget* scale_button_get_popup(GtkScaleButton* button);
	[LinkName("gtk_scale_button_get_value")]
	public static extern double scale_button_get_value(GtkScaleButton* button);
	[LinkName("gtk_scale_button_set_adjustment")]
	public static extern void scale_button_set_adjustment(GtkScaleButton* button, GtkAdjustment* adjustment);
	[LinkName("gtk_scale_button_set_icons")]
	public static extern void scale_button_set_icons(GtkScaleButton* button);
	[LinkName("gtk_scale_button_set_value")]
	public static extern void scale_button_set_value(GtkScaleButton* button, double value);
	[CRepr]
	public struct GtkScaleButtonClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkScaleClass
	{
		GtkRangeClass parent_class;
	}
	public function c_char* GtkScaleFormatValueFunc(GtkScale* scale, double value, void* user_data);
	public enum GtkScrollStep : c_int
	{
		GTK_SCROLL_STEPS,
		GTK_SCROLL_PAGES,
		GTK_SCROLL_ENDS,
		GTK_SCROLL_HORIZONTAL_STEPS,
		GTK_SCROLL_HORIZONTAL_PAGES,
		GTK_SCROLL_HORIZONTAL_ENDS
	}
	public enum GtkScrollType : c_int
	{
		GTK_SCROLL_NONE,
		GTK_SCROLL_JUMP,
		GTK_SCROLL_STEP_BACKWARD,
		GTK_SCROLL_STEP_FORWARD,
		GTK_SCROLL_PAGE_BACKWARD,
		GTK_SCROLL_PAGE_FORWARD,
		GTK_SCROLL_STEP_UP,
		GTK_SCROLL_STEP_DOWN,
		GTK_SCROLL_PAGE_UP,
		GTK_SCROLL_PAGE_DOWN,
		GTK_SCROLL_STEP_LEFT,
		GTK_SCROLL_STEP_RIGHT,
		GTK_SCROLL_PAGE_LEFT,
		GTK_SCROLL_PAGE_RIGHT,
		GTK_SCROLL_START,
		GTK_SCROLL_END
	}
	[CRepr]
	public struct GtkScrollable
	{
		public function c_int(GtkScrollable* scrollable, GtkBorder* border) get_border;
	}
	[CRepr]
	public struct GtkScrollableInterface
	{
		GTypeInterface base_iface;
	}
	public enum GtkScrollablePolicy : c_int
	{
		GTK_SCROLL_MINIMUM,
		GTK_SCROLL_NATURAL
	}
	[CRepr]
	public struct GtkScrollbar;
	[LinkName("gtk_scrollbar_new")]
	public static extern GtkWidget* scrollbar_new(GtkOrientation orientation, GtkAdjustment* adjustment);
	[LinkName("gtk_scrollbar_get_adjustment")]
	public static extern GtkAdjustment* scrollbar_get_adjustment(GtkScrollbar* self);
	[LinkName("gtk_scrollbar_set_adjustment")]
	public static extern void scrollbar_set_adjustment(GtkScrollbar* self, GtkAdjustment* adjustment);
	[CRepr]
	public struct GtkScrolledWindow;
	[LinkName("gtk_scrolled_window_new")]
	public static extern GtkWidget* scrolled_window_new();
	[LinkName("gtk_scrolled_window_get_child")]
	public static extern GtkWidget* scrolled_window_get_child(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_hadjustment")]
	public static extern GtkAdjustment* scrolled_window_get_hadjustment(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_has_frame")]
	public static extern c_int scrolled_window_get_has_frame(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_hscrollbar")]
	public static extern GtkWidget* scrolled_window_get_hscrollbar(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_kinetic_scrolling")]
	public static extern c_int scrolled_window_get_kinetic_scrolling(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_max_content_height")]
	public static extern c_int scrolled_window_get_max_content_height(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_max_content_width")]
	public static extern c_int scrolled_window_get_max_content_width(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_min_content_height")]
	public static extern c_int scrolled_window_get_min_content_height(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_min_content_width")]
	public static extern c_int scrolled_window_get_min_content_width(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_overlay_scrolling")]
	public static extern c_int scrolled_window_get_overlay_scrolling(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_placement")]
	public static extern GtkCornerType scrolled_window_get_placement(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_policy")]
	public static extern void scrolled_window_get_policy(GtkScrolledWindow* scrolled_window, GtkPolicyType* hscrollbar_policy, GtkPolicyType* vscrollbar_policy);
	[LinkName("gtk_scrolled_window_get_propagate_natural_height")]
	public static extern c_int scrolled_window_get_propagate_natural_height(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_propagate_natural_width")]
	public static extern c_int scrolled_window_get_propagate_natural_width(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_vadjustment")]
	public static extern GtkAdjustment* scrolled_window_get_vadjustment(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_get_vscrollbar")]
	public static extern GtkWidget* scrolled_window_get_vscrollbar(GtkScrolledWindow* scrolled_window);
	[LinkName("gtk_scrolled_window_set_child")]
	public static extern void scrolled_window_set_child(GtkScrolledWindow* scrolled_window, GtkWidget* child);
	[LinkName("gtk_scrolled_window_set_hadjustment")]
	public static extern void scrolled_window_set_hadjustment(GtkScrolledWindow* scrolled_window, GtkAdjustment* hadjustment);
	[LinkName("gtk_scrolled_window_set_has_frame")]
	public static extern void scrolled_window_set_has_frame(GtkScrolledWindow* scrolled_window, c_int has_frame);
	[LinkName("gtk_scrolled_window_set_kinetic_scrolling")]
	public static extern void scrolled_window_set_kinetic_scrolling(GtkScrolledWindow* scrolled_window, c_int kinetic_scrolling);
	[LinkName("gtk_scrolled_window_set_max_content_height")]
	public static extern void scrolled_window_set_max_content_height(GtkScrolledWindow* scrolled_window, c_int height);
	[LinkName("gtk_scrolled_window_set_max_content_width")]
	public static extern void scrolled_window_set_max_content_width(GtkScrolledWindow* scrolled_window, c_int width);
	[LinkName("gtk_scrolled_window_set_min_content_height")]
	public static extern void scrolled_window_set_min_content_height(GtkScrolledWindow* scrolled_window, c_int height);
	[LinkName("gtk_scrolled_window_set_min_content_width")]
	public static extern void scrolled_window_set_min_content_width(GtkScrolledWindow* scrolled_window, c_int width);
	[LinkName("gtk_scrolled_window_set_overlay_scrolling")]
	public static extern void scrolled_window_set_overlay_scrolling(GtkScrolledWindow* scrolled_window, c_int overlay_scrolling);
	[LinkName("gtk_scrolled_window_set_placement")]
	public static extern void scrolled_window_set_placement(GtkScrolledWindow* scrolled_window, GtkCornerType window_placement);
	[LinkName("gtk_scrolled_window_set_policy")]
	public static extern void scrolled_window_set_policy(GtkScrolledWindow* scrolled_window, GtkPolicyType hscrollbar_policy, GtkPolicyType vscrollbar_policy);
	[LinkName("gtk_scrolled_window_set_propagate_natural_height")]
	public static extern void scrolled_window_set_propagate_natural_height(GtkScrolledWindow* scrolled_window, c_int propagate);
	[LinkName("gtk_scrolled_window_set_propagate_natural_width")]
	public static extern void scrolled_window_set_propagate_natural_width(GtkScrolledWindow* scrolled_window, c_int propagate);
	[LinkName("gtk_scrolled_window_set_vadjustment")]
	public static extern void scrolled_window_set_vadjustment(GtkScrolledWindow* scrolled_window, GtkAdjustment* vadjustment);
	[LinkName("gtk_scrolled_window_unset_placement")]
	public static extern void scrolled_window_unset_placement(GtkScrolledWindow* scrolled_window);
	[CRepr]
	public struct GtkSearchBar;
	[LinkName("gtk_search_bar_new")]
	public static extern GtkWidget* search_bar_new();
	[LinkName("gtk_search_bar_connect_entry")]
	public static extern void search_bar_connect_entry(GtkSearchBar* bar, GtkEditable* entry);
	[LinkName("gtk_search_bar_get_child")]
	public static extern GtkWidget* search_bar_get_child(GtkSearchBar* bar);
	[LinkName("gtk_search_bar_get_key_capture_widget")]
	public static extern GtkWidget* search_bar_get_key_capture_widget(GtkSearchBar* bar);
	[LinkName("gtk_search_bar_get_search_mode")]
	public static extern c_int search_bar_get_search_mode(GtkSearchBar* bar);
	[LinkName("gtk_search_bar_get_show_close_button")]
	public static extern c_int search_bar_get_show_close_button(GtkSearchBar* bar);
	[LinkName("gtk_search_bar_set_child")]
	public static extern void search_bar_set_child(GtkSearchBar* bar, GtkWidget* child);
	[LinkName("gtk_search_bar_set_key_capture_widget")]
	public static extern void search_bar_set_key_capture_widget(GtkSearchBar* bar, GtkWidget* widget);
	[LinkName("gtk_search_bar_set_search_mode")]
	public static extern void search_bar_set_search_mode(GtkSearchBar* bar, c_int search_mode);
	[LinkName("gtk_search_bar_set_show_close_button")]
	public static extern void search_bar_set_show_close_button(GtkSearchBar* bar, c_int visible);
	[CRepr]
	public struct GtkSearchEntry;
	[LinkName("gtk_search_entry_new")]
	public static extern GtkWidget* search_entry_new();
	[LinkName("gtk_search_entry_get_key_capture_widget")]
	public static extern GtkWidget* search_entry_get_key_capture_widget(GtkSearchEntry* entry);
	[LinkName("gtk_search_entry_get_placeholder_text")]
	public static extern  c_char* search_entry_get_placeholder_text(GtkSearchEntry* entry);
	[LinkName("gtk_search_entry_get_search_delay")]
	public static extern c_uint search_entry_get_search_delay(GtkSearchEntry* entry);
	[LinkName("gtk_search_entry_set_key_capture_widget")]
	public static extern void search_entry_set_key_capture_widget(GtkSearchEntry* entry, GtkWidget* widget);
	[LinkName("gtk_search_entry_set_placeholder_text")]
	public static extern void search_entry_set_placeholder_text(GtkSearchEntry* entry,  c_char* text);
	[LinkName("gtk_search_entry_set_search_delay")]
	public static extern void search_entry_set_search_delay(GtkSearchEntry* entry, c_uint delay);
	[CRepr]
	public struct GtkSectionModel
	{
		public function void(GtkSectionModel this, c_uint position, c_uint* out_start, c_uint* out_end) get_section;
	}
	[CRepr]
	public struct GtkSectionModelInterface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GtkSelectionFilterModel;
	[LinkName("gtk_selection_filter_model_new")]
	public static extern GtkSelectionFilterModel* selection_filter_model_new(GtkSelectionModel* model);
	[LinkName("gtk_selection_filter_model_get_model")]
	public static extern GtkSelectionModel* selection_filter_model_get_model(GtkSelectionFilterModel* self);
	[LinkName("gtk_selection_filter_model_set_model")]
	public static extern void selection_filter_model_set_model(GtkSelectionFilterModel* self, GtkSelectionModel* model);
	[CRepr]
	public struct GtkSelectionFilterModelClass
	{
		GObjectClass parent_class;
	}
	public enum GtkSelectionMode : c_int
	{
		GTK_SELECTION_NONE,
		GTK_SELECTION_SINGLE,
		GTK_SELECTION_BROWSE,
		GTK_SELECTION_MULTIPLE
	}
	[CRepr]
	public struct GtkSelectionModel
	{
		public function GtkBitset*(GtkSelectionModel* model, c_uint position, c_uint n_items) get_selection_in_range;

		public function c_int(GtkSelectionModel* model, c_uint position) is_selected;

		public function c_int(GtkSelectionModel* model) select_all;

		public function c_int(GtkSelectionModel* model, c_uint position, c_int unselect_rest) select_item;

		public function c_int(GtkSelectionModel* model, c_uint position, c_uint n_items, c_int unselect_rest) select_range;

		public function c_int(GtkSelectionModel* model, GtkBitset* selected, GtkBitset* mask) set_selection;

		public function c_int(GtkSelectionModel* model) unselect_all;

		public function c_int(GtkSelectionModel* model, c_uint position) unselect_item;

		public function c_int(GtkSelectionModel* model, c_uint position, c_uint n_items) unselect_range;
	}
	[CRepr]
	public struct GtkSelectionModelInterface
	{
		GTypeInterface g_iface;
	}
	public enum GtkSensitivityType : c_int
	{
		GTK_SENSITIVITY_AUTO,
		GTK_SENSITIVITY_ON,
		GTK_SENSITIVITY_OFF
	}
	[CRepr]
	public struct GtkSeparator;
	[LinkName("gtk_separator_new")]
	public static extern GtkWidget* separator_new(GtkOrientation orientation);
	[CRepr]
	public struct GtkSettings;
	[LinkName("gtk_settings_reset_property")]
	public static extern void settings_reset_property(GtkSettings* settings,  c_char* name);
	[CRepr]
	public struct GtkShortcut;
	[LinkName("gtk_shortcut_new")]
	public static extern GtkShortcut* shortcut_new(GtkShortcutTrigger* trigger, GtkShortcutAction* action);
	[LinkName("gtk_shortcut_new_with_arguments")]
	public static extern GtkShortcut* shortcut_new_with_arguments(GtkShortcutTrigger* trigger, GtkShortcutAction* action,  c_char* format_string);
	[LinkName("gtk_shortcut_get_action")]
	public static extern GtkShortcutAction* shortcut_get_action(GtkShortcut* self);
	[LinkName("gtk_shortcut_get_arguments")]
	public static extern GVariant* shortcut_get_arguments(GtkShortcut* self);
	[LinkName("gtk_shortcut_get_trigger")]
	public static extern GtkShortcutTrigger* shortcut_get_trigger(GtkShortcut* self);
	[LinkName("gtk_shortcut_set_action")]
	public static extern void shortcut_set_action(GtkShortcut* self, GtkShortcutAction* action);
	[LinkName("gtk_shortcut_set_arguments")]
	public static extern void shortcut_set_arguments(GtkShortcut* self, GVariant* args);
	[LinkName("gtk_shortcut_set_trigger")]
	public static extern void shortcut_set_trigger(GtkShortcut* self, GtkShortcutTrigger* trigger);
	[CRepr]
	public struct GtkShortcutAction;
	[LinkName("gtk_shortcut_action_parse_string")]
	public static extern GtkShortcutAction* shortcut_action_parse_string( c_char* string);
	[LinkName("gtk_shortcut_action_activate")]
	public static extern c_int shortcut_action_activate(GtkShortcutAction* self, GtkShortcutActionFlags flags, GtkWidget* widget, GVariant* args);
	[LinkName("gtk_shortcut_action_print")]
	public static extern void shortcut_action_print(GtkShortcutAction* self, GString* string);
	[LinkName("gtk_shortcut_action_to_string")]
	public static extern c_char* shortcut_action_to_string(GtkShortcutAction* self);
	[CRepr]
	public struct GtkShortcutActionClass
	{
	}
	[CRepr]
	public struct GtkShortcutActionFlags
	{
		public const int GTK_SHORTCUT_ACTION_EXCLUSIVE = 1;
	}
	[CRepr]
	public struct GtkShortcutClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkShortcutController;
	[LinkName("gtk_shortcut_controller_new")]
	public static extern GtkEventController* shortcut_controller_new();
	[LinkName("gtk_shortcut_controller_new_for_model")]
	public static extern GtkEventController* shortcut_controller_new_for_model(GListModel* model);
	[LinkName("gtk_shortcut_controller_add_shortcut")]
	public static extern void shortcut_controller_add_shortcut(GtkShortcutController* self, GtkShortcut* shortcut);
	[LinkName("gtk_shortcut_controller_get_mnemonics_modifiers")]
	public static extern GdkModifierType shortcut_controller_get_mnemonics_modifiers(GtkShortcutController* self);
	[LinkName("gtk_shortcut_controller_get_scope")]
	public static extern GtkShortcutScope shortcut_controller_get_scope(GtkShortcutController* self);
	[LinkName("gtk_shortcut_controller_remove_shortcut")]
	public static extern void shortcut_controller_remove_shortcut(GtkShortcutController* self, GtkShortcut* shortcut);
	[LinkName("gtk_shortcut_controller_set_mnemonics_modifiers")]
	public static extern void shortcut_controller_set_mnemonics_modifiers(GtkShortcutController* self, GdkModifierType modifiers);
	[LinkName("gtk_shortcut_controller_set_scope")]
	public static extern void shortcut_controller_set_scope(GtkShortcutController* self, GtkShortcutScope scope_);
	[CRepr]
	public struct GtkShortcutControllerClass
	{
	}
	public function c_int GtkShortcutFunc(GtkWidget* widget, GVariant* args, void* user_data);
	[CRepr]
	public struct GtkShortcutLabel;
	[LinkName("gtk_shortcut_label_new")]
	public static extern GtkWidget* shortcut_label_new( c_char* accelerator);
	[LinkName("gtk_shortcut_label_get_accelerator")]
	public static extern  c_char* shortcut_label_get_accelerator(GtkShortcutLabel* self);
	[LinkName("gtk_shortcut_label_get_disabled_text")]
	public static extern  c_char* shortcut_label_get_disabled_text(GtkShortcutLabel* self);
	[LinkName("gtk_shortcut_label_set_accelerator")]
	public static extern void shortcut_label_set_accelerator(GtkShortcutLabel* self,  c_char* accelerator);
	[LinkName("gtk_shortcut_label_set_disabled_text")]
	public static extern void shortcut_label_set_disabled_text(GtkShortcutLabel* self,  c_char* disabled_text);
	[CRepr]
	public struct GtkShortcutLabelClass
	{
	}
	[CRepr]
	public struct GtkShortcutManager
	{
		public function void(GtkShortcutManager this, GtkShortcutController* controller) add_controller;

		public function void(GtkShortcutManager this, GtkShortcutController* controller) remove_controller;
	}
	[CRepr]
	public struct GtkShortcutManagerInterface
	{
		GTypeInterface g_iface;
	}
	public enum GtkShortcutScope : c_int
	{
		GTK_SHORTCUT_SCOPE_LOCAL,
		GTK_SHORTCUT_SCOPE_MANAGED,
		GTK_SHORTCUT_SCOPE_GLOBAL
	}
	[CRepr]
	public struct GtkShortcutTrigger;
	[LinkName("gtk_shortcut_trigger_parse_string")]
	public static extern GtkShortcutTrigger* shortcut_trigger_parse_string( c_char* string);
	[LinkName("gtk_shortcut_trigger_compare")]
	public static extern c_int shortcut_trigger_compare(void* trigger1, void* trigger2);
	[LinkName("gtk_shortcut_trigger_equal")]
	public static extern c_int shortcut_trigger_equal(void* trigger1, void* trigger2);
	[LinkName("gtk_shortcut_trigger_hash")]
	public static extern c_uint shortcut_trigger_hash(void* trigger);
	[LinkName("gtk_shortcut_trigger_print")]
	public static extern void shortcut_trigger_print(GtkShortcutTrigger* self, GString* string);
	[LinkName("gtk_shortcut_trigger_print_label")]
	public static extern c_int shortcut_trigger_print_label(GtkShortcutTrigger* self, GdkDisplay* display, GString* string);
	[LinkName("gtk_shortcut_trigger_to_label")]
	public static extern c_char* shortcut_trigger_to_label(GtkShortcutTrigger* self, GdkDisplay* display);
	[LinkName("gtk_shortcut_trigger_to_string")]
	public static extern c_char* shortcut_trigger_to_string(GtkShortcutTrigger* self);
	[LinkName("gtk_shortcut_trigger_trigger")]
	public static extern GdkKeyMatch shortcut_trigger_trigger(GtkShortcutTrigger* self, GdkEvent* event, c_int enable_mnemonics);
	[CRepr]
	public struct GtkShortcutTriggerClass
	{
	}
	public enum GtkShortcutType : c_int
	{
		GTK_SHORTCUT_ACCELERATOR,
		GTK_SHORTCUT_GESTURE_PINCH,
		GTK_SHORTCUT_GESTURE_STRETCH,
		GTK_SHORTCUT_GESTURE_ROTATE_CLOCKWISE,
		GTK_SHORTCUT_GESTURE_ROTATE_COUNTERCLOCKWISE,
		GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_LEFT,
		GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_RIGHT,
		GTK_SHORTCUT_GESTURE,
		GTK_SHORTCUT_GESTURE_SWIPE_LEFT,
		GTK_SHORTCUT_GESTURE_SWIPE_RIGHT
	}
	[CRepr]
	public struct GtkShortcutsGroup;
	[CRepr]
	public struct GtkShortcutsGroupClass
	{
	}
	[CRepr]
	public struct GtkShortcutsSection;
	[CRepr]
	public struct GtkShortcutsSectionClass
	{
	}
	[CRepr]
	public struct GtkShortcutsShortcut;
	[CRepr]
	public struct GtkShortcutsShortcutClass
	{
	}
	[CRepr]
	public struct GtkShortcutsWindow;
	[CRepr]
	public struct GtkSignalAction;
	[LinkName("gtk_signal_action_new")]
	public static extern GtkShortcutAction* signal_action_new( c_char* signal_name);
	[LinkName("gtk_signal_action_get_signal_name")]
	public static extern  c_char* signal_action_get_signal_name(GtkSignalAction* self);
	[CRepr]
	public struct GtkSignalActionClass
	{
	}
	[CRepr]
	public struct GtkSignalListItemFactory;
	[LinkName("gtk_signal_list_item_factory_new")]
	public static extern GtkListItemFactory* signal_list_item_factory_new();
	[CRepr]
	public struct GtkSignalListItemFactoryClass
	{
	}
	[CRepr]
	public struct GtkSingleSelection;
	[LinkName("gtk_single_selection_new")]
	public static extern GtkSingleSelection* single_selection_new(GListModel* model);
	[LinkName("gtk_single_selection_get_autoselect")]
	public static extern c_int single_selection_get_autoselect(GtkSingleSelection* self);
	[LinkName("gtk_single_selection_get_can_unselect")]
	public static extern c_int single_selection_get_can_unselect(GtkSingleSelection* self);
	[LinkName("gtk_single_selection_get_model")]
	public static extern GListModel* single_selection_get_model(GtkSingleSelection* self);
	[LinkName("gtk_single_selection_get_selected")]
	public static extern c_uint single_selection_get_selected(GtkSingleSelection* self);
	[LinkName("gtk_single_selection_get_selected_item")]
	public static extern void* single_selection_get_selected_item(GtkSingleSelection* self);
	[LinkName("gtk_single_selection_set_autoselect")]
	public static extern void single_selection_set_autoselect(GtkSingleSelection* self, c_int autoselect);
	[LinkName("gtk_single_selection_set_can_unselect")]
	public static extern void single_selection_set_can_unselect(GtkSingleSelection* self, c_int can_unselect);
	[LinkName("gtk_single_selection_set_model")]
	public static extern void single_selection_set_model(GtkSingleSelection* self, GListModel* model);
	[LinkName("gtk_single_selection_set_selected")]
	public static extern void single_selection_set_selected(GtkSingleSelection* self, c_uint position);
	[CRepr]
	public struct GtkSingleSelectionClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkSizeGroup;
	[LinkName("gtk_size_group_new")]
	public static extern GtkSizeGroup* size_group_new(GtkSizeGroupMode mode);
	[LinkName("gtk_size_group_add_widget")]
	public static extern void size_group_add_widget(GtkSizeGroup* size_group, GtkWidget* widget);
	[LinkName("gtk_size_group_get_mode")]
	public static extern GtkSizeGroupMode size_group_get_mode(GtkSizeGroup* size_group);
	[LinkName("gtk_size_group_get_widgets")]
	public static extern GSList* size_group_get_widgets(GtkSizeGroup* size_group);
	[LinkName("gtk_size_group_remove_widget")]
	public static extern void size_group_remove_widget(GtkSizeGroup* size_group, GtkWidget* widget);
	[LinkName("gtk_size_group_set_mode")]
	public static extern void size_group_set_mode(GtkSizeGroup* size_group, GtkSizeGroupMode mode);
	public enum GtkSizeGroupMode : c_int
	{
		GTK_SIZE_GROUP_NONE,
		GTK_SIZE_GROUP_HORIZONTAL,
		GTK_SIZE_GROUP_VERTICAL,
		GTK_SIZE_GROUP_BOTH
	}
	public enum GtkSizeRequestMode : c_int
	{
		GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH,
		GTK_SIZE_REQUEST_WIDTH_FOR_HEIGHT,
		GTK_SIZE_REQUEST_CONSTANT_SIZE
	}
	[CRepr]
	public struct GtkSliceListModel;
	[LinkName("gtk_slice_list_model_new")]
	public static extern GtkSliceListModel* slice_list_model_new(GListModel* model, c_uint offset, c_uint size);
	[LinkName("gtk_slice_list_model_get_model")]
	public static extern GListModel* slice_list_model_get_model(GtkSliceListModel* self);
	[LinkName("gtk_slice_list_model_get_offset")]
	public static extern c_uint slice_list_model_get_offset(GtkSliceListModel* self);
	[LinkName("gtk_slice_list_model_get_size")]
	public static extern c_uint slice_list_model_get_size(GtkSliceListModel* self);
	[LinkName("gtk_slice_list_model_set_model")]
	public static extern void slice_list_model_set_model(GtkSliceListModel* self, GListModel* model);
	[LinkName("gtk_slice_list_model_set_offset")]
	public static extern void slice_list_model_set_offset(GtkSliceListModel* self, c_uint offset);
	[LinkName("gtk_slice_list_model_set_size")]
	public static extern void slice_list_model_set_size(GtkSliceListModel* self, c_uint size);
	[CRepr]
	public struct GtkSliceListModelClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkSnapshot;
	[LinkName("gtk_snapshot_new")]
	public static extern GtkSnapshot* snapshot_new();
	[LinkName("gtk_snapshot_append_border")]
	public static extern void snapshot_append_border(GtkSnapshot* snapshot,  GskRoundedRect* outline);
	[LinkName("gtk_snapshot_append_cairo")]
	public static extern cairo_t* snapshot_append_cairo(GtkSnapshot* snapshot,  graphene_rect_t* bounds);
	[LinkName("gtk_snapshot_append_color")]
	public static extern void snapshot_append_color(GtkSnapshot* snapshot,  GdkRGBA* color,  graphene_rect_t* bounds);
	[LinkName("gtk_snapshot_append_conic_gradient")]
	public static extern void snapshot_append_conic_gradient(GtkSnapshot* snapshot,  graphene_rect_t* bounds,  graphene_point_t* center, float rotation, c_ulong n_stops);
	[LinkName("gtk_snapshot_append_inset_shadow")]
	public static extern void snapshot_append_inset_shadow(GtkSnapshot* snapshot,  GskRoundedRect* outline,  GdkRGBA* color, float dx, float dy, float spread, float blur_radius);
	[LinkName("gtk_snapshot_append_layout")]
	public static extern void snapshot_append_layout(GtkSnapshot* snapshot, PangoLayout* layout,  GdkRGBA* color);
	[LinkName("gtk_snapshot_append_linear_gradient")]
	public static extern void snapshot_append_linear_gradient(GtkSnapshot* snapshot,  graphene_rect_t* bounds,  graphene_point_t* start_point,  graphene_point_t* end_point, c_ulong n_stops);
	[LinkName("gtk_snapshot_append_node")]
	public static extern void snapshot_append_node(GtkSnapshot* snapshot, GskRenderNode* node);
	[LinkName("gtk_snapshot_append_outset_shadow")]
	public static extern void snapshot_append_outset_shadow(GtkSnapshot* snapshot,  GskRoundedRect* outline,  GdkRGBA* color, float dx, float dy, float spread, float blur_radius);
	[LinkName("gtk_snapshot_append_radial_gradient")]
	public static extern void snapshot_append_radial_gradient(GtkSnapshot* snapshot,  graphene_rect_t* bounds,  graphene_point_t* center, float hradius, float vradius, float start, float end, c_ulong n_stops);
	[LinkName("gtk_snapshot_append_repeating_linear_gradient")]
	public static extern void snapshot_append_repeating_linear_gradient(GtkSnapshot* snapshot,  graphene_rect_t* bounds,  graphene_point_t* start_point,  graphene_point_t* end_point, c_ulong n_stops);
	[LinkName("gtk_snapshot_append_repeating_radial_gradient")]
	public static extern void snapshot_append_repeating_radial_gradient(GtkSnapshot* snapshot,  graphene_rect_t* bounds,  graphene_point_t* center, float hradius, float vradius, float start, float end, c_ulong n_stops);
	[LinkName("gtk_snapshot_append_scaled_texture")]
	public static extern void snapshot_append_scaled_texture(GtkSnapshot* snapshot, GdkTexture* texture, GskScalingFilter filter,  graphene_rect_t* bounds);
	[LinkName("gtk_snapshot_append_texture")]
	public static extern void snapshot_append_texture(GtkSnapshot* snapshot, GdkTexture* texture,  graphene_rect_t* bounds);
	[LinkName("gtk_snapshot_free_to_node")]
	public static extern GskRenderNode* snapshot_free_to_node(GtkSnapshot* snapshot);
	[LinkName("gtk_snapshot_free_to_paintable")]
	public static extern GdkPaintable* snapshot_free_to_paintable(GtkSnapshot* snapshot,  graphene_size_t* size);
	[LinkName("gtk_snapshot_gl_shader_pop_texture")]
	public static extern void snapshot_gl_shader_pop_texture(GtkSnapshot* snapshot);
	[LinkName("gtk_snapshot_perspective")]
	public static extern void snapshot_perspective(GtkSnapshot* snapshot, float depth);
	[LinkName("gtk_snapshot_pop")]
	public static extern void snapshot_pop(GtkSnapshot* snapshot);
	[LinkName("gtk_snapshot_push_blend")]
	public static extern void snapshot_push_blend(GtkSnapshot* snapshot, GskBlendMode blend_mode);
	[LinkName("gtk_snapshot_push_blur")]
	public static extern void snapshot_push_blur(GtkSnapshot* snapshot, double radius);
	[LinkName("gtk_snapshot_push_clip")]
	public static extern void snapshot_push_clip(GtkSnapshot* snapshot,  graphene_rect_t* bounds);
	[LinkName("gtk_snapshot_push_color_matrix")]
	public static extern void snapshot_push_color_matrix(GtkSnapshot* snapshot,  graphene_matrix_t* color_matrix,  graphene_vec4_t* color_offset);
	[LinkName("gtk_snapshot_push_cross_fade")]
	public static extern void snapshot_push_cross_fade(GtkSnapshot* snapshot, double progress);
	[LinkName("gtk_snapshot_push_debug")]
	public static extern void snapshot_push_debug(GtkSnapshot* snapshot,  c_char* message);
	[LinkName("gtk_snapshot_push_gl_shader")]
	public static extern void snapshot_push_gl_shader(GtkSnapshot* snapshot, GskGLShader* shader,  graphene_rect_t* bounds, GBytes* take_args);
	[LinkName("gtk_snapshot_push_mask")]
	public static extern void snapshot_push_mask(GtkSnapshot* snapshot, GskMaskMode mask_mode);
	[LinkName("gtk_snapshot_push_opacity")]
	public static extern void snapshot_push_opacity(GtkSnapshot* snapshot, double opacity);
	[LinkName("gtk_snapshot_push_repeat")]
	public static extern void snapshot_push_repeat(GtkSnapshot* snapshot,  graphene_rect_t* bounds,  graphene_rect_t* child_bounds);
	[LinkName("gtk_snapshot_push_rounded_clip")]
	public static extern void snapshot_push_rounded_clip(GtkSnapshot* snapshot,  GskRoundedRect* bounds);
	[LinkName("gtk_snapshot_push_shadow")]
	public static extern void snapshot_push_shadow(GtkSnapshot* snapshot, c_ulong n_shadows);
	[LinkName("gtk_snapshot_render_background")]
	public static extern void snapshot_render_background(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, double width, double height);
	[LinkName("gtk_snapshot_render_focus")]
	public static extern void snapshot_render_focus(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, double width, double height);
	[LinkName("gtk_snapshot_render_frame")]
	public static extern void snapshot_render_frame(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, double width, double height);
	[LinkName("gtk_snapshot_render_insertion_cursor")]
	public static extern void snapshot_render_insertion_cursor(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, PangoLayout* layout, c_int index, PangoDirection direction);
	[LinkName("gtk_snapshot_render_layout")]
	public static extern void snapshot_render_layout(GtkSnapshot* snapshot, GtkStyleContext* context, double x, double y, PangoLayout* layout);
	[LinkName("gtk_snapshot_restore")]
	public static extern void snapshot_restore(GtkSnapshot* snapshot);
	[LinkName("gtk_snapshot_rotate")]
	public static extern void snapshot_rotate(GtkSnapshot* snapshot, float angle);
	[LinkName("gtk_snapshot_rotate_3d")]
	public static extern void snapshot_rotate_3d(GtkSnapshot* snapshot, float angle,  graphene_vec3_t* axis);
	[LinkName("gtk_snapshot_save")]
	public static extern void snapshot_save(GtkSnapshot* snapshot);
	[LinkName("gtk_snapshot_scale")]
	public static extern void snapshot_scale(GtkSnapshot* snapshot, float factor_x, float factor_y);
	[LinkName("gtk_snapshot_scale_3d")]
	public static extern void snapshot_scale_3d(GtkSnapshot* snapshot, float factor_x, float factor_y, float factor_z);
	[LinkName("gtk_snapshot_to_node")]
	public static extern GskRenderNode* snapshot_to_node(GtkSnapshot* snapshot);
	[LinkName("gtk_snapshot_to_paintable")]
	public static extern GdkPaintable* snapshot_to_paintable(GtkSnapshot* snapshot,  graphene_size_t* size);
	[LinkName("gtk_snapshot_transform")]
	public static extern void snapshot_transform(GtkSnapshot* snapshot, GskTransform* transform);
	[LinkName("gtk_snapshot_transform_matrix")]
	public static extern void snapshot_transform_matrix(GtkSnapshot* snapshot,  graphene_matrix_t* matrix);
	[LinkName("gtk_snapshot_translate")]
	public static extern void snapshot_translate(GtkSnapshot* snapshot,  graphene_point_t* point);
	[LinkName("gtk_snapshot_translate_3d")]
	public static extern void snapshot_translate_3d(GtkSnapshot* snapshot,  graphene_point3d_t* point);
	[CRepr]
	public struct GtkSnapshotClass
	{
	}
	[CRepr]
	public struct GtkSortListModel;
	[LinkName("gtk_sort_list_model_new")]
	public static extern GtkSortListModel* sort_list_model_new(GListModel* model, GtkSorter* sorter);
	[LinkName("gtk_sort_list_model_get_incremental")]
	public static extern c_int sort_list_model_get_incremental(GtkSortListModel* self);
	[LinkName("gtk_sort_list_model_get_model")]
	public static extern GListModel* sort_list_model_get_model(GtkSortListModel* self);
	[LinkName("gtk_sort_list_model_get_pending")]
	public static extern c_uint sort_list_model_get_pending(GtkSortListModel* self);
	[LinkName("gtk_sort_list_model_get_section_sorter")]
	public static extern GtkSorter* sort_list_model_get_section_sorter(GtkSortListModel* self);
	[LinkName("gtk_sort_list_model_get_sorter")]
	public static extern GtkSorter* sort_list_model_get_sorter(GtkSortListModel* self);
	[LinkName("gtk_sort_list_model_set_incremental")]
	public static extern void sort_list_model_set_incremental(GtkSortListModel* self, c_int incremental);
	[LinkName("gtk_sort_list_model_set_model")]
	public static extern void sort_list_model_set_model(GtkSortListModel* self, GListModel* model);
	[LinkName("gtk_sort_list_model_set_section_sorter")]
	public static extern void sort_list_model_set_section_sorter(GtkSortListModel* self, GtkSorter* sorter);
	[LinkName("gtk_sort_list_model_set_sorter")]
	public static extern void sort_list_model_set_sorter(GtkSortListModel* self, GtkSorter* sorter);
	[CRepr]
	public struct GtkSortListModelClass
	{
		GObjectClass parent_class;
	}
	public enum GtkSortType : c_int
	{
		GTK_SORT_ASCENDING,
		GTK_SORT_DESCENDING
	}
	[CRepr]
	public struct GtkSorter;
	[LinkName("gtk_sorter_changed")]
	public static extern void sorter_changed(GtkSorter* self, GtkSorterChange change);
	[LinkName("gtk_sorter_compare")]
	public static extern GtkOrdering sorter_compare(GtkSorter* self, void* item1, void* item2);
	[LinkName("gtk_sorter_get_order")]
	public static extern GtkSorterOrder sorter_get_order(GtkSorter* self);
	public enum GtkSorterChange : c_int
	{
		GTK_SORTER_CHANGE_DIFFERENT,
		GTK_SORTER_CHANGE_INVERTED,
		GTK_SORTER_CHANGE_LESS_STRICT,
		GTK_SORTER_CHANGE_MORE_STRICT
	}
	[CRepr]
	public struct GtkSorterClass
	{
		GObjectClass parent_class;
	}
	public enum GtkSorterOrder : c_int
	{
		GTK_SORTER_ORDER_PARTIAL,
		GTK_SORTER_ORDER_NONE,
		GTK_SORTER_ORDER_TOTAL
	}
	[CRepr]
	public struct GtkSpinButton;
	[LinkName("gtk_spin_button_new")]
	public static extern GtkWidget* spin_button_new(GtkAdjustment* adjustment, double climb_rate, c_uint digits);
	[LinkName("gtk_spin_button_new_with_range")]
	public static extern GtkWidget* spin_button_new_with_range(double min, double max, double step);
	[LinkName("gtk_spin_button_configure")]
	public static extern void spin_button_configure(GtkSpinButton* spin_button, GtkAdjustment* adjustment, double climb_rate, c_uint digits);
	[LinkName("gtk_spin_button_get_adjustment")]
	public static extern GtkAdjustment* spin_button_get_adjustment(GtkSpinButton* spin_button);
	[LinkName("gtk_spin_button_get_climb_rate")]
	public static extern double spin_button_get_climb_rate(GtkSpinButton* spin_button);
	[LinkName("gtk_spin_button_get_digits")]
	public static extern c_uint spin_button_get_digits(GtkSpinButton* spin_button);
	[LinkName("gtk_spin_button_get_increments")]
	public static extern void spin_button_get_increments(GtkSpinButton* spin_button, double* step, double* page);
	[LinkName("gtk_spin_button_get_numeric")]
	public static extern c_int spin_button_get_numeric(GtkSpinButton* spin_button);
	[LinkName("gtk_spin_button_get_range")]
	public static extern void spin_button_get_range(GtkSpinButton* spin_button, double* min, double* max);
	[LinkName("gtk_spin_button_get_snap_to_ticks")]
	public static extern c_int spin_button_get_snap_to_ticks(GtkSpinButton* spin_button);
	[LinkName("gtk_spin_button_get_update_policy")]
	public static extern GtkSpinButtonUpdatePolicy spin_button_get_update_policy(GtkSpinButton* spin_button);
	[LinkName("gtk_spin_button_get_value")]
	public static extern double spin_button_get_value(GtkSpinButton* spin_button);
	[LinkName("gtk_spin_button_get_value_as_int")]
	public static extern c_int spin_button_get_value_as_int(GtkSpinButton* spin_button);
	[LinkName("gtk_spin_button_get_wrap")]
	public static extern c_int spin_button_get_wrap(GtkSpinButton* spin_button);
	[LinkName("gtk_spin_button_set_adjustment")]
	public static extern void spin_button_set_adjustment(GtkSpinButton* spin_button, GtkAdjustment* adjustment);
	[LinkName("gtk_spin_button_set_climb_rate")]
	public static extern void spin_button_set_climb_rate(GtkSpinButton* spin_button, double climb_rate);
	[LinkName("gtk_spin_button_set_digits")]
	public static extern void spin_button_set_digits(GtkSpinButton* spin_button, c_uint digits);
	[LinkName("gtk_spin_button_set_increments")]
	public static extern void spin_button_set_increments(GtkSpinButton* spin_button, double step, double page);
	[LinkName("gtk_spin_button_set_numeric")]
	public static extern void spin_button_set_numeric(GtkSpinButton* spin_button, c_int numeric);
	[LinkName("gtk_spin_button_set_range")]
	public static extern void spin_button_set_range(GtkSpinButton* spin_button, double min, double max);
	[LinkName("gtk_spin_button_set_snap_to_ticks")]
	public static extern void spin_button_set_snap_to_ticks(GtkSpinButton* spin_button, c_int snap_to_ticks);
	[LinkName("gtk_spin_button_set_update_policy")]
	public static extern void spin_button_set_update_policy(GtkSpinButton* spin_button, GtkSpinButtonUpdatePolicy policy);
	[LinkName("gtk_spin_button_set_value")]
	public static extern void spin_button_set_value(GtkSpinButton* spin_button, double value);
	[LinkName("gtk_spin_button_set_wrap")]
	public static extern void spin_button_set_wrap(GtkSpinButton* spin_button, c_int wrap);
	[LinkName("gtk_spin_button_spin")]
	public static extern void spin_button_spin(GtkSpinButton* spin_button, GtkSpinType direction, double increment);
	[LinkName("gtk_spin_button_update")]
	public static extern void spin_button_update(GtkSpinButton* spin_button);
	public enum GtkSpinButtonUpdatePolicy : c_int
	{
		GTK_UPDATE_ALWAYS,
		GTK_UPDATE_IF_VALID
	}
	public enum GtkSpinType : c_int
	{
		GTK_SPIN_STEP_FORWARD,
		GTK_SPIN_STEP_BACKWARD,
		GTK_SPIN_PAGE_FORWARD,
		GTK_SPIN_PAGE_BACKWARD,
		GTK_SPIN_HOME,
		GTK_SPIN_END,
		GTK_SPIN_USER_DEFINED
	}
	[CRepr]
	public struct GtkSpinner;
	[LinkName("gtk_spinner_new")]
	public static extern GtkWidget* spinner_new();
	[LinkName("gtk_spinner_get_spinning")]
	public static extern c_int spinner_get_spinning(GtkSpinner* spinner);
	[LinkName("gtk_spinner_set_spinning")]
	public static extern void spinner_set_spinning(GtkSpinner* spinner, c_int spinning);
	[LinkName("gtk_spinner_start")]
	public static extern void spinner_start(GtkSpinner* spinner);
	[LinkName("gtk_spinner_stop")]
	public static extern void spinner_stop(GtkSpinner* spinner);
	[CRepr]
	public struct GtkStack;
	[LinkName("gtk_stack_new")]
	public static extern GtkWidget* stack_new();
	[LinkName("gtk_stack_add_child")]
	public static extern GtkStackPage* stack_add_child(GtkStack* stack_, GtkWidget* child);
	[LinkName("gtk_stack_add_named")]
	public static extern GtkStackPage* stack_add_named(GtkStack* stack_, GtkWidget* child,  c_char* name);
	[LinkName("gtk_stack_add_titled")]
	public static extern GtkStackPage* stack_add_titled(GtkStack* stack_, GtkWidget* child,  c_char* name,  c_char* title);
	[LinkName("gtk_stack_get_child_by_name")]
	public static extern GtkWidget* stack_get_child_by_name(GtkStack* stack_,  c_char* name);
	[LinkName("gtk_stack_get_hhomogeneous")]
	public static extern c_int stack_get_hhomogeneous(GtkStack* stack_);
	[LinkName("gtk_stack_get_interpolate_size")]
	public static extern c_int stack_get_interpolate_size(GtkStack* stack_);
	[LinkName("gtk_stack_get_page")]
	public static extern GtkStackPage* stack_get_page(GtkStack* stack_, GtkWidget* child);
	[LinkName("gtk_stack_get_pages")]
	public static extern GtkSelectionModel* stack_get_pages(GtkStack* stack_);
	[LinkName("gtk_stack_get_transition_duration")]
	public static extern c_uint stack_get_transition_duration(GtkStack* stack_);
	[LinkName("gtk_stack_get_transition_running")]
	public static extern c_int stack_get_transition_running(GtkStack* stack_);
	[LinkName("gtk_stack_get_transition_type")]
	public static extern GtkStackTransitionType stack_get_transition_type(GtkStack* stack_);
	[LinkName("gtk_stack_get_vhomogeneous")]
	public static extern c_int stack_get_vhomogeneous(GtkStack* stack_);
	[LinkName("gtk_stack_get_visible_child")]
	public static extern GtkWidget* stack_get_visible_child(GtkStack* stack_);
	[LinkName("gtk_stack_get_visible_child_name")]
	public static extern  c_char* stack_get_visible_child_name(GtkStack* stack_);
	[LinkName("gtk_stack_remove")]
	public static extern void stack_remove(GtkStack* stack_, GtkWidget* child);
	[LinkName("gtk_stack_set_hhomogeneous")]
	public static extern void stack_set_hhomogeneous(GtkStack* stack_, c_int hhomogeneous);
	[LinkName("gtk_stack_set_interpolate_size")]
	public static extern void stack_set_interpolate_size(GtkStack* stack_, c_int interpolate_size);
	[LinkName("gtk_stack_set_transition_duration")]
	public static extern void stack_set_transition_duration(GtkStack* stack_, c_uint duration);
	[LinkName("gtk_stack_set_transition_type")]
	public static extern void stack_set_transition_type(GtkStack* stack_, GtkStackTransitionType transition);
	[LinkName("gtk_stack_set_vhomogeneous")]
	public static extern void stack_set_vhomogeneous(GtkStack* stack_, c_int vhomogeneous);
	[LinkName("gtk_stack_set_visible_child")]
	public static extern void stack_set_visible_child(GtkStack* stack_, GtkWidget* child);
	[LinkName("gtk_stack_set_visible_child_full")]
	public static extern void stack_set_visible_child_full(GtkStack* stack_,  c_char* name, GtkStackTransitionType transition);
	[LinkName("gtk_stack_set_visible_child_name")]
	public static extern void stack_set_visible_child_name(GtkStack* stack_,  c_char* name);
	[CRepr]
	public struct GtkStackPage;
	[LinkName("gtk_stack_page_get_child")]
	public static extern GtkWidget* stack_page_get_child(GtkStackPage* self);
	[LinkName("gtk_stack_page_get_icon_name")]
	public static extern  c_char* stack_page_get_icon_name(GtkStackPage* self);
	[LinkName("gtk_stack_page_get_name")]
	public static extern  c_char* stack_page_get_name(GtkStackPage* self);
	[LinkName("gtk_stack_page_get_needs_attention")]
	public static extern c_int stack_page_get_needs_attention(GtkStackPage* self);
	[LinkName("gtk_stack_page_get_title")]
	public static extern  c_char* stack_page_get_title(GtkStackPage* self);
	[LinkName("gtk_stack_page_get_use_underline")]
	public static extern c_int stack_page_get_use_underline(GtkStackPage* self);
	[LinkName("gtk_stack_page_get_visible")]
	public static extern c_int stack_page_get_visible(GtkStackPage* self);
	[LinkName("gtk_stack_page_set_icon_name")]
	public static extern void stack_page_set_icon_name(GtkStackPage* self,  c_char* setting);
	[LinkName("gtk_stack_page_set_name")]
	public static extern void stack_page_set_name(GtkStackPage* self,  c_char* setting);
	[LinkName("gtk_stack_page_set_needs_attention")]
	public static extern void stack_page_set_needs_attention(GtkStackPage* self, c_int setting);
	[LinkName("gtk_stack_page_set_title")]
	public static extern void stack_page_set_title(GtkStackPage* self,  c_char* setting);
	[LinkName("gtk_stack_page_set_use_underline")]
	public static extern void stack_page_set_use_underline(GtkStackPage* self, c_int setting);
	[LinkName("gtk_stack_page_set_visible")]
	public static extern void stack_page_set_visible(GtkStackPage* self, c_int visible);
	[CRepr]
	public struct GtkStackSidebar;
	[LinkName("gtk_stack_sidebar_new")]
	public static extern GtkWidget* stack_sidebar_new();
	[LinkName("gtk_stack_sidebar_get_stack")]
	public static extern GtkStack* stack_sidebar_get_stack(GtkStackSidebar* self);
	[LinkName("gtk_stack_sidebar_set_stack")]
	public static extern void stack_sidebar_set_stack(GtkStackSidebar* self, GtkStack* stack_);
	[CRepr]
	public struct GtkStackSwitcher;
	[LinkName("gtk_stack_switcher_new")]
	public static extern GtkWidget* stack_switcher_new();
	[LinkName("gtk_stack_switcher_get_stack")]
	public static extern GtkStack* stack_switcher_get_stack(GtkStackSwitcher* switcher);
	[LinkName("gtk_stack_switcher_set_stack")]
	public static extern void stack_switcher_set_stack(GtkStackSwitcher* switcher, GtkStack* stack_);
	public enum GtkStackTransitionType : c_int
	{
		GTK_STACK_TRANSITION_TYPE_NONE,
		GTK_STACK_TRANSITION_TYPE_CROSSFADE,
		GTK_STACK_TRANSITION_TYPE_SLIDE_RIGHT,
		GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT,
		GTK_STACK_TRANSITION_TYPE_SLIDE_UP,
		GTK_STACK_TRANSITION_TYPE_SLIDE_DOWN,
		GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT_RIGHT,
		GTK_STACK_TRANSITION_TYPE_SLIDE_UP_DOWN,
		GTK_STACK_TRANSITION_TYPE_OVER_UP,
		GTK_STACK_TRANSITION_TYPE_OVER_DOWN,
		GTK_STACK_TRANSITION_TYPE_OVER_LEFT,
		GTK_STACK_TRANSITION_TYPE_OVER_RIGHT,
		GTK_STACK_TRANSITION_TYPE_UNDER_UP,
		GTK_STACK_TRANSITION_TYPE_UNDER_DOWN,
		GTK_STACK_TRANSITION_TYPE_UNDER_LEFT,
		GTK_STACK_TRANSITION_TYPE_UNDER_RIGHT,
		GTK_STACK_TRANSITION_TYPE_OVER_UP_DOWN,
		GTK_STACK_TRANSITION_TYPE_OVER_DOWN_UP,
		GTK_STACK_TRANSITION_TYPE_OVER_LEFT_RIGHT,
		GTK_STACK_TRANSITION_TYPE_OVER_RIGHT_LEFT,
		GTK_STACK_TRANSITION_TYPE_ROTATE_LEFT,
		GTK_STACK_TRANSITION_TYPE_ROTATE_RIGHT,
		GTK_STACK_TRANSITION_TYPE_ROTATE_LEFT_RIGHT
	}
	[CRepr]
	public struct GtkStateFlags
	{
		public const int GTK_STATE_FLAG_NORMAL = 0;
		public const int GTK_STATE_FLAG_ACTIVE = 1;
		public const int GTK_STATE_FLAG_PRELIGHT = 2;
		public const int GTK_STATE_FLAG_SELECTED = 4;
		public const int GTK_STATE_FLAG_INSENSITIVE = 8;
		public const int GTK_STATE_FLAG_INCONSISTENT = 16;
		public const int GTK_STATE_FLAG_FOCUSED = 32;
		public const int GTK_STATE_FLAG_BACKDROP = 64;
		public const int GTK_STATE_FLAG_DIR_LTR = 128;
		public const int GTK_STATE_FLAG_DIR_RTL = 256;
		public const int GTK_STATE_FLAG_LINK = 512;
		public const int GTK_STATE_FLAG_VISITED = 1024;
		public const int GTK_STATE_FLAG_CHECKED = 2048;
		public const int GTK_STATE_FLAG_DROP_ACTIVE = 4096;
		public const int GTK_STATE_FLAG_FOCUS_VISIBLE = 8192;
		public const int GTK_STATE_FLAG_FOCUS_WITHIN = 16384;
	}
	[CRepr]
	public struct GtkStatusbar;
	[LinkName("gtk_statusbar_new")]
	public static extern GtkWidget* statusbar_new();
	[LinkName("gtk_statusbar_get_context_id")]
	public static extern c_uint statusbar_get_context_id(GtkStatusbar* statusbar,  c_char* context_description);
	[LinkName("gtk_statusbar_pop")]
	public static extern void statusbar_pop(GtkStatusbar* statusbar, c_uint context_id);
	[LinkName("gtk_statusbar_push")]
	public static extern c_uint statusbar_push(GtkStatusbar* statusbar, c_uint context_id,  c_char* text);
	[LinkName("gtk_statusbar_remove")]
	public static extern void statusbar_remove(GtkStatusbar* statusbar, c_uint context_id, c_uint message_id);
	[LinkName("gtk_statusbar_remove_all")]
	public static extern void statusbar_remove_all(GtkStatusbar* statusbar, c_uint context_id);
	[CRepr]
	public struct GtkStringFilter;
	[LinkName("gtk_string_filter_new")]
	public static extern GtkStringFilter* string_filter_new(GtkExpression* expression);
	[LinkName("gtk_string_filter_get_expression")]
	public static extern GtkExpression* string_filter_get_expression(GtkStringFilter* self);
	[LinkName("gtk_string_filter_get_ignore_case")]
	public static extern c_int string_filter_get_ignore_case(GtkStringFilter* self);
	[LinkName("gtk_string_filter_get_match_mode")]
	public static extern GtkStringFilterMatchMode string_filter_get_match_mode(GtkStringFilter* self);
	[LinkName("gtk_string_filter_get_search")]
	public static extern  c_char* string_filter_get_search(GtkStringFilter* self);
	[LinkName("gtk_string_filter_set_expression")]
	public static extern void string_filter_set_expression(GtkStringFilter* self, GtkExpression* expression);
	[LinkName("gtk_string_filter_set_ignore_case")]
	public static extern void string_filter_set_ignore_case(GtkStringFilter* self, c_int ignore_case);
	[LinkName("gtk_string_filter_set_match_mode")]
	public static extern void string_filter_set_match_mode(GtkStringFilter* self, GtkStringFilterMatchMode mode);
	[LinkName("gtk_string_filter_set_search")]
	public static extern void string_filter_set_search(GtkStringFilter* self,  c_char* search);
	[CRepr]
	public struct GtkStringFilterClass
	{
		GtkFilterClass parent_class;
	}
	public enum GtkStringFilterMatchMode : c_int
	{
		GTK_STRING_FILTER_MATCH_MODE_EXACT,
		GTK_STRING_FILTER_MATCH_MODE_SUBSTRING,
		GTK_STRING_FILTER_MATCH_MODE_PREFIX
	}
	[CRepr]
	public struct GtkStringList;
	[LinkName("gtk_string_list_new")]
	public static extern GtkStringList* string_list_new();
	[LinkName("gtk_string_list_append")]
	public static extern void string_list_append(GtkStringList* self,  c_char* string);
	[LinkName("gtk_string_list_get_string")]
	public static extern  c_char* string_list_get_string(GtkStringList* self, c_uint position);
	[LinkName("gtk_string_list_remove")]
	public static extern void string_list_remove(GtkStringList* self, c_uint position);
	[LinkName("gtk_string_list_splice")]
	public static extern void string_list_splice(GtkStringList* self, c_uint position, c_uint n_removals);
	[LinkName("gtk_string_list_take")]
	public static extern void string_list_take(GtkStringList* self, c_char* string);
	[CRepr]
	public struct GtkStringListClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkStringObject;
	[LinkName("gtk_string_object_new")]
	public static extern GtkStringObject* string_object_new( c_char* string);
	[LinkName("gtk_string_object_get_string")]
	public static extern  c_char* string_object_get_string(GtkStringObject* self);
	[CRepr]
	public struct GtkStringObjectClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkStringSorter;
	[LinkName("gtk_string_sorter_new")]
	public static extern GtkStringSorter* string_sorter_new(GtkExpression* expression);
	[LinkName("gtk_string_sorter_get_collation")]
	public static extern GtkCollation string_sorter_get_collation(GtkStringSorter* self);
	[LinkName("gtk_string_sorter_get_expression")]
	public static extern GtkExpression* string_sorter_get_expression(GtkStringSorter* self);
	[LinkName("gtk_string_sorter_get_ignore_case")]
	public static extern c_int string_sorter_get_ignore_case(GtkStringSorter* self);
	[LinkName("gtk_string_sorter_set_collation")]
	public static extern void string_sorter_set_collation(GtkStringSorter* self, GtkCollation collation);
	[LinkName("gtk_string_sorter_set_expression")]
	public static extern void string_sorter_set_expression(GtkStringSorter* self, GtkExpression* expression);
	[LinkName("gtk_string_sorter_set_ignore_case")]
	public static extern void string_sorter_set_ignore_case(GtkStringSorter* self, c_int ignore_case);
	[CRepr]
	public struct GtkStringSorterClass
	{
		GtkSorterClass parent_class;
	}
	[CRepr]
	public struct GtkStyleContext;
	[LinkName("gtk_style_context_add_class")]
	public static extern void style_context_add_class(GtkStyleContext* context,  c_char* class_name);
	[LinkName("gtk_style_context_add_provider")]
	public static extern void style_context_add_provider(GtkStyleContext* context, GtkStyleProvider* provider, c_uint priority);
	[LinkName("gtk_style_context_get_border")]
	public static extern void style_context_get_border(GtkStyleContext* context, GtkBorder* border);
	[LinkName("gtk_style_context_get_color")]
	public static extern void style_context_get_color(GtkStyleContext* context, GdkRGBA* color);
	[LinkName("gtk_style_context_get_display")]
	public static extern GdkDisplay* style_context_get_display(GtkStyleContext* context);
	[LinkName("gtk_style_context_get_margin")]
	public static extern void style_context_get_margin(GtkStyleContext* context, GtkBorder* margin);
	[LinkName("gtk_style_context_get_padding")]
	public static extern void style_context_get_padding(GtkStyleContext* context, GtkBorder* padding);
	[LinkName("gtk_style_context_get_scale")]
	public static extern c_int style_context_get_scale(GtkStyleContext* context);
	[LinkName("gtk_style_context_get_state")]
	public static extern GtkStateFlags style_context_get_state(GtkStyleContext* context);
	[LinkName("gtk_style_context_has_class")]
	public static extern c_int style_context_has_class(GtkStyleContext* context,  c_char* class_name);
	[LinkName("gtk_style_context_lookup_color")]
	public static extern c_int style_context_lookup_color(GtkStyleContext* context,  c_char* color_name, GdkRGBA* color);
	[LinkName("gtk_style_context_remove_class")]
	public static extern void style_context_remove_class(GtkStyleContext* context,  c_char* class_name);
	[LinkName("gtk_style_context_remove_provider")]
	public static extern void style_context_remove_provider(GtkStyleContext* context, GtkStyleProvider* provider);
	[LinkName("gtk_style_context_restore")]
	public static extern void style_context_restore(GtkStyleContext* context);
	[LinkName("gtk_style_context_save")]
	public static extern void style_context_save(GtkStyleContext* context);
	[LinkName("gtk_style_context_set_display")]
	public static extern void style_context_set_display(GtkStyleContext* context, GdkDisplay* display);
	[LinkName("gtk_style_context_set_scale")]
	public static extern void style_context_set_scale(GtkStyleContext* context, c_int scale);
	[LinkName("gtk_style_context_set_state")]
	public static extern void style_context_set_state(GtkStyleContext* context, GtkStateFlags flags);
	[LinkName("gtk_style_context_to_string")]
	public static extern c_char* style_context_to_string(GtkStyleContext* context, GtkStyleContextPrintFlags flags);
	[CRepr]
	public struct GtkStyleContextClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkStyleContextPrintFlags
	{
		public const int GTK_STYLE_CONTEXT_PRINT_NONE = 0;
		public const int GTK_STYLE_CONTEXT_PRINT_RECURSE = 1;
		public const int GTK_STYLE_CONTEXT_PRINT_SHOW_STYLE = 2;
		public const int GTK_STYLE_CONTEXT_PRINT_SHOW_CHANGE = 4;
	}
	[CRepr]
	public struct GtkStyleProvider
	{	}
	[CRepr]
	public struct GtkSwitch;
	[LinkName("gtk_switch_new")]
	public static extern GtkWidget* switch_new();
	[LinkName("gtk_switch_get_active")]
	public static extern c_int switch_get_active(GtkSwitch* self);
	[LinkName("gtk_switch_get_state")]
	public static extern c_int switch_get_state(GtkSwitch* self);
	[LinkName("gtk_switch_set_active")]
	public static extern void switch_set_active(GtkSwitch* self, c_int is_active);
	[LinkName("gtk_switch_set_state")]
	public static extern void switch_set_state(GtkSwitch* self, c_int state);
	public enum GtkSymbolicColor : c_int
	{
		GTK_SYMBOLIC_COLOR_FOREGROUND,
		GTK_SYMBOLIC_COLOR_ERROR,
		GTK_SYMBOLIC_COLOR_WARNING,
		GTK_SYMBOLIC_COLOR_SUCCESS
	}
	[CRepr]
	public struct GtkSymbolicPaintable
	{
		public function void(GtkSymbolicPaintable* paintable, GdkSnapshot* snapshot, double width, double height, c_ulong n_colors) snapshot_symbolic;
	}
	[CRepr]
	public struct GtkSymbolicPaintableInterface
	{
		GTypeInterface g_iface;
	}
	public enum GtkSystemSetting : c_int
	{
		GTK_SYSTEM_SETTING_DPI,
		GTK_SYSTEM_SETTING_FONT_NAME,
		GTK_SYSTEM_SETTING_FONT_CONFIG,
		GTK_SYSTEM_SETTING_DISPLAY,
		GTK_SYSTEM_SETTING_ICON_THEME
	}
	[CRepr]
	public struct GtkText;
	[LinkName("gtk_text_new")]
	public static extern GtkWidget* text_new();
	[LinkName("gtk_text_new_with_buffer")]
	public static extern GtkWidget* text_new_with_buffer(GtkEntryBuffer* buffer);
	[LinkName("gtk_text_compute_cursor_extents")]
	public static extern void text_compute_cursor_extents(GtkText* self, c_ulong position, graphene_rect_t* strong, graphene_rect_t* weak);
	[LinkName("gtk_text_get_activates_default")]
	public static extern c_int text_get_activates_default(GtkText* self);
	[LinkName("gtk_text_get_attributes")]
	public static extern PangoAttrList* text_get_attributes(GtkText* self);
	[LinkName("gtk_text_get_buffer")]
	public static extern GtkEntryBuffer* text_get_buffer(GtkText* self);
	[LinkName("gtk_text_get_enable_emoji_completion")]
	public static extern c_int text_get_enable_emoji_completion(GtkText* self);
	[LinkName("gtk_text_get_extra_menu")]
	public static extern GMenuModel* text_get_extra_menu(GtkText* self);
	[LinkName("gtk_text_get_input_hints")]
	public static extern GtkInputHints text_get_input_hints(GtkText* self);
	[LinkName("gtk_text_get_input_purpose")]
	public static extern GtkInputPurpose text_get_input_purpose(GtkText* self);
	[LinkName("gtk_text_get_invisible_char")]
	public static extern c_uint text_get_invisible_char(GtkText* self);
	[LinkName("gtk_text_get_max_length")]
	public static extern c_int text_get_max_length(GtkText* self);
	[LinkName("gtk_text_get_overwrite_mode")]
	public static extern c_int text_get_overwrite_mode(GtkText* self);
	[LinkName("gtk_text_get_placeholder_text")]
	public static extern  c_char* text_get_placeholder_text(GtkText* self);
	[LinkName("gtk_text_get_propagate_text_width")]
	public static extern c_int text_get_propagate_text_width(GtkText* self);
	[LinkName("gtk_text_get_tabs")]
	public static extern PangoTabArray* text_get_tabs(GtkText* self);
	[LinkName("gtk_text_get_text_length")]
	public static extern c_ushort text_get_text_length(GtkText* self);
	[LinkName("gtk_text_get_truncate_multiline")]
	public static extern c_int text_get_truncate_multiline(GtkText* self);
	[LinkName("gtk_text_get_visibility")]
	public static extern c_int text_get_visibility(GtkText* self);
	[LinkName("gtk_text_grab_focus_without_selecting")]
	public static extern c_int text_grab_focus_without_selecting(GtkText* self);
	[LinkName("gtk_text_set_activates_default")]
	public static extern void text_set_activates_default(GtkText* self, c_int activates);
	[LinkName("gtk_text_set_attributes")]
	public static extern void text_set_attributes(GtkText* self, PangoAttrList* attrs);
	[LinkName("gtk_text_set_buffer")]
	public static extern void text_set_buffer(GtkText* self, GtkEntryBuffer* buffer);
	[LinkName("gtk_text_set_enable_emoji_completion")]
	public static extern void text_set_enable_emoji_completion(GtkText* self, c_int enable_emoji_completion);
	[LinkName("gtk_text_set_extra_menu")]
	public static extern void text_set_extra_menu(GtkText* self, GMenuModel* model);
	[LinkName("gtk_text_set_input_hints")]
	public static extern void text_set_input_hints(GtkText* self, GtkInputHints hints);
	[LinkName("gtk_text_set_input_purpose")]
	public static extern void text_set_input_purpose(GtkText* self, GtkInputPurpose purpose);
	[LinkName("gtk_text_set_invisible_char")]
	public static extern void text_set_invisible_char(GtkText* self, c_uint ch);
	[LinkName("gtk_text_set_max_length")]
	public static extern void text_set_max_length(GtkText* self, c_int length);
	[LinkName("gtk_text_set_overwrite_mode")]
	public static extern void text_set_overwrite_mode(GtkText* self, c_int overwrite);
	[LinkName("gtk_text_set_placeholder_text")]
	public static extern void text_set_placeholder_text(GtkText* self,  c_char* text);
	[LinkName("gtk_text_set_propagate_text_width")]
	public static extern void text_set_propagate_text_width(GtkText* self, c_int propagate_text_width);
	[LinkName("gtk_text_set_tabs")]
	public static extern void text_set_tabs(GtkText* self, PangoTabArray* tabs);
	[LinkName("gtk_text_set_truncate_multiline")]
	public static extern void text_set_truncate_multiline(GtkText* self, c_int truncate_multiline);
	[LinkName("gtk_text_set_visibility")]
	public static extern void text_set_visibility(GtkText* self, c_int visible);
	[LinkName("gtk_text_unset_invisible_char")]
	public static extern void text_unset_invisible_char(GtkText* self);
	[CRepr]
	public struct GtkTextBuffer;
	[LinkName("gtk_text_buffer_new")]
	public static extern GtkTextBuffer* text_buffer_new(GtkTextTagTable* table);
	[LinkName("gtk_text_buffer_add_mark")]
	public static extern void text_buffer_add_mark(GtkTextBuffer* buffer, GtkTextMark* mark,  GtkTextIter* where_);
	[LinkName("gtk_text_buffer_add_selection_clipboard")]
	public static extern void text_buffer_add_selection_clipboard(GtkTextBuffer* buffer, GdkClipboard* clipboard);
	[LinkName("gtk_text_buffer_apply_tag")]
	public static extern void text_buffer_apply_tag(GtkTextBuffer* buffer, GtkTextTag* tag,  GtkTextIter* start,  GtkTextIter* end);
	[LinkName("gtk_text_buffer_apply_tag_by_name")]
	public static extern void text_buffer_apply_tag_by_name(GtkTextBuffer* buffer,  c_char* name,  GtkTextIter* start,  GtkTextIter* end);
	[LinkName("gtk_text_buffer_backspace")]
	public static extern c_int text_buffer_backspace(GtkTextBuffer* buffer, GtkTextIter* iter, c_int interactive, c_int default_editable);
	[LinkName("gtk_text_buffer_begin_irreversible_action")]
	public static extern void text_buffer_begin_irreversible_action(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_begin_user_action")]
	public static extern void text_buffer_begin_user_action(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_copy_clipboard")]
	public static extern void text_buffer_copy_clipboard(GtkTextBuffer* buffer, GdkClipboard* clipboard);
	[LinkName("gtk_text_buffer_create_child_anchor")]
	public static extern GtkTextChildAnchor* text_buffer_create_child_anchor(GtkTextBuffer* buffer, GtkTextIter* iter);
	[LinkName("gtk_text_buffer_create_mark")]
	public static extern GtkTextMark* text_buffer_create_mark(GtkTextBuffer* buffer,  c_char* mark_name,  GtkTextIter* where_, c_int left_gravity);
	[LinkName("gtk_text_buffer_create_tag")]
	public static extern GtkTextTag* text_buffer_create_tag(GtkTextBuffer* buffer,  c_char* tag_name,  c_char* first_property_name);
	[LinkName("gtk_text_buffer_cut_clipboard")]
	public static extern void text_buffer_cut_clipboard(GtkTextBuffer* buffer, GdkClipboard* clipboard, c_int default_editable);
	[LinkName("gtk_text_buffer_delete")]
	public static extern void text_buffer_delete(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end);
	[LinkName("gtk_text_buffer_delete_interactive")]
	public static extern c_int text_buffer_delete_interactive(GtkTextBuffer* buffer, GtkTextIter* start_iter, GtkTextIter* end_iter, c_int default_editable);
	[LinkName("gtk_text_buffer_delete_mark")]
	public static extern void text_buffer_delete_mark(GtkTextBuffer* buffer, GtkTextMark* mark);
	[LinkName("gtk_text_buffer_delete_mark_by_name")]
	public static extern void text_buffer_delete_mark_by_name(GtkTextBuffer* buffer,  c_char* name);
	[LinkName("gtk_text_buffer_delete_selection")]
	public static extern c_int text_buffer_delete_selection(GtkTextBuffer* buffer, c_int interactive, c_int default_editable);
	[LinkName("gtk_text_buffer_end_irreversible_action")]
	public static extern void text_buffer_end_irreversible_action(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_end_user_action")]
	public static extern void text_buffer_end_user_action(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_get_bounds")]
	public static extern void text_buffer_get_bounds(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end);
	[LinkName("gtk_text_buffer_get_can_redo")]
	public static extern c_int text_buffer_get_can_redo(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_get_can_undo")]
	public static extern c_int text_buffer_get_can_undo(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_get_char_count")]
	public static extern c_int text_buffer_get_char_count(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_get_enable_undo")]
	public static extern c_int text_buffer_get_enable_undo(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_get_end_iter")]
	public static extern void text_buffer_get_end_iter(GtkTextBuffer* buffer, GtkTextIter* iter);
	[LinkName("gtk_text_buffer_get_has_selection")]
	public static extern c_int text_buffer_get_has_selection(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_get_insert")]
	public static extern GtkTextMark* text_buffer_get_insert(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_get_iter_at_child_anchor")]
	public static extern void text_buffer_get_iter_at_child_anchor(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor);
	[LinkName("gtk_text_buffer_get_iter_at_line")]
	public static extern c_int text_buffer_get_iter_at_line(GtkTextBuffer* buffer, GtkTextIter* iter, c_int line_number);
	[LinkName("gtk_text_buffer_get_iter_at_line_index")]
	public static extern c_int text_buffer_get_iter_at_line_index(GtkTextBuffer* buffer, GtkTextIter* iter, c_int line_number, c_int byte_index);
	[LinkName("gtk_text_buffer_get_iter_at_line_offset")]
	public static extern c_int text_buffer_get_iter_at_line_offset(GtkTextBuffer* buffer, GtkTextIter* iter, c_int line_number, c_int char_offset);
	[LinkName("gtk_text_buffer_get_iter_at_mark")]
	public static extern void text_buffer_get_iter_at_mark(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextMark* mark);
	[LinkName("gtk_text_buffer_get_iter_at_offset")]
	public static extern void text_buffer_get_iter_at_offset(GtkTextBuffer* buffer, GtkTextIter* iter, c_int char_offset);
	[LinkName("gtk_text_buffer_get_line_count")]
	public static extern c_int text_buffer_get_line_count(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_get_mark")]
	public static extern GtkTextMark* text_buffer_get_mark(GtkTextBuffer* buffer,  c_char* name);
	[LinkName("gtk_text_buffer_get_max_undo_levels")]
	public static extern c_uint text_buffer_get_max_undo_levels(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_get_modified")]
	public static extern c_int text_buffer_get_modified(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_get_selection_bound")]
	public static extern GtkTextMark* text_buffer_get_selection_bound(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_get_selection_bounds")]
	public static extern c_int text_buffer_get_selection_bounds(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end);
	[LinkName("gtk_text_buffer_get_selection_content")]
	public static extern GdkContentProvider* text_buffer_get_selection_content(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_get_slice")]
	public static extern c_char* text_buffer_get_slice(GtkTextBuffer* buffer,  GtkTextIter* start,  GtkTextIter* end, c_int include_hidden_chars);
	[LinkName("gtk_text_buffer_get_start_iter")]
	public static extern void text_buffer_get_start_iter(GtkTextBuffer* buffer, GtkTextIter* iter);
	[LinkName("gtk_text_buffer_get_tag_table")]
	public static extern GtkTextTagTable* text_buffer_get_tag_table(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_get_text")]
	public static extern c_char* text_buffer_get_text(GtkTextBuffer* buffer,  GtkTextIter* start,  GtkTextIter* end, c_int include_hidden_chars);
	[LinkName("gtk_text_buffer_insert")]
	public static extern void text_buffer_insert(GtkTextBuffer* buffer, GtkTextIter* iter,  c_char* text, c_int len);
	[LinkName("gtk_text_buffer_insert_at_cursor")]
	public static extern void text_buffer_insert_at_cursor(GtkTextBuffer* buffer,  c_char* text, c_int len);
	[LinkName("gtk_text_buffer_insert_child_anchor")]
	public static extern void text_buffer_insert_child_anchor(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor);
	[LinkName("gtk_text_buffer_insert_interactive")]
	public static extern c_int text_buffer_insert_interactive(GtkTextBuffer* buffer, GtkTextIter* iter,  c_char* text, c_int len, c_int default_editable);
	[LinkName("gtk_text_buffer_insert_interactive_at_cursor")]
	public static extern c_int text_buffer_insert_interactive_at_cursor(GtkTextBuffer* buffer,  c_char* text, c_int len, c_int default_editable);
	[LinkName("gtk_text_buffer_insert_markup")]
	public static extern void text_buffer_insert_markup(GtkTextBuffer* buffer, GtkTextIter* iter,  c_char* markup, c_int len);
	[LinkName("gtk_text_buffer_insert_paintable")]
	public static extern void text_buffer_insert_paintable(GtkTextBuffer* buffer, GtkTextIter* iter, GdkPaintable* paintable);
	[LinkName("gtk_text_buffer_insert_range")]
	public static extern void text_buffer_insert_range(GtkTextBuffer* buffer, GtkTextIter* iter,  GtkTextIter* start,  GtkTextIter* end);
	[LinkName("gtk_text_buffer_insert_range_interactive")]
	public static extern c_int text_buffer_insert_range_interactive(GtkTextBuffer* buffer, GtkTextIter* iter,  GtkTextIter* start,  GtkTextIter* end, c_int default_editable);
	[LinkName("gtk_text_buffer_insert_with_tags")]
	public static extern void text_buffer_insert_with_tags(GtkTextBuffer* buffer, GtkTextIter* iter,  c_char* text, c_int len, GtkTextTag* first_tag);
	[LinkName("gtk_text_buffer_insert_with_tags_by_name")]
	public static extern void text_buffer_insert_with_tags_by_name(GtkTextBuffer* buffer, GtkTextIter* iter,  c_char* text, c_int len,  c_char* first_tag_name);
	[LinkName("gtk_text_buffer_move_mark")]
	public static extern void text_buffer_move_mark(GtkTextBuffer* buffer, GtkTextMark* mark,  GtkTextIter* where_);
	[LinkName("gtk_text_buffer_move_mark_by_name")]
	public static extern void text_buffer_move_mark_by_name(GtkTextBuffer* buffer,  c_char* name,  GtkTextIter* where_);
	[LinkName("gtk_text_buffer_paste_clipboard")]
	public static extern void text_buffer_paste_clipboard(GtkTextBuffer* buffer, GdkClipboard* clipboard, GtkTextIter* override_location, c_int default_editable);
	[LinkName("gtk_text_buffer_place_cursor")]
	public static extern void text_buffer_place_cursor(GtkTextBuffer* buffer,  GtkTextIter* where_);
	[LinkName("gtk_text_buffer_redo")]
	public static extern void text_buffer_redo(GtkTextBuffer* buffer);
	[LinkName("gtk_text_buffer_remove_all_tags")]
	public static extern void text_buffer_remove_all_tags(GtkTextBuffer* buffer,  GtkTextIter* start,  GtkTextIter* end);
	[LinkName("gtk_text_buffer_remove_selection_clipboard")]
	public static extern void text_buffer_remove_selection_clipboard(GtkTextBuffer* buffer, GdkClipboard* clipboard);
	[LinkName("gtk_text_buffer_remove_tag")]
	public static extern void text_buffer_remove_tag(GtkTextBuffer* buffer, GtkTextTag* tag,  GtkTextIter* start,  GtkTextIter* end);
	[LinkName("gtk_text_buffer_remove_tag_by_name")]
	public static extern void text_buffer_remove_tag_by_name(GtkTextBuffer* buffer,  c_char* name,  GtkTextIter* start,  GtkTextIter* end);
	[LinkName("gtk_text_buffer_select_range")]
	public static extern void text_buffer_select_range(GtkTextBuffer* buffer,  GtkTextIter* ins,  GtkTextIter* bound);
	[LinkName("gtk_text_buffer_set_enable_undo")]
	public static extern void text_buffer_set_enable_undo(GtkTextBuffer* buffer, c_int enable_undo);
	[LinkName("gtk_text_buffer_set_max_undo_levels")]
	public static extern void text_buffer_set_max_undo_levels(GtkTextBuffer* buffer, c_uint max_undo_levels);
	[LinkName("gtk_text_buffer_set_modified")]
	public static extern void text_buffer_set_modified(GtkTextBuffer* buffer, c_int setting);
	[LinkName("gtk_text_buffer_set_text")]
	public static extern void text_buffer_set_text(GtkTextBuffer* buffer,  c_char* text, c_int len);
	[LinkName("gtk_text_buffer_undo")]
	public static extern void text_buffer_undo(GtkTextBuffer* buffer);
	[CRepr]
	public struct GtkTextBufferClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkTextBufferPrivate
	{
	}
	public function c_int GtkTextCharPredicate(c_uint ch, void* user_data);
	[CRepr]
	public struct GtkTextChildAnchor;
	[LinkName("gtk_text_child_anchor_new")]
	public static extern GtkTextChildAnchor* text_child_anchor_new();
	[LinkName("gtk_text_child_anchor_new_with_replacement")]
	public static extern GtkTextChildAnchor* text_child_anchor_new_with_replacement( c_char* character);
	[LinkName("gtk_text_child_anchor_get_deleted")]
	public static extern c_int text_child_anchor_get_deleted(GtkTextChildAnchor* anchor);
	[LinkName("gtk_text_child_anchor_get_widgets")]
	public static extern GtkWidget** text_child_anchor_get_widgets(GtkTextChildAnchor* anchor, c_uint* out_len);
	[CRepr]
	public struct GtkTextChildAnchorClass
	{
		GObjectClass parent_class;
	}
	public enum GtkTextDirection : c_int
	{
		GTK_TEXT_DIR_NONE,
		GTK_TEXT_DIR_LTR,
		GTK_TEXT_DIR_RTL
	}
	public enum GtkTextExtendSelection : c_int
	{
		GTK_TEXT_EXTEND_SELECTION_WORD,
		GTK_TEXT_EXTEND_SELECTION_LINE
	}
	[CRepr]
	public struct GtkTextIter
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
	public struct GtkTextMark;
	[LinkName("gtk_text_mark_new")]
	public static extern GtkTextMark* text_mark_new( c_char* name, c_int left_gravity);
	[LinkName("gtk_text_mark_get_buffer")]
	public static extern GtkTextBuffer* text_mark_get_buffer(GtkTextMark* mark);
	[LinkName("gtk_text_mark_get_deleted")]
	public static extern c_int text_mark_get_deleted(GtkTextMark* mark);
	[LinkName("gtk_text_mark_get_left_gravity")]
	public static extern c_int text_mark_get_left_gravity(GtkTextMark* mark);
	[LinkName("gtk_text_mark_get_name")]
	public static extern  c_char* text_mark_get_name(GtkTextMark* mark);
	[LinkName("gtk_text_mark_get_visible")]
	public static extern c_int text_mark_get_visible(GtkTextMark* mark);
	[LinkName("gtk_text_mark_set_visible")]
	public static extern void text_mark_set_visible(GtkTextMark* mark, c_int setting);
	[CRepr]
	public struct GtkTextMarkClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkTextSearchFlags
	{
		public const int GTK_TEXT_SEARCH_VISIBLE_ONLY = 1;
		public const int GTK_TEXT_SEARCH_TEXT_ONLY = 2;
		public const int GTK_TEXT_SEARCH_CASE_INSENSITIVE = 4;
	}
	[CRepr]
	public struct GtkTextTag;
	[LinkName("gtk_text_tag_new")]
	public static extern GtkTextTag* text_tag_new( c_char* name);
	[LinkName("gtk_text_tag_changed")]
	public static extern void text_tag_changed(GtkTextTag* tag, c_int size_changed);
	[LinkName("gtk_text_tag_get_priority")]
	public static extern c_int text_tag_get_priority(GtkTextTag* tag);
	[LinkName("gtk_text_tag_set_priority")]
	public static extern void text_tag_set_priority(GtkTextTag* tag, c_int priority);
	[CRepr]
	public struct GtkTextTagClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkTextTagPrivate
	{
	}
	[CRepr]
	public struct GtkTextTagTable;
	[LinkName("gtk_text_tag_table_new")]
	public static extern GtkTextTagTable* text_tag_table_new();
	[LinkName("gtk_text_tag_table_add")]
	public static extern c_int text_tag_table_add(GtkTextTagTable* table, GtkTextTag* tag);
	[LinkName("gtk_text_tag_table_foreach")]
	public static extern void text_tag_table_foreach(GtkTextTagTable* table, GtkTextTagTableForeach func, void* data);
	[LinkName("gtk_text_tag_table_get_size")]
	public static extern c_int text_tag_table_get_size(GtkTextTagTable* table);
	[LinkName("gtk_text_tag_table_lookup")]
	public static extern GtkTextTag* text_tag_table_lookup(GtkTextTagTable* table,  c_char* name);
	[LinkName("gtk_text_tag_table_remove")]
	public static extern void text_tag_table_remove(GtkTextTagTable* table, GtkTextTag* tag);
	public function void GtkTextTagTableForeach(GtkTextTag* tag, void* data);
	[CRepr]
	public struct GtkTextView;
	[LinkName("gtk_text_view_new")]
	public static extern GtkWidget* text_view_new();
	[LinkName("gtk_text_view_new_with_buffer")]
	public static extern GtkWidget* text_view_new_with_buffer(GtkTextBuffer* buffer);
	[LinkName("gtk_text_view_add_child_at_anchor")]
	public static extern void text_view_add_child_at_anchor(GtkTextView* text_view, GtkWidget* child, GtkTextChildAnchor* anchor);
	[LinkName("gtk_text_view_add_overlay")]
	public static extern void text_view_add_overlay(GtkTextView* text_view, GtkWidget* child, c_int xpos, c_int ypos);
	[LinkName("gtk_text_view_backward_display_line")]
	public static extern c_int text_view_backward_display_line(GtkTextView* text_view, GtkTextIter* iter);
	[LinkName("gtk_text_view_backward_display_line_start")]
	public static extern c_int text_view_backward_display_line_start(GtkTextView* text_view, GtkTextIter* iter);
	[LinkName("gtk_text_view_buffer_to_window_coords")]
	public static extern void text_view_buffer_to_window_coords(GtkTextView* text_view, GtkTextWindowType win, c_int buffer_x, c_int buffer_y, c_int* window_x, c_int* window_y);
	[LinkName("gtk_text_view_forward_display_line")]
	public static extern c_int text_view_forward_display_line(GtkTextView* text_view, GtkTextIter* iter);
	[LinkName("gtk_text_view_forward_display_line_end")]
	public static extern c_int text_view_forward_display_line_end(GtkTextView* text_view, GtkTextIter* iter);
	[LinkName("gtk_text_view_get_accepts_tab")]
	public static extern c_int text_view_get_accepts_tab(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_bottom_margin")]
	public static extern c_int text_view_get_bottom_margin(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_buffer")]
	public static extern GtkTextBuffer* text_view_get_buffer(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_cursor_locations")]
	public static extern void text_view_get_cursor_locations(GtkTextView* text_view,  GtkTextIter* iter, GdkRectangle* strong, GdkRectangle* weak);
	[LinkName("gtk_text_view_get_cursor_visible")]
	public static extern c_int text_view_get_cursor_visible(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_editable")]
	public static extern c_int text_view_get_editable(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_extra_menu")]
	public static extern GMenuModel* text_view_get_extra_menu(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_gutter")]
	public static extern GtkWidget* text_view_get_gutter(GtkTextView* text_view, GtkTextWindowType win);
	[LinkName("gtk_text_view_get_indent")]
	public static extern c_int text_view_get_indent(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_input_hints")]
	public static extern GtkInputHints text_view_get_input_hints(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_input_purpose")]
	public static extern GtkInputPurpose text_view_get_input_purpose(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_iter_at_location")]
	public static extern c_int text_view_get_iter_at_location(GtkTextView* text_view, GtkTextIter* iter, c_int x, c_int y);
	[LinkName("gtk_text_view_get_iter_at_position")]
	public static extern c_int text_view_get_iter_at_position(GtkTextView* text_view, GtkTextIter* iter, c_int* trailing, c_int x, c_int y);
	[LinkName("gtk_text_view_get_iter_location")]
	public static extern void text_view_get_iter_location(GtkTextView* text_view,  GtkTextIter* iter, GdkRectangle* location);
	[LinkName("gtk_text_view_get_justification")]
	public static extern GtkJustification text_view_get_justification(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_left_margin")]
	public static extern c_int text_view_get_left_margin(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_line_at_y")]
	public static extern void text_view_get_line_at_y(GtkTextView* text_view, GtkTextIter* target_iter, c_int y, c_int* line_top);
	[LinkName("gtk_text_view_get_line_yrange")]
	public static extern void text_view_get_line_yrange(GtkTextView* text_view,  GtkTextIter* iter, c_int* y, c_int* height);
	[LinkName("gtk_text_view_get_ltr_context")]
	public static extern PangoContext* text_view_get_ltr_context(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_monospace")]
	public static extern c_int text_view_get_monospace(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_overwrite")]
	public static extern c_int text_view_get_overwrite(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_pixels_above_lines")]
	public static extern c_int text_view_get_pixels_above_lines(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_pixels_below_lines")]
	public static extern c_int text_view_get_pixels_below_lines(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_pixels_inside_wrap")]
	public static extern c_int text_view_get_pixels_inside_wrap(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_right_margin")]
	public static extern c_int text_view_get_right_margin(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_rtl_context")]
	public static extern PangoContext* text_view_get_rtl_context(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_tabs")]
	public static extern PangoTabArray* text_view_get_tabs(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_top_margin")]
	public static extern c_int text_view_get_top_margin(GtkTextView* text_view);
	[LinkName("gtk_text_view_get_visible_rect")]
	public static extern void text_view_get_visible_rect(GtkTextView* text_view, GdkRectangle* visible_rect);
	[LinkName("gtk_text_view_get_wrap_mode")]
	public static extern GtkWrapMode text_view_get_wrap_mode(GtkTextView* text_view);
	[LinkName("gtk_text_view_im_context_filter_keypress")]
	public static extern c_int text_view_im_context_filter_keypress(GtkTextView* text_view, GdkEvent* event);
	[LinkName("gtk_text_view_move_mark_onscreen")]
	public static extern c_int text_view_move_mark_onscreen(GtkTextView* text_view, GtkTextMark* mark);
	[LinkName("gtk_text_view_move_overlay")]
	public static extern void text_view_move_overlay(GtkTextView* text_view, GtkWidget* child, c_int xpos, c_int ypos);
	[LinkName("gtk_text_view_move_visually")]
	public static extern c_int text_view_move_visually(GtkTextView* text_view, GtkTextIter* iter, c_int count);
	[LinkName("gtk_text_view_place_cursor_onscreen")]
	public static extern c_int text_view_place_cursor_onscreen(GtkTextView* text_view);
	[LinkName("gtk_text_view_remove")]
	public static extern void text_view_remove(GtkTextView* text_view, GtkWidget* child);
	[LinkName("gtk_text_view_reset_cursor_blink")]
	public static extern void text_view_reset_cursor_blink(GtkTextView* text_view);
	[LinkName("gtk_text_view_reset_im_context")]
	public static extern void text_view_reset_im_context(GtkTextView* text_view);
	[LinkName("gtk_text_view_scroll_mark_onscreen")]
	public static extern void text_view_scroll_mark_onscreen(GtkTextView* text_view, GtkTextMark* mark);
	[LinkName("gtk_text_view_scroll_to_iter")]
	public static extern c_int text_view_scroll_to_iter(GtkTextView* text_view, GtkTextIter* iter, double within_margin, c_int use_align, double xalign, double yalign);
	[LinkName("gtk_text_view_scroll_to_mark")]
	public static extern void text_view_scroll_to_mark(GtkTextView* text_view, GtkTextMark* mark, double within_margin, c_int use_align, double xalign, double yalign);
	[LinkName("gtk_text_view_set_accepts_tab")]
	public static extern void text_view_set_accepts_tab(GtkTextView* text_view, c_int accepts_tab);
	[LinkName("gtk_text_view_set_bottom_margin")]
	public static extern void text_view_set_bottom_margin(GtkTextView* text_view, c_int bottom_margin);
	[LinkName("gtk_text_view_set_buffer")]
	public static extern void text_view_set_buffer(GtkTextView* text_view, GtkTextBuffer* buffer);
	[LinkName("gtk_text_view_set_cursor_visible")]
	public static extern void text_view_set_cursor_visible(GtkTextView* text_view, c_int setting);
	[LinkName("gtk_text_view_set_editable")]
	public static extern void text_view_set_editable(GtkTextView* text_view, c_int setting);
	[LinkName("gtk_text_view_set_extra_menu")]
	public static extern void text_view_set_extra_menu(GtkTextView* text_view, GMenuModel* model);
	[LinkName("gtk_text_view_set_gutter")]
	public static extern void text_view_set_gutter(GtkTextView* text_view, GtkTextWindowType win, GtkWidget* widget);
	[LinkName("gtk_text_view_set_indent")]
	public static extern void text_view_set_indent(GtkTextView* text_view, c_int indent);
	[LinkName("gtk_text_view_set_input_hints")]
	public static extern void text_view_set_input_hints(GtkTextView* text_view, GtkInputHints hints);
	[LinkName("gtk_text_view_set_input_purpose")]
	public static extern void text_view_set_input_purpose(GtkTextView* text_view, GtkInputPurpose purpose);
	[LinkName("gtk_text_view_set_justification")]
	public static extern void text_view_set_justification(GtkTextView* text_view, GtkJustification justification);
	[LinkName("gtk_text_view_set_left_margin")]
	public static extern void text_view_set_left_margin(GtkTextView* text_view, c_int left_margin);
	[LinkName("gtk_text_view_set_monospace")]
	public static extern void text_view_set_monospace(GtkTextView* text_view, c_int monospace);
	[LinkName("gtk_text_view_set_overwrite")]
	public static extern void text_view_set_overwrite(GtkTextView* text_view, c_int overwrite);
	[LinkName("gtk_text_view_set_pixels_above_lines")]
	public static extern void text_view_set_pixels_above_lines(GtkTextView* text_view, c_int pixels_above_lines);
	[LinkName("gtk_text_view_set_pixels_below_lines")]
	public static extern void text_view_set_pixels_below_lines(GtkTextView* text_view, c_int pixels_below_lines);
	[LinkName("gtk_text_view_set_pixels_inside_wrap")]
	public static extern void text_view_set_pixels_inside_wrap(GtkTextView* text_view, c_int pixels_inside_wrap);
	[LinkName("gtk_text_view_set_right_margin")]
	public static extern void text_view_set_right_margin(GtkTextView* text_view, c_int right_margin);
	[LinkName("gtk_text_view_set_tabs")]
	public static extern void text_view_set_tabs(GtkTextView* text_view, PangoTabArray* tabs);
	[LinkName("gtk_text_view_set_top_margin")]
	public static extern void text_view_set_top_margin(GtkTextView* text_view, c_int top_margin);
	[LinkName("gtk_text_view_set_wrap_mode")]
	public static extern void text_view_set_wrap_mode(GtkTextView* text_view, GtkWrapMode wrap_mode);
	[LinkName("gtk_text_view_starts_display_line")]
	public static extern c_int text_view_starts_display_line(GtkTextView* text_view,  GtkTextIter* iter);
	[LinkName("gtk_text_view_window_to_buffer_coords")]
	public static extern void text_view_window_to_buffer_coords(GtkTextView* text_view, GtkTextWindowType win, c_int window_x, c_int window_y, c_int* buffer_x, c_int* buffer_y);
	[CRepr]
	public struct GtkTextViewClass
	{
		GtkWidgetClass parent_class;
	}
	public enum GtkTextViewLayer : c_int
	{
		GTK_TEXT_VIEW_LAYER_BELOW_TEXT,
		GTK_TEXT_VIEW_LAYER_ABOVE_TEXT
	}
	[CRepr]
	public struct GtkTextViewPrivate
	{
	}
	public enum GtkTextWindowType : c_int
	{
		GTK_TEXT_WINDOW_WIDGET,
		GTK_TEXT_WINDOW_TEXT,
		GTK_TEXT_WINDOW_LEFT,
		GTK_TEXT_WINDOW_RIGHT,
		GTK_TEXT_WINDOW_TOP,
		GTK_TEXT_WINDOW_BOTTOM
	}
	public function c_int GtkTickCallback(GtkWidget* widget, GdkFrameClock* frame_clock, void* user_data);
	[CRepr]
	public struct GtkToggleButton;
	[LinkName("gtk_toggle_button_new")]
	public static extern GtkWidget* toggle_button_new();
	[LinkName("gtk_toggle_button_new_with_label")]
	public static extern GtkWidget* toggle_button_new_with_label( c_char* label);
	[LinkName("gtk_toggle_button_new_with_mnemonic")]
	public static extern GtkWidget* toggle_button_new_with_mnemonic( c_char* label);
	[LinkName("gtk_toggle_button_get_active")]
	public static extern c_int toggle_button_get_active(GtkToggleButton* toggle_button);
	[LinkName("gtk_toggle_button_set_active")]
	public static extern void toggle_button_set_active(GtkToggleButton* toggle_button, c_int is_active);
	[LinkName("gtk_toggle_button_set_group")]
	public static extern void toggle_button_set_group(GtkToggleButton* toggle_button, GtkToggleButton* group);
	[LinkName("gtk_toggle_button_toggled")]
	public static extern void toggle_button_toggled(GtkToggleButton* toggle_button);
	[CRepr]
	public struct GtkToggleButtonClass
	{
		GtkButtonClass parent_class;
	}
	[CRepr]
	public struct GtkTooltip;
	[LinkName("gtk_tooltip_set_custom")]
	public static extern void tooltip_set_custom(GtkTooltip* tooltip, GtkWidget* custom_widget);
	[LinkName("gtk_tooltip_set_icon")]
	public static extern void tooltip_set_icon(GtkTooltip* tooltip, GdkPaintable* paintable);
	[LinkName("gtk_tooltip_set_icon_from_gicon")]
	public static extern void tooltip_set_icon_from_gicon(GtkTooltip* tooltip, GIcon* gicon);
	[LinkName("gtk_tooltip_set_icon_from_icon_name")]
	public static extern void tooltip_set_icon_from_icon_name(GtkTooltip* tooltip,  c_char* icon_name);
	[LinkName("gtk_tooltip_set_markup")]
	public static extern void tooltip_set_markup(GtkTooltip* tooltip,  c_char* markup);
	[LinkName("gtk_tooltip_set_text")]
	public static extern void tooltip_set_text(GtkTooltip* tooltip,  c_char* text);
	[LinkName("gtk_tooltip_set_tip_area")]
	public static extern void tooltip_set_tip_area(GtkTooltip* tooltip,  GdkRectangle* rect);
	public function void GtkTreeCellDataFunc(GtkTreeViewColumn* tree_column, GtkCellRenderer* cell, GtkTreeModel* tree_model, GtkTreeIter* iter, void* data);
	[CRepr]
	public struct GtkTreeDragDest
	{
		public function c_int(GtkTreeDragDest* drag_dest, GtkTreePath* dest,  GValue* value) drag_data_received;

		public function c_int(GtkTreeDragDest* drag_dest, GtkTreePath* dest_path,  GValue* value) row_drop_possible;
	}
	[CRepr]
	public struct GtkTreeDragDestIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GtkTreeDragSource
	{
		public function c_int(GtkTreeDragSource* drag_source, GtkTreePath* path) drag_data_delete;

		public function GdkContentProvider*(GtkTreeDragSource* drag_source, GtkTreePath* path) drag_data_get;

		public function c_int(GtkTreeDragSource* drag_source, GtkTreePath* path) row_draggable;
	}
	[CRepr]
	public struct GtkTreeDragSourceIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GtkTreeExpander;
	[LinkName("gtk_tree_expander_new")]
	public static extern GtkWidget* tree_expander_new();
	[LinkName("gtk_tree_expander_get_child")]
	public static extern GtkWidget* tree_expander_get_child(GtkTreeExpander* self);
	[LinkName("gtk_tree_expander_get_hide_expander")]
	public static extern c_int tree_expander_get_hide_expander(GtkTreeExpander* self);
	[LinkName("gtk_tree_expander_get_indent_for_depth")]
	public static extern c_int tree_expander_get_indent_for_depth(GtkTreeExpander* self);
	[LinkName("gtk_tree_expander_get_indent_for_icon")]
	public static extern c_int tree_expander_get_indent_for_icon(GtkTreeExpander* self);
	[LinkName("gtk_tree_expander_get_item")]
	public static extern void* tree_expander_get_item(GtkTreeExpander* self);
	[LinkName("gtk_tree_expander_get_list_row")]
	public static extern GtkTreeListRow* tree_expander_get_list_row(GtkTreeExpander* self);
	[LinkName("gtk_tree_expander_set_child")]
	public static extern void tree_expander_set_child(GtkTreeExpander* self, GtkWidget* child);
	[LinkName("gtk_tree_expander_set_hide_expander")]
	public static extern void tree_expander_set_hide_expander(GtkTreeExpander* self, c_int hide_expander);
	[LinkName("gtk_tree_expander_set_indent_for_depth")]
	public static extern void tree_expander_set_indent_for_depth(GtkTreeExpander* self, c_int indent_for_depth);
	[LinkName("gtk_tree_expander_set_indent_for_icon")]
	public static extern void tree_expander_set_indent_for_icon(GtkTreeExpander* self, c_int indent_for_icon);
	[LinkName("gtk_tree_expander_set_list_row")]
	public static extern void tree_expander_set_list_row(GtkTreeExpander* self, GtkTreeListRow* list_row);
	[CRepr]
	public struct GtkTreeExpanderClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkTreeIter
	{
		c_int stamp;
		void* user_data;
		void* user_data2;
		void* user_data3;
	}
	public function c_int GtkTreeIterCompareFunc(GtkTreeModel* model, GtkTreeIter* a, GtkTreeIter* b, void* user_data);
	[CRepr]
	public struct GtkTreeListModel;
	[LinkName("gtk_tree_list_model_new")]
	public static extern GtkTreeListModel* tree_list_model_new(GListModel* root, c_int passthrough, c_int autoexpand, GtkTreeListModelCreateModelFunc create_func, void* user_data, GDestroyNotify user_destroy);
	[LinkName("gtk_tree_list_model_get_autoexpand")]
	public static extern c_int tree_list_model_get_autoexpand(GtkTreeListModel* self);
	[LinkName("gtk_tree_list_model_get_child_row")]
	public static extern GtkTreeListRow* tree_list_model_get_child_row(GtkTreeListModel* self, c_uint position);
	[LinkName("gtk_tree_list_model_get_model")]
	public static extern GListModel* tree_list_model_get_model(GtkTreeListModel* self);
	[LinkName("gtk_tree_list_model_get_passthrough")]
	public static extern c_int tree_list_model_get_passthrough(GtkTreeListModel* self);
	[LinkName("gtk_tree_list_model_get_row")]
	public static extern GtkTreeListRow* tree_list_model_get_row(GtkTreeListModel* self, c_uint position);
	[LinkName("gtk_tree_list_model_set_autoexpand")]
	public static extern void tree_list_model_set_autoexpand(GtkTreeListModel* self, c_int autoexpand);
	[CRepr]
	public struct GtkTreeListModelClass
	{
		GObjectClass parent_class;
	}
	public function GListModel* GtkTreeListModelCreateModelFunc(void* item, void* user_data);
	[CRepr]
	public struct GtkTreeListRow;
	[LinkName("gtk_tree_list_row_get_child_row")]
	public static extern GtkTreeListRow* tree_list_row_get_child_row(GtkTreeListRow* self, c_uint position);
	[LinkName("gtk_tree_list_row_get_children")]
	public static extern GListModel* tree_list_row_get_children(GtkTreeListRow* self);
	[LinkName("gtk_tree_list_row_get_depth")]
	public static extern c_uint tree_list_row_get_depth(GtkTreeListRow* self);
	[LinkName("gtk_tree_list_row_get_expanded")]
	public static extern c_int tree_list_row_get_expanded(GtkTreeListRow* self);
	[LinkName("gtk_tree_list_row_get_item")]
	public static extern void* tree_list_row_get_item(GtkTreeListRow* self);
	[LinkName("gtk_tree_list_row_get_parent")]
	public static extern GtkTreeListRow* tree_list_row_get_parent(GtkTreeListRow* self);
	[LinkName("gtk_tree_list_row_get_position")]
	public static extern c_uint tree_list_row_get_position(GtkTreeListRow* self);
	[LinkName("gtk_tree_list_row_is_expandable")]
	public static extern c_int tree_list_row_is_expandable(GtkTreeListRow* self);
	[LinkName("gtk_tree_list_row_set_expanded")]
	public static extern void tree_list_row_set_expanded(GtkTreeListRow* self, c_int expanded);
	[CRepr]
	public struct GtkTreeListRowClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkTreeListRowSorter;
	[LinkName("gtk_tree_list_row_sorter_new")]
	public static extern GtkTreeListRowSorter* tree_list_row_sorter_new(GtkSorter* sorter);
	[LinkName("gtk_tree_list_row_sorter_get_sorter")]
	public static extern GtkSorter* tree_list_row_sorter_get_sorter(GtkTreeListRowSorter* self);
	[LinkName("gtk_tree_list_row_sorter_set_sorter")]
	public static extern void tree_list_row_sorter_set_sorter(GtkTreeListRowSorter* self, GtkSorter* sorter);
	[CRepr]
	public struct GtkTreeListRowSorterClass
	{
		GtkSorterClass parent_class;
	}
	[CRepr]
	public struct GtkTreeModel
	{
		public function GType(GtkTreeModel* tree_model, c_int index_) get_column_type;

		public function GtkTreeModelFlags(GtkTreeModel* tree_model) get_flags;

		public function c_int(GtkTreeModel* tree_model, GtkTreeIter* iter, GtkTreePath* path) get_iter;

		public function c_int(GtkTreeModel* tree_model) get_n_columns;

		public function GtkTreePath*(GtkTreeModel* tree_model, GtkTreeIter* iter) get_path;

		public function void(GtkTreeModel* tree_model, GtkTreeIter* iter, c_int column, GValue* value) get_value;

		public function c_int(GtkTreeModel* tree_model, GtkTreeIter* iter, GtkTreeIter* parent) iter_children;

		public function c_int(GtkTreeModel* tree_model, GtkTreeIter* iter) iter_has_child;

		public function c_int(GtkTreeModel* tree_model, GtkTreeIter* iter) iter_n_children;

		public function c_int(GtkTreeModel* tree_model, GtkTreeIter* iter) iter_next;

		public function c_int(GtkTreeModel* tree_model, GtkTreeIter* iter, GtkTreeIter* parent, c_int n) iter_nth_child;

		public function c_int(GtkTreeModel* tree_model, GtkTreeIter* iter, GtkTreeIter* child) iter_parent;

		public function c_int(GtkTreeModel* tree_model, GtkTreeIter* iter) iter_previous;

		public function void(GtkTreeModel* tree_model, GtkTreeIter* iter) ref_node;

		public function void(GtkTreeModel* tree_model, GtkTreePath* path, GtkTreeIter* iter) row_changed;

		public function void(GtkTreeModel* tree_model, GtkTreePath* path) row_deleted;

		public function void(GtkTreeModel* tree_model, GtkTreePath* path, GtkTreeIter* iter) row_has_child_toggled;

		public function void(GtkTreeModel* tree_model, GtkTreePath* path, GtkTreeIter* iter) row_inserted;

		public function void(GtkTreeModel* tree_model, GtkTreePath* path, GtkTreeIter* iter, c_int* new_order) rows_reordered;

		public function void(GtkTreeModel* tree_model, GtkTreeIter* iter) unref_node;
	}
	[CRepr]
	public struct GtkTreeModelFilter;
	[LinkName("gtk_tree_model_filter_clear_cache")]
	public static extern void tree_model_filter_clear_cache(GtkTreeModelFilter* filter);
	[LinkName("gtk_tree_model_filter_convert_child_iter_to_iter")]
	public static extern c_int tree_model_filter_convert_child_iter_to_iter(GtkTreeModelFilter* filter, GtkTreeIter* filter_iter, GtkTreeIter* child_iter);
	[LinkName("gtk_tree_model_filter_convert_child_path_to_path")]
	public static extern GtkTreePath* tree_model_filter_convert_child_path_to_path(GtkTreeModelFilter* filter, GtkTreePath* child_path);
	[LinkName("gtk_tree_model_filter_convert_iter_to_child_iter")]
	public static extern void tree_model_filter_convert_iter_to_child_iter(GtkTreeModelFilter* filter, GtkTreeIter* child_iter, GtkTreeIter* filter_iter);
	[LinkName("gtk_tree_model_filter_convert_path_to_child_path")]
	public static extern GtkTreePath* tree_model_filter_convert_path_to_child_path(GtkTreeModelFilter* filter, GtkTreePath* filter_path);
	[LinkName("gtk_tree_model_filter_get_model")]
	public static extern GtkTreeModel* tree_model_filter_get_model(GtkTreeModelFilter* filter);
	[LinkName("gtk_tree_model_filter_refilter")]
	public static extern void tree_model_filter_refilter(GtkTreeModelFilter* filter);
	[LinkName("gtk_tree_model_filter_set_modify_func")]
	public static extern void tree_model_filter_set_modify_func(GtkTreeModelFilter* filter, c_int n_columns, GtkTreeModelFilterModifyFunc func, void* data, GDestroyNotify destroy);
	[LinkName("gtk_tree_model_filter_set_visible_column")]
	public static extern void tree_model_filter_set_visible_column(GtkTreeModelFilter* filter, c_int column);
	[LinkName("gtk_tree_model_filter_set_visible_func")]
	public static extern void tree_model_filter_set_visible_func(GtkTreeModelFilter* filter, GtkTreeModelFilterVisibleFunc func, void* data, GDestroyNotify destroy);
	[CRepr]
	public struct GtkTreeModelFilterClass
	{
		GObjectClass parent_class;
	}
	public function void GtkTreeModelFilterModifyFunc(GtkTreeModel* model, GtkTreeIter* iter, GValue* value, c_int column, void* data);
	[CRepr]
	public struct GtkTreeModelFilterPrivate
	{
	}
	public function c_int GtkTreeModelFilterVisibleFunc(GtkTreeModel* model, GtkTreeIter* iter, void* data);
	[CRepr]
	public struct GtkTreeModelFlags
	{
		public const int GTK_TREE_MODEL_ITERS_PERSIST = 1;
		public const int GTK_TREE_MODEL_LIST_ONLY = 2;
	}
	public function c_int GtkTreeModelForeachFunc(GtkTreeModel* model, GtkTreePath* path, GtkTreeIter* iter, void* data);
	[CRepr]
	public struct GtkTreeModelIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GtkTreeModelSort;
	[LinkName("gtk_tree_model_sort_new_with_model")]
	public static extern GtkTreeModel* tree_model_sort_new_with_model(GtkTreeModel* child_model);
	[LinkName("gtk_tree_model_sort_clear_cache")]
	public static extern void tree_model_sort_clear_cache(GtkTreeModelSort* tree_model_sort);
	[LinkName("gtk_tree_model_sort_convert_child_iter_to_iter")]
	public static extern c_int tree_model_sort_convert_child_iter_to_iter(GtkTreeModelSort* tree_model_sort, GtkTreeIter* sort_iter, GtkTreeIter* child_iter);
	[LinkName("gtk_tree_model_sort_convert_child_path_to_path")]
	public static extern GtkTreePath* tree_model_sort_convert_child_path_to_path(GtkTreeModelSort* tree_model_sort, GtkTreePath* child_path);
	[LinkName("gtk_tree_model_sort_convert_iter_to_child_iter")]
	public static extern void tree_model_sort_convert_iter_to_child_iter(GtkTreeModelSort* tree_model_sort, GtkTreeIter* child_iter, GtkTreeIter* sorted_iter);
	[LinkName("gtk_tree_model_sort_convert_path_to_child_path")]
	public static extern GtkTreePath* tree_model_sort_convert_path_to_child_path(GtkTreeModelSort* tree_model_sort, GtkTreePath* sorted_path);
	[LinkName("gtk_tree_model_sort_get_model")]
	public static extern GtkTreeModel* tree_model_sort_get_model(GtkTreeModelSort* tree_model);
	[LinkName("gtk_tree_model_sort_iter_is_valid")]
	public static extern c_int tree_model_sort_iter_is_valid(GtkTreeModelSort* tree_model_sort, GtkTreeIter* iter);
	[LinkName("gtk_tree_model_sort_reset_default_sort_func")]
	public static extern void tree_model_sort_reset_default_sort_func(GtkTreeModelSort* tree_model_sort);
	[CRepr]
	public struct GtkTreeModelSortClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkTreeModelSortPrivate
	{
	}
	[CRepr]
	public struct GtkTreePath
	{
	}
	[CRepr]
	public struct GtkTreeRowReference
	{
	}
	[CRepr]
	public struct GtkTreeSelection;
	[LinkName("gtk_tree_selection_count_selected_rows")]
	public static extern c_int tree_selection_count_selected_rows(GtkTreeSelection* selection);
	[LinkName("gtk_tree_selection_get_mode")]
	public static extern GtkSelectionMode tree_selection_get_mode(GtkTreeSelection* selection);
	[LinkName("gtk_tree_selection_get_select_function")]
	public static extern GtkTreeSelectionFunc tree_selection_get_select_function(GtkTreeSelection* selection);
	[LinkName("gtk_tree_selection_get_selected")]
	public static extern c_int tree_selection_get_selected(GtkTreeSelection* selection, GtkTreeModel** model, GtkTreeIter* iter);
	[LinkName("gtk_tree_selection_get_selected_rows")]
	public static extern GList* tree_selection_get_selected_rows(GtkTreeSelection* selection, GtkTreeModel** model);
	[LinkName("gtk_tree_selection_get_tree_view")]
	public static extern GtkTreeView* tree_selection_get_tree_view(GtkTreeSelection* selection);
	[LinkName("gtk_tree_selection_get_user_data")]
	public static extern void* tree_selection_get_user_data(GtkTreeSelection* selection);
	[LinkName("gtk_tree_selection_iter_is_selected")]
	public static extern c_int tree_selection_iter_is_selected(GtkTreeSelection* selection, GtkTreeIter* iter);
	[LinkName("gtk_tree_selection_path_is_selected")]
	public static extern c_int tree_selection_path_is_selected(GtkTreeSelection* selection, GtkTreePath* path);
	[LinkName("gtk_tree_selection_select_all")]
	public static extern void tree_selection_select_all(GtkTreeSelection* selection);
	[LinkName("gtk_tree_selection_select_iter")]
	public static extern void tree_selection_select_iter(GtkTreeSelection* selection, GtkTreeIter* iter);
	[LinkName("gtk_tree_selection_select_path")]
	public static extern void tree_selection_select_path(GtkTreeSelection* selection, GtkTreePath* path);
	[LinkName("gtk_tree_selection_select_range")]
	public static extern void tree_selection_select_range(GtkTreeSelection* selection, GtkTreePath* start_path, GtkTreePath* end_path);
	[LinkName("gtk_tree_selection_selected_foreach")]
	public static extern void tree_selection_selected_foreach(GtkTreeSelection* selection, GtkTreeSelectionForeachFunc func, void* data);
	[LinkName("gtk_tree_selection_set_mode")]
	public static extern void tree_selection_set_mode(GtkTreeSelection* selection, GtkSelectionMode type);
	[LinkName("gtk_tree_selection_set_select_function")]
	public static extern void tree_selection_set_select_function(GtkTreeSelection* selection, GtkTreeSelectionFunc func, void* data, GDestroyNotify destroy);
	[LinkName("gtk_tree_selection_unselect_all")]
	public static extern void tree_selection_unselect_all(GtkTreeSelection* selection);
	[LinkName("gtk_tree_selection_unselect_iter")]
	public static extern void tree_selection_unselect_iter(GtkTreeSelection* selection, GtkTreeIter* iter);
	[LinkName("gtk_tree_selection_unselect_path")]
	public static extern void tree_selection_unselect_path(GtkTreeSelection* selection, GtkTreePath* path);
	[LinkName("gtk_tree_selection_unselect_range")]
	public static extern void tree_selection_unselect_range(GtkTreeSelection* selection, GtkTreePath* start_path, GtkTreePath* end_path);
	public function void GtkTreeSelectionForeachFunc(GtkTreeModel* model, GtkTreePath* path, GtkTreeIter* iter, void* data);
	public function c_int GtkTreeSelectionFunc(GtkTreeSelection* selection, GtkTreeModel* model, GtkTreePath* path, c_int path_currently_selected, void* data);
	[CRepr]
	public struct GtkTreeSortable
	{
		public function c_int(GtkTreeSortable* sortable, c_int* sort_column_id, GtkSortType* order) get_sort_column_id;

		public function c_int(GtkTreeSortable* sortable) has_default_sort_func;

		public function void(GtkTreeSortable* sortable, GtkTreeIterCompareFunc sort_func, void* user_data, GDestroyNotify destroy) set_default_sort_func;

		public function void(GtkTreeSortable* sortable, c_int sort_column_id, GtkSortType order) set_sort_column_id;

		public function void(GtkTreeSortable* sortable, c_int sort_column_id, GtkTreeIterCompareFunc sort_func, void* user_data, GDestroyNotify destroy) set_sort_func;

		public function void(GtkTreeSortable* sortable) sort_column_changed;
	}
	[CRepr]
	public struct GtkTreeSortableIface
	{
		GTypeInterface g_iface;
	}
	[CRepr]
	public struct GtkTreeStore;
	[LinkName("gtk_tree_store_new")]
	public static extern GtkTreeStore* tree_store_new(c_int n_columns);
	[LinkName("gtk_tree_store_newv")]
	public static extern GtkTreeStore* tree_store_newv(c_int n_columns);
	[LinkName("gtk_tree_store_append")]
	public static extern void tree_store_append(GtkTreeStore* tree_store, GtkTreeIter* iter, GtkTreeIter* parent);
	[LinkName("gtk_tree_store_clear")]
	public static extern void tree_store_clear(GtkTreeStore* tree_store);
	[LinkName("gtk_tree_store_insert")]
	public static extern void tree_store_insert(GtkTreeStore* tree_store, GtkTreeIter* iter, GtkTreeIter* parent, c_int position);
	[LinkName("gtk_tree_store_insert_after")]
	public static extern void tree_store_insert_after(GtkTreeStore* tree_store, GtkTreeIter* iter, GtkTreeIter* parent, GtkTreeIter* sibling);
	[LinkName("gtk_tree_store_insert_before")]
	public static extern void tree_store_insert_before(GtkTreeStore* tree_store, GtkTreeIter* iter, GtkTreeIter* parent, GtkTreeIter* sibling);
	[LinkName("gtk_tree_store_insert_with_values")]
	public static extern void tree_store_insert_with_values(GtkTreeStore* tree_store, GtkTreeIter* iter, GtkTreeIter* parent, c_int position);
	[LinkName("gtk_tree_store_insert_with_valuesv")]
	public static extern void tree_store_insert_with_valuesv(GtkTreeStore* tree_store, GtkTreeIter* iter, GtkTreeIter* parent, c_int position, c_int n_values);
	[LinkName("gtk_tree_store_is_ancestor")]
	public static extern c_int tree_store_is_ancestor(GtkTreeStore* tree_store, GtkTreeIter* iter, GtkTreeIter* descendant);
	[LinkName("gtk_tree_store_iter_depth")]
	public static extern c_int tree_store_iter_depth(GtkTreeStore* tree_store, GtkTreeIter* iter);
	[LinkName("gtk_tree_store_iter_is_valid")]
	public static extern c_int tree_store_iter_is_valid(GtkTreeStore* tree_store, GtkTreeIter* iter);
	[LinkName("gtk_tree_store_move_after")]
	public static extern void tree_store_move_after(GtkTreeStore* tree_store, GtkTreeIter* iter, GtkTreeIter* position);
	[LinkName("gtk_tree_store_move_before")]
	public static extern void tree_store_move_before(GtkTreeStore* tree_store, GtkTreeIter* iter, GtkTreeIter* position);
	[LinkName("gtk_tree_store_prepend")]
	public static extern void tree_store_prepend(GtkTreeStore* tree_store, GtkTreeIter* iter, GtkTreeIter* parent);
	[LinkName("gtk_tree_store_remove")]
	public static extern c_int tree_store_remove(GtkTreeStore* tree_store, GtkTreeIter* iter);
	[LinkName("gtk_tree_store_reorder")]
	public static extern void tree_store_reorder(GtkTreeStore* tree_store, GtkTreeIter* parent);
	[LinkName("gtk_tree_store_set")]
	public static extern void tree_store_set(GtkTreeStore* tree_store, GtkTreeIter* iter);
	[LinkName("gtk_tree_store_set_column_types")]
	public static extern void tree_store_set_column_types(GtkTreeStore* tree_store, c_int n_columns);
	[LinkName("gtk_tree_store_set_valist")]
	public static extern void tree_store_set_valist(GtkTreeStore* tree_store, GtkTreeIter* iter, VarArgs var_args);
	[LinkName("gtk_tree_store_set_value")]
	public static extern void tree_store_set_value(GtkTreeStore* tree_store, GtkTreeIter* iter, c_int column, GValue* value);
	[LinkName("gtk_tree_store_set_valuesv")]
	public static extern void tree_store_set_valuesv(GtkTreeStore* tree_store, GtkTreeIter* iter, c_int n_values);
	[LinkName("gtk_tree_store_swap")]
	public static extern void tree_store_swap(GtkTreeStore* tree_store, GtkTreeIter* a, GtkTreeIter* b);
	[CRepr]
	public struct GtkTreeStoreClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkTreeStorePrivate
	{
	}
	[CRepr]
	public struct GtkTreeView;
	[LinkName("gtk_tree_view_new")]
	public static extern GtkWidget* tree_view_new();
	[LinkName("gtk_tree_view_new_with_model")]
	public static extern GtkWidget* tree_view_new_with_model(GtkTreeModel* model);
	[LinkName("gtk_tree_view_append_column")]
	public static extern c_int tree_view_append_column(GtkTreeView* tree_view, GtkTreeViewColumn* column);
	[LinkName("gtk_tree_view_collapse_all")]
	public static extern void tree_view_collapse_all(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_collapse_row")]
	public static extern c_int tree_view_collapse_row(GtkTreeView* tree_view, GtkTreePath* path);
	[LinkName("gtk_tree_view_columns_autosize")]
	public static extern void tree_view_columns_autosize(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_convert_bin_window_to_tree_coords")]
	public static extern void tree_view_convert_bin_window_to_tree_coords(GtkTreeView* tree_view, c_int bx, c_int by, c_int* tx, c_int* ty);
	[LinkName("gtk_tree_view_convert_bin_window_to_widget_coords")]
	public static extern void tree_view_convert_bin_window_to_widget_coords(GtkTreeView* tree_view, c_int bx, c_int by, c_int* wx, c_int* wy);
	[LinkName("gtk_tree_view_convert_tree_to_bin_window_coords")]
	public static extern void tree_view_convert_tree_to_bin_window_coords(GtkTreeView* tree_view, c_int tx, c_int ty, c_int* bx, c_int* by);
	[LinkName("gtk_tree_view_convert_tree_to_widget_coords")]
	public static extern void tree_view_convert_tree_to_widget_coords(GtkTreeView* tree_view, c_int tx, c_int ty, c_int* wx, c_int* wy);
	[LinkName("gtk_tree_view_convert_widget_to_bin_window_coords")]
	public static extern void tree_view_convert_widget_to_bin_window_coords(GtkTreeView* tree_view, c_int wx, c_int wy, c_int* bx, c_int* by);
	[LinkName("gtk_tree_view_convert_widget_to_tree_coords")]
	public static extern void tree_view_convert_widget_to_tree_coords(GtkTreeView* tree_view, c_int wx, c_int wy, c_int* tx, c_int* ty);
	[LinkName("gtk_tree_view_create_row_drag_icon")]
	public static extern GdkPaintable* tree_view_create_row_drag_icon(GtkTreeView* tree_view, GtkTreePath* path);
	[LinkName("gtk_tree_view_enable_model_drag_dest")]
	public static extern void tree_view_enable_model_drag_dest(GtkTreeView* tree_view, GdkContentFormats* formats, GdkDragAction actions);
	[LinkName("gtk_tree_view_enable_model_drag_source")]
	public static extern void tree_view_enable_model_drag_source(GtkTreeView* tree_view, GdkModifierType start_button_mask, GdkContentFormats* formats, GdkDragAction actions);
	[LinkName("gtk_tree_view_expand_all")]
	public static extern void tree_view_expand_all(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_expand_row")]
	public static extern c_int tree_view_expand_row(GtkTreeView* tree_view, GtkTreePath* path, c_int open_all);
	[LinkName("gtk_tree_view_expand_to_path")]
	public static extern void tree_view_expand_to_path(GtkTreeView* tree_view, GtkTreePath* path);
	[LinkName("gtk_tree_view_get_activate_on_single_click")]
	public static extern c_int tree_view_get_activate_on_single_click(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_background_area")]
	public static extern void tree_view_get_background_area(GtkTreeView* tree_view, GtkTreePath* path, GtkTreeViewColumn* column, GdkRectangle* rect);
	[LinkName("gtk_tree_view_get_cell_area")]
	public static extern void tree_view_get_cell_area(GtkTreeView* tree_view, GtkTreePath* path, GtkTreeViewColumn* column, GdkRectangle* rect);
	[LinkName("gtk_tree_view_get_column")]
	public static extern GtkTreeViewColumn* tree_view_get_column(GtkTreeView* tree_view, c_int n);
	[LinkName("gtk_tree_view_get_columns")]
	public static extern GList* tree_view_get_columns(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_cursor")]
	public static extern void tree_view_get_cursor(GtkTreeView* tree_view, GtkTreePath** path, GtkTreeViewColumn** focus_column);
	[LinkName("gtk_tree_view_get_dest_row_at_pos")]
	public static extern c_int tree_view_get_dest_row_at_pos(GtkTreeView* tree_view, c_int drag_x, c_int drag_y, GtkTreePath** path, GtkTreeViewDropPosition* pos);
	[LinkName("gtk_tree_view_get_drag_dest_row")]
	public static extern void tree_view_get_drag_dest_row(GtkTreeView* tree_view, GtkTreePath** path, GtkTreeViewDropPosition* pos);
	[LinkName("gtk_tree_view_get_enable_search")]
	public static extern c_int tree_view_get_enable_search(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_enable_tree_lines")]
	public static extern c_int tree_view_get_enable_tree_lines(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_expander_column")]
	public static extern GtkTreeViewColumn* tree_view_get_expander_column(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_fixed_height_mode")]
	public static extern c_int tree_view_get_fixed_height_mode(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_grid_lines")]
	public static extern GtkTreeViewGridLines tree_view_get_grid_lines(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_headers_clickable")]
	public static extern c_int tree_view_get_headers_clickable(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_headers_visible")]
	public static extern c_int tree_view_get_headers_visible(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_hover_expand")]
	public static extern c_int tree_view_get_hover_expand(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_hover_selection")]
	public static extern c_int tree_view_get_hover_selection(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_level_indentation")]
	public static extern c_int tree_view_get_level_indentation(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_model")]
	public static extern GtkTreeModel* tree_view_get_model(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_n_columns")]
	public static extern c_uint tree_view_get_n_columns(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_path_at_pos")]
	public static extern c_int tree_view_get_path_at_pos(GtkTreeView* tree_view, c_int x, c_int y, GtkTreePath** path, GtkTreeViewColumn** column, c_int* cell_x, c_int* cell_y);
	[LinkName("gtk_tree_view_get_reorderable")]
	public static extern c_int tree_view_get_reorderable(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_row_separator_func")]
	public static extern GtkTreeViewRowSeparatorFunc tree_view_get_row_separator_func(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_rubber_banding")]
	public static extern c_int tree_view_get_rubber_banding(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_search_column")]
	public static extern c_int tree_view_get_search_column(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_search_entry")]
	public static extern GtkEditable* tree_view_get_search_entry(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_search_equal_func")]
	public static extern GtkTreeViewSearchEqualFunc tree_view_get_search_equal_func(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_selection")]
	public static extern GtkTreeSelection* tree_view_get_selection(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_show_expanders")]
	public static extern c_int tree_view_get_show_expanders(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_tooltip_column")]
	public static extern c_int tree_view_get_tooltip_column(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_get_tooltip_context")]
	public static extern c_int tree_view_get_tooltip_context(GtkTreeView* tree_view, c_int x, c_int y, c_int keyboard_tip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter);
	[LinkName("gtk_tree_view_get_visible_range")]
	public static extern c_int tree_view_get_visible_range(GtkTreeView* tree_view, GtkTreePath** start_path, GtkTreePath** end_path);
	[LinkName("gtk_tree_view_get_visible_rect")]
	public static extern void tree_view_get_visible_rect(GtkTreeView* tree_view, GdkRectangle* visible_rect);
	[LinkName("gtk_tree_view_insert_column")]
	public static extern c_int tree_view_insert_column(GtkTreeView* tree_view, GtkTreeViewColumn* column, c_int position);
	[LinkName("gtk_tree_view_insert_column_with_attributes")]
	public static extern c_int tree_view_insert_column_with_attributes(GtkTreeView* tree_view, c_int position,  c_char* title, GtkCellRenderer* cell);
	[LinkName("gtk_tree_view_insert_column_with_data_func")]
	public static extern c_int tree_view_insert_column_with_data_func(GtkTreeView* tree_view, c_int position,  c_char* title, GtkCellRenderer* cell, GtkTreeCellDataFunc func, void* data, GDestroyNotify dnotify);
	[LinkName("gtk_tree_view_is_blank_at_pos")]
	public static extern c_int tree_view_is_blank_at_pos(GtkTreeView* tree_view, c_int x, c_int y, GtkTreePath** path, GtkTreeViewColumn** column, c_int* cell_x, c_int* cell_y);
	[LinkName("gtk_tree_view_is_rubber_banding_active")]
	public static extern c_int tree_view_is_rubber_banding_active(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_map_expanded_rows")]
	public static extern void tree_view_map_expanded_rows(GtkTreeView* tree_view, GtkTreeViewMappingFunc func, void* data);
	[LinkName("gtk_tree_view_move_column_after")]
	public static extern void tree_view_move_column_after(GtkTreeView* tree_view, GtkTreeViewColumn* column, GtkTreeViewColumn* base_column);
	[LinkName("gtk_tree_view_remove_column")]
	public static extern c_int tree_view_remove_column(GtkTreeView* tree_view, GtkTreeViewColumn* column);
	[LinkName("gtk_tree_view_row_activated")]
	public static extern void tree_view_row_activated(GtkTreeView* tree_view, GtkTreePath* path, GtkTreeViewColumn* column);
	[LinkName("gtk_tree_view_row_expanded")]
	public static extern c_int tree_view_row_expanded(GtkTreeView* tree_view, GtkTreePath* path);
	[LinkName("gtk_tree_view_scroll_to_cell")]
	public static extern void tree_view_scroll_to_cell(GtkTreeView* tree_view, GtkTreePath* path, GtkTreeViewColumn* column, c_int use_align, float row_align, float col_align);
	[LinkName("gtk_tree_view_scroll_to_point")]
	public static extern void tree_view_scroll_to_point(GtkTreeView* tree_view, c_int tree_x, c_int tree_y);
	[LinkName("gtk_tree_view_set_activate_on_single_click")]
	public static extern void tree_view_set_activate_on_single_click(GtkTreeView* tree_view, c_int single);
	[LinkName("gtk_tree_view_set_column_drag_function")]
	public static extern void tree_view_set_column_drag_function(GtkTreeView* tree_view, GtkTreeViewColumnDropFunc func, void* user_data, GDestroyNotify destroy);
	[LinkName("gtk_tree_view_set_cursor")]
	public static extern void tree_view_set_cursor(GtkTreeView* tree_view, GtkTreePath* path, GtkTreeViewColumn* focus_column, c_int start_editing);
	[LinkName("gtk_tree_view_set_cursor_on_cell")]
	public static extern void tree_view_set_cursor_on_cell(GtkTreeView* tree_view, GtkTreePath* path, GtkTreeViewColumn* focus_column, GtkCellRenderer* focus_cell, c_int start_editing);
	[LinkName("gtk_tree_view_set_drag_dest_row")]
	public static extern void tree_view_set_drag_dest_row(GtkTreeView* tree_view, GtkTreePath* path, GtkTreeViewDropPosition pos);
	[LinkName("gtk_tree_view_set_enable_search")]
	public static extern void tree_view_set_enable_search(GtkTreeView* tree_view, c_int enable_search);
	[LinkName("gtk_tree_view_set_enable_tree_lines")]
	public static extern void tree_view_set_enable_tree_lines(GtkTreeView* tree_view, c_int enabled);
	[LinkName("gtk_tree_view_set_expander_column")]
	public static extern void tree_view_set_expander_column(GtkTreeView* tree_view, GtkTreeViewColumn* column);
	[LinkName("gtk_tree_view_set_fixed_height_mode")]
	public static extern void tree_view_set_fixed_height_mode(GtkTreeView* tree_view, c_int enable);
	[LinkName("gtk_tree_view_set_grid_lines")]
	public static extern void tree_view_set_grid_lines(GtkTreeView* tree_view, GtkTreeViewGridLines grid_lines);
	[LinkName("gtk_tree_view_set_headers_clickable")]
	public static extern void tree_view_set_headers_clickable(GtkTreeView* tree_view, c_int setting);
	[LinkName("gtk_tree_view_set_headers_visible")]
	public static extern void tree_view_set_headers_visible(GtkTreeView* tree_view, c_int headers_visible);
	[LinkName("gtk_tree_view_set_hover_expand")]
	public static extern void tree_view_set_hover_expand(GtkTreeView* tree_view, c_int expand);
	[LinkName("gtk_tree_view_set_hover_selection")]
	public static extern void tree_view_set_hover_selection(GtkTreeView* tree_view, c_int hover);
	[LinkName("gtk_tree_view_set_level_indentation")]
	public static extern void tree_view_set_level_indentation(GtkTreeView* tree_view, c_int indentation);
	[LinkName("gtk_tree_view_set_model")]
	public static extern void tree_view_set_model(GtkTreeView* tree_view, GtkTreeModel* model);
	[LinkName("gtk_tree_view_set_reorderable")]
	public static extern void tree_view_set_reorderable(GtkTreeView* tree_view, c_int reorderable);
	[LinkName("gtk_tree_view_set_row_separator_func")]
	public static extern void tree_view_set_row_separator_func(GtkTreeView* tree_view, GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy);
	[LinkName("gtk_tree_view_set_rubber_banding")]
	public static extern void tree_view_set_rubber_banding(GtkTreeView* tree_view, c_int enable);
	[LinkName("gtk_tree_view_set_search_column")]
	public static extern void tree_view_set_search_column(GtkTreeView* tree_view, c_int column);
	[LinkName("gtk_tree_view_set_search_entry")]
	public static extern void tree_view_set_search_entry(GtkTreeView* tree_view, GtkEditable* entry);
	[LinkName("gtk_tree_view_set_search_equal_func")]
	public static extern void tree_view_set_search_equal_func(GtkTreeView* tree_view, GtkTreeViewSearchEqualFunc search_equal_func, void* search_user_data, GDestroyNotify search_destroy);
	[LinkName("gtk_tree_view_set_show_expanders")]
	public static extern void tree_view_set_show_expanders(GtkTreeView* tree_view, c_int enabled);
	[LinkName("gtk_tree_view_set_tooltip_cell")]
	public static extern void tree_view_set_tooltip_cell(GtkTreeView* tree_view, GtkTooltip* tooltip, GtkTreePath* path, GtkTreeViewColumn* column, GtkCellRenderer* cell);
	[LinkName("gtk_tree_view_set_tooltip_column")]
	public static extern void tree_view_set_tooltip_column(GtkTreeView* tree_view, c_int column);
	[LinkName("gtk_tree_view_set_tooltip_row")]
	public static extern void tree_view_set_tooltip_row(GtkTreeView* tree_view, GtkTooltip* tooltip, GtkTreePath* path);
	[LinkName("gtk_tree_view_unset_rows_drag_dest")]
	public static extern void tree_view_unset_rows_drag_dest(GtkTreeView* tree_view);
	[LinkName("gtk_tree_view_unset_rows_drag_source")]
	public static extern void tree_view_unset_rows_drag_source(GtkTreeView* tree_view);
	[CRepr]
	public struct GtkTreeViewClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkTreeViewColumn;
	[LinkName("gtk_tree_view_column_new")]
	public static extern GtkTreeViewColumn* tree_view_column_new();
	[LinkName("gtk_tree_view_column_new_with_area")]
	public static extern GtkTreeViewColumn* tree_view_column_new_with_area(GtkCellArea* area);
	[LinkName("gtk_tree_view_column_new_with_attributes")]
	public static extern GtkTreeViewColumn* tree_view_column_new_with_attributes( c_char* title, GtkCellRenderer* cell);
	[LinkName("gtk_tree_view_column_add_attribute")]
	public static extern void tree_view_column_add_attribute(GtkTreeViewColumn* tree_column, GtkCellRenderer* cell_renderer,  c_char* attribute, c_int column);
	[LinkName("gtk_tree_view_column_cell_get_position")]
	public static extern c_int tree_view_column_cell_get_position(GtkTreeViewColumn* tree_column, GtkCellRenderer* cell_renderer, c_int* x_offset, c_int* width);
	[LinkName("gtk_tree_view_column_cell_get_size")]
	public static extern void tree_view_column_cell_get_size(GtkTreeViewColumn* tree_column, c_int* x_offset, c_int* y_offset, c_int* width, c_int* height);
	[LinkName("gtk_tree_view_column_cell_is_visible")]
	public static extern c_int tree_view_column_cell_is_visible(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_cell_set_cell_data")]
	public static extern void tree_view_column_cell_set_cell_data(GtkTreeViewColumn* tree_column, GtkTreeModel* tree_model, GtkTreeIter* iter, c_int is_expander, c_int is_expanded);
	[LinkName("gtk_tree_view_column_clear")]
	public static extern void tree_view_column_clear(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_clear_attributes")]
	public static extern void tree_view_column_clear_attributes(GtkTreeViewColumn* tree_column, GtkCellRenderer* cell_renderer);
	[LinkName("gtk_tree_view_column_clicked")]
	public static extern void tree_view_column_clicked(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_focus_cell")]
	public static extern void tree_view_column_focus_cell(GtkTreeViewColumn* tree_column, GtkCellRenderer* cell);
	[LinkName("gtk_tree_view_column_get_alignment")]
	public static extern float tree_view_column_get_alignment(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_button")]
	public static extern GtkWidget* tree_view_column_get_button(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_clickable")]
	public static extern c_int tree_view_column_get_clickable(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_expand")]
	public static extern c_int tree_view_column_get_expand(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_fixed_width")]
	public static extern c_int tree_view_column_get_fixed_width(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_max_width")]
	public static extern c_int tree_view_column_get_max_width(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_min_width")]
	public static extern c_int tree_view_column_get_min_width(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_reorderable")]
	public static extern c_int tree_view_column_get_reorderable(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_resizable")]
	public static extern c_int tree_view_column_get_resizable(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_sizing")]
	public static extern GtkTreeViewColumnSizing tree_view_column_get_sizing(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_sort_column_id")]
	public static extern c_int tree_view_column_get_sort_column_id(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_sort_indicator")]
	public static extern c_int tree_view_column_get_sort_indicator(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_sort_order")]
	public static extern GtkSortType tree_view_column_get_sort_order(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_spacing")]
	public static extern c_int tree_view_column_get_spacing(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_title")]
	public static extern  c_char* tree_view_column_get_title(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_tree_view")]
	public static extern GtkWidget* tree_view_column_get_tree_view(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_visible")]
	public static extern c_int tree_view_column_get_visible(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_widget")]
	public static extern GtkWidget* tree_view_column_get_widget(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_width")]
	public static extern c_int tree_view_column_get_width(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_get_x_offset")]
	public static extern c_int tree_view_column_get_x_offset(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_pack_end")]
	public static extern void tree_view_column_pack_end(GtkTreeViewColumn* tree_column, GtkCellRenderer* cell, c_int expand);
	[LinkName("gtk_tree_view_column_pack_start")]
	public static extern void tree_view_column_pack_start(GtkTreeViewColumn* tree_column, GtkCellRenderer* cell, c_int expand);
	[LinkName("gtk_tree_view_column_queue_resize")]
	public static extern void tree_view_column_queue_resize(GtkTreeViewColumn* tree_column);
	[LinkName("gtk_tree_view_column_set_alignment")]
	public static extern void tree_view_column_set_alignment(GtkTreeViewColumn* tree_column, float xalign);
	[LinkName("gtk_tree_view_column_set_attributes")]
	public static extern void tree_view_column_set_attributes(GtkTreeViewColumn* tree_column, GtkCellRenderer* cell_renderer);
	[LinkName("gtk_tree_view_column_set_cell_data_func")]
	public static extern void tree_view_column_set_cell_data_func(GtkTreeViewColumn* tree_column, GtkCellRenderer* cell_renderer, GtkTreeCellDataFunc func, void* func_data, GDestroyNotify destroy);
	[LinkName("gtk_tree_view_column_set_clickable")]
	public static extern void tree_view_column_set_clickable(GtkTreeViewColumn* tree_column, c_int clickable);
	[LinkName("gtk_tree_view_column_set_expand")]
	public static extern void tree_view_column_set_expand(GtkTreeViewColumn* tree_column, c_int expand);
	[LinkName("gtk_tree_view_column_set_fixed_width")]
	public static extern void tree_view_column_set_fixed_width(GtkTreeViewColumn* tree_column, c_int fixed_width);
	[LinkName("gtk_tree_view_column_set_max_width")]
	public static extern void tree_view_column_set_max_width(GtkTreeViewColumn* tree_column, c_int max_width);
	[LinkName("gtk_tree_view_column_set_min_width")]
	public static extern void tree_view_column_set_min_width(GtkTreeViewColumn* tree_column, c_int min_width);
	[LinkName("gtk_tree_view_column_set_reorderable")]
	public static extern void tree_view_column_set_reorderable(GtkTreeViewColumn* tree_column, c_int reorderable);
	[LinkName("gtk_tree_view_column_set_resizable")]
	public static extern void tree_view_column_set_resizable(GtkTreeViewColumn* tree_column, c_int resizable);
	[LinkName("gtk_tree_view_column_set_sizing")]
	public static extern void tree_view_column_set_sizing(GtkTreeViewColumn* tree_column, GtkTreeViewColumnSizing type);
	[LinkName("gtk_tree_view_column_set_sort_column_id")]
	public static extern void tree_view_column_set_sort_column_id(GtkTreeViewColumn* tree_column, c_int sort_column_id);
	[LinkName("gtk_tree_view_column_set_sort_indicator")]
	public static extern void tree_view_column_set_sort_indicator(GtkTreeViewColumn* tree_column, c_int setting);
	[LinkName("gtk_tree_view_column_set_sort_order")]
	public static extern void tree_view_column_set_sort_order(GtkTreeViewColumn* tree_column, GtkSortType order);
	[LinkName("gtk_tree_view_column_set_spacing")]
	public static extern void tree_view_column_set_spacing(GtkTreeViewColumn* tree_column, c_int spacing);
	[LinkName("gtk_tree_view_column_set_title")]
	public static extern void tree_view_column_set_title(GtkTreeViewColumn* tree_column,  c_char* title);
	[LinkName("gtk_tree_view_column_set_visible")]
	public static extern void tree_view_column_set_visible(GtkTreeViewColumn* tree_column, c_int visible);
	[LinkName("gtk_tree_view_column_set_widget")]
	public static extern void tree_view_column_set_widget(GtkTreeViewColumn* tree_column, GtkWidget* widget);
	public function c_int GtkTreeViewColumnDropFunc(GtkTreeView* tree_view, GtkTreeViewColumn* column, GtkTreeViewColumn* prev_column, GtkTreeViewColumn* next_column, void* data);
	public enum GtkTreeViewColumnSizing : c_int
	{
		GTK_TREE_VIEW_COLUMN_GROW_ONLY,
		GTK_TREE_VIEW_COLUMN_AUTOSIZE,
		GTK_TREE_VIEW_COLUMN_FIXED
	}
	public enum GtkTreeViewDropPosition : c_int
	{
		GTK_TREE_VIEW_DROP_BEFORE,
		GTK_TREE_VIEW_DROP_AFTER,
		GTK_TREE_VIEW_DROP_INTO_OR_BEFORE,
		GTK_TREE_VIEW_DROP_INTO_OR_AFTER
	}
	public enum GtkTreeViewGridLines : c_int
	{
		GTK_TREE_VIEW_GRID_LINES_NONE,
		GTK_TREE_VIEW_GRID_LINES_HORIZONTAL,
		GTK_TREE_VIEW_GRID_LINES_VERTICAL,
		GTK_TREE_VIEW_GRID_LINES_BOTH
	}
	public function void GtkTreeViewMappingFunc(GtkTreeView* tree_view, GtkTreePath* path, void* user_data);
	public function c_int GtkTreeViewRowSeparatorFunc(GtkTreeModel* model, GtkTreeIter* iter, void* data);
	public function c_int GtkTreeViewSearchEqualFunc(GtkTreeModel* model, c_int column,  c_char* key, GtkTreeIter* iter, void* search_data);
	public enum GtkUnit : c_int
	{
		GTK_UNIT_NONE,
		GTK_UNIT_POINTS,
		GTK_UNIT_INCH,
		GTK_UNIT_MM
	}
	[CRepr]
	public struct GtkUriLauncher;
	[LinkName("gtk_uri_launcher_new")]
	public static extern GtkUriLauncher* uri_launcher_new( c_char* uri);
	[LinkName("gtk_uri_launcher_get_uri")]
	public static extern  c_char* uri_launcher_get_uri(GtkUriLauncher* self);
	[LinkName("gtk_uri_launcher_launch")]
	public static extern void uri_launcher_launch(GtkUriLauncher* self, GtkWindow* parent, GCancellable* cancellable, GAsyncReadyCallback callback, void* user_data);
	[LinkName("gtk_uri_launcher_launch_finish")]
	public static extern c_int uri_launcher_launch_finish(GtkUriLauncher* self, GAsyncResult* result);
	[LinkName("gtk_uri_launcher_set_uri")]
	public static extern void uri_launcher_set_uri(GtkUriLauncher* self,  c_char* uri);
	[CRepr]
	public struct GtkUriLauncherClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkVideo;
	[LinkName("gtk_video_new")]
	public static extern GtkWidget* video_new();
	[LinkName("gtk_video_new_for_file")]
	public static extern GtkWidget* video_new_for_file(GFile* file);
	[LinkName("gtk_video_new_for_filename")]
	public static extern GtkWidget* video_new_for_filename( c_char* filename);
	[LinkName("gtk_video_new_for_media_stream")]
	public static extern GtkWidget* video_new_for_media_stream(GtkMediaStream* stream);
	[LinkName("gtk_video_new_for_resource")]
	public static extern GtkWidget* video_new_for_resource( c_char* resource_path);
	[LinkName("gtk_video_get_autoplay")]
	public static extern c_int video_get_autoplay(GtkVideo* self);
	[LinkName("gtk_video_get_file")]
	public static extern GFile* video_get_file(GtkVideo* self);
	[LinkName("gtk_video_get_loop")]
	public static extern c_int video_get_loop(GtkVideo* self);
	[LinkName("gtk_video_get_media_stream")]
	public static extern GtkMediaStream* video_get_media_stream(GtkVideo* self);
	[LinkName("gtk_video_set_autoplay")]
	public static extern void video_set_autoplay(GtkVideo* self, c_int autoplay);
	[LinkName("gtk_video_set_file")]
	public static extern void video_set_file(GtkVideo* self, GFile* file);
	[LinkName("gtk_video_set_filename")]
	public static extern void video_set_filename(GtkVideo* self,  c_char* filename);
	[LinkName("gtk_video_set_loop")]
	public static extern void video_set_loop(GtkVideo* self, c_int loop);
	[LinkName("gtk_video_set_media_stream")]
	public static extern void video_set_media_stream(GtkVideo* self, GtkMediaStream* stream);
	[LinkName("gtk_video_set_resource")]
	public static extern void video_set_resource(GtkVideo* self,  c_char* resource_path);
	[CRepr]
	public struct GtkVideoClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkViewport;
	[LinkName("gtk_viewport_new")]
	public static extern GtkWidget* viewport_new(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment);
	[LinkName("gtk_viewport_get_child")]
	public static extern GtkWidget* viewport_get_child(GtkViewport* viewport);
	[LinkName("gtk_viewport_get_scroll_to_focus")]
	public static extern c_int viewport_get_scroll_to_focus(GtkViewport* viewport);
	[LinkName("gtk_viewport_set_child")]
	public static extern void viewport_set_child(GtkViewport* viewport, GtkWidget* child);
	[LinkName("gtk_viewport_set_scroll_to_focus")]
	public static extern void viewport_set_scroll_to_focus(GtkViewport* viewport, c_int scroll_to_focus);
	[CRepr]
	public struct GtkVolumeButton;
	[LinkName("gtk_volume_button_new")]
	public static extern GtkWidget* volume_button_new();
	[CRepr]
	public struct GtkWidget;
	[LinkName("gtk_widget_action_set_enabled")]
	public static extern void widget_action_set_enabled(GtkWidget* widget,  c_char* action_name, c_int enabled);
	[LinkName("gtk_widget_activate")]
	public static extern c_int widget_activate(GtkWidget* widget);
	[LinkName("gtk_widget_activate_action")]
	public static extern c_int widget_activate_action(GtkWidget* widget,  c_char* name,  c_char* format_string);
	[LinkName("gtk_widget_activate_action_variant")]
	public static extern c_int widget_activate_action_variant(GtkWidget* widget,  c_char* name, GVariant* args);
	[LinkName("gtk_widget_activate_default")]
	public static extern void widget_activate_default(GtkWidget* widget);
	[LinkName("gtk_widget_add_controller")]
	public static extern void widget_add_controller(GtkWidget* widget, GtkEventController* controller);
	[LinkName("gtk_widget_add_css_class")]
	public static extern void widget_add_css_class(GtkWidget* widget,  c_char* css_class);
	[LinkName("gtk_widget_add_mnemonic_label")]
	public static extern void widget_add_mnemonic_label(GtkWidget* widget, GtkWidget* label);
	[LinkName("gtk_widget_add_tick_callback")]
	public static extern c_uint widget_add_tick_callback(GtkWidget* widget, GtkTickCallback callback, void* user_data, GDestroyNotify notify);
	[LinkName("gtk_widget_allocate")]
	public static extern void widget_allocate(GtkWidget* widget, c_int width, c_int height, c_int baseline, GskTransform* transform);
	[LinkName("gtk_widget_child_focus")]
	public static extern c_int widget_child_focus(GtkWidget* widget, GtkDirectionType direction);
	[LinkName("gtk_widget_compute_bounds")]
	public static extern c_int widget_compute_bounds(GtkWidget* widget, GtkWidget* target, graphene_rect_t* out_bounds);
	[LinkName("gtk_widget_compute_expand")]
	public static extern c_int widget_compute_expand(GtkWidget* widget, GtkOrientation orientation);
	[LinkName("gtk_widget_compute_point")]
	public static extern c_int widget_compute_point(GtkWidget* widget, GtkWidget* target,  graphene_point_t* point, graphene_point_t* out_point);
	[LinkName("gtk_widget_compute_transform")]
	public static extern c_int widget_compute_transform(GtkWidget* widget, GtkWidget* target, graphene_matrix_t* out_transform);
	[LinkName("gtk_widget_contains")]
	public static extern c_int widget_contains(GtkWidget* widget, double x, double y);
	[LinkName("gtk_widget_create_pango_context")]
	public static extern PangoContext* widget_create_pango_context(GtkWidget* widget);
	[LinkName("gtk_widget_create_pango_layout")]
	public static extern PangoLayout* widget_create_pango_layout(GtkWidget* widget,  c_char* text);
	[LinkName("gtk_widget_dispose_template")]
	public static extern void widget_dispose_template(GtkWidget* widget, GType widget_type);
	[LinkName("gtk_drag_check_threshold")]
	public static extern c_int drag_check_threshold(GtkWidget* widget, c_int start_x, c_int start_y, c_int current_x, c_int current_y);
	[LinkName("gtk_widget_error_bell")]
	public static extern void widget_error_bell(GtkWidget* widget);
	[LinkName("gtk_widget_get_allocated_baseline")]
	public static extern c_int widget_get_allocated_baseline(GtkWidget* widget);
	[LinkName("gtk_widget_get_allocated_height")]
	public static extern c_int widget_get_allocated_height(GtkWidget* widget);
	[LinkName("gtk_widget_get_allocated_width")]
	public static extern c_int widget_get_allocated_width(GtkWidget* widget);
	[LinkName("gtk_widget_get_allocation")]
	public static extern void widget_get_allocation(GtkWidget* widget, GtkAllocation* allocation);
	[LinkName("gtk_widget_get_ancestor")]
	public static extern GtkWidget* widget_get_ancestor(GtkWidget* widget, GType widget_type);
	[LinkName("gtk_widget_get_baseline")]
	public static extern c_int widget_get_baseline(GtkWidget* widget);
	[LinkName("gtk_widget_get_can_focus")]
	public static extern c_int widget_get_can_focus(GtkWidget* widget);
	[LinkName("gtk_widget_get_can_target")]
	public static extern c_int widget_get_can_target(GtkWidget* widget);
	[LinkName("gtk_widget_get_child_visible")]
	public static extern c_int widget_get_child_visible(GtkWidget* widget);
	[LinkName("gtk_widget_get_clipboard")]
	public static extern GdkClipboard* widget_get_clipboard(GtkWidget* widget);
	[LinkName("gtk_widget_get_color")]
	public static extern void widget_get_color(GtkWidget* widget, GdkRGBA* color);
	[LinkName("gtk_widget_get_css_classes")]
	public static extern c_char** widget_get_css_classes(GtkWidget* widget);
	[LinkName("gtk_widget_get_css_name")]
	public static extern  c_char* widget_get_css_name(GtkWidget* self);
	[LinkName("gtk_widget_get_cursor")]
	public static extern GdkCursor* widget_get_cursor(GtkWidget* widget);
	[LinkName("gtk_widget_get_direction")]
	public static extern GtkTextDirection widget_get_direction(GtkWidget* widget);
	[LinkName("gtk_widget_get_display")]
	public static extern GdkDisplay* widget_get_display(GtkWidget* widget);
	[LinkName("gtk_widget_get_first_child")]
	public static extern GtkWidget* widget_get_first_child(GtkWidget* widget);
	[LinkName("gtk_widget_get_focus_child")]
	public static extern GtkWidget* widget_get_focus_child(GtkWidget* widget);
	[LinkName("gtk_widget_get_focus_on_click")]
	public static extern c_int widget_get_focus_on_click(GtkWidget* widget);
	[LinkName("gtk_widget_get_focusable")]
	public static extern c_int widget_get_focusable(GtkWidget* widget);
	[LinkName("gtk_widget_get_font_map")]
	public static extern PangoFontMap* widget_get_font_map(GtkWidget* widget);
	[LinkName("gtk_widget_get_font_options")]
	public static extern  cairo_font_options_t* widget_get_font_options(GtkWidget* widget);
	[LinkName("gtk_widget_get_frame_clock")]
	public static extern GdkFrameClock* widget_get_frame_clock(GtkWidget* widget);
	[LinkName("gtk_widget_get_halign")]
	public static extern GtkAlign widget_get_halign(GtkWidget* widget);
	[LinkName("gtk_widget_get_has_tooltip")]
	public static extern c_int widget_get_has_tooltip(GtkWidget* widget);
	[LinkName("gtk_widget_get_height")]
	public static extern c_int widget_get_height(GtkWidget* widget);
	[LinkName("gtk_widget_get_hexpand")]
	public static extern c_int widget_get_hexpand(GtkWidget* widget);
	[LinkName("gtk_widget_get_hexpand_set")]
	public static extern c_int widget_get_hexpand_set(GtkWidget* widget);
	[LinkName("gtk_widget_get_last_child")]
	public static extern GtkWidget* widget_get_last_child(GtkWidget* widget);
	[LinkName("gtk_widget_get_layout_manager")]
	public static extern GtkLayoutManager* widget_get_layout_manager(GtkWidget* widget);
	[LinkName("gtk_widget_get_mapped")]
	public static extern c_int widget_get_mapped(GtkWidget* widget);
	[LinkName("gtk_widget_get_margin_bottom")]
	public static extern c_int widget_get_margin_bottom(GtkWidget* widget);
	[LinkName("gtk_widget_get_margin_end")]
	public static extern c_int widget_get_margin_end(GtkWidget* widget);
	[LinkName("gtk_widget_get_margin_start")]
	public static extern c_int widget_get_margin_start(GtkWidget* widget);
	[LinkName("gtk_widget_get_margin_top")]
	public static extern c_int widget_get_margin_top(GtkWidget* widget);
	[LinkName("gtk_widget_get_name")]
	public static extern  c_char* widget_get_name(GtkWidget* widget);
	[LinkName("gtk_widget_get_native")]
	public static extern GtkNative* widget_get_native(GtkWidget* widget);
	[LinkName("gtk_widget_get_next_sibling")]
	public static extern GtkWidget* widget_get_next_sibling(GtkWidget* widget);
	[LinkName("gtk_widget_get_opacity")]
	public static extern double widget_get_opacity(GtkWidget* widget);
	[LinkName("gtk_widget_get_overflow")]
	public static extern GtkOverflow widget_get_overflow(GtkWidget* widget);
	[LinkName("gtk_widget_get_pango_context")]
	public static extern PangoContext* widget_get_pango_context(GtkWidget* widget);
	[LinkName("gtk_widget_get_parent")]
	public static extern GtkWidget* widget_get_parent(GtkWidget* widget);
	[LinkName("gtk_widget_get_preferred_size")]
	public static extern void widget_get_preferred_size(GtkWidget* widget, GtkRequisition* minimum_size, GtkRequisition* natural_size);
	[LinkName("gtk_widget_get_prev_sibling")]
	public static extern GtkWidget* widget_get_prev_sibling(GtkWidget* widget);
	[LinkName("gtk_widget_get_primary_clipboard")]
	public static extern GdkClipboard* widget_get_primary_clipboard(GtkWidget* widget);
	[LinkName("gtk_widget_get_realized")]
	public static extern c_int widget_get_realized(GtkWidget* widget);
	[LinkName("gtk_widget_get_receives_default")]
	public static extern c_int widget_get_receives_default(GtkWidget* widget);
	[LinkName("gtk_widget_get_request_mode")]
	public static extern GtkSizeRequestMode widget_get_request_mode(GtkWidget* widget);
	[LinkName("gtk_widget_get_root")]
	public static extern GtkRoot* widget_get_root(GtkWidget* widget);
	[LinkName("gtk_widget_get_scale_factor")]
	public static extern c_int widget_get_scale_factor(GtkWidget* widget);
	[LinkName("gtk_widget_get_sensitive")]
	public static extern c_int widget_get_sensitive(GtkWidget* widget);
	[LinkName("gtk_widget_get_settings")]
	public static extern GtkSettings* widget_get_settings(GtkWidget* widget);
	[LinkName("gtk_widget_get_size")]
	public static extern c_int widget_get_size(GtkWidget* widget, GtkOrientation orientation);
	[LinkName("gtk_widget_get_size_request")]
	public static extern void widget_get_size_request(GtkWidget* widget, c_int* width, c_int* height);
	[LinkName("gtk_widget_get_state_flags")]
	public static extern GtkStateFlags widget_get_state_flags(GtkWidget* widget);
	[LinkName("gtk_widget_get_style_context")]
	public static extern GtkStyleContext* widget_get_style_context(GtkWidget* widget);
	[LinkName("gtk_widget_get_template_child")]
	public static extern GObject* widget_get_template_child(GtkWidget* widget, GType widget_type,  c_char* name);
	[LinkName("gtk_widget_get_tooltip_markup")]
	public static extern  c_char* widget_get_tooltip_markup(GtkWidget* widget);
	[LinkName("gtk_widget_get_tooltip_text")]
	public static extern  c_char* widget_get_tooltip_text(GtkWidget* widget);
	[LinkName("gtk_widget_get_valign")]
	public static extern GtkAlign widget_get_valign(GtkWidget* widget);
	[LinkName("gtk_widget_get_vexpand")]
	public static extern c_int widget_get_vexpand(GtkWidget* widget);
	[LinkName("gtk_widget_get_vexpand_set")]
	public static extern c_int widget_get_vexpand_set(GtkWidget* widget);
	[LinkName("gtk_widget_get_visible")]
	public static extern c_int widget_get_visible(GtkWidget* widget);
	[LinkName("gtk_widget_get_width")]
	public static extern c_int widget_get_width(GtkWidget* widget);
	[LinkName("gtk_widget_grab_focus")]
	public static extern c_int widget_grab_focus(GtkWidget* widget);
	[LinkName("gtk_widget_has_css_class")]
	public static extern c_int widget_has_css_class(GtkWidget* widget,  c_char* css_class);
	[LinkName("gtk_widget_has_default")]
	public static extern c_int widget_has_default(GtkWidget* widget);
	[LinkName("gtk_widget_has_focus")]
	public static extern c_int widget_has_focus(GtkWidget* widget);
	[LinkName("gtk_widget_has_visible_focus")]
	public static extern c_int widget_has_visible_focus(GtkWidget* widget);
	[LinkName("gtk_widget_hide")]
	public static extern void widget_hide(GtkWidget* widget);
	[LinkName("gtk_widget_in_destruction")]
	public static extern c_int widget_in_destruction(GtkWidget* widget);
	[LinkName("gtk_widget_init_template")]
	public static extern void widget_init_template(GtkWidget* widget);
	[LinkName("gtk_widget_insert_action_group")]
	public static extern void widget_insert_action_group(GtkWidget* widget,  c_char* name, GActionGroup* group);
	[LinkName("gtk_widget_insert_after")]
	public static extern void widget_insert_after(GtkWidget* widget, GtkWidget* parent, GtkWidget* previous_sibling);
	[LinkName("gtk_widget_insert_before")]
	public static extern void widget_insert_before(GtkWidget* widget, GtkWidget* parent, GtkWidget* next_sibling);
	[LinkName("gtk_widget_is_ancestor")]
	public static extern c_int widget_is_ancestor(GtkWidget* widget, GtkWidget* ancestor);
	[LinkName("gtk_widget_is_drawable")]
	public static extern c_int widget_is_drawable(GtkWidget* widget);
	[LinkName("gtk_widget_is_focus")]
	public static extern c_int widget_is_focus(GtkWidget* widget);
	[LinkName("gtk_widget_is_sensitive")]
	public static extern c_int widget_is_sensitive(GtkWidget* widget);
	[LinkName("gtk_widget_is_visible")]
	public static extern c_int widget_is_visible(GtkWidget* widget);
	[LinkName("gtk_widget_keynav_failed")]
	public static extern c_int widget_keynav_failed(GtkWidget* widget, GtkDirectionType direction);
	[LinkName("gtk_widget_list_mnemonic_labels")]
	public static extern GList* widget_list_mnemonic_labels(GtkWidget* widget);
	[LinkName("gtk_widget_map")]
	public static extern void widget_map(GtkWidget* widget);
	[LinkName("gtk_widget_measure")]
	public static extern void widget_measure(GtkWidget* widget, GtkOrientation orientation, c_int for_size, c_int* minimum, c_int* natural, c_int* minimum_baseline, c_int* natural_baseline);
	[LinkName("gtk_widget_mnemonic_activate")]
	public static extern c_int widget_mnemonic_activate(GtkWidget* widget, c_int group_cycling);
	[LinkName("gtk_widget_observe_children")]
	public static extern GListModel* widget_observe_children(GtkWidget* widget);
	[LinkName("gtk_widget_observe_controllers")]
	public static extern GListModel* widget_observe_controllers(GtkWidget* widget);
	[LinkName("gtk_widget_pick")]
	public static extern GtkWidget* widget_pick(GtkWidget* widget, double x, double y, GtkPickFlags flags);
	[LinkName("gtk_widget_queue_allocate")]
	public static extern void widget_queue_allocate(GtkWidget* widget);
	[LinkName("gtk_widget_queue_draw")]
	public static extern void widget_queue_draw(GtkWidget* widget);
	[LinkName("gtk_widget_queue_resize")]
	public static extern void widget_queue_resize(GtkWidget* widget);
	[LinkName("gtk_widget_realize")]
	public static extern void widget_realize(GtkWidget* widget);
	[LinkName("gtk_widget_remove_controller")]
	public static extern void widget_remove_controller(GtkWidget* widget, GtkEventController* controller);
	[LinkName("gtk_widget_remove_css_class")]
	public static extern void widget_remove_css_class(GtkWidget* widget,  c_char* css_class);
	[LinkName("gtk_widget_remove_mnemonic_label")]
	public static extern void widget_remove_mnemonic_label(GtkWidget* widget, GtkWidget* label);
	[LinkName("gtk_widget_remove_tick_callback")]
	public static extern void widget_remove_tick_callback(GtkWidget* widget, c_uint id);
	[LinkName("gtk_widget_set_can_focus")]
	public static extern void widget_set_can_focus(GtkWidget* widget, c_int can_focus);
	[LinkName("gtk_widget_set_can_target")]
	public static extern void widget_set_can_target(GtkWidget* widget, c_int can_target);
	[LinkName("gtk_widget_set_child_visible")]
	public static extern void widget_set_child_visible(GtkWidget* widget, c_int child_visible);
	[LinkName("gtk_widget_set_css_classes")]
	public static extern void widget_set_css_classes(GtkWidget* widget);
	[LinkName("gtk_widget_set_cursor")]
	public static extern void widget_set_cursor(GtkWidget* widget, GdkCursor* cursor);
	[LinkName("gtk_widget_set_cursor_from_name")]
	public static extern void widget_set_cursor_from_name(GtkWidget* widget,  c_char* name);
	[LinkName("gtk_widget_set_direction")]
	public static extern void widget_set_direction(GtkWidget* widget, GtkTextDirection dir);
	[LinkName("gtk_widget_set_focus_child")]
	public static extern void widget_set_focus_child(GtkWidget* widget, GtkWidget* child);
	[LinkName("gtk_widget_set_focus_on_click")]
	public static extern void widget_set_focus_on_click(GtkWidget* widget, c_int focus_on_click);
	[LinkName("gtk_widget_set_focusable")]
	public static extern void widget_set_focusable(GtkWidget* widget, c_int focusable);
	[LinkName("gtk_widget_set_font_map")]
	public static extern void widget_set_font_map(GtkWidget* widget, PangoFontMap* font_map);
	[LinkName("gtk_widget_set_font_options")]
	public static extern void widget_set_font_options(GtkWidget* widget,  cairo_font_options_t* options);
	[LinkName("gtk_widget_set_halign")]
	public static extern void widget_set_halign(GtkWidget* widget, GtkAlign align);
	[LinkName("gtk_widget_set_has_tooltip")]
	public static extern void widget_set_has_tooltip(GtkWidget* widget, c_int has_tooltip);
	[LinkName("gtk_widget_set_hexpand")]
	public static extern void widget_set_hexpand(GtkWidget* widget, c_int expand);
	[LinkName("gtk_widget_set_hexpand_set")]
	public static extern void widget_set_hexpand_set(GtkWidget* widget, c_int set);
	[LinkName("gtk_widget_set_layout_manager")]
	public static extern void widget_set_layout_manager(GtkWidget* widget, GtkLayoutManager* layout_manager);
	[LinkName("gtk_widget_set_margin_bottom")]
	public static extern void widget_set_margin_bottom(GtkWidget* widget, c_int margin);
	[LinkName("gtk_widget_set_margin_end")]
	public static extern void widget_set_margin_end(GtkWidget* widget, c_int margin);
	[LinkName("gtk_widget_set_margin_start")]
	public static extern void widget_set_margin_start(GtkWidget* widget, c_int margin);
	[LinkName("gtk_widget_set_margin_top")]
	public static extern void widget_set_margin_top(GtkWidget* widget, c_int margin);
	[LinkName("gtk_widget_set_name")]
	public static extern void widget_set_name(GtkWidget* widget,  c_char* name);
	[LinkName("gtk_widget_set_opacity")]
	public static extern void widget_set_opacity(GtkWidget* widget, double opacity);
	[LinkName("gtk_widget_set_overflow")]
	public static extern void widget_set_overflow(GtkWidget* widget, GtkOverflow overflow);
	[LinkName("gtk_widget_set_parent")]
	public static extern void widget_set_parent(GtkWidget* widget, GtkWidget* parent);
	[LinkName("gtk_widget_set_receives_default")]
	public static extern void widget_set_receives_default(GtkWidget* widget, c_int receives_default);
	[LinkName("gtk_widget_set_sensitive")]
	public static extern void widget_set_sensitive(GtkWidget* widget, c_int sensitive);
	[LinkName("gtk_widget_set_size_request")]
	public static extern void widget_set_size_request(GtkWidget* widget, c_int width, c_int height);
	[LinkName("gtk_widget_set_state_flags")]
	public static extern void widget_set_state_flags(GtkWidget* widget, GtkStateFlags flags, c_int clear);
	[LinkName("gtk_widget_set_tooltip_markup")]
	public static extern void widget_set_tooltip_markup(GtkWidget* widget,  c_char* markup);
	[LinkName("gtk_widget_set_tooltip_text")]
	public static extern void widget_set_tooltip_text(GtkWidget* widget,  c_char* text);
	[LinkName("gtk_widget_set_valign")]
	public static extern void widget_set_valign(GtkWidget* widget, GtkAlign align);
	[LinkName("gtk_widget_set_vexpand")]
	public static extern void widget_set_vexpand(GtkWidget* widget, c_int expand);
	[LinkName("gtk_widget_set_vexpand_set")]
	public static extern void widget_set_vexpand_set(GtkWidget* widget, c_int set);
	[LinkName("gtk_widget_set_visible")]
	public static extern void widget_set_visible(GtkWidget* widget, c_int visible);
	[LinkName("gtk_widget_should_layout")]
	public static extern c_int widget_should_layout(GtkWidget* widget);
	[LinkName("gtk_widget_show")]
	public static extern void widget_show(GtkWidget* widget);
	[LinkName("gtk_widget_size_allocate")]
	public static extern void widget_size_allocate(GtkWidget* widget,  GtkAllocation* allocation, c_int baseline);
	[LinkName("gtk_widget_snapshot_child")]
	public static extern void widget_snapshot_child(GtkWidget* widget, GtkWidget* child, GtkSnapshot* snapshot);
	[LinkName("gtk_widget_translate_coordinates")]
	public static extern c_int widget_translate_coordinates(GtkWidget* src_widget, GtkWidget* dest_widget, double src_x, double src_y, double* dest_x, double* dest_y);
	[LinkName("gtk_widget_trigger_tooltip_query")]
	public static extern void widget_trigger_tooltip_query(GtkWidget* widget);
	[LinkName("gtk_widget_unmap")]
	public static extern void widget_unmap(GtkWidget* widget);
	[LinkName("gtk_widget_unparent")]
	public static extern void widget_unparent(GtkWidget* widget);
	[LinkName("gtk_widget_unrealize")]
	public static extern void widget_unrealize(GtkWidget* widget);
	[LinkName("gtk_widget_unset_state_flags")]
	public static extern void widget_unset_state_flags(GtkWidget* widget, GtkStateFlags flags);
	public function void GtkWidgetActionActivateFunc(GtkWidget* widget,  c_char* action_name, GVariant* parameter);
	[CRepr]
	public struct GtkWidgetClass
	{
		GInitiallyUnownedClass parent_class;
		GtkWidgetClassPrivate* priv;
	}
	[CRepr]
	public struct GtkWidgetClassPrivate
	{
	}
	[CRepr]
	public struct GtkWidgetPaintable;
	[LinkName("gtk_widget_paintable_new")]
	public static extern GdkPaintable* widget_paintable_new(GtkWidget* widget);
	[LinkName("gtk_widget_paintable_get_widget")]
	public static extern GtkWidget* widget_paintable_get_widget(GtkWidgetPaintable* self);
	[LinkName("gtk_widget_paintable_set_widget")]
	public static extern void widget_paintable_set_widget(GtkWidgetPaintable* self, GtkWidget* widget);
	[CRepr]
	public struct GtkWidgetPaintableClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkWidgetPrivate
	{
	}
	[CRepr]
	public struct GtkWindow;
	[LinkName("gtk_window_new")]
	public static extern GtkWidget* window_new();
	[LinkName("gtk_window_close")]
	public static extern void window_close(GtkWindow* window);
	[LinkName("gtk_window_destroy")]
	public static extern void window_destroy(GtkWindow* window);
	[LinkName("gtk_window_fullscreen")]
	public static extern void window_fullscreen(GtkWindow* window);
	[LinkName("gtk_window_fullscreen_on_monitor")]
	public static extern void window_fullscreen_on_monitor(GtkWindow* window, GdkMonitor* monitor);
	[LinkName("gtk_window_get_application")]
	public static extern GtkApplication* window_get_application(GtkWindow* window);
	[LinkName("gtk_window_get_child")]
	public static extern GtkWidget* window_get_child(GtkWindow* window);
	[LinkName("gtk_window_get_decorated")]
	public static extern c_int window_get_decorated(GtkWindow* window);
	[LinkName("gtk_window_get_default_size")]
	public static extern void window_get_default_size(GtkWindow* window, c_int* width, c_int* height);
	[LinkName("gtk_window_get_default_widget")]
	public static extern GtkWidget* window_get_default_widget(GtkWindow* window);
	[LinkName("gtk_window_get_deletable")]
	public static extern c_int window_get_deletable(GtkWindow* window);
	[LinkName("gtk_window_get_destroy_with_parent")]
	public static extern c_int window_get_destroy_with_parent(GtkWindow* window);
	[LinkName("gtk_window_get_focus")]
	public static extern GtkWidget* window_get_focus(GtkWindow* window);
	[LinkName("gtk_window_get_focus_visible")]
	public static extern c_int window_get_focus_visible(GtkWindow* window);
	[LinkName("gtk_window_get_group")]
	public static extern GtkWindowGroup* window_get_group(GtkWindow* window);
	[LinkName("gtk_window_get_handle_menubar_accel")]
	public static extern c_int window_get_handle_menubar_accel(GtkWindow* window);
	[LinkName("gtk_window_get_hide_on_close")]
	public static extern c_int window_get_hide_on_close(GtkWindow* window);
	[LinkName("gtk_window_get_icon_name")]
	public static extern  c_char* window_get_icon_name(GtkWindow* window);
	[LinkName("gtk_window_get_mnemonics_visible")]
	public static extern c_int window_get_mnemonics_visible(GtkWindow* window);
	[LinkName("gtk_window_get_modal")]
	public static extern c_int window_get_modal(GtkWindow* window);
	[LinkName("gtk_window_get_resizable")]
	public static extern c_int window_get_resizable(GtkWindow* window);
	[LinkName("gtk_window_get_title")]
	public static extern  c_char* window_get_title(GtkWindow* window);
	[LinkName("gtk_window_get_titlebar")]
	public static extern GtkWidget* window_get_titlebar(GtkWindow* window);
	[LinkName("gtk_window_get_transient_for")]
	public static extern GtkWindow* window_get_transient_for(GtkWindow* window);
	[LinkName("gtk_window_has_group")]
	public static extern c_int window_has_group(GtkWindow* window);
	[LinkName("gtk_window_is_active")]
	public static extern c_int window_is_active(GtkWindow* window);
	[LinkName("gtk_window_is_fullscreen")]
	public static extern c_int window_is_fullscreen(GtkWindow* window);
	[LinkName("gtk_window_is_maximized")]
	public static extern c_int window_is_maximized(GtkWindow* window);
	[LinkName("gtk_window_maximize")]
	public static extern void window_maximize(GtkWindow* window);
	[LinkName("gtk_window_minimize")]
	public static extern void window_minimize(GtkWindow* window);
	[LinkName("gtk_window_present")]
	public static extern void window_present(GtkWindow* window);
	[LinkName("gtk_window_present_with_time")]
	public static extern void window_present_with_time(GtkWindow* window, c_uint timestamp);
	[LinkName("gtk_window_set_application")]
	public static extern void window_set_application(GtkWindow* window, GtkApplication* application);
	[LinkName("gtk_window_set_child")]
	public static extern void window_set_child(GtkWindow* window, GtkWidget* child);
	[LinkName("gtk_window_set_decorated")]
	public static extern void window_set_decorated(GtkWindow* window, c_int setting);
	[LinkName("gtk_window_set_default_size")]
	public static extern void window_set_default_size(GtkWindow* window, c_int width, c_int height);
	[LinkName("gtk_window_set_default_widget")]
	public static extern void window_set_default_widget(GtkWindow* window, GtkWidget* default_widget);
	[LinkName("gtk_window_set_deletable")]
	public static extern void window_set_deletable(GtkWindow* window, c_int setting);
	[LinkName("gtk_window_set_destroy_with_parent")]
	public static extern void window_set_destroy_with_parent(GtkWindow* window, c_int setting);
	[LinkName("gtk_window_set_display")]
	public static extern void window_set_display(GtkWindow* window, GdkDisplay* display);
	[LinkName("gtk_window_set_focus")]
	public static extern void window_set_focus(GtkWindow* window, GtkWidget* focus);
	[LinkName("gtk_window_set_focus_visible")]
	public static extern void window_set_focus_visible(GtkWindow* window, c_int setting);
	[LinkName("gtk_window_set_handle_menubar_accel")]
	public static extern void window_set_handle_menubar_accel(GtkWindow* window, c_int handle_menubar_accel);
	[LinkName("gtk_window_set_hide_on_close")]
	public static extern void window_set_hide_on_close(GtkWindow* window, c_int setting);
	[LinkName("gtk_window_set_icon_name")]
	public static extern void window_set_icon_name(GtkWindow* window,  c_char* name);
	[LinkName("gtk_window_set_mnemonics_visible")]
	public static extern void window_set_mnemonics_visible(GtkWindow* window, c_int setting);
	[LinkName("gtk_window_set_modal")]
	public static extern void window_set_modal(GtkWindow* window, c_int modal);
	[LinkName("gtk_window_set_resizable")]
	public static extern void window_set_resizable(GtkWindow* window, c_int resizable);
	[LinkName("gtk_window_set_startup_id")]
	public static extern void window_set_startup_id(GtkWindow* window,  c_char* startup_id);
	[LinkName("gtk_window_set_title")]
	public static extern void window_set_title(GtkWindow* window,  c_char* title);
	[LinkName("gtk_window_set_titlebar")]
	public static extern void window_set_titlebar(GtkWindow* window, GtkWidget* titlebar);
	[LinkName("gtk_window_set_transient_for")]
	public static extern void window_set_transient_for(GtkWindow* window, GtkWindow* parent);
	[LinkName("gtk_window_unfullscreen")]
	public static extern void window_unfullscreen(GtkWindow* window);
	[LinkName("gtk_window_unmaximize")]
	public static extern void window_unmaximize(GtkWindow* window);
	[LinkName("gtk_window_unminimize")]
	public static extern void window_unminimize(GtkWindow* window);
	[CRepr]
	public struct GtkWindowClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkWindowControls;
	[LinkName("gtk_window_controls_new")]
	public static extern GtkWidget* window_controls_new(GtkPackType side);
	[LinkName("gtk_window_controls_get_decoration_layout")]
	public static extern  c_char* window_controls_get_decoration_layout(GtkWindowControls* self);
	[LinkName("gtk_window_controls_get_empty")]
	public static extern c_int window_controls_get_empty(GtkWindowControls* self);
	[LinkName("gtk_window_controls_get_side")]
	public static extern GtkPackType window_controls_get_side(GtkWindowControls* self);
	[LinkName("gtk_window_controls_set_decoration_layout")]
	public static extern void window_controls_set_decoration_layout(GtkWindowControls* self,  c_char* layout);
	[LinkName("gtk_window_controls_set_side")]
	public static extern void window_controls_set_side(GtkWindowControls* self, GtkPackType side);
	[CRepr]
	public struct GtkWindowControlsClass
	{
		GtkWidgetClass parent_class;
	}
	[CRepr]
	public struct GtkWindowGroup;
	[LinkName("gtk_window_group_new")]
	public static extern GtkWindowGroup* window_group_new();
	[LinkName("gtk_window_group_add_window")]
	public static extern void window_group_add_window(GtkWindowGroup* window_group, GtkWindow* window);
	[LinkName("gtk_window_group_list_windows")]
	public static extern GList* window_group_list_windows(GtkWindowGroup* window_group);
	[LinkName("gtk_window_group_remove_window")]
	public static extern void window_group_remove_window(GtkWindowGroup* window_group, GtkWindow* window);
	[CRepr]
	public struct GtkWindowGroupClass
	{
		GObjectClass parent_class;
	}
	[CRepr]
	public struct GtkWindowGroupPrivate
	{
	}
	[CRepr]
	public struct GtkWindowHandle;
	[LinkName("gtk_window_handle_new")]
	public static extern GtkWidget* window_handle_new();
	[LinkName("gtk_window_handle_get_child")]
	public static extern GtkWidget* window_handle_get_child(GtkWindowHandle* self);
	[LinkName("gtk_window_handle_set_child")]
	public static extern void window_handle_set_child(GtkWindowHandle* self, GtkWidget* child);
	[CRepr]
	public struct GtkWindowHandleClass
	{
		GtkWidgetClass parent_class;
	}
	public enum GtkWrapMode : c_int
	{
		GTK_WRAP_NONE,
		GTK_WRAP_CHAR,
		GTK_WRAP_WORD,
		GTK_WRAP_WORD_CHAR
	}
}