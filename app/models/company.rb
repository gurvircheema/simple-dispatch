class Company < ApplicationRecord
  validates_presence_of :name, :street, :city, :state, :zip,
                        :contact, :phone, :email, :currency
  has_many :employees
  has_many :customers
end
