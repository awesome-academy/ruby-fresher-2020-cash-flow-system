class UsersController < ApplicationController
  before_action :get_user, only: %i(show edit update)
  before_action :get_group, only: %i(new create edit)

  def new
    @user = User.new
  end

  def show; end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = t "user.noti.sigup"
      redirect_to home_path
    else
      flash.now[:danger] = t "user.noti.sigup_fail"
      render :new
    end
  end

  def edit; end

  def update
    if @user.update user_params_update
      flash[:success] = t "user.noti.update"
      redirect_to home_path
    else
      flash[:danger] = t "user.noti.update_fail"
      render :edit
    end
  end

  private

  def get_user
    @user = User.find_by id: params[:id]
    return if @user

    flash[:danger] = t "user.noti.show_fail"
    redirect_to home_path
  end

  def user_params
    params.require(:user).permit User::USERS_PARAMS
  end

  def user_params_update
    params.require(:user).permit User::USERS_PARAMS_UPDATE
  end
end
