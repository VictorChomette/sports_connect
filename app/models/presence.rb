class Presence < ApplicationRecord
  attr_accessor :day
  attr_accessor :hour

  belongs_to :field
  belongs_to :user

  validates :date, presence: true
end
