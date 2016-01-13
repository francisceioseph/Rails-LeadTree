class Post < ActiveRecord::Base
  belongs_to :classroom

  validates_presence_of :text
end
