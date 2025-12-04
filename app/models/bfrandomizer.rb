class Bfrandomizer < ApplicationRecord
  belongs_to :user

  def self.random
    order("Random()").first
  end

end
