# -*- encoding: utf-8 -*-
require 'logger'
require 'strscan';

module HalfScheme
	class Identifer
		def initialize(name)
		end
	end
	class S_Exp
		def initialize()
		end
	end
end

module ParserInner
	def parse(str)
		ss = StringScanner.new(str)
		@tokens = [];
		while !ss.eos?
			case
			when ss.skip(/\s+/)
			when ss.scan(/\d+/)
				@tokens.push [:NUMBER, ss[0].to_i]
			when ss.scan(/"[^\\"]*"/)
				@tokens.push [:STRING, ss[0]]
			when ss.scan(/\(/)
				@tokens.push [:S_START, ss.pos]
			when ss.scan(/\)/)
				@tokens.push [:S_END, ss.pos]
			when ss.scan(/'/)
				@tokens.push [:S_QUOTE, ss.pos]
			when ss.scan(/[\w!\$\%\&\*\+\-\.\/\:\<\=\>\?@^_~]+/)
				@tokens.push [:IDENT, ss[0].to_sym]
			end
		end
		@tokens.push nil
		do_parse()
	end

	def next_token()
		return @tokens.shift()
	end
end
