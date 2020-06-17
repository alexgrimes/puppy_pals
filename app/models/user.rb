class User < ApplicationRecord
  has_many :matches
  has_many :dogs, through: :matches
  has_many :reviews, through: :matches
  has_many :appointments, through: :matches
  has_secure_password 

  def password=(secret)
    hash_pass = BCrypt::Password.create(secret)
    self.password_digest = hash_pass
  end

end
