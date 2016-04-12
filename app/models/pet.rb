class Pet < ActiveRecord::Base
	belongs_to :veterinary
	belongs_to :customer
	has_many :visits
	validates :name, :breed, presence: true
	
end
