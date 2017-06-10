class Recruitment < ApplicationRecord
  belongs_to :campany
  has_many :applys

  mount_uploader :image, ImageUploader
end
