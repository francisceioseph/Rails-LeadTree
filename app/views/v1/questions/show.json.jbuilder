json.question do
  json.text @question.text
  json.options @question.options do |option|
    json.title option.title
    json.text  option.text
  end
end

