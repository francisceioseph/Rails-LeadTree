class ExerciseAnswer < ActiveRecord::Base
  has_many :question_answers

  belongs_to :exercise_list

  validates_presence_of :submitted_at
end
