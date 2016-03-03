class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :ingredients
      t.text :instructions
      t.references :category
      t.references :user

      t.timestamps null: false
    end
  end
end
