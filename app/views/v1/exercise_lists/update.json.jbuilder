if @list.errors.blank?
  json.exercise_list do
    json.id    @list.id
    json.title @list.title
  end
end

json.errors   @list.errors.full_messages
