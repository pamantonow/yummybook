class User < ActiveRecord::Base
  has_many :recipes
  validates :username, presence: true
  validates :email ,presence: true , uniqueness: true

  has_secure_password
end
