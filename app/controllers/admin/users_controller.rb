class Admin::UsersController < ApplicationAdminController
  before_action :find_user, only: [:show, :edit, :update]

  def index
    @users = User.order("id DESC").all
  end

  def show
  end

  def edit
  end

  def update
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
