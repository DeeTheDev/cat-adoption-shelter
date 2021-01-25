class RemoveOfAgeFromProfiles < ActiveRecord::Migration[6.0]
  def change
    remove_column :profiles, :of_age, :string
  end
end
