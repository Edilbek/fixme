class ProblemsController < ApplicationController
  def index
    @problems = current_user.problems
  end

  def new
    @problem = current_user.problems.build
  end

  def create
    @problem = current_user.problems.new problem_params
    if @problem.save
       redirect_to user_problems_path(current_user.id)
    else
      render 'new'
    end
  end

  def show
    @problem = Problem.find(params[:id])
    @hash = Gmaps4rails.build_markers(@problem) do |problem, marker|
      marker.lat problem.latitude
      marker.lng problem.longitude
      marker.infowindow problem.title
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def problem_params
    params.require(:problem).permit(
      :location,
      :description,
      :image,
      :title,
      :latitude,
      :longitude,
      :address
    )
  end
end
