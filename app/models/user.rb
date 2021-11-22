class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #un utilisateur peut avoir plusieurs terrains et favoris
  has_many :favorite_fields, through: :favorites, source: :fields
  # @user.favorite_fields ==> tous les fields favoris de ton user

  validates :age, :favorite_sports, presence: true
  validates :username, presence: true, uniqueness: true
end
