class UpdateServicesRemoveIconAddImageUrl < ActiveRecord::Migration[7.1]
  def change
    remove_column :services, :icon, :string
    add_column :services, :image_url, :string
  end
end
