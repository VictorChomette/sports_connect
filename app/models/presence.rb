class Presence < ApplicationRecord
  attr_accessor :day

  belongs_to :field
  belongs_to :user

  validates :date, presence: true
end
