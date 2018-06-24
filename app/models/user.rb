class User < ApplicationRecord
  # Associates this user many relationships with users they like (likees) & their likers.
	has_many :likee_relationships, class_name: 'Relationship', dependent: :destroy
	has_many :liker_relationships, class_name: 'Relationship', dependent: :destroy
	# Associates this user with likees (whom this user liked/dislike) & likers (who liked/disliked this user) through the relationships above.
	has_many :likees, through: :likee_relationships, source: :likees
	has_many :likers, through: :liker_relationships, source: :liker
	# :source key isn't really needed since the :likers/:likees attribute are the plurals of :liker/:likee. Added for clarity.
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :age, :image, :formation, presence: true, on: :update
  validates :age, inclusion: { in: 18..60 }, on: :update
  validates :image, uniqueness: true, on: :update
end
