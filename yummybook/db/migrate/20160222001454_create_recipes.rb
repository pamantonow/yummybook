class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :ingredients
      t.text :instructions
      t.string :categories

      t.timestamps null: false
    end
  end
end
