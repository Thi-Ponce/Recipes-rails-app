class ShoppingListController < ApplicationController
  def show
    @user = current_user
    @recipes = @user.recipes
    @total_items = 0
    @total_price = 0
    @recipes.each do |items|
      items.recipe_foods.each do |item|
        @total_items += item.quantity
      end
    end
    @recipes.each do |food|
      food.recipe_foods.includes(:food).each do |recipe_food|
       @total_price += recipe_food.quantity * recipe_food.food.price
      end
    end
  end
end