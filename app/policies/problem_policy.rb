class ProblemPolicy < ApplicationPolicy
  attr_reader :current_user, :problem

  def initialize(current_user, problem)
    @current_user = current_user
    @problem = problem
  end

  def all_problems?
    @current_user.moderator?
  end

  def edit?
    @current_user.moderator?
  end
end
