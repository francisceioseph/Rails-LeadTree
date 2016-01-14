class V1::QuestionsController < V1::BaseController
  def create
    @question = Question.new question_params
    @question.save
  end

  def update
    @question = Question.find id_params
    @question.update_attributes question_params
  end

  def index
    @questions = []
  end

  def show
    @question = Question.find id_params
  end

  def destroy
    @question = Question.find id_params
    @question.destroy
  end

  protected

  def question_params
    params.require(:question).permit(:text)
  end
end
