class Pub < ApplicationRecord
  DISTRICTS = [
    "Alna",
    "Bjerke",
    "Frogner",
    "Gamle Oslo",
    "Grorud",
    "Grünerløkka",
    "Nordre Aker",
    "Nordstrand",
    "Sagene",
    "St. Hanshaugen",
    "Stovner",
    "Søndre Nordstrand",
    "Ullern",
    "Vestre Aker",
    "Østensjø"
  ]

  validates :name, presence: true, uniqueness: true
  validates :address, :description, :photo, presence: true
  validates :district, presence: true, inclusion: { in: DISTRICTS }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
