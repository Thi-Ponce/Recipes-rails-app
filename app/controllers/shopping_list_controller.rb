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
  end
end