json.classrooms @classrooms do |classroom|
  json.id          classroom.id
  json.subject     classroom.subject
  json.access_code classroom.access_code
  json.description classroom.description
end

