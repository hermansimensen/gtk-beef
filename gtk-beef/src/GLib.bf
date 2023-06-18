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
	[LinkName("g_access")]
	public static extern c_int GAccess(char8* filename, c_int mode);
	[LinkName("g_aligned_alloc")]
	public static extern void* GAlignedAlloc(c_ulong n_blocks, c_ulong n_block_bytes, c_ulong alignment);
	[LinkName("g_aligned_alloc0")]
	public static extern void* GAlignedAlloc0(c_ulong n_blocks, c_ulong n_block_bytes, c_ulong alignment);
	[LinkName("g_aligned_free")]
	public static extern void GAlignedFree(void* mem);
	[LinkName("g_aligned_free_sized")]
	public static extern void GAlignedFreeSized(void* mem, c_ulong alignment, c_ulong size);
	[LinkName("g_ascii_digit_value")]
	public static extern c_int GAsciiDigitValue(c_char c);
	[LinkName("g_ascii_dtostr")]
	public static extern char8* GAsciiDtostr(char8* buffer, c_int buf_len, double d);
	[LinkName("g_ascii_formatd")]
	public static extern char8* GAsciiFormatd(char8* buffer, c_int buf_len, char8* format, double d);
	[LinkName("g_ascii_strcasecmp")]
	public static extern c_int GAsciiStrcasecmp(char8* s1, char8* s2);
	[LinkName("g_ascii_strdown")]
	public static extern char8* GAsciiStrdown(char8* str, c_long len);
	[LinkName("g_ascii_string_to_signed")]
	public static extern c_int GAsciiStringToSigned(char8* str, c_uint base_, c_longlong min, c_longlong max, c_longlong* out_num);
	[LinkName("g_ascii_string_to_unsigned")]
	public static extern c_int GAsciiStringToUnsigned(char8* str, c_uint base_, c_ulonglong min, c_ulonglong max, c_ulonglong* out_num);
	[LinkName("g_ascii_strncasecmp")]
	public static extern c_int GAsciiStrncasecmp(char8* s1, char8* s2, c_ulong n);
	[LinkName("g_ascii_strtod")]
	public static extern double GAsciiStrtod(char8* nptr, char8* endptr);
	[LinkName("g_ascii_strtoll")]
	public static extern c_longlong GAsciiStrtoll(char8* nptr, char8* endptr, c_uint base_);
	[LinkName("g_ascii_strtoull")]
	public static extern c_ulonglong GAsciiStrtoull(char8* nptr, char8* endptr, c_uint base_);
	[LinkName("g_ascii_strup")]
	public static extern char8* GAsciiStrup(char8* str, c_long len);
	[LinkName("g_ascii_tolower")]
	public static extern c_char GAsciiTolower(c_char c);
	[LinkName("g_ascii_toupper")]
	public static extern c_char GAsciiToupper(c_char c);
	[LinkName("g_ascii_xdigit_value")]
	public static extern c_int GAsciiXdigitValue(c_char c);
	[LinkName("g_assert_warning")]
	public static extern void GAssertWarning(char8* log_domain, char8* file, c_int line, char8* pretty_function, char8* expression);
	[LinkName("g_assertion_message")]
	public static extern void GAssertionMessage(char8* domain, char8* file, c_int line, char8* func, char8* message);
	[LinkName("g_assertion_message_cmpstr")]
	public static extern void GAssertionMessageCmpstr(char8* domain, char8* file, c_int line, char8* func, char8* expr, char8* arg1, char8* cmp, char8* arg2);
	[LinkName("g_assertion_message_cmpstrv")]
	public static extern void GAssertionMessageCmpstrv(char8* domain, char8* file, c_int line, char8* func, char8* expr, char8* arg1, char8* arg2, c_ulong first_wrong_idx);
	[LinkName("g_assertion_message_error")]
	public static extern void GAssertionMessageError(char8* domain, char8* file, c_int line, char8* func, char8* expr, Error* error, Quark error_domain, c_int error_code);
	[LinkName("g_atexit")]
	public static extern void GAtexit(VoidFunc func);
	[LinkName("g_atomic_int_add")]
	public static extern c_int GAtomicIntAdd(c_int* atomic, c_int val);
	[LinkName("g_atomic_int_and")]
	public static extern c_uint GAtomicIntAnd(c_uint* atomic, c_uint val);
	[LinkName("g_atomic_int_compare_and_exchange")]
	public static extern c_int GAtomicIntCompareAndExchange(c_int* atomic, c_int oldval, c_int newval);
	[LinkName("g_atomic_int_compare_and_exchange_full")]
	public static extern c_int GAtomicIntCompareAndExchangeFull(c_int* atomic, c_int oldval, c_int newval, c_int* preval);
	[LinkName("g_atomic_int_dec_and_test")]
	public static extern c_int GAtomicIntDecAndTest(c_int* atomic);
	[LinkName("g_atomic_int_exchange")]
	public static extern c_int GAtomicIntExchange(c_int* atomic, c_int newval);
	[LinkName("g_atomic_int_exchange_and_add")]
	public static extern c_int GAtomicIntExchangeAndAdd(c_int* atomic, c_int val);
	[LinkName("g_atomic_int_get")]
	public static extern c_int GAtomicIntGet(c_int* atomic);
	[LinkName("g_atomic_int_inc")]
	public static extern void GAtomicIntInc(c_int* atomic);
	[LinkName("g_atomic_int_or")]
	public static extern c_uint GAtomicIntOr(c_uint* atomic, c_uint val);
	[LinkName("g_atomic_int_set")]
	public static extern void GAtomicIntSet(c_int* atomic, c_int newval);
	[LinkName("g_atomic_int_xor")]
	public static extern c_uint GAtomicIntXor(c_uint* atomic, c_uint val);
	[LinkName("g_atomic_pointer_add")]
	public static extern c_long GAtomicPointerAdd(void* atomic, c_long val);
	[LinkName("g_atomic_pointer_and")]
	public static extern c_ulong GAtomicPointerAnd(void* atomic, c_ulong val);
	[LinkName("g_atomic_pointer_compare_and_exchange")]
	public static extern c_int GAtomicPointerCompareAndExchange(void* atomic, void* oldval, void* newval);
	[LinkName("g_atomic_pointer_compare_and_exchange_full")]
	public static extern c_int GAtomicPointerCompareAndExchangeFull(void* atomic, void* oldval, void* newval, void* preval);
	[LinkName("g_atomic_pointer_exchange")]
	public static extern void* GAtomicPointerExchange(void* atomic, void* newval);
	[LinkName("g_atomic_pointer_get")]
	public static extern void* GAtomicPointerGet(void* atomic);
	[LinkName("g_atomic_pointer_or")]
	public static extern c_ulong GAtomicPointerOr(void* atomic, c_ulong val);
	[LinkName("g_atomic_pointer_set")]
	public static extern void GAtomicPointerSet(void* atomic, void* newval);
	[LinkName("g_atomic_pointer_xor")]
	public static extern c_ulong GAtomicPointerXor(void* atomic, c_ulong val);
	[LinkName("g_atomic_rc_box_acquire")]
	public static extern void* GAtomicRcBoxAcquire(void* mem_block);
	[LinkName("g_atomic_rc_box_alloc")]
	public static extern void* GAtomicRcBoxAlloc(c_ulong block_size);
	[LinkName("g_atomic_rc_box_alloc0")]
	public static extern void* GAtomicRcBoxAlloc0(c_ulong block_size);
	[LinkName("g_atomic_rc_box_dup")]
	public static extern void* GAtomicRcBoxDup(c_ulong block_size, void* mem_block);
	[LinkName("g_atomic_rc_box_get_size")]
	public static extern c_ulong GAtomicRcBoxGetSize(void* mem_block);
	[LinkName("g_atomic_rc_box_release")]
	public static extern void GAtomicRcBoxRelease(void* mem_block);
	[LinkName("g_atomic_rc_box_release_full")]
	public static extern void GAtomicRcBoxReleaseFull(void* mem_block, DestroyNotify clear_func);
	[LinkName("g_atomic_ref_count_compare")]
	public static extern c_int GAtomicRefCountCompare(c_int* arc, c_int val);
	[LinkName("g_atomic_ref_count_dec")]
	public static extern c_int GAtomicRefCountDec(c_int* arc);
	[LinkName("g_atomic_ref_count_inc")]
	public static extern void GAtomicRefCountInc(c_int* arc);
	[LinkName("g_atomic_ref_count_init")]
	public static extern void GAtomicRefCountInit(c_int* arc);
	[LinkName("g_base64_decode")]
	public static extern c_uchar GBase64Decode(char8* text, c_ulong* out_len);
	[LinkName("g_base64_decode_inplace")]
	public static extern c_uchar* GBase64DecodeInplace(c_ulong* out_len);
	[LinkName("g_base64_encode")]
	public static extern char8* GBase64Encode(c_ulong len);
	[LinkName("g_base64_encode_close")]
	public static extern c_ulong GBase64EncodeClose(c_int break_lines, c_int* state, c_int* save);
	[LinkName("g_base64_encode_step")]
	public static extern c_ulong GBase64EncodeStep(c_ulong len, c_int break_lines, c_int* state, c_int* save);
	[LinkName("g_basename")]
	public static extern char8* GBasename(char8* file_name);
	[LinkName("g_bit_lock")]
	public static extern void GBitLock(c_int* address, c_int lock_bit);
	[LinkName("g_bit_nth_lsf")]
	public static extern c_int GBitNthLsf(c_ulong mask, c_int nth_bit);
	[LinkName("g_bit_nth_msf")]
	public static extern c_int GBitNthMsf(c_ulong mask, c_int nth_bit);
	[LinkName("g_bit_storage")]
	public static extern c_uint GBitStorage(c_ulong number);
	[LinkName("g_bit_trylock")]
	public static extern c_int GBitTrylock(c_int* address, c_int lock_bit);
	[LinkName("g_bit_unlock")]
	public static extern void GBitUnlock(c_int* address, c_int lock_bit);
	[LinkName("g_bookmark_file_error_quark")]
	public static extern Quark GBookmarkFileErrorQuark();
	[LinkName("g_build_filenamev")]
	public static extern char8* GBuildFilenamev();
	[LinkName("g_build_pathv")]
	public static extern char8* GBuildPathv(char8* separator);
	[LinkName("g_byte_array_free")]
	public static extern c_uchar* GByteArrayFree(c_int free_segment);
	[LinkName("g_byte_array_free_to_bytes")]
	public static extern Bytes* GByteArrayFreeToBytes();
	[LinkName("g_byte_array_new")]
	public static extern c_uchar GByteArrayNew();
	[LinkName("g_byte_array_new_take")]
	public static extern c_uchar GByteArrayNewTake(c_ulong len);
	[LinkName("g_byte_array_steal")]
	public static extern c_uchar* GByteArraySteal(c_ulong* len);
	[LinkName("g_byte_array_unref")]
	public static extern void GByteArrayUnref();
	[LinkName("g_canonicalize_filename")]
	public static extern char8* GCanonicalizeFilename(char8* filename, char8* relative_to);
	[LinkName("g_chdir")]
	public static extern c_int GChdir(char8* path);
	[LinkName("glib_check_version")]
	public static extern char8* GlibCheckVersion(c_uint required_major, c_uint required_minor, c_uint required_micro);
	[LinkName("g_checksum_type_get_length")]
	public static extern c_long GChecksumTypeGetLength(ChecksumType checksum_type);
	[LinkName("g_child_watch_add_full")]
	public static extern c_uint GChildWatchAddFull(c_int priority, Pid pid, ChildWatchFunc function_, void* data, DestroyNotify notify);
	[LinkName("g_child_watch_source_new")]
	public static extern Source* GChildWatchSourceNew(Pid pid);
	[LinkName("g_clear_error")]
	public static extern void GClearError();
	[LinkName("g_close")]
	public static extern c_int GClose(c_int fd);
	[LinkName("g_compute_checksum_for_bytes")]
	public static extern char8* GComputeChecksumForBytes(ChecksumType checksum_type, Bytes* data);
	[LinkName("g_compute_checksum_for_data")]
	public static extern char8* GComputeChecksumForData(ChecksumType checksum_type, c_ulong length);
	[LinkName("g_compute_checksum_for_string")]
	public static extern char8* GComputeChecksumForString(ChecksumType checksum_type, char8* str, c_long length);
	[LinkName("g_compute_hmac_for_bytes")]
	public static extern char8* GComputeHmacForBytes(ChecksumType digest_type, Bytes* key, Bytes* data);
	[LinkName("g_compute_hmac_for_data")]
	public static extern char8* GComputeHmacForData(ChecksumType digest_type, c_ulong key_len, c_ulong length);
	[LinkName("g_compute_hmac_for_string")]
	public static extern char8* GComputeHmacForString(ChecksumType digest_type, c_ulong key_len, char8* str, c_long length);
	[LinkName("g_convert")]
	public static extern c_uchar GConvert(c_long len, char8* to_codeset, char8* from_codeset, c_ulong* bytes_read, c_ulong* bytes_written);
	[LinkName("g_convert_error_quark")]
	public static extern Quark GConvertErrorQuark();
	[LinkName("g_convert_with_fallback")]
	public static extern c_uchar GConvertWithFallback(c_long len, char8* to_codeset, char8* from_codeset, char8* fallback, c_ulong* bytes_read, c_ulong* bytes_written);
	[LinkName("g_datalist_foreach")]
	public static extern void GDatalistForeach(Data* datalist, DataForeachFunc func, void* user_data);
	[LinkName("g_datalist_get_data")]
	public static extern void* GDatalistGetData(Data* datalist, char8* key);
	[LinkName("g_datalist_get_flags")]
	public static extern c_uint GDatalistGetFlags(Data* datalist);
	[LinkName("g_datalist_id_get_data")]
	public static extern void* GDatalistIdGetData(Data* datalist, Quark key_id);
	[LinkName("g_datalist_id_remove_multiple")]
	public static extern void GDatalistIdRemoveMultiple(Data* datalist, c_ulong n_keys);
	[LinkName("g_datalist_set_flags")]
	public static extern void GDatalistSetFlags(Data* datalist, c_uint flags);
	[LinkName("g_datalist_unset_flags")]
	public static extern void GDatalistUnsetFlags(Data* datalist, c_uint flags);
	[LinkName("g_dataset_destroy")]
	public static extern void GDatasetDestroy(void* dataset_location);
	[LinkName("g_dataset_foreach")]
	public static extern void GDatasetForeach(void* dataset_location, DataForeachFunc func, void* user_data);
	[LinkName("g_dataset_id_get_data")]
	public static extern void* GDatasetIdGetData(void* dataset_location, Quark key_id);
	[LinkName("g_date_get_days_in_month")]
	public static extern c_uchar GDateGetDaysInMonth(DateMonth month, DateYear year);
	[LinkName("g_date_get_monday_weeks_in_year")]
	public static extern c_uchar GDateGetMondayWeeksInYear(DateYear year);
	[LinkName("g_date_get_sunday_weeks_in_year")]
	public static extern c_uchar GDateGetSundayWeeksInYear(DateYear year);
	[LinkName("g_date_is_leap_year")]
	public static extern c_int GDateIsLeapYear(DateYear year);
	[LinkName("g_date_strftime")]
	public static extern c_ulong GDateStrftime(char8* s, c_ulong slen, char8* format, Date* date);
	[LinkName("g_date_valid_day")]
	public static extern c_int GDateValidDay(DateDay day);
	[LinkName("g_date_valid_dmy")]
	public static extern c_int GDateValidDmy(DateDay day, DateMonth month, DateYear year);
	[LinkName("g_date_valid_julian")]
	public static extern c_int GDateValidJulian(c_uint julian_date);
	[LinkName("g_date_valid_month")]
	public static extern c_int GDateValidMonth(DateMonth month);
	[LinkName("g_date_valid_weekday")]
	public static extern c_int GDateValidWeekday(DateWeekday weekday);
	[LinkName("g_date_valid_year")]
	public static extern c_int GDateValidYear(DateYear year);
	[LinkName("g_dcgettext")]
	public static extern char8* GDcgettext(char8* domain, char8* msgid, c_int category);
	[LinkName("g_dgettext")]
	public static extern char8* GDgettext(char8* domain, char8* msgid);
	[LinkName("g_dir_make_tmp")]
	public static extern char8* GDirMakeTmp(char8* tmpl);
	[LinkName("g_direct_equal")]
	public static extern c_int GDirectEqual(void* v1, void* v2);
	[LinkName("g_direct_hash")]
	public static extern c_uint GDirectHash(void* v);
	[LinkName("g_dngettext")]
	public static extern char8* GDngettext(char8* domain, char8* msgid, char8* msgid_plural, c_ulong n);
	[LinkName("g_double_equal")]
	public static extern c_int GDoubleEqual(void* v1, void* v2);
	[LinkName("g_double_hash")]
	public static extern c_uint GDoubleHash(void* v);
	[LinkName("g_dpgettext")]
	public static extern char8* GDpgettext(char8* domain, char8* msgctxtid, c_ulong msgidoffset);
	[LinkName("g_dpgettext2")]
	public static extern char8* GDpgettext2(char8* domain, char8* context, char8* msgid);
	[LinkName("g_environ_getenv")]
	public static extern char8* GEnvironGetenv(char8* variable);
	[LinkName("g_environ_setenv")]
	public static extern char8* GEnvironSetenv(char8* variable, char8* value, c_int overwrite);
	[LinkName("g_environ_unsetenv")]
	public static extern char8* GEnvironUnsetenv(char8* variable);
	[LinkName("g_file_error_from_errno")]
	public static extern FileError GFileErrorFromErrno(c_int err_no);
	[LinkName("g_file_error_quark")]
	public static extern Quark GFileErrorQuark();
	[LinkName("g_file_get_contents")]
	public static extern c_int GFileGetContents(char8* filename, c_ulong* length);
	[LinkName("g_file_open_tmp")]
	public static extern c_int GFileOpenTmp(char8* tmpl, char8* name_used);
	[LinkName("g_file_read_link")]
	public static extern char8* GFileReadLink(char8* filename);
	[LinkName("g_file_set_contents")]
	public static extern c_int GFileSetContents(char8* filename, c_long length);
	[LinkName("g_file_set_contents_full")]
	public static extern c_int GFileSetContentsFull(char8* filename, c_long length, FileSetContentsFlags flags, c_int mode);
	[LinkName("g_file_test")]
	public static extern c_int GFileTest(char8* filename, FileTest test);
	[LinkName("g_filename_display_basename")]
	public static extern char8* GFilenameDisplayBasename(char8* filename);
	[LinkName("g_filename_display_name")]
	public static extern char8* GFilenameDisplayName(char8* filename);
	[LinkName("g_filename_from_uri")]
	public static extern char8* GFilenameFromUri(char8* uri, char8* hostname);
	[LinkName("g_filename_from_utf8")]
	public static extern char8* GFilenameFromUtf8(char8* utf8string, c_long len, c_ulong* bytes_read, c_ulong* bytes_written);
	[LinkName("g_filename_to_uri")]
	public static extern char8* GFilenameToUri(char8* filename, char8* hostname);
	[LinkName("g_filename_to_utf8")]
	public static extern char8* GFilenameToUtf8(char8* opsysstring, c_long len, c_ulong* bytes_read, c_ulong* bytes_written);
	[LinkName("g_find_program_in_path")]
	public static extern char8* GFindProgramInPath(char8* program);
	[LinkName("g_format_size")]
	public static extern char8* GFormatSize(c_ulonglong size);
	[LinkName("g_format_size_for_display")]
	public static extern char8* GFormatSizeForDisplay(c_longlong size);
	[LinkName("g_format_size_full")]
	public static extern char8* GFormatSizeFull(c_ulonglong size, FormatSizeFlags flags);
	[LinkName("g_free")]
	public static extern void GFree(void* mem);
	[LinkName("g_free_sized")]
	public static extern void GFreeSized(void* mem, c_ulong size);
	[LinkName("g_get_application_name")]
	public static extern char8* GGetApplicationName();
	[LinkName("g_get_charset")]
	public static extern c_int GGetCharset(char8* charset);
	[LinkName("g_get_codeset")]
	public static extern char8* GGetCodeset();
	[LinkName("g_get_console_charset")]
	public static extern c_int GGetConsoleCharset(char8* charset);
	[LinkName("g_get_current_dir")]
	public static extern char8* GGetCurrentDir();
	[LinkName("g_get_current_time")]
	public static extern void GGetCurrentTime(TimeVal* result);
	[LinkName("g_get_environ")]
	public static extern char8* GGetEnviron();
	[LinkName("g_get_filename_charsets")]
	public static extern c_int GGetFilenameCharsets();
	[LinkName("g_get_home_dir")]
	public static extern char8* GGetHomeDir();
	[LinkName("g_get_host_name")]
	public static extern char8* GGetHostName();
	[LinkName("g_get_language_names")]
	public static extern char8* GGetLanguageNames();
	[LinkName("g_get_language_names_with_category")]
	public static extern char8* GGetLanguageNamesWithCategory(char8* category_name);
	[LinkName("g_get_locale_variants")]
	public static extern char8* GGetLocaleVariants(char8* locale);
	[LinkName("g_get_monotonic_time")]
	public static extern c_longlong GGetMonotonicTime();
	[LinkName("g_get_num_processors")]
	public static extern c_uint GGetNumProcessors();
	[LinkName("g_get_os_info")]
	public static extern char8* GGetOsInfo(char8* key_name);
	[LinkName("g_get_prgname")]
	public static extern char8* GGetPrgname();
	[LinkName("g_get_real_name")]
	public static extern char8* GGetRealName();
	[LinkName("g_get_real_time")]
	public static extern c_longlong GGetRealTime();
	[LinkName("g_get_system_config_dirs")]
	public static extern char8* GGetSystemConfigDirs();
	[LinkName("g_get_system_data_dirs")]
	public static extern char8* GGetSystemDataDirs();
	[LinkName("g_get_tmp_dir")]
	public static extern char8* GGetTmpDir();
	[LinkName("g_get_user_cache_dir")]
	public static extern char8* GGetUserCacheDir();
	[LinkName("g_get_user_config_dir")]
	public static extern char8* GGetUserConfigDir();
	[LinkName("g_get_user_data_dir")]
	public static extern char8* GGetUserDataDir();
	[LinkName("g_get_user_name")]
	public static extern char8* GGetUserName();
	[LinkName("g_get_user_runtime_dir")]
	public static extern char8* GGetUserRuntimeDir();
	[LinkName("g_get_user_special_dir")]
	public static extern char8* GGetUserSpecialDir(UserDirectory directory);
	[LinkName("g_get_user_state_dir")]
	public static extern char8* GGetUserStateDir();
	[LinkName("g_getenv")]
	public static extern char8* GGetenv(char8* variable);
	[LinkName("g_hash_table_add")]
	public static extern c_int GHashTableAdd(GLib.HashTable* hash_table, void* key);
	[LinkName("g_hash_table_contains")]
	public static extern c_int GHashTableContains(GLib.HashTable* hash_table, void* key);
	[LinkName("g_hash_table_destroy")]
	public static extern void GHashTableDestroy(GLib.HashTable* hash_table);
	[LinkName("g_hash_table_insert")]
	public static extern c_int GHashTableInsert(GLib.HashTable* hash_table, void* key, void* value);
	[LinkName("g_hash_table_lookup")]
	public static extern void* GHashTableLookup(GLib.HashTable* hash_table, void* key);
	[LinkName("g_hash_table_lookup_extended")]
	public static extern c_int GHashTableLookupExtended(GLib.HashTable* hash_table, void* lookup_key, void* orig_key, void* value);
	[LinkName("g_hash_table_new_similar")]
	public static extern GLib.HashTable* GHashTableNewSimilar(GLib.HashTable* other_hash_table);
	[LinkName("g_hash_table_remove")]
	public static extern c_int GHashTableRemove(GLib.HashTable* hash_table, void* key);
	[LinkName("g_hash_table_remove_all")]
	public static extern void GHashTableRemoveAll(GLib.HashTable* hash_table);
	[LinkName("g_hash_table_replace")]
	public static extern c_int GHashTableReplace(GLib.HashTable* hash_table, void* key, void* value);
	[LinkName("g_hash_table_size")]
	public static extern c_uint GHashTableSize(GLib.HashTable* hash_table);
	[LinkName("g_hash_table_steal")]
	public static extern c_int GHashTableSteal(GLib.HashTable* hash_table, void* key);
	[LinkName("g_hash_table_steal_all")]
	public static extern void GHashTableStealAll(GLib.HashTable* hash_table);
	[LinkName("g_hash_table_steal_extended")]
	public static extern c_int GHashTableStealExtended(GLib.HashTable* hash_table, void* lookup_key, void* stolen_key, void* stolen_value);
	[LinkName("g_hash_table_unref")]
	public static extern void GHashTableUnref(GLib.HashTable* hash_table);
	[LinkName("g_hook_destroy")]
	public static extern c_int GHookDestroy(HookList* hook_list, c_ulong hook_id);
	[LinkName("g_hook_destroy_link")]
	public static extern void GHookDestroyLink(HookList* hook_list, Hook* hook);
	[LinkName("g_hook_free")]
	public static extern void GHookFree(HookList* hook_list, Hook* hook);
	[LinkName("g_hook_insert_before")]
	public static extern void GHookInsertBefore(HookList* hook_list, Hook* sibling, Hook* hook);
	[LinkName("g_hook_prepend")]
	public static extern void GHookPrepend(HookList* hook_list, Hook* hook);
	[LinkName("g_hook_unref")]
	public static extern void GHookUnref(HookList* hook_list, Hook* hook);
	[LinkName("g_hostname_is_ascii_encoded")]
	public static extern c_int GHostnameIsAsciiEncoded(char8* hostname);
	[LinkName("g_hostname_is_ip_address")]
	public static extern c_int GHostnameIsIpAddress(char8* hostname);
	[LinkName("g_hostname_is_non_ascii")]
	public static extern c_int GHostnameIsNonAscii(char8* hostname);
	[LinkName("g_hostname_to_ascii")]
	public static extern char8* GHostnameToAscii(char8* hostname);
	[LinkName("g_hostname_to_unicode")]
	public static extern char8* GHostnameToUnicode(char8* hostname);
	[LinkName("g_idle_add_full")]
	public static extern c_uint GIdleAddFull(c_int priority, SourceFunc function_, void* data, DestroyNotify notify);
	[LinkName("g_idle_remove_by_data")]
	public static extern c_int GIdleRemoveByData(void* data);
	[LinkName("g_idle_source_new")]
	public static extern Source* GIdleSourceNew();
	[LinkName("g_int64_equal")]
	public static extern c_int GInt64Equal(void* v1, void* v2);
	[LinkName("g_int64_hash")]
	public static extern c_uint GInt64Hash(void* v);
	[LinkName("g_int_equal")]
	public static extern c_int GIntEqual(void* v1, void* v2);
	[LinkName("g_int_hash")]
	public static extern c_uint GIntHash(void* v);
	[LinkName("g_intern_static_string")]
	public static extern char8* GInternStaticString(char8* string);
	[LinkName("g_intern_string")]
	public static extern char8* GInternString(char8* string);
	[LinkName("g_io_add_watch_full")]
	public static extern c_uint GIoAddWatchFull(IOChannel* channel, c_int priority, IOCondition condition, IOFunc func, void* user_data, DestroyNotify notify);
	[LinkName("g_io_channel_error_from_errno")]
	public static extern IOChannelError GIoChannelErrorFromErrno(c_int en);
	[LinkName("g_io_channel_error_quark")]
	public static extern Quark GIoChannelErrorQuark();
	[LinkName("g_io_create_watch")]
	public static extern Source* GIoCreateWatch(IOChannel* channel, IOCondition condition);
	[LinkName("g_key_file_error_quark")]
	public static extern Quark GKeyFileErrorQuark();
	[LinkName("g_listenv")]
	public static extern char8* GListenv();
	[LinkName("g_locale_from_utf8")]
	public static extern c_uchar GLocaleFromUtf8(char8* utf8string, c_long len, c_ulong* bytes_read, c_ulong* bytes_written);
	[LinkName("g_locale_to_utf8")]
	public static extern char8* GLocaleToUtf8(c_long len, c_ulong* bytes_read, c_ulong* bytes_written);
	[LinkName("g_log_default_handler")]
	public static extern void GLogDefaultHandler(char8* log_domain, LogLevelFlags log_level, char8* message, void* unused_data);
	[LinkName("g_log_get_debug_enabled")]
	public static extern c_int GLogGetDebugEnabled();
	[LinkName("g_log_remove_handler")]
	public static extern void GLogRemoveHandler(char8* log_domain, c_uint handler_id);
	[LinkName("g_log_set_always_fatal")]
	public static extern LogLevelFlags GLogSetAlwaysFatal(LogLevelFlags fatal_mask);
	[LinkName("g_log_set_debug_enabled")]
	public static extern void GLogSetDebugEnabled(c_int enabled);
	[LinkName("g_log_set_fatal_mask")]
	public static extern LogLevelFlags GLogSetFatalMask(char8* log_domain, LogLevelFlags fatal_mask);
	[LinkName("g_log_set_handler_full")]
	public static extern c_uint GLogSetHandlerFull(char8* log_domain, LogLevelFlags log_levels, LogFunc log_func, void* user_data, DestroyNotify destroy);
	[LinkName("g_log_set_writer_func")]
	public static extern void GLogSetWriterFunc(LogWriterFunc func, void* user_data, DestroyNotify user_data_free);
	[LinkName("g_log_structured_array")]
	public static extern void GLogStructuredArray(LogLevelFlags log_level, c_ulong n_fields);
	[LinkName("g_log_variant")]
	public static extern void GLogVariant(char8* log_domain, LogLevelFlags log_level, Variant* fields);
	[LinkName("g_log_writer_default")]
	public static extern LogWriterOutput GLogWriterDefault(LogLevelFlags log_level, c_ulong n_fields, void* user_data);
	[LinkName("g_log_writer_default_set_use_stderr")]
	public static extern void GLogWriterDefaultSetUseStderr(c_int use_stderr);
	[LinkName("g_log_writer_default_would_drop")]
	public static extern c_int GLogWriterDefaultWouldDrop(LogLevelFlags log_level, char8* log_domain);
	[LinkName("g_log_writer_format_fields")]
	public static extern char8* GLogWriterFormatFields(LogLevelFlags log_level, c_ulong n_fields, c_int use_color);
	[LinkName("g_log_writer_is_journald")]
	public static extern c_int GLogWriterIsJournald(c_int output_fd);
	[LinkName("g_log_writer_journald")]
	public static extern LogWriterOutput GLogWriterJournald(LogLevelFlags log_level, c_ulong n_fields, void* user_data);
	[LinkName("g_log_writer_standard_streams")]
	public static extern LogWriterOutput GLogWriterStandardStreams(LogLevelFlags log_level, c_ulong n_fields, void* user_data);
	[LinkName("g_log_writer_supports_color")]
	public static extern c_int GLogWriterSupportsColor(c_int output_fd);
	[LinkName("g_main_context_default")]
	public static extern MainContext* GMainContextDefault();
	[LinkName("g_main_context_get_thread_default")]
	public static extern MainContext* GMainContextGetThreadDefault();
	[LinkName("g_main_context_ref_thread_default")]
	public static extern MainContext* GMainContextRefThreadDefault();
	[LinkName("g_main_current_source")]
	public static extern Source* GMainCurrentSource();
	[LinkName("g_main_depth")]
	public static extern c_int GMainDepth();
	[LinkName("g_malloc")]
	public static extern void* GMalloc(c_ulong n_bytes);
	[LinkName("g_malloc0")]
	public static extern void* GMalloc0(c_ulong n_bytes);
	[LinkName("g_malloc0_n")]
	public static extern void* GMalloc0N(c_ulong n_blocks, c_ulong n_block_bytes);
	[LinkName("g_malloc_n")]
	public static extern void* GMallocN(c_ulong n_blocks, c_ulong n_block_bytes);
	[LinkName("g_markup_error_quark")]
	public static extern Quark GMarkupErrorQuark();
	[LinkName("g_markup_escape_text")]
	public static extern char8* GMarkupEscapeText(char8* text, c_long length);
	[LinkName("g_mem_is_system_malloc")]
	public static extern c_int GMemIsSystemMalloc();
	[LinkName("g_mem_profile")]
	public static extern void GMemProfile();
	[LinkName("g_mem_set_vtable")]
	public static extern void GMemSetVtable(MemVTable* vtable);
	[LinkName("g_memdup")]
	public static extern void* GMemdup(void* mem, c_uint byte_size);
	[LinkName("g_memdup2")]
	public static extern void* GMemdup2(void* mem, c_ulong byte_size);
	[LinkName("g_mkdir_with_parents")]
	public static extern c_int GMkdirWithParents(char8* pathname, c_int mode);
	[LinkName("g_nullify_pointer")]
	public static extern void GNullifyPointer(void* nullify_location);
	[LinkName("g_number_parser_error_quark")]
	public static extern Quark GNumberParserErrorQuark();
	[LinkName("g_on_error_query")]
	public static extern void GOnErrorQuery(char8* prg_name);
	[LinkName("g_on_error_stack_trace")]
	public static extern void GOnErrorStackTrace(char8* prg_name);
	[LinkName("g_once_init_enter")]
	public static extern c_int GOnceInitEnter(void* location);
	[LinkName("g_once_init_leave")]
	public static extern void GOnceInitLeave(void* location, c_ulong result);
	[LinkName("g_option_error_quark")]
	public static extern Quark GOptionErrorQuark();
	[LinkName("g_parse_debug_string")]
	public static extern c_uint GParseDebugString(char8* string, c_uint nkeys);
	[LinkName("g_path_buf_equal")]
	public static extern c_int GPathBufEqual(void* v1, void* v2);
	[LinkName("g_path_get_basename")]
	public static extern char8* GPathGetBasename(char8* file_name);
	[LinkName("g_path_get_dirname")]
	public static extern char8* GPathGetDirname(char8* file_name);
	[LinkName("g_path_is_absolute")]
	public static extern c_int GPathIsAbsolute(char8* file_name);
	[LinkName("g_path_skip_root")]
	public static extern char8* GPathSkipRoot(char8* file_name);
	[LinkName("g_pattern_match_simple")]
	public static extern c_int GPatternMatchSimple(char8* pattern, char8* string);
	[LinkName("g_pointer_bit_lock")]
	public static extern void GPointerBitLock(void* address, c_int lock_bit);
	[LinkName("g_pointer_bit_trylock")]
	public static extern c_int GPointerBitTrylock(void* address, c_int lock_bit);
	[LinkName("g_pointer_bit_unlock")]
	public static extern void GPointerBitUnlock(void* address, c_int lock_bit);
	[LinkName("g_poll")]
	public static extern c_int GPoll(PollFD* fds, c_uint nfds, c_int timeout);
	[LinkName("g_prefix_error_literal")]
	public static extern void GPrefixErrorLiteral(Error* err, char8* prefix);
	[LinkName("g_propagate_error")]
	public static extern void GPropagateError(Error* dest, Error* src);
	[LinkName("g_quark_from_static_string")]
	public static extern Quark GQuarkFromStaticString(char8* string);
	[LinkName("g_quark_from_string")]
	public static extern Quark GQuarkFromString(char8* string);
	[LinkName("g_quark_to_string")]
	public static extern char8* GQuarkToString(Quark quark);
	[LinkName("g_quark_try_string")]
	public static extern Quark GQuarkTryString(char8* string);
	[LinkName("g_random_double")]
	public static extern double GRandomDouble();
	[LinkName("g_random_double_range")]
	public static extern double GRandomDoubleRange(double begin, double end);
	[LinkName("g_random_int")]
	public static extern c_uint GRandomInt();
	[LinkName("g_random_int_range")]
	public static extern c_int GRandomIntRange(c_int begin, c_int end);
	[LinkName("g_random_set_seed")]
	public static extern void GRandomSetSeed(c_uint seed);
	[LinkName("g_rc_box_acquire")]
	public static extern void* GRcBoxAcquire(void* mem_block);
	[LinkName("g_rc_box_alloc")]
	public static extern void* GRcBoxAlloc(c_ulong block_size);
	[LinkName("g_rc_box_alloc0")]
	public static extern void* GRcBoxAlloc0(c_ulong block_size);
	[LinkName("g_rc_box_dup")]
	public static extern void* GRcBoxDup(c_ulong block_size, void* mem_block);
	[LinkName("g_rc_box_get_size")]
	public static extern c_ulong GRcBoxGetSize(void* mem_block);
	[LinkName("g_rc_box_release")]
	public static extern void GRcBoxRelease(void* mem_block);
	[LinkName("g_rc_box_release_full")]
	public static extern void GRcBoxReleaseFull(void* mem_block, DestroyNotify clear_func);
	[LinkName("g_realloc")]
	public static extern void* GRealloc(void* mem, c_ulong n_bytes);
	[LinkName("g_realloc_n")]
	public static extern void* GReallocN(void* mem, c_ulong n_blocks, c_ulong n_block_bytes);
	[LinkName("g_ref_count_compare")]
	public static extern c_int GRefCountCompare(c_int* rc, c_int val);
	[LinkName("g_ref_count_dec")]
	public static extern c_int GRefCountDec(c_int* rc);
	[LinkName("g_ref_count_inc")]
	public static extern void GRefCountInc(c_int* rc);
	[LinkName("g_ref_count_init")]
	public static extern void GRefCountInit(c_int* rc);
	[LinkName("g_ref_string_acquire")]
	public static extern char8* GRefStringAcquire(char8* str);
	[LinkName("g_ref_string_length")]
	public static extern c_ulong GRefStringLength(char8* str);
	[LinkName("g_ref_string_new")]
	public static extern char8* GRefStringNew(char8* str);
	[LinkName("g_ref_string_new_intern")]
	public static extern char8* GRefStringNewIntern(char8* str);
	[LinkName("g_ref_string_new_len")]
	public static extern char8* GRefStringNewLen(char8* str, c_long len);
	[LinkName("g_ref_string_release")]
	public static extern void GRefStringRelease(char8* str);
	[LinkName("g_regex_check_replacement")]
	public static extern c_int GRegexCheckReplacement(char8* replacement, c_int* has_references);
	[LinkName("g_regex_error_quark")]
	public static extern Quark GRegexErrorQuark();
	[LinkName("g_regex_escape_nul")]
	public static extern char8* GRegexEscapeNul(char8* string, c_int length);
	[LinkName("g_regex_escape_string")]
	public static extern char8* GRegexEscapeString(char8* string, c_int length);
	[LinkName("g_regex_match_simple")]
	public static extern c_int GRegexMatchSimple(char8* pattern, char8* string, RegexCompileFlags compile_options, RegexMatchFlags match_options);
	[LinkName("g_regex_split_simple")]
	public static extern char8* GRegexSplitSimple(char8* pattern, char8* string, RegexCompileFlags compile_options, RegexMatchFlags match_options);
	[LinkName("g_reload_user_special_dirs_cache")]
	public static extern void GReloadUserSpecialDirsCache();
	[LinkName("g_rmdir")]
	public static extern c_int GRmdir(char8* filename);
	[LinkName("g_sequence_get")]
	public static extern void* GSequenceGet(SequenceIter* iter);
	[LinkName("g_sequence_insert_before")]
	public static extern SequenceIter* GSequenceInsertBefore(SequenceIter* iter, void* data);
	[LinkName("g_sequence_move")]
	public static extern void GSequenceMove(SequenceIter* src, SequenceIter* dest);
	[LinkName("g_sequence_move_range")]
	public static extern void GSequenceMoveRange(SequenceIter* dest, SequenceIter* begin, SequenceIter* end);
	[LinkName("g_sequence_range_get_midpoint")]
	public static extern SequenceIter* GSequenceRangeGetMidpoint(SequenceIter* begin, SequenceIter* end);
	[LinkName("g_sequence_remove")]
	public static extern void GSequenceRemove(SequenceIter* iter);
	[LinkName("g_sequence_remove_range")]
	public static extern void GSequenceRemoveRange(SequenceIter* begin, SequenceIter* end);
	[LinkName("g_sequence_set")]
	public static extern void GSequenceSet(SequenceIter* iter, void* data);
	[LinkName("g_sequence_swap")]
	public static extern void GSequenceSwap(SequenceIter* a, SequenceIter* b);
	[LinkName("g_set_application_name")]
	public static extern void GSetApplicationName(char8* application_name);
	[LinkName("g_set_error_literal")]
	public static extern void GSetErrorLiteral(Error* err, Quark domain, c_int code, char8* message);
	[LinkName("g_set_prgname")]
	public static extern void GSetPrgname(char8* prgname);
	[LinkName("g_setenv")]
	public static extern c_int GSetenv(char8* variable, char8* value, c_int overwrite);
	[LinkName("g_shell_error_quark")]
	public static extern Quark GShellErrorQuark();
	[LinkName("g_shell_parse_argv")]
	public static extern c_int GShellParseArgv(char8* command_line, c_int* argcp);
	[LinkName("g_shell_quote")]
	public static extern char8* GShellQuote(char8* unquoted_string);
	[LinkName("g_shell_unquote")]
	public static extern char8* GShellUnquote(char8* source, char8* exceptions);
	[LinkName("g_strfreev")]
	public static extern void GStrfreev(char8* str_array);
	[LinkName("g_strip_context")]
	public static extern char8* GStripContext(char8* msgid, char8* msgval);
	[LinkName("g_strjoinv")]
	public static extern char8* GStrjoinv(char8* separator, char8* str_array);
	[LinkName("g_strlcat")]
	public static extern c_ulong GStrlcat(char8* dest, char8* src, c_ulong dest_size);
	[LinkName("g_strlcpy")]
	public static extern c_ulong GStrlcpy(char8* dest, char8* src, c_ulong dest_size);
	[LinkName("g_strncasecmp")]
	public static extern c_int GStrncasecmp(char8* s1, char8* s2, c_uint n);
	[LinkName("g_strndup")]
	public static extern char8* GStrndup(char8* str, c_ulong n);
	[LinkName("g_strnfill")]
	public static extern char8* GStrnfill(c_ulong length, c_char fill_char);
	[LinkName("g_strreverse")]
	public static extern char8* GStrreverse(char8* string);
	[LinkName("g_strrstr")]
	public static extern char8* GStrrstr(char8* haystack, char8* needle);
	[LinkName("g_strrstr_len")]
	public static extern char8* GStrrstrLen(char8* haystack, c_long haystack_len, char8* needle);
	[LinkName("g_strsignal")]
	public static extern char8* GStrsignal(c_int signum);
	[LinkName("g_strstr_len")]
	public static extern char8* GStrstrLen(char8* haystack, c_long haystack_len, char8* needle);
	[LinkName("g_strtod")]
	public static extern double GStrtod(char8* nptr, char8* endptr);
	[LinkName("g_strup")]
	public static extern char8* GStrup(char8* string);
	[LinkName("g_strv_contains")]
	public static extern c_int GStrvContains(char8* strv, char8* str);
	[LinkName("g_strv_equal")]
	public static extern c_int GStrvEqual(char8* strv1, char8* strv2);
	[LinkName("g_strv_get_type")]
	public static extern GLib.Type GStrvGetType();
	[LinkName("g_strv_length")]
	public static extern c_uint GStrvLength(char8* str_array);
	[LinkName("g_test_add_data_func")]
	public static extern void GTestAddDataFunc(char8* testpath, void* test_data, TestDataFunc test_func);
	[LinkName("g_test_add_data_func_full")]
	public static extern void GTestAddDataFuncFull(char8* testpath, void* test_data, TestDataFunc test_func, DestroyNotify data_free_func);
	[LinkName("g_test_add_func")]
	public static extern void GTestAddFunc(char8* testpath, TestFunc test_func);
	[LinkName("g_test_assert_expected_messages_internal")]
	public static extern void GTestAssertExpectedMessagesInternal(char8* domain, char8* file, c_int line, char8* func);
	[LinkName("g_test_bug")]
	public static extern void GTestBug(char8* bug_uri_snippet);
	[LinkName("g_test_bug_base")]
	public static extern void GTestBugBase(char8* uri_pattern);
	[LinkName("g_test_expect_message")]
	public static extern void GTestExpectMessage(char8* log_domain, LogLevelFlags log_level, char8* pattern);
	[LinkName("g_test_fail")]
	public static extern void GTestFail();
	[LinkName("g_test_failed")]
	public static extern c_int GTestFailed();
	[LinkName("g_test_get_dir")]
	public static extern char8* GTestGetDir(TestFileType file_type);
	[LinkName("g_test_get_path")]
	public static extern char8* GTestGetPath();
	[LinkName("g_test_incomplete")]
	public static extern void GTestIncomplete(char8* msg);
	[LinkName("g_test_log_type_name")]
	public static extern char8* GTestLogTypeName(TestLogType log_type);
	[LinkName("g_test_queue_destroy")]
	public static extern void GTestQueueDestroy(DestroyNotify destroy_func, void* destroy_data);
	[LinkName("g_test_queue_free")]
	public static extern void GTestQueueFree(void* gfree_pointer);
	[LinkName("g_test_rand_double")]
	public static extern double GTestRandDouble();
	[LinkName("g_test_rand_double_range")]
	public static extern double GTestRandDoubleRange(double range_start, double range_end);
	[LinkName("g_test_rand_int")]
	public static extern c_int GTestRandInt();
	[LinkName("g_test_rand_int_range")]
	public static extern c_int GTestRandIntRange(c_int begin, c_int end);
	[LinkName("g_test_run")]
	public static extern c_int GTestRun();
	[LinkName("g_test_run_suite")]
	public static extern c_int GTestRunSuite(TestSuite* suite);
	[LinkName("g_test_set_nonfatal_assertions")]
	public static extern void GTestSetNonfatalAssertions();
	[LinkName("g_test_skip")]
	public static extern void GTestSkip(char8* msg);
	[LinkName("g_test_subprocess")]
	public static extern c_int GTestSubprocess();
	[LinkName("g_test_summary")]
	public static extern void GTestSummary(char8* summary);
	[LinkName("g_test_timer_elapsed")]
	public static extern double GTestTimerElapsed();
	[LinkName("g_test_timer_last")]
	public static extern double GTestTimerLast();
	[LinkName("g_test_timer_start")]
	public static extern void GTestTimerStart();
	[LinkName("g_test_trap_assertions")]
	public static extern void GTestTrapAssertions(char8* domain, char8* file, c_int line, char8* func, c_ulonglong assertion_flags, char8* pattern);
	[LinkName("g_test_trap_fork")]
	public static extern c_int GTestTrapFork(c_ulonglong usec_timeout, TestTrapFlags test_trap_flags);
	[LinkName("g_test_trap_has_passed")]
	public static extern c_int GTestTrapHasPassed();
	[LinkName("g_test_trap_reached_timeout")]
	public static extern c_int GTestTrapReachedTimeout();
	[LinkName("g_test_trap_subprocess")]
	public static extern void GTestTrapSubprocess(char8* test_path, c_ulonglong usec_timeout, TestSubprocessFlags test_flags);
	[LinkName("g_thread_error_quark")]
	public static extern Quark GThreadErrorQuark();
	[LinkName("g_thread_exit")]
	public static extern void GThreadExit(void* retval);
	[LinkName("g_thread_pool_get_max_idle_time")]
	public static extern c_uint GThreadPoolGetMaxIdleTime();
	[LinkName("g_thread_pool_get_max_unused_threads")]
	public static extern c_int GThreadPoolGetMaxUnusedThreads();
	[LinkName("g_thread_pool_get_num_unused_threads")]
	public static extern c_uint GThreadPoolGetNumUnusedThreads();
	[LinkName("g_thread_pool_set_max_idle_time")]
	public static extern void GThreadPoolSetMaxIdleTime(c_uint interval);
	[LinkName("g_thread_pool_set_max_unused_threads")]
	public static extern void GThreadPoolSetMaxUnusedThreads(c_int max_threads);
	[LinkName("g_thread_pool_stop_unused_threads")]
	public static extern void GThreadPoolStopUnusedThreads();
	[LinkName("g_thread_self")]
	public static extern Thread* GThreadSelf();
	[LinkName("g_thread_yield")]
	public static extern void GThreadYield();
	[LinkName("g_time_val_from_iso8601")]
	public static extern c_int GTimeValFromIso8601(char8* iso_date, TimeVal* time_);
	[LinkName("g_timeout_add_full")]
	public static extern c_uint GTimeoutAddFull(c_int priority, c_uint interval, SourceFunc function_, void* data, DestroyNotify notify);
	[LinkName("g_timeout_add_seconds_full")]
	public static extern c_uint GTimeoutAddSecondsFull(c_int priority, c_uint interval, SourceFunc function_, void* data, DestroyNotify notify);
	[LinkName("g_timeout_source_new")]
	public static extern Source* GTimeoutSourceNew(c_uint interval);
	[LinkName("g_timeout_source_new_seconds")]
	public static extern Source* GTimeoutSourceNewSeconds(c_uint interval);
	[LinkName("g_trash_stack_height")]
	public static extern c_uint GTrashStackHeight(TrashStack* stack_p);
	[LinkName("g_trash_stack_peek")]
	public static extern void* GTrashStackPeek(TrashStack* stack_p);
	[LinkName("g_trash_stack_pop")]
	public static extern void* GTrashStackPop(TrashStack* stack_p);
	[LinkName("g_trash_stack_push")]
	public static extern void GTrashStackPush(TrashStack* stack_p, void* data_p);
	[LinkName("g_try_malloc")]
	public static extern void* GTryMalloc(c_ulong n_bytes);
	[LinkName("g_try_malloc0")]
	public static extern void* GTryMalloc0(c_ulong n_bytes);
	[LinkName("g_try_malloc0_n")]
	public static extern void* GTryMalloc0N(c_ulong n_blocks, c_ulong n_block_bytes);
	[LinkName("g_try_malloc_n")]
	public static extern void* GTryMallocN(c_ulong n_blocks, c_ulong n_block_bytes);
	[LinkName("g_try_realloc")]
	public static extern void* GTryRealloc(void* mem, c_ulong n_bytes);
	[LinkName("g_try_realloc_n")]
	public static extern void* GTryReallocN(void* mem, c_ulong n_blocks, c_ulong n_block_bytes);
	[LinkName("g_ucs4_to_utf16")]
	public static extern c_ushort* GUcs4ToUtf16(c_long len, c_long* items_read, c_long* items_written);
	[LinkName("g_ucs4_to_utf8")]
	public static extern char8* GUcs4ToUtf8(c_long len, c_long* items_read, c_long* items_written);
	[LinkName("g_unichar_break_type")]
	public static extern UnicodeBreakType GUnicharBreakType(c_uint c);
	[LinkName("g_unichar_combining_class")]
	public static extern c_int GUnicharCombiningClass(c_uint uc);
	[LinkName("g_unichar_compose")]
	public static extern c_int GUnicharCompose(c_uint a, c_uint b, c_uint* ch);
	[LinkName("g_unichar_decompose")]
	public static extern c_int GUnicharDecompose(c_uint ch, c_uint* a, c_uint* b);
	[LinkName("g_unichar_digit_value")]
	public static extern c_int GUnicharDigitValue(c_uint c);
	[LinkName("g_unichar_fully_decompose")]
	public static extern c_ulong GUnicharFullyDecompose(c_uint ch, c_int compat, c_uint* result, c_ulong result_len);
	[LinkName("g_unichar_get_mirror_char")]
	public static extern c_int GUnicharGetMirrorChar(c_uint ch, c_uint* mirrored_ch);
	[LinkName("g_unichar_get_script")]
	public static extern UnicodeScript GUnicharGetScript(c_uint ch);
	[LinkName("g_unichar_isalnum")]
	public static extern c_int GUnicharIsalnum(c_uint c);
	[LinkName("g_unichar_isalpha")]
	public static extern c_int GUnicharIsalpha(c_uint c);
	[LinkName("g_unichar_iscntrl")]
	public static extern c_int GUnicharIscntrl(c_uint c);
	[LinkName("g_unichar_isdefined")]
	public static extern c_int GUnicharIsdefined(c_uint c);
	[LinkName("g_unichar_isdigit")]
	public static extern c_int GUnicharIsdigit(c_uint c);
	[LinkName("g_unichar_isgraph")]
	public static extern c_int GUnicharIsgraph(c_uint c);
	[LinkName("g_unichar_islower")]
	public static extern c_int GUnicharIslower(c_uint c);
	[LinkName("g_unichar_ismark")]
	public static extern c_int GUnicharIsmark(c_uint c);
	[LinkName("g_unichar_isprint")]
	public static extern c_int GUnicharIsprint(c_uint c);
	[LinkName("g_unichar_ispunct")]
	public static extern c_int GUnicharIspunct(c_uint c);
	[LinkName("g_unichar_isspace")]
	public static extern c_int GUnicharIsspace(c_uint c);
	[LinkName("g_unichar_istitle")]
	public static extern c_int GUnicharIstitle(c_uint c);
	[LinkName("g_unichar_isupper")]
	public static extern c_int GUnicharIsupper(c_uint c);
	[LinkName("g_unichar_iswide")]
	public static extern c_int GUnicharIswide(c_uint c);
	[LinkName("g_unichar_iswide_cjk")]
	public static extern c_int GUnicharIswideCjk(c_uint c);
	[LinkName("g_unichar_isxdigit")]
	public static extern c_int GUnicharIsxdigit(c_uint c);
	[LinkName("g_unichar_iszerowidth")]
	public static extern c_int GUnicharIszerowidth(c_uint c);
	[LinkName("g_unichar_to_utf8")]
	public static extern c_int GUnicharToUtf8(c_uint c, char8* outbuf);
	[LinkName("g_unichar_tolower")]
	public static extern c_uint GUnicharTolower(c_uint c);
	[LinkName("g_unichar_totitle")]
	public static extern c_uint GUnicharTotitle(c_uint c);
	[LinkName("g_unichar_toupper")]
	public static extern c_uint GUnicharToupper(c_uint c);
	[LinkName("g_unichar_type")]
	public static extern UnicodeType GUnicharType(c_uint c);
	[LinkName("g_unichar_validate")]
	public static extern c_int GUnicharValidate(c_uint ch);
	[LinkName("g_unichar_xdigit_value")]
	public static extern c_int GUnicharXdigitValue(c_uint c);
	[LinkName("g_unicode_canonical_decomposition")]
	public static extern c_uint* GUnicodeCanonicalDecomposition(c_uint ch, c_ulong* result_len);
	[LinkName("g_unicode_canonical_ordering")]
	public static extern void GUnicodeCanonicalOrdering(c_ulong len);
	[LinkName("g_unicode_script_from_iso15924")]
	public static extern UnicodeScript GUnicodeScriptFromIso15924(c_uint iso15924);
	[LinkName("g_unicode_script_to_iso15924")]
	public static extern c_uint GUnicodeScriptToIso15924(UnicodeScript script);
	[LinkName("g_unix_error_quark")]
	public static extern Quark GUnixErrorQuark();
	[LinkName("g_unix_fd_add_full")]
	public static extern c_uint GUnixFdAddFull(c_int priority, c_int fd, IOCondition condition, UnixFDSourceFunc function_, void* user_data, DestroyNotify notify);
	[LinkName("g_unix_fd_source_new")]
	public static extern Source* GUnixFdSourceNew(c_int fd, IOCondition condition);
	[LinkName("g_unix_get_passwd_entry")]
	public static extern void* GUnixGetPasswdEntry(char8* user_name);
	[LinkName("g_unix_open_pipe")]
	public static extern c_int GUnixOpenPipe(c_int flags);
	[LinkName("g_unix_set_fd_nonblocking")]
	public static extern c_int GUnixSetFdNonblocking(c_int fd, c_int nonblock);
	[LinkName("g_unix_signal_add_full")]
	public static extern c_uint GUnixSignalAddFull(c_int priority, c_int signum, SourceFunc handler, void* user_data, DestroyNotify notify);
	[LinkName("g_unix_signal_source_new")]
	public static extern Source* GUnixSignalSourceNew(c_int signum);
	[LinkName("g_unlink")]
	public static extern c_int GUnlink(char8* filename);
	[LinkName("g_unsetenv")]
	public static extern void GUnsetenv(char8* variable);
	[LinkName("g_uri_build")]
	public static extern Uri* GUriBuild(UriFlags flags, char8* scheme, char8* userinfo, char8* host, c_int port, char8* path, char8* query, char8* fragment);
	[LinkName("g_uri_build_with_user")]
	public static extern Uri* GUriBuildWithUser(UriFlags flags, char8* scheme, char8* user, char8* password, char8* auth_params, char8* host, c_int port, char8* path, char8* query, char8* fragment);
	[LinkName("g_uri_error_quark")]
	public static extern Quark GUriErrorQuark();
	[LinkName("g_uri_escape_bytes")]
	public static extern char8* GUriEscapeBytes(c_ulong length, char8* reserved_chars_allowed);
	[LinkName("g_uri_escape_string")]
	public static extern char8* GUriEscapeString(char8* unescaped, char8* reserved_chars_allowed, c_int allow_utf8);
	[LinkName("g_uri_is_valid")]
	public static extern c_int GUriIsValid(char8* uri_string, UriFlags flags);
	[LinkName("g_uri_join")]
	public static extern char8* GUriJoin(UriFlags flags, char8* scheme, char8* userinfo, char8* host, c_int port, char8* path, char8* query, char8* fragment);
	[LinkName("g_uri_join_with_user")]
	public static extern char8* GUriJoinWithUser(UriFlags flags, char8* scheme, char8* user, char8* password, char8* auth_params, char8* host, c_int port, char8* path, char8* query, char8* fragment);
	[LinkName("g_uri_list_extract_uris")]
	public static extern char8* GUriListExtractUris(char8* uri_list);
	[LinkName("g_uri_parse")]
	public static extern Uri* GUriParse(char8* uri_string, UriFlags flags);
	[LinkName("g_uri_parse_params")]
	public static extern GLib.HashTable* GUriParseParams(char8* params_, c_long length, char8* separators, UriParamsFlags flags);
	[LinkName("g_uri_parse_scheme")]
	public static extern char8* GUriParseScheme(char8* uri);
	[LinkName("g_uri_peek_scheme")]
	public static extern char8* GUriPeekScheme(char8* uri);
	[LinkName("g_uri_resolve_relative")]
	public static extern char8* GUriResolveRelative(char8* base_uri_string, char8* uri_ref, UriFlags flags);
	[LinkName("g_uri_split")]
	public static extern c_int GUriSplit(char8* uri_ref, UriFlags flags, char8* scheme, char8* userinfo, char8* host, c_int* port, char8* path, char8* query, char8* fragment);
	[LinkName("g_uri_split_network")]
	public static extern c_int GUriSplitNetwork(char8* uri_string, UriFlags flags, char8* scheme, char8* host, c_int* port);
	[LinkName("g_uri_split_with_user")]
	public static extern c_int GUriSplitWithUser(char8* uri_ref, UriFlags flags, char8* scheme, char8* user, char8* password, char8* auth_params, char8* host, c_int* port, char8* path, char8* query, char8* fragment);
	[LinkName("g_uri_unescape_bytes")]
	public static extern Bytes* GUriUnescapeBytes(char8* escaped_string, c_long length, char8* illegal_characters);
	[LinkName("g_uri_unescape_segment")]
	public static extern char8* GUriUnescapeSegment(char8* escaped_string, char8* escaped_string_end, char8* illegal_characters);
	[LinkName("g_uri_unescape_string")]
	public static extern char8* GUriUnescapeString(char8* escaped_string, char8* illegal_characters);
	[LinkName("g_usleep")]
	public static extern void GUsleep(c_ulong microseconds);
	[LinkName("g_utf16_to_ucs4")]
	public static extern c_uint* GUtf16ToUcs4(c_long len, c_long* items_read, c_long* items_written);
	[LinkName("g_utf16_to_utf8")]
	public static extern char8* GUtf16ToUtf8(c_long len, c_long* items_read, c_long* items_written);
	[LinkName("g_utf8_casefold")]
	public static extern char8* GUtf8Casefold(char8* str, c_long len);
	[LinkName("g_utf8_collate")]
	public static extern c_int GUtf8Collate(char8* str1, char8* str2);
	[LinkName("g_utf8_collate_key")]
	public static extern char8* GUtf8CollateKey(char8* str, c_long len);
	[LinkName("g_utf8_collate_key_for_filename")]
	public static extern char8* GUtf8CollateKeyForFilename(char8* str, c_long len);
	[LinkName("g_utf8_find_next_char")]
	public static extern char8* GUtf8FindNextChar(char8* p, char8* end);
	[LinkName("g_utf8_find_prev_char")]
	public static extern char8* GUtf8FindPrevChar(char8* str, char8* p);
	[LinkName("g_utf8_get_char")]
	public static extern c_uint GUtf8GetChar(char8* p);
	[LinkName("g_utf8_get_char_validated")]
	public static extern c_uint GUtf8GetCharValidated(char8* p, c_long max_len);
	[LinkName("g_utf8_make_valid")]
	public static extern char8* GUtf8MakeValid(char8* str, c_long len);
	[LinkName("g_utf8_normalize")]
	public static extern char8* GUtf8Normalize(char8* str, c_long len, NormalizeMode mode);
	[LinkName("g_utf8_offset_to_pointer")]
	public static extern char8* GUtf8OffsetToPointer(char8* str, c_long offset);
	[LinkName("g_utf8_pointer_to_offset")]
	public static extern c_long GUtf8PointerToOffset(char8* str, char8* pos);
	[LinkName("g_utf8_prev_char")]
	public static extern char8* GUtf8PrevChar(char8* p);
	[LinkName("g_utf8_strchr")]
	public static extern char8* GUtf8Strchr(char8* p, c_long len, c_uint c);
	[LinkName("g_utf8_strdown")]
	public static extern char8* GUtf8Strdown(char8* str, c_long len);
	[LinkName("g_utf8_strlen")]
	public static extern c_long GUtf8Strlen(char8* p, c_long max);
	[LinkName("g_utf8_strncpy")]
	public static extern char8* GUtf8Strncpy(char8* dest, char8* src, c_ulong n);
	[LinkName("g_utf8_strrchr")]
	public static extern char8* GUtf8Strrchr(char8* p, c_long len, c_uint c);
	[LinkName("g_utf8_strreverse")]
	public static extern char8* GUtf8Strreverse(char8* str, c_long len);
	[LinkName("g_utf8_strup")]
	public static extern char8* GUtf8Strup(char8* str, c_long len);
	[LinkName("g_utf8_substring")]
	public static extern char8* GUtf8Substring(char8* str, c_long start_pos, c_long end_pos);
	[LinkName("g_utf8_to_ucs4")]
	public static extern c_uint* GUtf8ToUcs4(char8* str, c_long len, c_long* items_read, c_long* items_written);
	[LinkName("g_utf8_to_ucs4_fast")]
	public static extern c_uint* GUtf8ToUcs4Fast(char8* str, c_long len, c_long* items_written);
	[LinkName("g_utf8_to_utf16")]
	public static extern c_ushort* GUtf8ToUtf16(char8* str, c_long len, c_long* items_read, c_long* items_written);
	[LinkName("g_utf8_validate")]
	public static extern c_int GUtf8Validate(c_long max_len, char8* end);
	[LinkName("g_utf8_validate_len")]
	public static extern c_int GUtf8ValidateLen(c_ulong max_len, char8* end);
	[LinkName("g_uuid_string_is_valid")]
	public static extern c_int GUuidStringIsValid(char8* str);
	[LinkName("g_uuid_string_random")]
	public static extern char8* GUuidStringRandom();
	[LinkName("g_variant_get_gtype")]
	public static extern GLib.Type GVariantGetGtype();
	[LinkName("g_variant_is_object_path")]
	public static extern c_int GVariantIsObjectPath(char8* string);
	[LinkName("g_variant_is_signature")]
	public static extern c_int GVariantIsSignature(char8* string);
	[LinkName("g_variant_parse")]
	public static extern Variant* GVariantParse(VariantType* type, char8* text, char8* limit, char8* endptr);
	[LinkName("g_variant_parse_error_print_context")]
	public static extern char8* GVariantParseErrorPrintContext(Error* error, char8* source_str);
	[LinkName("g_variant_parse_error_quark")]
	public static extern Quark GVariantParseErrorQuark();
	[LinkName("g_variant_parser_get_error_quark")]
	public static extern Quark GVariantParserGetErrorQuark();
	[LinkName("g_variant_type_checked_")]
	public static extern VariantType* GVariantTypeChecked(char8* arg0);
	[LinkName("g_variant_type_string_get_depth_")]
	public static extern c_ulong GVariantTypeStringGetDepth(char8* type_string);
	[LinkName("g_variant_type_string_is_valid")]
	public static extern c_int GVariantTypeStringIsValid(char8* type_string);
	[LinkName("g_variant_type_string_scan")]
	public static extern c_int GVariantTypeStringScan(char8* string, char8* limit, char8* endptr);
}