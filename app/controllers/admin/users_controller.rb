class Admin::UsersController < ApplicationAdminController

  def index
    @users = User.order("id ASC").all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end

end
