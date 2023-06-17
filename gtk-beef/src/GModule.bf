namespace GModule;

using System;
using System.Interop;

class GModule
{
	[CRepr]
	public struct GModule
	{
	}
	public function  c_char* GModuleCheckInit(GModule* module);
	public enum GModuleError : c_int
	{
		G_MODULE_ERROR_FAILED,
		G_MODULE_ERROR_CHECK_FAILED
	}
	[CRepr]
	public struct GModuleFlags
	{
		public const int G_MODULE_BIND_LAZY = 1;
		public const int G_MODULE_BIND_LOCAL = 2;
		public const int G_MODULE_BIND_MASK = 3;
	}
	public function void GModuleUnload(GModule* module);
}