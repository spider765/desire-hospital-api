class AddTextToServices < ActiveRecord::Migration[8.0]
  def change
    add_column :services, :text, :text
  end
end
