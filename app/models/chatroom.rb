class Chatroom < ApplicationRecord
  belongs_to :field
  has_many :users
  has_many :messages
end
