class Classroom < ActiveRecord::Base

  has_many :posts

  validates_length_of :access_code, minimum: 7
  validates_length_of :subject, minimum: 3

  def number_of_posts
    posts.count
  end
end
