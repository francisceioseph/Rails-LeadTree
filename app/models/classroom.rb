class Classroom < ActiveRecord::Base

  validates_length_of :access_code, minimum: 7
  validates_length_of :subject, minimum: 3
end
