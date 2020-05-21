class ProfilesController < ApplicationController
  # load_and_authorize_resource
  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user.profile
    scope = nil
    scope = :user if profile_params.has_key?(:user)
    scope = :profile if profile_params.has_key?(:profile)
    if @user.update(profile_params[scope])
      redirect_to dashboard_path
    else
      render "edit"
    end
  end

  private

  def profile_params
    params.permit(user: [:username, :location], profile: [:username, :location])
  end
end
