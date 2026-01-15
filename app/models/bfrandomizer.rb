class Bfrandomizer < ApplicationRecord
  # belongs_to :user, optional: true

  def self.random
    order("Random()").first
  end

end
