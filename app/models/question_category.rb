class QuestionCategory < ApplicationRecord
	has_many :questions
	belongs_to :chapter
end
