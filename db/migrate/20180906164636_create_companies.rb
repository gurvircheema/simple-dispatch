class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :contact
      t.string :phone
      t.string :fax
      t.string :email
      t.string :website
      t.string :HST
      t.string :PST
      t.string :GST
      t.string :us_dot
      t.string :mc_number
      t.string :currency
      t.string :carrier_code
      t.string :scac_code
      t.string :last_invoice_number
      t.string :factory_company
      t.string :factoring_percentage

      t.timestamps
    end
  end
end
