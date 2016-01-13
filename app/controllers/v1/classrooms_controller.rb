class V1::ClassroomsController < V1::BaseController
  def create
    @classroom = Classroom.new classroom_params
    @classroom.access_code = ClassroomsHelper.access_code
    @classroom.save
  end

  def update
    @classroom = Classroom.find id_params
    @classroom.update_attributes classroom_params
  end

  def show
    @classroom = Classroom.find id_params
  end

  def index
    @classrooms = []
  end

  def destroy
    @classroom = Classroom.find id_params
    @classroom.destroy
  end

  protected

  def classroom_params
    params.require(:classroom).permit(:subject, :description)
  end
end
