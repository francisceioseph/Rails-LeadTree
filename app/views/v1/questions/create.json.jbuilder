json.question do
  if @question.errors.blank?
    json.text @question.text
  end
  
  json.errors @question.errors.full_messages
end

