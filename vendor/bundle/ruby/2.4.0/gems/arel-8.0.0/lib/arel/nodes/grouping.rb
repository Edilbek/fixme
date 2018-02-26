# -*- encoding : utf-8 -*-
# frozen_string_literal: true
module Arel
  module Nodes
    class Grouping < Unary
      include Arel::Predications
    end
  end
end
