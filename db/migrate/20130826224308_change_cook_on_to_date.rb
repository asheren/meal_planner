class ChangeCookOnToDate < ActiveRecord::Migration
  def change
  	remove_column :recipes, :cook_on
  	add_column :recipes, :cook_on, :date, default: Date.today
  end
end
