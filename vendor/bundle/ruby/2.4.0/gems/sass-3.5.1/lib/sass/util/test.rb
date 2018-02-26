# -*- encoding : utf-8 -*-
module Sass
  module Util
    module Test
      def skip(msg = nil, bt = caller)
        super if defined?(super)
      end
    end
  end
end
