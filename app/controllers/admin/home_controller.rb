class Admin::HomeController < ApplicationController
  before_action :authenticate_admin!
  def index
    @problems = Problem.all
  end
end
