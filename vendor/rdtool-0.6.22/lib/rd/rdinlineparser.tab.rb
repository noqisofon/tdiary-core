#
# DO NOT MODIFY!!!!
# This file is automatically generated by racc 1.4.4
# from racc grammer file "lib/rd/rdinlineparser.ry".
#

require 'racc/parser'



require "rd/parser-util"
require "forwardable"
require "strscan"

module RD

class RDInlineParser < Racc::Parser

module_eval <<'..end lib/rd/rdinlineparser.ry modeval..id193b0f608d', 'lib/rd/rdinlineparser.ry', 292
include ParserUtility
extend Forwardable

EM_OPEN = '((*'
EM_OPEN_RE = /\A#{Regexp.quote(EM_OPEN)}/
EM_CLOSE = '*))'
EM_CLOSE_RE = /\A#{Regexp.quote(EM_CLOSE)}/
CODE_OPEN = '(({'
CODE_OPEN_RE = /\A#{Regexp.quote(CODE_OPEN)}/
CODE_CLOSE = '}))'
CODE_CLOSE_RE = /\A#{Regexp.quote(CODE_CLOSE)}/
VAR_OPEN = '((|'
VAR_OPEN_RE = /\A#{Regexp.quote(VAR_OPEN)}/
VAR_CLOSE = '|))'
VAR_CLOSE_RE = /\A#{Regexp.quote(VAR_CLOSE)}/
KBD_OPEN = '((%'
KBD_OPEN_RE = /\A#{Regexp.quote(KBD_OPEN)}/
KBD_CLOSE = '%))'
KBD_CLOSE_RE = /\A#{Regexp.quote(KBD_CLOSE)}/
INDEX_OPEN = '((:'
INDEX_OPEN_RE = /\A#{Regexp.quote(INDEX_OPEN)}/
INDEX_CLOSE = ':))'
INDEX_CLOSE_RE = /\A#{Regexp.quote(INDEX_CLOSE)}/
REF_OPEN = '((<'
REF_OPEN_RE = /\A#{Regexp.quote(REF_OPEN)}/
REF_CLOSE = '>))'
REF_CLOSE_RE = /\A#{Regexp.quote(REF_CLOSE)}/
FOOTNOTE_OPEN = '((-'
FOOTNOTE_OPEN_RE = /\A#{Regexp.quote(FOOTNOTE_OPEN)}/
FOOTNOTE_CLOSE = '-))'
FOOTNOTE_CLOSE_RE = /\A#{Regexp.quote(FOOTNOTE_CLOSE)}/
VERB_OPEN = "(('"
VERB_OPEN_RE = /\A#{Regexp.quote(VERB_OPEN)}/
VERB_CLOSE = "'))"
VERB_CLOSE_RE = /\A#{Regexp.quote(VERB_CLOSE)}/

BAR = "|"
BAR_RE = /\A#{Regexp.quote(BAR)}/
QUOTE = '"'
QUOTE_RE = /\A#{Regexp.quote(QUOTE)}/
SLASH = "/"
SLASH_RE = /\A#{Regexp.quote(SLASH)}/
BACK_SLASH = "\\"
BACK_SLASH_RE = /\A#{Regexp.quote(BACK_SLASH)}/
URL = "URL:"
URL_RE = /\A#{Regexp.quote(URL)}/

# Workaround for Regexp option change of Ruby 1.5.x
other_re_mode = Regexp::EXTENDED
if RUBY_VERSION > "1.5"
  other_re_mode |= Regexp::MULTILINE
else
  other_re_mode |= Regexp::POSIXLINE
end

