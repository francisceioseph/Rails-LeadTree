class Post < ActiveRecord::Base
  has_many :comments

  belongs_to :classroom

  validates_presence_of :text

  def number_of_comments
    comments.count
  end
end
