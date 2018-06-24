class Relationship < ApplicationRecord
  belongs_to :liker
  belongs_to :likee
end
