if @exercise_answer.errors.blank?
  json.id   @exercise_answer.id
  json.submitted_at @exercise_answer.submitted_at
end

json.errors   @exercise_answer.errors.full_messages
