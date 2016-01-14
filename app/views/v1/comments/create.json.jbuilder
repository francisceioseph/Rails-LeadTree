if @comment.errors.blank?
  json.comment do
    json.id   @comment.id
    json.text @comment.text
  end
end

json.errors @comment.errors.full_messages
