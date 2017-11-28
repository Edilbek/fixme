class Admin::UsersController < ApplicationAdminController

  def index
    @users = User.order("id ASC").all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:info] = 'User deleted'
    redirect_to admin_users_path
  end

  private

  def user_params
    params.require(:user).permit(
      :role
    )
  end
end
