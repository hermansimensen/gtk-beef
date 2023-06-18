namespace Graphene;

using System;
using System.Interop;

class Graphene
{
	[CRepr]
	public struct Box
	{
		Vec3 min;
		Vec3 max;
	}
	[CRepr]
	public struct Euler
	{
		Vec3 angles;
		EulerOrder order;
	}
	public enum EulerOrder : c_int
	{
		default_ = -1,
		xyz = 0,
		yzx = 1,
		zxy = 2,
		xzy = 3,
		yxz = 4,
		zyx = 5,
		sxyz = 6,
		sxyx = 7,
		sxzy = 8,
		sxzx = 9,
		syzx = 10,
		syzy = 11,
		syxz = 12,
		syxy = 13,
		szxy = 14,
		szxz = 15,
		szyx = 16,
		szyz = 17,
		rzyx = 18,
		rxyx = 19,
		ryzx = 20,
		rxzx = 21,
		rxzy = 22,
		ryzy = 23,
		rzxy = 24,
		ryxy = 25,
		ryxz = 26,
		rzxz = 27,
		rxyz = 28,
		rzyz = 29
	}
	[CRepr]
	public struct Frustum
	{
	}
	[CRepr]
	public struct Matrix
	{
		Simd4X4F value;
	}
	[CRepr]
	public struct Plane
	{
		Vec3 normal;
		float constant;
	}
	[CRepr]
	public struct Point
	{
		float x;
		float y;
	}
	[CRepr]
	public struct Point3D
	{
		float x;
		float y;
		float z;
	}
	[CRepr]
	public struct Quad
	{
	}
	[CRepr]
	public struct Quaternion
	{
		float x;
		float y;
		float z;
		float w;
	}
	[CRepr]
	public struct Ray
	{
		Vec3 origin;
		Vec3 direction;
	}
	public enum RayIntersectionKind : c_int
	{
		none = 0,
		enter = 1,
		leave = 2
	}
	[CRepr]
	public struct Rect
	{
		Point origin;
		Size size;
	}
	[CRepr]
	public struct Simd4F
	{
		float x;
		float y;
		float z;
		float w;
	}
	[CRepr]
	public struct Simd4X4F
	{
		Simd4F x;
		Simd4F y;
		Simd4F z;
		Simd4F w;
	}
	[CRepr]
	public struct Size
	{
		float width;
		float height;
	}
	[CRepr]
	public struct Sphere
	{
		Vec3 center;
		float radius;
	}
	[CRepr]
	public struct Triangle
	{
		Vec3 a;
		Vec3 b;
		Vec3 c;
	}
	[CRepr]
	public struct Vec2
	{
		Simd4F value;
	}
	[CRepr]
	public struct Vec3
	{
		Simd4F value;
	}
	[CRepr]
	public struct Vec4
	{
		Simd4F value;
	}
}