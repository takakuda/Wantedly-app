class Recruitment < ApplicationRecord
  belongs_to :campany
  has_many :users, through: :applies

  mount_uploader :image, ImageUploader
end
