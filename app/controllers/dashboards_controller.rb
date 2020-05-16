class DashboardsController < ApplicationController

  before_action :authenticate_user!

  def show
    user = User.find(params[:id])
    @listings = user.listings
    @user = user.profile
  end

  private

  def profile_params
    params.require().permit()
  end
end
