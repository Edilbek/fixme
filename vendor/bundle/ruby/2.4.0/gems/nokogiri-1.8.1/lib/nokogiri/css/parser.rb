# -*- encoding : utf-8 -*-
#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.12
# from Racc grammer file "".
#

require 'racc/parser.rb'


require 'nokogiri/css/parser_extras'

module Nokogiri
  module CSS
    class Parser < Racc::Parser


def unescape_css_identifier(identifier)
  identifier.gsub(/\\(?:([^0-9a-fA-F])|([0-9a-fA-F]{1,6})\s?)/){ |m| $1 || [$2.hex].pack('U') }
end
##### State transition tables begin ###

racc_action_table = [
    24,    93,    56,    57,    33,    55,    94,    23,    24,    22,
    12,    93,    33,    27,    35,    52,    88,    22,   -23,    25,
    92,    98,    23,    33,    26,    18,    20,    25,    27,    86,
    23,    24,    26,    18,    20,    33,    27,    11,    39,    24,
    22,    23,    89,    33,    18,   101,   100,    27,    22,    12,
    25,    24,    95,    23,    90,    26,    18,    20,    25,    27,
    66,    23,    24,    26,    18,    20,    33,    27,    91,    90,
    51,    22,    96,    85,    33,    26,    33,   -23,    33,    56,
    87,    25,    60,    99,    23,    74,    26,    18,    20,    39,
    27,    39,    23,    39,    23,    18,    23,    18,    27,    18,
    27,    33,    27,    33,    56,    87,    22,    60,    56,    87,
   102,    60,    56,    87,    33,    60,    39,    24,    39,    23,
   103,    23,    18,    20,    18,    27,    46,    27,    49,    39,
    93,    44,    23,   105,    33,    18,    51,    45,    27,    33,
   -23,    26,   108,    56,    58,   109,    60,   nil,   nil,    39,
   nil,   nil,    23,   nil,    39,    18,   nil,    23,    27,   nil,
    18,    20,   nil,    27,    82,    83,   nil,   nil,   nil,    82,
    83,   nil,   nil,   nil,   nil,    78,    79,    80,   nil,    81,
    78,    79,    80,    77,    81,     4,     5,    10,    77,     4,
     5,    43,   nil,   nil,   nil,     6,   nil,     8,     7,     6,
   nil,     8,     7,     4,     5,    10,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,     6,   nil,     8,     7 ]

racc_action_check = [
    42,    58,    24,    24,    42,    24,    57,    15,    43,    42,
    64,    57,    43,    15,    11,    24,    53,    43,    58,    42,
    56,    64,    42,    14,    42,    42,    42,    43,    42,    50,
    43,     3,    43,    43,    43,     3,    43,     1,    14,     9,
     3,    14,    54,     9,    14,    76,    76,    14,     9,     1,
     3,    27,    59,     3,    60,     3,     3,     3,     9,     3,
    27,     9,    12,     9,     9,     9,    12,     9,    55,    55,
    27,    12,    61,    49,    28,    27,    62,    46,    30,    92,
    92,    12,    92,    75,    12,    45,    12,    12,    12,    28,
    12,    62,    28,    30,    62,    28,    30,    62,    28,    30,
    62,    39,    30,    32,    90,    90,    39,    90,    51,    51,
    84,    51,    93,    93,    31,    93,    39,    23,    32,    39,
    86,    32,    39,    39,    32,    39,    23,    32,    23,    31,
    87,    18,    31,    91,    29,    31,    23,    21,    31,    25,
    22,    23,    94,    25,    25,   105,    25,   nil,   nil,    29,
   nil,   nil,    29,   nil,    25,    29,   nil,    25,    29,   nil,
    25,    25,   nil,    25,    48,    48,   nil,   nil,   nil,    47,
    47,   nil,   nil,   nil,   nil,    48,    48,    48,   nil,    48,
    47,    47,    47,    48,    47,     0,     0,     0,    47,    17,
    17,    17,   nil,   nil,   nil,     0,   nil,     0,     0,    17,
   nil,    17,    17,    26,    26,    26,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    26,   nil,    26,    26 ]

