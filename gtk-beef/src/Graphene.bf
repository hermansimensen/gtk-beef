namespace Gtk;

using System;
using System.Interop;

class Graphene
{

	const double PI = (.)3.141593;
	const double PI_2 = (.)1.570796;
	const c_int VEC2_LEN = (.)2;
	const c_int VEC3_LEN = (.)3;
	const c_int VEC4_LEN = (.)4;
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
	[CRepr]
	public struct Box
	{
		public Vec3 min;
		public Vec3 max;
		[LinkName("graphene_box_alloc")]
		public static extern Box* Alloc();
		[LinkName("graphene_box_contains_box")]
		public static extern c_int ContainsBox(Box* a, Box* b);
		[LinkName("graphene_box_contains_point")]
		public static extern c_int ContainsPoint(Box* box_, Point3D* point);
		[LinkName("graphene_box_equal")]
		public static extern c_int Equal(Box* a, Box* b);
		[LinkName("graphene_box_expand")]
		public static extern void Expand(Box* box_, Point3D* point, Box* res);
		[LinkName("graphene_box_expand_scalar")]
		public static extern void ExpandScalar(Box* box_, float scalar, Box* res);
		[LinkName("graphene_box_expand_vec3")]
		public static extern void ExpandVec3(Box* box_, Vec3* vec, Box* res);
		[LinkName("graphene_box_free")]
		public static extern void Free(Box* box_);
		[LinkName("graphene_box_get_bounding_sphere")]
		public static extern void GetBoundingSphere(Box* box_, Sphere* sphere);
		[LinkName("graphene_box_get_center")]
		public static extern void GetCenter(Box* box_, Point3D* center);
		[LinkName("graphene_box_get_depth")]
		public static extern float GetDepth(Box* box_);
		[LinkName("graphene_box_get_height")]
		public static extern float GetHeight(Box* box_);
		[LinkName("graphene_box_get_max")]
		public static extern void GetMax(Box* box_, Point3D* max);
		[LinkName("graphene_box_get_min")]
		public static extern void GetMin(Box* box_, Point3D* min);
		[LinkName("graphene_box_get_size")]
		public static extern void GetSize(Box* box_, Vec3* size);
		[LinkName("graphene_box_get_vertices")]
		public static extern void GetVertices(Box* box_, Vec3* vertices);
		[LinkName("graphene_box_get_width")]
		public static extern float GetWidth(Box* box_);
		[LinkName("graphene_box_init")]
		public static extern Box* Init(Box* box_, Point3D* min, Point3D* max);
		[LinkName("graphene_box_init_from_box")]
		public static extern Box* InitFromBox(Box* box_, Box* src);
		[LinkName("graphene_box_init_from_points")]
		public static extern Box* InitFromPoints(Box* box_, c_uint n_points, Point3D* points);
		[LinkName("graphene_box_init_from_vec3")]
		public static extern Box* InitFromVec3(Box* box_, Vec3* min, Vec3* max);
		[LinkName("graphene_box_init_from_vectors")]
		public static extern Box* InitFromVectors(Box* box_, c_uint n_vectors, Vec3* vectors);
		[LinkName("graphene_box_intersection")]
		public static extern c_int Intersection(Box* a, Box* b, Box* res);
		[LinkName("graphene_box_union")]
		public static extern void Union(Box* a, Box* b, Box* res);
	}
	[CRepr]
	public struct Euler
	{
		public Vec3 angles;
		public EulerOrder order;
		[LinkName("graphene_euler_alloc")]
		public static extern Euler* Alloc();
		[LinkName("graphene_euler_equal")]
		public static extern c_int Equal(Euler* a, Euler* b);
		[LinkName("graphene_euler_free")]
		public static extern void Free(Euler* e);
		[LinkName("graphene_euler_get_alpha")]
		public static extern float GetAlpha(Euler* e);
		[LinkName("graphene_euler_get_beta")]
		public static extern float GetBeta(Euler* e);
		[LinkName("graphene_euler_get_gamma")]
		public static extern float GetGamma(Euler* e);
		[LinkName("graphene_euler_get_order")]
		public static extern EulerOrder GetOrder(Euler* e);
		[LinkName("graphene_euler_get_x")]
		public static extern float GetX(Euler* e);
		[LinkName("graphene_euler_get_y")]
		public static extern float GetY(Euler* e);
		[LinkName("graphene_euler_get_z")]
		public static extern float GetZ(Euler* e);
		[LinkName("graphene_euler_init")]
		public static extern Euler* Init(Euler* e, float x, float y, float z);
		[LinkName("graphene_euler_init_from_euler")]
		public static extern Euler* InitFromEuler(Euler* e, Euler* src);
		[LinkName("graphene_euler_init_from_matrix")]
		public static extern Euler* InitFromMatrix(Euler* e, Matrix* m, EulerOrder order);
		[LinkName("graphene_euler_init_from_quaternion")]
		public static extern Euler* InitFromQuaternion(Euler* e, Quaternion* q, EulerOrder order);
		[LinkName("graphene_euler_init_from_radians")]
		public static extern Euler* InitFromRadians(Euler* e, float x, float y, float z, EulerOrder order);
		[LinkName("graphene_euler_init_from_vec3")]
		public static extern Euler* InitFromVec3(Euler* e, Vec3* v, EulerOrder order);
		[LinkName("graphene_euler_init_with_order")]
		public static extern Euler* InitWithOrder(Euler* e, float x, float y, float z, EulerOrder order);
		[LinkName("graphene_euler_reorder")]
		public static extern void Reorder(Euler* e, EulerOrder order, Euler* res);
		[LinkName("graphene_euler_to_matrix")]
		public static extern void ToMatrix(Euler* e, Matrix* res);
		[LinkName("graphene_euler_to_quaternion")]
		public static extern void ToQuaternion(Euler* e, Quaternion* res);
		[LinkName("graphene_euler_to_vec3")]
		public static extern void ToVec3(Euler* e, Vec3* res);
	}
	[CRepr]
	public struct Frustum
	{
		public Plane planes;
		[LinkName("graphene_frustum_alloc")]
		public static extern Frustum* Alloc();
		[LinkName("graphene_frustum_contains_point")]
		public static extern c_int ContainsPoint(Frustum* f, Point3D* point);
		[LinkName("graphene_frustum_equal")]
		public static extern c_int Equal(Frustum* a, Frustum* b);
		[LinkName("graphene_frustum_free")]
		public static extern void Free(Frustum* f);
		[LinkName("graphene_frustum_get_planes")]
		public static extern void GetPlanes(Frustum* f, Plane* planes);
		[LinkName("graphene_frustum_init")]
		public static extern Frustum* Init(Frustum* f, Plane* p0, Plane* p1, Plane* p2, Plane* p3, Plane* p4, Plane* p5);
		[LinkName("graphene_frustum_init_from_frustum")]
		public static extern Frustum* InitFromFrustum(Frustum* f, Frustum* src);
		[LinkName("graphene_frustum_init_from_matrix")]
		public static extern Frustum* InitFromMatrix(Frustum* f, Matrix* matrix);
		[LinkName("graphene_frustum_intersects_box")]
		public static extern c_int IntersectsBox(Frustum* f, Box* box_);
		[LinkName("graphene_frustum_intersects_sphere")]
		public static extern c_int IntersectsSphere(Frustum* f, Sphere* sphere);
	}
	[CRepr]
	public struct Matrix
	{
		public Simd4X4F value;
		[LinkName("graphene_matrix_alloc")]
		public static extern Matrix* Alloc();
		[LinkName("graphene_matrix_decompose")]
		public static extern c_int Decompose(Matrix* m, Vec3* translate, Vec3* scale, Quaternion* rotate, Vec3* shear, Vec4* perspective);
		[LinkName("graphene_matrix_determinant")]
		public static extern float Determinant(Matrix* m);
		[LinkName("graphene_matrix_equal")]
		public static extern c_int Equal(Matrix* a, Matrix* b);
		[LinkName("graphene_matrix_equal_fast")]
		public static extern c_int EqualFast(Matrix* a, Matrix* b);
		[LinkName("graphene_matrix_free")]
		public static extern void Free(Matrix* m);
		[LinkName("graphene_matrix_get_row")]
		public static extern void GetRow(Matrix* m, c_uint index_, Vec4* res);
		[LinkName("graphene_matrix_get_value")]
		public static extern float GetValue(Matrix* m, c_uint row, c_uint col);
		[LinkName("graphene_matrix_get_x_scale")]
		public static extern float GetXScale(Matrix* m);
		[LinkName("graphene_matrix_get_x_translation")]
		public static extern float GetXTranslation(Matrix* m);
		[LinkName("graphene_matrix_get_y_scale")]
		public static extern float GetYScale(Matrix* m);
		[LinkName("graphene_matrix_get_y_translation")]
		public static extern float GetYTranslation(Matrix* m);
		[LinkName("graphene_matrix_get_z_scale")]
		public static extern float GetZScale(Matrix* m);
		[LinkName("graphene_matrix_get_z_translation")]
		public static extern float GetZTranslation(Matrix* m);
		[LinkName("graphene_matrix_init_from_2d")]
		public static extern Matrix* InitFrom2d(Matrix* m, double xx, double yx, double xy, double yy, double x_0, double y_0);
		[LinkName("graphene_matrix_init_from_float")]
		public static extern Matrix* InitFromFloat(Matrix* m, float* v);
		[LinkName("graphene_matrix_init_from_matrix")]
		public static extern Matrix* InitFromMatrix(Matrix* m, Matrix* src);
		[LinkName("graphene_matrix_init_from_vec4")]
		public static extern Matrix* InitFromVec4(Matrix* m, Vec4* v0, Vec4* v1, Vec4* v2, Vec4* v3);
		[LinkName("graphene_matrix_init_frustum")]
		public static extern Matrix* InitFrustum(Matrix* m, float left, float right, float bottom, float top, float z_near, float z_far);
		[LinkName("graphene_matrix_init_identity")]
		public static extern Matrix* InitIdentity(Matrix* m);
		[LinkName("graphene_matrix_init_look_at")]
		public static extern Matrix* InitLookAt(Matrix* m, Vec3* eye, Vec3* center, Vec3* up);
		[LinkName("graphene_matrix_init_ortho")]
		public static extern Matrix* InitOrtho(Matrix* m, float left, float right, float top, float bottom, float z_near, float z_far);
		[LinkName("graphene_matrix_init_perspective")]
		public static extern Matrix* InitPerspective(Matrix* m, float fovy, float aspect, float z_near, float z_far);
		[LinkName("graphene_matrix_init_rotate")]
		public static extern Matrix* InitRotate(Matrix* m, float angle, Vec3* axis);
		[LinkName("graphene_matrix_init_scale")]
		public static extern Matrix* InitScale(Matrix* m, float x, float y, float z);
		[LinkName("graphene_matrix_init_skew")]
		public static extern Matrix* InitSkew(Matrix* m, float x_skew, float y_skew);
		[LinkName("graphene_matrix_init_translate")]
		public static extern Matrix* InitTranslate(Matrix* m, Point3D* p);
		[LinkName("graphene_matrix_interpolate")]
		public static extern void Interpolate(Matrix* a, Matrix* b, double factor, Matrix* res);
		[LinkName("graphene_matrix_inverse")]
		public static extern c_int Inverse(Matrix* m, Matrix* res);
		[LinkName("graphene_matrix_is_2d")]
		public static extern c_int Is2d(Matrix* m);
		[LinkName("graphene_matrix_is_backface_visible")]
		public static extern c_int IsBackfaceVisible(Matrix* m);
		[LinkName("graphene_matrix_is_identity")]
		public static extern c_int IsIdentity(Matrix* m);
		[LinkName("graphene_matrix_is_singular")]
		public static extern c_int IsSingular(Matrix* m);
		[LinkName("graphene_matrix_multiply")]
		public static extern void Multiply(Matrix* a, Matrix* b, Matrix* res);
		[LinkName("graphene_matrix_near")]
		public static extern c_int Near(Matrix* a, Matrix* b, float epsilon);
		[LinkName("graphene_matrix_normalize")]
		public static extern void Normalize(Matrix* m, Matrix* res);
		[LinkName("graphene_matrix_perspective")]
		public static extern void Perspective(Matrix* m, float depth, Matrix* res);
		[LinkName("graphene_matrix_print")]
		public static extern void Print(Matrix* m);
		[LinkName("graphene_matrix_project_point")]
		public static extern void ProjectPoint(Matrix* m, Point* p, Point* res);
		[LinkName("graphene_matrix_project_rect")]
		public static extern void ProjectRect(Matrix* m, Rect* r, Quad* res);
		[LinkName("graphene_matrix_project_rect_bounds")]
		public static extern void ProjectRectBounds(Matrix* m, Rect* r, Rect* res);
		[LinkName("graphene_matrix_rotate")]
		public static extern void Rotate(Matrix* m, float angle, Vec3* axis);
		[LinkName("graphene_matrix_rotate_euler")]
		public static extern void RotateEuler(Matrix* m, Euler* e);
		[LinkName("graphene_matrix_rotate_quaternion")]
		public static extern void RotateQuaternion(Matrix* m, Quaternion* q);
		[LinkName("graphene_matrix_rotate_x")]
		public static extern void RotateX(Matrix* m, float angle);
		[LinkName("graphene_matrix_rotate_y")]
		public static extern void RotateY(Matrix* m, float angle);
		[LinkName("graphene_matrix_rotate_z")]
		public static extern void RotateZ(Matrix* m, float angle);
		[LinkName("graphene_matrix_scale")]
		public static extern void Scale(Matrix* m, float factor_x, float factor_y, float factor_z);
		[LinkName("graphene_matrix_skew_xy")]
		public static extern void SkewXy(Matrix* m, float factor);
		[LinkName("graphene_matrix_skew_xz")]
		public static extern void SkewXz(Matrix* m, float factor);
		[LinkName("graphene_matrix_skew_yz")]
		public static extern void SkewYz(Matrix* m, float factor);
		[LinkName("graphene_matrix_to_2d")]
		public static extern c_int To2d(Matrix* m, double* xx, double* yx, double* xy, double* yy, double* x_0, double* y_0);
		[LinkName("graphene_matrix_to_float")]
		public static extern void ToFloat(Matrix* m, float* v);
		[LinkName("graphene_matrix_transform_bounds")]
		public static extern void TransformBounds(Matrix* m, Rect* r, Rect* res);
		[LinkName("graphene_matrix_transform_box")]
		public static extern void TransformBox(Matrix* m, Box* b, Box* res);
		[LinkName("graphene_matrix_transform_point")]
		public static extern void TransformPoint(Matrix* m, Point* p, Point* res);
		[LinkName("graphene_matrix_transform_point3d")]
		public static extern void TransformPoint3d(Matrix* m, Point3D* p, Point3D* res);
		[LinkName("graphene_matrix_transform_ray")]
		public static extern void TransformRay(Matrix* m, Ray* r, Ray* res);
		[LinkName("graphene_matrix_transform_rect")]
		public static extern void TransformRect(Matrix* m, Rect* r, Quad* res);
		[LinkName("graphene_matrix_transform_sphere")]
		public static extern void TransformSphere(Matrix* m, Sphere* s, Sphere* res);
		[LinkName("graphene_matrix_transform_vec3")]
		public static extern void TransformVec3(Matrix* m, Vec3* v, Vec3* res);
		[LinkName("graphene_matrix_transform_vec4")]
		public static extern void TransformVec4(Matrix* m, Vec4* v, Vec4* res);
		[LinkName("graphene_matrix_translate")]
		public static extern void Translate(Matrix* m, Point3D* pos);
		[LinkName("graphene_matrix_transpose")]
		public static extern void Transpose(Matrix* m, Matrix* res);
		[LinkName("graphene_matrix_unproject_point3d")]
		public static extern void UnprojectPoint3d(Matrix* projection, Matrix* modelview, Point3D* point, Point3D* res);
		[LinkName("graphene_matrix_untransform_bounds")]
		public static extern void UntransformBounds(Matrix* m, Rect* r, Rect* bounds, Rect* res);
		[LinkName("graphene_matrix_untransform_point")]
		public static extern c_int UntransformPoint(Matrix* m, Point* p, Rect* bounds, Point* res);
	}
	[CRepr]
	public struct Plane
	{
		public Vec3 normal;
		public float constant;
		[LinkName("graphene_plane_alloc")]
		public static extern Plane* Alloc();
		[LinkName("graphene_plane_distance")]
		public static extern float Distance(Plane* p, Point3D* point);
		[LinkName("graphene_plane_equal")]
		public static extern c_int Equal(Plane* a, Plane* b);
		[LinkName("graphene_plane_free")]
		public static extern void Free(Plane* p);
		[LinkName("graphene_plane_get_constant")]
		public static extern float GetConstant(Plane* p);
		[LinkName("graphene_plane_get_normal")]
		public static extern void GetNormal(Plane* p, Vec3* normal);
		[LinkName("graphene_plane_init")]
		public static extern Plane* Init(Plane* p, Vec3* normal, float constant);
		[LinkName("graphene_plane_init_from_plane")]
		public static extern Plane* InitFromPlane(Plane* p, Plane* src);
		[LinkName("graphene_plane_init_from_point")]
		public static extern Plane* InitFromPoint(Plane* p, Vec3* normal, Point3D* point);
		[LinkName("graphene_plane_init_from_points")]
		public static extern Plane* InitFromPoints(Plane* p, Point3D* a, Point3D* b, Point3D* c);
		[LinkName("graphene_plane_init_from_vec4")]
		public static extern Plane* InitFromVec4(Plane* p, Vec4* src);
		[LinkName("graphene_plane_negate")]
		public static extern void Negate(Plane* p, Plane* res);
		[LinkName("graphene_plane_normalize")]
		public static extern void Normalize(Plane* p, Plane* res);
		[LinkName("graphene_plane_transform")]
		public static extern void Transform(Plane* p, Matrix* matrix, Matrix* normal_matrix, Plane* res);
	}
	[CRepr]
	public struct Point
	{
		public float x;
		public float y;
		[LinkName("graphene_point_alloc")]
		public static extern Point* Alloc();
		[LinkName("graphene_point_distance")]
		public static extern float Distance(Point* a, Point* b, float* d_x, float* d_y);
		[LinkName("graphene_point_equal")]
		public static extern c_int Equal(Point* a, Point* b);
		[LinkName("graphene_point_free")]
		public static extern void Free(Point* p);
		[LinkName("graphene_point_init")]
		public static extern Point* Init(Point* p, float x, float y);
		[LinkName("graphene_point_init_from_point")]
		public static extern Point* InitFromPoint(Point* p, Point* src);
		[LinkName("graphene_point_init_from_vec2")]
		public static extern Point* InitFromVec2(Point* p, Vec2* src);
		[LinkName("graphene_point_interpolate")]
		public static extern void Interpolate(Point* a, Point* b, double factor, Point* res);
		[LinkName("graphene_point_near")]
		public static extern c_int Near(Point* a, Point* b, float epsilon);
		[LinkName("graphene_point_to_vec2")]
		public static extern void ToVec2(Point* p, Vec2* v);
	}
	[CRepr]
	public struct Point3D
	{
		public float x;
		public float y;
		public float z;
		[LinkName("graphene_point3d_alloc")]
		public static extern Point3D* Alloc();
		[LinkName("graphene_point3d_cross")]
		public static extern void Cross(Point3D* a, Point3D* b, Point3D* res);
		[LinkName("graphene_point3d_distance")]
		public static extern float Distance(Point3D* a, Point3D* b, Vec3* delta);
		[LinkName("graphene_point3d_dot")]
		public static extern float Dot(Point3D* a, Point3D* b);
		[LinkName("graphene_point3d_equal")]
		public static extern c_int Equal(Point3D* a, Point3D* b);
		[LinkName("graphene_point3d_free")]
		public static extern void Free(Point3D* p);
		[LinkName("graphene_point3d_init")]
		public static extern Point3D* Init(Point3D* p, float x, float y, float z);
		[LinkName("graphene_point3d_init_from_point")]
		public static extern Point3D* InitFromPoint(Point3D* p, Point3D* src);
		[LinkName("graphene_point3d_init_from_vec3")]
		public static extern Point3D* InitFromVec3(Point3D* p, Vec3* v);
		[LinkName("graphene_point3d_interpolate")]
		public static extern void Interpolate(Point3D* a, Point3D* b, double factor, Point3D* res);
		[LinkName("graphene_point3d_length")]
		public static extern float Length(Point3D* p);
		[LinkName("graphene_point3d_near")]
		public static extern c_int Near(Point3D* a, Point3D* b, float epsilon);
		[LinkName("graphene_point3d_normalize")]
		public static extern void Normalize(Point3D* p, Point3D* res);
		[LinkName("graphene_point3d_normalize_viewport")]
		public static extern void NormalizeViewport(Point3D* p, Rect* viewport, float z_near, float z_far, Point3D* res);
		[LinkName("graphene_point3d_scale")]
		public static extern void Scale(Point3D* p, float factor, Point3D* res);
		[LinkName("graphene_point3d_to_vec3")]
		public static extern void ToVec3(Point3D* p, Vec3* v);
	}
	[CRepr]
	public struct Quad
	{
		public Point points;
		[LinkName("graphene_quad_alloc")]
		public static extern Quad* Alloc();
		[LinkName("graphene_quad_bounds")]
		public static extern void Bounds(Quad* q, Rect* r);
		[LinkName("graphene_quad_contains")]
		public static extern c_int Contains(Quad* q, Point* p);
		[LinkName("graphene_quad_free")]
		public static extern void Free(Quad* q);
		[LinkName("graphene_quad_get_point")]
		public static extern Point* GetPoint(Quad* q, c_uint index_);
		[LinkName("graphene_quad_init")]
		public static extern Quad* Init(Quad* q, Point* p1, Point* p2, Point* p3, Point* p4);
		[LinkName("graphene_quad_init_from_points")]
		public static extern Quad* InitFromPoints(Quad* q, Point* points);
		[LinkName("graphene_quad_init_from_rect")]
		public static extern Quad* InitFromRect(Quad* q, Rect* r);
	}
	[CRepr]
	public struct Quaternion
	{
		public float x;
		public float y;
		public float z;
		public float w;
		[LinkName("graphene_quaternion_alloc")]
		public static extern Quaternion* Alloc();
		[LinkName("graphene_quaternion_add")]
		public static extern void Add(Quaternion* a, Quaternion* b, Quaternion* res);
		[LinkName("graphene_quaternion_dot")]
		public static extern float Dot(Quaternion* a, Quaternion* b);
		[LinkName("graphene_quaternion_equal")]
		public static extern c_int Equal(Quaternion* a, Quaternion* b);
		[LinkName("graphene_quaternion_free")]
		public static extern void Free(Quaternion* q);
		[LinkName("graphene_quaternion_init")]
		public static extern Quaternion* Init(Quaternion* q, float x, float y, float z, float w);
		[LinkName("graphene_quaternion_init_from_angle_vec3")]
		public static extern Quaternion* InitFromAngleVec3(Quaternion* q, float angle, Vec3* axis);
		[LinkName("graphene_quaternion_init_from_angles")]
		public static extern Quaternion* InitFromAngles(Quaternion* q, float deg_x, float deg_y, float deg_z);
		[LinkName("graphene_quaternion_init_from_euler")]
		public static extern Quaternion* InitFromEuler(Quaternion* q, Euler* e);
		[LinkName("graphene_quaternion_init_from_matrix")]
		public static extern Quaternion* InitFromMatrix(Quaternion* q, Matrix* m);
		[LinkName("graphene_quaternion_init_from_quaternion")]
		public static extern Quaternion* InitFromQuaternion(Quaternion* q, Quaternion* src);
		[LinkName("graphene_quaternion_init_from_radians")]
		public static extern Quaternion* InitFromRadians(Quaternion* q, float rad_x, float rad_y, float rad_z);
		[LinkName("graphene_quaternion_init_from_vec4")]
		public static extern Quaternion* InitFromVec4(Quaternion* q, Vec4* src);
		[LinkName("graphene_quaternion_init_identity")]
		public static extern Quaternion* InitIdentity(Quaternion* q);
		[LinkName("graphene_quaternion_invert")]
		public static extern void Invert(Quaternion* q, Quaternion* res);
		[LinkName("graphene_quaternion_multiply")]
		public static extern void Multiply(Quaternion* a, Quaternion* b, Quaternion* res);
		[LinkName("graphene_quaternion_normalize")]
		public static extern void Normalize(Quaternion* q, Quaternion* res);
		[LinkName("graphene_quaternion_scale")]
		public static extern void Scale(Quaternion* q, float factor, Quaternion* res);
		[LinkName("graphene_quaternion_slerp")]
		public static extern void Slerp(Quaternion* a, Quaternion* b, float factor, Quaternion* res);
		[LinkName("graphene_quaternion_to_angle_vec3")]
		public static extern void ToAngleVec3(Quaternion* q, float* angle, Vec3* axis);
		[LinkName("graphene_quaternion_to_angles")]
		public static extern void ToAngles(Quaternion* q, float* deg_x, float* deg_y, float* deg_z);
		[LinkName("graphene_quaternion_to_matrix")]
		public static extern void ToMatrix(Quaternion* q, Matrix* m);
		[LinkName("graphene_quaternion_to_radians")]
		public static extern void ToRadians(Quaternion* q, float* rad_x, float* rad_y, float* rad_z);
		[LinkName("graphene_quaternion_to_vec4")]
		public static extern void ToVec4(Quaternion* q, Vec4* res);
	}
	[CRepr]
	public struct Ray
	{
		public Vec3 origin;
		public Vec3 direction;
		[LinkName("graphene_ray_alloc")]
		public static extern Ray* Alloc();
		[LinkName("graphene_ray_equal")]
		public static extern c_int Equal(Ray* a, Ray* b);
		[LinkName("graphene_ray_free")]
		public static extern void Free(Ray* r);
		[LinkName("graphene_ray_get_closest_point_to_point")]
		public static extern void GetClosestPointToPoint(Ray* r, Point3D* p, Point3D* res);
		[LinkName("graphene_ray_get_direction")]
		public static extern void GetDirection(Ray* r, Vec3* direction);
		[LinkName("graphene_ray_get_distance_to_plane")]
		public static extern float GetDistanceToPlane(Ray* r, Plane* p);
		[LinkName("graphene_ray_get_distance_to_point")]
		public static extern float GetDistanceToPoint(Ray* r, Point3D* p);
		[LinkName("graphene_ray_get_origin")]
		public static extern void GetOrigin(Ray* r, Point3D* origin);
		[LinkName("graphene_ray_get_position_at")]
		public static extern void GetPositionAt(Ray* r, float t, Point3D* position);
		[LinkName("graphene_ray_init")]
		public static extern Ray* Init(Ray* r, Point3D* origin, Vec3* direction);
		[LinkName("graphene_ray_init_from_ray")]
		public static extern Ray* InitFromRay(Ray* r, Ray* src);
		[LinkName("graphene_ray_init_from_vec3")]
		public static extern Ray* InitFromVec3(Ray* r, Vec3* origin, Vec3* direction);
		[LinkName("graphene_ray_intersect_box")]
		public static extern RayIntersectionKind IntersectBox(Ray* r, Box* b, float* t_out);
		[LinkName("graphene_ray_intersect_sphere")]
		public static extern RayIntersectionKind IntersectSphere(Ray* r, Sphere* s, float* t_out);
		[LinkName("graphene_ray_intersect_triangle")]
		public static extern RayIntersectionKind IntersectTriangle(Ray* r, Triangle* t, float* t_out);
		[LinkName("graphene_ray_intersects_box")]
		public static extern c_int IntersectsBox(Ray* r, Box* b);
		[LinkName("graphene_ray_intersects_sphere")]
		public static extern c_int IntersectsSphere(Ray* r, Sphere* s);
		[LinkName("graphene_ray_intersects_triangle")]
		public static extern c_int IntersectsTriangle(Ray* r, Triangle* t);
	}
	[CRepr]
	public struct Rect
	{
		public Point origin;
		public Size size;
		[LinkName("graphene_rect_contains_point")]
		public static extern c_int ContainsPoint(Rect* r, Point* p);
		[LinkName("graphene_rect_contains_rect")]
		public static extern c_int ContainsRect(Rect* a, Rect* b);
		[LinkName("graphene_rect_equal")]
		public static extern c_int Equal(Rect* a, Rect* b);
		[LinkName("graphene_rect_expand")]
		public static extern void Expand(Rect* r, Point* p, Rect* res);
		[LinkName("graphene_rect_free")]
		public static extern void Free(Rect* r);
		[LinkName("graphene_rect_get_area")]
		public static extern float GetArea(Rect* r);
		[LinkName("graphene_rect_get_bottom_left")]
		public static extern void GetBottomLeft(Rect* r, Point* p);
		[LinkName("graphene_rect_get_bottom_right")]
		public static extern void GetBottomRight(Rect* r, Point* p);
		[LinkName("graphene_rect_get_center")]
		public static extern void GetCenter(Rect* r, Point* p);
		[LinkName("graphene_rect_get_height")]
		public static extern float GetHeight(Rect* r);
		[LinkName("graphene_rect_get_top_left")]
		public static extern void GetTopLeft(Rect* r, Point* p);
		[LinkName("graphene_rect_get_top_right")]
		public static extern void GetTopRight(Rect* r, Point* p);
		[LinkName("graphene_rect_get_vertices")]
		public static extern void GetVertices(Rect* r, Vec2* vertices);
		[LinkName("graphene_rect_get_width")]
		public static extern float GetWidth(Rect* r);
		[LinkName("graphene_rect_get_x")]
		public static extern float GetX(Rect* r);
		[LinkName("graphene_rect_get_y")]
		public static extern float GetY(Rect* r);
		[LinkName("graphene_rect_init")]
		public static extern Rect* Init(Rect* r, float x, float y, float width, float height);
		[LinkName("graphene_rect_init_from_rect")]
		public static extern Rect* InitFromRect(Rect* r, Rect* src);
		[LinkName("graphene_rect_inset")]
		public static extern Rect* Inset(Rect* r, float d_x, float d_y);
		[LinkName("graphene_rect_inset_r")]
		public static extern void InsetR(Rect* r, float d_x, float d_y, Rect* res);
		[LinkName("graphene_rect_interpolate")]
		public static extern void Interpolate(Rect* a, Rect* b, double factor, Rect* res);
		[LinkName("graphene_rect_intersection")]
		public static extern c_int Intersection(Rect* a, Rect* b, Rect* res);
		[LinkName("graphene_rect_normalize")]
		public static extern Rect* Normalize(Rect* r);
		[LinkName("graphene_rect_normalize_r")]
		public static extern void NormalizeR(Rect* r, Rect* res);
		[LinkName("graphene_rect_offset")]
		public static extern Rect* Offset(Rect* r, float d_x, float d_y);
		[LinkName("graphene_rect_offset_r")]
		public static extern void OffsetR(Rect* r, float d_x, float d_y, Rect* res);
		[LinkName("graphene_rect_round")]
		public static extern void Round(Rect* r, Rect* res);
		[LinkName("graphene_rect_round_extents")]
		public static extern void RoundExtents(Rect* r, Rect* res);
		[LinkName("graphene_rect_round_to_pixel")]
		public static extern Rect* RoundToPixel(Rect* r);
		[LinkName("graphene_rect_scale")]
		public static extern void Scale(Rect* r, float s_h, float s_v, Rect* res);
		[LinkName("graphene_rect_union")]
		public static extern void Union(Rect* a, Rect* b, Rect* res);
	}
	[CRepr]
	public struct Simd4F
	{
		public float x;
		public float y;
		public float z;
		public float w;
	}
	[CRepr]
	public struct Simd4X4F
	{
		public Simd4F x;
		public Simd4F y;
		public Simd4F z;
		public Simd4F w;
	}
	[CRepr]
	public struct Size
	{
		public float width;
		public float height;
		[LinkName("graphene_size_alloc")]
		public static extern Size* Alloc();
		[LinkName("graphene_size_equal")]
		public static extern c_int Equal(Size* a, Size* b);
		[LinkName("graphene_size_free")]
		public static extern void Free(Size* s);
		[LinkName("graphene_size_init")]
		public static extern Size* Init(Size* s, float width, float height);
		[LinkName("graphene_size_init_from_size")]
		public static extern Size* InitFromSize(Size* s, Size* src);
		[LinkName("graphene_size_interpolate")]
		public static extern void Interpolate(Size* a, Size* b, double factor, Size* res);
		[LinkName("graphene_size_scale")]
		public static extern void Scale(Size* s, float factor, Size* res);
	}
	[CRepr]
	public struct Sphere
	{
		public Vec3 center;
		public float radius;
		[LinkName("graphene_sphere_alloc")]
		public static extern Sphere* Alloc();
		[LinkName("graphene_sphere_contains_point")]
		public static extern c_int ContainsPoint(Sphere* s, Point3D* point);
		[LinkName("graphene_sphere_distance")]
		public static extern float Distance(Sphere* s, Point3D* point);
		[LinkName("graphene_sphere_equal")]
		public static extern c_int Equal(Sphere* a, Sphere* b);
		[LinkName("graphene_sphere_free")]
		public static extern void Free(Sphere* s);
		[LinkName("graphene_sphere_get_bounding_box")]
		public static extern void GetBoundingBox(Sphere* s, Box* box_);
		[LinkName("graphene_sphere_get_center")]
		public static extern void GetCenter(Sphere* s, Point3D* center);
		[LinkName("graphene_sphere_get_radius")]
		public static extern float GetRadius(Sphere* s);
		[LinkName("graphene_sphere_init")]
		public static extern Sphere* Init(Sphere* s, Point3D* center, float radius);
		[LinkName("graphene_sphere_init_from_points")]
		public static extern Sphere* InitFromPoints(Sphere* s, c_uint n_points, Point3D* points, Point3D* center);
		[LinkName("graphene_sphere_init_from_vectors")]
		public static extern Sphere* InitFromVectors(Sphere* s, c_uint n_vectors, Vec3* vectors, Point3D* center);
		[LinkName("graphene_sphere_is_empty")]
		public static extern c_int IsEmpty(Sphere* s);
		[LinkName("graphene_sphere_translate")]
		public static extern void Translate(Sphere* s, Point3D* point, Sphere* res);
	}
	[CRepr]
	public struct Triangle
	{
		public Vec3 a;
		public Vec3 b;
		public Vec3 c;
		[LinkName("graphene_triangle_alloc")]
		public static extern Triangle* Alloc();
		[LinkName("graphene_triangle_contains_point")]
		public static extern c_int ContainsPoint(Triangle* t, Point3D* p);
		[LinkName("graphene_triangle_equal")]
		public static extern c_int Equal(Triangle* a, Triangle* b);
		[LinkName("graphene_triangle_free")]
		public static extern void Free(Triangle* t);
		[LinkName("graphene_triangle_get_area")]
		public static extern float GetArea(Triangle* t);
		[LinkName("graphene_triangle_get_barycoords")]
		public static extern c_int GetBarycoords(Triangle* t, Point3D* p, Vec2* res);
		[LinkName("graphene_triangle_get_bounding_box")]
		public static extern void GetBoundingBox(Triangle* t, Box* res);
		[LinkName("graphene_triangle_get_midpoint")]
		public static extern void GetMidpoint(Triangle* t, Point3D* res);
		[LinkName("graphene_triangle_get_normal")]
		public static extern void GetNormal(Triangle* t, Vec3* res);
		[LinkName("graphene_triangle_get_plane")]
		public static extern void GetPlane(Triangle* t, Plane* res);
		[LinkName("graphene_triangle_get_points")]
		public static extern void GetPoints(Triangle* t, Point3D* a, Point3D* b, Point3D* c);
		[LinkName("graphene_triangle_get_uv")]
		public static extern c_int GetUv(Triangle* t, Point3D* p, Vec2* uv_a, Vec2* uv_b, Vec2* uv_c, Vec2* res);
		[LinkName("graphene_triangle_get_vertices")]
		public static extern void GetVertices(Triangle* t, Vec3* a, Vec3* b, Vec3* c);
		[LinkName("graphene_triangle_init_from_float")]
		public static extern Triangle* InitFromFloat(Triangle* t, float* a, float* b, float* c);
		[LinkName("graphene_triangle_init_from_point3d")]
		public static extern Triangle* InitFromPoint3d(Triangle* t, Point3D* a, Point3D* b, Point3D* c);
		[LinkName("graphene_triangle_init_from_vec3")]
		public static extern Triangle* InitFromVec3(Triangle* t, Vec3* a, Vec3* b, Vec3* c);
	}
	[CRepr]
	public struct Vec2
	{
		public Simd4F value;
		[LinkName("graphene_vec2_alloc")]
		public static extern Vec2* Alloc();
		[LinkName("graphene_vec2_add")]
		public static extern void Add(Vec2* a, Vec2* b, Vec2* res);
		[LinkName("graphene_vec2_divide")]
		public static extern void Divide(Vec2* a, Vec2* b, Vec2* res);
		[LinkName("graphene_vec2_dot")]
		public static extern float Dot(Vec2* a, Vec2* b);
		[LinkName("graphene_vec2_equal")]
		public static extern c_int Equal(Vec2* v1, Vec2* v2);
		[LinkName("graphene_vec2_free")]
		public static extern void Free(Vec2* v);
		[LinkName("graphene_vec2_get_x")]
		public static extern float GetX(Vec2* v);
		[LinkName("graphene_vec2_get_y")]
		public static extern float GetY(Vec2* v);
		[LinkName("graphene_vec2_init")]
		public static extern Vec2* Init(Vec2* v, float x, float y);
		[LinkName("graphene_vec2_init_from_float")]
		public static extern Vec2* InitFromFloat(Vec2* v, float* src);
		[LinkName("graphene_vec2_init_from_vec2")]
		public static extern Vec2* InitFromVec2(Vec2* v, Vec2* src);
		[LinkName("graphene_vec2_interpolate")]
		public static extern void Interpolate(Vec2* v1, Vec2* v2, double factor, Vec2* res);
		[LinkName("graphene_vec2_length")]
		public static extern float Length(Vec2* v);
		[LinkName("graphene_vec2_max")]
		public static extern void Max(Vec2* a, Vec2* b, Vec2* res);
		[LinkName("graphene_vec2_min")]
		public static extern void Min(Vec2* a, Vec2* b, Vec2* res);
		[LinkName("graphene_vec2_multiply")]
		public static extern void Multiply(Vec2* a, Vec2* b, Vec2* res);
		[LinkName("graphene_vec2_near")]
		public static extern c_int Near(Vec2* v1, Vec2* v2, float epsilon);
		[LinkName("graphene_vec2_negate")]
		public static extern void Negate(Vec2* v, Vec2* res);
		[LinkName("graphene_vec2_normalize")]
		public static extern void Normalize(Vec2* v, Vec2* res);
		[LinkName("graphene_vec2_scale")]
		public static extern void Scale(Vec2* v, float factor, Vec2* res);
		[LinkName("graphene_vec2_subtract")]
		public static extern void Subtract(Vec2* a, Vec2* b, Vec2* res);
		[LinkName("graphene_vec2_to_float")]
		public static extern void ToFloat(Vec2* v, float* dest);
	}
	[CRepr]
	public struct Vec3
	{
		public Simd4F value;
		[LinkName("graphene_vec3_alloc")]
		public static extern Vec3* Alloc();
		[LinkName("graphene_vec3_add")]
		public static extern void Add(Vec3* a, Vec3* b, Vec3* res);
		[LinkName("graphene_vec3_cross")]
		public static extern void Cross(Vec3* a, Vec3* b, Vec3* res);
		[LinkName("graphene_vec3_divide")]
		public static extern void Divide(Vec3* a, Vec3* b, Vec3* res);
		[LinkName("graphene_vec3_dot")]
		public static extern float Dot(Vec3* a, Vec3* b);
		[LinkName("graphene_vec3_equal")]
		public static extern c_int Equal(Vec3* v1, Vec3* v2);
		[LinkName("graphene_vec3_free")]
		public static extern void Free(Vec3* v);
		[LinkName("graphene_vec3_get_x")]
		public static extern float GetX(Vec3* v);
		[LinkName("graphene_vec3_get_xy")]
		public static extern void GetXy(Vec3* v, Vec2* res);
		[LinkName("graphene_vec3_get_xy0")]
		public static extern void GetXy0(Vec3* v, Vec3* res);
		[LinkName("graphene_vec3_get_xyz0")]
		public static extern void GetXyz0(Vec3* v, Vec4* res);
		[LinkName("graphene_vec3_get_xyz1")]
		public static extern void GetXyz1(Vec3* v, Vec4* res);
		[LinkName("graphene_vec3_get_xyzw")]
		public static extern void GetXyzw(Vec3* v, float w, Vec4* res);
		[LinkName("graphene_vec3_get_y")]
		public static extern float GetY(Vec3* v);
		[LinkName("graphene_vec3_get_z")]
		public static extern float GetZ(Vec3* v);
		[LinkName("graphene_vec3_init")]
		public static extern Vec3* Init(Vec3* v, float x, float y, float z);
		[LinkName("graphene_vec3_init_from_float")]
		public static extern Vec3* InitFromFloat(Vec3* v, float* src);
		[LinkName("graphene_vec3_init_from_vec3")]
		public static extern Vec3* InitFromVec3(Vec3* v, Vec3* src);
		[LinkName("graphene_vec3_interpolate")]
		public static extern void Interpolate(Vec3* v1, Vec3* v2, double factor, Vec3* res);
		[LinkName("graphene_vec3_length")]
		public static extern float Length(Vec3* v);
		[LinkName("graphene_vec3_max")]
		public static extern void Max(Vec3* a, Vec3* b, Vec3* res);
		[LinkName("graphene_vec3_min")]
		public static extern void Min(Vec3* a, Vec3* b, Vec3* res);
		[LinkName("graphene_vec3_multiply")]
		public static extern void Multiply(Vec3* a, Vec3* b, Vec3* res);
		[LinkName("graphene_vec3_near")]
		public static extern c_int Near(Vec3* v1, Vec3* v2, float epsilon);
		[LinkName("graphene_vec3_negate")]
		public static extern void Negate(Vec3* v, Vec3* res);
		[LinkName("graphene_vec3_normalize")]
		public static extern void Normalize(Vec3* v, Vec3* res);
		[LinkName("graphene_vec3_scale")]
		public static extern void Scale(Vec3* v, float factor, Vec3* res);
		[LinkName("graphene_vec3_subtract")]
		public static extern void Subtract(Vec3* a, Vec3* b, Vec3* res);
		[LinkName("graphene_vec3_to_float")]
		public static extern void ToFloat(Vec3* v, float* dest);
	}
	[CRepr]
	public struct Vec4
	{
		public Simd4F value;
		[LinkName("graphene_vec4_alloc")]
		public static extern Vec4* Alloc();
		[LinkName("graphene_vec4_add")]
		public static extern void Add(Vec4* a, Vec4* b, Vec4* res);
		[LinkName("graphene_vec4_divide")]
		public static extern void Divide(Vec4* a, Vec4* b, Vec4* res);
		[LinkName("graphene_vec4_dot")]
		public static extern float Dot(Vec4* a, Vec4* b);
		[LinkName("graphene_vec4_equal")]
		public static extern c_int Equal(Vec4* v1, Vec4* v2);
		[LinkName("graphene_vec4_free")]
		public static extern void Free(Vec4* v);
		[LinkName("graphene_vec4_get_w")]
		public static extern float GetW(Vec4* v);
		[LinkName("graphene_vec4_get_x")]
		public static extern float GetX(Vec4* v);
		[LinkName("graphene_vec4_get_xy")]
		public static extern void GetXy(Vec4* v, Vec2* res);
		[LinkName("graphene_vec4_get_xyz")]
		public static extern void GetXyz(Vec4* v, Vec3* res);
		[LinkName("graphene_vec4_get_y")]
		public static extern float GetY(Vec4* v);
		[LinkName("graphene_vec4_get_z")]
		public static extern float GetZ(Vec4* v);
		[LinkName("graphene_vec4_init")]
		public static extern Vec4* Init(Vec4* v, float x, float y, float z, float w);
		[LinkName("graphene_vec4_init_from_float")]
		public static extern Vec4* InitFromFloat(Vec4* v, float* src);
		[LinkName("graphene_vec4_init_from_vec2")]
		public static extern Vec4* InitFromVec2(Vec4* v, Vec2* src, float z, float w);
		[LinkName("graphene_vec4_init_from_vec3")]
		public static extern Vec4* InitFromVec3(Vec4* v, Vec3* src, float w);
		[LinkName("graphene_vec4_init_from_vec4")]
		public static extern Vec4* InitFromVec4(Vec4* v, Vec4* src);
		[LinkName("graphene_vec4_interpolate")]
		public static extern void Interpolate(Vec4* v1, Vec4* v2, double factor, Vec4* res);
		[LinkName("graphene_vec4_length")]
		public static extern float Length(Vec4* v);
		[LinkName("graphene_vec4_max")]
		public static extern void Max(Vec4* a, Vec4* b, Vec4* res);
		[LinkName("graphene_vec4_min")]
		public static extern void Min(Vec4* a, Vec4* b, Vec4* res);
		[LinkName("graphene_vec4_multiply")]
		public static extern void Multiply(Vec4* a, Vec4* b, Vec4* res);
		[LinkName("graphene_vec4_near")]
		public static extern c_int Near(Vec4* v1, Vec4* v2, float epsilon);
		[LinkName("graphene_vec4_negate")]
		public static extern void Negate(Vec4* v, Vec4* res);
		[LinkName("graphene_vec4_normalize")]
		public static extern void Normalize(Vec4* v, Vec4* res);
		[LinkName("graphene_vec4_scale")]
		public static extern void Scale(Vec4* v, float factor, Vec4* res);
		[LinkName("graphene_vec4_subtract")]
		public static extern void Subtract(Vec4* a, Vec4* b, Vec4* res);
		[LinkName("graphene_vec4_to_float")]
		public static extern void ToFloat(Vec4* v, float* dest);
	}
	[CRepr, AllowDuplicates]
	public enum EulerOrder
	{
		Default = -1,
		Xyz = 0,
		Yzx = 1,
		Zxy = 2,
		Xzy = 3,
		Yxz = 4,
		Zyx = 5,
		Sxyz = 6,
		Sxyx = 7,
		Sxzy = 8,
		Sxzx = 9,
		Syzx = 10,
		Syzy = 11,
		Syxz = 12,
		Syxy = 13,
		Szxy = 14,
		Szxz = 15,
		Szyx = 16,
		Szyz = 17,
		Rzyx = 18,
		Rxyx = 19,
		Ryzx = 20,
		Rxzx = 21,
		Rxzy = 22,
		Ryzy = 23,
		Rzxy = 24,
		Ryxy = 25,
		Ryxz = 26,
		Rzxz = 27,
		Rxyz = 28,
		Rzyz = 29
	}
	[CRepr, AllowDuplicates]
	public enum RayIntersectionKind
	{
		None = 0,
		Enter = 1,
		Leave = 2
	}
}
