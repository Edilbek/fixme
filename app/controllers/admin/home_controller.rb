class Admin::HomeController < ApplicationAdminController
before_action :authenticate_admin!
  def index
    @problems = Problem.all
  end
end
