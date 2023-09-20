class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.string :reason
      t.string :patient_name
      t.string :patient_email
      t.string :patient_phone
      t.integer :payment_id
      t.decimal :price
      t.string :consultation_type

      t.timestamps
    end
  end
end
