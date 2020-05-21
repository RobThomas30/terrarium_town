class ProfilesController < ApplicationController

  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user.profile
    if @user.update(profile_params)
    redirect_to dashboard_path
    else
      render 'edit'
    end
  end

  private

  def profile_params
    params.require(:user).permit(:username, :location)
  end
end
