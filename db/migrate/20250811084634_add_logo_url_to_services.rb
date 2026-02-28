class AddLogoUrlToServices < ActiveRecord::Migration[8.0]
  def change
    add_column :services, :logo_url, :string
  end
end
