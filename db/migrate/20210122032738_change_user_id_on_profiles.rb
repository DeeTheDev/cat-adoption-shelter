class ChangeUserIdOnProfiles < ActiveRecord::Migration[6.0]
  def change
    change_column :profiles, :user_id, :bigint, :null => true
  end
end
