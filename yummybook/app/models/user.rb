class User < ActiveRecord::Base
  has_many :users_recipes
  has_many :created_recipes, through: :users_recipes , source: :recipe
  validates :username, presence: true
  validates :email ,presence: true , uniqueness: true

  has_secure_password
end
