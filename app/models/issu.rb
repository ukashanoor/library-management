class Issu < ApplicationRecord
	belongs_to :studet, :foreign_key => "sid"
	belongs_to :allbk #:foreign_key => "id"
	validates_uniqueness_of :allbk
end
