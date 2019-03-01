class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.string :specialty
      t.string :license_state
      t.string :license_number
      t.boolean :accepts_new_patients
      t.string :city
      t.string :state
      t.string :street
      t.string :zip
      t.string :website

      t.timestamps
    end
  end
end
