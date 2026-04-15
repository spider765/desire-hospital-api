class AddDoctorForeignKeyToAppointments < ActiveRecord::Migration[8.0]
  def change
    # Add foreign key only if it doesn't exist
    unless foreign_key_exists?(:appointments, :doctors)
      add_foreign_key :appointments, :doctors
    end

    # Add index only if it doesn't exist
    unless index_exists?(:appointments, :doctor_id)
      add_index :appointments, :doctor_id
    end
  end
end