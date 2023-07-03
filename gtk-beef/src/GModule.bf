namespace Gtk;

using System;
using System.Interop;

class GModule
{

		[LinkName("g_module_build_path")]
		public static extern char8* ModuleBuildPath(char8* directory, char8* module_name);
		[LinkName("g_module_error")]
		public static extern char8* ModuleError();
		[LinkName("g_module_error_quark")]
		public static extern GLib.Quark ModuleErrorQuark();
		[LinkName("g_module_supported")]
		public static extern c_int ModuleSupported();
	[CRepr]
	public struct Module : int
	{
		[LinkName("g_module_close")]
		public static extern c_int Close(Module* module);
		[LinkName("g_module_make_resident")]
		public static extern void MakeResident(Module* module);
		[LinkName("g_module_name")]
		public static extern char8* Name(Module* module);
		[LinkName("g_module_symbol")]
		public static extern c_int Symbol(Module* module, char8* symbol_name, void** symbol);
	}
	[CRepr, AllowDuplicates]
	public enum ModuleError
	{
		Failed = 0,
		CheckFailed = 1
	}
	[CRepr, AllowDuplicates]
	public enum ModuleFlags
	{
		Lazy = 1,
		Local = 2,
		Mask = 3
	}
	public function char8* ModuleCheckInit(Module* module);
	public function void ModuleUnload(Module* module);
}
