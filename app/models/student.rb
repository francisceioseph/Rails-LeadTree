class Student < User
  has_many :enrollments
  has_many :classrooms, through: :enrollments

  has_many :exercise_answers
end
