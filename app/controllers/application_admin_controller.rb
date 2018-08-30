# -*- encoding : utf-8 -*-
class ApplicationAdminController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_admin!

  private

  def set_locale
    I18n.locale = params[:locale] if params[:locale].present?
    # current_user.locale
    # request.subdomain
    # request.env["HTTP_ACCEPT_LANGUAGE"]
    # request.remote_ip
  end

  def default_url_options(options = {})
    {locale: I18n.locale}
  end
end
