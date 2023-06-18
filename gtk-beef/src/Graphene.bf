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
		GRAPHENE_EULER_ORDER_DEFAULT,
		GRAPHENE_EULER_ORDER_XYZ,
		GRAPHENE_EULER_ORDER_YZX,
		GRAPHENE_EULER_ORDER_ZXY,
		GRAPHENE_EULER_ORDER_XZY,
		GRAPHENE_EULER_ORDER_YXZ,
		GRAPHENE_EULER_ORDER_ZYX,
		GRAPHENE_EULER_ORDER_SXYZ,
		GRAPHENE_EULER_ORDER_SXYX,
		GRAPHENE_EULER_ORDER_SXZY,
		GRAPHENE_EULER_ORDER_SXZX,
		GRAPHENE_EULER_ORDER_SYZX,
		GRAPHENE_EULER_ORDER_SYZY,
		GRAPHENE_EULER_ORDER_SYXZ,
		GRAPHENE_EULER_ORDER_SYXY,
		GRAPHENE_EULER_ORDER_SZXY,
		GRAPHENE_EULER_ORDER_SZXZ,
		GRAPHENE_EULER_ORDER_SZYX,
		GRAPHENE_EULER_ORDER_SZYZ,
		GRAPHENE_EULER_ORDER_RZYX,
		GRAPHENE_EULER_ORDER_RXYX,
		GRAPHENE_EULER_ORDER_RYZX,
		GRAPHENE_EULER_ORDER_RXZX,
		GRAPHENE_EULER_ORDER_RXZY,
		GRAPHENE_EULER_ORDER_RYZY,
		GRAPHENE_EULER_ORDER_RZXY,
		GRAPHENE_EULER_ORDER_RYXY,
		GRAPHENE_EULER_ORDER_RYXZ,
		GRAPHENE_EULER_ORDER_RZXZ,
		GRAPHENE_EULER_ORDER_RXYZ,
		GRAPHENE_EULER_ORDER_RZYZ
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
		GRAPHENE_RAY_INTERSECTION_KIND_NONE,
		GRAPHENE_RAY_INTERSECTION_KIND_ENTER,
		GRAPHENE_RAY_INTERSECTION_KIND_LEAVE
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