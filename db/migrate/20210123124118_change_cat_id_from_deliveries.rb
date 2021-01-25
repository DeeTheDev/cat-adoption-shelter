class ChangeCatIdFromDeliveries < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :deliveries, :cats
    add_foreign_key :deliveries, :cats, on_delete: :cascade
  end
end
