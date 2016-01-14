json.exercise_answer do
  if @exercise_answer.errors.blank?
    json.submitted_at @exercise_answer.submitted_at
  end
  
  json.errors @exercise_answer.errors.full_messages
end

