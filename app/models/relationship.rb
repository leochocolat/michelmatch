class Relationship < ApplicationRecord
  belongs_to :liker
  belongs_to :likee

  validates :liker_id, presence: true
	validates :likee_id, presence: true
end
