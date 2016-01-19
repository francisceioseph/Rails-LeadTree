class Post < ActiveRecord::Base
  has_many :comments

  belongs_to :classroom
  belongs_to :teacher

  validates_presence_of :text

  def number_of_comments
    comments.count
  end
end
