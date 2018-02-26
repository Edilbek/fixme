# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :find_user, only: [:show, :edit, :update, :destroy]


  def index
    @users = User.order("id ASC").all
    authorize @users
  end

  def edit
    authorize @user
  end

  def update
    if @user.update(user_params)
      redirect_to admin_user_path(@user)
      flash[:success] = 'User was successfully edited'
    else
      render 'edit'
    end
  end

  def show
    authorize @user
  end

  def destroy
    @user.destroy
    flash[:info] = 'User deleted'
    redirect_to admin_users_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :role
    )
  end

end
