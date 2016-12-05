class User < ActiveRecord::Base
	
  has_many :recipes
  has_many :saved_categories, through: :recipes, source: :category
  validates :username, presence: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, presence: true , uniqueness: true

  has_secure_password

  

end
