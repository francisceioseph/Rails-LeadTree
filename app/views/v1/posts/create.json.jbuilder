if @post.errors.blank?
  json.post do
    json.text @post.text
  end
end

json.errors @post.errors.full_messages
