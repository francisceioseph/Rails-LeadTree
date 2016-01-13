class V1::ProfilesController < V1::BaseController
  def create
    @profile = Profile.new profile_params
    @profile.save
  end

  def update
    @profile.find id_params
    @profile.update_attributes profile_params
  end

  def show
    @profile.find id_params
  end

  protected

  def profile_params
    params.require(:profile).permit(:name, :phone, :about_me, :city, :region)
  end

end
