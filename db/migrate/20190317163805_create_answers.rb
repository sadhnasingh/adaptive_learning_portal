class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.boolean :check1
      t.boolean :check2
      t.boolean :check3
      t.boolean :check4
      t.boolean :skip

      t.timestamps
    end
  end
end
