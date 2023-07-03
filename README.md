# GTK-Beef

GTK4 bindings for Beef

Example: Hello World

```
using Gtk;

class Program
{
	public static void PrintHello (Gtk.Widget* widget, void* data)
	{
		  System.Console.WriteLine("You clicked me");
	}

	public static void AppActivate(Gtk.Application *app, void* user_data)
	{
		Gtk.Widget* window;
		Gtk.Button* button;

		window = Gtk.ApplicationWindow.New(app);
		Gtk.Window.SetTitle((Gtk.Window*)window, "Window");
		Gtk.Window.SetDefaultSize((Gtk.Window*)window, 200, 200);

		button = (Gtk.Button*)Gtk.Button.NewWithLabel("Hello World");
		PrintFunction pf = => PrintHello;
		GObject.SignalConnect(button, "clicked", pf, .After);
		Gtk.Window.SetChild((Gtk.Window*)(window), button);

		Gtk.Window.Present((Gtk.Window*) window);
	}

	function void ActivateFunc(Gtk.Application* s, void* st);
	function void PrintFunction(Gtk.Widget* widget, void* data);

	public static void Main()
	{
		Gtk.Application* app;
		int status;

		app = Gtk.Application.New("test.test", .DefaultFlags);

		ActivateFunc af = => AppActivate;
		GObject.SignalConnect<ActivateFunc>(app, "activate", af, .After);
		status = Gio.Application.Run(app, 0, null);
		GObject.Object.Unref(app);
	}
}
```


## Demo

![Hello World](https://github.com/hermansimensen/gtk-beef/blob/main/helloworld.PNG?raw=true)
