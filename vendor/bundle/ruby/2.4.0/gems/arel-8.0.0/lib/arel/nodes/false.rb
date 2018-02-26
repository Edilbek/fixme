# -*- encoding : utf-8 -*-
# frozen_string_literal: true
module Arel
  module Nodes
    class False < Arel::Nodes::Node
      def hash
        self.class.hash
      end

      def eql? other
        self.class == other.class
      end
    end
  end
end
