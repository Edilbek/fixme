# -*- encoding : utf-8 -*-
module Rails
  module Command
    class VersionCommand < Base # :nodoc:
      def perform
        Rails::Command.invoke :application, [ "--version" ]
      end
    end
  end
end
