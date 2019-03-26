class AddCorrectAnswer1ToCorrectAnswers < ActiveRecord::Migration[5.1]
  def change
  	add_column :correct_answers, :correct_answer1, :boolean
  	add_column :correct_answers, :correct_answer2, :boolean
  	add_column :correct_answers, :correct_answer3, :boolean
  end
end
