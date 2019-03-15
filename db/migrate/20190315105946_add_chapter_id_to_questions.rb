class AddChapterIdToQuestions < ActiveRecord::Migration[5.1]
  def change
  	add_column :questions, :chapter_id, :integer
  end
end
