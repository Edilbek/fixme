# class Api::V1::ProblemsController < ApplicationController
#   before_action :find_problem, only: [:show, :update, :destroy]
#   def index
#     @problems = current_user.problems
#     respond_to do |format|
#       format.html
#       format.json { render json: @problems }
#     end
#     # json_response(@problems)
#   end
#
#   def all_problems
#     @all_problems = Problem.all
#     json_response(all_problems)
#   end
#
#   def show
#     json_response(@problem)
#   end
#
#   def create
#     @problem = current_user.problems.new problem_params
#     json_response(@problem, :created)
#   end
#
#   def update
#     @problem.update(todo_params)
#     head :no_content
#   end
#
#   def destroy
#     @problem.destroy
#     head :no_content
#   end
#
#   private
#
#   def find_problem
#     @problem = Problem.find(params[:id])
#   end
#
#   def problem_params
#     params.require(:problem).permit(
#       :location,
#       :description,
#       :status,
#       :title,
#       :latitude,
#       :longitude,
#       :address,
#       {images: []}
#     )
#   end
# end
