namespace GLib;

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
	public typealias Strv = char8*;
	public typealias Time = c_int;
	public typealias TimeSpan = c_longlong;
	public typealias Type = c_ulong;
	[CRepr]
	public struct Array
	{
		char8* data;
		c_uint len;
	}
	[CRepr]
	public struct AsciiType
	{
		public const int G_ASCII_ALNUM = 1;
		public const int G_ASCII_ALPHA = 2;
		public const int G_ASCII_CNTRL = 4;
		public const int G_ASCII_DIGIT = 8;
		public const int G_ASCII_GRAPH = 16;
		public const int G_ASCII_LOWER = 32;
		public const int G_ASCII_PRINT = 64;
		public const int G_ASCII_PUNCT = 128;
		public const int G_ASCII_SPACE = 256;
		public const int G_ASCII_UPPER = 512;
		public const int G_ASCII_XDIGIT = 1024;
	}
	[CRepr]
	public struct AsyncQueue
	{
	}
	[CRepr]
	public struct BookmarkFile
	{
	}
	public enum BookmarkFileError : c_int
	{
		G_BOOKMARK_FILE_ERROR_INVALID_URI,
		G_BOOKMARK_FILE_ERROR_INVALID_VALUE,
		G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED,
		G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND,
		G_BOOKMARK_FILE_ERROR_READ,
		G_BOOKMARK_FILE_ERROR_UNKNOWN_ENCODING,
		G_BOOKMARK_FILE_ERROR_WRITE,
		G_BOOKMARK_FILE_ERROR_FILE_NOT_FOUND
	}
	[CRepr]
	public struct ByteArray
	{
		c_uchar data;
		c_uint len;
	}
	[CRepr]
	public struct Bytes
	{
	}
	[CRepr]
	public struct Checksum
	{
	}
	public enum ChecksumType : c_int
	{
		G_CHECKSUM_MD5,
		G_CHECKSUM_SHA1,
		G_CHECKSUM_SHA256,
		G_CHECKSUM_SHA512,
		G_CHECKSUM_SHA384
	}
	public function void ChildWatchFunc(Pid pid, c_int wait_status, void* user_data);
	public function void ClearHandleFunc(c_uint handle_id);
	public function c_int CompareDataFunc(void* a, void* b, void* user_data);
	public function c_int CompareFunc(void* a, void* b);
	[CRepr]
	public struct Cond
	{
		void* p;
	}
	public enum ConvertError : c_int
	{
		G_CONVERT_ERROR_NO_CONVERSION,
		G_CONVERT_ERROR_ILLEGAL_SEQUENCE,
		G_CONVERT_ERROR_FAILED,
		G_CONVERT_ERROR_PARTIAL_INPUT,
		G_CONVERT_ERROR_BAD_URI,
		G_CONVERT_ERROR_NOT_ABSOLUTE_PATH,
		G_CONVERT_ERROR_NO_MEMORY,
		G_CONVERT_ERROR_EMBEDDED_NUL
	}
	public function void* CopyFunc(void* src, void* data);
	[CRepr]
	public struct Data
	{
	}
	public function void DataForeachFunc(Quark key_id, void* data, void* user_data);
	[CRepr]
	public struct Date
	{
		c_uint julian_days;
		c_uint julian;
		c_uint dmy;
		c_uint day;
		c_uint month;
		c_uint year;
	}
	public enum DateDMY : c_int
	{
		G_DATE_DAY,
		G_DATE_MONTH,
		G_DATE_YEAR
	}
	public enum DateMonth : c_int
	{
		G_DATE_BAD_MONTH,
		G_DATE_JANUARY,
		G_DATE_FEBRUARY,
		G_DATE_MARCH,
		G_DATE_APRIL,
		G_DATE_MAY,
		G_DATE_JUNE,
		G_DATE_JULY,
		G_DATE_AUGUST,
		G_DATE_SEPTEMBER,
		G_DATE_OCTOBER,
		G_DATE_NOVEMBER,
		G_DATE_DECEMBER
	}
	[CRepr]
	public struct DateTime
	{
	}
	public enum DateWeekday : c_int
	{
		G_DATE_BAD_WEEKDAY,
		G_DATE_MONDAY,
		G_DATE_TUESDAY,
		G_DATE_WEDNESDAY,
		G_DATE_THURSDAY,
		G_DATE_FRIDAY,
		G_DATE_SATURDAY,
		G_DATE_SUNDAY
	}
	[CRepr]
	public struct DebugKey
	{
		char8* key;
		c_uint value;
	}
	public function void DestroyNotify(void* data);
	[CRepr]
	public struct Dir
	{
	}
	[Union]
	public struct DoubleIEEE754
	{
		public double v_double;
	}
	public function void* DuplicateFunc(void* data, void* user_data);
	public function c_int EqualFunc(void* a, void* b);
	public function c_int EqualFuncFull(void* a, void* b, void* user_data);
	[CRepr]
	public struct Error
	{
		Quark domain;
		c_int code;
		char8* message;
	}
	public function void ErrorClearFunc(Error error);
	public function void ErrorCopyFunc(Error src_error, Error dest_error);
	public function void ErrorInitFunc(Error error);
	public enum ErrorType : c_int
	{
		G_ERR_UNKNOWN,
		G_ERR_UNEXP_EOF,
		G_ERR_UNEXP_EOF_IN_STRING,
		G_ERR_UNEXP_EOF_IN_COMMENT,
		G_ERR_NON_DIGIT_IN_CONST,
		G_ERR_DIGIT_RADIX,
		G_ERR_FLOAT_RADIX,
		G_ERR_FLOAT_MALFORMED
	}
	public enum FileError : c_int
	{
		G_FILE_ERROR_EXIST,
		G_FILE_ERROR_ISDIR,
		G_FILE_ERROR_ACCES,
		G_FILE_ERROR_NAMETOOLONG,
		G_FILE_ERROR_NOENT,
		G_FILE_ERROR_NOTDIR,
		G_FILE_ERROR_NXIO,
		G_FILE_ERROR_NODEV,
		G_FILE_ERROR_ROFS,
		G_FILE_ERROR_TXTBSY,
		G_FILE_ERROR_FAULT,
		G_FILE_ERROR_LOOP,
		G_FILE_ERROR_NOSPC,
		G_FILE_ERROR_NOMEM,
		G_FILE_ERROR_MFILE,
		G_FILE_ERROR_NFILE,
		G_FILE_ERROR_BADF,
		G_FILE_ERROR_INVAL,
		G_FILE_ERROR_PIPE,
		G_FILE_ERROR_AGAIN,
		G_FILE_ERROR_INTR,
		G_FILE_ERROR_IO,
		G_FILE_ERROR_PERM,
		G_FILE_ERROR_NOSYS,
		G_FILE_ERROR_FAILED
	}
	[CRepr]
	public struct FileSetContentsFlags
	{
		public const int G_FILE_SET_CONTENTS_NONE = 0;
		public const int G_FILE_SET_CONTENTS_CONSISTENT = 1;
		public const int G_FILE_SET_CONTENTS_DURABLE = 2;
		public const int G_FILE_SET_CONTENTS_ONLY_EXISTING = 4;
	}
	[CRepr]
	public struct FileTest
	{
		public const int G_FILE_TEST_IS_REGULAR = 1;
		public const int G_FILE_TEST_IS_SYMLINK = 2;
		public const int G_FILE_TEST_IS_DIR = 4;
		public const int G_FILE_TEST_IS_EXECUTABLE = 8;
		public const int G_FILE_TEST_EXISTS = 16;
	}
	[Union]
	public struct FloatIEEE754
	{
		public float v_float;
	}
	[CRepr]
	public struct FormatSizeFlags
	{
		public const int G_FORMAT_SIZE_DEFAULT = 0;
		public const int G_FORMAT_SIZE_LONG_FORMAT = 1;
		public const int G_FORMAT_SIZE_IEC_UNITS = 2;
		public const int G_FORMAT_SIZE_BITS = 4;
		public const int G_FORMAT_SIZE_ONLY_VALUE = 8;
		public const int G_FORMAT_SIZE_ONLY_UNIT = 16;
	}
	public function void FreeFunc(void* data);
	public function void Func(void* data, void* user_data);
	public function void HFunc(void* key, void* value, void* user_data);
	public function c_int HRFunc(void* key, void* value, void* user_data);
	public function c_uint HashFunc(void* key);
	[CRepr]
	public struct HashTable
	{
	}
	[CRepr]
	public struct HashTableIter
	{
		void* dummy1;
		void* dummy2;
		void* dummy3;
		c_int dummy4;
		c_int dummy5;
		void* dummy6;
	}
	[CRepr]
	public struct Hmac
	{
	}
	[CRepr]
	public struct Hook
	{
		void* data;
		Hook* next;
		Hook* prev;
		c_uint ref_count;
		c_ulong hook_id;
		c_uint flags;
		void* func;
		DestroyNotify destroy;
	}
	public function c_int HookCheckFunc(void* data);
	public function c_int HookCheckMarshaller(Hook hook, void* marshal_data);
	public function c_int HookCompareFunc(Hook new_hook, Hook sibling);
	public function void HookFinalizeFunc(HookList hook_list, Hook hook);
	public function c_int HookFindFunc(Hook hook, void* data);
	[CRepr]
	public struct HookFlagMask
	{
		public const int G_HOOK_FLAG_ACTIVE = 1;
		public const int G_HOOK_FLAG_IN_CALL = 2;
		public const int G_HOOK_FLAG_MASK = 15;
	}
	public function void HookFunc(void* data);
	[CRepr]
	public struct HookList
	{
		c_ulong seq_id;
		c_uint hook_size;
		c_uint is_setup;
		Hook hooks;
		void* dummy3;
		HookFinalizeFunc finalize_hook;
	}
	public function void HookMarshaller(Hook hook, void* marshal_data);
	[CRepr]
	public struct IConv
	{
	}
	[CRepr]
	public struct IOChannel
	{
		c_int ref_count;
		IOFuncs funcs;
		char8* encoding;
		IConv read_cd;
		IConv write_cd;
		char8* line_term;
		c_uint line_term_len;
		c_ulong buf_size;
		String read_buf;
		String encoded_read_buf;
		String write_buf;
		c_uint use_buffer;
		c_uint do_encode;
		c_uint close_on_unref;
		c_uint is_readable;
		c_uint is_writeable;
		c_uint is_seekable;
		void* reserved1;
		void* reserved2;
	}
	public enum IOChannelError : c_int
	{
		G_IO_CHANNEL_ERROR_FBIG,
		G_IO_CHANNEL_ERROR_INVAL,
		G_IO_CHANNEL_ERROR_IO,
		G_IO_CHANNEL_ERROR_ISDIR,
		G_IO_CHANNEL_ERROR_NOSPC,
		G_IO_CHANNEL_ERROR_NXIO,
		G_IO_CHANNEL_ERROR_OVERFLOW,
		G_IO_CHANNEL_ERROR_PIPE,
		G_IO_CHANNEL_ERROR_FAILED
	}
	[CRepr]
	public struct IOCondition
	{
		public const int G_IO_IN = 1;
		public const int G_IO_OUT = 4;
		public const int G_IO_PRI = 2;
		public const int G_IO_ERR = 8;
		public const int G_IO_HUP = 16;
		public const int G_IO_NVAL = 32;
	}
	public enum IOError : c_int
	{
		G_IO_ERROR_NONE,
		G_IO_ERROR_AGAIN,
		G_IO_ERROR_INVAL,
		G_IO_ERROR_UNKNOWN
	}
	[CRepr]
	public struct IOFlags
	{
		public const int G_IO_FLAG_NONE = 0;
		public const int G_IO_FLAG_APPEND = 1;
		public const int G_IO_FLAG_NONBLOCK = 2;
		public const int G_IO_FLAG_IS_READABLE = 4;
		public const int G_IO_FLAG_IS_WRITABLE = 8;
		public const int G_IO_FLAG_IS_WRITEABLE = 8;
		public const int G_IO_FLAG_IS_SEEKABLE = 16;
		public const int G_IO_FLAG_MASK = 31;
		public const int G_IO_FLAG_GET_MASK = 31;
		public const int G_IO_FLAG_SET_MASK = 3;
	}
	public function c_int IOFunc(IOChannel source, IOCondition condition, void* data);
	[CRepr]
	public struct IOFuncs
	{
	}
	public enum IOStatus : c_int
	{
		G_IO_STATUS_ERROR,
		G_IO_STATUS_NORMAL,
		G_IO_STATUS_EOF,
		G_IO_STATUS_AGAIN
	}
	[CRepr]
	public struct KeyFile
	{
	}
	public enum KeyFileError : c_int
	{
		G_KEY_FILE_ERROR_UNKNOWN_ENCODING,
		G_KEY_FILE_ERROR_PARSE,
		G_KEY_FILE_ERROR_NOT_FOUND,
		G_KEY_FILE_ERROR_KEY_NOT_FOUND,
		G_KEY_FILE_ERROR_GROUP_NOT_FOUND,
		G_KEY_FILE_ERROR_INVALID_VALUE
	}
	[CRepr]
	public struct KeyFileFlags
	{
		public const int G_KEY_FILE_NONE = 0;
		public const int G_KEY_FILE_KEEP_COMMENTS = 1;
		public const int G_KEY_FILE_KEEP_TRANSLATIONS = 2;
	}
	[CRepr]
	public struct List
	{
		void* data;
		GLib.List* next;
		GLib.List* prev;
	}
	[CRepr]
	public struct LogField
	{
		char8* key;
		void* value;
		c_long length;
	}
	public function void LogFunc(char8* log_domain, LogLevelFlags log_level, char8* message, void* user_data);
	[CRepr]
	public struct LogLevelFlags
	{
		public const int G_LOG_FLAG_RECURSION = 1;
		public const int G_LOG_FLAG_FATAL = 2;
		public const int G_LOG_LEVEL_ERROR = 4;
		public const int G_LOG_LEVEL_CRITICAL = 8;
		public const int G_LOG_LEVEL_WARNING = 16;
		public const int G_LOG_LEVEL_MESSAGE = 32;
		public const int G_LOG_LEVEL_INFO = 64;
		public const int G_LOG_LEVEL_DEBUG = 128;
		public const int G_LOG_LEVEL_MASK = -4;
	}
	public function LogWriterOutput LogWriterFunc(LogLevelFlags log_level, c_ulong n_fields, void* user_data);
	public enum LogWriterOutput : c_int
	{
		G_LOG_WRITER_HANDLED,
		G_LOG_WRITER_UNHANDLED
	}
	[CRepr]
	public struct MainContext
	{
	}
	[CRepr]
	public struct MainContextFlags
	{
		public const int G_MAIN_CONTEXT_FLAGS_NONE = 0;
		public const int G_MAIN_CONTEXT_FLAGS_OWNERLESS_POLLING = 1;
	}
	[CRepr]
	public struct MainLoop
	{
	}
	[CRepr]
	public struct MappedFile
	{
	}
	[CRepr]
	public struct MarkupCollectType
	{
		public const int G_MARKUP_COLLECT_INVALID = 0;
		public const int G_MARKUP_COLLECT_STRING = 1;
		public const int G_MARKUP_COLLECT_STRDUP = 2;
		public const int G_MARKUP_COLLECT_BOOLEAN = 3;
		public const int G_MARKUP_COLLECT_TRISTATE = 4;
		public const int G_MARKUP_COLLECT_OPTIONAL = 65536;
	}
	public enum MarkupError : c_int
	{
		G_MARKUP_ERROR_BAD_UTF8,
		G_MARKUP_ERROR_EMPTY,
		G_MARKUP_ERROR_PARSE,
		G_MARKUP_ERROR_UNKNOWN_ELEMENT,
		G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE,
		G_MARKUP_ERROR_INVALID_CONTENT,
		G_MARKUP_ERROR_MISSING_ATTRIBUTE
	}
	[CRepr]
	public struct MarkupParseContext
	{
	}
	[CRepr]
	public struct MarkupParseFlags
	{
		public const int G_MARKUP_DEFAULT_FLAGS = 0;
		public const int G_MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 1;
		public const int G_MARKUP_TREAT_CDATA_AS_TEXT = 2;
		public const int G_MARKUP_PREFIX_ERROR_POSITION = 4;
		public const int G_MARKUP_IGNORE_QUALIFIED = 8;
	}
	[CRepr]
	public struct MarkupParser
	{
	}
	[CRepr]
	public struct MatchInfo
	{
	}
	[CRepr]
	public struct MemVTable
	{
	}
	[Union]
	public struct Mutex
	{
		public void* p;
	}
	[CRepr]
	public struct Node
	{
		void* data;
		Node* next;
		Node* prev;
		Node* parent;
		Node* children;
	}
	public function void NodeForeachFunc(Node node, void* data);
	public function c_int NodeTraverseFunc(Node node, void* data);
	public enum NormalizeMode : c_int
	{
		G_NORMALIZE_DEFAULT,
		G_NORMALIZE_NFD,
		G_NORMALIZE_DEFAULT_COMPOSE,
		G_NORMALIZE_NFC,
		G_NORMALIZE_ALL,
		G_NORMALIZE_NFKD,
		G_NORMALIZE_ALL_COMPOSE,
		G_NORMALIZE_NFKC
	}
	public enum NumberParserError : c_int
	{
		G_NUMBER_PARSER_ERROR_INVALID,
		G_NUMBER_PARSER_ERROR_OUT_OF_BOUNDS
	}
	[CRepr]
	public struct Once
	{
		OnceStatus status;
		void* retval;
	}
	public enum OnceStatus : c_int
	{
		G_ONCE_STATUS_NOTCALLED,
		G_ONCE_STATUS_PROGRESS,
		G_ONCE_STATUS_READY
	}
	public enum OptionArg : c_int
	{
		G_OPTION_ARG_NONE,
		G_OPTION_ARG_STRING,
		G_OPTION_ARG_INT,
		G_OPTION_ARG_CALLBACK,
		G_OPTION_ARG_FILENAME,
		G_OPTION_ARG_STRING_ARRAY,
		G_OPTION_ARG_FILENAME_ARRAY,
		G_OPTION_ARG_DOUBLE,
		G_OPTION_ARG_INT64
	}
	public function c_int OptionArgFunc(char8* option_name, char8* value, void* data);
	[CRepr]
	public struct OptionContext
	{
	}
	[CRepr]
	public struct OptionEntry
	{
		char8* long_name;
		c_char short_name;
		c_int flags;
		OptionArg arg;
		void* arg_data;
		char8* description;
		char8* arg_description;
	}
	public enum OptionError : c_int
	{
		G_OPTION_ERROR_UNKNOWN_OPTION,
		G_OPTION_ERROR_BAD_VALUE,
		G_OPTION_ERROR_FAILED
	}
	public function void OptionErrorFunc(OptionContext context, OptionGroup group, void* data);
	[CRepr]
	public struct OptionFlags
	{
		public const int G_OPTION_FLAG_NONE = 0;
		public const int G_OPTION_FLAG_HIDDEN = 1;
		public const int G_OPTION_FLAG_IN_MAIN = 2;
		public const int G_OPTION_FLAG_REVERSE = 4;
		public const int G_OPTION_FLAG_NO_ARG = 8;
		public const int G_OPTION_FLAG_FILENAME = 16;
		public const int G_OPTION_FLAG_OPTIONAL_ARG = 32;
		public const int G_OPTION_FLAG_NOALIAS = 64;
	}
	[CRepr]
	public struct OptionGroup
	{
	}
	public function c_int OptionParseFunc(OptionContext context, OptionGroup group, void* data);
	[CRepr]
	public struct PathBuf
	{
	}
	[CRepr]
	public struct PatternSpec
	{
	}
	[CRepr]
	public struct PollFD
	{
		c_int fd;
		c_ushort events;
		c_ushort revents;
	}
	public function c_int PollFunc(PollFD ufds, c_uint nfsd, c_int timeout_);
	public function void PrintFunc(char8* string);
	[CRepr]
	public struct Private
	{
		void* p;
		DestroyNotify notify;
	}
	[CRepr]
	public struct PtrArray
	{
		void* pdata;
		c_uint len;
	}
	[CRepr]
	public struct Queue
	{
		GLib.List head;
		GLib.List tail;
		c_uint length;
	}
	[CRepr]
	public struct RWLock
	{
		void* p;
	}
	[CRepr]
	public struct Rand
	{
	}
	[CRepr]
	public struct RecMutex
	{
		void* p;
	}
	[CRepr]
	public struct Regex
	{
	}
	[CRepr]
	public struct RegexCompileFlags
	{
		public const int G_REGEX_DEFAULT = 0;
		public const int G_REGEX_CASELESS = 1;
		public const int G_REGEX_MULTILINE = 2;
		public const int G_REGEX_DOTALL = 4;
		public const int G_REGEX_EXTENDED = 8;
		public const int G_REGEX_ANCHORED = 16;
		public const int G_REGEX_DOLLAR_ENDONLY = 32;
		public const int G_REGEX_UNGREEDY = 512;
		public const int G_REGEX_RAW = 2048;
		public const int G_REGEX_NO_AUTO_CAPTURE = 4096;
		public const int G_REGEX_OPTIMIZE = 8192;
		public const int G_REGEX_FIRSTLINE = 262144;
		public const int G_REGEX_DUPNAMES = 524288;
		public const int G_REGEX_NEWLINE_CR = 1048576;
		public const int G_REGEX_NEWLINE_LF = 2097152;
		public const int G_REGEX_NEWLINE_CRLF = 3145728;
		public const int G_REGEX_NEWLINE_ANYCRLF = 5242880;
		public const int G_REGEX_BSR_ANYCRLF = 8388608;
		public const int G_REGEX_JAVASCRIPT_COMPAT = 33554432;
	}
	public enum RegexError : c_int
	{
		G_REGEX_ERROR_COMPILE,
		G_REGEX_ERROR_OPTIMIZE,
		G_REGEX_ERROR_REPLACE,
		G_REGEX_ERROR_MATCH,
		G_REGEX_ERROR_INTERNAL,
		G_REGEX_ERROR_STRAY_BACKSLASH,
		G_REGEX_ERROR_MISSING_CONTROL_CHAR,
		G_REGEX_ERROR_UNRECOGNIZED_ESCAPE,
		G_REGEX_ERROR_QUANTIFIERS_OUT_OF_ORDER,
		G_REGEX_ERROR_QUANTIFIER_TOO_BIG,
		G_REGEX_ERROR_UNTERMINATED_CHARACTER_CLASS,
		G_REGEX_ERROR_INVALID_ESCAPE_IN_CHARACTER_CLASS,
		G_REGEX_ERROR_RANGE_OUT_OF_ORDER,
		G_REGEX_ERROR_NOTHING_TO_REPEAT,
		G_REGEX_ERROR_UNRECOGNIZED_CHARACTER,
		G_REGEX_ERROR_POSIX_NAMED_CLASS_OUTSIDE_CLASS,
		G_REGEX_ERROR_UNMATCHED_PARENTHESIS,
		G_REGEX_ERROR_INEXISTENT_SUBPATTERN_REFERENCE,
		G_REGEX_ERROR_UNTERMINATED_COMMENT,
		G_REGEX_ERROR_EXPRESSION_TOO_LARGE,
		G_REGEX_ERROR_MEMORY_ERROR,
		G_REGEX_ERROR_VARIABLE_LENGTH_LOOKBEHIND,
		G_REGEX_ERROR_MALFORMED_CONDITION,
		G_REGEX_ERROR_TOO_MANY_CONDITIONAL_BRANCHES,
		G_REGEX_ERROR_ASSERTION_EXPECTED,
		G_REGEX_ERROR_UNKNOWN_POSIX_CLASS_NAME,
		G_REGEX_ERROR_POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED,
		G_REGEX_ERROR_HEX_CODE_TOO_LARGE,
		G_REGEX_ERROR_INVALID_CONDITION,
		G_REGEX_ERROR_SINGLE_BYTE_MATCH_IN_LOOKBEHIND,
		G_REGEX_ERROR_INFINITE_LOOP,
		G_REGEX_ERROR_MISSING_SUBPATTERN_NAME_TERMINATOR,
		G_REGEX_ERROR_DUPLICATE_SUBPATTERN_NAME,
		G_REGEX_ERROR_MALFORMED_PROPERTY,
		G_REGEX_ERROR_UNKNOWN_PROPERTY,
		G_REGEX_ERROR_SUBPATTERN_NAME_TOO_LONG,
		G_REGEX_ERROR_TOO_MANY_SUBPATTERNS,
		G_REGEX_ERROR_INVALID_OCTAL_VALUE,
		G_REGEX_ERROR_TOO_MANY_BRANCHES_IN_DEFINE,
		G_REGEX_ERROR_DEFINE_REPETION,
		G_REGEX_ERROR_INCONSISTENT_NEWLINE_OPTIONS,
		G_REGEX_ERROR_MISSING_BACK_REFERENCE,
		G_REGEX_ERROR_INVALID_RELATIVE_REFERENCE,
		G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN,
		G_REGEX_ERROR_UNKNOWN_BACKTRACKING_CONTROL_VERB,
		G_REGEX_ERROR_NUMBER_TOO_BIG,
		G_REGEX_ERROR_MISSING_SUBPATTERN_NAME,
		G_REGEX_ERROR_MISSING_DIGIT,
		G_REGEX_ERROR_INVALID_DATA_CHARACTER,
		G_REGEX_ERROR_EXTRA_SUBPATTERN_NAME,
		G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED,
		G_REGEX_ERROR_INVALID_CONTROL_CHAR,
		G_REGEX_ERROR_MISSING_NAME,
		G_REGEX_ERROR_NOT_SUPPORTED_IN_CLASS,
		G_REGEX_ERROR_TOO_MANY_FORWARD_REFERENCES,
		G_REGEX_ERROR_NAME_TOO_LONG,
		G_REGEX_ERROR_CHARACTER_VALUE_TOO_LARGE
	}
	public function c_int RegexEvalCallback(MatchInfo match_info, String result, void* user_data);
	[CRepr]
	public struct RegexMatchFlags
	{
		public const int G_REGEX_MATCH_DEFAULT = 0;
		public const int G_REGEX_MATCH_ANCHORED = 16;
		public const int G_REGEX_MATCH_NOTBOL = 128;
		public const int G_REGEX_MATCH_NOTEOL = 256;
		public const int G_REGEX_MATCH_NOTEMPTY = 1024;
		public const int G_REGEX_MATCH_PARTIAL = 32768;
		public const int G_REGEX_MATCH_NEWLINE_CR = 1048576;
		public const int G_REGEX_MATCH_NEWLINE_LF = 2097152;
		public const int G_REGEX_MATCH_NEWLINE_CRLF = 3145728;
		public const int G_REGEX_MATCH_NEWLINE_ANY = 4194304;
		public const int G_REGEX_MATCH_NEWLINE_ANYCRLF = 5242880;
		public const int G_REGEX_MATCH_BSR_ANYCRLF = 8388608;
		public const int G_REGEX_MATCH_BSR_ANY = 16777216;
		public const int G_REGEX_MATCH_PARTIAL_SOFT = 32768;
		public const int G_REGEX_MATCH_PARTIAL_HARD = 134217728;
		public const int G_REGEX_MATCH_NOTEMPTY_ATSTART = 268435456;
	}
	[CRepr]
	public struct SList
	{
		void* data;
		GLib.SList* next;
	}
	[CRepr]
	public struct Scanner
	{
		void* user_data;
		c_uint max_parse_errors;
		c_uint parse_errors;
		char8* input_name;
		Data qdata;
		ScannerConfig config;
		TokenType token;
		TokenValue value;
		c_uint line;
		c_uint position;
		TokenType next_token;
		TokenValue next_value;
		c_uint next_line;
		c_uint next_position;
		GLib.HashTable symbol_table;
		c_int input_fd;
		char8* text;
		char8* text_end;
		char8* buffer;
		c_uint scope_id;
		ScannerMsgFunc msg_handler;
	}
	[CRepr]
	public struct ScannerConfig
	{
		char8* cset_skip_characters;
		char8* cset_identifier_first;
		char8* cset_identifier_nth;
		char8* cpair_comment_single;
		c_uint case_sensitive;
		c_uint skip_comment_multi;
		c_uint skip_comment_single;
		c_uint scan_comment_multi;
		c_uint scan_identifier;
		c_uint scan_identifier_1char;
		c_uint scan_identifier_NULL;
		c_uint scan_symbols;
		c_uint scan_binary;
		c_uint scan_octal;
		c_uint scan_float;
		c_uint scan_hex;
		c_uint scan_hex_dollar;
		c_uint scan_string_sq;
		c_uint scan_string_dq;
		c_uint numbers_2_int;
		c_uint int_2_float;
		c_uint identifier_2_string;
		c_uint char_2_token;
		c_uint symbol_2_token;
		c_uint scope_0_fallback;
		c_uint store_int64;
		c_uint padding_dummy;
	}
	public function void ScannerMsgFunc(Scanner scanner, char8* message, c_int error);
	public enum SeekType : c_int
	{
		G_SEEK_CUR,
		G_SEEK_SET,
		G_SEEK_END
	}
	[CRepr]
	public struct Sequence
	{
	}
	[CRepr]
	public struct SequenceIter
	{
	}
	public function c_int SequenceIterCompareFunc(SequenceIter a, SequenceIter b, void* data);
	public enum ShellError : c_int
	{
		G_SHELL_ERROR_BAD_QUOTING,
		G_SHELL_ERROR_EMPTY_STRING,
		G_SHELL_ERROR_FAILED
	}
	public enum SliceConfig : c_int
	{
		G_SLICE_CONFIG_ALWAYS_MALLOC,
		G_SLICE_CONFIG_BYPASS_MAGAZINES,
		G_SLICE_CONFIG_WORKING_SET_MSECS,
		G_SLICE_CONFIG_COLOR_INCREMENT,
		G_SLICE_CONFIG_CHUNK_SIZES,
		G_SLICE_CONFIG_CONTENTION_COUNTER
	}
	[CRepr]
	public struct Source
	{
		void* callback_data;
		SourceCallbackFuncs callback_funcs;
		SourceFuncs source_funcs;
		c_uint ref_count;
		MainContext context;
		c_int priority;
		c_uint flags;
		c_uint source_id;
		GLib.SList poll_fds;
		Source* prev;
		Source* next;
		char8* name;
		SourcePrivate priv;
	}
	[CRepr]
	public struct SourceCallbackFuncs
	{
	}
	public function void SourceDisposeFunc(Source source);
	public function void SourceDummyMarshal();
	public function c_int SourceFunc(void* user_data);
	[CRepr]
	public struct SourceFuncs
	{
		SourceFunc closure_callback;
		SourceDummyMarshal closure_marshal;
	}
	public function void SourceOnceFunc(void* user_data);
	[CRepr]
	public struct SourcePrivate
	{
	}
	public function void SpawnChildSetupFunc(void* data);
	public enum SpawnError : c_int
	{
		G_SPAWN_ERROR_FORK,
		G_SPAWN_ERROR_READ,
		G_SPAWN_ERROR_CHDIR,
		G_SPAWN_ERROR_ACCES,
		G_SPAWN_ERROR_PERM,
		G_SPAWN_ERROR_TOO_BIG,
		G_SPAWN_ERROR_2BIG,
		G_SPAWN_ERROR_NOEXEC,
		G_SPAWN_ERROR_NAMETOOLONG,
		G_SPAWN_ERROR_NOENT,
		G_SPAWN_ERROR_NOMEM,
		G_SPAWN_ERROR_NOTDIR,
		G_SPAWN_ERROR_LOOP,
		G_SPAWN_ERROR_TXTBUSY,
		G_SPAWN_ERROR_IO,
		G_SPAWN_ERROR_NFILE,
		G_SPAWN_ERROR_MFILE,
		G_SPAWN_ERROR_INVAL,
		G_SPAWN_ERROR_ISDIR,
		G_SPAWN_ERROR_LIBBAD,
		G_SPAWN_ERROR_FAILED
	}
	[CRepr]
	public struct SpawnFlags
	{
		public const int G_SPAWN_DEFAULT = 0;
		public const int G_SPAWN_LEAVE_DESCRIPTORS_OPEN = 1;
		public const int G_SPAWN_DO_NOT_REAP_CHILD = 2;
		public const int G_SPAWN_SEARCH_PATH = 4;
		public const int G_SPAWN_STDOUT_TO_DEV_NULL = 8;
		public const int G_SPAWN_STDERR_TO_DEV_NULL = 16;
		public const int G_SPAWN_CHILD_INHERITS_STDIN = 32;
		public const int G_SPAWN_FILE_AND_ARGV_ZERO = 64;
		public const int G_SPAWN_SEARCH_PATH_FROM_ENVP = 128;
		public const int G_SPAWN_CLOEXEC_PIPES = 256;
		public const int G_SPAWN_CHILD_INHERITS_STDOUT = 512;
		public const int G_SPAWN_CHILD_INHERITS_STDERR = 1024;
		public const int G_SPAWN_STDIN_FROM_DEV_NULL = 2048;
	}
	[CRepr]
	public struct StatBuf
	{
	}
	[CRepr]
	public struct String
	{
		char8* str;
		c_ulong len;
		c_ulong allocated_len;
	}
	[CRepr]
	public struct StringChunk
	{
	}
	[CRepr]
	public struct StrvBuilder
	{
	}
	[CRepr]
	public struct TestCase
	{
	}
	[CRepr]
	public struct TestConfig
	{
		c_int test_initialized;
		c_int test_quick;
		c_int test_perf;
		c_int test_verbose;
		c_int test_quiet;
		c_int test_undefined;
	}
	public function void TestDataFunc(void* user_data);
	public enum TestFileType : c_int
	{
		G_TEST_DIST,
		G_TEST_BUILT
	}
	public function void TestFixtureFunc(void* fixture, void* user_data);
	public function void TestFunc();
	[CRepr]
	public struct TestLogBuffer
	{
		String data;
		GLib.SList msgs;
	}
	public function c_int TestLogFatalFunc(char8* log_domain, LogLevelFlags log_level, char8* message, void* user_data);
	[CRepr]
	public struct TestLogMsg
	{
		TestLogType log_type;
		c_uint n_strings;
		char8* strings;
		c_uint n_nums;
		double nums;
	}
	public enum TestLogType : c_int
	{
		G_TEST_LOG_NONE,
		G_TEST_LOG_ERROR,
		G_TEST_LOG_START_BINARY,
		G_TEST_LOG_LIST_CASE,
		G_TEST_LOG_SKIP_CASE,
		G_TEST_LOG_START_CASE,
		G_TEST_LOG_STOP_CASE,
		G_TEST_LOG_MIN_RESULT,
		G_TEST_LOG_MAX_RESULT,
		G_TEST_LOG_MESSAGE,
		G_TEST_LOG_START_SUITE,
		G_TEST_LOG_STOP_SUITE
	}
	public enum TestResult : c_int
	{
		G_TEST_RUN_SUCCESS,
		G_TEST_RUN_SKIPPED,
		G_TEST_RUN_FAILURE,
		G_TEST_RUN_INCOMPLETE
	}
	[CRepr]
	public struct TestSubprocessFlags
	{
		public const int G_TEST_SUBPROCESS_DEFAULT = 0;
		public const int G_TEST_SUBPROCESS_INHERIT_STDIN = 1;
		public const int G_TEST_SUBPROCESS_INHERIT_STDOUT = 2;
		public const int G_TEST_SUBPROCESS_INHERIT_STDERR = 4;
	}
	[CRepr]
	public struct TestSuite
	{
	}
	[CRepr]
	public struct TestTrapFlags
	{
		public const int G_TEST_TRAP_DEFAULT = 0;
		public const int G_TEST_TRAP_SILENCE_STDOUT = 128;
		public const int G_TEST_TRAP_SILENCE_STDERR = 256;
		public const int G_TEST_TRAP_INHERIT_STDIN = 512;
	}
	[CRepr]
	public struct Thread
	{
	}
	public enum ThreadError : c_int
	{
		G_THREAD_ERROR_AGAIN
	}
	public function void* ThreadFunc(void* data);
	[CRepr]
	public struct ThreadPool
	{
		Func func;
		void* user_data;
		c_int exclusive;
	}
	public enum TimeType : c_int
	{
		G_TIME_TYPE_STANDARD,
		G_TIME_TYPE_DAYLIGHT,
		G_TIME_TYPE_UNIVERSAL
	}
	[CRepr]
	public struct TimeVal
	{
		c_long tv_sec;
		c_long tv_usec;
	}
	[CRepr]
	public struct TimeZone
	{
	}
	[CRepr]
	public struct Timer
	{
	}
	public enum TokenType : c_int
	{
		G_TOKEN_EOF,
		G_TOKEN_LEFT_PAREN,
		G_TOKEN_RIGHT_PAREN,
		G_TOKEN_LEFT_CURLY,
		G_TOKEN_RIGHT_CURLY,
		G_TOKEN_LEFT_BRACE,
		G_TOKEN_RIGHT_BRACE,
		G_TOKEN_EQUAL_SIGN,
		G_TOKEN_COMMA,
		G_TOKEN_NONE,
		G_TOKEN_ERROR,
		G_TOKEN_CHAR,
		G_TOKEN_BINARY,
		G_TOKEN_OCTAL,
		G_TOKEN_INT,
		G_TOKEN_HEX,
		G_TOKEN_FLOAT,
		G_TOKEN_STRING,
		G_TOKEN_SYMBOL,
		G_TOKEN_IDENTIFIER,
		G_TOKEN_IDENTIFIER_NULL,
		G_TOKEN_COMMENT_SINGLE,
		G_TOKEN_COMMENT_MULTI
	}
	[Union]
	public struct TokenValue
	{
		public void* v_symbol;
		public c_char* v_identifier;
		public c_ulong v_binary;
		public c_ulong v_octal;
		public c_ulong v_int;
		public c_ulonglong v_int64;
		public double v_float;
		public c_ulong v_hex;
		public c_char* v_string;
		public c_char* v_comment;
		public c_uchar v_char;
		public c_uint v_error;
	}
	public function  c_char* TranslateFunc(char8* str, void* data);
	[CRepr]
	public struct TrashStack
	{
		TrashStack* next;
	}
	[CRepr]
	public struct TraverseFlags
	{
		public const int G_TRAVERSE_LEAVES = 1;
		public const int G_TRAVERSE_NON_LEAVES = 2;
		public const int G_TRAVERSE_ALL = 3;
		public const int G_TRAVERSE_MASK = 3;
		public const int G_TRAVERSE_LEAFS = 1;
		public const int G_TRAVERSE_NON_LEAFS = 2;
	}
	public function c_int TraverseFunc(void* key, void* value, void* data);
	public function c_int TraverseNodeFunc(TreeNode node, void* data);
	public enum TraverseType : c_int
	{
		G_IN_ORDER,
		G_PRE_ORDER,
		G_POST_ORDER,
		G_LEVEL_ORDER
	}
	[CRepr]
	public struct Tree
	{
	}
	[CRepr]
	public struct TreeNode
	{
	}
	public enum UnicodeBreakType : c_int
	{
		G_UNICODE_BREAK_MANDATORY,
		G_UNICODE_BREAK_CARRIAGE_RETURN,
		G_UNICODE_BREAK_LINE_FEED,
		G_UNICODE_BREAK_COMBINING_MARK,
		G_UNICODE_BREAK_SURROGATE,
		G_UNICODE_BREAK_ZERO_WIDTH_SPACE,
		G_UNICODE_BREAK_INSEPARABLE,
		G_UNICODE_BREAK_NON_BREAKING_GLUE,
		G_UNICODE_BREAK_CONTINGENT,
		G_UNICODE_BREAK_SPACE,
		G_UNICODE_BREAK_AFTER,
		G_UNICODE_BREAK_BEFORE,
		G_UNICODE_BREAK_BEFORE_AND_AFTER,
		G_UNICODE_BREAK_HYPHEN,
		G_UNICODE_BREAK_NON_STARTER,
		G_UNICODE_BREAK_OPEN_PUNCTUATION,
		G_UNICODE_BREAK_CLOSE_PUNCTUATION,
		G_UNICODE_BREAK_QUOTATION,
		G_UNICODE_BREAK_EXCLAMATION,
		G_UNICODE_BREAK_IDEOGRAPHIC,
		G_UNICODE_BREAK_NUMERIC,
		G_UNICODE_BREAK_INFIX_SEPARATOR,
		G_UNICODE_BREAK_SYMBOL,
		G_UNICODE_BREAK_ALPHABETIC,
		G_UNICODE_BREAK_PREFIX,
		G_UNICODE_BREAK_POSTFIX,
		G_UNICODE_BREAK_COMPLEX_CONTEXT,
		G_UNICODE_BREAK_AMBIGUOUS,
		G_UNICODE_BREAK_UNKNOWN,
		G_UNICODE_BREAK_NEXT_LINE,
		G_UNICODE_BREAK_WORD_JOINER,
		G_UNICODE_BREAK_HANGUL_L_JAMO,
		G_UNICODE_BREAK_HANGUL_V_JAMO,
		G_UNICODE_BREAK_HANGUL_T_JAMO,
		G_UNICODE_BREAK_HANGUL_LV_SYLLABLE,
		G_UNICODE_BREAK_HANGUL_LVT_SYLLABLE,
		G_UNICODE_BREAK_CLOSE_PARANTHESIS,
		G_UNICODE_BREAK_CLOSE_PARENTHESIS,
		G_UNICODE_BREAK_CONDITIONAL_JAPANESE_STARTER,
		G_UNICODE_BREAK_HEBREW_LETTER,
		G_UNICODE_BREAK_REGIONAL_INDICATOR,
		G_UNICODE_BREAK_EMOJI_BASE,
		G_UNICODE_BREAK_EMOJI_MODIFIER,
		G_UNICODE_BREAK_ZERO_WIDTH_JOINER
	}
	public enum UnicodeScript : c_int
	{
		G_UNICODE_SCRIPT_INVALID_CODE,
		G_UNICODE_SCRIPT_COMMON,
		G_UNICODE_SCRIPT_INHERITED,
		G_UNICODE_SCRIPT_ARABIC,
		G_UNICODE_SCRIPT_ARMENIAN,
		G_UNICODE_SCRIPT_BENGALI,
		G_UNICODE_SCRIPT_BOPOMOFO,
		G_UNICODE_SCRIPT_CHEROKEE,
		G_UNICODE_SCRIPT_COPTIC,
		G_UNICODE_SCRIPT_CYRILLIC,
		G_UNICODE_SCRIPT_DESERET,
		G_UNICODE_SCRIPT_DEVANAGARI,
		G_UNICODE_SCRIPT_ETHIOPIC,
		G_UNICODE_SCRIPT_GEORGIAN,
		G_UNICODE_SCRIPT_GOTHIC,
		G_UNICODE_SCRIPT_GREEK,
		G_UNICODE_SCRIPT_GUJARATI,
		G_UNICODE_SCRIPT_GURMUKHI,
		G_UNICODE_SCRIPT_HAN,
		G_UNICODE_SCRIPT_HANGUL,
		G_UNICODE_SCRIPT_HEBREW,
		G_UNICODE_SCRIPT_HIRAGANA,
		G_UNICODE_SCRIPT_KANNADA,
		G_UNICODE_SCRIPT_KATAKANA,
		G_UNICODE_SCRIPT_KHMER,
		G_UNICODE_SCRIPT_LAO,
		G_UNICODE_SCRIPT_LATIN,
		G_UNICODE_SCRIPT_MALAYALAM,
		G_UNICODE_SCRIPT_MONGOLIAN,
		G_UNICODE_SCRIPT_MYANMAR,
		G_UNICODE_SCRIPT_OGHAM,
		G_UNICODE_SCRIPT_OLD_ITALIC,
		G_UNICODE_SCRIPT_ORIYA,
		G_UNICODE_SCRIPT_RUNIC,
		G_UNICODE_SCRIPT_SINHALA,
		G_UNICODE_SCRIPT_SYRIAC,
		G_UNICODE_SCRIPT_TAMIL,
		G_UNICODE_SCRIPT_TELUGU,
		G_UNICODE_SCRIPT_THAANA,
		G_UNICODE_SCRIPT_THAI,
		G_UNICODE_SCRIPT_TIBETAN,
		G_UNICODE_SCRIPT_CANADIAN_ABORIGINAL,
		G_UNICODE_SCRIPT_YI,
		G_UNICODE_SCRIPT_TAGALOG,
		G_UNICODE_SCRIPT_HANUNOO,
		G_UNICODE_SCRIPT_BUHID,
		G_UNICODE_SCRIPT_TAGBANWA,
		G_UNICODE_SCRIPT_BRAILLE,
		G_UNICODE_SCRIPT_CYPRIOT,
		G_UNICODE_SCRIPT_LIMBU,
		G_UNICODE_SCRIPT_OSMANYA,
		G_UNICODE_SCRIPT_SHAVIAN,
		G_UNICODE_SCRIPT_LINEAR_B,
		G_UNICODE_SCRIPT_TAI_LE,
		G_UNICODE_SCRIPT_UGARITIC,
		G_UNICODE_SCRIPT_NEW_TAI_LUE,
		G_UNICODE_SCRIPT_BUGINESE,
		G_UNICODE_SCRIPT_GLAGOLITIC,
		G_UNICODE_SCRIPT_TIFINAGH,
		G_UNICODE_SCRIPT_SYLOTI_NAGRI,
		G_UNICODE_SCRIPT_OLD_PERSIAN,
		G_UNICODE_SCRIPT_KHAROSHTHI,
		G_UNICODE_SCRIPT_UNKNOWN,
		G_UNICODE_SCRIPT_BALINESE,
		G_UNICODE_SCRIPT_CUNEIFORM,
		G_UNICODE_SCRIPT_PHOENICIAN,
		G_UNICODE_SCRIPT_PHAGS_PA,
		G_UNICODE_SCRIPT_NKO,
		G_UNICODE_SCRIPT_KAYAH_LI,
		G_UNICODE_SCRIPT_LEPCHA,
		G_UNICODE_SCRIPT_REJANG,
		G_UNICODE_SCRIPT_SUNDANESE,
		G_UNICODE_SCRIPT_SAURASHTRA,
		G_UNICODE_SCRIPT_CHAM,
		G_UNICODE_SCRIPT_OL_CHIKI,
		G_UNICODE_SCRIPT_VAI,
		G_UNICODE_SCRIPT_CARIAN,
		G_UNICODE_SCRIPT_LYCIAN,
		G_UNICODE_SCRIPT_LYDIAN,
		G_UNICODE_SCRIPT_AVESTAN,
		G_UNICODE_SCRIPT_BAMUM,
		G_UNICODE_SCRIPT_EGYPTIAN_HIEROGLYPHS,
		G_UNICODE_SCRIPT_IMPERIAL_ARAMAIC,
		G_UNICODE_SCRIPT_INSCRIPTIONAL_PAHLAVI,
		G_UNICODE_SCRIPT_INSCRIPTIONAL_PARTHIAN,
		G_UNICODE_SCRIPT_JAVANESE,
		G_UNICODE_SCRIPT_KAITHI,
		G_UNICODE_SCRIPT_LISU,
		G_UNICODE_SCRIPT_MEETEI_MAYEK,
		G_UNICODE_SCRIPT_OLD_SOUTH_ARABIAN,
		G_UNICODE_SCRIPT_OLD_TURKIC,
		G_UNICODE_SCRIPT_SAMARITAN,
		G_UNICODE_SCRIPT_TAI_THAM,
		G_UNICODE_SCRIPT_TAI_VIET,
		G_UNICODE_SCRIPT_BATAK,
		G_UNICODE_SCRIPT_BRAHMI,
		G_UNICODE_SCRIPT_MANDAIC,
		G_UNICODE_SCRIPT_CHAKMA,
		G_UNICODE_SCRIPT_MEROITIC_CURSIVE,
		G_UNICODE_SCRIPT_MEROITIC_HIEROGLYPHS,
		G_UNICODE_SCRIPT_MIAO,
		G_UNICODE_SCRIPT_SHARADA,
		G_UNICODE_SCRIPT_SORA_SOMPENG,
		G_UNICODE_SCRIPT_TAKRI,
		G_UNICODE_SCRIPT_BASSA_VAH,
		G_UNICODE_SCRIPT_CAUCASIAN_ALBANIAN,
		G_UNICODE_SCRIPT_DUPLOYAN,
		G_UNICODE_SCRIPT_ELBASAN,
		G_UNICODE_SCRIPT_GRANTHA,
		G_UNICODE_SCRIPT_KHOJKI,
		G_UNICODE_SCRIPT_KHUDAWADI,
		G_UNICODE_SCRIPT_LINEAR_A,
		G_UNICODE_SCRIPT_MAHAJANI,
		G_UNICODE_SCRIPT_MANICHAEAN,
		G_UNICODE_SCRIPT_MENDE_KIKAKUI,
		G_UNICODE_SCRIPT_MODI,
		G_UNICODE_SCRIPT_MRO,
		G_UNICODE_SCRIPT_NABATAEAN,
		G_UNICODE_SCRIPT_OLD_NORTH_ARABIAN,
		G_UNICODE_SCRIPT_OLD_PERMIC,
		G_UNICODE_SCRIPT_PAHAWH_HMONG,
		G_UNICODE_SCRIPT_PALMYRENE,
		G_UNICODE_SCRIPT_PAU_CIN_HAU,
		G_UNICODE_SCRIPT_PSALTER_PAHLAVI,
		G_UNICODE_SCRIPT_SIDDHAM,
		G_UNICODE_SCRIPT_TIRHUTA,
		G_UNICODE_SCRIPT_WARANG_CITI,
		G_UNICODE_SCRIPT_AHOM,
		G_UNICODE_SCRIPT_ANATOLIAN_HIEROGLYPHS,
		G_UNICODE_SCRIPT_HATRAN,
		G_UNICODE_SCRIPT_MULTANI,
		G_UNICODE_SCRIPT_OLD_HUNGARIAN,
		G_UNICODE_SCRIPT_SIGNWRITING,
		G_UNICODE_SCRIPT_ADLAM,
		G_UNICODE_SCRIPT_BHAIKSUKI,
		G_UNICODE_SCRIPT_MARCHEN,
		G_UNICODE_SCRIPT_NEWA,
		G_UNICODE_SCRIPT_OSAGE,
		G_UNICODE_SCRIPT_TANGUT,
		G_UNICODE_SCRIPT_MASARAM_GONDI,
		G_UNICODE_SCRIPT_NUSHU,
		G_UNICODE_SCRIPT_SOYOMBO,
		G_UNICODE_SCRIPT_ZANABAZAR_SQUARE,
		G_UNICODE_SCRIPT_DOGRA,
		G_UNICODE_SCRIPT_GUNJALA_GONDI,
		G_UNICODE_SCRIPT_HANIFI_ROHINGYA,
		G_UNICODE_SCRIPT_MAKASAR,
		G_UNICODE_SCRIPT_MEDEFAIDRIN,
		G_UNICODE_SCRIPT_OLD_SOGDIAN,
		G_UNICODE_SCRIPT_SOGDIAN,
		G_UNICODE_SCRIPT_ELYMAIC,
		G_UNICODE_SCRIPT_NANDINAGARI,
		G_UNICODE_SCRIPT_NYIAKENG_PUACHUE_HMONG,
		G_UNICODE_SCRIPT_WANCHO,
		G_UNICODE_SCRIPT_CHORASMIAN,
		G_UNICODE_SCRIPT_DIVES_AKURU,
		G_UNICODE_SCRIPT_KHITAN_SMALL_SCRIPT,
		G_UNICODE_SCRIPT_YEZIDI,
		G_UNICODE_SCRIPT_CYPRO_MINOAN,
		G_UNICODE_SCRIPT_OLD_UYGHUR,
		G_UNICODE_SCRIPT_TANGSA,
		G_UNICODE_SCRIPT_TOTO,
		G_UNICODE_SCRIPT_VITHKUQI,
		G_UNICODE_SCRIPT_MATH,
		G_UNICODE_SCRIPT_KAWI,
		G_UNICODE_SCRIPT_NAG_MUNDARI
	}
	public enum UnicodeType : c_int
	{
		G_UNICODE_CONTROL,
		G_UNICODE_FORMAT,
		G_UNICODE_UNASSIGNED,
		G_UNICODE_PRIVATE_USE,
		G_UNICODE_SURROGATE,
		G_UNICODE_LOWERCASE_LETTER,
		G_UNICODE_MODIFIER_LETTER,
		G_UNICODE_OTHER_LETTER,
		G_UNICODE_TITLECASE_LETTER,
		G_UNICODE_UPPERCASE_LETTER,
		G_UNICODE_SPACING_MARK,
		G_UNICODE_ENCLOSING_MARK,
		G_UNICODE_NON_SPACING_MARK,
		G_UNICODE_DECIMAL_NUMBER,
		G_UNICODE_LETTER_NUMBER,
		G_UNICODE_OTHER_NUMBER,
		G_UNICODE_CONNECT_PUNCTUATION,
		G_UNICODE_DASH_PUNCTUATION,
		G_UNICODE_CLOSE_PUNCTUATION,
		G_UNICODE_FINAL_PUNCTUATION,
		G_UNICODE_INITIAL_PUNCTUATION,
		G_UNICODE_OTHER_PUNCTUATION,
		G_UNICODE_OPEN_PUNCTUATION,
		G_UNICODE_CURRENCY_SYMBOL,
		G_UNICODE_MODIFIER_SYMBOL,
		G_UNICODE_MATH_SYMBOL,
		G_UNICODE_OTHER_SYMBOL,
		G_UNICODE_LINE_SEPARATOR,
		G_UNICODE_PARAGRAPH_SEPARATOR,
		G_UNICODE_SPACE_SEPARATOR
	}
	public function c_int UnixFDSourceFunc(c_int fd, IOCondition condition, void* user_data);
	[CRepr]
	public struct Uri
	{
	}
	public enum UriError : c_int
	{
		G_URI_ERROR_FAILED,
		G_URI_ERROR_BAD_SCHEME,
		G_URI_ERROR_BAD_USER,
		G_URI_ERROR_BAD_PASSWORD,
		G_URI_ERROR_BAD_AUTH_PARAMS,
		G_URI_ERROR_BAD_HOST,
		G_URI_ERROR_BAD_PORT,
		G_URI_ERROR_BAD_PATH,
		G_URI_ERROR_BAD_QUERY,
		G_URI_ERROR_BAD_FRAGMENT
	}
	[CRepr]
	public struct UriFlags
	{
		public const int G_URI_FLAGS_NONE = 0;
		public const int G_URI_FLAGS_PARSE_RELAXED = 1;
		public const int G_URI_FLAGS_HAS_PASSWORD = 2;
		public const int G_URI_FLAGS_HAS_AUTH_PARAMS = 4;
		public const int G_URI_FLAGS_ENCODED = 8;
		public const int G_URI_FLAGS_NON_DNS = 16;
		public const int G_URI_FLAGS_ENCODED_QUERY = 32;
		public const int G_URI_FLAGS_ENCODED_PATH = 64;
		public const int G_URI_FLAGS_ENCODED_FRAGMENT = 128;
		public const int G_URI_FLAGS_SCHEME_NORMALIZE = 256;
	}
	[CRepr]
	public struct UriHideFlags
	{
		public const int G_URI_HIDE_NONE = 0;
		public const int G_URI_HIDE_USERINFO = 1;
		public const int G_URI_HIDE_PASSWORD = 2;
		public const int G_URI_HIDE_AUTH_PARAMS = 4;
		public const int G_URI_HIDE_QUERY = 8;
		public const int G_URI_HIDE_FRAGMENT = 16;
	}
	[CRepr]
	public struct UriParamsFlags
	{
		public const int G_URI_PARAMS_NONE = 0;
		public const int G_URI_PARAMS_CASE_INSENSITIVE = 1;
		public const int G_URI_PARAMS_WWW_FORM = 2;
		public const int G_URI_PARAMS_PARSE_RELAXED = 4;
	}
	[CRepr]
	public struct UriParamsIter
	{
		c_int dummy0;
		void* dummy1;
		void* dummy2;
	}
	public enum UserDirectory : c_int
	{
		G_USER_DIRECTORY_DESKTOP,
		G_USER_DIRECTORY_DOCUMENTS,
		G_USER_DIRECTORY_DOWNLOAD,
		G_USER_DIRECTORY_MUSIC,
		G_USER_DIRECTORY_PICTURES,
		G_USER_DIRECTORY_PUBLIC_SHARE,
		G_USER_DIRECTORY_TEMPLATES,
		G_USER_DIRECTORY_VIDEOS,
		G_USER_N_DIRECTORIES
	}
	[CRepr]
	public struct Variant
	{
	}
	[CRepr]
	public struct VariantBuilder
	{
	}
	public enum VariantClass : c_int
	{
		G_VARIANT_CLASS_BOOLEAN,
		G_VARIANT_CLASS_BYTE,
		G_VARIANT_CLASS_INT16,
		G_VARIANT_CLASS_UINT16,
		G_VARIANT_CLASS_INT32,
		G_VARIANT_CLASS_UINT32,
		G_VARIANT_CLASS_INT64,
		G_VARIANT_CLASS_UINT64,
		G_VARIANT_CLASS_HANDLE,
		G_VARIANT_CLASS_DOUBLE,
		G_VARIANT_CLASS_STRING,
		G_VARIANT_CLASS_OBJECT_PATH,
		G_VARIANT_CLASS_SIGNATURE,
		G_VARIANT_CLASS_VARIANT,
		G_VARIANT_CLASS_MAYBE,
		G_VARIANT_CLASS_ARRAY,
		G_VARIANT_CLASS_TUPLE,
		G_VARIANT_CLASS_DICT_ENTRY
	}
	[CRepr]
	public struct VariantDict
	{
	}
	[CRepr]
	public struct VariantIter
	{
	}
	public enum VariantParseError : c_int
	{
		G_VARIANT_PARSE_ERROR_FAILED,
		G_VARIANT_PARSE_ERROR_BASIC_TYPE_EXPECTED,
		G_VARIANT_PARSE_ERROR_CANNOT_INFER_TYPE,
		G_VARIANT_PARSE_ERROR_DEFINITE_TYPE_EXPECTED,
		G_VARIANT_PARSE_ERROR_INPUT_NOT_AT_END,
		G_VARIANT_PARSE_ERROR_INVALID_CHARACTER,
		G_VARIANT_PARSE_ERROR_INVALID_FORMAT_STRING,
		G_VARIANT_PARSE_ERROR_INVALID_OBJECT_PATH,
		G_VARIANT_PARSE_ERROR_INVALID_SIGNATURE,
		G_VARIANT_PARSE_ERROR_INVALID_TYPE_STRING,
		G_VARIANT_PARSE_ERROR_NO_COMMON_TYPE,
		G_VARIANT_PARSE_ERROR_NUMBER_OUT_OF_RANGE,
		G_VARIANT_PARSE_ERROR_NUMBER_TOO_BIG,
		G_VARIANT_PARSE_ERROR_TYPE_ERROR,
		G_VARIANT_PARSE_ERROR_UNEXPECTED_TOKEN,
		G_VARIANT_PARSE_ERROR_UNKNOWN_KEYWORD,
		G_VARIANT_PARSE_ERROR_UNTERMINATED_STRING_CONSTANT,
		G_VARIANT_PARSE_ERROR_VALUE_EXPECTED,
		G_VARIANT_PARSE_ERROR_RECURSION
	}
	[CRepr]
	public struct VariantType
	{
	}
	public function void VoidFunc();
}