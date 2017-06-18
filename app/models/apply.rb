class Apply < ApplicationRecord
  belongs_to :user
  belongs_to :recruitment
  has_many :campany, through: :campany_applies
  has_many :campany_applies
end
