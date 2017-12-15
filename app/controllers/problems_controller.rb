class ProblemsController < ApplicationController
  before_action :find_problem, only: [:show, :edit, :update]
  def index
    @problems = current_user.problems
  end

  def all_problems
    authorize Problem
    @problems_for_moderator = Problem.order('created_at DESC')
  end

  def search
    @search = Problem.ransack(params[:q])
    @search_problems = @search.result
  end

  def new
    @problem = current_user.problems.build
  end

  def create
    @problem = current_user.problems.new problem_params
    if @problem.save
       redirect_to user_problem_path(current_user, @problem)
    else
      render 'new'
    end
  end

  def show
    @comments = Comment.where(problem_id: @problem).order('created_at DESC')
  end

  def edit
    authorize @problem
  end

  def update
    if @problem.update(problem_params)
      flash[:success] = 'Problem was successfully edited'
      redirect_to problem_path(@problem)
      ProblemMailer.state_changed(@problem).deliver_now
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def find_problem
    @problem = Problem.find(params[:id])
  end

  def problem_params
    params.require(:problem).permit(
      :location,
      :description,
      :status,
      :title,
      :latitude,
      :longitude,
      :address,
      {images: []}
    )
  end
end
