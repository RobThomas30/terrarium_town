class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @profiles = Profile.all
  end

  def show
  end

  def new
    @profile = Profile.new
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save?
      redirect_to @profile, notice: 'Profile was successfully created.'
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        redirect_to @profile, notice: 'Profile was successfully updated.' 
      else
        render :edit 
      end
    end
  end

  def destroy
    @profile.destroy
      redirect_to profiles_url, notice: 'Profile was successfully destroyed.'
    end
  end

  private

    def set_profile
      @profile = current_user.profile
    end

    def profile_params
      params.require(:profile).permit(:username, :location, :rating)
    end
end
