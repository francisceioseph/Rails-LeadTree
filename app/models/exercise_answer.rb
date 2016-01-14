class ExerciseAnswer < ActiveRecord::Base
  belongs_to :exercise_list

  validates_presence_of :submitted_at
end
