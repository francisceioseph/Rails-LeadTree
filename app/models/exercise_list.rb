class ExerciseList < ActiveRecord::Base
  has_many :questions
  has_many :exercise_answers

  belongs_to :classroom
  belongs_to :teacher

  validates_presence_of :title
end
