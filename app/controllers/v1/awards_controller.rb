class V1::AwardsController < V1::BaseController
  def create
    @award = Award.new award_params
    @award.save
  end

  def update
    @award = Award.find id_params
  end

  def index
    @awards = []
  end

  def show
    @award = Award.find id_params
  end

  def destroy
    @award = Award.find id_params
  end

  protected

  def award_params
    params.require(:award).permit(:title, :text, :requisite)
  end
end
