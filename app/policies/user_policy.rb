# -*- encoding : utf-8 -*-
class UserPolicy < ApplicationPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end

  def index?
    @current_user.moderator?
  end

  def show?
    @current_user.moderator? || @current_user == @user
  end

  def edit?
    @current_user == @user
  end
end
