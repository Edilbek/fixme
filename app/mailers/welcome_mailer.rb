# -*- encoding : utf-8 -*-
class WelcomeMailer < ApplicationMailer
  def welcome(user)
    @user = user

    mail to: @user.email, subject: 'Ваша учетная запись в fixme.kg была успешно создана!'
  end
end
