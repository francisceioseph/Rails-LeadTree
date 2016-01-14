class ExerciseList < ActiveRecord::Base
  has_many :questions
  has_many :exercise_answers

  belongs_to :classroom

  validates_presence_of :title
end
