class Campany < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :recruitments
  has_many :applies, through: :campany_applies
  has_many :users, through: :applies
  has_many :campany_applies
end
