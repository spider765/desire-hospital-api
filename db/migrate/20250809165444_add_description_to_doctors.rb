class AddDescriptionToDoctors < ActiveRecord::Migration[8.0]
  def change
    add_column :doctors, :description, :text
  end
end
