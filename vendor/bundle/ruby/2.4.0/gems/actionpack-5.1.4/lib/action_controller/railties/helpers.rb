# -*- encoding : utf-8 -*-
module ActionController
  module Railties
    module Helpers
      def inherited(klass)
        super
        return unless klass.respond_to?(:helpers_path=)

        if namespace = klass.parents.detect { |m| m.respond_to?(:railtie_helpers_paths) }
          paths = namespace.railtie_helpers_paths
        else
          paths = ActionController::Helpers.helpers_path
        end

        klass.helpers_path = paths

        if klass.superclass == ActionController::Base && ActionController::Base.include_all_helpers
          klass.helper :all
        end
      end
    end
  end
end
