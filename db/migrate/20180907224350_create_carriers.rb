class CreateCarriers < ActiveRecord::Migration[5.2]
  def change
    create_table :carriers do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :phone
      t.string :cell_phone
      t.string :fax
      t.string :terms
      t.string :quick_pay
      t.string :email
      t.string :website
      t.string :hst_gst
      t.string :contact
      t.text :notes
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
