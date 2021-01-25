class UpdateUsersForeignKey < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :cats, :users
  end
end
