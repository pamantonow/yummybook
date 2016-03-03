class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
    render :'recipes/new'
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to profile_path
    else
     @errors = @recipe.errors.full_messages
     render :'recipes/new'
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name,:description,:ingredients,:instructions,:categories)
  end

end
