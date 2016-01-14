class QuestionAnswer < ActiveRecord::Base
  belongs_to :exercise_answer
  belongs_to :question
  belongs_to :option
end
