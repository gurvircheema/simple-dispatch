class Driver < ApplicationRecord
  belongs_to :company

  validates_presence_of :first_name, :last_name, :city, :state, :zip,
                        :cell_phone, :email, :start_date, :license_number,
                        :license_expiry_date, :license_province
end
