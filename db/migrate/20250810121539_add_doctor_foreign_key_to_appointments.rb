class AddDoctorForeignKeyToAppointments < ActiveRecord::Migration[8.0]
  def change
     add_foreign_key :appointments, :doctors
     add_index :appointments, :doctor_id
   end
end
