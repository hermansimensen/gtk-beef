namespace Gtk;

using System;
using System.Interop;

class cairo
{

		[LinkName("cairo_image_surface_create")]
		public static extern void ImageSurfaceCreate();
	[CRepr]
	public struct Context
	{
	}
	[CRepr]
	public struct Device
	{
	}
	[CRepr]
	public struct Surface
	{
	}
	[CRepr]
	public struct Matrix
	{
	}
	[CRepr]
	public struct Pattern
	{
	}
	[CRepr]
	public struct Region
	{
	}
	[CRepr]
	public struct FontOptions
	{
	}
	[CRepr]
	public struct FontFace
	{
	}
	[CRepr]
	public struct ScaledFont
	{
	}
	[CRepr]
	public struct Path
	{
	}
	[CRepr]
	public struct Rectangle
	{
		public double x;
		public double y;
		public double width;
		public double height;
	}
	[CRepr]
	public struct RectangleInt
	{
		public c_int x;
		public c_int y;
		public c_int width;
		public c_int height;
	}
	[CRepr, AllowDuplicates]
	public enum Status
	{
		Success = 0,
		NoMemory = 1,
		InvalidRestore = 2,
		InvalidPopGroup = 3,
		NoCurrentPoint = 4,
		InvalidMatrix = 5,
		InvalidStatus = 6,
		NullPointer = 7,
		InvalidString = 8,
		InvalidPathData = 9,
		ReadError = 10,
		WriteError = 11,
		SurfaceFinished = 12,
		SurfaceTypeMismatch = 13,
		PatternTypeMismatch = 14,
		InvalidContent = 15,
		InvalidFormat = 16,
		InvalidVisual = 17,
		FileNotFound = 18,
		InvalidDash = 19,
		InvalidDscComment = 20,
		InvalidIndex = 21,
		ClipNotRepresentable = 22,
		TempFileError = 23,
		InvalidStride = 24,
		FontTypeMismatch = 25,
		UserFontImmutable = 26,
		UserFontError = 27,
		NegativeCount = 28,
		InvalidClusters = 29,
		InvalidSlant = 30,
		InvalidWeight = 31,
		InvalidSize = 32,
		UserFontNotImplemented = 33,
		DeviceTypeMismatch = 34,
		DeviceError = 35,
		InvalidMeshConstruction = 36,
		DeviceFinished = 37,
		Jbig2GlobalMissing = 38
	}
	[CRepr, AllowDuplicates]
	public enum Content
	{
		Color = 4096,
		Alpha = 8192,
		ColorAlpha = 12288
	}
	[CRepr, AllowDuplicates]
	public enum Operator
	{
		Clear = 0,
		Source = 1,
		Over = 2,
		In = 3,
		Out = 4,
		Atop = 5,
		Dest = 6,
		DestOver = 7,
		DestIn = 8,
		DestOut = 9,
		DestAtop = 10,
		Xor = 11,
		Add = 12,
		Saturate = 13,
		Multiply = 14,
		Screen = 15,
		Overlay = 16,
		Darken = 17,
		Lighten = 18,
		ColorDodge = 19,
		ColorBurn = 20,
		HardLight = 21,
		SoftLight = 22,
		Difference = 23,
		Exclusion = 24,
		HslHue = 25,
		HslSaturation = 26,
		HslColor = 27,
		HslLuminosity = 28
	}
	[CRepr, AllowDuplicates]
	public enum Antialias
	{
		Default = 0,
		None = 1,
		Gray = 2,
		Subpixel = 3,
		Fast = 4,
		Good = 5,
		Best = 6
	}
	[CRepr, AllowDuplicates]
	public enum FillRule
	{
		Winding = 0,
		EvenOdd = 1
	}
	[CRepr, AllowDuplicates]
	public enum LineCap
	{
		Butt = 0,
		Round = 1,
		Square = 2
	}
	[CRepr, AllowDuplicates]
	public enum LineJoin
	{
		Miter = 0,
		Round = 1,
		Bevel = 2
	}
	[CRepr, AllowDuplicates]
	public enum TextClusterFlags
	{
		Backward = 1
	}
	[CRepr, AllowDuplicates]
	public enum FontSlant
	{
		Normal = 0,
		Italic = 1,
		Oblique = 2
	}
	[CRepr, AllowDuplicates]
	public enum FontWeight
	{
		Normal = 0,
		Bold = 1
	}
	[CRepr, AllowDuplicates]
	public enum SubpixelOrder
	{
		Default = 0,
		Rgb = 1,
		Bgr = 2,
		Vrgb = 3,
		Vbgr = 4
	}
	[CRepr, AllowDuplicates]
	public enum HintStyle
	{
		Default = 0,
		None = 1,
		Slight = 2,
		Medium = 3,
		Full = 4
	}
	[CRepr, AllowDuplicates]
	public enum HintMetrics
	{
		Default = 0,
		Off = 1,
		On = 2
	}
	[CRepr, AllowDuplicates]
	public enum FontType
	{
		Toy = 0,
		Ft = 1,
		Win32 = 2,
		Quartz = 3,
		User = 4
	}
	[CRepr, AllowDuplicates]
	public enum PathDataType
	{
		MoveTo = 0,
		LineTo = 1,
		CurveTo = 2,
		ClosePath = 3
	}
	[CRepr, AllowDuplicates]
	public enum DeviceType
	{
		Drm = 0,
		Gl = 1,
		Script = 2,
		Xcb = 3,
		Xlib = 4,
		Xml = 5,
		Cogl = 6,
		Win32 = 7,
		Invalid = -1
	}
	[CRepr, AllowDuplicates]
	public enum SurfaceType
	{
		Image = 0,
		Pdf = 1,
		Ps = 2,
		Xlib = 3,
		Xcb = 4,
		Glitz = 5,
		Quartz = 6,
		Win32 = 7,
		Beos = 8,
		Directfb = 9,
		Svg = 10,
		Os2 = 11,
		Win32Printing = 12,
		QuartzImage = 13,
		Script = 14,
		Qt = 15,
		Recording = 16,
		Vg = 17,
		Gl = 18,
		Drm = 19,
		Tee = 20,
		Xml = 21,
		Skia = 22,
		Subsurface = 23,
		Cogl = 24
	}
	[CRepr, AllowDuplicates]
	public enum Format
	{
		Invalid = -1,
		Argb32 = 0,
		Rgb24 = 1,
		A8 = 2,
		A1 = 3,
		Rgb16565 = 4,
		Rgb30 = 5
	}
	[CRepr, AllowDuplicates]
	public enum PatternType
	{
		Solid = 0,
		Surface = 1,
		Linear = 2,
		Radial = 3,
		Mesh = 4,
		RasterSource = 5
	}
	[CRepr, AllowDuplicates]
	public enum Extend
	{
		None = 0,
		Repeat = 1,
		Reflect = 2,
		Pad = 3
	}
	[CRepr, AllowDuplicates]
	public enum Filter
	{
		Fast = 0,
		Good = 1,
		Best = 2,
		Nearest = 3,
		Bilinear = 4,
		Gaussian = 5
	}
	[CRepr, AllowDuplicates]
	public enum RegionOverlap
	{
		In = 0,
		Out = 1,
		Part = 2
	}
}
