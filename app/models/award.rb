class Award < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :text
  validates_presence_of :requisite
end
