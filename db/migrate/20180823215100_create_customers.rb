class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :billing_address_line_1
      t.string :billing_address_line_2
      t.string :billing_city
      t.string :billing_province
      t.string :billing_country
      t.string :billing_zipcode
      t.string :phone
      t.string :cell_phone
      t.string :fax
      t.string :contact
      t.integer :terms,     precision: 4, scale: 2
      t.integer :credit,    precision: 8, scale: 2
      t.integer :quick_pay, precision: 4, scale: 2
      t.string :email
      t.string :website
      t.string :notes
      t.string :invoice_transmit_method
      t.string :proof_of_delivery
      t.string :shipping_address_line_1
      t.string :shipping_address_line_2
      t.string :shipping_city
      t.string :shipping_province
      t.string :shipping_country
      t.string :shipping_zipcode
    end
  end
end
