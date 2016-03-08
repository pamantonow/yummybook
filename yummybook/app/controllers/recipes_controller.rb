class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
    render :'recipes/new'
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.category
    if @recipe.save
      redirect_to profile_path
    else
     @errors = @recipe.errors.full_messages
     render :'recipes/new'
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render :'recipes/show'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name,:description,:ingredients,:instructions)
  end

end
