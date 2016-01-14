class V1::QuestionAnswersController < V1::BaseController
  def create
    @question_answer = QuestionAnswer.new question_answer_params
    @question_answer.save
  end

  def index
    @question_answers = []
  end

  def show
    @question_answer = QuestionAnswer.find id_params
  end


  protected

  def question_answer_params
    params.require(:question_answer)
  end
end
