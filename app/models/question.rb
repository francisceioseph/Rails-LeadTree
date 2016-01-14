class Question < ActiveRecord::Base
  has_many :options
  has_many :question_answers

  belongs_to :exercise_list

  validates_length_of :text, minimum: 10, allow_blank: false
end
