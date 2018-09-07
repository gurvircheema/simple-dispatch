class CreateTrailers < ActiveRecord::Migration[5.2]
  def change
    create_table :trailers do |t|
      t.string :unit_number
      t.string :make
      t.string :model
      t.string :year
      t.string :plate_number
      t.string :state
      t.string :country
      t.string :vin
      t.string :weight
      t.string :price
      t.datetime :start_date
      t.datetime :leave_date
      t.references :truck, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
