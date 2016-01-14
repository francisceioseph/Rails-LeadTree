json.classroom do
  if @classroom.errors.blank?
    json.subject     @classroom.subject
    json.access_code @classroom.access_code
    json.description @classroom.description
  end

  json.errors   @classroom.errors.full_messages
end