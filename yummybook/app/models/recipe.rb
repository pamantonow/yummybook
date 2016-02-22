class Recipe < ActiveRecord::Base
  has_many :users_recipes
  validates :name, :description, :ingredients, :categories, presence: true
end
