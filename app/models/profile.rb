class Profile < ActiveRecord::Base

  validates_length_of :name, minimum: 3, allow_blank: false
  validates_presence_of :phone
  validates_plausible_phone :phone
  validates_length_of :about_me, maximum: 200, allow_blank: false
  validates_length_of :city, minimum: 3
  validates_length_of :region, minimum: 2

  phony_normalize :phone, default_country_code: 'BR'
end
