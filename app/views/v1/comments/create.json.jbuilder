if @comment.errors.blank?
  json.comment do
    json.text @comment.text
  end
end

json.errors @comment.errors.full_messages
