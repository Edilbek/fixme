# -*- encoding : utf-8 -*-
class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def index
  end
end
