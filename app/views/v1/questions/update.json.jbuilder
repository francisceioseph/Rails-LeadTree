if @question.errors.blank?
  json.id          @question.id
  json.subject     @question.subject
  json.access_code @question.access_code
  json.description @question.description

end

json.errors   @question.errors.full_messages
