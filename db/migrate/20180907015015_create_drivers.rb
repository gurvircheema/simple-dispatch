class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :phone
      t.string :cell_phone
      t.boolean :is_company_driver
      t.boolean :is_owner_operator
      t.string :email
      t.string :sin
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :date_of_birth
      t.string :license_number
      t.datetime :license_expiry_date
      t.datetime :license_issue_date
      t.string :license_province
      t.string :passport
      t.string :passport_issue_country
      t.string :citizenship_country
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
