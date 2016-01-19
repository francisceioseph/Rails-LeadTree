class Classroom < ActiveRecord::Base

  has_many :posts
  has_many :exercise_lists
  has_many :awards

  has_many :enrollments
  has_many :students, through: :enrollments

  belongs_to :teacher

  validates_length_of :access_code, minimum: 7
  validates_length_of :subject, minimum: 3

  def number_of_posts
    posts.count
  end

  def number_of_awards
    awards.count
  end

  def number_of_lists
    exercise_lists.count
  end
end