racc_action_pointer = [
   178,    37,   nil,    29,   nil,   nil,   nil,   nil,   nil,    37,
   nil,    14,    60,   nil,    17,   -17,   nil,   182,   120,   nil,
   nil,   108,   111,   115,    -8,   133,   196,    49,    68,   128,
    72,   108,    97,   nil,   nil,   nil,   nil,   nil,   nil,    95,
   nil,   nil,    -2,     6,   nil,    74,    48,   166,   161,    48,
     0,    98,   nil,    -7,    19,    57,     8,    -1,   -11,    29,
    42,    49,    70,   nil,    -2,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    58,    35,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    85,   nil,   109,   118,   nil,   nil,
    94,   126,    69,   102,   129,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   132,   nil,   nil,   nil,   nil ]

racc_action_default = [
   -74,   -75,    -2,   -24,    -4,    -5,    -6,    -7,    -8,   -24,
   -73,   -75,   -24,    -3,   -47,   -10,   -13,   -17,   -75,   -19,
   -20,   -75,   -22,   -24,   -75,   -24,   -74,   -75,   -53,   -54,
   -55,   -56,   -57,   -58,   -14,   110,    -1,    -9,   -46,   -24,
   -11,   -12,   -24,   -24,   -18,   -75,   -29,   -61,   -61,   -75,
   -75,   -75,   -30,   -75,   -75,   -38,   -39,   -40,   -22,   -75,
   -38,   -75,   -70,   -72,   -75,   -44,   -45,   -48,   -49,   -50,
   -51,   -52,   -15,   -16,   -21,   -75,   -75,   -62,   -63,   -64,
   -65,   -66,   -67,   -68,   -75,   -27,   -75,   -40,   -31,   -32,
   -75,   -43,   -75,   -75,   -75,   -33,   -69,   -71,   -34,   -25,
   -59,   -60,   -26,   -28,   -35,   -75,   -36,   -37,   -42,   -41 ]

racc_goto_table = [
    53,    38,    13,     1,    41,    48,    62,    40,    34,    65,
    50,    36,    63,    75,    84,    67,    68,    69,    70,    71,
    62,    47,    37,    42,    54,   nil,    63,   nil,   nil,    64,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    72,    73,   nil,   nil,   nil,   nil,   nil,   nil,    97,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   104,   nil,   106,   107 ]

racc_goto_check = [
    18,    12,     2,     1,    11,     9,     7,    10,     2,     9,
    15,     2,    12,    17,    17,    12,    12,    12,    12,    12,
     7,    16,     8,     5,    19,   nil,    12,   nil,   nil,     1,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,     2,     2,   nil,   nil,   nil,   nil,   nil,   nil,    12,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    18,   nil,    18,    18 ]

racc_goto_pointer = [
   nil,     3,    -1,   nil,   nil,     6,   nil,   -19,     8,   -18,
    -8,   -11,   -13,   nil,   nil,   -13,    -2,   -34,   -24,     0,
   nil,   nil,   nil,   nil ]

racc_goto_default = [
   nil,   nil,   nil,     2,     3,     9,    17,    14,   nil,    15,
    31,    30,    16,    29,    19,    21,   nil,   nil,    59,   nil,
    28,    32,    76,    61 ]

