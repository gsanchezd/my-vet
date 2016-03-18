class Veterinary < ActiveRecord::Base
  has_many :users
  has_many :pets
  has_many :customers

  validates :name, presence: true
  
end