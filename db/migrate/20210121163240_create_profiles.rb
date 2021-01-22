class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :street
      t.string :street_2
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :tel_number
      t.integer :mobile_number
      t.string :of_age

      t.timestamps
    end
  end
end
