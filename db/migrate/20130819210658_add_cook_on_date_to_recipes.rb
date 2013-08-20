class AddCookOnDateToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :cook_on, :string
  end
end
