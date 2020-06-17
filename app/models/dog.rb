class Dog < ApplicationRecord
  has_many :matches
  has_many :users, through: :matches
  has_many :appointments, through: :matches 
  has_many :reviews, through: :matches

  validates :name, uniqueness: :true
end
