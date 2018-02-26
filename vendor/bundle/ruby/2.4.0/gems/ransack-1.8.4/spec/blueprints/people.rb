# -*- encoding : utf-8 -*-
Person.blueprint do
  name
  email { "test@example.com" }
  salary
  only_sort
  only_search
  only_admin
end
