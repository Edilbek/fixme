# -*- encoding : utf-8 -*-
class Admin::ProblemsController < ApplicationAdminController
  before_action :find_problem, only: [:show, :edit, :update]

  def index

  end

  def edit
  end

  def update
    if @problem.update(problem_params)
      redirect_to admin_problem_path(@problem)
      NotifyMailerJob.perform_later(@problem.id)
    else
      render 'edit'
    end
  end

  def show
  end

  private

  def find_problem
    @problem = Problem.find(params[:id])
  end

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
