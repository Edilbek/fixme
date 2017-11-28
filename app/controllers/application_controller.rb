class ApplicationController < ActionController::Base
  
  before_action :authenticate_user!, except: [:index, :search, :show]
  before_action :global_search
  before_action :count_of_problems
  protect_from_forgery with: :exception
  layout :layout

  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = 'Access denied.'
    redirect_to (request.referer || root_path)
  end

  def global_search
    @search = Problem.ransack(params[:q])
    @search_problems = @search.result
  end

  def count_of_problems
    @all_problems = Problem.all.count
    @resolved_problems1 = Problem.where(status: 'resolved').page(params[:page]).per(5)
    @resolved_problems = Problem.where(status: 'resolved').count
    @unresolved_problems = Problem.where(status: 'unresolved').count
    @in_progress_problems1 = Problem.where(status: 'in_progress').page(params[:page]).per(5)
    @in_progress_problems = Problem.where(status: 'in_progress').count
  end

  def layout
    if self.class.parent == Admin
      'application_admin'
    else
      'application'
    end
  end
end
