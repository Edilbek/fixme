class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout

  def layout
    if self.class.parent == Admin
      'application_admin'
    else
      'application'
    end
  end
end
