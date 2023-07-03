namespace Gtk;

using System;
using System.Interop;

class GLib
{
	public typealias DateDay = c_uchar;
	public typealias DateYear = c_ushort;
	public typealias MainContextPusher = void;
	public typealias MutexLocker = void;
	public typealias Pid = c_int;
	public typealias Quark = c_uint;
	public typealias RWLockReaderLocker = void;
	public typealias RWLockWriterLocker = void;
	public typealias RecMutexLocker = void;
	public typealias RefString = c_char;
	public typealias Strv = char8**;
	public typealias Time = c_int;
	public typealias TimeSpan = c_longlong;
	public typealias Type = c_ulong;

	const c_int ANALYZER_ANALYZING = (.)1;
	const c_int ASCII_DTOSTR_BUF_SIZE = (.)39;
	const c_int BIG_ENDIAN = (.)4321;
	const char8* CSET_A_2_Z = (.)"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	const char8* CSET_DIGITS = (.)"0123456789";
	const char8* CSET_a_2_z = (.)"abcdefghijklmnopqrstuvwxyz";
	const c_int C_STD_VERSION = (.)199000;
	const c_int DATALIST_FLAGS_MASK = (.)3;
	const c_int DATE_BAD_DAY = (.)0;
	const c_int DATE_BAD_JULIAN = (.)0;
	const c_int DATE_BAD_YEAR = (.)0;
	const c_int DIR_SEPARATOR = (.)47;
	const char8* DIR_SEPARATOR_S = (.)"/";
	const double E = (.)2.718282;
	const char8* GINT16_FORMAT = (.)"hi";
	const char8* GINT16_MODIFIER = (.)"h";
	const char8* GINT32_FORMAT = (.)"i";
	const char8* GINT32_MODIFIER = (.)"";
	const char8* GINT64_FORMAT = (.)"li";
	const char8* GINT64_MODIFIER = (.)"l";
	const char8* GINTPTR_FORMAT = (.)"li";
	const char8* GINTPTR_MODIFIER = (.)"l";
	const char8* GNUC_FUNCTION = (.)"";
	const char8* GNUC_PRETTY_FUNCTION = (.)"";
	const char8* GSIZE_FORMAT = (.)"lu";
	const char8* GSIZE_MODIFIER = (.)"l";
	const char8* GSSIZE_FORMAT = (.)"li";
	const char8* GSSIZE_MODIFIER = (.)"l";
	const char8* GUINT16_FORMAT = (.)"hu";
	const char8* GUINT32_FORMAT = (.)"u";
	const char8* GUINT64_FORMAT = (.)"lu";
	const char8* GUINTPTR_FORMAT = (.)"lu";
	const c_int HAVE_GINT64 = (.)1;
	const c_int HAVE_GNUC_VARARGS = (.)1;
	const c_int HAVE_GNUC_VISIBILITY = (.)1;
	const c_int HAVE_GROWING_STACK = (.)0;
	const c_int HAVE_ISO_VARARGS = (.)1;
	const c_int HOOK_FLAG_USER_SHIFT = (.)4;
	const c_int IEEE754_DOUBLE_BIAS = (.)1023;
	const c_int IEEE754_FLOAT_BIAS = (.)127;
	const char8* KEY_FILE_DESKTOP_GROUP = (.)"Desktop Entry";
	const char8* KEY_FILE_DESKTOP_KEY_ACTIONS = (.)"Actions";
	const char8* KEY_FILE_DESKTOP_KEY_CATEGORIES = (.)"Categories";
	const char8* KEY_FILE_DESKTOP_KEY_COMMENT = (.)"Comment";
	const char8* KEY_FILE_DESKTOP_KEY_DBUS_ACTIVATABLE = (.)"DBusActivatable";
	const char8* KEY_FILE_DESKTOP_KEY_EXEC = (.)"Exec";
	const char8* KEY_FILE_DESKTOP_KEY_GENERIC_NAME = (.)"GenericName";
	const char8* KEY_FILE_DESKTOP_KEY_HIDDEN = (.)"Hidden";
	const char8* KEY_FILE_DESKTOP_KEY_ICON = (.)"Icon";
	const char8* KEY_FILE_DESKTOP_KEY_MIME_TYPE = (.)"MimeType";
	const char8* KEY_FILE_DESKTOP_KEY_NAME = (.)"Name";
	const char8* KEY_FILE_DESKTOP_KEY_NOT_SHOW_IN = (.)"NotShowIn";
	const char8* KEY_FILE_DESKTOP_KEY_NO_DISPLAY = (.)"NoDisplay";
	const char8* KEY_FILE_DESKTOP_KEY_ONLY_SHOW_IN = (.)"OnlyShowIn";
	const char8* KEY_FILE_DESKTOP_KEY_PATH = (.)"Path";
	const char8* KEY_FILE_DESKTOP_KEY_STARTUP_NOTIFY = (.)"StartupNotify";
	const char8* KEY_FILE_DESKTOP_KEY_STARTUP_WM_CLASS = (.)"StartupWMClass";
	const char8* KEY_FILE_DESKTOP_KEY_TERMINAL = (.)"Terminal";
	const char8* KEY_FILE_DESKTOP_KEY_TRY_EXEC = (.)"TryExec";
	const char8* KEY_FILE_DESKTOP_KEY_TYPE = (.)"Type";
	const char8* KEY_FILE_DESKTOP_KEY_URL = (.)"URL";
	const char8* KEY_FILE_DESKTOP_KEY_VERSION = (.)"Version";
	const char8* KEY_FILE_DESKTOP_TYPE_APPLICATION = (.)"Application";
	const char8* KEY_FILE_DESKTOP_TYPE_DIRECTORY = (.)"Directory";
	const char8* KEY_FILE_DESKTOP_TYPE_LINK = (.)"Link";
	const c_int LITTLE_ENDIAN = (.)1234;
	const double LN10 = (.)2.302585;
	const double LN2 = (.)0.693147;
	const double LOG_2_BASE_10 = (.)0.301030;
	const c_char LOG_DOMAIN = (.)0;
	const c_int LOG_FATAL_MASK = (.)5;
	const c_int LOG_LEVEL_USER_SHIFT = (.)8;
	const c_int MAJOR_VERSION = (.)2;
	const c_short MAXINT16 = (.)32767;
	const c_int MAXINT32 = (.)2147483647;
	const c_longlong MAXINT64 = (.)9223372036854775807;
	const c_char MAXINT8 = (.)127;
	const c_ushort MAXUINT16 = (.)65535;
	const c_uint MAXUINT32 = (.)4294967295;
	const c_ulonglong MAXUINT64 = (.)18446744073709551615;
	const c_uchar MAXUINT8 = (.)255;
	const c_int MICRO_VERSION = (.)0;
	const c_short MININT16 = (.)-32768;
	const c_int MININT32 = (.)-2147483648;
	const c_longlong MININT64 = (.)-9223372036854775808;
	const c_char MININT8 = (.)-128;
	const c_int MINOR_VERSION = (.)77;
	const char8* MODULE_SUFFIX = (.)"so";
	const char8* OPTION_REMAINING = (.)"";
	const c_int PDP_ENDIAN = (.)3412;
	const double PI = (.)3.141593;
	const char8* PID_FORMAT = (.)"i";
	const double PI_2 = (.)1.570796;
	const double PI_4 = (.)0.785398;
	const char8* POLLFD_FORMAT = (.)"%d";
	const c_int PRIORITY_DEFAULT = (.)0;
	const c_int PRIORITY_DEFAULT_IDLE = (.)200;
	const c_int PRIORITY_HIGH = (.)-100;
	const c_int PRIORITY_HIGH_IDLE = (.)100;
	const c_int PRIORITY_LOW = (.)300;
	const c_int SEARCHPATH_SEPARATOR = (.)58;
	const char8* SEARCHPATH_SEPARATOR_S = (.)":";
	const c_int SIZEOF_LONG = (.)8;
	const c_int SIZEOF_SIZE_T = (.)8;
	const c_int SIZEOF_SSIZE_T = (.)8;
	const c_int SIZEOF_VOID_P = (.)8;
	const c_int SOURCE_CONTINUE = (.)1;
	const c_int SOURCE_REMOVE = (.)0;
	const double SQRT2 = (.)1.414214;
	const char8* STR_DELIMITERS = (.)"_-|&gt; &lt;.";
	const c_int SYSDEF_AF_INET = (.)2;
	const c_int SYSDEF_AF_INET6 = (.)10;
	const c_int SYSDEF_AF_UNIX = (.)1;
	const c_int SYSDEF_MSG_DONTROUTE = (.)4;
	const c_int SYSDEF_MSG_OOB = (.)1;
	const c_int SYSDEF_MSG_PEEK = (.)2;
	const char8* TEST_OPTION_ISOLATE_DIRS = (.)"isolate_dirs";
	const c_longlong TIME_SPAN_DAY = (.)86400000000;
	const c_longlong TIME_SPAN_HOUR = (.)3600000000;
	const c_longlong TIME_SPAN_MILLISECOND = (.)1000;
	const c_longlong TIME_SPAN_MINUTE = (.)60000000;
	const c_longlong TIME_SPAN_SECOND = (.)1000000;
	const c_int UNICHAR_MAX_DECOMPOSITION_LENGTH = (.)18;
	const char8* URI_RESERVED_CHARS_GENERIC_DELIMITERS = (.)":/?#[]@";
	const char8* URI_RESERVED_CHARS_SUBCOMPONENT_DELIMITERS = (.)"!$&amp;'()*+,;=";
	const c_int USEC_PER_SEC = (.)1000000;
	const c_int VA_COPY_AS_ARRAY = (.)1;
	const c_int VERSION_MIN_REQUIRED = (.)2;
	const c_int WIN32_MSG_HANDLE = (.)19981206;
	const c_int macro__has_attribute___noreturn__ = (.)0;
		[LinkName("g_access")]
		public static extern c_int Access(char8* filename, c_int mode);
		[LinkName("g_aligned_alloc")]
		public static extern void* AlignedAlloc(c_ulong n_blocks, c_ulong n_block_bytes, c_ulong alignment);
		[LinkName("g_aligned_alloc0")]
		public static extern void* AlignedAlloc0(c_ulong n_blocks, c_ulong n_block_bytes, c_ulong alignment);
		[LinkName("g_aligned_free")]
		public static extern void AlignedFree(void* mem);
		[LinkName("g_aligned_free_sized")]
		public static extern void AlignedFreeSized(void* mem, c_ulong alignment, c_ulong size);
		[LinkName("g_ascii_digit_value")]
		public static extern c_int AsciiDigitValue(c_char c);
		[LinkName("g_ascii_dtostr")]
		public static extern char8* AsciiDtostr(char8* buffer, c_int buf_len, double d);
		[LinkName("g_ascii_formatd")]
		public static extern char8* AsciiFormatd(char8* buffer, c_int buf_len, char8* format, double d);
		[LinkName("g_ascii_strcasecmp")]
		public static extern c_int AsciiStrcasecmp(char8* s1, char8* s2);
		[LinkName("g_ascii_strdown")]
		public static extern char8* AsciiStrdown(char8* str, c_long len);
		[LinkName("g_ascii_string_to_signed")]
		public static extern c_int AsciiStringToSigned(char8* str, c_uint base_, c_longlong min, c_longlong max, c_longlong* out_num);
		[LinkName("g_ascii_string_to_unsigned")]
		public static extern c_int AsciiStringToUnsigned(char8* str, c_uint base_, c_ulonglong min, c_ulonglong max, c_ulonglong* out_num);
		[LinkName("g_ascii_strncasecmp")]
		public static extern c_int AsciiStrncasecmp(char8* s1, char8* s2, c_ulong n);
		[LinkName("g_ascii_strtod")]
		public static extern double AsciiStrtod(char8* nptr, char8** endptr);
		[LinkName("g_ascii_strtoll")]
		public static extern c_longlong AsciiStrtoll(char8* nptr, char8** endptr, c_uint base_);
		[LinkName("g_ascii_strtoull")]
		public static extern c_ulonglong AsciiStrtoull(char8* nptr, char8** endptr, c_uint base_);
		[LinkName("g_ascii_strup")]
		public static extern char8* AsciiStrup(char8* str, c_long len);
		[LinkName("g_ascii_tolower")]
		public static extern c_char AsciiTolower(c_char c);
		[LinkName("g_ascii_toupper")]
		public static extern c_char AsciiToupper(c_char c);
		[LinkName("g_ascii_xdigit_value")]
		public static extern c_int AsciiXdigitValue(c_char c);
		[LinkName("g_assert_warning")]
		public static extern void AssertWarning(char8* log_domain, char8* file, c_int line, char8* pretty_function, char8* expression);
		[LinkName("g_assertion_message")]
		public static extern void AssertionMessage(char8* domain, char8* file, c_int line, char8* func, char8* message);
		[LinkName("g_assertion_message_cmpstr")]
		public static extern void AssertionMessageCmpstr(char8* domain, char8* file, c_int line, char8* func, char8* expr, char8* arg1, char8* cmp, char8* arg2);
		[LinkName("g_assertion_message_cmpstrv")]
		public static extern void AssertionMessageCmpstrv(char8* domain, char8* file, c_int line, char8* func, char8* expr, char8** arg1, char8** arg2, c_ulong first_wrong_idx);
		[LinkName("g_assertion_message_error")]
		public static extern void AssertionMessageError(char8* domain, char8* file, c_int line, char8* func, char8* expr, Error* error, Quark error_domain, c_int error_code);
		[LinkName("g_atexit")]
		public static extern void Atexit(VoidFunc func);
		[LinkName("g_atomic_int_add")]
		public static extern c_int AtomicIntAdd(c_int* atomic, c_int val);
		[LinkName("g_atomic_int_and")]
		public static extern c_uint AtomicIntAnd(c_uint* atomic, c_uint val);
		[LinkName("g_atomic_int_compare_and_exchange")]
		public static extern c_int AtomicIntCompareAndExchange(c_int* atomic, c_int oldval, c_int newval);
		[LinkName("g_atomic_int_compare_and_exchange_full")]
		public static extern c_int AtomicIntCompareAndExchangeFull(c_int* atomic, c_int oldval, c_int newval, c_int* preval);
		[LinkName("g_atomic_int_dec_and_test")]
		public static extern c_int AtomicIntDecAndTest(c_int* atomic);
		[LinkName("g_atomic_int_exchange")]
		public static extern c_int AtomicIntExchange(c_int* atomic, c_int newval);
		[LinkName("g_atomic_int_exchange_and_add")]
		public static extern c_int AtomicIntExchangeAndAdd(c_int* atomic, c_int val);
		[LinkName("g_atomic_int_get")]
		public static extern c_int AtomicIntGet(c_int* atomic);
		[LinkName("g_atomic_int_inc")]
		public static extern void AtomicIntInc(c_int* atomic);
		[LinkName("g_atomic_int_or")]
		public static extern c_uint AtomicIntOr(c_uint* atomic, c_uint val);
		[LinkName("g_atomic_int_set")]
		public static extern void AtomicIntSet(c_int* atomic, c_int newval);
		[LinkName("g_atomic_int_xor")]
		public static extern c_uint AtomicIntXor(c_uint* atomic, c_uint val);
		[LinkName("g_atomic_pointer_add")]
		public static extern c_long AtomicPointerAdd(void** atomic, c_long val);
		[LinkName("g_atomic_pointer_and")]
		public static extern c_ulong AtomicPointerAnd(void** atomic, c_ulong val);
		[LinkName("g_atomic_pointer_compare_and_exchange")]
		public static extern c_int AtomicPointerCompareAndExchange(void** atomic, void* oldval, void* newval);
		[LinkName("g_atomic_pointer_compare_and_exchange_full")]
		public static extern c_int AtomicPointerCompareAndExchangeFull(void** atomic, void* oldval, void* newval, void** preval);
		[LinkName("g_atomic_pointer_exchange")]
		public static extern void* AtomicPointerExchange(void** atomic, void* newval);
		[LinkName("g_atomic_pointer_get")]
		public static extern void* AtomicPointerGet(void** atomic);
		[LinkName("g_atomic_pointer_or")]
		public static extern c_ulong AtomicPointerOr(void** atomic, c_ulong val);
		[LinkName("g_atomic_pointer_set")]
		public static extern void AtomicPointerSet(void** atomic, void* newval);
		[LinkName("g_atomic_pointer_xor")]
		public static extern c_ulong AtomicPointerXor(void** atomic, c_ulong val);
		[LinkName("g_atomic_rc_box_acquire")]
		public static extern void* AtomicRcBoxAcquire(void* mem_block);
		[LinkName("g_atomic_rc_box_alloc")]
		public static extern void* AtomicRcBoxAlloc(c_ulong block_size);
		[LinkName("g_atomic_rc_box_alloc0")]
		public static extern void* AtomicRcBoxAlloc0(c_ulong block_size);
		[LinkName("g_atomic_rc_box_dup")]
		public static extern void* AtomicRcBoxDup(c_ulong block_size, void* mem_block);
		[LinkName("g_atomic_rc_box_get_size")]
		public static extern c_ulong AtomicRcBoxGetSize(void* mem_block);
		[LinkName("g_atomic_rc_box_release")]
		public static extern void AtomicRcBoxRelease(void* mem_block);
		[LinkName("g_atomic_rc_box_release_full")]
		public static extern void AtomicRcBoxReleaseFull(void* mem_block, DestroyNotify clear_func);
		[LinkName("g_atomic_ref_count_compare")]
		public static extern c_int AtomicRefCountCompare(c_int* arc, c_int val);
		[LinkName("g_atomic_ref_count_dec")]
		public static extern c_int AtomicRefCountDec(c_int* arc);
		[LinkName("g_atomic_ref_count_inc")]
		public static extern void AtomicRefCountInc(c_int* arc);
		[LinkName("g_atomic_ref_count_init")]
		public static extern void AtomicRefCountInit(c_int* arc);
		[LinkName("g_base64_decode")]
		public static extern c_uchar* Base64Decode(char8* text, c_ulong* out_len);
		[LinkName("g_base64_decode_inplace")]
		public static extern c_uchar* Base64DecodeInplace(c_uchar* text, c_ulong* out_len);
		[LinkName("g_base64_encode")]
		public static extern char8* Base64Encode(c_uchar* data, c_ulong len);
		[LinkName("g_base64_encode_close")]
		public static extern c_ulong Base64EncodeClose(c_int break_lines, c_uchar* out_, c_int* state, c_int* save);
		[LinkName("g_base64_encode_step")]
		public static extern c_ulong Base64EncodeStep(c_uchar* in_, c_ulong len, c_int break_lines, c_uchar* out_, c_int* state, c_int* save);
		[LinkName("g_basename")]
		public static extern char8* Basename(char8* file_name);
		[LinkName("g_bit_lock")]
		public static extern void BitLock(c_int* address, c_int lock_bit);
		[LinkName("g_bit_nth_lsf")]
		public static extern c_int BitNthLsf(c_ulong mask, c_int nth_bit);
		[LinkName("g_bit_nth_msf")]
		public static extern c_int BitNthMsf(c_ulong mask, c_int nth_bit);
		[LinkName("g_bit_storage")]
		public static extern c_uint BitStorage(c_ulong number);
		[LinkName("g_bit_trylock")]
		public static extern c_int BitTrylock(c_int* address, c_int lock_bit);
		[LinkName("g_bit_unlock")]
		public static extern void BitUnlock(c_int* address, c_int lock_bit);
		[LinkName("g_bookmark_file_error_quark")]
		public static extern Quark BookmarkFileErrorQuark();
		[LinkName("g_build_filenamev")]
		public static extern char8* BuildFilenamev(char8** args);
		[LinkName("g_build_pathv")]
		public static extern char8* BuildPathv(char8* separator, char8** args);
		[LinkName("g_byte_array_free")]
		public static extern c_uchar* ByteArrayFree(c_uchar* array, c_int free_segment);
		[LinkName("g_byte_array_free_to_bytes")]
		public static extern Bytes* ByteArrayFreeToBytes(c_uchar* array);
		[LinkName("g_byte_array_new")]
		public static extern c_uchar* ByteArrayNew();
		[LinkName("g_byte_array_new_take")]
		public static extern c_uchar* ByteArrayNewTake(c_uchar* data, c_ulong len);
		[LinkName("g_byte_array_steal")]
		public static extern c_uchar* ByteArraySteal(c_uchar* array, c_ulong* len);
		[LinkName("g_byte_array_unref")]
		public static extern void ByteArrayUnref(c_uchar* array);
		[LinkName("g_canonicalize_filename")]
		public static extern char8* CanonicalizeFilename(char8* filename, char8* relative_to);
		[LinkName("g_chdir")]
		public static extern c_int Chdir(char8* path);
		[LinkName("glib_check_version")]
		public static extern char8* CheckVersion(c_uint required_major, c_uint required_minor, c_uint required_micro);
		[LinkName("g_checksum_type_get_length")]
		public static extern c_long ChecksumTypeGetLength(ChecksumType checksum_type);
		[LinkName("g_child_watch_add_full")]
		public static extern c_uint ChildWatchAddFull(c_int priority, Pid pid, ChildWatchFunc function_, void* data, DestroyNotify notify);
		[LinkName("g_child_watch_source_new")]
		public static extern Source* ChildWatchSourceNew(Pid pid);
		[LinkName("g_clear_error")]
		public static extern void ClearError();
		[LinkName("g_close")]
		public static extern c_int Close(c_int fd);
		[LinkName("g_compute_checksum_for_bytes")]
		public static extern char8* ComputeChecksumForBytes(ChecksumType checksum_type, Bytes* data);
		[LinkName("g_compute_checksum_for_data")]
		public static extern char8* ComputeChecksumForData(ChecksumType checksum_type, c_uchar* data, c_ulong length);
		[LinkName("g_compute_checksum_for_string")]
		public static extern char8* ComputeChecksumForString(ChecksumType checksum_type, char8* str, c_long length);
		[LinkName("g_compute_hmac_for_bytes")]
		public static extern char8* ComputeHmacForBytes(ChecksumType digest_type, Bytes* key, Bytes* data);
		[LinkName("g_compute_hmac_for_data")]
		public static extern char8* ComputeHmacForData(ChecksumType digest_type, c_uchar* key, c_ulong key_len, c_uchar* data, c_ulong length);
		[LinkName("g_compute_hmac_for_string")]
		public static extern char8* ComputeHmacForString(ChecksumType digest_type, c_uchar* key, c_ulong key_len, char8* str, c_long length);
		[LinkName("g_convert")]
		public static extern c_uchar* Convert(c_uchar* str, c_long len, char8* to_codeset, char8* from_codeset, c_ulong* bytes_read, c_ulong* bytes_written);
		[LinkName("g_convert_error_quark")]
		public static extern Quark ConvertErrorQuark();
		[LinkName("g_convert_with_fallback")]
		public static extern c_uchar* ConvertWithFallback(c_uchar* str, c_long len, char8* to_codeset, char8* from_codeset, char8* fallback, c_ulong* bytes_read, c_ulong* bytes_written);
		[LinkName("g_datalist_foreach")]
		public static extern void DatalistForeach(Data** datalist, DataForeachFunc func, void* user_data);
		[LinkName("g_datalist_get_data")]
		public static extern void* DatalistGetData(Data** datalist, char8* key);
		[LinkName("g_datalist_get_flags")]
		public static extern c_uint DatalistGetFlags(Data** datalist);
		[LinkName("g_datalist_id_get_data")]
		public static extern void* DatalistIdGetData(Data** datalist, Quark key_id);
		[LinkName("g_datalist_id_remove_multiple")]
		public static extern void DatalistIdRemoveMultiple(Data** datalist, Quark* keys, c_ulong n_keys);
		[LinkName("g_datalist_set_flags")]
		public static extern void DatalistSetFlags(Data** datalist, c_uint flags);
		[LinkName("g_datalist_unset_flags")]
		public static extern void DatalistUnsetFlags(Data** datalist, c_uint flags);
		[LinkName("g_dataset_destroy")]
		public static extern void DatasetDestroy(void* dataset_location);
		[LinkName("g_dataset_foreach")]
		public static extern void DatasetForeach(void* dataset_location, DataForeachFunc func, void* user_data);
		[LinkName("g_dataset_id_get_data")]
		public static extern void* DatasetIdGetData(void* dataset_location, Quark key_id);
		[LinkName("g_date_get_days_in_month")]
		public static extern c_uchar DateGetDaysInMonth(DateMonth month, DateYear year);
		[LinkName("g_date_get_monday_weeks_in_year")]
		public static extern c_uchar DateGetMondayWeeksInYear(DateYear year);
		[LinkName("g_date_get_sunday_weeks_in_year")]
		public static extern c_uchar DateGetSundayWeeksInYear(DateYear year);
		[LinkName("g_date_is_leap_year")]
		public static extern c_int DateIsLeapYear(DateYear year);
		[LinkName("g_date_strftime")]
		public static extern c_ulong DateStrftime(char8* s, c_ulong slen, char8* format, Date* date);
		[LinkName("g_date_valid_day")]
		public static extern c_int DateValidDay(DateDay day);
		[LinkName("g_date_valid_dmy")]
		public static extern c_int DateValidDmy(DateDay day, DateMonth month, DateYear year);
		[LinkName("g_date_valid_julian")]
		public static extern c_int DateValidJulian(c_uint julian_date);
		[LinkName("g_date_valid_month")]
		public static extern c_int DateValidMonth(DateMonth month);
		[LinkName("g_date_valid_weekday")]
		public static extern c_int DateValidWeekday(DateWeekday weekday);
		[LinkName("g_date_valid_year")]
		public static extern c_int DateValidYear(DateYear year);
		[LinkName("g_dcgettext")]
		public static extern char8* Dcgettext(char8* domain, char8* msgid, c_int category);
		[LinkName("g_dgettext")]
		public static extern char8* Dgettext(char8* domain, char8* msgid);
		[LinkName("g_dir_make_tmp")]
		public static extern char8* DirMakeTmp(char8* tmpl);
		[LinkName("g_direct_equal")]
		public static extern c_int DirectEqual(void* v1, void* v2);
		[LinkName("g_direct_hash")]
		public static extern c_uint DirectHash(void* v);
		[LinkName("g_dngettext")]
		public static extern char8* Dngettext(char8* domain, char8* msgid, char8* msgid_plural, c_ulong n);
		[LinkName("g_double_equal")]
		public static extern c_int DoubleEqual(void* v1, void* v2);
		[LinkName("g_double_hash")]
		public static extern c_uint DoubleHash(void* v);
		[LinkName("g_dpgettext")]
		public static extern char8* Dpgettext(char8* domain, char8* msgctxtid, c_ulong msgidoffset);
		[LinkName("g_dpgettext2")]
		public static extern char8* Dpgettext2(char8* domain, char8* context, char8* msgid);
		[LinkName("g_environ_getenv")]
		public static extern char8* EnvironGetenv(char8** envp, char8* variable);
		[LinkName("g_environ_setenv")]
		public static extern char8** EnvironSetenv(char8** envp, char8* variable, char8* value, c_int overwrite);
		[LinkName("g_environ_unsetenv")]
		public static extern char8** EnvironUnsetenv(char8** envp, char8* variable);
		[LinkName("g_file_error_from_errno")]
		public static extern FileError FileErrorFromErrno(c_int err_no);
		[LinkName("g_file_error_quark")]
		public static extern Quark FileErrorQuark();
		[LinkName("g_file_get_contents")]
		public static extern c_int FileGetContents(char8* filename, c_uchar** contents, c_ulong* length);
		[LinkName("g_file_open_tmp")]
		public static extern c_int FileOpenTmp(char8* tmpl, char8** name_used);
		[LinkName("g_file_read_link")]
		public static extern char8* FileReadLink(char8* filename);
		[LinkName("g_file_set_contents")]
		public static extern c_int FileSetContents(char8* filename, c_uchar* contents, c_long length);
		[LinkName("g_file_set_contents_full")]
		public static extern c_int FileSetContentsFull(char8* filename, c_uchar* contents, c_long length, FileSetContentsFlags flags, c_int mode);
		[LinkName("g_file_test")]
		public static extern c_int FileTest(char8* filename, FileTest test);
		[LinkName("g_filename_display_basename")]
		public static extern char8* FilenameDisplayBasename(char8* filename);
		[LinkName("g_filename_display_name")]
		public static extern char8* FilenameDisplayName(char8* filename);
		[LinkName("g_filename_from_uri")]
		public static extern char8* FilenameFromUri(char8* uri, char8** hostname);
		[LinkName("g_filename_from_utf8")]
		public static extern char8* FilenameFromUtf8(char8* utf8string, c_long len, c_ulong* bytes_read, c_ulong* bytes_written);
		[LinkName("g_filename_to_uri")]
		public static extern char8* FilenameToUri(char8* filename, char8* hostname);
		[LinkName("g_filename_to_utf8")]
		public static extern char8* FilenameToUtf8(char8* opsysstring, c_long len, c_ulong* bytes_read, c_ulong* bytes_written);
		[LinkName("g_find_program_in_path")]
		public static extern char8* FindProgramInPath(char8* program);
		[LinkName("g_format_size")]
		public static extern char8* FormatSize(c_ulonglong size);
		[LinkName("g_format_size_for_display")]
		public static extern char8* FormatSizeForDisplay(c_longlong size);
		[LinkName("g_format_size_full")]
		public static extern char8* FormatSizeFull(c_ulonglong size, FormatSizeFlags flags);
		[LinkName("g_free")]
		public static extern void Free(void* mem);
		[LinkName("g_free_sized")]
		public static extern void FreeSized(void* mem, c_ulong size);
		[LinkName("g_get_application_name")]
		public static extern char8* GetApplicationName();
		[LinkName("g_get_charset")]
		public static extern c_int GetCharset(char8** charset);
		[LinkName("g_get_codeset")]
		public static extern char8* GetCodeset();
		[LinkName("g_get_console_charset")]
		public static extern c_int GetConsoleCharset(char8** charset);
		[LinkName("g_get_current_dir")]
		public static extern char8* GetCurrentDir();
		[LinkName("g_get_current_time")]
		public static extern void GetCurrentTime(TimeVal* result);
		[LinkName("g_get_environ")]
		public static extern char8** GetEnviron();
		[LinkName("g_get_filename_charsets")]
		public static extern c_int GetFilenameCharsets(char8*** filename_charsets);
		[LinkName("g_get_home_dir")]
		public static extern char8* GetHomeDir();
		[LinkName("g_get_host_name")]
		public static extern char8* GetHostName();
		[LinkName("g_get_language_names")]
		public static extern char8* GetLanguageNames();
		[LinkName("g_get_language_names_with_category")]
		public static extern char8* GetLanguageNamesWithCategory(char8* category_name);
		[LinkName("g_get_locale_variants")]
		public static extern char8** GetLocaleVariants(char8* locale);
		[LinkName("g_get_monotonic_time")]
		public static extern c_longlong GetMonotonicTime();
		[LinkName("g_get_num_processors")]
		public static extern c_uint GetNumProcessors();
		[LinkName("g_get_os_info")]
		public static extern char8* GetOsInfo(char8* key_name);
		[LinkName("g_get_prgname")]
		public static extern char8* GetPrgname();
		[LinkName("g_get_real_name")]
		public static extern char8* GetRealName();
		[LinkName("g_get_real_time")]
		public static extern c_longlong GetRealTime();
		[LinkName("g_get_system_config_dirs")]
		public static extern char8* GetSystemConfigDirs();
		[LinkName("g_get_system_data_dirs")]
		public static extern char8* GetSystemDataDirs();
		[LinkName("g_get_tmp_dir")]
		public static extern char8* GetTmpDir();
		[LinkName("g_get_user_cache_dir")]
		public static extern char8* GetUserCacheDir();
		[LinkName("g_get_user_config_dir")]
		public static extern char8* GetUserConfigDir();
		[LinkName("g_get_user_data_dir")]
		public static extern char8* GetUserDataDir();
		[LinkName("g_get_user_name")]
		public static extern char8* GetUserName();
		[LinkName("g_get_user_runtime_dir")]
		public static extern char8* GetUserRuntimeDir();
		[LinkName("g_get_user_special_dir")]
		public static extern char8* GetUserSpecialDir(UserDirectory directory);
		[LinkName("g_get_user_state_dir")]
		public static extern char8* GetUserStateDir();
		[LinkName("g_getenv")]
		public static extern char8* Getenv(char8* variable);
		[LinkName("g_hash_table_add")]
		public static extern c_int HashTableAdd(GLib.HashTable* hash_table, void* key);
		[LinkName("g_hash_table_contains")]
		public static extern c_int HashTableContains(GLib.HashTable* hash_table, void* key);
		[LinkName("g_hash_table_destroy")]
		public static extern void HashTableDestroy(GLib.HashTable* hash_table);
		[LinkName("g_hash_table_insert")]
		public static extern c_int HashTableInsert(GLib.HashTable* hash_table, void* key, void* value);
		[LinkName("g_hash_table_lookup")]
		public static extern void* HashTableLookup(GLib.HashTable* hash_table, void* key);
		[LinkName("g_hash_table_lookup_extended")]
		public static extern c_int HashTableLookupExtended(GLib.HashTable* hash_table, void* lookup_key, void** orig_key, void** value);
		[LinkName("g_hash_table_new_similar")]
		public static extern GLib.HashTable* HashTableNewSimilar(GLib.HashTable* other_hash_table);
		[LinkName("g_hash_table_remove")]
		public static extern c_int HashTableRemove(GLib.HashTable* hash_table, void* key);
		[LinkName("g_hash_table_remove_all")]
		public static extern void HashTableRemoveAll(GLib.HashTable* hash_table);
		[LinkName("g_hash_table_replace")]
		public static extern c_int HashTableReplace(GLib.HashTable* hash_table, void* key, void* value);
		[LinkName("g_hash_table_size")]
		public static extern c_uint HashTableSize(GLib.HashTable* hash_table);
		[LinkName("g_hash_table_steal")]
		public static extern c_int HashTableSteal(GLib.HashTable* hash_table, void* key);
		[LinkName("g_hash_table_steal_all")]
		public static extern void HashTableStealAll(GLib.HashTable* hash_table);
		[LinkName("g_hash_table_steal_extended")]
		public static extern c_int HashTableStealExtended(GLib.HashTable* hash_table, void* lookup_key, void** stolen_key, void** stolen_value);
		[LinkName("g_hash_table_unref")]
		public static extern void HashTableUnref(GLib.HashTable* hash_table);
		[LinkName("g_hook_destroy")]
		public static extern c_int HookDestroy(HookList* hook_list, c_ulong hook_id);
		[LinkName("g_hook_destroy_link")]
		public static extern void HookDestroyLink(HookList* hook_list, Hook* hook);
		[LinkName("g_hook_free")]
		public static extern void HookFree(HookList* hook_list, Hook* hook);
		[LinkName("g_hook_insert_before")]
		public static extern void HookInsertBefore(HookList* hook_list, Hook* sibling, Hook* hook);
		[LinkName("g_hook_prepend")]
		public static extern void HookPrepend(HookList* hook_list, Hook* hook);
		[LinkName("g_hook_unref")]
		public static extern void HookUnref(HookList* hook_list, Hook* hook);
		[LinkName("g_hostname_is_ascii_encoded")]
		public static extern c_int HostnameIsAsciiEncoded(char8* hostname);
		[LinkName("g_hostname_is_ip_address")]
		public static extern c_int HostnameIsIpAddress(char8* hostname);
		[LinkName("g_hostname_is_non_ascii")]
		public static extern c_int HostnameIsNonAscii(char8* hostname);
		[LinkName("g_hostname_to_ascii")]
		public static extern char8* HostnameToAscii(char8* hostname);
		[LinkName("g_hostname_to_unicode")]
		public static extern char8* HostnameToUnicode(char8* hostname);
		[LinkName("g_idle_add_full")]
		public static extern c_uint IdleAddFull(c_int priority, SourceFunc function_, void* data, DestroyNotify notify);
		[LinkName("g_idle_remove_by_data")]
		public static extern c_int IdleRemoveByData(void* data);
		[LinkName("g_idle_source_new")]
		public static extern Source* IdleSourceNew();
		[LinkName("g_int64_equal")]
		public static extern c_int Int64Equal(void* v1, void* v2);
		[LinkName("g_int64_hash")]
		public static extern c_uint Int64Hash(void* v);
		[LinkName("g_int_equal")]
		public static extern c_int IntEqual(void* v1, void* v2);
		[LinkName("g_int_hash")]
		public static extern c_uint IntHash(void* v);
		[LinkName("g_intern_static_string")]
		public static extern char8* InternStaticString(char8* string);
		[LinkName("g_intern_string")]
		public static extern char8* InternString(char8* string);
		[LinkName("g_io_add_watch_full")]
		public static extern c_uint IoAddWatchFull(IOChannel* channel, c_int priority, IOCondition condition, IOFunc func, void* user_data, DestroyNotify notify);
		[LinkName("g_io_channel_error_from_errno")]
		public static extern IOChannelError IoChannelErrorFromErrno(c_int en);
		[LinkName("g_io_channel_error_quark")]
		public static extern Quark IoChannelErrorQuark();
		[LinkName("g_io_create_watch")]
		public static extern Source* IoCreateWatch(IOChannel* channel, IOCondition condition);
		[LinkName("g_key_file_error_quark")]
		public static extern Quark KeyFileErrorQuark();
		[LinkName("g_listenv")]
		public static extern char8** Listenv();
		[LinkName("g_locale_from_utf8")]
		public static extern c_uchar* LocaleFromUtf8(char8* utf8string, c_long len, c_ulong* bytes_read, c_ulong* bytes_written);
		[LinkName("g_locale_to_utf8")]
		public static extern char8* LocaleToUtf8(c_uchar* opsysstring, c_long len, c_ulong* bytes_read, c_ulong* bytes_written);
		[LinkName("g_log_default_handler")]
		public static extern void LogDefaultHandler(char8* log_domain, LogLevelFlags log_level, char8* message, void* unused_data);
		[LinkName("g_log_get_debug_enabled")]
		public static extern c_int LogGetDebugEnabled();
		[LinkName("g_log_remove_handler")]
		public static extern void LogRemoveHandler(char8* log_domain, c_uint handler_id);
		[LinkName("g_log_set_always_fatal")]
		public static extern LogLevelFlags LogSetAlwaysFatal(LogLevelFlags fatal_mask);
		[LinkName("g_log_set_debug_enabled")]
		public static extern void LogSetDebugEnabled(c_int enabled);
		[LinkName("g_log_set_fatal_mask")]
		public static extern LogLevelFlags LogSetFatalMask(char8* log_domain, LogLevelFlags fatal_mask);
		[LinkName("g_log_set_handler_full")]
		public static extern c_uint LogSetHandlerFull(char8* log_domain, LogLevelFlags log_levels, LogFunc log_func, void* user_data, DestroyNotify destroy);
		[LinkName("g_log_set_writer_func")]
		public static extern void LogSetWriterFunc(LogWriterFunc func, void* user_data, DestroyNotify user_data_free);
		[LinkName("g_log_structured_array")]
		public static extern void LogStructuredArray(LogLevelFlags log_level, LogField* fields, c_ulong n_fields);
		[LinkName("g_log_variant")]
		public static extern void LogVariant(char8* log_domain, LogLevelFlags log_level, Variant* fields);
		[LinkName("g_log_writer_default")]
		public static extern LogWriterOutput LogWriterDefault(LogLevelFlags log_level, LogField* fields, c_ulong n_fields, void* user_data);
		[LinkName("g_log_writer_default_set_use_stderr")]
		public static extern void LogWriterDefaultSetUseStderr(c_int use_stderr);
		[LinkName("g_log_writer_default_would_drop")]
		public static extern c_int LogWriterDefaultWouldDrop(LogLevelFlags log_level, char8* log_domain);
		[LinkName("g_log_writer_format_fields")]
		public static extern char8* LogWriterFormatFields(LogLevelFlags log_level, LogField* fields, c_ulong n_fields, c_int use_color);
		[LinkName("g_log_writer_is_journald")]
		public static extern c_int LogWriterIsJournald(c_int output_fd);
		[LinkName("g_log_writer_journald")]
		public static extern LogWriterOutput LogWriterJournald(LogLevelFlags log_level, LogField* fields, c_ulong n_fields, void* user_data);
		[LinkName("g_log_writer_standard_streams")]
		public static extern LogWriterOutput LogWriterStandardStreams(LogLevelFlags log_level, LogField* fields, c_ulong n_fields, void* user_data);
		[LinkName("g_log_writer_supports_color")]
		public static extern c_int LogWriterSupportsColor(c_int output_fd);
		[LinkName("g_main_context_default")]
		public static extern MainContext* MainContextDefault();
		[LinkName("g_main_context_get_thread_default")]
		public static extern MainContext* MainContextGetThreadDefault();
		[LinkName("g_main_context_ref_thread_default")]
		public static extern MainContext* MainContextRefThreadDefault();
		[LinkName("g_main_current_source")]
		public static extern Source* MainCurrentSource();
		[LinkName("g_main_depth")]
		public static extern c_int MainDepth();
		[LinkName("g_malloc")]
		public static extern void* Malloc(c_ulong n_bytes);
		[LinkName("g_malloc0")]
		public static extern void* Malloc0(c_ulong n_bytes);
		[LinkName("g_malloc0_n")]
		public static extern void* Malloc0N(c_ulong n_blocks, c_ulong n_block_bytes);
		[LinkName("g_malloc_n")]
		public static extern void* MallocN(c_ulong n_blocks, c_ulong n_block_bytes);
		[LinkName("g_markup_error_quark")]
		public static extern Quark MarkupErrorQuark();
		[LinkName("g_markup_escape_text")]
		public static extern char8* MarkupEscapeText(char8* text, c_long length);
		[LinkName("g_mem_is_system_malloc")]
		public static extern c_int MemIsSystemMalloc();
		[LinkName("g_mem_profile")]
		public static extern void MemProfile();
		[LinkName("g_mem_set_vtable")]
		public static extern void MemSetVtable(MemVTable* vtable);
		[LinkName("g_memdup")]
		public static extern void* Memdup(void* mem, c_uint byte_size);
		[LinkName("g_memdup2")]
		public static extern void* Memdup2(void* mem, c_ulong byte_size);
		[LinkName("g_mkdir_with_parents")]
		public static extern c_int MkdirWithParents(char8* pathname, c_int mode);
		[LinkName("g_nullify_pointer")]
		public static extern void NullifyPointer(void** nullify_location);
		[LinkName("g_number_parser_error_quark")]
		public static extern Quark NumberParserErrorQuark();
		[LinkName("g_on_error_query")]
		public static extern void OnErrorQuery(char8* prg_name);
		[LinkName("g_on_error_stack_trace")]
		public static extern void OnErrorStackTrace(char8* prg_name);
		[LinkName("g_once_init_enter")]
		public static extern c_int OnceInitEnter(void** location);
		[LinkName("g_once_init_leave")]
		public static extern void OnceInitLeave(void** location, c_ulong result);
		[LinkName("g_option_error_quark")]
		public static extern Quark OptionErrorQuark();
		[LinkName("g_parse_debug_string")]
		public static extern c_uint ParseDebugString(char8* string, DebugKey* keys, c_uint nkeys);
		[LinkName("g_path_buf_equal")]
		public static extern c_int PathBufEqual(void* v1, void* v2);
		[LinkName("g_path_get_basename")]
		public static extern char8* PathGetBasename(char8* file_name);
		[LinkName("g_path_get_dirname")]
		public static extern char8* PathGetDirname(char8* file_name);
		[LinkName("g_path_is_absolute")]
		public static extern c_int PathIsAbsolute(char8* file_name);
		[LinkName("g_path_skip_root")]
		public static extern char8* PathSkipRoot(char8* file_name);
		[LinkName("g_pattern_match_simple")]
		public static extern c_int PatternMatchSimple(char8* pattern, char8* string);
		[LinkName("g_pointer_bit_lock")]
		public static extern void PointerBitLock(void** address, c_int lock_bit);
		[LinkName("g_pointer_bit_trylock")]
		public static extern c_int PointerBitTrylock(void** address, c_int lock_bit);
		[LinkName("g_pointer_bit_unlock")]
		public static extern void PointerBitUnlock(void** address, c_int lock_bit);
		[LinkName("g_poll")]
		public static extern c_int Poll(PollFD* fds, c_uint nfds, c_int timeout);
		[LinkName("g_prefix_error_literal")]
		public static extern void PrefixErrorLiteral(Error** err, char8* prefix);
		[LinkName("g_propagate_error")]
		public static extern void PropagateError(Error** dest, Error* src);
		[LinkName("g_quark_from_static_string")]
		public static extern Quark QuarkFromStaticString(char8* string);
		[LinkName("g_quark_from_string")]
		public static extern Quark QuarkFromString(char8* string);
		[LinkName("g_quark_to_string")]
		public static extern char8* QuarkToString(Quark quark);
		[LinkName("g_quark_try_string")]
		public static extern Quark QuarkTryString(char8* string);
		[LinkName("g_random_double")]
		public static extern double RandomDouble();
		[LinkName("g_random_double_range")]
		public static extern double RandomDoubleRange(double begin, double end);
		[LinkName("g_random_int")]
		public static extern c_uint RandomInt();
		[LinkName("g_random_int_range")]
		public static extern c_int RandomIntRange(c_int begin, c_int end);
		[LinkName("g_random_set_seed")]
		public static extern void RandomSetSeed(c_uint seed);
		[LinkName("g_rc_box_acquire")]
		public static extern void* RcBoxAcquire(void* mem_block);
		[LinkName("g_rc_box_alloc")]
		public static extern void* RcBoxAlloc(c_ulong block_size);
		[LinkName("g_rc_box_alloc0")]
		public static extern void* RcBoxAlloc0(c_ulong block_size);
		[LinkName("g_rc_box_dup")]
		public static extern void* RcBoxDup(c_ulong block_size, void* mem_block);
		[LinkName("g_rc_box_get_size")]
		public static extern c_ulong RcBoxGetSize(void* mem_block);
		[LinkName("g_rc_box_release")]
		public static extern void RcBoxRelease(void* mem_block);
		[LinkName("g_rc_box_release_full")]
		public static extern void RcBoxReleaseFull(void* mem_block, DestroyNotify clear_func);
		[LinkName("g_realloc")]
		public static extern void* Realloc(void* mem, c_ulong n_bytes);
		[LinkName("g_realloc_n")]
		public static extern void* ReallocN(void* mem, c_ulong n_blocks, c_ulong n_block_bytes);
		[LinkName("g_ref_count_compare")]
		public static extern c_int RefCountCompare(c_int* rc, c_int val);
		[LinkName("g_ref_count_dec")]
		public static extern c_int RefCountDec(c_int* rc);
		[LinkName("g_ref_count_inc")]
		public static extern void RefCountInc(c_int* rc);
		[LinkName("g_ref_count_init")]
		public static extern void RefCountInit(c_int* rc);
		[LinkName("g_ref_string_acquire")]
		public static extern char8* RefStringAcquire(char8* str);
		[LinkName("g_ref_string_length")]
		public static extern c_ulong RefStringLength(char8* str);
		[LinkName("g_ref_string_new")]
		public static extern char8* RefStringNew(char8* str);
		[LinkName("g_ref_string_new_intern")]
		public static extern char8* RefStringNewIntern(char8* str);
		[LinkName("g_ref_string_new_len")]
		public static extern char8* RefStringNewLen(char8* str, c_long len);
		[LinkName("g_ref_string_release")]
		public static extern void RefStringRelease(char8* str);
		[LinkName("g_regex_check_replacement")]
		public static extern c_int RegexCheckReplacement(char8* replacement, c_int* has_references);
		[LinkName("g_regex_error_quark")]
		public static extern Quark RegexErrorQuark();
		[LinkName("g_regex_escape_nul")]
		public static extern char8* RegexEscapeNul(char8* string, c_int length);
		[LinkName("g_regex_escape_string")]
		public static extern char8* RegexEscapeString(char8* string, c_int length);
		[LinkName("g_regex_match_simple")]
		public static extern c_int RegexMatchSimple(char8* pattern, char8* string, RegexCompileFlags compile_options, RegexMatchFlags match_options);
		[LinkName("g_regex_split_simple")]
		public static extern char8** RegexSplitSimple(char8* pattern, char8* string, RegexCompileFlags compile_options, RegexMatchFlags match_options);
		[LinkName("g_reload_user_special_dirs_cache")]
		public static extern void ReloadUserSpecialDirsCache();
		[LinkName("g_rmdir")]
		public static extern c_int Rmdir(char8* filename);
		[LinkName("g_sequence_get")]
		public static extern void* SequenceGet(SequenceIter* iter);
		[LinkName("g_sequence_insert_before")]
		public static extern SequenceIter* SequenceInsertBefore(SequenceIter* iter, void* data);
		[LinkName("g_sequence_move")]
		public static extern void SequenceMove(SequenceIter* src, SequenceIter* dest);
		[LinkName("g_sequence_move_range")]
		public static extern void SequenceMoveRange(SequenceIter* dest, SequenceIter* begin, SequenceIter* end);
		[LinkName("g_sequence_range_get_midpoint")]
		public static extern SequenceIter* SequenceRangeGetMidpoint(SequenceIter* begin, SequenceIter* end);
		[LinkName("g_sequence_remove")]
		public static extern void SequenceRemove(SequenceIter* iter);
		[LinkName("g_sequence_remove_range")]
		public static extern void SequenceRemoveRange(SequenceIter* begin, SequenceIter* end);
		[LinkName("g_sequence_set")]
		public static extern void SequenceSet(SequenceIter* iter, void* data);
		[LinkName("g_sequence_swap")]
		public static extern void SequenceSwap(SequenceIter* a, SequenceIter* b);
		[LinkName("g_set_application_name")]
		public static extern void SetApplicationName(char8* application_name);
		[LinkName("g_set_error_literal")]
		public static extern void SetErrorLiteral(Error** err, Quark domain, c_int code, char8* message);
		[LinkName("g_set_prgname")]
		public static extern void SetPrgname(char8* prgname);
		[LinkName("g_setenv")]
		public static extern c_int Setenv(char8* variable, char8* value, c_int overwrite);
		[LinkName("g_shell_error_quark")]
		public static extern Quark ShellErrorQuark();
		[LinkName("g_shell_parse_argv")]
		public static extern c_int ShellParseArgv(char8* command_line, c_int* argcp, char8*** argvp);
		[LinkName("g_shell_quote")]
		public static extern char8* ShellQuote(char8* unquoted_string);
		[LinkName("g_shell_unquote")]
		public static extern char8* ShellUnquote(char8* source, char8* exceptions);
		[LinkName("g_strfreev")]
		public static extern void Strfreev(char8** str_array);
		[LinkName("g_strip_context")]
		public static extern char8* StripContext(char8* msgid, char8* msgval);
		[LinkName("g_strjoinv")]
		public static extern char8* Strjoinv(char8* separator, char8** str_array);
		[LinkName("g_strlcat")]
		public static extern c_ulong Strlcat(char8* dest, char8* src, c_ulong dest_size);
		[LinkName("g_strlcpy")]
		public static extern c_ulong Strlcpy(char8* dest, char8* src, c_ulong dest_size);
		[LinkName("g_strncasecmp")]
		public static extern c_int Strncasecmp(char8* s1, char8* s2, c_uint n);
		[LinkName("g_strndup")]
		public static extern char8* Strndup(char8* str, c_ulong n);
		[LinkName("g_strnfill")]
		public static extern char8* Strnfill(c_ulong length, c_char fill_char);
		[LinkName("g_strreverse")]
		public static extern char8* Strreverse(char8* string);
		[LinkName("g_strrstr")]
		public static extern char8* Strrstr(char8* haystack, char8* needle);
		[LinkName("g_strrstr_len")]
		public static extern char8* StrrstrLen(char8* haystack, c_long haystack_len, char8* needle);
		[LinkName("g_strsignal")]
		public static extern char8* Strsignal(c_int signum);
		[LinkName("g_strstr_len")]
		public static extern char8* StrstrLen(char8* haystack, c_long haystack_len, char8* needle);
		[LinkName("g_strtod")]
		public static extern double Strtod(char8* nptr, char8** endptr);
		[LinkName("g_strup")]
		public static extern char8* Strup(char8* string);
		[LinkName("g_strv_contains")]
		public static extern c_int StrvContains(char8** strv, char8* str);
		[LinkName("g_strv_equal")]
		public static extern c_int StrvEqual(char8** strv1, char8** strv2);
		[LinkName("g_strv_get_type")]
		public static extern GLib.Type StrvGetType();
		[LinkName("g_strv_length")]
		public static extern c_uint StrvLength(char8** str_array);
		[LinkName("g_test_add_data_func")]
		public static extern void TestAddDataFunc(char8* testpath, void* test_data, TestDataFunc test_func);
		[LinkName("g_test_add_data_func_full")]
		public static extern void TestAddDataFuncFull(char8* testpath, void* test_data, TestDataFunc test_func, DestroyNotify data_free_func);
		[LinkName("g_test_add_func")]
		public static extern void TestAddFunc(char8* testpath, TestFunc test_func);
		[LinkName("g_test_assert_expected_messages_internal")]
		public static extern void TestAssertExpectedMessagesInternal(char8* domain, char8* file, c_int line, char8* func);
		[LinkName("g_test_bug")]
		public static extern void TestBug(char8* bug_uri_snippet);
		[LinkName("g_test_bug_base")]
		public static extern void TestBugBase(char8* uri_pattern);
		[LinkName("g_test_expect_message")]
		public static extern void TestExpectMessage(char8* log_domain, LogLevelFlags log_level, char8* pattern);
		[LinkName("g_test_fail")]
		public static extern void TestFail();
		[LinkName("g_test_failed")]
		public static extern c_int TestFailed();
		[LinkName("g_test_get_dir")]
		public static extern char8* TestGetDir(TestFileType file_type);
		[LinkName("g_test_get_path")]
		public static extern char8* TestGetPath();
		[LinkName("g_test_incomplete")]
		public static extern void TestIncomplete(char8* msg);
		[LinkName("g_test_log_type_name")]
		public static extern char8* TestLogTypeName(TestLogType log_type);
		[LinkName("g_test_queue_destroy")]
		public static extern void TestQueueDestroy(DestroyNotify destroy_func, void* destroy_data);
		[LinkName("g_test_queue_free")]
		public static extern void TestQueueFree(void* gfree_pointer);
		[LinkName("g_test_rand_double")]
		public static extern double TestRandDouble();
		[LinkName("g_test_rand_double_range")]
		public static extern double TestRandDoubleRange(double range_start, double range_end);
		[LinkName("g_test_rand_int")]
		public static extern c_int TestRandInt();
		[LinkName("g_test_rand_int_range")]
		public static extern c_int TestRandIntRange(c_int begin, c_int end);
		[LinkName("g_test_run")]
		public static extern c_int TestRun();
		[LinkName("g_test_run_suite")]
		public static extern c_int TestRunSuite(TestSuite* suite);
		[LinkName("g_test_set_nonfatal_assertions")]
		public static extern void TestSetNonfatalAssertions();
		[LinkName("g_test_skip")]
		public static extern void TestSkip(char8* msg);
		[LinkName("g_test_subprocess")]
		public static extern c_int TestSubprocess();
		[LinkName("g_test_summary")]
		public static extern void TestSummary(char8* summary);
		[LinkName("g_test_timer_elapsed")]
		public static extern double TestTimerElapsed();
		[LinkName("g_test_timer_last")]
		public static extern double TestTimerLast();
		[LinkName("g_test_timer_start")]
		public static extern void TestTimerStart();
		[LinkName("g_test_trap_assertions")]
		public static extern void TestTrapAssertions(char8* domain, char8* file, c_int line, char8* func, c_ulonglong assertion_flags, char8* pattern);
		[LinkName("g_test_trap_fork")]
		public static extern c_int TestTrapFork(c_ulonglong usec_timeout, TestTrapFlags test_trap_flags);
		[LinkName("g_test_trap_has_passed")]
		public static extern c_int TestTrapHasPassed();
		[LinkName("g_test_trap_reached_timeout")]
		public static extern c_int TestTrapReachedTimeout();
		[LinkName("g_test_trap_subprocess")]
		public static extern void TestTrapSubprocess(char8* test_path, c_ulonglong usec_timeout, TestSubprocessFlags test_flags);
		[LinkName("g_thread_error_quark")]
		public static extern Quark ThreadErrorQuark();
		[LinkName("g_thread_exit")]
		public static extern void ThreadExit(void* retval);
		[LinkName("g_thread_pool_get_max_idle_time")]
		public static extern c_uint ThreadPoolGetMaxIdleTime();
		[LinkName("g_thread_pool_get_max_unused_threads")]
		public static extern c_int ThreadPoolGetMaxUnusedThreads();
		[LinkName("g_thread_pool_get_num_unused_threads")]
		public static extern c_uint ThreadPoolGetNumUnusedThreads();
		[LinkName("g_thread_pool_set_max_idle_time")]
		public static extern void ThreadPoolSetMaxIdleTime(c_uint interval);
		[LinkName("g_thread_pool_set_max_unused_threads")]
		public static extern void ThreadPoolSetMaxUnusedThreads(c_int max_threads);
		[LinkName("g_thread_pool_stop_unused_threads")]
		public static extern void ThreadPoolStopUnusedThreads();
		[LinkName("g_thread_self")]
		public static extern Thread* ThreadSelf();
		[LinkName("g_thread_yield")]
		public static extern void ThreadYield();
		[LinkName("g_time_val_from_iso8601")]
		public static extern c_int TimeValFromIso8601(char8* iso_date, TimeVal* time_);
		[LinkName("g_timeout_add_full")]
		public static extern c_uint TimeoutAddFull(c_int priority, c_uint interval, SourceFunc function_, void* data, DestroyNotify notify);
		[LinkName("g_timeout_add_seconds_full")]
		public static extern c_uint TimeoutAddSecondsFull(c_int priority, c_uint interval, SourceFunc function_, void* data, DestroyNotify notify);
		[LinkName("g_timeout_source_new")]
		public static extern Source* TimeoutSourceNew(c_uint interval);
		[LinkName("g_timeout_source_new_seconds")]
		public static extern Source* TimeoutSourceNewSeconds(c_uint interval);
		[LinkName("g_trash_stack_height")]
		public static extern c_uint TrashStackHeight(TrashStack** stack_p);
		[LinkName("g_trash_stack_peek")]
		public static extern void* TrashStackPeek(TrashStack** stack_p);
		[LinkName("g_trash_stack_pop")]
		public static extern void* TrashStackPop(TrashStack** stack_p);
		[LinkName("g_trash_stack_push")]
		public static extern void TrashStackPush(TrashStack** stack_p, void* data_p);
		[LinkName("g_try_malloc")]
		public static extern void* TryMalloc(c_ulong n_bytes);
		[LinkName("g_try_malloc0")]
		public static extern void* TryMalloc0(c_ulong n_bytes);
		[LinkName("g_try_malloc0_n")]
		public static extern void* TryMalloc0N(c_ulong n_blocks, c_ulong n_block_bytes);
		[LinkName("g_try_malloc_n")]
		public static extern void* TryMallocN(c_ulong n_blocks, c_ulong n_block_bytes);
		[LinkName("g_try_realloc")]
		public static extern void* TryRealloc(void* mem, c_ulong n_bytes);
		[LinkName("g_try_realloc_n")]
		public static extern void* TryReallocN(void* mem, c_ulong n_blocks, c_ulong n_block_bytes);
		[LinkName("g_ucs4_to_utf16")]
		public static extern c_ushort* Ucs4ToUtf16(c_uint* str, c_long len, c_long* items_read, c_long* items_written);
		[LinkName("g_ucs4_to_utf8")]
		public static extern char8* Ucs4ToUtf8(c_uint* str, c_long len, c_long* items_read, c_long* items_written);
		[LinkName("g_unichar_break_type")]
		public static extern UnicodeBreakType UnicharBreakType(c_uint c);
		[LinkName("g_unichar_combining_class")]
		public static extern c_int UnicharCombiningClass(c_uint uc);
		[LinkName("g_unichar_compose")]
		public static extern c_int UnicharCompose(c_uint a, c_uint b, c_uint* ch);
		[LinkName("g_unichar_decompose")]
		public static extern c_int UnicharDecompose(c_uint ch, c_uint* a, c_uint* b);
		[LinkName("g_unichar_digit_value")]
		public static extern c_int UnicharDigitValue(c_uint c);
		[LinkName("g_unichar_fully_decompose")]
		public static extern c_ulong UnicharFullyDecompose(c_uint ch, c_int compat, c_uint* result, c_ulong result_len);
		[LinkName("g_unichar_get_mirror_char")]
		public static extern c_int UnicharGetMirrorChar(c_uint ch, c_uint* mirrored_ch);
		[LinkName("g_unichar_get_script")]
		public static extern UnicodeScript UnicharGetScript(c_uint ch);
		[LinkName("g_unichar_isalnum")]
		public static extern c_int UnicharIsalnum(c_uint c);
		[LinkName("g_unichar_isalpha")]
		public static extern c_int UnicharIsalpha(c_uint c);
		[LinkName("g_unichar_iscntrl")]
		public static extern c_int UnicharIscntrl(c_uint c);
		[LinkName("g_unichar_isdefined")]
		public static extern c_int UnicharIsdefined(c_uint c);
		[LinkName("g_unichar_isdigit")]
		public static extern c_int UnicharIsdigit(c_uint c);
		[LinkName("g_unichar_isgraph")]
		public static extern c_int UnicharIsgraph(c_uint c);
		[LinkName("g_unichar_islower")]
		public static extern c_int UnicharIslower(c_uint c);
		[LinkName("g_unichar_ismark")]
		public static extern c_int UnicharIsmark(c_uint c);
		[LinkName("g_unichar_isprint")]
		public static extern c_int UnicharIsprint(c_uint c);
		[LinkName("g_unichar_ispunct")]
		public static extern c_int UnicharIspunct(c_uint c);
		[LinkName("g_unichar_isspace")]
		public static extern c_int UnicharIsspace(c_uint c);
		[LinkName("g_unichar_istitle")]
		public static extern c_int UnicharIstitle(c_uint c);
		[LinkName("g_unichar_isupper")]
		public static extern c_int UnicharIsupper(c_uint c);
		[LinkName("g_unichar_iswide")]
		public static extern c_int UnicharIswide(c_uint c);
		[LinkName("g_unichar_iswide_cjk")]
		public static extern c_int UnicharIswideCjk(c_uint c);
		[LinkName("g_unichar_isxdigit")]
		public static extern c_int UnicharIsxdigit(c_uint c);
		[LinkName("g_unichar_iszerowidth")]
		public static extern c_int UnicharIszerowidth(c_uint c);
		[LinkName("g_unichar_to_utf8")]
		public static extern c_int UnicharToUtf8(c_uint c, char8* outbuf);
		[LinkName("g_unichar_tolower")]
		public static extern c_uint UnicharTolower(c_uint c);
		[LinkName("g_unichar_totitle")]
		public static extern c_uint UnicharTotitle(c_uint c);
		[LinkName("g_unichar_toupper")]
		public static extern c_uint UnicharToupper(c_uint c);
		[LinkName("g_unichar_type")]
		public static extern UnicodeType UnicharType(c_uint c);
		[LinkName("g_unichar_validate")]
		public static extern c_int UnicharValidate(c_uint ch);
		[LinkName("g_unichar_xdigit_value")]
		public static extern c_int UnicharXdigitValue(c_uint c);
		[LinkName("g_unicode_canonical_decomposition")]
		public static extern c_uint* UnicodeCanonicalDecomposition(c_uint ch, c_ulong* result_len);
		[LinkName("g_unicode_canonical_ordering")]
		public static extern void UnicodeCanonicalOrdering(c_uint* string, c_ulong len);
		[LinkName("g_unicode_script_from_iso15924")]
		public static extern UnicodeScript UnicodeScriptFromIso15924(c_uint iso15924);
		[LinkName("g_unicode_script_to_iso15924")]
		public static extern c_uint UnicodeScriptToIso15924(UnicodeScript script);
		[LinkName("g_unix_error_quark")]
		public static extern Quark UnixErrorQuark();
		[LinkName("g_unix_fd_add_full")]
		public static extern c_uint UnixFdAddFull(c_int priority, c_int fd, IOCondition condition, UnixFDSourceFunc function_, void* user_data, DestroyNotify notify);
		[LinkName("g_unix_fd_source_new")]
		public static extern Source* UnixFdSourceNew(c_int fd, IOCondition condition);
		[LinkName("g_unix_get_passwd_entry")]
		public static extern void** UnixGetPasswdEntry(char8* user_name);
		[LinkName("g_unix_open_pipe")]
		public static extern c_int UnixOpenPipe(c_int* fds, c_int flags);
		[LinkName("g_unix_set_fd_nonblocking")]
		public static extern c_int UnixSetFdNonblocking(c_int fd, c_int nonblock);
		[LinkName("g_unix_signal_add_full")]
		public static extern c_uint UnixSignalAddFull(c_int priority, c_int signum, SourceFunc handler, void* user_data, DestroyNotify notify);
		[LinkName("g_unix_signal_source_new")]
		public static extern Source* UnixSignalSourceNew(c_int signum);
		[LinkName("g_unlink")]
		public static extern c_int Unlink(char8* filename);
		[LinkName("g_unsetenv")]
		public static extern void Unsetenv(char8* variable);
		[LinkName("g_uri_build")]
		public static extern Uri* UriBuild(UriFlags flags, char8* scheme, char8* userinfo, char8* host, c_int port, char8* path, char8* query, char8* fragment);
		[LinkName("g_uri_build_with_user")]
		public static extern Uri* UriBuildWithUser(UriFlags flags, char8* scheme, char8* user, char8* password, char8* auth_params, char8* host, c_int port, char8* path, char8* query, char8* fragment);
		[LinkName("g_uri_error_quark")]
		public static extern Quark UriErrorQuark();
		[LinkName("g_uri_escape_bytes")]
		public static extern char8* UriEscapeBytes(c_uchar* unescaped, c_ulong length, char8* reserved_chars_allowed);
		[LinkName("g_uri_escape_string")]
		public static extern char8* UriEscapeString(char8* unescaped, char8* reserved_chars_allowed, c_int allow_utf8);
		[LinkName("g_uri_is_valid")]
		public static extern c_int UriIsValid(char8* uri_string, UriFlags flags);
		[LinkName("g_uri_join")]
		public static extern char8* UriJoin(UriFlags flags, char8* scheme, char8* userinfo, char8* host, c_int port, char8* path, char8* query, char8* fragment);
		[LinkName("g_uri_join_with_user")]
		public static extern char8* UriJoinWithUser(UriFlags flags, char8* scheme, char8* user, char8* password, char8* auth_params, char8* host, c_int port, char8* path, char8* query, char8* fragment);
		[LinkName("g_uri_list_extract_uris")]
		public static extern char8** UriListExtractUris(char8* uri_list);
		[LinkName("g_uri_parse")]
		public static extern Uri* UriParse(char8* uri_string, UriFlags flags);
		[LinkName("g_uri_parse_params")]
		public static extern GLib.HashTable* UriParseParams(char8* params_, c_long length, char8* separators, UriParamsFlags flags);
		[LinkName("g_uri_parse_scheme")]
		public static extern char8* UriParseScheme(char8* uri);
		[LinkName("g_uri_peek_scheme")]
		public static extern char8* UriPeekScheme(char8* uri);
		[LinkName("g_uri_resolve_relative")]
		public static extern char8* UriResolveRelative(char8* base_uri_string, char8* uri_ref, UriFlags flags);
		[LinkName("g_uri_split")]
		public static extern c_int UriSplit(char8* uri_ref, UriFlags flags, char8** scheme, char8** userinfo, char8** host, c_int* port, char8** path, char8** query, char8** fragment);
		[LinkName("g_uri_split_network")]
		public static extern c_int UriSplitNetwork(char8* uri_string, UriFlags flags, char8** scheme, char8** host, c_int* port);
		[LinkName("g_uri_split_with_user")]
		public static extern c_int UriSplitWithUser(char8* uri_ref, UriFlags flags, char8** scheme, char8** user, char8** password, char8** auth_params, char8** host, c_int* port, char8** path, char8** query, char8** fragment);
		[LinkName("g_uri_unescape_bytes")]
		public static extern Bytes* UriUnescapeBytes(char8* escaped_string, c_long length, char8* illegal_characters);
		[LinkName("g_uri_unescape_segment")]
		public static extern char8* UriUnescapeSegment(char8* escaped_string, char8* escaped_string_end, char8* illegal_characters);
		[LinkName("g_uri_unescape_string")]
		public static extern char8* UriUnescapeString(char8* escaped_string, char8* illegal_characters);
		[LinkName("g_usleep")]
		public static extern void Usleep(c_ulong microseconds);
		[LinkName("g_utf16_to_ucs4")]
		public static extern c_uint* Utf16ToUcs4(c_ushort* str, c_long len, c_long* items_read, c_long* items_written);
		[LinkName("g_utf16_to_utf8")]
		public static extern char8* Utf16ToUtf8(c_ushort* str, c_long len, c_long* items_read, c_long* items_written);
		[LinkName("g_utf8_casefold")]
		public static extern char8* Utf8Casefold(char8* str, c_long len);
		[LinkName("g_utf8_collate")]
		public static extern c_int Utf8Collate(char8* str1, char8* str2);
		[LinkName("g_utf8_collate_key")]
		public static extern char8* Utf8CollateKey(char8* str, c_long len);
		[LinkName("g_utf8_collate_key_for_filename")]
		public static extern char8* Utf8CollateKeyForFilename(char8* str, c_long len);
		[LinkName("g_utf8_find_next_char")]
		public static extern char8* Utf8FindNextChar(char8* p, char8* end);
		[LinkName("g_utf8_find_prev_char")]
		public static extern char8* Utf8FindPrevChar(char8* str, char8* p);
		[LinkName("g_utf8_get_char")]
		public static extern c_uint Utf8GetChar(char8* p);
		[LinkName("g_utf8_get_char_validated")]
		public static extern c_uint Utf8GetCharValidated(char8* p, c_long max_len);
		[LinkName("g_utf8_make_valid")]
		public static extern char8* Utf8MakeValid(char8* str, c_long len);
		[LinkName("g_utf8_normalize")]
		public static extern char8* Utf8Normalize(char8* str, c_long len, NormalizeMode mode);
		[LinkName("g_utf8_offset_to_pointer")]
		public static extern char8* Utf8OffsetToPointer(char8* str, c_long offset);
		[LinkName("g_utf8_pointer_to_offset")]
		public static extern c_long Utf8PointerToOffset(char8* str, char8* pos);
		[LinkName("g_utf8_prev_char")]
		public static extern char8* Utf8PrevChar(char8* p);
		[LinkName("g_utf8_strchr")]
		public static extern char8* Utf8Strchr(char8* p, c_long len, c_uint c);
		[LinkName("g_utf8_strdown")]
		public static extern char8* Utf8Strdown(char8* str, c_long len);
		[LinkName("g_utf8_strlen")]
		public static extern c_long Utf8Strlen(char8* p, c_long max);
		[LinkName("g_utf8_strncpy")]
		public static extern char8* Utf8Strncpy(char8* dest, char8* src, c_ulong n);
		[LinkName("g_utf8_strrchr")]
		public static extern char8* Utf8Strrchr(char8* p, c_long len, c_uint c);
		[LinkName("g_utf8_strreverse")]
		public static extern char8* Utf8Strreverse(char8* str, c_long len);
		[LinkName("g_utf8_strup")]
		public static extern char8* Utf8Strup(char8* str, c_long len);
		[LinkName("g_utf8_substring")]
		public static extern char8* Utf8Substring(char8* str, c_long start_pos, c_long end_pos);
		[LinkName("g_utf8_to_ucs4")]
		public static extern c_uint* Utf8ToUcs4(char8* str, c_long len, c_long* items_read, c_long* items_written);
		[LinkName("g_utf8_to_ucs4_fast")]
		public static extern c_uint* Utf8ToUcs4Fast(char8* str, c_long len, c_long* items_written);
		[LinkName("g_utf8_to_utf16")]
		public static extern c_ushort* Utf8ToUtf16(char8* str, c_long len, c_long* items_read, c_long* items_written);
		[LinkName("g_utf8_validate")]
		public static extern c_int Utf8Validate(c_uchar* str, c_long max_len, char8** end);
		[LinkName("g_utf8_validate_len")]
		public static extern c_int Utf8ValidateLen(c_uchar* str, c_ulong max_len, char8** end);
		[LinkName("g_uuid_string_is_valid")]
		public static extern c_int UuidStringIsValid(char8* str);
		[LinkName("g_uuid_string_random")]
		public static extern char8* UuidStringRandom();
		[LinkName("g_variant_get_gtype")]
		public static extern GLib.Type VariantGetGtype();
		[LinkName("g_variant_is_object_path")]
		public static extern c_int VariantIsObjectPath(char8* string);
		[LinkName("g_variant_is_signature")]
		public static extern c_int VariantIsSignature(char8* string);
		[LinkName("g_variant_parse")]
		public static extern Variant* VariantParse(VariantType* type, char8* text, char8* limit, char8** endptr);
		[LinkName("g_variant_parse_error_print_context")]
		public static extern char8* VariantParseErrorPrintContext(Error* error, char8* source_str);
		[LinkName("g_variant_parse_error_quark")]
		public static extern Quark VariantParseErrorQuark();
		[LinkName("g_variant_parser_get_error_quark")]
		public static extern Quark VariantParserGetErrorQuark();
		[LinkName("g_variant_type_checked_")]
		public static extern VariantType* VariantTypeChecked(char8* arg0);
		[LinkName("g_variant_type_string_get_depth_")]
		public static extern c_ulong VariantTypeStringGetDepth(char8* type_string);
		[LinkName("g_variant_type_string_is_valid")]
		public static extern c_int VariantTypeStringIsValid(char8* type_string);
		[LinkName("g_variant_type_string_scan")]
		public static extern c_int VariantTypeStringScan(char8* string, char8* limit, char8** endptr);
	[CRepr]
	public struct Array
	{
		public char8* data;
		public c_uint len;
	}
	[CRepr]
	public struct AsyncQueue : int
	{
		[LinkName("g_async_queue_length")]
		public static extern c_int Length(AsyncQueue* queue);
		[LinkName("g_async_queue_length_unlocked")]
		public static extern c_int LengthUnlocked(AsyncQueue* queue);
		[LinkName("g_async_queue_lock")]
		public static extern void Lock(AsyncQueue* queue);
		[LinkName("g_async_queue_pop")]
		public static extern void* Pop(AsyncQueue* queue);
		[LinkName("g_async_queue_pop_unlocked")]
		public static extern void* PopUnlocked(AsyncQueue* queue);
		[LinkName("g_async_queue_push")]
		public static extern void Push(AsyncQueue* queue, void* data);
		[LinkName("g_async_queue_push_front")]
		public static extern void PushFront(AsyncQueue* queue, void* item);
		[LinkName("g_async_queue_push_front_unlocked")]
		public static extern void PushFrontUnlocked(AsyncQueue* queue, void* item);
		[LinkName("g_async_queue_push_unlocked")]
		public static extern void PushUnlocked(AsyncQueue* queue, void* data);
		[LinkName("g_async_queue_ref_unlocked")]
		public static extern void RefUnlocked(AsyncQueue* queue);
		[LinkName("g_async_queue_remove")]
		public static extern c_int Remove(AsyncQueue* queue, void* item);
		[LinkName("g_async_queue_remove_unlocked")]
		public static extern c_int RemoveUnlocked(AsyncQueue* queue, void* item);
		[LinkName("g_async_queue_timed_pop")]
		public static extern void* TimedPop(AsyncQueue* queue, TimeVal* end_time);
		[LinkName("g_async_queue_timed_pop_unlocked")]
		public static extern void* TimedPopUnlocked(AsyncQueue* queue, TimeVal* end_time);
		[LinkName("g_async_queue_timeout_pop")]
		public static extern void* TimeoutPop(AsyncQueue* queue, c_ulonglong timeout);
		[LinkName("g_async_queue_timeout_pop_unlocked")]
		public static extern void* TimeoutPopUnlocked(AsyncQueue* queue, c_ulonglong timeout);
		[LinkName("g_async_queue_try_pop")]
		public static extern void* TryPop(AsyncQueue* queue);
		[LinkName("g_async_queue_try_pop_unlocked")]
		public static extern void* TryPopUnlocked(AsyncQueue* queue);
		[LinkName("g_async_queue_unlock")]
		public static extern void Unlock(AsyncQueue* queue);
		[LinkName("g_async_queue_unref")]
		public static extern void Unref(AsyncQueue* queue);
		[LinkName("g_async_queue_unref_and_unlock")]
		public static extern void UnrefAndUnlock(AsyncQueue* queue);
	}
	[CRepr]
	public struct BookmarkFile
	{
		[LinkName("g_bookmark_file_new")]
		public static extern BookmarkFile* New();
		[LinkName("g_bookmark_file_add_application")]
		public static extern void AddApplication(BookmarkFile* bookmark, char8* uri, char8* name, char8* exec);
		[LinkName("g_bookmark_file_add_group")]
		public static extern void AddGroup(BookmarkFile* bookmark, char8* uri, char8* group);
		[LinkName("g_bookmark_file_copy")]
		public static extern BookmarkFile* Copy(BookmarkFile* bookmark);
		[LinkName("g_bookmark_file_free")]
		public static extern void Free(BookmarkFile* bookmark);
		[LinkName("g_bookmark_file_get_added")]
		public static extern c_long GetAdded(BookmarkFile* bookmark, char8* uri);
		[LinkName("g_bookmark_file_get_added_date_time")]
		public static extern DateTime* GetAddedDateTime(BookmarkFile* bookmark, char8* uri);
		[LinkName("g_bookmark_file_get_app_info")]
		public static extern c_int GetAppInfo(BookmarkFile* bookmark, char8* uri, char8* name, char8** exec, c_uint* count, c_long* stamp);
		[LinkName("g_bookmark_file_get_application_info")]
		public static extern c_int GetApplicationInfo(BookmarkFile* bookmark, char8* uri, char8* name, char8** exec, c_uint* count, DateTime** stamp);
		[LinkName("g_bookmark_file_get_applications")]
		public static extern char8** GetApplications(BookmarkFile* bookmark, char8* uri, c_ulong* length);
		[LinkName("g_bookmark_file_get_description")]
		public static extern char8* GetDescription(BookmarkFile* bookmark, char8* uri);
		[LinkName("g_bookmark_file_get_groups")]
		public static extern char8** GetGroups(BookmarkFile* bookmark, char8* uri, c_ulong* length);
		[LinkName("g_bookmark_file_get_icon")]
		public static extern c_int GetIcon(BookmarkFile* bookmark, char8* uri, char8** href, char8** mime_type);
		[LinkName("g_bookmark_file_get_is_private")]
		public static extern c_int GetIsPrivate(BookmarkFile* bookmark, char8* uri);
		[LinkName("g_bookmark_file_get_mime_type")]
		public static extern char8* GetMimeType(BookmarkFile* bookmark, char8* uri);
		[LinkName("g_bookmark_file_get_modified")]
		public static extern c_long GetModified(BookmarkFile* bookmark, char8* uri);
		[LinkName("g_bookmark_file_get_modified_date_time")]
		public static extern DateTime* GetModifiedDateTime(BookmarkFile* bookmark, char8* uri);
		[LinkName("g_bookmark_file_get_size")]
		public static extern c_int GetSize(BookmarkFile* bookmark);
		[LinkName("g_bookmark_file_get_title")]
		public static extern char8* GetTitle(BookmarkFile* bookmark, char8* uri);
		[LinkName("g_bookmark_file_get_uris")]
		public static extern char8** GetUris(BookmarkFile* bookmark, c_ulong* length);
		[LinkName("g_bookmark_file_get_visited")]
		public static extern c_long GetVisited(BookmarkFile* bookmark, char8* uri);
		[LinkName("g_bookmark_file_get_visited_date_time")]
		public static extern DateTime* GetVisitedDateTime(BookmarkFile* bookmark, char8* uri);
		[LinkName("g_bookmark_file_has_application")]
		public static extern c_int HasApplication(BookmarkFile* bookmark, char8* uri, char8* name);
		[LinkName("g_bookmark_file_has_group")]
		public static extern c_int HasGroup(BookmarkFile* bookmark, char8* uri, char8* group);
		[LinkName("g_bookmark_file_has_item")]
		public static extern c_int HasItem(BookmarkFile* bookmark, char8* uri);
		[LinkName("g_bookmark_file_load_from_data")]
		public static extern c_int LoadFromData(BookmarkFile* bookmark, c_uchar* data, c_ulong length);
		[LinkName("g_bookmark_file_load_from_data_dirs")]
		public static extern c_int LoadFromDataDirs(BookmarkFile* bookmark, char8* file, char8** full_path);
		[LinkName("g_bookmark_file_load_from_file")]
		public static extern c_int LoadFromFile(BookmarkFile* bookmark, char8* filename);
		[LinkName("g_bookmark_file_move_item")]
		public static extern c_int MoveItem(BookmarkFile* bookmark, char8* old_uri, char8* new_uri);
		[LinkName("g_bookmark_file_remove_application")]
		public static extern c_int RemoveApplication(BookmarkFile* bookmark, char8* uri, char8* name);
		[LinkName("g_bookmark_file_remove_group")]
		public static extern c_int RemoveGroup(BookmarkFile* bookmark, char8* uri, char8* group);
		[LinkName("g_bookmark_file_remove_item")]
		public static extern c_int RemoveItem(BookmarkFile* bookmark, char8* uri);
		[LinkName("g_bookmark_file_set_added")]
		public static extern void SetAdded(BookmarkFile* bookmark, char8* uri, c_long added);
		[LinkName("g_bookmark_file_set_added_date_time")]
		public static extern void SetAddedDateTime(BookmarkFile* bookmark, char8* uri, DateTime* added);
		[LinkName("g_bookmark_file_set_app_info")]
		public static extern c_int SetAppInfo(BookmarkFile* bookmark, char8* uri, char8* name, char8* exec, c_int count, c_long stamp);
		[LinkName("g_bookmark_file_set_application_info")]
		public static extern c_int SetApplicationInfo(BookmarkFile* bookmark, char8* uri, char8* name, char8* exec, c_int count, DateTime* stamp);
		[LinkName("g_bookmark_file_set_description")]
		public static extern void SetDescription(BookmarkFile* bookmark, char8* uri, char8* description);
		[LinkName("g_bookmark_file_set_groups")]
		public static extern void SetGroups(BookmarkFile* bookmark, char8* uri, char8** groups, c_ulong length);
		[LinkName("g_bookmark_file_set_icon")]
		public static extern void SetIcon(BookmarkFile* bookmark, char8* uri, char8* href, char8* mime_type);
		[LinkName("g_bookmark_file_set_is_private")]
		public static extern void SetIsPrivate(BookmarkFile* bookmark, char8* uri, c_int is_private);
		[LinkName("g_bookmark_file_set_mime_type")]
		public static extern void SetMimeType(BookmarkFile* bookmark, char8* uri, char8* mime_type);
		[LinkName("g_bookmark_file_set_modified")]
		public static extern void SetModified(BookmarkFile* bookmark, char8* uri, c_long modified);
		[LinkName("g_bookmark_file_set_modified_date_time")]
		public static extern void SetModifiedDateTime(BookmarkFile* bookmark, char8* uri, DateTime* modified);
		[LinkName("g_bookmark_file_set_title")]
		public static extern void SetTitle(BookmarkFile* bookmark, char8* uri, char8* title);
		[LinkName("g_bookmark_file_set_visited")]
		public static extern void SetVisited(BookmarkFile* bookmark, char8* uri, c_long visited);
		[LinkName("g_bookmark_file_set_visited_date_time")]
		public static extern void SetVisitedDateTime(BookmarkFile* bookmark, char8* uri, DateTime* visited);
		[LinkName("g_bookmark_file_to_data")]
		public static extern c_uchar* ToData(BookmarkFile* bookmark, c_ulong* length);
		[LinkName("g_bookmark_file_to_file")]
		public static extern c_int ToFile(BookmarkFile* bookmark, char8* filename);
	}
	[CRepr]
	public struct ByteArray
	{
		public c_uchar* data;
		public c_uint len;
	}
	[CRepr]
	public struct Bytes
	{
		[LinkName("g_bytes_new")]
		public static extern Bytes* New(c_uchar data, c_ulong size);
		[LinkName("g_bytes_new_take")]
		public static extern Bytes* NewTake(c_uchar data, c_ulong size);
		[LinkName("g_bytes_compare")]
		public static extern c_int Compare(Bytes bytes1, Bytes bytes2);
		[LinkName("g_bytes_equal")]
		public static extern c_int Equal(Bytes bytes1, Bytes bytes2);
		[LinkName("g_bytes_get_data")]
		public static extern c_uchar GetData(Bytes* bytes, c_ulong* size);
		[LinkName("g_bytes_get_region")]
		public static extern void* GetRegion(Bytes* bytes, c_ulong element_size, c_ulong offset, c_ulong n_elements);
		[LinkName("g_bytes_get_size")]
		public static extern c_ulong GetSize(Bytes* bytes);
		[LinkName("g_bytes_hash")]
		public static extern c_uint Hash(Bytes bytes);
		[LinkName("g_bytes_new_from_bytes")]
		public static extern Bytes* NewFromBytes(Bytes* bytes, c_ulong offset, c_ulong length);
		[LinkName("g_bytes_ref")]
		public static extern Bytes* Ref(Bytes* bytes);
		[LinkName("g_bytes_unref")]
		public static extern void Unref(Bytes* bytes);
		[LinkName("g_bytes_unref_to_array")]
		public static extern c_uchar* UnrefToArray(Bytes* bytes);
		[LinkName("g_bytes_unref_to_data")]
		public static extern c_uchar UnrefToData(Bytes* bytes, c_ulong* size);
	}
	[CRepr]
	public struct Checksum
	{
		[LinkName("g_checksum_new")]
		public static extern Checksum* New(ChecksumType checksum_type);
		[LinkName("g_checksum_copy")]
		public static extern Checksum* Copy(Checksum* checksum);
		[LinkName("g_checksum_free")]
		public static extern void Free(Checksum* checksum);
		[LinkName("g_checksum_get_string")]
		public static extern char8* GetString(Checksum* checksum);
		[LinkName("g_checksum_reset")]
		public static extern void Reset(Checksum* checksum);
		[LinkName("g_checksum_update")]
		public static extern void Update(Checksum* checksum, c_uchar* data, c_long length);
	}
	[CRepr]
	public struct Cond
	{
		public void* p;
		public c_uint i;
		[LinkName("g_cond_broadcast")]
		public static extern void Broadcast(Cond* cond);
		[LinkName("g_cond_clear")]
		public static extern void Clear(Cond* cond);
		[LinkName("g_cond_init")]
		public static extern void Init(Cond* cond);
		[LinkName("g_cond_signal")]
		public static extern void Signal(Cond* cond);
		[LinkName("g_cond_wait")]
		public static extern void Wait(Cond* cond, Mutex* mutex);
		[LinkName("g_cond_wait_until")]
		public static extern c_int WaitUntil(Cond* cond, Mutex* mutex, c_longlong end_time);
	}
	[CRepr]
	public struct Data : int
	{
	}
	[CRepr]
	public struct Date
	{
		[Bitfield<c_uint>(.Private, .Bits(32), "julian_days")]
		[Bitfield<c_uint>(.Private, .Bits(1), "julian")]
		[Bitfield<c_uint>(.Private, .Bits(1), "dmy")]
		[Bitfield<c_uint>(.Private, .Bits(6), "day")]
		[Bitfield<c_uint>(.Private, .Bits(4), "month")]
		[Bitfield<c_uint>(.Private, .Bits(16), "year")]
		private int64 mBitfield;
		[LinkName("g_date_new")]
		public static extern Date* New();
		[LinkName("g_date_new_dmy")]
		public static extern Date* NewDmy(DateDay day, DateMonth month, DateYear year);
		[LinkName("g_date_new_julian")]
		public static extern Date* NewJulian(c_uint julian_day);
		[LinkName("g_date_add_days")]
		public static extern void AddDays(Date* date, c_uint n_days);
		[LinkName("g_date_add_months")]
		public static extern void AddMonths(Date* date, c_uint n_months);
		[LinkName("g_date_add_years")]
		public static extern void AddYears(Date* date, c_uint n_years);
		[LinkName("g_date_clamp")]
		public static extern void Clamp(Date* date, Date* min_date, Date* max_date);
		[LinkName("g_date_clear")]
		public static extern void Clear(Date* date, c_uint n_dates);
		[LinkName("g_date_compare")]
		public static extern c_int Compare(Date* lhs, Date* rhs);
		[LinkName("g_date_copy")]
		public static extern Date* Copy(Date* date);
		[LinkName("g_date_days_between")]
		public static extern c_int DaysBetween(Date* date1, Date* date2);
		[LinkName("g_date_free")]
		public static extern void Free(Date* date);
		[LinkName("g_date_get_day")]
		public static extern DateDay GetDay(Date* date);
		[LinkName("g_date_get_day_of_year")]
		public static extern c_uint GetDayOfYear(Date* date);
		[LinkName("g_date_get_iso8601_week_of_year")]
		public static extern c_uint GetIso8601WeekOfYear(Date* date);
		[LinkName("g_date_get_julian")]
		public static extern c_uint GetJulian(Date* date);
		[LinkName("g_date_get_monday_week_of_year")]
		public static extern c_uint GetMondayWeekOfYear(Date* date);
		[LinkName("g_date_get_month")]
		public static extern DateMonth GetMonth(Date* date);
		[LinkName("g_date_get_sunday_week_of_year")]
		public static extern c_uint GetSundayWeekOfYear(Date* date);
		[LinkName("g_date_get_weekday")]
		public static extern DateWeekday GetWeekday(Date* date);
		[LinkName("g_date_get_year")]
		public static extern DateYear GetYear(Date* date);
		[LinkName("g_date_is_first_of_month")]
		public static extern c_int IsFirstOfMonth(Date* date);
		[LinkName("g_date_is_last_of_month")]
		public static extern c_int IsLastOfMonth(Date* date);
		[LinkName("g_date_order")]
		public static extern void Order(Date* date1, Date* date2);
		[LinkName("g_date_set_day")]
		public static extern void SetDay(Date* date, DateDay day);
		[LinkName("g_date_set_dmy")]
		public static extern void SetDmy(Date* date, DateDay day, DateMonth month, DateYear y);
		[LinkName("g_date_set_julian")]
		public static extern void SetJulian(Date* date, c_uint julian_date);
		[LinkName("g_date_set_month")]
		public static extern void SetMonth(Date* date, DateMonth month);
		[LinkName("g_date_set_parse")]
		public static extern void SetParse(Date* date, char8* str);
		[LinkName("g_date_set_time")]
		public static extern void SetTime(Date* date, Time time_);
		[LinkName("g_date_set_time_t")]
		public static extern void SetTimeT(Date* date, c_long timet);
		[LinkName("g_date_set_time_val")]
		public static extern void SetTimeVal(Date* date, TimeVal* timeval);
		[LinkName("g_date_set_year")]
		public static extern void SetYear(Date* date, DateYear year);
		[LinkName("g_date_subtract_days")]
		public static extern void SubtractDays(Date* date, c_uint n_days);
		[LinkName("g_date_subtract_months")]
		public static extern void SubtractMonths(Date* date, c_uint n_months);
		[LinkName("g_date_subtract_years")]
		public static extern void SubtractYears(Date* date, c_uint n_years);
		[LinkName("g_date_to_struct_tm")]
		public static extern void ToStructTm(Date* date, void** tm);
		[LinkName("g_date_valid")]
		public static extern c_int Valid(Date* date);
	}
	[CRepr]
	public struct DateTime
	{
		[LinkName("g_date_time_new")]
		public static extern DateTime* New(TimeZone* tz, c_int year, c_int month, c_int day, c_int hour, c_int minute, double seconds);
		[LinkName("g_date_time_new_from_iso8601")]
		public static extern DateTime* NewFromIso8601(char8* text, TimeZone* default_tz);
		[LinkName("g_date_time_new_from_timeval_local")]
		public static extern DateTime* NewFromTimevalLocal(TimeVal* tv);
		[LinkName("g_date_time_new_from_timeval_utc")]
		public static extern DateTime* NewFromTimevalUtc(TimeVal* tv);
		[LinkName("g_date_time_new_from_unix_local")]
		public static extern DateTime* NewFromUnixLocal(c_longlong t);
		[LinkName("g_date_time_new_from_unix_utc")]
		public static extern DateTime* NewFromUnixUtc(c_longlong t);
		[LinkName("g_date_time_new_local")]
		public static extern DateTime* NewLocal(c_int year, c_int month, c_int day, c_int hour, c_int minute, double seconds);
		[LinkName("g_date_time_new_now")]
		public static extern DateTime* NewNow(TimeZone* tz);
		[LinkName("g_date_time_new_now_local")]
		public static extern DateTime* NewNowLocal();
		[LinkName("g_date_time_new_now_utc")]
		public static extern DateTime* NewNowUtc();
		[LinkName("g_date_time_new_utc")]
		public static extern DateTime* NewUtc(c_int year, c_int month, c_int day, c_int hour, c_int minute, double seconds);
		[LinkName("g_date_time_add")]
		public static extern DateTime* Add(DateTime* datetime, TimeSpan timespan);
		[LinkName("g_date_time_add_days")]
		public static extern DateTime* AddDays(DateTime* datetime, c_int days);
		[LinkName("g_date_time_add_full")]
		public static extern DateTime* AddFull(DateTime* datetime, c_int years, c_int months, c_int days, c_int hours, c_int minutes, double seconds);
		[LinkName("g_date_time_add_hours")]
		public static extern DateTime* AddHours(DateTime* datetime, c_int hours);
		[LinkName("g_date_time_add_minutes")]
		public static extern DateTime* AddMinutes(DateTime* datetime, c_int minutes);
		[LinkName("g_date_time_add_months")]
		public static extern DateTime* AddMonths(DateTime* datetime, c_int months);
		[LinkName("g_date_time_add_seconds")]
		public static extern DateTime* AddSeconds(DateTime* datetime, double seconds);
		[LinkName("g_date_time_add_weeks")]
		public static extern DateTime* AddWeeks(DateTime* datetime, c_int weeks);
		[LinkName("g_date_time_add_years")]
		public static extern DateTime* AddYears(DateTime* datetime, c_int years);
		[LinkName("g_date_time_compare")]
		public static extern c_int Compare(DateTime dt1, DateTime dt2);
		[LinkName("g_date_time_difference")]
		public static extern TimeSpan Difference(DateTime* end, DateTime* begin);
		[LinkName("g_date_time_equal")]
		public static extern c_int Equal(DateTime dt1, DateTime dt2);
		[LinkName("g_date_time_format")]
		public static extern char8* Format(DateTime* datetime, char8* format);
		[LinkName("g_date_time_format_iso8601")]
		public static extern char8* FormatIso8601(DateTime* datetime);
		[LinkName("g_date_time_get_day_of_month")]
		public static extern c_int GetDayOfMonth(DateTime* datetime);
		[LinkName("g_date_time_get_day_of_week")]
		public static extern c_int GetDayOfWeek(DateTime* datetime);
		[LinkName("g_date_time_get_day_of_year")]
		public static extern c_int GetDayOfYear(DateTime* datetime);
		[LinkName("g_date_time_get_hour")]
		public static extern c_int GetHour(DateTime* datetime);
		[LinkName("g_date_time_get_microsecond")]
		public static extern c_int GetMicrosecond(DateTime* datetime);
		[LinkName("g_date_time_get_minute")]
		public static extern c_int GetMinute(DateTime* datetime);
		[LinkName("g_date_time_get_month")]
		public static extern c_int GetMonth(DateTime* datetime);
		[LinkName("g_date_time_get_second")]
		public static extern c_int GetSecond(DateTime* datetime);
		[LinkName("g_date_time_get_seconds")]
		public static extern double GetSeconds(DateTime* datetime);
		[LinkName("g_date_time_get_timezone")]
		public static extern TimeZone* GetTimezone(DateTime* datetime);
		[LinkName("g_date_time_get_timezone_abbreviation")]
		public static extern char8* GetTimezoneAbbreviation(DateTime* datetime);
		[LinkName("g_date_time_get_utc_offset")]
		public static extern TimeSpan GetUtcOffset(DateTime* datetime);
		[LinkName("g_date_time_get_week_numbering_year")]
		public static extern c_int GetWeekNumberingYear(DateTime* datetime);
		[LinkName("g_date_time_get_week_of_year")]
		public static extern c_int GetWeekOfYear(DateTime* datetime);
		[LinkName("g_date_time_get_year")]
		public static extern c_int GetYear(DateTime* datetime);
		[LinkName("g_date_time_get_ymd")]
		public static extern void GetYmd(DateTime* datetime, c_int* year, c_int* month, c_int* day);
		[LinkName("g_date_time_hash")]
		public static extern c_uint Hash(DateTime datetime);
		[LinkName("g_date_time_is_daylight_savings")]
		public static extern c_int IsDaylightSavings(DateTime* datetime);
		[LinkName("g_date_time_ref")]
		public static extern DateTime* Ref(DateTime* datetime);
		[LinkName("g_date_time_to_local")]
		public static extern DateTime* ToLocal(DateTime* datetime);
		[LinkName("g_date_time_to_timeval")]
		public static extern c_int ToTimeval(DateTime* datetime, TimeVal* tv);
		[LinkName("g_date_time_to_timezone")]
		public static extern DateTime* ToTimezone(DateTime* datetime, TimeZone* tz);
		[LinkName("g_date_time_to_unix")]
		public static extern c_longlong ToUnix(DateTime* datetime);
		[LinkName("g_date_time_to_utc")]
		public static extern DateTime* ToUtc(DateTime* datetime);
		[LinkName("g_date_time_unref")]
		public static extern void Unref(DateTime* datetime);
	}
	[CRepr]
	public struct DebugKey
	{
		public char8* key;
		public c_uint value;
	}
	[CRepr]
	public struct Dir : int
	{
		[LinkName("g_dir_close")]
		public static extern void Close(Dir* dir);
		[LinkName("g_dir_read_name")]
		public static extern char8* ReadName(Dir* dir);
		[LinkName("g_dir_rewind")]
		public static extern void Rewind(Dir* dir);
	}
	[CRepr]
	public struct Error
	{
		public Quark domain;
		public c_int code;
		public char8* message;
		[LinkName("g_error_new_literal")]
		public static extern Error* NewLiteral(Quark domain, c_int code, char8* message);
		[LinkName("g_error_copy")]
		public static extern Error* Copy(Error* error);
		[LinkName("g_error_free")]
		public static extern void Free(Error* error);
		[LinkName("g_error_matches")]
		public static extern c_int Matches(Error* error, Quark domain, c_int code);
	}
	[CRepr]
	public struct HashTable
	{
	}
	[CRepr]
	public struct HashTableIter
	{
		public void* dummy1;
		public void* dummy2;
		public void* dummy3;
		public c_int dummy4;
		public c_int dummy5;
		public void* dummy6;
		[LinkName("g_hash_table_iter_init")]
		public static extern void Init(HashTableIter* iter, GLib.HashTable* hash_table);
		[LinkName("g_hash_table_iter_next")]
		public static extern c_int Next(HashTableIter* iter, void** key, void** value);
		[LinkName("g_hash_table_iter_remove")]
		public static extern void Remove(HashTableIter* iter);
		[LinkName("g_hash_table_iter_replace")]
		public static extern void Replace(HashTableIter* iter, void* value);
		[LinkName("g_hash_table_iter_steal")]
		public static extern void Steal(HashTableIter* iter);
	}
	[CRepr]
	public struct Hmac : int
	{
		[LinkName("g_hmac_get_digest")]
		public static extern void GetDigest(Hmac* hmac, c_uchar* buffer, c_ulong* digest_len);
		[LinkName("g_hmac_get_string")]
		public static extern char8* GetString(Hmac* hmac);
		[LinkName("g_hmac_unref")]
		public static extern void Unref(Hmac* hmac);
		[LinkName("g_hmac_update")]
		public static extern void Update(Hmac* hmac, c_uchar* data, c_long length);
	}
	[CRepr]
	public struct Hook
	{
		public void* data;
		public Hook* next;
		public Hook* prev;
		public c_uint ref_count;
		public c_ulong hook_id;
		public c_uint flags;
		public void* func;
		public DestroyNotify destroy;
		[LinkName("g_hook_compare_ids")]
		public static extern c_int CompareIds(Hook* new_hook, Hook* sibling);
	}
	[CRepr]
	public struct HookList
	{
		public c_ulong seq_id;
		[Bitfield<c_uint>(.Private, .Bits(16), "hook_size")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_setup")]
		private c_uint mBitfield;
		public Hook* hooks;
		public void* dummy3;
		public HookFinalizeFunc finalize_hook;
		public void* dummy;
		[LinkName("g_hook_list_clear")]
		public static extern void Clear(HookList* hook_list);
		[LinkName("g_hook_list_init")]
		public static extern void Init(HookList* hook_list, c_uint hook_size);
		[LinkName("g_hook_list_invoke")]
		public static extern void Invoke(HookList* hook_list, c_int may_recurse);
		[LinkName("g_hook_list_invoke_check")]
		public static extern void InvokeCheck(HookList* hook_list, c_int may_recurse);
	}
	[CRepr]
	public struct IConv : int
	{
	}
	[CRepr]
	public struct IOChannel
	{
		public c_int ref_count;
		public IOFuncs* funcs;
		public char8* encoding;
		public IConv read_cd;
		public IConv write_cd;
		public char8* line_term;
		public c_uint line_term_len;
		public c_ulong buf_size;
		public String* read_buf;
		public String* encoded_read_buf;
		public String* write_buf;
		public c_char partial_write_buf;
		[Bitfield<c_uint>(.Private, .Bits(1), "use_buffer")]
		[Bitfield<c_uint>(.Private, .Bits(1), "do_encode")]
		[Bitfield<c_uint>(.Private, .Bits(1), "close_on_unref")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_readable")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_writeable")]
		[Bitfield<c_uint>(.Private, .Bits(1), "is_seekable")]
		private c_uint mBitfield;
		public void* reserved1;
		public void* reserved2;
		[LinkName("g_io_channel_new_file")]
		public static extern IOChannel* NewFile(char8* filename, char8* mode);
		[LinkName("g_io_channel_unix_new")]
		public static extern IOChannel* UnixNew(c_int fd);
		[LinkName("g_io_channel_close")]
		public static extern void Close(IOChannel* channel);
		[LinkName("g_io_channel_flush")]
		public static extern IOStatus Flush(IOChannel* channel);
		[LinkName("g_io_channel_get_buffer_condition")]
		public static extern IOCondition GetBufferCondition(IOChannel* channel);
		[LinkName("g_io_channel_get_buffer_size")]
		public static extern c_ulong GetBufferSize(IOChannel* channel);
		[LinkName("g_io_channel_get_buffered")]
		public static extern c_int GetBuffered(IOChannel* channel);
		[LinkName("g_io_channel_get_close_on_unref")]
		public static extern c_int GetCloseOnUnref(IOChannel* channel);
		[LinkName("g_io_channel_get_encoding")]
		public static extern char8* GetEncoding(IOChannel* channel);
		[LinkName("g_io_channel_get_flags")]
		public static extern IOFlags GetFlags(IOChannel* channel);
		[LinkName("g_io_channel_get_line_term")]
		public static extern char8* GetLineTerm(IOChannel* channel, c_int* length);
		[LinkName("g_io_channel_init")]
		public static extern void Init(IOChannel* channel);
		[LinkName("g_io_channel_read")]
		public static extern IOError Read(IOChannel* channel, char8* buf, c_ulong count, c_ulong* bytes_read);
		[LinkName("g_io_channel_read_chars")]
		public static extern IOStatus ReadChars(IOChannel* channel, c_uchar* buf, c_ulong count, c_ulong* bytes_read);
		[LinkName("g_io_channel_read_line")]
		public static extern IOStatus ReadLine(IOChannel* channel, char8** str_return, c_ulong* length, c_ulong* terminator_pos);
		[LinkName("g_io_channel_read_line_string")]
		public static extern IOStatus ReadLineString(IOChannel* channel, String* buffer, c_ulong* terminator_pos);
		[LinkName("g_io_channel_read_to_end")]
		public static extern IOStatus ReadToEnd(IOChannel* channel, c_uchar** str_return, c_ulong* length);
		[LinkName("g_io_channel_read_unichar")]
		public static extern IOStatus ReadUnichar(IOChannel* channel, c_uint* thechar);
		[LinkName("g_io_channel_ref")]
		public static extern IOChannel* Ref(IOChannel* channel);
		[LinkName("g_io_channel_seek")]
		public static extern IOError Seek(IOChannel* channel, c_longlong offset, SeekType type);
		[LinkName("g_io_channel_seek_position")]
		public static extern IOStatus SeekPosition(IOChannel* channel, c_longlong offset, SeekType type);
		[LinkName("g_io_channel_set_buffer_size")]
		public static extern void SetBufferSize(IOChannel* channel, c_ulong size);
		[LinkName("g_io_channel_set_buffered")]
		public static extern void SetBuffered(IOChannel* channel, c_int buffered);
		[LinkName("g_io_channel_set_close_on_unref")]
		public static extern void SetCloseOnUnref(IOChannel* channel, c_int do_close);
		[LinkName("g_io_channel_set_encoding")]
		public static extern IOStatus SetEncoding(IOChannel* channel, char8* encoding);
		[LinkName("g_io_channel_set_flags")]
		public static extern IOStatus SetFlags(IOChannel* channel, IOFlags flags);
		[LinkName("g_io_channel_set_line_term")]
		public static extern void SetLineTerm(IOChannel* channel, char8* line_term, c_int length);
		[LinkName("g_io_channel_shutdown")]
		public static extern IOStatus Shutdown(IOChannel* channel, c_int flush);
		[LinkName("g_io_channel_unix_get_fd")]
		public static extern c_int UnixGetFd(IOChannel* channel);
		[LinkName("g_io_channel_unref")]
		public static extern void Unref(IOChannel* channel);
		[LinkName("g_io_channel_write")]
		public static extern IOError Write(IOChannel* channel, char8* buf, c_ulong count, c_ulong* bytes_written);
		[LinkName("g_io_channel_write_chars")]
		public static extern IOStatus WriteChars(IOChannel* channel, c_uchar* buf, c_long count, c_ulong* bytes_written);
		[LinkName("g_io_channel_write_unichar")]
		public static extern IOStatus WriteUnichar(IOChannel* channel, c_uint thechar);
	}
	[CRepr]
	public struct IOFuncs
	{
		public function IOStatus(IOChannel* channel, char8* buf, c_ulong count, c_ulong* bytes_read) io_read;
		public function IOStatus(IOChannel* channel, char8* buf, c_ulong count, c_ulong* bytes_written) io_write;
		public function IOStatus(IOChannel* channel, c_longlong offset, SeekType type) io_seek;
		public function IOStatus(IOChannel* channel) io_close;
		public function Source*(IOChannel* channel, IOCondition condition) io_create_watch;
		public function void(IOChannel* channel) io_free;
		public function IOStatus(IOChannel* channel, IOFlags flags) io_set_flags;
		public function IOFlags(IOChannel* channel) io_get_flags;
	}
	[CRepr]
	public struct KeyFile
	{
		[LinkName("g_key_file_new")]
		public static extern KeyFile* New();
		[LinkName("g_key_file_get_boolean")]
		public static extern c_int GetBoolean(KeyFile* key_file, char8* group_name, char8* key);
		[LinkName("g_key_file_get_boolean_list")]
		public static extern c_int* GetBooleanList(KeyFile* key_file, char8* group_name, char8* key, c_ulong* length);
		[LinkName("g_key_file_get_comment")]
		public static extern char8* GetComment(KeyFile* key_file, char8* group_name, char8* key);
		[LinkName("g_key_file_get_double")]
		public static extern double GetDouble(KeyFile* key_file, char8* group_name, char8* key);
		[LinkName("g_key_file_get_double_list")]
		public static extern double* GetDoubleList(KeyFile* key_file, char8* group_name, char8* key, c_ulong* length);
		[LinkName("g_key_file_get_groups")]
		public static extern char8** GetGroups(KeyFile* key_file, c_ulong* length);
		[LinkName("g_key_file_get_int64")]
		public static extern c_longlong GetInt64(KeyFile* key_file, char8* group_name, char8* key);
		[LinkName("g_key_file_get_integer")]
		public static extern c_int GetInteger(KeyFile* key_file, char8* group_name, char8* key);
		[LinkName("g_key_file_get_integer_list")]
		public static extern c_int* GetIntegerList(KeyFile* key_file, char8* group_name, char8* key, c_ulong* length);
		[LinkName("g_key_file_get_keys")]
		public static extern char8** GetKeys(KeyFile* key_file, char8* group_name, c_ulong* length);
		[LinkName("g_key_file_get_locale_for_key")]
		public static extern char8* GetLocaleForKey(KeyFile* key_file, char8* group_name, char8* key, char8* locale);
		[LinkName("g_key_file_get_locale_string")]
		public static extern char8* GetLocaleString(KeyFile* key_file, char8* group_name, char8* key, char8* locale);
		[LinkName("g_key_file_get_locale_string_list")]
		public static extern char8** GetLocaleStringList(KeyFile* key_file, char8* group_name, char8* key, char8* locale, c_ulong* length);
		[LinkName("g_key_file_get_start_group")]
		public static extern char8* GetStartGroup(KeyFile* key_file);
		[LinkName("g_key_file_get_string")]
		public static extern char8* GetString(KeyFile* key_file, char8* group_name, char8* key);
		[LinkName("g_key_file_get_string_list")]
		public static extern char8** GetStringList(KeyFile* key_file, char8* group_name, char8* key, c_ulong* length);
		[LinkName("g_key_file_get_uint64")]
		public static extern c_ulonglong GetUint64(KeyFile* key_file, char8* group_name, char8* key);
		[LinkName("g_key_file_get_value")]
		public static extern char8* GetValue(KeyFile* key_file, char8* group_name, char8* key);
		[LinkName("g_key_file_has_group")]
		public static extern c_int HasGroup(KeyFile* key_file, char8* group_name);
		[LinkName("g_key_file_load_from_bytes")]
		public static extern c_int LoadFromBytes(KeyFile* key_file, Bytes* bytes, KeyFileFlags flags);
		[LinkName("g_key_file_load_from_data")]
		public static extern c_int LoadFromData(KeyFile* key_file, char8* data, c_ulong length, KeyFileFlags flags);
		[LinkName("g_key_file_load_from_data_dirs")]
		public static extern c_int LoadFromDataDirs(KeyFile* key_file, char8* file, char8** full_path, KeyFileFlags flags);
		[LinkName("g_key_file_load_from_dirs")]
		public static extern c_int LoadFromDirs(KeyFile* key_file, char8* file, char8** search_dirs, char8** full_path, KeyFileFlags flags);
		[LinkName("g_key_file_load_from_file")]
		public static extern c_int LoadFromFile(KeyFile* key_file, char8* file, KeyFileFlags flags);
		[LinkName("g_key_file_remove_comment")]
		public static extern c_int RemoveComment(KeyFile* key_file, char8* group_name, char8* key);
		[LinkName("g_key_file_remove_group")]
		public static extern c_int RemoveGroup(KeyFile* key_file, char8* group_name);
		[LinkName("g_key_file_remove_key")]
		public static extern c_int RemoveKey(KeyFile* key_file, char8* group_name, char8* key);
		[LinkName("g_key_file_save_to_file")]
		public static extern c_int SaveToFile(KeyFile* key_file, char8* filename);
		[LinkName("g_key_file_set_boolean")]
		public static extern void SetBoolean(KeyFile* key_file, char8* group_name, char8* key, c_int value);
		[LinkName("g_key_file_set_boolean_list")]
		public static extern void SetBooleanList(KeyFile* key_file, char8* group_name, char8* key, c_int* list, c_ulong length);
		[LinkName("g_key_file_set_comment")]
		public static extern c_int SetComment(KeyFile* key_file, char8* group_name, char8* key, char8* comment);
		[LinkName("g_key_file_set_double")]
		public static extern void SetDouble(KeyFile* key_file, char8* group_name, char8* key, double value);
		[LinkName("g_key_file_set_double_list")]
		public static extern void SetDoubleList(KeyFile* key_file, char8* group_name, char8* key, double* list, c_ulong length);
		[LinkName("g_key_file_set_int64")]
		public static extern void SetInt64(KeyFile* key_file, char8* group_name, char8* key, c_longlong value);
		[LinkName("g_key_file_set_integer")]
		public static extern void SetInteger(KeyFile* key_file, char8* group_name, char8* key, c_int value);
		[LinkName("g_key_file_set_integer_list")]
		public static extern void SetIntegerList(KeyFile* key_file, char8* group_name, char8* key, c_int* list, c_ulong length);
		[LinkName("g_key_file_set_list_separator")]
		public static extern void SetListSeparator(KeyFile* key_file, c_char separator);
		[LinkName("g_key_file_set_locale_string")]
		public static extern void SetLocaleString(KeyFile* key_file, char8* group_name, char8* key, char8* locale, char8* string);
		[LinkName("g_key_file_set_locale_string_list")]
		public static extern void SetLocaleStringList(KeyFile* key_file, char8* group_name, char8* key, char8* locale, char8** list, c_ulong length);
		[LinkName("g_key_file_set_string")]
		public static extern void SetString(KeyFile* key_file, char8* group_name, char8* key, char8* string);
		[LinkName("g_key_file_set_string_list")]
		public static extern void SetStringList(KeyFile* key_file, char8* group_name, char8* key, char8** list, c_ulong length);
		[LinkName("g_key_file_set_uint64")]
		public static extern void SetUint64(KeyFile* key_file, char8* group_name, char8* key, c_ulonglong value);
		[LinkName("g_key_file_set_value")]
		public static extern void SetValue(KeyFile* key_file, char8* group_name, char8* key, char8* value);
		[LinkName("g_key_file_to_data")]
		public static extern char8* ToData(KeyFile* key_file, c_ulong* length);
		[LinkName("g_key_file_unref")]
		public static extern void Unref(KeyFile* key_file);
	}
	[CRepr]
	public struct List
	{
		public void* data;
		public GLib.List* next;
		public GLib.List* prev;
	}
	[CRepr]
	public struct LogField
	{
		public char8* key;
		public void* value;
		public c_long length;
	}
	[CRepr]
	public struct MainContext
	{
		[LinkName("g_main_context_new")]
		public static extern MainContext* New();
		[LinkName("g_main_context_new_with_flags")]
		public static extern MainContext* NewWithFlags(MainContextFlags flags);
		[LinkName("g_main_context_acquire")]
		public static extern c_int Acquire(MainContext* context);
		[LinkName("g_main_context_add_poll")]
		public static extern void AddPoll(MainContext* context, PollFD* fd, c_int priority);
		[LinkName("g_main_context_check")]
		public static extern c_int Check(MainContext* context, c_int max_priority, PollFD* fds, c_int n_fds);
		[LinkName("g_main_context_dispatch")]
		public static extern void Dispatch(MainContext* context);
		[LinkName("g_main_context_find_source_by_funcs_user_data")]
		public static extern Source* FindSourceByFuncsUserData(MainContext* context, SourceFuncs* funcs, void* user_data);
		[LinkName("g_main_context_find_source_by_id")]
		public static extern Source* FindSourceById(MainContext* context, c_uint source_id);
		[LinkName("g_main_context_find_source_by_user_data")]
		public static extern Source* FindSourceByUserData(MainContext* context, void* user_data);
		[LinkName("g_main_context_invoke_full")]
		public static extern void InvokeFull(MainContext* context, c_int priority, SourceFunc function_, void* data, DestroyNotify notify);
		[LinkName("g_main_context_is_owner")]
		public static extern c_int IsOwner(MainContext* context);
		[LinkName("g_main_context_iteration")]
		public static extern c_int Iteration(MainContext* context, c_int may_block);
		[LinkName("g_main_context_pending")]
		public static extern c_int Pending(MainContext* context);
		[LinkName("g_main_context_pop_thread_default")]
		public static extern void PopThreadDefault(MainContext* context);
		[LinkName("g_main_context_prepare")]
		public static extern c_int Prepare(MainContext* context, c_int* priority);
		[LinkName("g_main_context_push_thread_default")]
		public static extern void PushThreadDefault(MainContext* context);
		[LinkName("g_main_context_query")]
		public static extern c_int Query(MainContext* context, c_int max_priority, c_int* timeout_, PollFD* fds, c_int n_fds);
		[LinkName("g_main_context_ref")]
		public static extern MainContext* Ref(MainContext* context);
		[LinkName("g_main_context_release")]
		public static extern void Release(MainContext* context);
		[LinkName("g_main_context_remove_poll")]
		public static extern void RemovePoll(MainContext* context, PollFD* fd);
		[LinkName("g_main_context_unref")]
		public static extern void Unref(MainContext* context);
		[LinkName("g_main_context_wait")]
		public static extern c_int Wait(MainContext* context, Cond* cond, Mutex* mutex);
		[LinkName("g_main_context_wakeup")]
		public static extern void Wakeup(MainContext* context);
	}
	[CRepr]
	public struct MainLoop
	{
		[LinkName("g_main_loop_new")]
		public static extern MainLoop* New(MainContext* context, c_int is_running);
		[LinkName("g_main_loop_get_context")]
		public static extern MainContext* GetContext(MainLoop* loop);
		[LinkName("g_main_loop_is_running")]
		public static extern c_int IsRunning(MainLoop* loop);
		[LinkName("g_main_loop_quit")]
		public static extern void Quit(MainLoop* loop);
		[LinkName("g_main_loop_ref")]
		public static extern MainLoop* Ref(MainLoop* loop);
		[LinkName("g_main_loop_run")]
		public static extern void Run(MainLoop* loop);
		[LinkName("g_main_loop_unref")]
		public static extern void Unref(MainLoop* loop);
	}
	[CRepr]
	public struct MappedFile
	{
		[LinkName("g_mapped_file_new")]
		public static extern MappedFile* New(char8* filename, c_int writable);
		[LinkName("g_mapped_file_new_from_fd")]
		public static extern MappedFile* NewFromFd(c_int fd, c_int writable);
		[LinkName("g_mapped_file_free")]
		public static extern void Free(MappedFile* file);
		[LinkName("g_mapped_file_get_bytes")]
		public static extern Bytes* GetBytes(MappedFile* file);
		[LinkName("g_mapped_file_get_contents")]
		public static extern char8* GetContents(MappedFile* file);
		[LinkName("g_mapped_file_get_length")]
		public static extern c_ulong GetLength(MappedFile* file);
		[LinkName("g_mapped_file_ref")]
		public static extern MappedFile* Ref(MappedFile* file);
		[LinkName("g_mapped_file_unref")]
		public static extern void Unref(MappedFile* file);
	}
	[CRepr]
	public struct MarkupParseContext
	{
		[LinkName("g_markup_parse_context_new")]
		public static extern MarkupParseContext* New(MarkupParser* parser, MarkupParseFlags flags, void* user_data, DestroyNotify user_data_dnotify);
		[LinkName("g_markup_parse_context_end_parse")]
		public static extern c_int EndParse(MarkupParseContext* context);
		[LinkName("g_markup_parse_context_free")]
		public static extern void Free(MarkupParseContext* context);
		[LinkName("g_markup_parse_context_get_element")]
		public static extern char8* GetElement(MarkupParseContext* context);
		[LinkName("g_markup_parse_context_get_position")]
		public static extern void GetPosition(MarkupParseContext* context, c_int* line_number, c_int* char_number);
		[LinkName("g_markup_parse_context_get_user_data")]
		public static extern void* GetUserData(MarkupParseContext* context);
		[LinkName("g_markup_parse_context_parse")]
		public static extern c_int Parse(MarkupParseContext* context, char8* text, c_long text_len);
		[LinkName("g_markup_parse_context_pop")]
		public static extern void* Pop(MarkupParseContext* context);
		[LinkName("g_markup_parse_context_push")]
		public static extern void Push(MarkupParseContext* context, MarkupParser* parser, void* user_data);
		[LinkName("g_markup_parse_context_ref")]
		public static extern MarkupParseContext* Ref(MarkupParseContext* context);
		[LinkName("g_markup_parse_context_unref")]
		public static extern void Unref(MarkupParseContext* context);
	}
	[CRepr]
	public struct MarkupParser
	{
		public function void(MarkupParseContext* context, char8* element_name, char8** attribute_names, char8** attribute_values, void* user_data) start_element;
		public function void(MarkupParseContext* context, char8* element_name, void* user_data) end_element;
		public function void(MarkupParseContext* context, char8* text, c_ulong text_len, void* user_data) text;
		public function void(MarkupParseContext* context, char8* passthrough_text, c_ulong text_len, void* user_data) passthrough;
		public function void(MarkupParseContext* context, Error* error, void* user_data) error;
	}
	[CRepr]
	public struct MatchInfo
	{
		[LinkName("g_match_info_expand_references")]
		public static extern char8* ExpandReferences(MatchInfo* match_info, char8* string_to_expand);
		[LinkName("g_match_info_fetch")]
		public static extern char8* Fetch(MatchInfo* match_info, c_int match_num);
		[LinkName("g_match_info_fetch_all")]
		public static extern char8** FetchAll(MatchInfo* match_info);
		[LinkName("g_match_info_fetch_named")]
		public static extern char8* FetchNamed(MatchInfo* match_info, char8* name);
		[LinkName("g_match_info_fetch_named_pos")]
		public static extern c_int FetchNamedPos(MatchInfo* match_info, char8* name, c_int* start_pos, c_int* end_pos);
		[LinkName("g_match_info_fetch_pos")]
		public static extern c_int FetchPos(MatchInfo* match_info, c_int match_num, c_int* start_pos, c_int* end_pos);
		[LinkName("g_match_info_free")]
		public static extern void Free(MatchInfo* match_info);
		[LinkName("g_match_info_get_match_count")]
		public static extern c_int GetMatchCount(MatchInfo* match_info);
		[LinkName("g_match_info_get_regex")]
		public static extern Regex* GetRegex(MatchInfo* match_info);
		[LinkName("g_match_info_get_string")]
		public static extern char8* GetString(MatchInfo* match_info);
		[LinkName("g_match_info_is_partial_match")]
		public static extern c_int IsPartialMatch(MatchInfo* match_info);
		[LinkName("g_match_info_matches")]
		public static extern c_int Matches(MatchInfo* match_info);
		[LinkName("g_match_info_next")]
		public static extern c_int Next(MatchInfo* match_info);
		[LinkName("g_match_info_ref")]
		public static extern MatchInfo* Ref(MatchInfo* match_info);
		[LinkName("g_match_info_unref")]
		public static extern void Unref(MatchInfo* match_info);
	}
	[CRepr]
	public struct MemVTable
	{
		public function void*(c_ulong n_bytes) malloc;
		public function void*(void* mem, c_ulong n_bytes) realloc;
		public function void(void* mem) free;
		public function void*(c_ulong n_blocks, c_ulong n_block_bytes) calloc;
		public function void*(c_ulong n_bytes) try_malloc;
		public function void*(void* mem, c_ulong n_bytes) try_realloc;
	}
	[CRepr]
	public struct Node
	{
		public void* data;
		public Node* next;
		public Node* prev;
		public Node* parent;
		public Node* children;
		[LinkName("g_node_child_index")]
		public static extern c_int ChildIndex(Node* node, void* data);
		[LinkName("g_node_child_position")]
		public static extern c_int ChildPosition(Node* node, Node* child);
		[LinkName("g_node_depth")]
		public static extern c_uint Depth(Node* node);
		[LinkName("g_node_destroy")]
		public static extern void Destroy(Node* root);
		[LinkName("g_node_is_ancestor")]
		public static extern c_int IsAncestor(Node* node, Node* descendant);
		[LinkName("g_node_max_height")]
		public static extern c_uint MaxHeight(Node* root);
		[LinkName("g_node_n_children")]
		public static extern c_uint NChildren(Node* node);
		[LinkName("g_node_n_nodes")]
		public static extern c_uint NNodes(Node* root, TraverseFlags flags);
		[LinkName("g_node_reverse_children")]
		public static extern void ReverseChildren(Node* node);
		[LinkName("g_node_unlink")]
		public static extern void Unlink(Node* node);
	}
	[CRepr]
	public struct Once
	{
		public OnceStatus status;
		public void* retval;
	}
	[CRepr]
	public struct OptionContext : int
	{
		[LinkName("g_option_context_add_group")]
		public static extern void AddGroup(OptionContext* context, OptionGroup* group);
		[LinkName("g_option_context_add_main_entries")]
		public static extern void AddMainEntries(OptionContext* context, OptionEntry* entries, char8* translation_domain);
		[LinkName("g_option_context_free")]
		public static extern void Free(OptionContext* context);
		[LinkName("g_option_context_get_description")]
		public static extern char8* GetDescription(OptionContext* context);
		[LinkName("g_option_context_get_help")]
		public static extern char8* GetHelp(OptionContext* context, c_int main_help, OptionGroup* group);
		[LinkName("g_option_context_get_help_enabled")]
		public static extern c_int GetHelpEnabled(OptionContext* context);
		[LinkName("g_option_context_get_ignore_unknown_options")]
		public static extern c_int GetIgnoreUnknownOptions(OptionContext* context);
		[LinkName("g_option_context_get_main_group")]
		public static extern OptionGroup* GetMainGroup(OptionContext* context);
		[LinkName("g_option_context_get_strict_posix")]
		public static extern c_int GetStrictPosix(OptionContext* context);
		[LinkName("g_option_context_get_summary")]
		public static extern char8* GetSummary(OptionContext* context);
		[LinkName("g_option_context_parse")]
		public static extern c_int Parse(OptionContext* context, c_int* argc, char8*** argv);
		[LinkName("g_option_context_parse_strv")]
		public static extern c_int ParseStrv(OptionContext* context, char8*** arguments);
		[LinkName("g_option_context_set_description")]
		public static extern void SetDescription(OptionContext* context, char8* description);
		[LinkName("g_option_context_set_help_enabled")]
		public static extern void SetHelpEnabled(OptionContext* context, c_int help_enabled);
		[LinkName("g_option_context_set_ignore_unknown_options")]
		public static extern void SetIgnoreUnknownOptions(OptionContext* context, c_int ignore_unknown);
		[LinkName("g_option_context_set_main_group")]
		public static extern void SetMainGroup(OptionContext* context, OptionGroup* group);
		[LinkName("g_option_context_set_strict_posix")]
		public static extern void SetStrictPosix(OptionContext* context, c_int strict_posix);
		[LinkName("g_option_context_set_summary")]
		public static extern void SetSummary(OptionContext* context, char8* summary);
		[LinkName("g_option_context_set_translate_func")]
		public static extern void SetTranslateFunc(OptionContext* context, TranslateFunc func, void* data, DestroyNotify destroy_notify);
		[LinkName("g_option_context_set_translation_domain")]
		public static extern void SetTranslationDomain(OptionContext* context, char8* domain);
	}
	[CRepr]
	public struct OptionEntry
	{
		public char8* long_name;
		public c_char short_name;
		public c_int flags;
		public OptionArg arg;
		public void* arg_data;
		public char8* description;
		public char8* arg_description;
	}
	[CRepr]
	public struct OptionGroup
	{
		[LinkName("g_option_group_new")]
		public static extern OptionGroup* New(char8* name, char8* description, char8* help_description, void* user_data, DestroyNotify destroy);
		[LinkName("g_option_group_add_entries")]
		public static extern void AddEntries(OptionGroup* group, OptionEntry* entries);
		[LinkName("g_option_group_free")]
		public static extern void Free(OptionGroup* group);
		[LinkName("g_option_group_ref")]
		public static extern OptionGroup* Ref(OptionGroup* group);
		[LinkName("g_option_group_set_translate_func")]
		public static extern void SetTranslateFunc(OptionGroup* group, TranslateFunc func, void* data, DestroyNotify destroy_notify);
		[LinkName("g_option_group_set_translation_domain")]
		public static extern void SetTranslationDomain(OptionGroup* group, char8* domain);
		[LinkName("g_option_group_unref")]
		public static extern void Unref(OptionGroup* group);
	}
	[CRepr]
	public struct PathBuf
	{
		public void* dummy;
		[LinkName("g_path_buf_clear")]
		public static extern void Clear(PathBuf* buf);
		[LinkName("g_path_buf_clear_to_path")]
		public static extern char8* ClearToPath(PathBuf* buf);
		[LinkName("g_path_buf_free")]
		public static extern void Free(PathBuf* buf);
		[LinkName("g_path_buf_free_to_path")]
		public static extern char8* FreeToPath(PathBuf* buf);
		[LinkName("g_path_buf_init")]
		public static extern PathBuf* Init(PathBuf* buf);
		[LinkName("g_path_buf_init_from_path")]
		public static extern PathBuf* InitFromPath(PathBuf* buf, char8* path);
		[LinkName("g_path_buf_pop")]
		public static extern c_int Pop(PathBuf* buf);
		[LinkName("g_path_buf_push")]
		public static extern PathBuf* Push(PathBuf* buf, char8* path);
		[LinkName("g_path_buf_set_extension")]
		public static extern c_int SetExtension(PathBuf* buf, char8* extension_);
		[LinkName("g_path_buf_set_filename")]
		public static extern c_int SetFilename(PathBuf* buf, char8* file_name);
		[LinkName("g_path_buf_to_path")]
		public static extern char8* ToPath(PathBuf* buf);
	}
	[CRepr]
	public struct PatternSpec
	{
		[LinkName("g_pattern_spec_new")]
		public static extern PatternSpec* New(char8* pattern);
		[LinkName("g_pattern_spec_copy")]
		public static extern PatternSpec* Copy(PatternSpec* pspec);
		[LinkName("g_pattern_spec_equal")]
		public static extern c_int Equal(PatternSpec* pspec1, PatternSpec* pspec2);
		[LinkName("g_pattern_spec_free")]
		public static extern void Free(PatternSpec* pspec);
		[LinkName("g_pattern_spec_match")]
		public static extern c_int Match(PatternSpec* pspec, c_ulong string_length, char8* string, char8* string_reversed);
		[LinkName("g_pattern_spec_match_string")]
		public static extern c_int MatchString(PatternSpec* pspec, char8* string);
	}
	[CRepr]
	public struct PollFD
	{
		public c_int fd;
		public c_ushort events;
		public c_ushort revents;
	}
	[CRepr]
	public struct Private
	{
		public void* p;
		public DestroyNotify notify;
		public void* future;
		[LinkName("g_private_get")]
		public static extern void* Get(Private* key);
		[LinkName("g_private_replace")]
		public static extern void Replace(Private* key, void* value);
		[LinkName("g_private_set")]
		public static extern void Set(Private* key, void* value);
	}
	[CRepr]
	public struct PtrArray
	{
		public void** pdata;
		public c_uint len;
	}
	[CRepr]
	public struct Queue
	{
		public GLib.List* head;
		public GLib.List* tail;
		public c_uint length;
		[LinkName("g_queue_clear")]
		public static extern void Clear(Queue* queue);
		[LinkName("g_queue_clear_full")]
		public static extern void ClearFull(Queue* queue, DestroyNotify free_func);
		[LinkName("g_queue_free")]
		public static extern void Free(Queue* queue);
		[LinkName("g_queue_free_full")]
		public static extern void FreeFull(Queue* queue, DestroyNotify free_func);
		[LinkName("g_queue_get_length")]
		public static extern c_uint GetLength(Queue* queue);
		[LinkName("g_queue_index")]
		public static extern c_int Index(Queue* queue, void* data);
		[LinkName("g_queue_init")]
		public static extern void Init(Queue* queue);
		[LinkName("g_queue_is_empty")]
		public static extern c_int IsEmpty(Queue* queue);
		[LinkName("g_queue_peek_head")]
		public static extern void* PeekHead(Queue* queue);
		[LinkName("g_queue_peek_nth")]
		public static extern void* PeekNth(Queue* queue, c_uint n);
		[LinkName("g_queue_peek_tail")]
		public static extern void* PeekTail(Queue* queue);
		[LinkName("g_queue_pop_head")]
		public static extern void* PopHead(Queue* queue);
		[LinkName("g_queue_pop_nth")]
		public static extern void* PopNth(Queue* queue, c_uint n);
		[LinkName("g_queue_pop_tail")]
		public static extern void* PopTail(Queue* queue);
		[LinkName("g_queue_push_head")]
		public static extern void PushHead(Queue* queue, void* data);
		[LinkName("g_queue_push_nth")]
		public static extern void PushNth(Queue* queue, void* data, c_int n);
		[LinkName("g_queue_push_tail")]
		public static extern void PushTail(Queue* queue, void* data);
		[LinkName("g_queue_remove")]
		public static extern c_int Remove(Queue* queue, void* data);
		[LinkName("g_queue_remove_all")]
		public static extern c_uint RemoveAll(Queue* queue, void* data);
		[LinkName("g_queue_reverse")]
		public static extern void Reverse(Queue* queue);
	}
	[CRepr]
	public struct RWLock
	{
		public void* p;
		public c_uint i;
		[LinkName("g_rw_lock_clear")]
		public static extern void Clear(RWLock* rw_lock);
		[LinkName("g_rw_lock_init")]
		public static extern void Init(RWLock* rw_lock);
		[LinkName("g_rw_lock_reader_lock")]
		public static extern void ReaderLock(RWLock* rw_lock);
		[LinkName("g_rw_lock_reader_trylock")]
		public static extern c_int ReaderTrylock(RWLock* rw_lock);
		[LinkName("g_rw_lock_reader_unlock")]
		public static extern void ReaderUnlock(RWLock* rw_lock);
		[LinkName("g_rw_lock_writer_lock")]
		public static extern void WriterLock(RWLock* rw_lock);
		[LinkName("g_rw_lock_writer_trylock")]
		public static extern c_int WriterTrylock(RWLock* rw_lock);
		[LinkName("g_rw_lock_writer_unlock")]
		public static extern void WriterUnlock(RWLock* rw_lock);
	}
	[CRepr]
	public struct Rand : int
	{
		[LinkName("g_rand_double")]
		public static extern double Double(Rand* rand_);
		[LinkName("g_rand_double_range")]
		public static extern double DoubleRange(Rand* rand_, double begin, double end);
		[LinkName("g_rand_free")]
		public static extern void Free(Rand* rand_);
		[LinkName("g_rand_int")]
		public static extern c_uint Int(Rand* rand_);
		[LinkName("g_rand_int_range")]
		public static extern c_int IntRange(Rand* rand_, c_int begin, c_int end);
		[LinkName("g_rand_set_seed")]
		public static extern void SetSeed(Rand* rand_, c_uint seed);
		[LinkName("g_rand_set_seed_array")]
		public static extern void SetSeedArray(Rand* rand_, c_uint* seed, c_uint seed_length);
	}
	[CRepr]
	public struct RecMutex
	{
		public void* p;
		public c_uint i;
		[LinkName("g_rec_mutex_clear")]
		public static extern void Clear(RecMutex* rec_mutex);
		[LinkName("g_rec_mutex_init")]
		public static extern void Init(RecMutex* rec_mutex);
		[LinkName("g_rec_mutex_lock")]
		public static extern void Lock(RecMutex* rec_mutex);
		[LinkName("g_rec_mutex_trylock")]
		public static extern c_int Trylock(RecMutex* rec_mutex);
		[LinkName("g_rec_mutex_unlock")]
		public static extern void Unlock(RecMutex* rec_mutex);
	}
	[CRepr]
	public struct Regex
	{
		[LinkName("g_regex_new")]
		public static extern Regex* New(char8* pattern, RegexCompileFlags compile_options, RegexMatchFlags match_options);
		[LinkName("g_regex_get_capture_count")]
		public static extern c_int GetCaptureCount(Regex* regex);
		[LinkName("g_regex_get_compile_flags")]
		public static extern RegexCompileFlags GetCompileFlags(Regex* regex);
		[LinkName("g_regex_get_has_cr_or_lf")]
		public static extern c_int GetHasCrOrLf(Regex* regex);
		[LinkName("g_regex_get_match_flags")]
		public static extern RegexMatchFlags GetMatchFlags(Regex* regex);
		[LinkName("g_regex_get_max_backref")]
		public static extern c_int GetMaxBackref(Regex* regex);
		[LinkName("g_regex_get_max_lookbehind")]
		public static extern c_int GetMaxLookbehind(Regex* regex);
		[LinkName("g_regex_get_pattern")]
		public static extern char8* GetPattern(Regex* regex);
		[LinkName("g_regex_get_string_number")]
		public static extern c_int GetStringNumber(Regex* regex, char8* name);
		[LinkName("g_regex_match")]
		public static extern c_int Match(Regex* regex, char8* string, RegexMatchFlags match_options, MatchInfo** match_info);
		[LinkName("g_regex_match_all")]
		public static extern c_int MatchAll(Regex* regex, char8* string, RegexMatchFlags match_options, MatchInfo** match_info);
		[LinkName("g_regex_match_all_full")]
		public static extern c_int MatchAllFull(Regex* regex, char8* string, c_long string_len, c_int start_position, RegexMatchFlags match_options, MatchInfo** match_info);
		[LinkName("g_regex_match_full")]
		public static extern c_int MatchFull(Regex* regex, char8* string, c_long string_len, c_int start_position, RegexMatchFlags match_options, MatchInfo** match_info);
		[LinkName("g_regex_ref")]
		public static extern Regex* Ref(Regex* regex);
		[LinkName("g_regex_replace")]
		public static extern char8* Replace(Regex* regex, char8* string, c_long string_len, c_int start_position, char8* replacement, RegexMatchFlags match_options);
		[LinkName("g_regex_replace_literal")]
		public static extern char8* ReplaceLiteral(Regex* regex, char8* string, c_long string_len, c_int start_position, char8* replacement, RegexMatchFlags match_options);
		[LinkName("g_regex_split")]
		public static extern char8** Split(Regex* regex, char8* string, RegexMatchFlags match_options);
		[LinkName("g_regex_split_full")]
		public static extern char8** SplitFull(Regex* regex, char8* string, c_long string_len, c_int start_position, RegexMatchFlags match_options, c_int max_tokens);
		[LinkName("g_regex_unref")]
		public static extern void Unref(Regex* regex);
	}
	[CRepr]
	public struct SList
	{
		public void* data;
		public GLib.SList* next;
	}
	[CRepr]
	public struct Scanner
	{
		public void* user_data;
		public c_uint max_parse_errors;
		public c_uint parse_errors;
		public char8* input_name;
		public Data* qdata;
		public ScannerConfig* config;
		public TokenType token;
		public TokenValue value;
		public c_uint line;
		public c_uint position;
		public TokenType next_token;
		public TokenValue next_value;
		public c_uint next_line;
		public c_uint next_position;
		public GLib.HashTable* symbol_table;
		public c_int input_fd;
		public char8* text;
		public char8* text_end;
		public char8* buffer;
		public c_uint scope_id;
		public ScannerMsgFunc msg_handler;
		[LinkName("g_scanner_cur_line")]
		public static extern c_uint CurLine(Scanner* scanner);
		[LinkName("g_scanner_cur_position")]
		public static extern c_uint CurPosition(Scanner* scanner);
		[LinkName("g_scanner_cur_token")]
		public static extern TokenType CurToken(Scanner* scanner);
		[LinkName("g_scanner_destroy")]
		public static extern void Destroy(Scanner* scanner);
		[LinkName("g_scanner_eof")]
		public static extern c_int Eof(Scanner* scanner);
		[LinkName("g_scanner_get_next_token")]
		public static extern TokenType GetNextToken(Scanner* scanner);
		[LinkName("g_scanner_input_file")]
		public static extern void InputFile(Scanner* scanner, c_int input_fd);
		[LinkName("g_scanner_input_text")]
		public static extern void InputText(Scanner* scanner, char8* text, c_uint text_len);
		[LinkName("g_scanner_lookup_symbol")]
		public static extern void* LookupSymbol(Scanner* scanner, char8* symbol);
		[LinkName("g_scanner_peek_next_token")]
		public static extern TokenType PeekNextToken(Scanner* scanner);
		[LinkName("g_scanner_scope_add_symbol")]
		public static extern void ScopeAddSymbol(Scanner* scanner, c_uint scope_id, char8* symbol, void* value);
		[LinkName("g_scanner_scope_lookup_symbol")]
		public static extern void* ScopeLookupSymbol(Scanner* scanner, c_uint scope_id, char8* symbol);
		[LinkName("g_scanner_scope_remove_symbol")]
		public static extern void ScopeRemoveSymbol(Scanner* scanner, c_uint scope_id, char8* symbol);
		[LinkName("g_scanner_set_scope")]
		public static extern c_uint SetScope(Scanner* scanner, c_uint scope_id);
		[LinkName("g_scanner_sync_file_offset")]
		public static extern void SyncFileOffset(Scanner* scanner);
		[LinkName("g_scanner_unexp_token")]
		public static extern void UnexpToken(Scanner* scanner, TokenType expected_token, char8* identifier_spec, char8* symbol_spec, char8* symbol_name, char8* message, c_int is_error);
	}
	[CRepr]
	public struct ScannerConfig
	{
		public char8* cset_skip_characters;
		public char8* cset_identifier_first;
		public char8* cset_identifier_nth;
		public char8* cpair_comment_single;
		[Bitfield<c_uint>(.Private, .Bits(1), "case_sensitive")]
		[Bitfield<c_uint>(.Private, .Bits(1), "skip_comment_multi")]
		[Bitfield<c_uint>(.Private, .Bits(1), "skip_comment_single")]
		[Bitfield<c_uint>(.Private, .Bits(1), "scan_comment_multi")]
		[Bitfield<c_uint>(.Private, .Bits(1), "scan_identifier")]
		[Bitfield<c_uint>(.Private, .Bits(1), "scan_identifier_1char")]
		[Bitfield<c_uint>(.Private, .Bits(1), "scan_identifier_NULL")]
		[Bitfield<c_uint>(.Private, .Bits(1), "scan_symbols")]
		[Bitfield<c_uint>(.Private, .Bits(1), "scan_binary")]
		[Bitfield<c_uint>(.Private, .Bits(1), "scan_octal")]
		[Bitfield<c_uint>(.Private, .Bits(1), "scan_float")]
		[Bitfield<c_uint>(.Private, .Bits(1), "scan_hex")]
		[Bitfield<c_uint>(.Private, .Bits(1), "scan_hex_dollar")]
		[Bitfield<c_uint>(.Private, .Bits(1), "scan_string_sq")]
		[Bitfield<c_uint>(.Private, .Bits(1), "scan_string_dq")]
		[Bitfield<c_uint>(.Private, .Bits(1), "numbers_2_int")]
		[Bitfield<c_uint>(.Private, .Bits(1), "int_2_float")]
		[Bitfield<c_uint>(.Private, .Bits(1), "identifier_2_string")]
		[Bitfield<c_uint>(.Private, .Bits(1), "char_2_token")]
		[Bitfield<c_uint>(.Private, .Bits(1), "symbol_2_token")]
		[Bitfield<c_uint>(.Private, .Bits(1), "scope_0_fallback")]
		[Bitfield<c_uint>(.Private, .Bits(1), "store_int64")]
		private c_uint mBitfield;
		public c_uint padding_dummy;
	}
	[CRepr]
	public struct Sequence : int
	{
		[LinkName("g_sequence_append")]
		public static extern SequenceIter* Append(Sequence* seq, void* data);
		[LinkName("g_sequence_free")]
		public static extern void Free(Sequence* seq);
		[LinkName("g_sequence_get_begin_iter")]
		public static extern SequenceIter* GetBeginIter(Sequence* seq);
		[LinkName("g_sequence_get_end_iter")]
		public static extern SequenceIter* GetEndIter(Sequence* seq);
		[LinkName("g_sequence_get_iter_at_pos")]
		public static extern SequenceIter* GetIterAtPos(Sequence* seq, c_int pos);
		[LinkName("g_sequence_get_length")]
		public static extern c_int GetLength(Sequence* seq);
		[LinkName("g_sequence_is_empty")]
		public static extern c_int IsEmpty(Sequence* seq);
		[LinkName("g_sequence_prepend")]
		public static extern SequenceIter* Prepend(Sequence* seq, void* data);
	}
	[CRepr]
	public struct SequenceIter : int
	{
		[LinkName("g_sequence_iter_compare")]
		public static extern c_int Compare(SequenceIter* a, SequenceIter* b);
		[LinkName("g_sequence_iter_get_position")]
		public static extern c_int GetPosition(SequenceIter* iter);
		[LinkName("g_sequence_iter_get_sequence")]
		public static extern Sequence* GetSequence(SequenceIter* iter);
		[LinkName("g_sequence_iter_is_begin")]
		public static extern c_int IsBegin(SequenceIter* iter);
		[LinkName("g_sequence_iter_is_end")]
		public static extern c_int IsEnd(SequenceIter* iter);
		[LinkName("g_sequence_iter_move")]
		public static extern SequenceIter* Move(SequenceIter* iter, c_int delta);
		[LinkName("g_sequence_iter_next")]
		public static extern SequenceIter* Next(SequenceIter* iter);
		[LinkName("g_sequence_iter_prev")]
		public static extern SequenceIter* Prev(SequenceIter* iter);
	}
	[CRepr]
	public struct Source
	{
		public void* callback_data;
		public SourceCallbackFuncs* callback_funcs;
		public SourceFuncs* source_funcs;
		public c_uint ref_count;
		public MainContext* context;
		public c_int priority;
		public c_uint flags;
		public c_uint source_id;
		public GLib.SList* poll_fds;
		public Source* prev;
		public Source* next;
		public char8* name;
		public SourcePrivate* priv;
		[LinkName("g_source_new")]
		public static extern Source* New(SourceFuncs* source_funcs, c_uint struct_size);
		[LinkName("g_source_add_child_source")]
		public static extern void AddChildSource(Source* source, Source* child_source);
		[LinkName("g_source_add_poll")]
		public static extern void AddPoll(Source* source, PollFD* fd);
		[LinkName("g_source_add_unix_fd")]
		public static extern void* AddUnixFd(Source* source, c_int fd, IOCondition events);
		[LinkName("g_source_attach")]
		public static extern c_uint Attach(Source* source, MainContext* context);
		[LinkName("g_source_destroy")]
		public static extern void Destroy(Source* source);
		[LinkName("g_source_get_can_recurse")]
		public static extern c_int GetCanRecurse(Source* source);
		[LinkName("g_source_get_context")]
		public static extern MainContext* GetContext(Source* source);
		[LinkName("g_source_get_current_time")]
		public static extern void GetCurrentTime(Source* source, TimeVal* timeval);
		[LinkName("g_source_get_id")]
		public static extern c_uint GetId(Source* source);
		[LinkName("g_source_get_name")]
		public static extern char8* GetName(Source* source);
		[LinkName("g_source_get_priority")]
		public static extern c_int GetPriority(Source* source);
		[LinkName("g_source_get_ready_time")]
		public static extern c_longlong GetReadyTime(Source* source);
		[LinkName("g_source_get_time")]
		public static extern c_longlong GetTime(Source* source);
		[LinkName("g_source_is_destroyed")]
		public static extern c_int IsDestroyed(Source* source);
		[LinkName("g_source_modify_unix_fd")]
		public static extern void ModifyUnixFd(Source* source, void* tag, IOCondition new_events);
		[LinkName("g_source_query_unix_fd")]
		public static extern IOCondition QueryUnixFd(Source* source, void* tag);
		[LinkName("g_source_ref")]
		public static extern Source* Ref(Source* source);
		[LinkName("g_source_remove_child_source")]
		public static extern void RemoveChildSource(Source* source, Source* child_source);
		[LinkName("g_source_remove_poll")]
		public static extern void RemovePoll(Source* source, PollFD* fd);
		[LinkName("g_source_remove_unix_fd")]
		public static extern void RemoveUnixFd(Source* source, void* tag);
		[LinkName("g_source_set_callback")]
		public static extern void SetCallback(Source* source, SourceFunc func, void* data, DestroyNotify notify);
		[LinkName("g_source_set_callback_indirect")]
		public static extern void SetCallbackIndirect(Source* source, void* callback_data, SourceCallbackFuncs* callback_funcs);
		[LinkName("g_source_set_can_recurse")]
		public static extern void SetCanRecurse(Source* source, c_int can_recurse);
		[LinkName("g_source_set_funcs")]
		public static extern void SetFuncs(Source* source, SourceFuncs* funcs);
		[LinkName("g_source_set_name")]
		public static extern void SetName(Source* source, char8* name);
		[LinkName("g_source_set_priority")]
		public static extern void SetPriority(Source* source, c_int priority);
		[LinkName("g_source_set_ready_time")]
		public static extern void SetReadyTime(Source* source, c_longlong ready_time);
		[LinkName("g_source_set_static_name")]
		public static extern void SetStaticName(Source* source, char8* name);
		[LinkName("g_source_unref")]
		public static extern void Unref(Source* source);
	}
	[CRepr]
	public struct SourceCallbackFuncs
	{
		public function void(void* cb_data) _ref;
		public function void(void* cb_data) unref;
		public function void(void* cb_data, Source* source, SourceFunc* func, void** data) get;
	}
	[CRepr]
	public struct SourceFuncs
	{
		public function c_int(Source* source, c_int* timeout_) prepare;
		public function c_int(Source* source) check;
		public function c_int(Source* source, SourceFunc callback, void* user_data) dispatch;
		public function void(Source* source) finalize;
		public SourceFunc closure_callback;
		public SourceDummyMarshal closure_marshal;
	}
	[CRepr]
	public struct SourcePrivate : int
	{
	}
	[CRepr]
	public struct StatBuf : int
	{
	}
	[CRepr]
	public struct String
	{
		public char8* str;
		public c_ulong len;
		public c_ulong allocated_len;
		[LinkName("g_string_new")]
		public static extern String* New(char8* init);
		[LinkName("g_string_new_len")]
		public static extern String* NewLen(char8* init, c_long len);
		[LinkName("g_string_sized_new")]
		public static extern String* SizedNew(c_ulong dfl_size);
		[LinkName("g_string_append")]
		public static extern String* Append(String* string, char8* val);
		[LinkName("g_string_append_c")]
		public static extern String* AppendC(String* string, c_char c);
		[LinkName("g_string_append_len")]
		public static extern String* AppendLen(String* string, char8* val, c_long len);
		[LinkName("g_string_append_unichar")]
		public static extern String* AppendUnichar(String* string, c_uint wc);
		[LinkName("g_string_append_uri_escaped")]
		public static extern String* AppendUriEscaped(String* string, char8* unescaped, char8* reserved_chars_allowed, c_int allow_utf8);
		[LinkName("g_string_ascii_down")]
		public static extern String* AsciiDown(String* string);
		[LinkName("g_string_ascii_up")]
		public static extern String* AsciiUp(String* string);
		[LinkName("g_string_assign")]
		public static extern String* Assign(String* string, char8* rval);
		[LinkName("g_string_down")]
		public static extern String* Down(String* string);
		[LinkName("g_string_equal")]
		public static extern c_int Equal(String* v, String* v2);
		[LinkName("g_string_erase")]
		public static extern String* Erase(String* string, c_long pos, c_long len);
		[LinkName("g_string_free")]
		public static extern char8* Free(String* string, c_int free_segment);
		[LinkName("g_string_free_and_steal")]
		public static extern char8* FreeAndSteal(String* string);
		[LinkName("g_string_free_to_bytes")]
		public static extern Bytes* FreeToBytes(String* string);
		[LinkName("g_string_hash")]
		public static extern c_uint Hash(String* str);
		[LinkName("g_string_insert")]
		public static extern String* Insert(String* string, c_long pos, char8* val);
		[LinkName("g_string_insert_c")]
		public static extern String* InsertC(String* string, c_long pos, c_char c);
		[LinkName("g_string_insert_len")]
		public static extern String* InsertLen(String* string, c_long pos, char8* val, c_long len);
		[LinkName("g_string_insert_unichar")]
		public static extern String* InsertUnichar(String* string, c_long pos, c_uint wc);
		[LinkName("g_string_overwrite")]
		public static extern String* Overwrite(String* string, c_ulong pos, char8* val);
		[LinkName("g_string_overwrite_len")]
		public static extern String* OverwriteLen(String* string, c_ulong pos, char8* val, c_long len);
		[LinkName("g_string_prepend")]
		public static extern String* Prepend(String* string, char8* val);
		[LinkName("g_string_prepend_c")]
		public static extern String* PrependC(String* string, c_char c);
		[LinkName("g_string_prepend_len")]
		public static extern String* PrependLen(String* string, char8* val, c_long len);
		[LinkName("g_string_prepend_unichar")]
		public static extern String* PrependUnichar(String* string, c_uint wc);
		[LinkName("g_string_replace")]
		public static extern c_uint Replace(String* string, char8* find, char8* replace, c_uint limit);
		[LinkName("g_string_set_size")]
		public static extern String* SetSize(String* string, c_ulong len);
		[LinkName("g_string_truncate")]
		public static extern String* Truncate(String* string, c_ulong len);
		[LinkName("g_string_up")]
		public static extern String* Up(String* string);
	}
	[CRepr]
	public struct StringChunk : int
	{
		[LinkName("g_string_chunk_clear")]
		public static extern void Clear(StringChunk* chunk);
		[LinkName("g_string_chunk_free")]
		public static extern void Free(StringChunk* chunk);
		[LinkName("g_string_chunk_insert")]
		public static extern char8* Insert(StringChunk* chunk, char8* string);
		[LinkName("g_string_chunk_insert_const")]
		public static extern char8* InsertConst(StringChunk* chunk, char8* string);
		[LinkName("g_string_chunk_insert_len")]
		public static extern char8* InsertLen(StringChunk* chunk, char8* string, c_long len);
	}
	[CRepr]
	public struct StrvBuilder : int
	{
		[LinkName("g_strv_builder_add")]
		public static extern void Add(StrvBuilder* builder, char8* value);
		[LinkName("g_strv_builder_addv")]
		public static extern void Addv(StrvBuilder* builder, char8** value);
		[LinkName("g_strv_builder_end")]
		public static extern char8 End(StrvBuilder* builder);
		[LinkName("g_strv_builder_unref")]
		public static extern void Unref(StrvBuilder* builder);
	}
	[CRepr]
	public struct TestCase : int
	{
		[LinkName("g_test_case_free")]
		public static extern void Free(TestCase* test_case);
	}
	[CRepr]
	public struct TestConfig
	{
		public c_int test_initialized;
		public c_int test_quick;
		public c_int test_perf;
		public c_int test_verbose;
		public c_int test_quiet;
		public c_int test_undefined;
	}
	[CRepr]
	public struct TestLogBuffer
	{
		public String* data;
		public GLib.SList* msgs;
		[LinkName("g_test_log_buffer_free")]
		public static extern void Free(TestLogBuffer* tbuffer);
		[LinkName("g_test_log_buffer_push")]
		public static extern void Push(TestLogBuffer* tbuffer, c_uint n_bytes, c_uchar* bytes);
	}
	[CRepr]
	public struct TestLogMsg
	{
		public TestLogType log_type;
		public c_uint n_strings;
		public char8** strings;
		public c_uint n_nums;
		public double* nums;
		[LinkName("g_test_log_msg_free")]
		public static extern void Free(TestLogMsg* tmsg);
	}
	[CRepr]
	public struct TestSuite : int
	{
		[LinkName("g_test_suite_add")]
		public static extern void Add(TestSuite* suite, TestCase* test_case);
		[LinkName("g_test_suite_add_suite")]
		public static extern void AddSuite(TestSuite* suite, TestSuite* nestedsuite);
		[LinkName("g_test_suite_free")]
		public static extern void Free(TestSuite* suite);
	}
	[CRepr]
	public struct Thread
	{
		[LinkName("g_thread_new")]
		public static extern Thread* New(char8* name, ThreadFunc func, void* data);
		[LinkName("g_thread_try_new")]
		public static extern Thread* TryNew(char8* name, ThreadFunc func, void* data);
		[LinkName("g_thread_join")]
		public static extern void* Join(Thread* thread);
		[LinkName("g_thread_ref")]
		public static extern Thread* Ref(Thread* thread);
		[LinkName("g_thread_unref")]
		public static extern void Unref(Thread* thread);
	}
	[CRepr]
	public struct ThreadPool
	{
		public Func func;
		public void* user_data;
		public c_int exclusive;
		[LinkName("g_thread_pool_free")]
		public static extern void Free(ThreadPool* pool, c_int immediate, c_int wait_);
		[LinkName("g_thread_pool_get_max_threads")]
		public static extern c_int GetMaxThreads(ThreadPool* pool);
		[LinkName("g_thread_pool_get_num_threads")]
		public static extern c_uint GetNumThreads(ThreadPool* pool);
		[LinkName("g_thread_pool_move_to_front")]
		public static extern c_int MoveToFront(ThreadPool* pool, void* data);
		[LinkName("g_thread_pool_push")]
		public static extern c_int Push(ThreadPool* pool, void* data);
		[LinkName("g_thread_pool_set_max_threads")]
		public static extern c_int SetMaxThreads(ThreadPool* pool, c_int max_threads);
		[LinkName("g_thread_pool_unprocessed")]
		public static extern c_uint Unprocessed(ThreadPool* pool);
	}
	[CRepr]
	public struct TimeVal
	{
		public c_long tv_sec;
		public c_long tv_usec;
		[LinkName("g_time_val_add")]
		public static extern void Add(TimeVal* time_, c_long microseconds);
		[LinkName("g_time_val_to_iso8601")]
		public static extern char8* ToIso8601(TimeVal* time_);
	}
	[CRepr]
	public struct TimeZone
	{
		[LinkName("g_time_zone_new")]
		public static extern TimeZone* New(char8* identifier);
		[LinkName("g_time_zone_new_identifier")]
		public static extern TimeZone* NewIdentifier(char8* identifier);
		[LinkName("g_time_zone_new_local")]
		public static extern TimeZone* NewLocal();
		[LinkName("g_time_zone_new_offset")]
		public static extern TimeZone* NewOffset(c_int seconds);
		[LinkName("g_time_zone_new_utc")]
		public static extern TimeZone* NewUtc();
		[LinkName("g_time_zone_adjust_time")]
		public static extern c_int AdjustTime(TimeZone* tz, TimeType type, c_longlong* time_);
		[LinkName("g_time_zone_find_interval")]
		public static extern c_int FindInterval(TimeZone* tz, TimeType type, c_longlong time_);
		[LinkName("g_time_zone_get_abbreviation")]
		public static extern char8* GetAbbreviation(TimeZone* tz, c_int interval);
		[LinkName("g_time_zone_get_identifier")]
		public static extern char8* GetIdentifier(TimeZone* tz);
		[LinkName("g_time_zone_get_offset")]
		public static extern c_int GetOffset(TimeZone* tz, c_int interval);
		[LinkName("g_time_zone_is_dst")]
		public static extern c_int IsDst(TimeZone* tz, c_int interval);
		[LinkName("g_time_zone_ref")]
		public static extern TimeZone* Ref(TimeZone* tz);
		[LinkName("g_time_zone_unref")]
		public static extern void Unref(TimeZone* tz);
	}
	[CRepr]
	public struct Timer : int
	{
		[LinkName("g_timer_continue")]
		public static extern void Continue(Timer* timer);
		[LinkName("g_timer_destroy")]
		public static extern void Destroy(Timer* timer);
		[LinkName("g_timer_elapsed")]
		public static extern double Elapsed(Timer* timer, c_ulong* microseconds);
		[LinkName("g_timer_is_active")]
		public static extern c_int IsActive(Timer* timer);
		[LinkName("g_timer_reset")]
		public static extern void Reset(Timer* timer);
		[LinkName("g_timer_start")]
		public static extern void Start(Timer* timer);
		[LinkName("g_timer_stop")]
		public static extern void Stop(Timer* timer);
	}
	[CRepr]
	public struct TrashStack
	{
		public TrashStack* next;
	}
	[CRepr]
	public struct Tree
	{
		[LinkName("g_tree_new_full")]
		public static extern Tree* NewFull(CompareDataFunc key_compare_func, void* key_compare_data, DestroyNotify key_destroy_func, DestroyNotify value_destroy_func);
		[LinkName("g_tree_destroy")]
		public static extern void Destroy(Tree* tree);
		[LinkName("g_tree_height")]
		public static extern c_int Height(Tree* tree);
		[LinkName("g_tree_insert")]
		public static extern void Insert(Tree* tree, void* key, void* value);
		[LinkName("g_tree_insert_node")]
		public static extern TreeNode* InsertNode(Tree* tree, void* key, void* value);
		[LinkName("g_tree_lookup")]
		public static extern void* Lookup(Tree* tree, void* key);
		[LinkName("g_tree_lookup_extended")]
		public static extern c_int LookupExtended(Tree* tree, void* lookup_key, void** orig_key, void** value);
		[LinkName("g_tree_lookup_node")]
		public static extern TreeNode* LookupNode(Tree* tree, void* key);
		[LinkName("g_tree_lower_bound")]
		public static extern TreeNode* LowerBound(Tree* tree, void* key);
		[LinkName("g_tree_nnodes")]
		public static extern c_int Nnodes(Tree* tree);
		[LinkName("g_tree_node_first")]
		public static extern TreeNode* NodeFirst(Tree* tree);
		[LinkName("g_tree_node_last")]
		public static extern TreeNode* NodeLast(Tree* tree);
		[LinkName("g_tree_ref")]
		public static extern Tree* Ref(Tree* tree);
		[LinkName("g_tree_remove")]
		public static extern c_int Remove(Tree* tree, void* key);
		[LinkName("g_tree_remove_all")]
		public static extern void RemoveAll(Tree* tree);
		[LinkName("g_tree_replace")]
		public static extern void Replace(Tree* tree, void* key, void* value);
		[LinkName("g_tree_replace_node")]
		public static extern TreeNode* ReplaceNode(Tree* tree, void* key, void* value);
		[LinkName("g_tree_steal")]
		public static extern c_int Steal(Tree* tree, void* key);
		[LinkName("g_tree_unref")]
		public static extern void Unref(Tree* tree);
		[LinkName("g_tree_upper_bound")]
		public static extern TreeNode* UpperBound(Tree* tree, void* key);
	}
	[CRepr]
	public struct TreeNode : int
	{
		[LinkName("g_tree_node_key")]
		public static extern void* Key(TreeNode* node);
		[LinkName("g_tree_node_next")]
		public static extern TreeNode* Next(TreeNode* node);
		[LinkName("g_tree_node_previous")]
		public static extern TreeNode* Previous(TreeNode* node);
		[LinkName("g_tree_node_value")]
		public static extern void* Value(TreeNode* node);
	}
	[CRepr]
	public struct Uri
	{
		[LinkName("g_uri_get_auth_params")]
		public static extern char8* GetAuthParams(Uri* uri);
		[LinkName("g_uri_get_flags")]
		public static extern UriFlags GetFlags(Uri* uri);
		[LinkName("g_uri_get_fragment")]
		public static extern char8* GetFragment(Uri* uri);
		[LinkName("g_uri_get_host")]
		public static extern char8* GetHost(Uri* uri);
		[LinkName("g_uri_get_password")]
		public static extern char8* GetPassword(Uri* uri);
		[LinkName("g_uri_get_path")]
		public static extern char8* GetPath(Uri* uri);
		[LinkName("g_uri_get_port")]
		public static extern c_int GetPort(Uri* uri);
		[LinkName("g_uri_get_query")]
		public static extern char8* GetQuery(Uri* uri);
		[LinkName("g_uri_get_scheme")]
		public static extern char8* GetScheme(Uri* uri);
		[LinkName("g_uri_get_user")]
		public static extern char8* GetUser(Uri* uri);
		[LinkName("g_uri_get_userinfo")]
		public static extern char8* GetUserinfo(Uri* uri);
		[LinkName("g_uri_parse_relative")]
		public static extern Uri* ParseRelative(Uri* base_uri, char8* uri_ref, UriFlags flags);
		[LinkName("g_uri_to_string")]
		public static extern char8* ToString(Uri* uri);
		[LinkName("g_uri_to_string_partial")]
		public static extern char8* ToStringPartial(Uri* uri, UriHideFlags flags);
	}
	[CRepr]
	public struct UriParamsIter
	{
		public c_int dummy0;
		public void* dummy1;
		public void* dummy2;
		public c_uchar dummy3;
		[LinkName("g_uri_params_iter_init")]
		public static extern void Init(UriParamsIter* iter, char8* params_, c_long length, char8* separators, UriParamsFlags flags);
		[LinkName("g_uri_params_iter_next")]
		public static extern c_int Next(UriParamsIter* iter, char8** attribute, char8** value);
	}
	[CRepr]
	public struct Variant
	{
		[LinkName("g_variant_new_array")]
		public static extern Variant* NewArray(VariantType* child_type, Variant** children, c_ulong n_children);
		[LinkName("g_variant_new_boolean")]
		public static extern Variant* NewBoolean(c_int value);
		[LinkName("g_variant_new_byte")]
		public static extern Variant* NewByte(c_uchar value);
		[LinkName("g_variant_new_bytestring")]
		public static extern Variant* NewBytestring(c_uchar* string);
		[LinkName("g_variant_new_bytestring_array")]
		public static extern Variant* NewBytestringArray(char8** strv, c_long length);
		[LinkName("g_variant_new_dict_entry")]
		public static extern Variant* NewDictEntry(Variant* key, Variant* value);
		[LinkName("g_variant_new_double")]
		public static extern Variant* NewDouble(double value);
		[LinkName("g_variant_new_fixed_array")]
		public static extern Variant* NewFixedArray(VariantType* element_type, void* elements, c_ulong n_elements, c_ulong element_size);
		[LinkName("g_variant_new_from_bytes")]
		public static extern Variant* NewFromBytes(VariantType* type, Bytes* bytes, c_int trusted);
		[LinkName("g_variant_new_from_data")]
		public static extern Variant* NewFromData(VariantType* type, c_uchar data, c_ulong size, c_int trusted, DestroyNotify notify, void* user_data);
		[LinkName("g_variant_new_handle")]
		public static extern Variant* NewHandle(c_int value);
		[LinkName("g_variant_new_int16")]
		public static extern Variant* NewInt16(c_short value);
		[LinkName("g_variant_new_int32")]
		public static extern Variant* NewInt32(c_int value);
		[LinkName("g_variant_new_int64")]
		public static extern Variant* NewInt64(c_longlong value);
		[LinkName("g_variant_new_maybe")]
		public static extern Variant* NewMaybe(VariantType* child_type, Variant* child);
		[LinkName("g_variant_new_object_path")]
		public static extern Variant* NewObjectPath(char8* object_path);
		[LinkName("g_variant_new_objv")]
		public static extern Variant* NewObjv(char8** strv, c_long length);
		[LinkName("g_variant_new_signature")]
		public static extern Variant* NewSignature(char8* signature);
		[LinkName("g_variant_new_string")]
		public static extern Variant* NewString(char8* string);
		[LinkName("g_variant_new_strv")]
		public static extern Variant* NewStrv(char8** strv, c_long length);
		[LinkName("g_variant_new_tuple")]
		public static extern Variant* NewTuple(Variant** children, c_ulong n_children);
		[LinkName("g_variant_new_uint16")]
		public static extern Variant* NewUint16(c_ushort value);
		[LinkName("g_variant_new_uint32")]
		public static extern Variant* NewUint32(c_uint value);
		[LinkName("g_variant_new_uint64")]
		public static extern Variant* NewUint64(c_ulonglong value);
		[LinkName("g_variant_new_variant")]
		public static extern Variant* NewVariant(Variant* value);
		[LinkName("g_variant_byteswap")]
		public static extern Variant* Byteswap(Variant* value);
		[LinkName("g_variant_check_format_string")]
		public static extern c_int CheckFormatString(Variant* value, char8* format_string, c_int copy_only);
		[LinkName("g_variant_classify")]
		public static extern VariantClass Classify(Variant* value);
		[LinkName("g_variant_compare")]
		public static extern c_int Compare(Variant one, Variant two);
		[LinkName("g_variant_dup_bytestring")]
		public static extern c_uchar* DupBytestring(Variant* value, c_ulong* length);
		[LinkName("g_variant_dup_bytestring_array")]
		public static extern char8** DupBytestringArray(Variant* value, c_ulong* length);
		[LinkName("g_variant_dup_objv")]
		public static extern char8** DupObjv(Variant* value, c_ulong* length);
		[LinkName("g_variant_dup_string")]
		public static extern char8* DupString(Variant* value, c_ulong* length);
		[LinkName("g_variant_dup_strv")]
		public static extern char8** DupStrv(Variant* value, c_ulong* length);
		[LinkName("g_variant_equal")]
		public static extern c_int Equal(Variant one, Variant two);
		[LinkName("g_variant_get_boolean")]
		public static extern c_int GetBoolean(Variant* value);
		[LinkName("g_variant_get_byte")]
		public static extern c_uchar GetByte(Variant* value);
		[LinkName("g_variant_get_bytestring")]
		public static extern c_uchar* GetBytestring(Variant* value);
		[LinkName("g_variant_get_bytestring_array")]
		public static extern char8** GetBytestringArray(Variant* value, c_ulong* length);
		[LinkName("g_variant_get_child_value")]
		public static extern Variant* GetChildValue(Variant* value, c_ulong index_);
		[LinkName("g_variant_get_data")]
		public static extern void* GetData(Variant* value);
		[LinkName("g_variant_get_data_as_bytes")]
		public static extern Bytes* GetDataAsBytes(Variant* value);
		[LinkName("g_variant_get_double")]
		public static extern double GetDouble(Variant* value);
		[LinkName("g_variant_get_handle")]
		public static extern c_int GetHandle(Variant* value);
		[LinkName("g_variant_get_int16")]
		public static extern c_short GetInt16(Variant* value);
		[LinkName("g_variant_get_int32")]
		public static extern c_int GetInt32(Variant* value);
		[LinkName("g_variant_get_int64")]
		public static extern c_longlong GetInt64(Variant* value);
		[LinkName("g_variant_get_maybe")]
		public static extern Variant* GetMaybe(Variant* value);
		[LinkName("g_variant_get_normal_form")]
		public static extern Variant* GetNormalForm(Variant* value);
		[LinkName("g_variant_get_objv")]
		public static extern char8** GetObjv(Variant* value, c_ulong* length);
		[LinkName("g_variant_get_size")]
		public static extern c_ulong GetSize(Variant* value);
		[LinkName("g_variant_get_string")]
		public static extern char8* GetString(Variant* value, c_ulong* length);
		[LinkName("g_variant_get_strv")]
		public static extern char8** GetStrv(Variant* value, c_ulong* length);
		[LinkName("g_variant_get_type")]
		public static extern VariantType* GetType(Variant* value);
		[LinkName("g_variant_get_type_string")]
		public static extern char8* GetTypeString(Variant* value);
		[LinkName("g_variant_get_uint16")]
		public static extern c_ushort GetUint16(Variant* value);
		[LinkName("g_variant_get_uint32")]
		public static extern c_uint GetUint32(Variant* value);
		[LinkName("g_variant_get_uint64")]
		public static extern c_ulonglong GetUint64(Variant* value);
		[LinkName("g_variant_get_variant")]
		public static extern Variant* GetVariant(Variant* value);
		[LinkName("g_variant_hash")]
		public static extern c_uint Hash(Variant value);
		[LinkName("g_variant_is_container")]
		public static extern c_int IsContainer(Variant* value);
		[LinkName("g_variant_is_floating")]
		public static extern c_int IsFloating(Variant* value);
		[LinkName("g_variant_is_normal_form")]
		public static extern c_int IsNormalForm(Variant* value);
		[LinkName("g_variant_is_of_type")]
		public static extern c_int IsOfType(Variant* value, VariantType* type);
		[LinkName("g_variant_lookup_value")]
		public static extern Variant* LookupValue(Variant* dictionary, char8* key, VariantType* expected_type);
		[LinkName("g_variant_n_children")]
		public static extern c_ulong NChildren(Variant* value);
		[LinkName("g_variant_print")]
		public static extern char8* Print(Variant* value, c_int type_annotate);
		[LinkName("g_variant_ref")]
		public static extern Variant* Ref(Variant* value);
		[LinkName("g_variant_ref_sink")]
		public static extern Variant* RefSink(Variant* value);
		[LinkName("g_variant_store")]
		public static extern void Store(Variant* value, void* data);
		[LinkName("g_variant_take_ref")]
		public static extern Variant* TakeRef(Variant* value);
		[LinkName("g_variant_unref")]
		public static extern void Unref(Variant* value);
	}
	[CRepr]
	public struct VariantBuilder
	{
		[LinkName("g_variant_builder_new")]
		public static extern VariantBuilder* New(VariantType* type);
		[LinkName("g_variant_builder_add_value")]
		public static extern void AddValue(VariantBuilder* builder, Variant* value);
		[LinkName("g_variant_builder_close")]
		public static extern void Close(VariantBuilder* builder);
		[LinkName("g_variant_builder_end")]
		public static extern Variant* End(VariantBuilder* builder);
		[LinkName("g_variant_builder_open")]
		public static extern void Open(VariantBuilder* builder, VariantType* type);
		[LinkName("g_variant_builder_ref")]
		public static extern VariantBuilder* Ref(VariantBuilder* builder);
		[LinkName("g_variant_builder_unref")]
		public static extern void Unref(VariantBuilder* builder);
	}
	[CRepr]
	public struct VariantDict
	{
		[LinkName("g_variant_dict_new")]
		public static extern VariantDict* New(Variant* from_asv);
		[LinkName("g_variant_dict_clear")]
		public static extern void Clear(VariantDict* dict);
		[LinkName("g_variant_dict_contains")]
		public static extern c_int Contains(VariantDict* dict, char8* key);
		[LinkName("g_variant_dict_end")]
		public static extern Variant* End(VariantDict* dict);
		[LinkName("g_variant_dict_insert_value")]
		public static extern void InsertValue(VariantDict* dict, char8* key, Variant* value);
		[LinkName("g_variant_dict_lookup_value")]
		public static extern Variant* LookupValue(VariantDict* dict, char8* key, VariantType* expected_type);
		[LinkName("g_variant_dict_ref")]
		public static extern VariantDict* Ref(VariantDict* dict);
		[LinkName("g_variant_dict_remove")]
		public static extern c_int Remove(VariantDict* dict, char8* key);
		[LinkName("g_variant_dict_unref")]
		public static extern void Unref(VariantDict* dict);
	}
	[CRepr]
	public struct VariantIter
	{
		public c_uint* x;
		[LinkName("g_variant_iter_free")]
		public static extern void Free(VariantIter* iter);
		[LinkName("g_variant_iter_n_children")]
		public static extern c_ulong NChildren(VariantIter* iter);
		[LinkName("g_variant_iter_next_value")]
		public static extern Variant* NextValue(VariantIter* iter);
	}
	[CRepr]
	public struct VariantType
	{
		[LinkName("g_variant_type_new")]
		public static extern VariantType* New(char8* type_string);
		[LinkName("g_variant_type_new_array")]
		public static extern VariantType* NewArray(VariantType* element);
		[LinkName("g_variant_type_new_dict_entry")]
		public static extern VariantType* NewDictEntry(VariantType* key, VariantType* value);
		[LinkName("g_variant_type_new_maybe")]
		public static extern VariantType* NewMaybe(VariantType* element);
		[LinkName("g_variant_type_new_tuple")]
		public static extern VariantType* NewTuple(VariantType** items, c_int length);
		[LinkName("g_variant_type_copy")]
		public static extern VariantType* Copy(VariantType* type);
		[LinkName("g_variant_type_dup_string")]
		public static extern char8* DupString(VariantType* type);
		[LinkName("g_variant_type_element")]
		public static extern VariantType* Element(VariantType* type);
		[LinkName("g_variant_type_equal")]
		public static extern c_int Equal(VariantType type1, VariantType type2);
		[LinkName("g_variant_type_first")]
		public static extern VariantType* First(VariantType* type);
		[LinkName("g_variant_type_free")]
		public static extern void Free(VariantType* type);
		[LinkName("g_variant_type_get_string_length")]
		public static extern c_ulong GetStringLength(VariantType* type);
		[LinkName("g_variant_type_hash")]
		public static extern c_uint Hash(VariantType type);
		[LinkName("g_variant_type_is_array")]
		public static extern c_int IsArray(VariantType* type);
		[LinkName("g_variant_type_is_basic")]
		public static extern c_int IsBasic(VariantType* type);
		[LinkName("g_variant_type_is_container")]
		public static extern c_int IsContainer(VariantType* type);
		[LinkName("g_variant_type_is_definite")]
		public static extern c_int IsDefinite(VariantType* type);
		[LinkName("g_variant_type_is_dict_entry")]
		public static extern c_int IsDictEntry(VariantType* type);
		[LinkName("g_variant_type_is_maybe")]
		public static extern c_int IsMaybe(VariantType* type);
		[LinkName("g_variant_type_is_subtype_of")]
		public static extern c_int IsSubtypeOf(VariantType* type, VariantType* supertype);
		[LinkName("g_variant_type_is_tuple")]
		public static extern c_int IsTuple(VariantType* type);
		[LinkName("g_variant_type_is_variant")]
		public static extern c_int IsVariant(VariantType* type);
		[LinkName("g_variant_type_key")]
		public static extern VariantType* Key(VariantType* type);
		[LinkName("g_variant_type_n_items")]
		public static extern c_ulong NItems(VariantType* type);
		[LinkName("g_variant_type_next")]
		public static extern VariantType* Next(VariantType* type);
		[LinkName("g_variant_type_value")]
		public static extern VariantType* Value(VariantType* type);
	}
	[CRepr, AllowDuplicates]
	public enum AsciiType
	{
		Alnum = 1,
		Alpha = 2,
		Cntrl = 4,
		Digit = 8,
		Graph = 16,
		Lower = 32,
		Print = 64,
		Punct = 128,
		Space = 256,
		Upper = 512,
		Xdigit = 1024
	}
	[CRepr, AllowDuplicates]
	public enum BookmarkFileError
	{
		InvalidUri = 0,
		InvalidValue = 1,
		AppNotRegistered = 2,
		UriNotFound = 3,
		Read = 4,
		UnknownEncoding = 5,
		Write = 6,
		FileNotFound = 7
	}
	[CRepr, AllowDuplicates]
	public enum ChecksumType
	{
		Md5 = 0,
		Sha1 = 1,
		Sha256 = 2,
		Sha512 = 3,
		Sha384 = 4
	}
	[CRepr, AllowDuplicates]
	public enum ConvertError
	{
		NoConversion = 0,
		IllegalSequence = 1,
		Failed = 2,
		PartialInput = 3,
		BadUri = 4,
		NotAbsolutePath = 5,
		NoMemory = 6,
		EmbeddedNul = 7
	}
	[CRepr, AllowDuplicates]
	public enum DateDMY
	{
		Day = 0,
		Month = 1,
		Year = 2
	}
	[CRepr, AllowDuplicates]
	public enum DateMonth
	{
		BadMonth = 0,
		January = 1,
		February = 2,
		March = 3,
		April = 4,
		May = 5,
		June = 6,
		July = 7,
		August = 8,
		September = 9,
		October = 10,
		November = 11,
		December = 12
	}
	[CRepr, AllowDuplicates]
	public enum DateWeekday
	{
		BadWeekday = 0,
		Monday = 1,
		Tuesday = 2,
		Wednesday = 3,
		Thursday = 4,
		Friday = 5,
		Saturday = 6,
		Sunday = 7
	}
	[CRepr, AllowDuplicates]
	public enum ErrorType
	{
		Unknown = 0,
		UnexpEof = 1,
		UnexpEofInString = 2,
		UnexpEofInComment = 3,
		NonDigitInConst = 4,
		DigitRadix = 5,
		FloatRadix = 6,
		FloatMalformed = 7
	}
	[CRepr, AllowDuplicates]
	public enum FileError
	{
		Exist = 0,
		Isdir = 1,
		Acces = 2,
		Nametoolong = 3,
		Noent = 4,
		Notdir = 5,
		Nxio = 6,
		Nodev = 7,
		Rofs = 8,
		Txtbsy = 9,
		Fault = 10,
		Loop = 11,
		Nospc = 12,
		Nomem = 13,
		Mfile = 14,
		Nfile = 15,
		Badf = 16,
		Inval = 17,
		Pipe = 18,
		Again = 19,
		Intr = 20,
		Io = 21,
		Perm = 22,
		Nosys = 23,
		Failed = 24
	}
	[CRepr, AllowDuplicates]
	public enum FileSetContentsFlags
	{
		None = 0,
		Consistent = 1,
		Durable = 2,
		OnlyExisting = 4
	}
	[CRepr, AllowDuplicates]
	public enum FileTest
	{
		IsRegular = 1,
		IsSymlink = 2,
		IsDir = 4,
		IsExecutable = 8,
		Exists = 16
	}
	[CRepr, AllowDuplicates]
	public enum FormatSizeFlags
	{
		Default = 0,
		LongFormat = 1,
		IecUnits = 2,
		Bits = 4,
		OnlyValue = 8,
		OnlyUnit = 16
	}
	[CRepr, AllowDuplicates]
	public enum HookFlagMask
	{
		Active = 1,
		InCall = 2,
		Mask = 15
	}
	[CRepr, AllowDuplicates]
	public enum IOChannelError
	{
		Fbig = 0,
		Inval = 1,
		Io = 2,
		Isdir = 3,
		Nospc = 4,
		Nxio = 5,
		Overflow = 6,
		Pipe = 7,
		Failed = 8
	}
	[CRepr, AllowDuplicates]
	public enum IOCondition
	{
		In = 1,
		Out = 4,
		Pri = 2,
		Err = 8,
		Hup = 16,
		Nval = 32
	}
	[CRepr, AllowDuplicates]
	public enum IOError
	{
		None = 0,
		Again = 1,
		Inval = 2,
		Unknown = 3
	}
	[CRepr, AllowDuplicates]
	public enum IOFlags
	{
		None = 0,
		Append = 1,
		Nonblock = 2,
		IsReadable = 4,
		IsWritable = 8,
		IsWriteable = 8,
		IsSeekable = 16,
		Mask = 31,
		GetMask = 31,
		SetMask = 3
	}
	[CRepr, AllowDuplicates]
	public enum IOStatus
	{
		Error = 0,
		Normal = 1,
		Eof = 2,
		Again = 3
	}
	[CRepr, AllowDuplicates]
	public enum KeyFileError
	{
		UnknownEncoding = 0,
		Parse = 1,
		NotFound = 2,
		KeyNotFound = 3,
		GroupNotFound = 4,
		InvalidValue = 5
	}
	[CRepr, AllowDuplicates]
	public enum KeyFileFlags
	{
		None = 0,
		KeepComments = 1,
		KeepTranslations = 2
	}
	[CRepr, AllowDuplicates]
	public enum LogLevelFlags
	{
		FlagRecursion = 1,
		FlagFatal = 2,
		LevelError = 4,
		LevelCritical = 8,
		LevelWarning = 16,
		LevelMessage = 32,
		LevelInfo = 64,
		LevelDebug = 128,
		LevelMask = -4
	}
	[CRepr, AllowDuplicates]
	public enum LogWriterOutput
	{
		Handled = 1,
		Unhandled = 0
	}
	[CRepr, AllowDuplicates]
	public enum MainContextFlags
	{
		None = 0,
		OwnerlessPolling = 1
	}
	[CRepr, AllowDuplicates]
	public enum MarkupCollectType
	{
		Invalid = 0,
		String = 1,
		Strdup = 2,
		Boolean = 3,
		Tristate = 4,
		Optional = 65536
	}
	[CRepr, AllowDuplicates]
	public enum MarkupError
	{
		BadUtf8 = 0,
		Empty = 1,
		Parse = 2,
		UnknownElement = 3,
		UnknownAttribute = 4,
		InvalidContent = 5,
		MissingAttribute = 6
	}
	[CRepr, AllowDuplicates]
	public enum MarkupParseFlags
	{
		DefaultFlags = 0,
		DoNotUseThisUnsupportedFlag = 1,
		TreatCdataAsText = 2,
		PrefixErrorPosition = 4,
		IgnoreQualified = 8
	}
	[CRepr, AllowDuplicates]
	public enum NormalizeMode
	{
		Default = 0,
		Nfd = 0,
		DefaultCompose = 1,
		Nfc = 1,
		All = 2,
		Nfkd = 2,
		AllCompose = 3,
		Nfkc = 3
	}
	[CRepr, AllowDuplicates]
	public enum NumberParserError
	{
		Invalid = 0,
		OutOfBounds = 1
	}
	[CRepr, AllowDuplicates]
	public enum OnceStatus
	{
		Notcalled = 0,
		Progress = 1,
		Ready = 2
	}
	[CRepr, AllowDuplicates]
	public enum OptionArg
	{
		None = 0,
		String = 1,
		Int = 2,
		Callback = 3,
		Filename = 4,
		StringArray = 5,
		FilenameArray = 6,
		Double = 7,
		Int64 = 8
	}
	[CRepr, AllowDuplicates]
	public enum OptionError
	{
		UnknownOption = 0,
		BadValue = 1,
		Failed = 2
	}
	[CRepr, AllowDuplicates]
	public enum OptionFlags
	{
		None = 0,
		Hidden = 1,
		InMain = 2,
		Reverse = 4,
		NoArg = 8,
		Filename = 16,
		OptionalArg = 32,
		Noalias = 64
	}
	[CRepr, AllowDuplicates]
	public enum RegexCompileFlags
	{
		Default = 0,
		Caseless = 1,
		Multiline = 2,
		Dotall = 4,
		Extended = 8,
		Anchored = 16,
		DollarEndonly = 32,
		Ungreedy = 512,
		Raw = 2048,
		NoAutoCapture = 4096,
		Optimize = 8192,
		Firstline = 262144,
		Dupnames = 524288,
		NewlineCr = 1048576,
		NewlineLf = 2097152,
		NewlineCrlf = 3145728,
		NewlineAnycrlf = 5242880,
		BsrAnycrlf = 8388608,
		JavascriptCompat = 33554432
	}
	[CRepr, AllowDuplicates]
	public enum RegexError
	{
		Compile = 0,
		Optimize = 1,
		Replace = 2,
		Match = 3,
		Internal = 4,
		StrayBackslash = 101,
		MissingControlChar = 102,
		UnrecognizedEscape = 103,
		QuantifiersOutOfOrder = 104,
		QuantifierTooBig = 105,
		UnterminatedCharacterClass = 106,
		InvalidEscapeInCharacterClass = 107,
		RangeOutOfOrder = 108,
		NothingToRepeat = 109,
		UnrecognizedCharacter = 112,
		PosixNamedClassOutsideClass = 113,
		UnmatchedParenthesis = 114,
		InexistentSubpatternReference = 115,
		UnterminatedComment = 118,
		ExpressionTooLarge = 120,
		MemoryError = 121,
		VariableLengthLookbehind = 125,
		MalformedCondition = 126,
		TooManyConditionalBranches = 127,
		AssertionExpected = 128,
		UnknownPosixClassName = 130,
		PosixCollatingElementsNotSupported = 131,
		HexCodeTooLarge = 134,
		InvalidCondition = 135,
		SingleByteMatchInLookbehind = 136,
		InfiniteLoop = 140,
		MissingSubpatternNameTerminator = 142,
		DuplicateSubpatternName = 143,
		MalformedProperty = 146,
		UnknownProperty = 147,
		SubpatternNameTooLong = 148,
		TooManySubpatterns = 149,
		InvalidOctalValue = 151,
		TooManyBranchesInDefine = 154,
		DefineRepetion = 155,
		InconsistentNewlineOptions = 156,
		MissingBackReference = 157,
		InvalidRelativeReference = 158,
		BacktrackingControlVerbArgumentForbidden = 159,
		UnknownBacktrackingControlVerb = 160,
		NumberTooBig = 161,
		MissingSubpatternName = 162,
		MissingDigit = 163,
		InvalidDataCharacter = 164,
		ExtraSubpatternName = 165,
		BacktrackingControlVerbArgumentRequired = 166,
		InvalidControlChar = 168,
		MissingName = 169,
		NotSupportedInClass = 171,
		TooManyForwardReferences = 172,
		NameTooLong = 175,
		CharacterValueTooLarge = 176
	}
	[CRepr, AllowDuplicates]
	public enum RegexMatchFlags
	{
		Default = 0,
		Anchored = 16,
		Notbol = 128,
		Noteol = 256,
		Notempty = 1024,
		Partial = 32768,
		NewlineCr = 1048576,
		NewlineLf = 2097152,
		NewlineCrlf = 3145728,
		NewlineAny = 4194304,
		NewlineAnycrlf = 5242880,
		BsrAnycrlf = 8388608,
		BsrAny = 16777216,
		PartialSoft = 32768,
		PartialHard = 134217728,
		NotemptyAtstart = 268435456
	}
	[CRepr, AllowDuplicates]
	public enum SeekType
	{
		Cur = 0,
		Set = 1,
		End = 2
	}
	[CRepr, AllowDuplicates]
	public enum ShellError
	{
		BadQuoting = 0,
		EmptyString = 1,
		Failed = 2
	}
	[CRepr, AllowDuplicates]
	public enum SliceConfig
	{
		AlwaysMalloc = 1,
		BypassMagazines = 2,
		WorkingSetMsecs = 3,
		ColorIncrement = 4,
		ChunkSizes = 5,
		ContentionCounter = 6
	}
	[CRepr, AllowDuplicates]
	public enum SpawnError
	{
		Fork = 0,
		Read = 1,
		Chdir = 2,
		Acces = 3,
		Perm = 4,
		TooBig = 5,
		_2big = 5,
		Noexec = 6,
		Nametoolong = 7,
		Noent = 8,
		Nomem = 9,
		Notdir = 10,
		Loop = 11,
		Txtbusy = 12,
		Io = 13,
		Nfile = 14,
		Mfile = 15,
		Inval = 16,
		Isdir = 17,
		Libbad = 18,
		Failed = 19
	}
	[CRepr, AllowDuplicates]
	public enum SpawnFlags
	{
		Default = 0,
		LeaveDescriptorsOpen = 1,
		DoNotReapChild = 2,
		SearchPath = 4,
		StdoutToDevNull = 8,
		StderrToDevNull = 16,
		ChildInheritsStdin = 32,
		FileAndArgvZero = 64,
		SearchPathFromEnvp = 128,
		CloexecPipes = 256,
		ChildInheritsStdout = 512,
		ChildInheritsStderr = 1024,
		StdinFromDevNull = 2048
	}
	[CRepr, AllowDuplicates]
	public enum TestFileType
	{
		Dist = 0,
		Built = 1
	}
	[CRepr, AllowDuplicates]
	public enum TestLogType
	{
		None = 0,
		Error = 1,
		StartBinary = 2,
		ListCase = 3,
		SkipCase = 4,
		StartCase = 5,
		StopCase = 6,
		MinResult = 7,
		MaxResult = 8,
		Message = 9,
		StartSuite = 10,
		StopSuite = 11
	}
	[CRepr, AllowDuplicates]
	public enum TestResult
	{
		Success = 0,
		Skipped = 1,
		Failure = 2,
		Incomplete = 3
	}
	[CRepr, AllowDuplicates]
	public enum TestSubprocessFlags
	{
		Default = 0,
		InheritStdin = 1,
		InheritStdout = 2,
		InheritStderr = 4
	}
	[CRepr, AllowDuplicates]
	public enum TestTrapFlags
	{
		Default = 0,
		SilenceStdout = 128,
		SilenceStderr = 256,
		InheritStdin = 512
	}
	[CRepr, AllowDuplicates]
	public enum ThreadError
	{
		ThreadErrorAgain = 0
	}
	[CRepr, AllowDuplicates]
	public enum TimeType
	{
		Standard = 0,
		Daylight = 1,
		Universal = 2
	}
	[CRepr, AllowDuplicates]
	public enum TokenType
	{
		Eof = 0,
		LeftParen = 40,
		RightParen = 41,
		LeftCurly = 123,
		RightCurly = 125,
		LeftBrace = 91,
		RightBrace = 93,
		EqualSign = 61,
		Comma = 44,
		None = 256,
		Error = 257,
		Char = 258,
		Binary = 259,
		Octal = 260,
		Int = 261,
		Hex = 262,
		Float = 263,
		String = 264,
		Symbol = 265,
		Identifier = 266,
		IdentifierNull = 267,
		CommentSingle = 268,
		CommentMulti = 269
	}
	[CRepr, AllowDuplicates]
	public enum TraverseFlags
	{
		Leaves = 1,
		NonLeaves = 2,
		All = 3,
		Mask = 3,
		Leafs = 1,
		NonLeafs = 2
	}
	[CRepr, AllowDuplicates]
	public enum TraverseType
	{
		InOrder = 0,
		PreOrder = 1,
		PostOrder = 2,
		LevelOrder = 3
	}
	[CRepr, AllowDuplicates]
	public enum UnicodeBreakType
	{
		Mandatory = 0,
		CarriageReturn = 1,
		LineFeed = 2,
		CombiningMark = 3,
		Surrogate = 4,
		ZeroWidthSpace = 5,
		Inseparable = 6,
		NonBreakingGlue = 7,
		Contingent = 8,
		Space = 9,
		After = 10,
		Before = 11,
		BeforeAndAfter = 12,
		Hyphen = 13,
		NonStarter = 14,
		OpenPunctuation = 15,
		ClosePunctuation = 16,
		Quotation = 17,
		Exclamation = 18,
		Ideographic = 19,
		Numeric = 20,
		InfixSeparator = 21,
		Symbol = 22,
		Alphabetic = 23,
		Prefix = 24,
		Postfix = 25,
		ComplexContext = 26,
		Ambiguous = 27,
		Unknown = 28,
		NextLine = 29,
		WordJoiner = 30,
		HangulLJamo = 31,
		HangulVJamo = 32,
		HangulTJamo = 33,
		HangulLvSyllable = 34,
		HangulLvtSyllable = 35,
		CloseParanthesis = 36,
		CloseParenthesis = 36,
		ConditionalJapaneseStarter = 37,
		HebrewLetter = 38,
		RegionalIndicator = 39,
		EmojiBase = 40,
		EmojiModifier = 41,
		ZeroWidthJoiner = 42
	}
	[CRepr, AllowDuplicates]
	public enum UnicodeScript
	{
		InvalidCode = -1,
		Common = 0,
		Inherited = 1,
		Arabic = 2,
		Armenian = 3,
		Bengali = 4,
		Bopomofo = 5,
		Cherokee = 6,
		Coptic = 7,
		Cyrillic = 8,
		Deseret = 9,
		Devanagari = 10,
		Ethiopic = 11,
		Georgian = 12,
		Gothic = 13,
		Greek = 14,
		Gujarati = 15,
		Gurmukhi = 16,
		Han = 17,
		Hangul = 18,
		Hebrew = 19,
		Hiragana = 20,
		Kannada = 21,
		Katakana = 22,
		Khmer = 23,
		Lao = 24,
		Latin = 25,
		Malayalam = 26,
		Mongolian = 27,
		Myanmar = 28,
		Ogham = 29,
		OldItalic = 30,
		Oriya = 31,
		Runic = 32,
		Sinhala = 33,
		Syriac = 34,
		Tamil = 35,
		Telugu = 36,
		Thaana = 37,
		Thai = 38,
		Tibetan = 39,
		CanadianAboriginal = 40,
		Yi = 41,
		Tagalog = 42,
		Hanunoo = 43,
		Buhid = 44,
		Tagbanwa = 45,
		Braille = 46,
		Cypriot = 47,
		Limbu = 48,
		Osmanya = 49,
		Shavian = 50,
		LinearB = 51,
		TaiLe = 52,
		Ugaritic = 53,
		NewTaiLue = 54,
		Buginese = 55,
		Glagolitic = 56,
		Tifinagh = 57,
		SylotiNagri = 58,
		OldPersian = 59,
		Kharoshthi = 60,
		Unknown = 61,
		Balinese = 62,
		Cuneiform = 63,
		Phoenician = 64,
		PhagsPa = 65,
		Nko = 66,
		KayahLi = 67,
		Lepcha = 68,
		Rejang = 69,
		Sundanese = 70,
		Saurashtra = 71,
		Cham = 72,
		OlChiki = 73,
		Vai = 74,
		Carian = 75,
		Lycian = 76,
		Lydian = 77,
		Avestan = 78,
		Bamum = 79,
		EgyptianHieroglyphs = 80,
		ImperialAramaic = 81,
		InscriptionalPahlavi = 82,
		InscriptionalParthian = 83,
		Javanese = 84,
		Kaithi = 85,
		Lisu = 86,
		MeeteiMayek = 87,
		OldSouthArabian = 88,
		OldTurkic = 89,
		Samaritan = 90,
		TaiTham = 91,
		TaiViet = 92,
		Batak = 93,
		Brahmi = 94,
		Mandaic = 95,
		Chakma = 96,
		MeroiticCursive = 97,
		MeroiticHieroglyphs = 98,
		Miao = 99,
		Sharada = 100,
		SoraSompeng = 101,
		Takri = 102,
		BassaVah = 103,
		CaucasianAlbanian = 104,
		Duployan = 105,
		Elbasan = 106,
		Grantha = 107,
		Khojki = 108,
		Khudawadi = 109,
		LinearA = 110,
		Mahajani = 111,
		Manichaean = 112,
		MendeKikakui = 113,
		Modi = 114,
		Mro = 115,
		Nabataean = 116,
		OldNorthArabian = 117,
		OldPermic = 118,
		PahawhHmong = 119,
		Palmyrene = 120,
		PauCinHau = 121,
		PsalterPahlavi = 122,
		Siddham = 123,
		Tirhuta = 124,
		WarangCiti = 125,
		Ahom = 126,
		AnatolianHieroglyphs = 127,
		Hatran = 128,
		Multani = 129,
		OldHungarian = 130,
		Signwriting = 131,
		Adlam = 132,
		Bhaiksuki = 133,
		Marchen = 134,
		Newa = 135,
		Osage = 136,
		Tangut = 137,
		MasaramGondi = 138,
		Nushu = 139,
		Soyombo = 140,
		ZanabazarSquare = 141,
		Dogra = 142,
		GunjalaGondi = 143,
		HanifiRohingya = 144,
		Makasar = 145,
		Medefaidrin = 146,
		OldSogdian = 147,
		Sogdian = 148,
		Elymaic = 149,
		Nandinagari = 150,
		NyiakengPuachueHmong = 151,
		Wancho = 152,
		Chorasmian = 153,
		DivesAkuru = 154,
		KhitanSmallScript = 155,
		Yezidi = 156,
		CyproMinoan = 157,
		OldUyghur = 158,
		Tangsa = 159,
		Toto = 160,
		Vithkuqi = 161,
		Math = 162,
		Kawi = 163,
		NagMundari = 164
	}
	[CRepr, AllowDuplicates]
	public enum UnicodeType
	{
		Control = 0,
		Format = 1,
		Unassigned = 2,
		PrivateUse = 3,
		Surrogate = 4,
		LowercaseLetter = 5,
		ModifierLetter = 6,
		OtherLetter = 7,
		TitlecaseLetter = 8,
		UppercaseLetter = 9,
		SpacingMark = 10,
		EnclosingMark = 11,
		NonSpacingMark = 12,
		DecimalNumber = 13,
		LetterNumber = 14,
		OtherNumber = 15,
		ConnectPunctuation = 16,
		DashPunctuation = 17,
		ClosePunctuation = 18,
		FinalPunctuation = 19,
		InitialPunctuation = 20,
		OtherPunctuation = 21,
		OpenPunctuation = 22,
		CurrencySymbol = 23,
		ModifierSymbol = 24,
		MathSymbol = 25,
		OtherSymbol = 26,
		LineSeparator = 27,
		ParagraphSeparator = 28,
		SpaceSeparator = 29
	}
	[CRepr, AllowDuplicates]
	public enum UriError
	{
		Failed = 0,
		BadScheme = 1,
		BadUser = 2,
		BadPassword = 3,
		BadAuthParams = 4,
		BadHost = 5,
		BadPort = 6,
		BadPath = 7,
		BadQuery = 8,
		BadFragment = 9
	}
	[CRepr, AllowDuplicates]
	public enum UriFlags
	{
		None = 0,
		ParseRelaxed = 1,
		HasPassword = 2,
		HasAuthParams = 4,
		Encoded = 8,
		NonDns = 16,
		EncodedQuery = 32,
		EncodedPath = 64,
		EncodedFragment = 128,
		SchemeNormalize = 256
	}
	[CRepr, AllowDuplicates]
	public enum UriHideFlags
	{
		None = 0,
		Userinfo = 1,
		Password = 2,
		AuthParams = 4,
		Query = 8,
		Fragment = 16
	}
	[CRepr, AllowDuplicates]
	public enum UriParamsFlags
	{
		None = 0,
		CaseInsensitive = 1,
		WwwForm = 2,
		ParseRelaxed = 4
	}
	[CRepr, AllowDuplicates]
	public enum UserDirectory
	{
		DirectoryDesktop = 0,
		DirectoryDocuments = 1,
		DirectoryDownload = 2,
		DirectoryMusic = 3,
		DirectoryPictures = 4,
		DirectoryPublicShare = 5,
		DirectoryTemplates = 6,
		DirectoryVideos = 7,
		NDirectories = 8
	}
	[CRepr, AllowDuplicates]
	public enum VariantClass
	{
		Boolean = 98,
		Byte = 121,
		Int16 = 110,
		Uint16 = 113,
		Int32 = 105,
		Uint32 = 117,
		Int64 = 120,
		Uint64 = 116,
		Handle = 104,
		Double = 100,
		String = 115,
		ObjectPath = 111,
		Signature = 103,
		Variant = 118,
		Maybe = 109,
		Array = 97,
		Tuple = 40,
		DictEntry = 123
	}
	[CRepr, AllowDuplicates]
	public enum VariantParseError
	{
		Failed = 0,
		BasicTypeExpected = 1,
		CannotInferType = 2,
		DefiniteTypeExpected = 3,
		InputNotAtEnd = 4,
		InvalidCharacter = 5,
		InvalidFormatString = 6,
		InvalidObjectPath = 7,
		InvalidSignature = 8,
		InvalidTypeString = 9,
		NoCommonType = 10,
		NumberOutOfRange = 11,
		NumberTooBig = 12,
		TypeError = 13,
		UnexpectedToken = 14,
		UnknownKeyword = 15,
		UnterminatedStringConstant = 16,
		ValueExpected = 17,
		Recursion = 18
	}
	public function void ChildWatchFunc(Pid pid, c_int wait_status, void* user_data);
	public function void ClearHandleFunc(c_uint handle_id);
	public function c_int CompareDataFunc(void* a, void* b, void* user_data);
	public function c_int CompareFunc(void* a, void* b);
	public function void* CopyFunc(void* src, void* data);
	public function void DataForeachFunc(Quark key_id, void* data, void* user_data);
	public function void DestroyNotify(void* data);
	public function void* DuplicateFunc(void* data, void* user_data);
	public function c_int EqualFunc(void* a, void* b);
	public function c_int EqualFuncFull(void* a, void* b, void* user_data);
	public function void ErrorClearFunc(Error* error);
	public function void ErrorCopyFunc(Error* src_error, Error* dest_error);
	public function void ErrorInitFunc(Error* error);
	public function void FreeFunc(void* data);
	public function void Func(void* data, void* user_data);
	public function void HFunc(void* key, void* value, void* user_data);
	public function c_int HRFunc(void* key, void* value, void* user_data);
	public function c_uint HashFunc(void* key);
	public function c_int HookCheckFunc(void* data);
	public function c_int HookCheckMarshaller(Hook* hook, void* marshal_data);
	public function c_int HookCompareFunc(Hook* new_hook, Hook* sibling);
	public function void HookFinalizeFunc(HookList* hook_list, Hook* hook);
	public function c_int HookFindFunc(Hook* hook, void* data);
	public function void HookFunc(void* data);
	public function void HookMarshaller(Hook* hook, void* marshal_data);
	public function c_int IOFunc(IOChannel* source, IOCondition condition, void* data);
	public function void LogFunc(char8* log_domain, LogLevelFlags log_level, char8* message, void* user_data);
	public function LogWriterOutput LogWriterFunc(LogLevelFlags log_level, LogField* fields, c_ulong n_fields, void* user_data);
	public function void NodeForeachFunc(Node* node, void* data);
	public function c_int NodeTraverseFunc(Node* node, void* data);
	public function c_int OptionArgFunc(char8* option_name, char8* value, void* data);
	public function void OptionErrorFunc(OptionContext* context, OptionGroup* group, void* data);
	public function c_int OptionParseFunc(OptionContext* context, OptionGroup* group, void* data);
	public function c_int PollFunc(PollFD* ufds, c_uint nfsd, c_int timeout_);
	public function void PrintFunc(char8* string);
	public function c_int RegexEvalCallback(MatchInfo* match_info, String* result, void* user_data);
	public function void ScannerMsgFunc(Scanner* scanner, char8* message, c_int error);
	public function c_int SequenceIterCompareFunc(SequenceIter* a, SequenceIter* b, void* data);
	public function void SourceDisposeFunc(Source* source);
	public function void SourceDummyMarshal();
	public function c_int SourceFunc(void* user_data);
	public function void SourceOnceFunc(void* user_data);
	public function void SpawnChildSetupFunc(void* data);
	public function void TestDataFunc(void* user_data);
	public function void TestFixtureFunc(void* fixture, void* user_data);
	public function void TestFunc();
	public function c_int TestLogFatalFunc(char8* log_domain, LogLevelFlags log_level, char8* message, void* user_data);
	public function void* ThreadFunc(void* data);
	public function char8* TranslateFunc(char8* str, void* data);
	public function c_int TraverseFunc(void* key, void* value, void* data);
	public function c_int TraverseNodeFunc(TreeNode* node, void* data);
	public function c_int UnixFDSourceFunc(c_int fd, IOCondition condition, void* user_data);
	public function void VoidFunc();
	[Union]
	public struct DoubleIEEE754
	{
	public double v_double;
	}
	[Union]
	public struct FloatIEEE754
	{
	public float v_float;
	}
	[Union]
	public struct Mutex
	{
	public void* p;
	public c_uint i;
	}
	[Union]
	public struct TokenValue
	{
	public void* v_symbol;
	public char8* v_identifier;
	public c_ulong v_binary;
	public c_ulong v_octal;
	public c_ulong v_int;
	public c_ulonglong v_int64;
	public double v_float;
	public c_ulong v_hex;
	public char8* v_string;
	public char8* v_comment;
	public c_uchar v_char;
	public c_uint v_error;
	}
}
