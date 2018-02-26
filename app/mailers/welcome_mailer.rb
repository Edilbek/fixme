# -*- encoding : utf-8 -*-
class WelcomeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome_mailer.welcome.subject
  #
  def welcome(user)
    @user = user

    mail to: @user.email, subject: 'Ваша учетная запись в fixme.kg была успешно создана!'
  end
end
