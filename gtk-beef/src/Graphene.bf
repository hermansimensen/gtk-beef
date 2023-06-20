namespace Gtk;

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
	[LinkName("graphene_box_empty")]
	public static extern Box* BoxEmpty();
	[LinkName("graphene_box_infinite")]
	public static extern Box* BoxInfinite();
	[LinkName("graphene_box_minus_one")]
	public static extern Box* BoxMinusOne();
	[LinkName("graphene_box_one")]
	public static extern Box* BoxOne();
	[LinkName("graphene_box_one_minus_one")]
	public static extern Box* BoxOneMinusOne();
	[LinkName("graphene_box_zero")]
	public static extern Box* BoxZero();
	[LinkName("graphene_point3d_zero")]
	public static extern Point3D* Point3dZero();
	[LinkName("graphene_point_zero")]
	public static extern Point* PointZero();
	[LinkName("graphene_rect_alloc")]
	public static extern Rect* RectAlloc();
	[LinkName("graphene_rect_zero")]
	public static extern Rect* RectZero();
	[LinkName("graphene_size_zero")]
	public static extern Size* SizeZero();
	[LinkName("graphene_vec2_one")]
	public static extern Vec2* Vec2One();
	[LinkName("graphene_vec2_x_axis")]
	public static extern Vec2* Vec2XAxis();
	[LinkName("graphene_vec2_y_axis")]
	public static extern Vec2* Vec2YAxis();
	[LinkName("graphene_vec2_zero")]
	public static extern Vec2* Vec2Zero();
	[LinkName("graphene_vec3_one")]
	public static extern Vec3* Vec3One();
	[LinkName("graphene_vec3_x_axis")]
	public static extern Vec3* Vec3XAxis();
	[LinkName("graphene_vec3_y_axis")]
	public static extern Vec3* Vec3YAxis();
	[LinkName("graphene_vec3_z_axis")]
	public static extern Vec3* Vec3ZAxis();
	[LinkName("graphene_vec3_zero")]
	public static extern Vec3* Vec3Zero();
	[LinkName("graphene_vec4_one")]
	public static extern Vec4* Vec4One();
	[LinkName("graphene_vec4_w_axis")]
	public static extern Vec4* Vec4WAxis();
	[LinkName("graphene_vec4_x_axis")]
	public static extern Vec4* Vec4XAxis();
	[LinkName("graphene_vec4_y_axis")]
	public static extern Vec4* Vec4YAxis();
	[LinkName("graphene_vec4_z_axis")]
	public static extern Vec4* Vec4ZAxis();
	[LinkName("graphene_vec4_zero")]
	public static extern Vec4* Vec4Zero();
}