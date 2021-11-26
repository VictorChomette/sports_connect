class Field < ApplicationRecord
  # Les enum pour fixer des valeurs à des chiffres (ici 0,1,2)
  # Ce qui est cool c'est quon peut faire Field.indoor?
  enum field_type: {
    indoor: 0,
    outdoor: 1,
    indoor_outdoor: 2
  }, _prefix: true

  enum status: {
    open: 0,
    closed: 1,
    work_in_progress: 2
  }, _prefix: true

  # ajout d'une colonne adresse dans laquelle doit etre stoqué l'adresse en question
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many_attached :photos
  # has_many :reviews
  # has_many :presences
  # has_many :favorites
  has_many :field_sports

  has_many :reviews, dependent: :destroy

  has_many :presences, dependent: :destroy

  has_many :sports, through: :field_sports
  has_many :favorites

  validates :address, :status, presence: true
  validates :name, presence: true, uniqueness: true

  def presences_by_hour(params)
    # params = day=Wed+Nov+24+2021+00%3A00%3A00+GMT%2B0100+%28Central+European+Standard+Time%29&field_id=150
    # month = params.split('+')[1]
    day_num = params.split('+')[2]
    # day = "#{month} #{day_num}"
    slots = presences.where("date_trunc('day', date) = ?", day_num)
                     .group("date_trunc('hour', date)").count
                     .transform_keys { |key| key.hour }
    hours = (9..18).to_a
    hours.each do |hour|
      slots[hour] = 0 unless slots.key?(hour)
    end

    slots.sort.map { |slot| slot.insert(1, slot.first) }
  end

  def average_rating
    return nil if reviews.empty?

    reviews.pluck(:rating).sum.fdiv(reviews.count).round(1)
  end

  def text_rating
    return if average_rating.nil?

    if average_rating < 3
      "Not Good"
    else
      "Good"
    end
  end
end
