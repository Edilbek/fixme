class ProblemsController < ApplicationController
  def index
    @problems = current_user.problems
  end

  def all_problems
    @problems_for_moderator = Problem.all
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
    @problem = Problem.find(params[:id])
    @comments = Comment.where(problem_id: @problem).order('created_at DESC')
  end

  def edit
    @problem = Problem.find(params[:id])
  end

  def update
    @problem = Problem.find(params[:id])
    if @problem.update(problem_params)
      redirect_to problem_path(@problem)
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

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
