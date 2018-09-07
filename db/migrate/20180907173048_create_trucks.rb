class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.string :unit_number
      t.string :make
      t.string :model
      t.string :year
      t.string :plate_number
      t.string :type
      t.string :state
      t.string :country
      t.string :vin
      t.boolean :is_company_truck, null: false, default: false
      t.references :driver, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
