# -*- encoding : utf-8 -*-
<% module_namespacing do -%>
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
<% end -%>