OTHER_RE = Regexp.new(
		  "\\A.+?(?=#{Regexp.quote(EM_OPEN)}|#{Regexp.quote(EM_CLOSE)}|
                  #{Regexp.quote(CODE_OPEN)}|#{Regexp.quote(CODE_CLOSE)}|
                  #{Regexp.quote(VAR_OPEN)}|#{Regexp.quote(VAR_CLOSE)}|
                  #{Regexp.quote(KBD_OPEN)}|#{Regexp.quote(KBD_CLOSE)}|
                  #{Regexp.quote(INDEX_OPEN)}|#{Regexp.quote(INDEX_CLOSE)}|
                  #{Regexp.quote(REF_OPEN)}|#{Regexp.quote(REF_CLOSE)}|
                #{Regexp.quote(FOOTNOTE_OPEN)}|#{Regexp.quote(FOOTNOTE_CLOSE)}|
                  #{Regexp.quote(VERB_OPEN)}|#{Regexp.quote(VERB_CLOSE)}|
                  #{Regexp.quote(BAR)}|
                  #{Regexp.quote(QUOTE)}|
                  #{Regexp.quote(SLASH)}|
                  #{Regexp.quote(BACK_SLASH)}|
                  #{Regexp.quote(URL)})", other_re_mode)

def initialize(bp)
  @blockp = bp
end

def_delegator(:@blockp, :tree)

def parse(src)
  @src = StringScanner.new(src)
  @pre = ""
  @yydebug = true
  do_parse
end

def next_token
  return [false, false] if @src.eos?
#  p @src.rest if @yydebug
  if ret = @src.scan(EM_OPEN_RE)
    @pre << ret
    [:EM_OPEN, ret]
  elsif ret = @src.scan(EM_CLOSE_RE)
    @pre << ret
    [:EM_CLOSE, ret]
  elsif ret = @src.scan(CODE_OPEN_RE)
    @pre << ret
    [:CODE_OPEN, ret]
  elsif ret = @src.scan(CODE_CLOSE_RE)
    @pre << ret
    [:CODE_CLOSE, ret]
  elsif ret = @src.scan(VAR_OPEN_RE)
    @pre << ret
    [:VAR_OPEN, ret]
  elsif ret = @src.scan(VAR_CLOSE_RE)
    @pre << ret
    [:VAR_CLOSE, ret]
  elsif ret = @src.scan(KBD_OPEN_RE)
    @pre << ret
    [:KBD_OPEN, ret]
  elsif ret = @src.scan(KBD_CLOSE_RE)
    @pre << ret
    [:KBD_CLOSE, ret]
  elsif ret = @src.scan(INDEX_OPEN_RE)
    @pre << ret
    [:INDEX_OPEN, ret]
  elsif ret = @src.scan(INDEX_CLOSE_RE)
    @pre << ret
    [:INDEX_CLOSE, ret]
  elsif ret = @src.scan(REF_OPEN_RE)
    @pre << ret
    [:REF_OPEN, ret]
  elsif ret = @src.scan(REF_CLOSE_RE)
    @pre << ret
    [:REF_CLOSE, ret]
  elsif ret = @src.scan(FOOTNOTE_OPEN_RE)
    @pre << ret
    [:FOOTNOTE_OPEN, ret]
  elsif ret = @src.scan(FOOTNOTE_CLOSE_RE)
    @pre << ret
    [:FOOTNOTE_CLOSE, ret]
  elsif ret = @src.scan(VERB_OPEN_RE)
    @pre << ret
    [:VERB_OPEN, ret]
  elsif ret = @src.scan(VERB_CLOSE_RE)
    @pre << ret
    [:VERB_CLOSE, ret]
  elsif ret = @src.scan(BAR_RE)
    @pre << ret
    [:BAR, ret]
  elsif ret = @src.scan(QUOTE_RE)
    @pre << ret
    [:QUOTE, ret]
  elsif ret = @src.scan(SLASH_RE)
    @pre << ret
    [:SLASH, ret]
  elsif ret = @src.scan(BACK_SLASH_RE)
    @pre << ret
    [:BACK_SLASH, ret]
  elsif ret = @src.scan(URL_RE)
    @pre << ret
    [:URL, ret]
  elsif ret = @src.scan(OTHER_RE)
    @pre << ret
    [:OTHER, ret]
  else
    ret = @src.rest
    @pre << ret
    @src.terminate
    [:OTHER, ret]
  end
end

def make_reference_from_label(label)
#  Reference.new_from_label_under_document_struct(label, tree.document_struct)
  Reference.new_from_label_without_document_struct(label)
end

def on_error(et, ev, values)
  lines_of_rest = @src.rest.to_a.length
  prev_words = prev_words_on_error(ev)
  at = 4 + prev_words.length
  message = <<-MSG
RD syntax error: line #{@blockp.line_index - lines_of_rest}:
...#{prev_words} #{(ev||'')} #{next_words_on_error()} ...
  MSG
  message << " " * at + "^" * (ev ? ev.length : 0) + "\n"
  raise ParseError, message
end

def prev_words_on_error(ev)
  pre = @pre
  if ev and /#{Regexp.quote(ev)}$/ =~ pre
    pre = $`
  end
  last_line(pre)
end

def last_line(src)
  if n = src.rindex("\n")
    src[(n+1) .. -1]
  else
    src
  end
end
private :last_line

def next_words_on_error
  if n = @src.rest.index("\n")
    @src.rest[0 .. (n-1)]
  else
    @src.rest
  end
end

..end lib/rd/rdinlineparser.ry modeval..id193b0f608d

##### racc 1.4.4 generates ###

racc_reduce_table = [
 0, 0, :racc_error,
 1, 27, :_reduce_none,
 2, 28, :_reduce_2,
 1, 28, :_reduce_3,
 1, 29, :_reduce_none,
 1, 29, :_reduce_none,
 1, 29, :_reduce_none,
 1, 29, :_reduce_none,
 1, 29, :_reduce_none,
 1, 29, :_reduce_none,
 1, 29, :_reduce_none,
 1, 29, :_reduce_none,
 1, 29, :_reduce_none,
 3, 30, :_reduce_13,
 3, 31, :_reduce_14,
 3, 32, :_reduce_15,
 3, 33, :_reduce_16,
 3, 34, :_reduce_17,
 4, 35, :_reduce_18,
 3, 35, :_reduce_19,
 2, 40, :_reduce_20,
 2, 40, :_reduce_21,
 1, 40, :_reduce_22,
 1, 40, :_reduce_23,
 2, 41, :_reduce_24,
 2, 41, :_reduce_25,
 1, 41, :_reduce_26,
 1, 41, :_reduce_27,
 2, 39, :_reduce_none,
 4, 39, :_reduce_29,
 4, 39, :_reduce_30,
 2, 43, :_reduce_none,
 4, 43, :_reduce_32,
 1, 44, :_reduce_33,
 3, 44, :_reduce_34,
 1, 45, :_reduce_none,
 3, 45, :_reduce_36,
 3, 45, :_reduce_37,
 2, 46, :_reduce_38,
 2, 46, :_reduce_39,
 1, 46, :_reduce_40,
 1, 46, :_reduce_41,
 1, 47, :_reduce_none,
 2, 51, :_reduce_43,
 1, 51, :_reduce_44,
 2, 53, :_reduce_45,
 1, 53, :_reduce_46,
 1, 50, :_reduce_none,
 1, 50, :_reduce_none,
 1, 50, :_reduce_none,
 1, 50, :_reduce_none,
 1, 50, :_reduce_none,
 1, 50, :_reduce_none,
 1, 54, :_reduce_none,
 1, 54, :_reduce_none,
 1, 55, :_reduce_none,
 1, 55, :_reduce_none,
 1, 56, :_reduce_57,
 1, 52, :_reduce_58,
 1, 57, :_reduce_59,
 2, 58, :_reduce_60,
 1, 58, :_reduce_none,
 2, 49, :_reduce_62,
 1, 49, :_reduce_none,
 2, 48, :_reduce_64,
 1, 48, :_reduce_none,
 1, 60, :_reduce_none,
 1, 60, :_reduce_none,
 1, 60, :_reduce_none,
 1, 60, :_reduce_none,
 1, 60, :_reduce_none,
 1, 62, :_reduce_none,
 1, 62, :_reduce_none,
 1, 59, :_reduce_none,
 1, 59, :_reduce_none,
 1, 61, :_reduce_none,
 1, 61, :_reduce_none,
 1, 61, :_reduce_none,
 2, 42, :_reduce_78,
 1, 42, :_reduce_none,
 1, 63, :_reduce_none,
 2, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 1, 63, :_reduce_none,
 3, 36, :_reduce_101,
 3, 37, :_reduce_102,
 1, 65, :_reduce_none,
 1, 65, :_reduce_none,
 1, 65, :_reduce_none,
 1, 65, :_reduce_none,
 1, 65, :_reduce_none,
 1, 65, :_reduce_none,
 2, 66, :_reduce_109,
 1, 66, :_reduce_none,
 1, 38, :_reduce_111,
 1, 67, :_reduce_none,
 2, 67, :_reduce_113,
 2, 67, :_reduce_114,
 2, 67, :_reduce_115,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 1, 68, :_reduce_none,
 2, 64, :_reduce_136,
 1, 64, :_reduce_none ]

racc_reduce_n = 138

racc_shift_n = 179

racc_action_table = [
   129,   131,   133,   135,   137,   139,   141,   144,   123,    91,
   126,   128,   130,   132,   134,   136,   138,   142,   145,   124,
    94,   125,   127,   129,   131,   133,   135,   137,   139,   141,
   144,   123,   163,   126,   128,   130,   132,   134,   136,   138,
   142,   145,   124,    93,   125,   127,   129,   131,   133,   135,
   137,   139,   141,   144,   123,   167,   126,   128,   130,   132,
   134,   136,   138,   142,   145,   124,    92,   125,   127,   129,
   131,   133,   135,   137,   139,   141,   144,   123,   111,   126,
   128,   130,   132,   134,   136,   138,   142,   145,   124,    90,
   125,   127,    38,    40,    42,    44,    45,    48,    49,    52,
    30,   171,    35,    37,    39,    41,    43,    46,    47,    50,
    53,    31,    33,    34,    88,    38,    40,    42,    86,    45,
    48,    49,    52,    30,   154,    35,    37,    39,    41,    43,
    46,    47,    50,    53,    31,    33,    34,    85,     7,     9,
    12,    15,    18,    20,    23,    26,   172,   173,     5,   111,
    10,    89,    16,    56,    21,   152,    27,   176,   153,     4,
     7,     9,    12,    15,    18,    20,    23,    26,   173,   147,
     5,   nil,    10,   nil,    16,   nil,    21,   nil,    27,   nil,
   nil,     4,     7,     9,    12,    15,    18,    20,    23,    26,
   nil,   nil,     5,   nil,    10,   nil,    16,   nil,    21,   nil,
    27,    65,   nil,     4,    69,    72,    73,    77,    79,    60,
   nil,     5,   nil,    10,   nil,    16,   nil,    21,   nil,    27,
   nil,   nil,     4,     7,     9,    12,    15,    18,    20,    23,
    26,   nil,   nil,     5,   nil,    10,   nil,    16,   nil,    21,
   nil,    27,   nil,   nil,     4,     7,     9,    12,    15,    18,
    20,    23,    26,   nil,   nil,     5,   nil,    10,   nil,    16,
   nil,    21,   nil,    27,   nil,   nil,     4,     7,     9,    12,
    15,    18,    20,    23,    26,   nil,   nil,     5,   nil,    10,
   nil,    16,   nil,    21,   nil,    27,   nil,   nil,     4,     7,
     9,    12,    15,    18,    20,    23,    26,   nil,   nil,     5,
   nil,    10,   nil,    16,   nil,    21,   nil,    27,   107,   nil,
     4,    69,   105,    73,    77,    79,    60,   nil,     5,   nil,
    10,   nil,    16,   nil,    21,   nil,    27,   nil,   nil,     4,
     7,     9,    12,    15,    18,    20,    23,    26,   nil,   nil,
     5,   nil,    10,   nil,    16,   nil,    21,   nil,    27,   107,
   nil,     4,    69,   105,    73,    77,    79,    60,   nil,     5,
   nil,    10,   nil,    16,   nil,    21,   nil,    27,   nil,   nil,
     4,    38,    40,    42,    44,    45,    48,    49,    52,    30,
   nil,    35,    37,    39,    41,    43,    46,    47,    50,    53,
    31,    33,    34,   107,   nil,   nil,    69,   105,    73,    77,
    79,    60,   nil,     5,   nil,    10,   nil,    16,   nil,    21,
   150,    27,   nil,    69,     4,    73,    77,    79,    60,   nil,
     5,   nil,    10,   nil,    16,   nil,    21,   nil,    27,   107,
   nil,     4,    69,   105,    73,    77,    79,    60,   nil,     5,
   nil,    10,   nil,    16,   nil,    21,   nil,    27,   nil,   nil,
     4,    98,   100,    69,   105,    73,    77,    79,    60,   nil,
     5,   nil,    10,   nil,    16,   nil,    21,   nil,    27,   nil,
   nil,     4,    98,   100,    69,   105,    73,    77,    79,    60,
   nil,     5,   nil,    10,   nil,    16,   nil,    21,   nil,    27,
   nil,   nil,     4,    98,   100,    69,   105,    73,    77,    79,
    60,   nil,     5,   nil,    10,   nil,    16,   nil,    21,   nil,
    27,   118,   nil,     4,    69,   120,    73,    77,    79,    60,
   107,   nil,   nil,    69,   105,    73,    77,    79,    60,   165,
   nil,   nil,    69,   nil,    73,    77,    79,    60,   155,    98,
   100,    69,   105,    73,    77,    79,    60,   177,    98,   100,
    69,   105,    73,    77,    79,    60,   107,   nil,   nil,    69,
   105,    73,    77,    79,    60,   174,    98,   100,    69,   105,
    73,    77,    79,    60,   178,    98,   100,    69,   105,    73,
    77,    79,    60,    98,   100,    69,   105,    73,    77,    79,
    60,    98,   100,    69,   105,    73,    77,    79,    60,    98,
   100,    69,   105,    73,    77,    79,    60,     7,     9,    12,
    15,    18,    20 ]

racc_action_check = [
   162,   162,   162,   162,   162,   162,   162,   162,   162,    56,
   162,   162,   162,   162,   162,   162,   162,   162,   162,   162,
    64,   162,   162,   120,   120,   120,   120,   120,   120,   120,
   120,   120,   121,   120,   120,   120,   120,   120,   120,   120,
   120,   120,   120,    59,   120,   120,   143,   143,   143,   143,
   143,   143,   143,   143,   143,   135,   143,   143,   143,   143,
   143,   143,   143,   143,   143,   143,    57,   143,   143,    72,
    72,    72,    72,    72,    72,    72,    72,    72,   119,    72,
    72,    72,    72,    72,    72,    72,    72,    72,    72,    55,
    72,    72,    51,    51,    51,    51,    51,    51,    51,    51,
    51,   154,    51,    51,    51,    51,    51,    51,    51,    51,
    51,    51,    51,    51,    51,    44,    44,    44,    44,    44,
    44,    44,    44,    44,    97,    44,    44,    44,    44,    44,
    44,    44,    44,    44,    44,    44,    44,    44,    26,    26,
    26,    26,    26,    26,    26,    26,   155,   155,    26,    68,
    26,    54,    26,    14,    26,    82,    26,   169,    83,    26,
    17,    17,    17,    17,    17,    17,    17,    17,   174,    76,
    17,   nil,    17,   nil,    17,   nil,    17,   nil,    17,   nil,
   nil,    17,    21,    21,    21,    21,    21,    21,    21,    21,
   nil,   nil,    21,   nil,    21,   nil,    21,   nil,    21,   nil,
    21,    23,   nil,    21,    23,    23,    23,    23,    23,    23,
   nil,    23,   nil,    23,   nil,    23,   nil,    23,   nil,    23,
   nil,   nil,    23,    16,    16,    16,    16,    16,    16,    16,
    16,   nil,   nil,    16,   nil,    16,   nil,    16,   nil,    16,
   nil,    16,   nil,   nil,    16,    27,    27,    27,    27,    27,
    27,    27,    27,   nil,   nil,    27,   nil,    27,   nil,    27,
   nil,    27,   nil,    27,   nil,   nil,    27,     0,     0,     0,
     0,     0,     0,     0,     0,   nil,   nil,     0,   nil,     0,
   nil,     0,   nil,     0,   nil,     0,   nil,   nil,     0,    10,
    10,    10,    10,    10,    10,    10,    10,   nil,   nil,    10,
   nil,    10,   nil,    10,   nil,    10,   nil,    10,    75,   nil,
    10,    75,    75,    75,    75,    75,    75,   nil,    75,   nil,
    75,   nil,    75,   nil,    75,   nil,    75,   nil,   nil,    75,
     5,     5,     5,     5,     5,     5,     5,     5,   nil,   nil,
     5,   nil,     5,   nil,     5,   nil,     5,   nil,     5,   146,
   nil,     5,   146,   146,   146,   146,   146,   146,   nil,   146,
   nil,   146,   nil,   146,   nil,   146,   nil,   146,   nil,   nil,
   146,     4,     4,     4,     4,     4,     4,     4,     4,     4,
   nil,     4,     4,     4,     4,     4,     4,     4,     4,     4,
     4,     4,     4,    70,   nil,   nil,    70,    70,    70,    70,
    70,    70,   nil,    70,   nil,    70,   nil,    70,   nil,    70,
    81,    70,   nil,    81,    70,    81,    81,    81,    81,   nil,
    81,   nil,    81,   nil,    81,   nil,    81,   nil,    81,   115,
   nil,    81,   115,   115,   115,   115,   115,   115,   nil,   115,
   nil,   115,   nil,   115,   nil,   115,   nil,   115,   nil,   nil,
   115,   150,   150,   150,   150,   150,   150,   150,   150,   nil,
   150,   nil,   150,   nil,   150,   nil,   150,   nil,   150,   nil,
   nil,   150,    65,    65,    65,    65,    65,    65,    65,    65,
   nil,    65,   nil,    65,   nil,    65,   nil,    65,   nil,    65,
   nil,   nil,    65,   106,   106,   106,   106,   106,   106,   106,
   106,   nil,   106,   nil,   106,   nil,   106,   nil,   106,   nil,
   106,    71,   nil,   106,    71,    71,    71,    71,    71,    71,
    67,   nil,   nil,    67,    67,    67,    67,    67,    67,   122,
   nil,   nil,   122,   nil,   122,   122,   122,   122,    99,    99,
    99,    99,    99,    99,    99,    99,    99,   170,   170,   170,
   170,   170,   170,   170,   170,   170,   113,   nil,   nil,   113,
   113,   113,   113,   113,   113,   161,   161,   161,   161,   161,
   161,   161,   161,   161,   175,   175,   175,   175,   175,   175,
   175,   175,   175,   118,   118,   118,   118,   118,   118,   118,
   118,   158,   158,   158,   158,   158,   158,   158,   158,   165,
   165,   165,   165,   165,   165,   165,   165,     1,     1,     1,
     1,     1,     1 ]

racc_action_pointer = [
   264,   604,   nil,   nil,   368,   327,   nil,   nil,   nil,   nil,
   286,   nil,   nil,   nil,   153,   nil,   220,   157,   nil,   nil,
   nil,   179,   nil,   198,   nil,   nil,   135,   242,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   112,   nil,   nil,   nil,   nil,   nil,
   nil,    89,   nil,   nil,   137,    73,     9,    48,   nil,    23,
   nil,   nil,   nil,   nil,    16,   468,   nil,   517,   144,   nil,
   390,   508,    66,   nil,   nil,   305,   146,   nil,   nil,   nil,
   nil,   407,   144,   136,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   121,   nil,   535,
   nil,   nil,   nil,   nil,   nil,   nil,   489,   nil,   nil,   nil,
   nil,   nil,   nil,   553,   nil,   426,   nil,   nil,   579,    73,
    20,     9,   526,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    49,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    43,   nil,   nil,   346,   nil,   nil,   nil,
   447,   nil,   nil,   nil,    97,   142,   nil,   nil,   587,   nil,
   nil,   562,    -3,   nil,   nil,   595,   nil,   nil,   nil,   154,
   544,   nil,   nil,   nil,   163,   571,   nil,   nil,   nil ]

racc_action_default = [
  -138,  -111,    -7,    -8,  -138,  -138,    -9,  -104,   -10,  -105,
  -138,   -11,  -106,   -12,  -138,  -107,  -138,    -1,  -108,    -3,
  -103,  -138,    -4,  -138,    -5,  -110,  -138,  -138,    -6,  -109,
  -133,  -129,  -137,  -131,  -134,  -120,  -112,  -121,  -117,  -122,
  -118,  -123,  -119,  -124,  -138,  -135,  -125,  -126,  -116,  -130,
  -127,  -138,  -132,  -128,  -138,  -138,  -138,  -138,    -2,  -138,
   -70,   -50,   -51,   -26,   -35,  -138,   -52,   -63,   -58,   -67,
   -41,  -138,  -138,   -66,   -47,   -40,  -138,   -68,   -48,   -69,
   -49,   -27,  -138,  -138,  -113,  -114,  -115,  -136,  -102,   -13,
   -14,   179,   -15,   -16,   -28,   -46,   -56,  -138,   -76,   -59,
   -77,   -71,   -65,   -55,   -75,   -72,   -42,   -74,   -62,   -61,
   -73,   -31,   -54,   -57,   -53,   -38,   -44,   -22,  -138,   -33,
  -138,  -138,   -23,   -98,   -95,   -99,   -86,  -100,   -87,   -85,
   -88,   -84,   -89,   -83,   -90,  -138,   -91,   -82,   -92,   -80,
   -79,   -96,   -93,   -24,   -97,   -94,   -39,   -19,   -25,   -35,
  -138,   -58,  -101,   -17,   -36,   -37,   -64,   -45,   -59,   -60,
   -43,  -138,   -20,   -18,   -21,  -138,   -33,   -81,   -78,  -138,
   -59,   -29,   -30,   -32,   -34,  -138,   -36,   -37,   -34 ]

racc_goto_table = [
    70,    68,    99,    97,    67,   110,   156,    32,   110,    64,
   117,    63,    81,   110,   160,   143,   168,   115,   159,   121,
   108,   157,   146,   159,    71,    76,    51,    29,    58,    84,
   nil,   nil,   nil,   nil,   nil,   168,   nil,   nil,   nil,   nil,
   nil,   nil,   103,   158,   nil,   160,   110,   nil,   nil,   119,
   nil,   110,    67,   110,    87,   161,   nil,   nil,    70,   151,
   122,   164,    67,   162,   nil,   156,   nil,   149,   156,   148,
    14,   nil,   nil,   nil,   nil,    54,   nil,   156,   nil,   nil,
    55,   nil,   156,   103,   110,   nil,    57,   170,   169,    28,
   nil,    59,   nil,   nil,    28,   nil,    82,    83,   nil,    28,
   166,   nil,   175,    67,    24,    28,    28,    22,   nil,    24,
    28,   nil,    22,   nil,    24,    28,    28,    22,   nil,   nil,
    24,    24,   nil,    22,    22,    24,   nil,   103,    22,   nil,
    24,    24,    11,    22,    22,     2,   nil,    11,   nil,   nil,
     2,   nil,    11,   nil,   nil,     2,   nil,   nil,    11,    11,
     3,     2,     2,    11,   nil,     3,     2,   nil,    11,    11,
     3,     2,     2,   nil,   nil,   nil,     3,     3,   nil,   nil,
   nil,     3,   nil,   nil,   nil,   nil,     3,     3 ]

racc_goto_check = [
    24,    23,    22,    21,    34,    36,    35,    41,    36,    20,
    18,    19,    17,    36,    28,    16,    37,    25,    33,    14,
    32,    29,    25,    33,    13,    15,    38,    39,     3,    42,
   nil,   nil,   nil,   nil,   nil,    37,   nil,   nil,   nil,   nil,
   nil,   nil,    24,    22,   nil,    28,    36,   nil,   nil,    23,
   nil,    36,    34,    36,    41,    22,   nil,   nil,    24,    23,
    17,    18,    34,    16,   nil,    35,   nil,    20,    35,    19,
     1,   nil,   nil,   nil,   nil,     1,   nil,    35,   nil,   nil,
     1,   nil,    35,    24,    36,   nil,     1,    22,    21,     6,
   nil,     1,   nil,   nil,     6,   nil,     1,     1,   nil,     6,
    23,   nil,    22,    34,     5,     6,     6,     4,   nil,     5,
     6,   nil,     4,   nil,     5,     6,     6,     4,   nil,   nil,
     5,     5,   nil,     4,     4,     5,   nil,    24,     4,   nil,
     5,     5,    11,     4,     4,     7,   nil,    11,   nil,   nil,
     7,   nil,    11,   nil,   nil,     7,   nil,   nil,    11,    11,
     8,     7,     7,    11,   nil,     8,     7,   nil,    11,    11,
     8,     7,     7,   nil,   nil,   nil,     8,     8,   nil,   nil,
   nil,     8,   nil,   nil,   nil,   nil,     8,     8 ]

racc_goto_pointer = [
   nil,    70,   nil,    11,   107,   104,    89,   135,   150,   nil,
   nil,   132,   nil,     1,   -52,     2,   -57,   -11,   -61,   -12,
   -14,   -62,   -63,   -22,   -23,   -53,   nil,   nil,  -101,   -85,
   nil,   nil,   -47,   -90,   -19,   -93,   -62,  -127,    22,    26,
   nil,     3,   -15 ]

racc_goto_default = [
   nil,   nil,    17,    19,    74,    78,    80,    61,    62,     6,
     8,    66,    13,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   114,   nil,    75,   106,   116,    95,
   112,    96,   113,   109,   101,   102,   104,   140,   nil,    25,
     1,   nil,    36 ]

racc_token_table = {
 false => 0,
 Object.new => 1,
 :EX_LOW => 2,
 :QUOTE => 3,
 :BAR => 4,
 :SLASH => 5,
 :BACK_SLASH => 6,
 :URL => 7,
 :OTHER => 8,
 :REF_OPEN => 9,
 :FOOTNOTE_OPEN => 10,
 :FOOTNOTE_CLOSE => 11,
 :EX_HIGH => 12,
 :EM_OPEN => 13,
 :EM_CLOSE => 14,
 :CODE_OPEN => 15,
 :CODE_CLOSE => 16,
 :VAR_OPEN => 17,
 :VAR_CLOSE => 18,
 :KBD_OPEN => 19,
 :KBD_CLOSE => 20,
 :INDEX_OPEN => 21,
 :INDEX_CLOSE => 22,
 :REF_CLOSE => 23,
 :VERB_OPEN => 24,
 :VERB_CLOSE => 25 }

racc_use_result_var = true

racc_nt_base = 26

Racc_arg = [
 racc_action_table,
 racc_action_check,
 racc_action_default,
 racc_action_pointer,
 racc_goto_table,
 racc_goto_check,
 racc_goto_default,
 racc_goto_pointer,
 racc_nt_base,
 racc_reduce_table,
 racc_token_table,
 racc_shift_n,
 racc_reduce_n,
 racc_use_result_var ]

Racc_token_to_s_table = [
'$end',
'error',
'EX_LOW',
'QUOTE',
'BAR',
'SLASH',
'BACK_SLASH',
'URL',
'OTHER',
'REF_OPEN',
'FOOTNOTE_OPEN',
'FOOTNOTE_CLOSE',
'EX_HIGH',
'EM_OPEN',
'EM_CLOSE',
'CODE_OPEN',
'CODE_CLOSE',
'VAR_OPEN',
'VAR_CLOSE',
'KBD_OPEN',
'KBD_CLOSE',
'INDEX_OPEN',
'INDEX_CLOSE',
'REF_CLOSE',
'VERB_OPEN',
'VERB_CLOSE',
'$start',
'content',
'elements',
'element',
'emphasis',
'code',
'var',
'keyboard',
'index',
'reference',
'footnote',
'verb',
'normal_str_ele',
'substitute',
'ref_label',
'ref_label2',
'ref_url_strings',
'filename',
'element_label',
'element_label2',
'ref_subst_content',
'ref_subst_content_q',
'ref_subst_strings_q',
'ref_subst_strings_first',
'ref_subst_ele2',
'ref_subst_eles',
'ref_subst_str_ele_first',
'ref_subst_eles_q',
'ref_subst_ele',
'ref_subst_ele_q',
'ref_subst_str_ele',
'ref_subst_str_ele_q',
'ref_subst_strings',
'ref_subst_string3',
'ref_subst_string',
'ref_subst_string_q',
'ref_subst_string2',
'ref_url_string',
'verb_strings',
'normal_string',
'normal_strings',
'verb_string',
'verb_normal_string']

Racc_debug_parser = false

##### racc system variables end #####

 # reduce 0 omitted

 # reduce 1 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 23
  def _reduce_2( val, _values, result )
 result.push(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 24
  def _reduce_3( val, _values, result )
 result = val
   result
  end
.,.,

 # reduce 4 omitted

 # reduce 5 omitted

 # reduce 6 omitted

 # reduce 7 omitted

 # reduce 8 omitted

 # reduce 9 omitted

 # reduce 10 omitted

 # reduce 11 omitted

 # reduce 12 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 41
  def _reduce_13( val, _values, result )
		result = Emphasis.new
                add_children_to_element(result, *val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 46
  def _reduce_14( val, _values, result )
		result = Code.new
                add_children_to_element(result, *val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 51
  def _reduce_15( val, _values, result )
		result = Var.new
                add_children_to_element(result, *val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 56
  def _reduce_16( val, _values, result )
		result = Keyboard.new
                add_children_to_element(result, *val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 61
  def _reduce_17( val, _values, result )
		result = Index.new
                add_children_to_element(result, *val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 69
  def _reduce_18( val, _values, result )
 result = Reference.new(val[2])
                          add_children_to_element(result, *val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 74
  def _reduce_19( val, _values, result )
                          result = make_reference_from_label(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 76
  def _reduce_20( val, _values, result )
 result = Reference::URL.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 79
  def _reduce_21( val, _values, result )
 result = Reference::TemporaryLabel.new(val[1],
			           val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 81
  def _reduce_22( val, _values, result )
 result = Reference::TemporaryLabel.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 82
  def _reduce_23( val, _values, result )
 result = Reference::TemporaryLabel.new([], val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 84
  def _reduce_24( val, _values, result )
 result = Reference::URL.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 87
  def _reduce_25( val, _values, result )
 result = Reference::TemporaryLabel.new(val[1],
				   val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 89
  def _reduce_26( val, _values, result )
 result = Reference::TemporaryLabel.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 91
  def _reduce_27( val, _values, result )
 result = Reference::TemporaryLabel.new([],
				     val[0])
   result
  end
.,.,

 # reduce 28 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 95
  def _reduce_29( val, _values, result )
 result = val[1]
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 97
  def _reduce_30( val, _values, result )
 result = [StringElement.new(val[1])]
   result
  end
.,.,

 # reduce 31 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 102
  def _reduce_32( val, _values, result )
 result = val[1]
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 107
  def _reduce_33( val, _values, result )
 result = [StringElement.new(val[0])]
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 109
  def _reduce_34( val, _values, result )
 result = [StringElement.new(val[1])]
   result
  end
.,.,

 # reduce 35 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 115
  def _reduce_36( val, _values, result )
 result = val[1]
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 117
  def _reduce_37( val, _values, result )
 result = [StringElement.new(val[1])]
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 121
  def _reduce_38( val, _values, result )
 result = val[1].unshift(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 123
  def _reduce_39( val, _values, result )
 result = val[1].unshift(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 125
  def _reduce_40( val, _values, result )
 result = val
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 126
  def _reduce_41( val, _values, result )
 result = val
   result
  end
.,.,

 # reduce 42 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 131
  def _reduce_43( val, _values, result )
 result.push(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 132
  def _reduce_44( val, _values, result )
 result = val
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 135
  def _reduce_45( val, _values, result )
 result.push(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 136
  def _reduce_46( val, _values, result )
 result = val
   result
  end
.,.,

 # reduce 47 omitted

 # reduce 48 omitted

 # reduce 49 omitted

 # reduce 50 omitted

 # reduce 51 omitted

 # reduce 52 omitted

 # reduce 53 omitted

 # reduce 54 omitted

 # reduce 55 omitted

 # reduce 56 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 153
  def _reduce_57( val, _values, result )
 result = StringElement.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 156
  def _reduce_58( val, _values, result )
 result = StringElement.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 159
  def _reduce_59( val, _values, result )
 result = StringElement.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 163
  def _reduce_60( val, _values, result )
 result << val[1]
   result
  end
.,.,

 # reduce 61 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 169
  def _reduce_62( val, _values, result )
 result << val[1]
   result
  end
.,.,

 # reduce 63 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 173
  def _reduce_64( val, _values, result )
 result << val[1]
   result
  end
.,.,

 # reduce 65 omitted

 # reduce 66 omitted

 # reduce 67 omitted

 # reduce 68 omitted

 # reduce 69 omitted

 # reduce 70 omitted

 # reduce 71 omitted

 # reduce 72 omitted

 # reduce 73 omitted

 # reduce 74 omitted

 # reduce 75 omitted

 # reduce 76 omitted

 # reduce 77 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 196
  def _reduce_78( val, _values, result )
 result << val[1]
   result
  end
.,.,

 # reduce 79 omitted

 # reduce 80 omitted

 # reduce 81 omitted

 # reduce 82 omitted

 # reduce 83 omitted

 # reduce 84 omitted

 # reduce 85 omitted

 # reduce 86 omitted

 # reduce 87 omitted

 # reduce 88 omitted

 # reduce 89 omitted

 # reduce 90 omitted

 # reduce 91 omitted

 # reduce 92 omitted

 # reduce 93 omitted

 # reduce 94 omitted

 # reduce 95 omitted

 # reduce 96 omitted

 # reduce 97 omitted

 # reduce 98 omitted

 # reduce 99 omitted

 # reduce 100 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 230
  def _reduce_101( val, _values, result )
		result = Footnote.new
                add_children_to_element(result, *val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 233
  def _reduce_102( val, _values, result )
				result = Verb.new(val[1])
   result
  end
.,.,

 # reduce 103 omitted

 # reduce 104 omitted

 # reduce 105 omitted

 # reduce 106 omitted

 # reduce 107 omitted

 # reduce 108 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 246
  def _reduce_109( val, _values, result )
 result << val[1]
   result
  end
.,.,

 # reduce 110 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 251
  def _reduce_111( val, _values, result )
 result = StringElement.new(val[0])
   result
  end
.,.,

 # reduce 112 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 256
  def _reduce_113( val, _values, result )
 result = val[1]
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 257
  def _reduce_114( val, _values, result )
 result = val[1]
   result
  end
.,.,

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 258
  def _reduce_115( val, _values, result )
 result = val[1]
   result
  end
.,.,

 # reduce 116 omitted

 # reduce 117 omitted

 # reduce 118 omitted

 # reduce 119 omitted

 # reduce 120 omitted

 # reduce 121 omitted

 # reduce 122 omitted

 # reduce 123 omitted

 # reduce 124 omitted

 # reduce 125 omitted

 # reduce 126 omitted

 # reduce 127 omitted

 # reduce 128 omitted

 # reduce 129 omitted

 # reduce 130 omitted

 # reduce 131 omitted

 # reduce 132 omitted

 # reduce 133 omitted

 # reduce 134 omitted

 # reduce 135 omitted

module_eval <<'.,.,', 'lib/rd/rdinlineparser.ry', 283
  def _reduce_136( val, _values, result )
 result << val[1]
   result
  end
.,.,

 # reduce 137 omitted

 def _reduce_none( val, _values, result )
  result
 end

end   # class RDInlineParser

end # end of module RD

