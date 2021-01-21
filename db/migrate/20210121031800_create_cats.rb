class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :gender
      t.string :age
      t.string :color
      t.boolean :good_with_cats
      t.boolean :good_with_dogs
      t.boolean :declawed
      t.boolean :special_needs
      t.text :description
      t.string :image_url

      t.timestamps
      
    end

    add_reference :cats, :user, foreign_key: true
  end
end
