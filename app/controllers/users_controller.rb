class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :check_ownership, only: [:edit, :update]
  respond_to :html, :js

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def deactivate
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to root_path }
    end
  end

  def friends
    # @friends = @user.following_users.paginate(page: params[:page])
  end

  def followers
    # @followers = @user.user_followers.paginate(page: params[:page])
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :about, :picture)
  end

  def check_ownership
    redirect_to current_user, notice: 'Not Authorized' unless @user == current_user
  end

  def set_user
    @user = User.find(params[:id])
  end
end
