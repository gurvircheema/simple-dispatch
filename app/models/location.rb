class Location < ApplicationRecord
  validates_presence_of :name, :street, :city, :state
  belongs_to :company
end
