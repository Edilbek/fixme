# -*- encoding : utf-8 -*-
module MiniMagick
  class Tool
    ##
    # @see http://www.imagemagick.org/script/convert.php
    #
    class Convert < MiniMagick::Tool

      def initialize(*args)
        super("convert", *args)
      end

    end
  end
end
