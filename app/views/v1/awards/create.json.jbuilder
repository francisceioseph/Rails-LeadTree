if @award.errors.blank?
  json.award do
    json.id        @award.id
    json.title     @award.title
    json.text      @award.text
    json.requisite @award.requisite
  end
end

json.errors @award.errors.full_messages
