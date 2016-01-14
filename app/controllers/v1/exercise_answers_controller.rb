class V1::ExerciseAnswersController < V1::BaseController
  def create
    @exercise_answer = ExerciseAnswer.new exercise_answer_options
    @exercise_answer.save
  end

  def update
    @exercise_answer = ExerciseAnswer.find id_params
  end

  def index
    @exercise_answers = []
  end

  def show
    @exercise_answer = ExerciseAnswer.find id_params
  end

  def destroy
    @exercise_answer = ExerciseAnswer.find id_params
    @exercise_answer.destroy
  end

  protected

  def exercise_answer_options
    params.require(:exercise_answer).permit(:submitted_at)
  end
end
