json.question do
  if @question.errors.blank?
    json.id   @question.id
    json.text @question.text
  end
  
  json.errors @question.errors.full_messages
end