racc_reduce_table = [
  0, 0, :racc_error,
  3, 32, :_reduce_1,
  1, 32, :_reduce_2,
  2, 32, :_reduce_3,
  1, 36, :_reduce_4,
  1, 36, :_reduce_5,
  1, 36, :_reduce_6,
  1, 36, :_reduce_7,
  1, 36, :_reduce_8,
  2, 37, :_reduce_9,
  1, 37, :_reduce_none,
  2, 37, :_reduce_11,
  2, 37, :_reduce_12,
  1, 37, :_reduce_13,
  2, 34, :_reduce_14,
  3, 33, :_reduce_15,
  3, 33, :_reduce_16,
  1, 33, :_reduce_none,
  2, 44, :_reduce_18,
  1, 38, :_reduce_none,
  1, 38, :_reduce_20,
  3, 45, :_reduce_21,
  1, 45, :_reduce_22,
  1, 46, :_reduce_23,
  0, 46, :_reduce_none,
  4, 42, :_reduce_25,
  4, 42, :_reduce_26,
  3, 42, :_reduce_27,
  3, 47, :_reduce_28,
  1, 47, :_reduce_29,
  2, 40, :_reduce_30,
  3, 40, :_reduce_31,
  3, 40, :_reduce_32,
  3, 40, :_reduce_33,
  3, 40, :_reduce_34,
  3, 49, :_reduce_35,
  3, 49, :_reduce_36,
  3, 49, :_reduce_37,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_40,
  4, 50, :_reduce_41,
  3, 50, :_reduce_42,
  2, 50, :_reduce_43,
  2, 41, :_reduce_44,
  2, 41, :_reduce_45,
  1, 39, :_reduce_none,
  0, 39, :_reduce_none,
  2, 43, :_reduce_48,
  2, 43, :_reduce_49,
  2, 43, :_reduce_50,
  2, 43, :_reduce_51,
  2, 43, :_reduce_52,
  1, 43, :_reduce_none,
  1, 43, :_reduce_none,
  1, 43, :_reduce_none,
  1, 43, :_reduce_none,
  1, 43, :_reduce_none,
  1, 51, :_reduce_58,
  2, 48, :_reduce_59,
  2, 48, :_reduce_60,
  0, 48, :_reduce_none,
  1, 53, :_reduce_62,
  1, 53, :_reduce_63,
  1, 53, :_reduce_64,
  1, 53, :_reduce_65,
  1, 53, :_reduce_66,
  1, 53, :_reduce_67,
  1, 53, :_reduce_68,
  3, 52, :_reduce_69,
  1, 54, :_reduce_none,
  2, 54, :_reduce_none,
  1, 54, :_reduce_none,
  1, 35, :_reduce_none,
  0, 35, :_reduce_none ]

racc_reduce_n = 75

racc_shift_n = 110

racc_token_table = {
  false => 0,
  :error => 1,
  :FUNCTION => 2,
  :INCLUDES => 3,
  :DASHMATCH => 4,
  :LBRACE => 5,
  :HASH => 6,
  :PLUS => 7,
  :GREATER => 8,
  :S => 9,
  :STRING => 10,
  :IDENT => 11,
  :COMMA => 12,
  :NUMBER => 13,
  :PREFIXMATCH => 14,
  :SUFFIXMATCH => 15,
  :SUBSTRINGMATCH => 16,
  :TILDE => 17,
  :NOT_EQUAL => 18,
  :SLASH => 19,
  :DOUBLESLASH => 20,
  :NOT => 21,
  :EQUAL => 22,
  :RPAREN => 23,
  :LSQUARE => 24,
  :RSQUARE => 25,
  :HAS => 26,
  "." => 27,
  "*" => 28,
  "|" => 29,
  ":" => 30 }

racc_nt_base = 31

racc_use_result_var = true

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
  "$end",
  "error",
  "FUNCTION",
  "INCLUDES",
  "DASHMATCH",
  "LBRACE",
  "HASH",
  "PLUS",
  "GREATER",
  "S",
  "STRING",
  "IDENT",
  "COMMA",
  "NUMBER",
  "PREFIXMATCH",
  "SUFFIXMATCH",
  "SUBSTRINGMATCH",
  "TILDE",
  "NOT_EQUAL",
  "SLASH",
  "DOUBLESLASH",
  "NOT",
  "EQUAL",
  "RPAREN",
  "LSQUARE",
  "RSQUARE",
  "HAS",
  "\".\"",
  "\"*\"",
  "\"|\"",
  "\":\"",
  "$start",
  "selector",
  "simple_selector_1toN",
  "prefixless_combinator_selector",
  "optional_S",
  "combinator",
  "simple_selector",
  "element_name",
  "hcap_0toN",
  "function",
  "pseudo",
  "attrib",
  "hcap_1toN",
  "class",
  "namespaced_ident",
  "namespace",
  "attrib_name",
  "attrib_val_0or1",
  "expr",
  "nth",
  "attribute_id",
  "negation",
  "eql_incl_dash",
  "negation_arg" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

def _reduce_1(val, _values, result)
        result = [val.first, val.last].flatten
      
    result
end

def _reduce_2(val, _values, result)
 result = val.flatten 
    result
end

def _reduce_3(val, _values, result)
 result = [val.last].flatten 
    result
end

