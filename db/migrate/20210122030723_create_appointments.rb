class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :cat, null: true, foreign_key: true
      t.string :pickup_date

      t.timestamps
    end
  end
end
