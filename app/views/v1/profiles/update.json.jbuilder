if @profile.errors.blank?
  json.name     @profile.name
  json.phone    @profile.phone
  json.about_me @profile.about_me
  json.city     @profile.city
  json.region   @profile.region
end

json.errors   @profile.errors.full_messages
