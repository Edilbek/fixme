# -*- encoding : utf-8 -*-
module SharedUserWithoutOmniauth
  extend ActiveSupport::Concern

  included do
    devise :database_authenticatable, :confirmable, :lockable, :recoverable,
      :registerable, :rememberable, :timeoutable,
      :trackable, :validatable, reconfirmable: false
  end

  def raw_confirmation_token
    @raw_confirmation_token
  end
end
