class Bk < ApplicationRecord
	self.primary_key = 'isbn'
	validates_uniqueness_of :isbn
	searchkick
end
