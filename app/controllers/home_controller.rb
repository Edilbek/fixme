class HomeController < ApplicationController
  def index
    @problems = Problem.all
    @all_problems = Problem.all.count
    @resolved_problems = Problem.where(status: 'resolved').count
    @unresolved_problems = Problem.where(status: 'unresolved').count
    @in_progress_problems = Problem.where(status: 'in_progress').count
  end
end
