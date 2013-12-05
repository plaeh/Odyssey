json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :opening_blurb_hook, :closing_blurb, :image, :name
  json.url quiz_url(quiz, format: :json)
end