def _reduce_4(val, _values, result)
 result = :DIRECT_ADJACENT_SELECTOR 
    result
end

def _reduce_5(val, _values, result)
 result = :CHILD_SELECTOR 
    result
end

def _reduce_6(val, _values, result)
 result = :FOLLOWING_SELECTOR 
    result
end

def _reduce_7(val, _values, result)
 result = :DESCENDANT_SELECTOR 
    result
end

def _reduce_8(val, _values, result)
 result = :CHILD_SELECTOR 
    result
end

def _reduce_9(val, _values, result)
        result =  if val[1].nil?
                    val.first
                  else
                    Node.new(:CONDITIONAL_SELECTOR, [val.first, val[1]])
                  end
      
    result
end

# reduce 10 omitted

def _reduce_11(val, _values, result)
        result = Node.new(:CONDITIONAL_SELECTOR, val)
      
    result
end

def _reduce_12(val, _values, result)
        result = Node.new(:CONDITIONAL_SELECTOR, val)
      
    result
end

def _reduce_13(val, _values, result)
        result = Node.new(:CONDITIONAL_SELECTOR,
          [Node.new(:ELEMENT_NAME, ['*']), val.first]
        )
      
    result
end

def _reduce_14(val, _values, result)
        result = Node.new(val.first, [nil, val.last])
      
    result
end

def _reduce_15(val, _values, result)
        result = Node.new(val[1], [val.first, val.last])
      
    result
end

def _reduce_16(val, _values, result)
        result = Node.new(:DESCENDANT_SELECTOR, [val.first, val.last])
      
    result
end

# reduce 17 omitted

def _reduce_18(val, _values, result)
 result = Node.new(:CLASS_CONDITION, [unescape_css_identifier(val[1])]) 
    result
end

# reduce 19 omitted

def _reduce_20(val, _values, result)
 result = Node.new(:ELEMENT_NAME, val) 
    result
end

def _reduce_21(val, _values, result)
        result = Node.new(:ELEMENT_NAME,
          [[val.first, val.last].compact.join(':')]
        )
      
    result
end

def _reduce_22(val, _values, result)
        name = @namespaces.key?('xmlns') ? "xmlns:#{val.first}" : val.first
        result = Node.new(:ELEMENT_NAME, [name])
      
    result
end

def _reduce_23(val, _values, result)
 result = val[0] 
    result
end

# reduce 24 omitted

def _reduce_25(val, _values, result)
        result = Node.new(:ATTRIBUTE_CONDITION,
          [val[1]] + (val[2] || [])
        )
      
    result
end

def _reduce_26(val, _values, result)
        result = Node.new(:ATTRIBUTE_CONDITION,
          [val[1]] + (val[2] || [])
        )
      
    result
end

def _reduce_27(val, _values, result)
        # Non standard, but hpricot supports it.
        result = Node.new(:PSEUDO_CLASS,
          [Node.new(:FUNCTION, ['nth-child(', val[1]])]
        )
      
    result
end

def _reduce_28(val, _values, result)
        result = Node.new(:ELEMENT_NAME,
          [[val.first, val.last].compact.join(':')]
        )
      
    result
end

def _reduce_29(val, _values, result)
        # Default namespace is not applied to attributes.
        # So we don't add prefix "xmlns:" as in namespaced_ident.
        result = Node.new(:ELEMENT_NAME, [val.first])
      
    result
end

def _reduce_30(val, _values, result)
        result = Node.new(:FUNCTION, [val.first.strip])
      
    result
end

def _reduce_31(val, _values, result)
        result = Node.new(:FUNCTION, [val.first.strip, val[1]].flatten)
      
    result
end

def _reduce_32(val, _values, result)
        result = Node.new(:FUNCTION, [val.first.strip, val[1]].flatten)
      
    result
end

def _reduce_33(val, _values, result)
        result = Node.new(:FUNCTION, [val.first.strip, val[1]].flatten)
      
    result
end

def _reduce_34(val, _values, result)
        result = Node.new(:FUNCTION, [val.first.strip, val[1]].flatten)
      
    result
end

def _reduce_35(val, _values, result)
 result = [val.first, val.last] 
    result
end

def _reduce_36(val, _values, result)
 result = [val.first, val.last] 
    result
end

