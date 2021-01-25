class Adge < ActiveRecord::Migration[6.0]
  def change
    add_column :deliveries, :street, :string
    add_column :deliveries, :street_2, :string
    add_column :deliveries, :city, :string
    add_column :deliveries, :state, :string
    add_column :deliveries, :zip_code, :integer
  end
end
