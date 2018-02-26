# -*- encoding : utf-8 -*-
require 'orm_adapter/adapters/active_record'

ActiveSupport.on_load(:active_record) do
  extend Devise::Models
end
