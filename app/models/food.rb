class Food < ApplicationRecord
  belongs_to :user
  has_one :ingredient, dependent: :destroy
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :ingredient
end
