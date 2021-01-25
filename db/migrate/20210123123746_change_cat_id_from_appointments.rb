class ChangeCatIdFromAppointments < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :appointments, :cats
    add_foreign_key :appointments, :cats, on_delete: :cascade
  end
end
