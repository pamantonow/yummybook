class RecipesController < ApplicationController

  def index
    @category = Category.find(params[:category_id])
    @recipes = @category.recipes
    render :'recipes/index'
  end

  def new
    @recipe = Recipe.new
    render :'recipes/new'
  end

  def create
    @category = Category.find(params[:recipe][:category_id])
    @recipe = Recipe.new(recipe_params)
    @category.recipes << @recipe
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
    params.require(:recipe).permit(:name,:description,:ingredients,:instructions,:avatar)
  end

end
