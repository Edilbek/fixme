# -*- encoding : utf-8 -*-
# frozen_string_literal: true
module Arel
  module AliasPredication
    def as other
      Nodes::As.new self, Nodes::SqlLiteral.new(other)
    end
  end
end
