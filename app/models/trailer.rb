class Trailer < ApplicationRecord
  belongs_to :truck
  belongs_to :company

  validates_presence_of :unit_number, :make, :model, :year,
                        :plate_number, :vin, :state, :country
end
