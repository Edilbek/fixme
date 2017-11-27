class Admin::ProblemsController < ApplicationAdminController
  def index

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

  def show
    @problem = Problem.find(params[:id])
  end

  private

  def problem_params
    params.require(:problem).permit(
      :location,
      :status,
      :description,
      :title,
      :latitude,
      :longitude,
      :address,
      {images: []}
    )
  end
end
