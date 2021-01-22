class CreateDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveries do |t|
      t.references :cat, null: true, foreign_key: true
      t.string :delivery_date

      t.timestamps
    end
  end
end
