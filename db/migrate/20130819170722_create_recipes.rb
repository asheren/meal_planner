class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :recipe_id
      t.string :recipe_link
      t.string :recipe_description

      t.timestamps
    end
  end
end
