Answer.destroy_all
Question.destroy_all
Quiz.destroy_all

require "json"
json = File.read('./space_quizzes.json')
obj = JSON.parse(json)

obj.each do |quiz_json|
  quiz = Quiz.new
  quiz.image = quiz_json['quiz_image']
  quiz.opening_blurb_hook = quiz_json['opening_blurb']
  quiz.closing_blurb = quiz_json['closing_blurb']

  quiz_json['qa'].each do |question_json|
    question = Question.new
    question.image = question_json['question_img']
    question.text = question_json['question']
    quiz.questions << question

    question_json['answers'].each do |answer_json|
      answer = Answer.new
      answer.value = (answer_json['v'] == 1)
      answer.text = answer_json['a']
      question.answers << answer
    end

  end

  quiz.save
end

puts Answer.new
puts Question.new
puts Quiz.new
