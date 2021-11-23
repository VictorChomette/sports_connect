class Sport < ApplicationRecord
  has_many :favorite_sports, dependent: :destroy
  has_many :field_sports, dependent: :destroy
end
