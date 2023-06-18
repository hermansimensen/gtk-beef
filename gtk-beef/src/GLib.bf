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
	public enum AsciiType : int
	{
		alnum = 1,
		alpha = 2,
		cntrl = 4,
		digit = 8,
		graph = 16,
		lower = 32,
		print = 64,
		punct = 128,
		space = 256,
		upper = 512,
		xdigit = 1024
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
		invalid_uri = 0,
		invalid_value = 1,
		app_not_registered = 2,
		uri_not_found = 3,
		read = 4,
		unknown_encoding = 5,
		write = 6,
		file_not_found = 7
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
		md5 = 0,
		sha1 = 1,
		sha256 = 2,
		sha512 = 3,
		sha384 = 4
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
		no_conversion = 0,
		illegal_sequence = 1,
		failed = 2,
		partial_input = 3,
		bad_uri = 4,
		not_absolute_path = 5,
		no_memory = 6,
		embedded_nul = 7
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
		day = 0,
		month = 1,
		year = 2
	}
	public enum DateMonth : c_int
	{
		bad_month = 0,
		january = 1,
		february = 2,
		march = 3,
		april = 4,
		may = 5,
		june = 6,
		july = 7,
		august = 8,
		september = 9,
		october = 10,
		november = 11,
		december = 12
	}
	[CRepr]
	public struct DateTime
	{
	}
	public enum DateWeekday : c_int
	{
		bad_weekday = 0,
		monday = 1,
		tuesday = 2,
		wednesday = 3,
		thursday = 4,
		friday = 5,
		saturday = 6,
		sunday = 7
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
		unknown = 0,
		unexp_eof = 1,
		unexp_eof_in_string = 2,
		unexp_eof_in_comment = 3,
		non_digit_in_const = 4,
		digit_radix = 5,
		float_radix = 6,
		float_malformed = 7
	}
	public enum FileError : c_int
	{
		exist = 0,
		isdir = 1,
		acces = 2,
		nametoolong = 3,
		noent = 4,
		notdir = 5,
		nxio = 6,
		nodev = 7,
		rofs = 8,
		txtbsy = 9,
		fault = 10,
		loop = 11,
		nospc = 12,
		nomem = 13,
		mfile = 14,
		nfile = 15,
		badf = 16,
		inval = 17,
		pipe = 18,
		again = 19,
		intr = 20,
		io = 21,
		perm = 22,
		nosys = 23,
		failed = 24
	}
	[CRepr]
	public enum FileSetContentsFlags : int
	{
		none = 0,
		consistent = 1,
		durable = 2,
		only_existing = 4
	}
	[CRepr]
	public enum FileTest : int
	{
		is_regular = 1,
		is_symlink = 2,
		is_dir = 4,
		is_executable = 8,
		exists = 16
	}
	[Union]
	public struct FloatIEEE754
	{
		public float v_float;
	}
	[CRepr]
	public enum FormatSizeFlags : int
	{
		default_ = 0,
		long_format = 1,
		iec_units = 2,
		bits = 4,
		only_value = 8,
		only_unit = 16
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
	public enum HookFlagMask : int
	{
		active = 1,
		in_call = 2,
		mask = 15
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
		fbig = 0,
		inval = 1,
		io = 2,
		isdir = 3,
		nospc = 4,
		nxio = 5,
		overflow = 6,
		pipe = 7,
		failed = 8
	}
	[CRepr]
	public enum IOCondition : int
	{
		in_ = 1,
		out_ = 4,
		pri = 2,
		err = 8,
		hup = 16,
		nval = 32
	}
	public enum IOError : c_int
	{
		none = 0,
		again = 1,
		inval = 2,
		unknown = 3
	}
	[CRepr, AllowDuplicates]
	public enum IOFlags : int
	{
		none = 0,
		append_ = 1,
		nonblock = 2,
		is_readable = 4,
		is_writable = 8,
		is_writeable = 8,
		is_seekable = 16,
		mask = 31,
		get_mask = 31,
		set_mask = 3
	}
	public function c_int IOFunc(IOChannel source, IOCondition condition, void* data);
	[CRepr]
	public struct IOFuncs
	{
	}
	public enum IOStatus : c_int
	{
		error = 0,
		normal = 1,
		eof = 2,
		again = 3
	}
	[CRepr]
	public struct KeyFile
	{
	}
	public enum KeyFileError : c_int
	{
		unknown_encoding = 0,
		parse = 1,
		not_found = 2,
		key_not_found = 3,
		group_not_found = 4,
		invalid_value = 5
	}
	[CRepr]
	public enum KeyFileFlags : int
	{
		none = 0,
		keep_comments = 1,
		keep_translations = 2
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
	public enum LogLevelFlags : int
	{
		flag_recursion = 1,
		flag_fatal = 2,
		level_error = 4,
		level_critical = 8,
		level_warning = 16,
		level_message = 32,
		level_info = 64,
		level_debug = 128,
		level_mask = -4
	}
	public function LogWriterOutput LogWriterFunc(LogLevelFlags log_level, c_ulong n_fields, void* user_data);
	public enum LogWriterOutput : c_int
	{
		handled = 1,
		unhandled = 0
	}
	[CRepr]
	public struct MainContext
	{
	}
	[CRepr]
	public enum MainContextFlags : int
	{
		none = 0,
		ownerless_polling = 1
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
	public enum MarkupCollectType : int
	{
		invalid = 0,
		string = 1,
		strdup = 2,
		boolean = 3,
		tristate = 4,
		optional = 65536
	}
	public enum MarkupError : c_int
	{
		bad_utf8 = 0,
		empty = 1,
		parse = 2,
		unknown_element = 3,
		unknown_attribute = 4,
		invalid_content = 5,
		missing_attribute = 6
	}
	[CRepr]
	public struct MarkupParseContext
	{
	}
	[CRepr]
	public enum MarkupParseFlags : int
	{
		default_flags = 0,
		do_not_use_this_unsupported_flag = 1,
		treat_cdata_as_text = 2,
		prefix_error_position = 4,
		ignore_qualified = 8
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
	[AllowDuplicates]
	public enum NormalizeMode : c_int
	{
		default_ = 0,
		nfd = 0,
		default_compose = 1,
		nfc = 1,
		all = 2,
		nfkd = 2,
		all_compose = 3,
		nfkc = 3
	}
	public enum NumberParserError : c_int
	{
		invalid = 0,
		out_of_bounds = 1
	}
	[CRepr]
	public struct Once
	{
		OnceStatus status;
		void* retval;
	}
	public enum OnceStatus : c_int
	{
		notcalled = 0,
		progress = 1,
		ready = 2
	}
	public enum OptionArg : c_int
	{
		none = 0,
		string = 1,
		int = 2,
		callback = 3,
		filename = 4,
		string_array = 5,
		filename_array = 6,
		double = 7,
		int64 = 8
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
		unknown_option = 0,
		bad_value = 1,
		failed = 2
	}
	public function void OptionErrorFunc(OptionContext context, OptionGroup group, void* data);
	[CRepr]
	public enum OptionFlags : int
	{
		none = 0,
		hidden = 1,
		in_main = 2,
		reverse = 4,
		no_arg = 8,
		filename = 16,
		optional_arg = 32,
		noalias = 64
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
	public enum RegexCompileFlags : int
	{
		default_ = 0,
		caseless = 1,
		multiline = 2,
		dotall = 4,
		extended = 8,
		anchored = 16,
		dollar_endonly = 32,
		ungreedy = 512,
		raw = 2048,
		no_auto_capture = 4096,
		optimize = 8192,
		firstline = 262144,
		dupnames = 524288,
		newline_cr = 1048576,
		newline_lf = 2097152,
		newline_crlf = 3145728,
		newline_anycrlf = 5242880,
		bsr_anycrlf = 8388608,
		javascript_compat = 33554432
	}
	public enum RegexError : c_int
	{
		compile = 0,
		optimize = 1,
		replace = 2,
		match = 3,
		internal_ = 4,
		stray_backslash = 101,
		missing_control_char = 102,
		unrecognized_escape = 103,
		quantifiers_out_of_order = 104,
		quantifier_too_big = 105,
		unterminated_character_class = 106,
		invalid_escape_in_character_class = 107,
		range_out_of_order = 108,
		nothing_to_repeat = 109,
		unrecognized_character = 112,
		posix_named_class_outside_class = 113,
		unmatched_parenthesis = 114,
		inexistent_subpattern_reference = 115,
		unterminated_comment = 118,
		expression_too_large = 120,
		memory_error = 121,
		variable_length_lookbehind = 125,
		malformed_condition = 126,
		too_many_conditional_branches = 127,
		assertion_expected = 128,
		unknown_posix_class_name = 130,
		posix_collating_elements_not_supported = 131,
		hex_code_too_large = 134,
		invalid_condition = 135,
		single_byte_match_in_lookbehind = 136,
		infinite_loop = 140,
		missing_subpattern_name_terminator = 142,
		duplicate_subpattern_name = 143,
		malformed_property = 146,
		unknown_property = 147,
		subpattern_name_too_long = 148,
		too_many_subpatterns = 149,
		invalid_octal_value = 151,
		too_many_branches_in_define = 154,
		define_repetion = 155,
		inconsistent_newline_options = 156,
		missing_back_reference = 157,
		invalid_relative_reference = 158,
		backtracking_control_verb_argument_forbidden = 159,
		unknown_backtracking_control_verb = 160,
		number_too_big = 161,
		missing_subpattern_name = 162,
		missing_digit = 163,
		invalid_data_character = 164,
		extra_subpattern_name = 165,
		backtracking_control_verb_argument_required = 166,
		invalid_control_char = 168,
		missing_name = 169,
		not_supported_in_class = 171,
		too_many_forward_references = 172,
		name_too_long = 175,
		character_value_too_large = 176
	}
	public function c_int RegexEvalCallback(MatchInfo match_info, String result, void* user_data);
	[CRepr, AllowDuplicates]
	public enum RegexMatchFlags : int
	{
		default_ = 0,
		anchored = 16,
		notbol = 128,
		noteol = 256,
		notempty = 1024,
		partial = 32768,
		newline_cr = 1048576,
		newline_lf = 2097152,
		newline_crlf = 3145728,
		newline_any = 4194304,
		newline_anycrlf = 5242880,
		bsr_anycrlf = 8388608,
		bsr_any = 16777216,
		partial_soft = 32768,
		partial_hard = 134217728,
		notempty_atstart = 268435456
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
		cur = 0,
		set = 1,
		end = 2
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
		bad_quoting = 0,
		empty_string = 1,
		failed = 2
	}
	public enum SliceConfig : c_int
	{
		always_malloc = 1,
		bypass_magazines = 2,
		working_set_msecs = 3,
		color_increment = 4,
		chunk_sizes = 5,
		contention_counter = 6
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
	[AllowDuplicates]
	public enum SpawnError : c_int
	{
		fork = 0,
		read = 1,
		chdir = 2,
		acces = 3,
		perm = 4,
		too_big = 5,
		_2big = 5,
		noexec = 6,
		nametoolong = 7,
		noent = 8,
		nomem = 9,
		notdir = 10,
		loop = 11,
		txtbusy = 12,
		io = 13,
		nfile = 14,
		mfile = 15,
		inval = 16,
		isdir = 17,
		libbad = 18,
		failed = 19
	}
	[CRepr]
	public enum SpawnFlags : int
	{
		default_ = 0,
		leave_descriptors_open = 1,
		do_not_reap_child = 2,
		search_path = 4,
		stdout_to_dev_null = 8,
		stderr_to_dev_null = 16,
		child_inherits_stdin = 32,
		file_and_argv_zero = 64,
		search_path_from_envp = 128,
		cloexec_pipes = 256,
		child_inherits_stdout = 512,
		child_inherits_stderr = 1024,
		stdin_from_dev_null = 2048
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
		dist = 0,
		built = 1
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
		none = 0,
		error = 1,
		start_binary = 2,
		list_case = 3,
		skip_case = 4,
		start_case = 5,
		stop_case = 6,
		min_result = 7,
		max_result = 8,
		message = 9,
		start_suite = 10,
		stop_suite = 11
	}
	public enum TestResult : c_int
	{
		success = 0,
		skipped = 1,
		failure = 2,
		incomplete = 3
	}
	[CRepr]
	public enum TestSubprocessFlags : int
	{
		default_ = 0,
		inherit_stdin = 1,
		inherit_stdout = 2,
		inherit_stderr = 4
	}
	[CRepr]
	public struct TestSuite
	{
	}
	[CRepr]
	public enum TestTrapFlags : int
	{
		default_ = 0,
		silence_stdout = 128,
		silence_stderr = 256,
		inherit_stdin = 512
	}
	[CRepr]
	public struct Thread
	{
	}
	public enum ThreadError : c_int
	{
		thread_error_again = 0
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
		standard = 0,
		daylight = 1,
		universal = 2
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
		eof = 0,
		left_paren = 40,
		right_paren = 41,
		left_curly = 123,
		right_curly = 125,
		left_brace = 91,
		right_brace = 93,
		equal_sign = 61,
		comma = 44,
		none = 256,
		error = 257,
		char = 258,
		binary = 259,
		octal = 260,
		int = 261,
		hex = 262,
		float = 263,
		string = 264,
		symbol = 265,
		identifier = 266,
		identifier_null = 267,
		comment_single = 268,
		comment_multi = 269
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
	public function char8* TranslateFunc(char8* str, void* data);
	[CRepr]
	public struct TrashStack
	{
		TrashStack* next;
	}
	[CRepr, AllowDuplicates]
	public enum TraverseFlags : int
	{
		leaves = 1,
		non_leaves = 2,
		all = 3,
		mask = 3,
		leafs = 1,
		non_leafs = 2
	}
	public function c_int TraverseFunc(void* key, void* value, void* data);
	public function c_int TraverseNodeFunc(TreeNode node, void* data);
	public enum TraverseType : c_int
	{
		in_order = 0,
		pre_order = 1,
		post_order = 2,
		level_order = 3
	}
	[CRepr]
	public struct Tree
	{
	}
	[CRepr]
	public struct TreeNode
	{
	}
	[AllowDuplicates]
	public enum UnicodeBreakType : c_int
	{
		mandatory = 0,
		carriage_return = 1,
		line_feed = 2,
		combining_mark = 3,
		surrogate = 4,
		zero_width_space = 5,
		inseparable = 6,
		non_breaking_glue = 7,
		contingent = 8,
		space = 9,
		after = 10,
		before = 11,
		before_and_after = 12,
		hyphen = 13,
		non_starter = 14,
		open_punctuation = 15,
		close_punctuation = 16,
		quotation = 17,
		exclamation = 18,
		ideographic = 19,
		numeric = 20,
		infix_separator = 21,
		symbol = 22,
		alphabetic = 23,
		prefix = 24,
		postfix = 25,
		complex_context = 26,
		ambiguous = 27,
		unknown = 28,
		next_line = 29,
		word_joiner = 30,
		hangul_l_jamo = 31,
		hangul_v_jamo = 32,
		hangul_t_jamo = 33,
		hangul_lv_syllable = 34,
		hangul_lvt_syllable = 35,
		close_paranthesis = 36,
		close_parenthesis = 36,
		conditional_japanese_starter = 37,
		hebrew_letter = 38,
		regional_indicator = 39,
		emoji_base = 40,
		emoji_modifier = 41,
		zero_width_joiner = 42
	}
	public enum UnicodeScript : c_int
	{
		invalid_code = -1,
		common = 0,
		inherited = 1,
		arabic = 2,
		armenian = 3,
		bengali = 4,
		bopomofo = 5,
		cherokee = 6,
		coptic = 7,
		cyrillic = 8,
		deseret = 9,
		devanagari = 10,
		ethiopic = 11,
		georgian = 12,
		gothic = 13,
		greek = 14,
		gujarati = 15,
		gurmukhi = 16,
		han = 17,
		hangul = 18,
		hebrew = 19,
		hiragana = 20,
		kannada = 21,
		katakana = 22,
		khmer = 23,
		lao = 24,
		latin = 25,
		malayalam = 26,
		mongolian = 27,
		myanmar = 28,
		ogham = 29,
		old_italic = 30,
		oriya = 31,
		runic = 32,
		sinhala = 33,
		syriac = 34,
		tamil = 35,
		telugu = 36,
		thaana = 37,
		thai = 38,
		tibetan = 39,
		canadian_aboriginal = 40,
		yi = 41,
		tagalog = 42,
		hanunoo = 43,
		buhid = 44,
		tagbanwa = 45,
		braille = 46,
		cypriot = 47,
		limbu = 48,
		osmanya = 49,
		shavian = 50,
		linear_b = 51,
		tai_le = 52,
		ugaritic = 53,
		new_tai_lue = 54,
		buginese = 55,
		glagolitic = 56,
		tifinagh = 57,
		syloti_nagri = 58,
		old_persian = 59,
		kharoshthi = 60,
		unknown = 61,
		balinese = 62,
		cuneiform = 63,
		phoenician = 64,
		phags_pa = 65,
		nko = 66,
		kayah_li = 67,
		lepcha = 68,
		rejang = 69,
		sundanese = 70,
		saurashtra = 71,
		cham = 72,
		ol_chiki = 73,
		vai = 74,
		carian = 75,
		lycian = 76,
		lydian = 77,
		avestan = 78,
		bamum = 79,
		egyptian_hieroglyphs = 80,
		imperial_aramaic = 81,
		inscriptional_pahlavi = 82,
		inscriptional_parthian = 83,
		javanese = 84,
		kaithi = 85,
		lisu = 86,
		meetei_mayek = 87,
		old_south_arabian = 88,
		old_turkic = 89,
		samaritan = 90,
		tai_tham = 91,
		tai_viet = 92,
		batak = 93,
		brahmi = 94,
		mandaic = 95,
		chakma = 96,
		meroitic_cursive = 97,
		meroitic_hieroglyphs = 98,
		miao = 99,
		sharada = 100,
		sora_sompeng = 101,
		takri = 102,
		bassa_vah = 103,
		caucasian_albanian = 104,
		duployan = 105,
		elbasan = 106,
		grantha = 107,
		khojki = 108,
		khudawadi = 109,
		linear_a = 110,
		mahajani = 111,
		manichaean = 112,
		mende_kikakui = 113,
		modi = 114,
		mro = 115,
		nabataean = 116,
		old_north_arabian = 117,
		old_permic = 118,
		pahawh_hmong = 119,
		palmyrene = 120,
		pau_cin_hau = 121,
		psalter_pahlavi = 122,
		siddham = 123,
		tirhuta = 124,
		warang_citi = 125,
		ahom = 126,
		anatolian_hieroglyphs = 127,
		hatran = 128,
		multani = 129,
		old_hungarian = 130,
		signwriting = 131,
		adlam = 132,
		bhaiksuki = 133,
		marchen = 134,
		newa = 135,
		osage = 136,
		tangut = 137,
		masaram_gondi = 138,
		nushu = 139,
		soyombo = 140,
		zanabazar_square = 141,
		dogra = 142,
		gunjala_gondi = 143,
		hanifi_rohingya = 144,
		makasar = 145,
		medefaidrin = 146,
		old_sogdian = 147,
		sogdian = 148,
		elymaic = 149,
		nandinagari = 150,
		nyiakeng_puachue_hmong = 151,
		wancho = 152,
		chorasmian = 153,
		dives_akuru = 154,
		khitan_small_script = 155,
		yezidi = 156,
		cypro_minoan = 157,
		old_uyghur = 158,
		tangsa = 159,
		toto = 160,
		vithkuqi = 161,
		math = 162,
		kawi = 163,
		nag_mundari = 164
	}
	public enum UnicodeType : c_int
	{
		control = 0,
		format = 1,
		unassigned = 2,
		private_use = 3,
		surrogate = 4,
		lowercase_letter = 5,
		modifier_letter = 6,
		other_letter = 7,
		titlecase_letter = 8,
		uppercase_letter = 9,
		spacing_mark = 10,
		enclosing_mark = 11,
		non_spacing_mark = 12,
		decimal_number = 13,
		letter_number = 14,
		other_number = 15,
		connect_punctuation = 16,
		dash_punctuation = 17,
		close_punctuation = 18,
		final_punctuation = 19,
		initial_punctuation = 20,
		other_punctuation = 21,
		open_punctuation = 22,
		currency_symbol = 23,
		modifier_symbol = 24,
		math_symbol = 25,
		other_symbol = 26,
		line_separator = 27,
		paragraph_separator = 28,
		space_separator = 29
	}
	public function c_int UnixFDSourceFunc(c_int fd, IOCondition condition, void* user_data);
	[CRepr]
	public struct Uri
	{
	}
	public enum UriError : c_int
	{
		failed = 0,
		bad_scheme = 1,
		bad_user = 2,
		bad_password = 3,
		bad_auth_params = 4,
		bad_host = 5,
		bad_port = 6,
		bad_path = 7,
		bad_query = 8,
		bad_fragment = 9
	}
	[CRepr]
	public enum UriFlags : int
	{
		none = 0,
		parse_relaxed = 1,
		has_password = 2,
		has_auth_params = 4,
		encoded = 8,
		non_dns = 16,
		encoded_query = 32,
		encoded_path = 64,
		encoded_fragment = 128,
		scheme_normalize = 256
	}
	[CRepr]
	public enum UriHideFlags : int
	{
		none = 0,
		userinfo = 1,
		password = 2,
		auth_params = 4,
		query = 8,
		fragment = 16
	}
	[CRepr]
	public enum UriParamsFlags : int
	{
		none = 0,
		case_insensitive = 1,
		www_form = 2,
		parse_relaxed = 4
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
		directory_desktop = 0,
		directory_documents = 1,
		directory_download = 2,
		directory_music = 3,
		directory_pictures = 4,
		directory_public_share = 5,
		directory_templates = 6,
		directory_videos = 7,
		n_directories = 8
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
		boolean = 98,
		byte = 121,
		int16 = 110,
		uint16 = 113,
		int32 = 105,
		uint32 = 117,
		int64 = 120,
		uint64 = 116,
		handle = 104,
		double = 100,
		string = 115,
		object_path = 111,
		signature = 103,
		variant = 118,
		maybe = 109,
		array = 97,
		tuple = 40,
		dict_entry = 123
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
		failed = 0,
		basic_type_expected = 1,
		cannot_infer_type = 2,
		definite_type_expected = 3,
		input_not_at_end = 4,
		invalid_character = 5,
		invalid_format_string = 6,
		invalid_object_path = 7,
		invalid_signature = 8,
		invalid_type_string = 9,
		no_common_type = 10,
		number_out_of_range = 11,
		number_too_big = 12,
		type_error = 13,
		unexpected_token = 14,
		unknown_keyword = 15,
		unterminated_string_constant = 16,
		value_expected = 17,
		recursion = 18
	}
	[CRepr]
	public struct VariantType
	{
	}
	public function void VoidFunc();
}