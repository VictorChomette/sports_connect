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
end
