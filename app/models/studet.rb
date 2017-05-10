class Studet < ApplicationRecord
	self.primary_key = 'sid'
	validates_uniqueness_of :sid
	has_many :issues
	has_many :allbks, :through => :issues
end
