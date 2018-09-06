class Employee < ApplicationRecord
  validates_presence_of :first_name, :last_name, :city,
                        :state, :email, :cell_phone, :zip
end
