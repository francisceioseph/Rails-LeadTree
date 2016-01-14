class V1::OptionsController < V1::BaseController
  def create
    @option = Option.new option_params
    @option.save
  end

  def update
    @option = Option.find id_params
    @option.update_attributes option_params
  end

  def index
    @options = []
  end

  def show
    @option = Option.find id_params
  end

  def destroy
    @option = Option.find id_params
    @option.destroy
  end

  protected

  def option_params
    params.require(:option).permit(:title, :text)
  end
end
