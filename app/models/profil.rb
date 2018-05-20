class Profil < ApplicationRecord
  validates :firstname, :lastname, :age, :photo, :formation, presence: true
  validates :age, inclusion: { in: 18..60 }
  validates :photo, uniqueness: true
end
