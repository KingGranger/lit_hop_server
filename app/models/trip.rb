class Trip < ApplicationRecord
  belongs_to :journey
  belongs_to :bar
end
