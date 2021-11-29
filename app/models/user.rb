class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #un utilisateur peut avoir plusieurs terrains et favoris
  has_many :favorites, dependent: :destroy
  has_many :fields, through: :favorites
  # @user.favorites ==> tous les fields favoris de ton user
  has_many :favorite_sports, dependent: :destroy
  has_many :presences, dependent: :destroy
  has_many :sports, through: :favorite_sports
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  has_many :messages, dependent: :destroy

  validates :age, presence: true
  validates :username, presence: true, uniqueness: true

  def friend_requests
    # user.friend_requests => friendships made by other users (user_id), where I am the friend (friend_id) * confirmed false
    Friendship.where(friend: self, confirmed: false)
  end

  def friends
    Friendship.where('user_id = ? OR friend_id = ?', id, id).where(confirmed: true)
  end
end
