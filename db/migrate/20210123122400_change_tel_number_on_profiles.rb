class ChangeTelNumberOnProfiles < ActiveRecord::Migration[6.0]
  def change
    change_column :profiles, :tel_number, :string
    change_column :profiles, :mobile_number, :string
  end
end
