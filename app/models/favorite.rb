class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :field

  validates :user, :field, presence: true
end
