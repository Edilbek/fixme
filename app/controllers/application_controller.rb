class ApplicationController < ActionController::Base
  before_action :global_search
  protect_from_forgery with: :exception
  layout :layout



  def global_search
    @search = Problem.ransack(params[:q])
    @search_problems = @search.result
  end

  def layout
    if self.class.parent == Admin
      'application_admin'
    else
      'application'
    end
  end
end
