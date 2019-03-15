class AddQuestionCategoryIdToQuestions < ActiveRecord::Migration[5.1]
  def change
  	add_column :questions, :question_category_id, :integer
  end
end
