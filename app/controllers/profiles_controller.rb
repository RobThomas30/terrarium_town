class ProfilesController < ApplicationController

  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    current_user.profile.update(profile_params)
    redirect_to profile_path
  end

  private

  def profile_params
    params.require(:user).permit(:username, :location)
  end
end
