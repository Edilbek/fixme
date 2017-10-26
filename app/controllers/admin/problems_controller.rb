class Admin::ProblemsController < ApplicationController
  def index

  end

  def edit
    @problem = Problem.find(params[:id])
  end

  def update
    
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
