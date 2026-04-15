class CreateAppointments < ActiveRecord::Migration[8.0]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :doctor_id
      t.date :appointment_date
      t.time :appointment_time
      t.text :notes

      t.timestamps
    end
    add_foreign_key :appointments, :doctors
   add_index :appointments, :doctor_id
 
  end
end
