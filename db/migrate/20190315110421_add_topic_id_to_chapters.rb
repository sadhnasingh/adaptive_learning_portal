class AddTopicIdToChapters < ActiveRecord::Migration[5.1]
  def change
  	add_column :chapters, :topic_id, :integer
  end
end
