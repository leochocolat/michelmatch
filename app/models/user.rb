class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :age, :image, :formation, presence: true
  validates :age, inclusion: { in: 18..60 }
  validates :image, uniqueness: true
end
