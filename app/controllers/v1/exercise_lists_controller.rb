class V1::ExerciseListsController < V1::BaseController
  def create
    @list = ExerciseList.new list_params
    @list.save
  end

  def update
    @list = ExerciseList.find id_params
    @list.update_attributes list_params
  end

  def index
    @lists = []
  end

  def show
    @list = ExerciseList.find id_params
  end

  def destroy
    @list = ExerciseList.find id_params
    @list.destroy
  end

  protected

  def list_params
    params.require(:exercise_list).permit(:title)
  end
end
