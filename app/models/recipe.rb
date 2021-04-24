class Recipe < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :material, :make, :point, presence: true
end
