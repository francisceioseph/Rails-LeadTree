class Teacher < User
  has_many :posts
  has_many :classrooms
  has_many :exercise_lists
end
