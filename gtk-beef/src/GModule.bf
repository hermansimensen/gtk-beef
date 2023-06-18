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
}