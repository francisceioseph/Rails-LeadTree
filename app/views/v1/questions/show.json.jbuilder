json.question do
  json.id   @question.id
  json.text @question.text
  json.options @question.options do |option|
    json.id    option.id
    json.title option.title
    json.text  option.text
  end
end

