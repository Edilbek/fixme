# -*- encoding : utf-8 -*-
module ActiveRecord
  module Type
    class Text < ActiveModel::Type::String # :nodoc:
      def type
        :text
      end
    end
  end
end
