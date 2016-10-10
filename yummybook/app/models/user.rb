class User < ActiveRecord::Base
	include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  has_many :recipes
  has_many :saved_categories, through: :recipes, source: :category
  validates :username, presence: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, presence: true , uniqueness: true

  has_secure_password

  mapping do 
  	indexes :recipes
  end

  def as_indexed_json
 	 self.as_json({
    only: [:username],
    include: {
      author: { :id, :name, :description, :ingredients, :instructions},
  	})
	end

end
