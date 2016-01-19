class Teacher < User
  has_many :posts
  has_many :classrooms
end
