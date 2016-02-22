class CreateUsersRecipes < ActiveRecord::Migration
  def change
    create_table :users_recipes do |t|
      t.references :user
      t.references :recipe

      t.timestamps null: false
    end
  end
end