def _reduce_37(val, _values, result)
 result = [val.first, val.last] 
    result
end

# reduce 38 omitted

# reduce 39 omitted

def _reduce_40(val, _values, result)
        case val[0]
        when 'even'
          result = Node.new(:NTH, ['2','n','+','0'])
        when 'odd'
          result = Node.new(:NTH, ['2','n','+','1'])
        when 'n'
          result = Node.new(:NTH, ['1','n','+','0'])
        else
          # This is not CSS standard.  It allows us to support this:
          # assert_xpath("//a[foo(., @href)]", @parser.parse('a:foo(@href)'))
          # assert_xpath("//a[foo(., @a, b)]", @parser.parse('a:foo(@a, b)'))
          # assert_xpath("//a[foo(., a, 10)]", @parser.parse('a:foo(a, 10)'))
          result = val
        end
      
    result
end

def _reduce_41(val, _values, result)
        if val[1] == 'n'
          result = Node.new(:NTH, val)
        else
          raise Racc::ParseError, "parse error on IDENT '#{val[1]}'"
        end
      
    result
end

def _reduce_42(val, _values, result)
               # n+3, -n+3
        if val[0] == 'n'
          val.unshift("1")
          result = Node.new(:NTH, val)
        elsif val[0] == '-n'
          val[0] = 'n'
          val.unshift("-1")
          result = Node.new(:NTH, val)
        else
          raise Racc::ParseError, "parse error on IDENT '#{val[1]}'"
        end
      
    result
end

def _reduce_43(val, _values, result)
                    # 5n, -5n, 10n-1
        n = val[1]
        if n[0, 2] == 'n-'
          val[1] = 'n'
          val << "-"
          # b is contained in n as n is the string "n-b"
          val << n[2, n.size]
          result = Node.new(:NTH, val)
        elsif n == 'n'
          val << "+"
          val << "0"
          result = Node.new(:NTH, val)
        else
          raise Racc::ParseError, "parse error on IDENT '#{val[1]}'"
        end
      
    result
end

def _reduce_44(val, _values, result)
        result = Node.new(:PSEUDO_CLASS, [val[1]])
      
    result
end

def _reduce_45(val, _values, result)
 result = Node.new(:PSEUDO_CLASS, [val[1]]) 
    result
end

# reduce 46 omitted

# reduce 47 omitted

def _reduce_48(val, _values, result)
        result = Node.new(:COMBINATOR, val)
      
    result
end

def _reduce_49(val, _values, result)
        result = Node.new(:COMBINATOR, val)
      
    result
end

def _reduce_50(val, _values, result)
        result = Node.new(:COMBINATOR, val)
      
    result
end

def _reduce_51(val, _values, result)
        result = Node.new(:COMBINATOR, val)
      
    result
end

def _reduce_52(val, _values, result)
        result = Node.new(:COMBINATOR, val)
      
    result
end

# reduce 53 omitted

# reduce 54 omitted

# reduce 55 omitted

# reduce 56 omitted

# reduce 57 omitted

def _reduce_58(val, _values, result)
 result = Node.new(:ID, [unescape_css_identifier(val.first)]) 
    result
end

def _reduce_59(val, _values, result)
 result = [val.first, val[1]] 
    result
end

def _reduce_60(val, _values, result)
 result = [val.first, val[1]] 
    result
end

# reduce 61 omitted

def _reduce_62(val, _values, result)
 result = :equal 
    result
end

def _reduce_63(val, _values, result)
 result = :prefix_match 
    result
end

def _reduce_64(val, _values, result)
 result = :suffix_match 
    result
end

def _reduce_65(val, _values, result)
 result = :substring_match 
    result
end

def _reduce_66(val, _values, result)
 result = :not_equal 
    result
end

def _reduce_67(val, _values, result)
 result = :includes 
    result
end

def _reduce_68(val, _values, result)
 result = :dash_match 
    result
end

def _reduce_69(val, _values, result)
        result = Node.new(:NOT, [val[1]])
      
    result
end

# reduce 70 omitted

# reduce 71 omitted

# reduce 72 omitted

# reduce 73 omitted

# reduce 74 omitted

def _reduce_none(val, _values, result)
  val[0]
end

    end   # class Parser
    end   # module CSS
  end   # module Nokogiri
