class Allbk < ApplicationRecord
	belongs_to :bk, :foreign_key => "isbn"
	has_one :issu
	has_one :studet, :through => :issu
end
