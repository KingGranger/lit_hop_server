class Journey < ApplicationRecord
  belongs_to :user
  has_many :trips
  has_many :bars, through: :trips
end
