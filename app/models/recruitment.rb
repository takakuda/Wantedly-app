class Recruitment < ApplicationRecord
  belongs_to :campany

  mount_uploader :image, ImageUploader
  
end
