class Match < ApplicationRecord
  belongs_to :user
  belongs_to :dog
  has_many :reviews
  has_many :appointments
end
