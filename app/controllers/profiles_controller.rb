class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(params.require(:profile).permit(:name,:profile_image))
    if @profile.save
      redirect_to profiles_path
    else
      render 'new'
    end
  end

end
