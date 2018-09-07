class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :cauntry
      t.string :zip
      t.string :phone
      t.string :fax
      t.string :contact
      t.text :notes
      t.string :email
      t.string :website
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
