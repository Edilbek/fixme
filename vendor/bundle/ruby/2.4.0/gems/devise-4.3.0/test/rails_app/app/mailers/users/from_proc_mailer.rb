# -*- encoding : utf-8 -*-
class Users::FromProcMailer < Devise::Mailer
  default from: proc { 'custom@example.com' }
end
