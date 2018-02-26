# -*- encoding : utf-8 -*-
# frozen_string_literal: true
module Arel
  module Nodes
    class With < Arel::Nodes::Unary
      alias children expr
    end

    class WithRecursive < With; end
  end
end

