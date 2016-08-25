class Tag < ApplicationRecord
	has_many :taggings
	has_many :mems, through: :taggings

	def to_s
		name
	end
end
