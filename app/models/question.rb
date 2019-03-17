class Question < ApplicationRecord
	belongs_to :chapter
	has_one :answer
	# belongs_to :question_category
end
