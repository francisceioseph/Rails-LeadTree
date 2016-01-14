class ExerciseList < ActiveRecord::Base
  has_many :questions
  has_many :exercise_answers

  validates_presence_of :title
end
