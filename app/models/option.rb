class Option < ActiveRecord::Base
  has_many :question_answer

  belongs_to :question

  validates_length_of :title, minimum: 1, maximum: 1, allow_blank: false
  validates_presence_of :text
end
