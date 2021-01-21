class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :gender
      t.string :age
      t.string :color
      t.text :description
      t.string :image_url
      t.string :good_with_cats
      t.string :good_with_dogs
      t.string :declawed
      t.string :special_needs

      t.timestamps
      
    end

    add_reference :cats, :user, foreign_key: true
  end
end
