namespace gtk_beef;

namespace Graphene;

using System;
using System.Interop;

class Graphene
{
	[CRepr]
	public struct graphene_box_t
	{
		graphene_vec3_t min;
		graphene_vec3_t max;
	}
	[CRepr]
	public struct graphene_euler_t
	{
		graphene_vec3_t angles;
		graphene_euler_order_t order;
	}
	public enum graphene_euler_order_t : c_int
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
	public struct graphene_frustum_t
	{
	}
	[CRepr]
	public struct graphene_matrix_t
	{
		graphene_simd4x4f_t value;
	}
	[CRepr]
	public struct graphene_plane_t
	{
		graphene_vec3_t normal;
		float constant;
	}
	[CRepr]
	public struct graphene_point_t
	{
		float x;
		float y;
	}
	[CRepr]
	public struct graphene_point3d_t
	{
		float x;
		float y;
		float z;
	}
	[CRepr]
	public struct graphene_quad_t
	{
	}
	[CRepr]
	public struct graphene_quaternion_t
	{
		float x;
		float y;
		float z;
		float w;
	}
	[CRepr]
	public struct graphene_ray_t
	{
		graphene_vec3_t origin;
		graphene_vec3_t direction;
	}
	public enum graphene_ray_intersection_kind_t : c_int
	{
		GRAPHENE_RAY_INTERSECTION_KIND_NONE,
		GRAPHENE_RAY_INTERSECTION_KIND_ENTER,
		GRAPHENE_RAY_INTERSECTION_KIND_LEAVE
	}
	[CRepr]
	public struct graphene_rect_t
	{
		graphene_point_t origin;
		graphene_size_t size;
	}
	[CRepr]
	public struct graphene_simd4f_t
	{
		float x;
		float y;
		float z;
		float w;
	}
	[CRepr]
	public struct graphene_simd4x4f_t
	{
		graphene_simd4f_t x;
		graphene_simd4f_t y;
		graphene_simd4f_t z;
		graphene_simd4f_t w;
	}
	[CRepr]
	public struct graphene_size_t
	{
		float width;
		float height;
	}
	[CRepr]
	public struct graphene_sphere_t
	{
		graphene_vec3_t center;
		float radius;
	}
	[CRepr]
	public struct graphene_triangle_t
	{
		graphene_vec3_t a;
		graphene_vec3_t b;
		graphene_vec3_t c;
	}
	[CRepr]
	public struct graphene_vec2_t
	{
		graphene_simd4f_t value;
	}
	[CRepr]
	public struct graphene_vec3_t
	{
		graphene_simd4f_t value;
	}
	[CRepr]
	public struct graphene_vec4_t
	{
		graphene_simd4f_t value;
	}
}