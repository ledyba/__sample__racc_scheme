#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.7
# from Racc grammer file "".
#

require 'racc/parser.rb'

require File.dirname(__FILE__)+"/parser_inner.rb"
class Parser < Racc::Parser

module_eval(<<'...end parser.racc/module_eval...', 'parser.racc', 55)
include ParserInner
...end parser.racc/module_eval...
##### State transition tables begin ###

racc_action_table = [
    11,    12,    13,     5,    15,     4,    11,    12,    13,     5,
     8,     4,    11,    12,    13,     5,     5,     4,     4,     5,
    17,     4,     6,    19 ]

racc_action_check = [
     5,     5,     5,     5,     6,     5,    10,    10,    10,    10,
     4,    10,     8,     8,     8,     8,     3,     8,     3,     0,
     9,     0,     1,    16 ]

racc_action_pointer = [
    14,    22,   nil,    11,     5,    -2,     4,   nil,    10,    14,
     4,   nil,   nil,   nil,   nil,   nil,    17,   nil,   nil,   nil ]

racc_action_default = [
    -2,   -13,    -1,    -4,   -13,   -13,   -13,    -3,   -13,   -13,
    -8,    -9,   -10,   -11,   -12,    20,   -13,    -6,    -7,    -5 ]

racc_goto_table = [
     9,     2,     1,    16,     7,    18,     3,   nil,   nil,     3 ]

racc_goto_check = [
     4,     2,     1,     4,     2,     4,     3,   nil,   nil,     3 ]

racc_goto_pointer = [
   nil,     2,     1,     6,    -5,   nil ]

racc_goto_default = [
   nil,   nil,   nil,    14,   nil,    10 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 9, :_reduce_1,
  0, 9, :_reduce_2,
  2, 10, :_reduce_3,
  1, 10, :_reduce_4,
  4, 11, :_reduce_5,
  3, 11, :_reduce_6,
  2, 12, :_reduce_7,
  1, 12, :_reduce_8,
  1, 13, :_reduce_none,
  1, 13, :_reduce_none,
  1, 13, :_reduce_none,
  1, 13, :_reduce_none ]

racc_reduce_n = 13

racc_shift_n = 20

racc_token_table = {
  false => 0,
  :error => 1,
  :IDENT => 2,
  :NUMBER => 3,
  :STRING => 4,
  :S_START => 5,
  :S_END => 6,
  :S_QUOTE => 7 }

racc_nt_base = 8

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
  "IDENT",
  "NUMBER",
  "STRING",
  "S_START",
  "S_END",
  "S_QUOTE",
  "$start",
  "program",
  "s_exp_list",
  "s_exp",
  "expr_list",
  "expr" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'parser.racc', 6)
  def _reduce_1(val, _values, result)
    				result = val[0];
			
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 10)
  def _reduce_2(val, _values, result)
    				result = [];
			
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 16)
  def _reduce_3(val, _values, result)
    				result = [val[0], *val[1]]
			
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 20)
  def _reduce_4(val, _values, result)
    				result = [val[0]]
			
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 26)
  def _reduce_5(val, _values, result)
    				result = val[2];
			
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 30)
  def _reduce_6(val, _values, result)
    				result = val[1];
			
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 37)
  def _reduce_7(val, _values, result)
    				result =  [val[0], *val[1]]
			
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 41)
  def _reduce_8(val, _values, result)
    				result = [val[0]]
			
    result
  end
.,.,

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
