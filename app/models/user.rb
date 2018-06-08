class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :age, :image, :formation, presence: true, on: :update
  validates :age, inclusion: { in: 18..60 }, on: :update
  validates :image, uniqueness: true, on: :update
  has_one_attached :photo
end
