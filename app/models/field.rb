class Field < ApplicationRecord
  # Les enum pour fixer des valeurs à des chiffres (ici 0,1,2)
  # Ce qui est cool c'est quon peut faire Field.indoor?
  enum field_types: {
    indoor: 0,
    outdoor: 1,
    indoor_outdoor: 2
    }, _prefix: true
    enum status: {
      open: 0,
      closed: 1,
      work_in_progress: 2
      }, _prefix: true

  #ajout d'une colonne adresse dans laquelle doit etre stoqué l'adresse en question
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # has_many :reviews
  # has_many :presences
  # has_many :favorites

  validates :address, :field_types, :status, presence: true
  validates :name, presence: true, uniqueness: true
end
