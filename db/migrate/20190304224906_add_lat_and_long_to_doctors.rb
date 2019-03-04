class AddLatAndLongToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :latitude, :string
    add_column :doctors, :longitude, :string
  end
end
