json.exercise_list do
  json.id    @list.id
  json.title @list.title
  json.questions @list.questions do |question|
    json.id   question.id
    json.text question.text
  end
end
