class User < ApplicationRecord
  has_many :consultations
  # has_one :randomizer?
end
