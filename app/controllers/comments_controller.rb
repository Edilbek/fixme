# -*- encoding : utf-8 -*-
class CommentsController < ApplicationController
  before_action :find_post
  before_action :find_comment, only: [:destroy, :edit, :update, :comment_owner]
  before_action :comment_owner, only: [:destroy, :edit, :update]

  def index
    @comments = @problem.comments.all
  end

  def new
    @problem = Problem.find(params[:problem_id])
    @comment = @problem.comments.find(params[:id])
  end

  def create
    @comment = @problem.comments.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save

    if @comment.save
      redirect_to problem_path(@problem)
    else
      render 'new'
    end
  end

  def destroy
    @comment.destroy
    redirect_to problem_path(@problem)
  end

  def edit

  end

  def update
    if @comment.update(comment_params)
      redirect_to problem_path(@problem)
    else
      render 'edit'
    end
  end

  private

  def find_post
    @problem = Problem.find(params[:problem_id])
  end

  def find_comment
    @comment = @problem.comments.find(params[:id])
  end

  def comment_owner
    unless current_user.id == @comment.user_id
      flash[:notice] = 'You shall not pass!'
      redirect_to @problem
    end
  end

  def comment_params
    params.require(:comment).permit(
      :content
    )
  end
end
