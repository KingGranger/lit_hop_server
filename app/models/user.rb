class User < ApplicationRecord
  has_many :trips
  has_many :bars, through: :trips
  has_secure_password

  # validates_confirmation_of :password
  # validates :username, presence: true, uniqueness: true, length: {in: 4..25}
  # validates :age, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 21}
end
