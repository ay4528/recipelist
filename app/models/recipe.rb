class Recipe < ApplicationRecord
  attachment :image
  belongs_to :user
  
  validates :title, presence: true, length: { maximum: 255 }
  validates :material, :make, :point, presence: true
end
