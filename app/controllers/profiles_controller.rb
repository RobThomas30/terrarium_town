class ProfilesController < ApplicationController

  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    current_user.profile.update(
      username: [:user][:username],
      location: [:user][:location]
    )
    redirect_to profile_path
  end

  def destroy

  end

  private

  # def profile_params
  #   params.permit(:user, :username, :email, :location)
  # end
end
