class Bar < ApplicationRecord
  has_many :trips
  has_many :users, through: :trips
  has_many :reviews
end
