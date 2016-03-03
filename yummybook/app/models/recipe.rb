class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  validates :name, :description, :ingredients,:instructions, presence: true
end
