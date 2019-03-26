class CorrectAnswersController < ApplicationController
	
	def index
	end
	def new
	end
	def create
		pat = CorrectAnswer.new(correct_answer_params)
 		pat.save
 		 if params[:submit_form] == 'submit'
        redirect_to questions_path 
    end
 		# redirect_to @chapter
 		# redirect_to user_steps_path



		
	end
 private
     
 
	def correct_answer_params
      params.require(:correct_answer).permit(:user_id, :correct_answer, :skip_question, :question_id, :answer_id, :correct_answer1, :correct_answer2, :correct_answer3)
    end
end
