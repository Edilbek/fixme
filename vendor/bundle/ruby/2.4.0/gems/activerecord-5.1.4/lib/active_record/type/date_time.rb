# -*- encoding : utf-8 -*-
module ActiveRecord
  module Type
    class DateTime < ActiveModel::Type::DateTime
      include Internal::Timezone
    end
  end
end
