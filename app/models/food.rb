class Food < ApplicationRecord
  belongs_to :user
  has_one :ingredient
  mount_uploader :image, ImageUploader
  
end
