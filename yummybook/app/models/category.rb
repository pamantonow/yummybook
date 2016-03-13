class Category < ActiveRecord::Base
  has_many :recipes
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
