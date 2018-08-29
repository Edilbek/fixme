# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :authenticate_user!, except: [:index, :search, :show, :all_in_progress_problems, :all_resolved_problems]
  before_action :global_search
  before_action :count_of_problems
  before_action :all_in_progress_problems
  before_action :all_resolved_problems
  protect_from_forgery with: :exception
  layout :layout


  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = 'Доступ закрыт.'
    redirect_to (request.referer || root_path)
  end

  def global_search
    @search = Problem.ransack(params[:q])
    @search_problems = @search.result
  end

  def count_of_problems
    @all_problems = Problem.all.count
    @resolved_problems1 = Problem.resolved
    @resolved_problems = Problem.resolved.count
    @unresolved_problems = Problem.unresolved.count
    @in_progress_problems1 = Problem.in_progress
    @in_progress_problems = Problem.in_progress.count
  end

  def all_in_progress_problems
    @all_in_progress_problems = Problem.in_progress.order(created_at: :desc).page(params[:page]).per(3)
    @all_in_progress_problems1 = Problem.in_progress.all
  end

  def all_resolved_problems
    @all_resolved_problems = Problem.resolved.order(created_at: :desc).page(params[:page]).per(3)
    @all_resolved_problems1 = Problem.resolved.all
  end

  def layout
    if self.class.parent == Admin
      'application_admin'
    else
      'application'
    end
  end

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    # current_user.locale
    # request.subdomain
    # request.env["HTTP_ACCEPT_LANGUAGE"]
    # request.remote_ip
  end

  def default_url_options(options={})
    { locale: I18n.locale }
  end
end
