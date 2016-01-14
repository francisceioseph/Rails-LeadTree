class Question < ActiveRecord::Base
  belongs_to :exercise_list
  validates_length_of :text, minimum: 10, allow_blank: false
end
