# GTK-Beef

GTK4 bindings for Beef

Example: Hello World

```beef
using Gtk;

class Program
{
	public static void OnClicked(Gtk.Button* widget, void* data)
	{
		System.Console.WriteLine("You clicked me");
	}

	public static void AppActivate(Gio.Application *app, void* user_data)
	{
		Gtk.Widget* window; window = Gtk.ApplicationWindow.New((Gtk.Application*)app);
		Gtk.Window.SetTitle((Gtk.Window*)window, "Window");
		Gtk.Window.SetDefaultSize((Gtk.Window*)window, 200, 200);

		Gtk.Button* button = (Gtk.Button*)Gtk.Button.NewWithLabel("Hello World");
		GObject.SignalConnect<Gtk.Button.ClickedFunc>(button, "clicked", => OnClicked, .After);
		Gtk.Window.SetChild((Gtk.Window*)(window), button);

		Gtk.Window.Present((Gtk.Window*) window);
	}

	public static void Main()
	{
		Gtk.Application* app;
		int status;

		app = Gtk.Application.New("test.test", .DefaultFlags);

		GObject.SignalConnect<Gtk.Application.ActivateFunc>(app, "activate", => AppActivate, .After);
		status = Gio.Application.Run(app, 0, null);
		GObject.Object.Unref(app);
	}
}
```


## Demo

![Hello World](https://github.com/hermansimensen/gtk-beef/blob/main/helloworld.PNG?raw=true)
