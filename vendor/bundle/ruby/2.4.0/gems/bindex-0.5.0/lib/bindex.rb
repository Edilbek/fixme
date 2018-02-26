# -*- encoding : utf-8 -*-
case RUBY_ENGINE
when 'rbx'
  require 'bindex/rubinius'
when 'jruby'
  require 'bindex/jruby'
when 'ruby'
  require 'bindex/cruby'
end

require "bindex/version"
