class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #un utilisateur peut avoir plusieurs terrains et favoris
  has_many :favorite_fields, through: :favorites, source: :fields
  # @user.favorite_fields ==> tous les fields favoris de ton user
  has_many :favorite_sports
  has_many :sports, through: :favorite_sports

  validates :age, presence: true
  validates :username, presence: true, uniqueness: true
end
