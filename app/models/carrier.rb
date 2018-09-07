class Carrier < ApplicationRecord
  belongs_to :company

  validates_presence_of :name, :city, :state, :country, :zip, :email
  validates_uniqueness_of :name
end
