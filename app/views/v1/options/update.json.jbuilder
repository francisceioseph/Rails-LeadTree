if @option.errors.blank?
  json.title @option.title
  json.text  @option.text

end

json.errors   @option.errors.full_messages
