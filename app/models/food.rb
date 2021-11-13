class Food < ApplicationRecord
  belongs_to :user
  has_one :ingredient, dependent: :destroy
  mount_uploader :image, ImageUploader
  
end
