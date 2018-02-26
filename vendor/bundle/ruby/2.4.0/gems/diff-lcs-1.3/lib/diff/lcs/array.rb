# -*- encoding : utf-8 -*-
# -*- ruby encoding: utf-8 -*-

require 'diff/lcs'

class Array
  include Diff::LCS
end
