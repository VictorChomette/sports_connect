class Presence < ApplicationRecord
  belongs_to :field
  belongs_to :user

  validates :date, presence: true
end
