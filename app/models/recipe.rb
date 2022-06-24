class Recipe < ActiveRecord::Base
  belongs_to :users, class_name: 'User'
  has_many :recipe_foods, dependent: :destroy, class_name: 'RecipeFood'

  validates :name, presence: true
  validates :description, presence: true
end
