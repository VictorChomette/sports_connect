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

  validates :age, presence: true
  validates :username, presence: true, uniqueness: true
end
