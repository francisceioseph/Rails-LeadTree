json.awards @awards do |award|
  json.title     award.title
  json.text      award.text
  json.requisite award.requisite
end

