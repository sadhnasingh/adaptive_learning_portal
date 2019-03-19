class CreateCorrectAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :correct_answers do |t|
      t.integer :user_id
      t.boolean :correct_answer
      t.boolean :skip_question
      t.integer :question_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
