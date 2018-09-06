class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :cell_phone
      t.string :fax
      t.string :email
      t.string :sin
      t.string :job_title
      t.datetime :start_date
      t.datetime :end_date
      t.string :hourly_rate
      t.string :gross_pay
      t.datetime :date_of_birth

      t.timestamps
    end
  end
end
