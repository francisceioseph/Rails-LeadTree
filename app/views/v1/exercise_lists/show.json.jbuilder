json.exercise_list do
  json.title @list.title
  json.questions @list.questions do |question|
    json.text question.text
  end
end
