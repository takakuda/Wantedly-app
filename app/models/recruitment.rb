class Recruitment < ApplicationRecord
  belongs_to :campany
  belongs_to :user
  has_many :users, through: :applies

  mount_uploader :image, ImageUploader
end
