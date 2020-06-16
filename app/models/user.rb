class User < ApplicationRecord
  include Clearance::User

  has_many :matches
  has_many :dogs, through: :matches
  has_many :reviews, through: :matches
  has_many :session, through: :matches
end
