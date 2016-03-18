class Pet < ActiveRecord::Base
	belongs_to :veterinary
	belongs_to :customer

	validates :name, :breed, presence: true
	
end
