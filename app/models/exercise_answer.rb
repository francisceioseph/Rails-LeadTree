class ExerciseAnswer < ActiveRecord::Base
  has_many :question_answers

  belongs_to :exercise_list
  belongs_to :student

  validates_presence_of :submitted_at
end
