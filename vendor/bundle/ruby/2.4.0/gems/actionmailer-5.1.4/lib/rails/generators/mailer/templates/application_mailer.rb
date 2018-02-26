# -*- encoding : utf-8 -*-
<% module_namespacing do -%>
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
<% end %>
