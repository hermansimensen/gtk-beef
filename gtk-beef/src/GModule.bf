namespace Gtk;

using System;
using System.Interop;

class GModule
{
	[CRepr]
	public struct Module
	{
	}
	public function char8* ModuleCheckInit(Module module);
	public enum ModuleError : c_int
	{
		failed = 0,
		check_failed = 1
	}
	[CRepr]
	public enum ModuleFlags : int
	{
		lazy = 1,
		local = 2,
		mask = 3
	}
	public function void ModuleUnload(Module module);
	[LinkName("g_module_build_path")]
	public static extern char8* ModuleBuildPath(char8* directory, char8* module_name);
	[LinkName("g_module_error")]
	public static extern char8* ModuleError();
	[LinkName("g_module_error_quark")]
	public static extern GLib.Quark ModuleErrorQuark();
	[LinkName("g_module_supported")]
	public static extern c_int ModuleSupported();
}