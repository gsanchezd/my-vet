class Customer < ActiveRecord::Base
	belongs_to :veterinary
	has_many :pets, dependent: :destroy

	validates :name, :email, :phone, presence: true
	
end
