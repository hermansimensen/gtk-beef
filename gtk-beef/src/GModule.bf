namespace GModule;

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
		G_MODULE_ERROR_FAILED,
		G_MODULE_ERROR_CHECK_FAILED
	}
	[CRepr]
	public struct ModuleFlags
	{
		public const int G_MODULE_BIND_LAZY = 1;
		public const int G_MODULE_BIND_LOCAL = 2;
		public const int G_MODULE_BIND_MASK = 3;
	}
	public function void ModuleUnload(Module module);
}