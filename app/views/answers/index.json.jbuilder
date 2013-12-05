json.array!(@answers) do |answer|
  json.extract! answer, :id, :value, :text, :question_id
  json.url answer_url(answer, format: :json)
end
