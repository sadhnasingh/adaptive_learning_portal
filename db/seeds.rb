# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1.upto(8) do |i|
User.create(email: "user-#{i}@example.com", password: "12345678", password_confirmation: "12345678" )
end
1.upto(6) do |i|
	@exam = Exam.create(title: "exam-#{i}")
	1.upto(4) do |a|
		@subject = @exam.subjects.create(title: "subject-#{a}", exam_id: @exam.id)
		1.upto(3) do |b|
				@topic = @subject.topics.create(title: "topic-#{b}", subject_id: @subject.id)
				1.upto(2) do |c|
					@chapter = @topic.chapters.create(title: "chapter-#{c}", topic_id: @topic.id)
				1.upto(2) do |d|
				@easy_question = @chapter.questions.create(title: "Easy Question-#{d}", chapter_id: "@chapter.id" , category: "Easy")
					random = rand(1..4)
					check11 = nil
					check22 = nil
					check33 = nil
					check44 = nil
					if random == 1
					check11 = true
					check22 = false
					check33 = false
					check44 = false
					@answer = Answer.create!(question_id: @easy_question.id, option1: "option1",option2: "option2",option3: "option2", option4: "option4",check1: check11, check2: check22, check3: check33, check4: check44, skip: false)
					elsif random == 2
					check11 = false
					check22 = true
					check33 = false
					check44 = false
					@answer = Answer.create!(question_id: @easy_question.id, option1: "option1",option2: "option2",option3: "option2", option4: "option4",check1: check11, check2: check22, check3: check33, check4: check44, skip: false)
					elsif random == 3
					check11 = false
					check22 = false
					check33 = true
					check44 = false
					@answer = Answer.create!(question_id: @easy_question.id, option1: "option1",option2: "option2",option3: "option2", option4: "option4",check1: check11, check2: check22, check3: check33, check4: check44, skip: false)
					else
					random == 4
					check11 = false
					check22 = false
					check33 = false
					check44 = true
					@answer = Answer.create!(question_id: @easy_question.id, option1: "option1",option2: "option2",option3: "option2", option4: "option4",check1: check11, check2: check22, check3: check33, check4: check44, skip: false)
					end
					@medium_question = @chapter.questions.create(title: "Medium Question-#{d}", chapter_id: @chapter.id , category: "Medium")
					random = rand(1..4)
					check11 = nil
					check22 = nil
					check33 = nil
					check44 = nil
					if random == 1
					check11 = false
					check22 = false
					check33 = true
					check44 = false
					@answer = Answer.create!(question_id: @medium_question.id, option1: "option1",option2: "option2",option3: "option2", option4: "option4",check1: check11, check2: check22, check3: check33, check4: check44, skip: false)
					elsif random == 2
					check11 = false
					check22 = true
					check33 = false
					check44 = false
					@answer = Answer.create!(question_id: @medium_question.id, option1: "option1",option2: "option2",option3: "option2", option4: "option4",check1: check11, check2: check22, check3: check33, check4: check44, skip: false)
					elsif random == 3
					check11 = true
					check22 = false
					check33 = false
					check44 = false
					@answer = Answer.create!(question_id: @medium_question.id, option1: "option1",option2: "option2",option3: "option2", option4: "option4",check1: check11, check2: check22, check3: check33, check4: check44, skip: false)
					else
					random == 4
					check11 = false
					check22 = false
					check33 = false
					check44 = true
					@answer = Answer.create!(question_id: @medium_question.id, option1: "option1",option2: "option2",option3: "option2", option4: "option4",check1: check11, check2: check22, check3: check33, check4: check44, skip: false)
					end
					@hard_question = @chapter.questions.create(title: "Hard Question-#{d}", chapter_id: @chapter.id , category: "Hard")
					random = rand(1..4)
					check11 = nil
					check22 = nil
					check33 = nil
					check44 = nil
					if random == 1
					check22 = false
					check33 = false
					check44 = false
					check11 = true
					@answer = Answer.create!(question_id: @hard_question.id, option1: "option1",option2: "option2",option3: "option2", option4: "option4",check1: check11, check2: check22, check3: check33, check4: check44, skip: false)
					elsif random == 2
					check11 = false
					check33 = false
					check22 = true
					check44 = false
					@answer = Answer.create!(question_id: @hard_question.id, option1: "option1",option2: "option2",option3: "option2", option4: "option4",check1: check11, check2: check22, check3: check33, check4: check44, skip: false)
					elsif random == 3
					check11 = false
					check33 = true
					check22 = false
					check44 = false
					@answer = Answer.create!(question_id: @hard_question.id, option1: "option1",option2: "option2",option3: "option2", option4: "option4",check1: check11, check2: check22, check3: check33, check4: check44, skip: false)
					else
					random == 4
					check44 = true
					check11 = false
					check22 = false
					check33 = false
					@answer = Answer.create!(question_id: @hard_question.id, option1: "option1",option2: "option2",option3: "option2", option4: "option4",check1: check11, check2: check22, check3: check33, check4: check44, skip: false)
					end
				end
			end
		end
	end
end