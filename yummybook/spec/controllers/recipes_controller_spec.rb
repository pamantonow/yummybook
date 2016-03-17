require 'rails_helper'

 describe RecipesController do 
  let(:recipe){Recipe.create!(name: "pizza",description: "Easy italian dish", instructions: "Make the dough, add some cheese and bake fo 45 minutes")}


  describe "GET #new" do
    it 'creates a new recipe as @recipe' do
      get :new
      expect(assigns(:recipe)).to be_a(Recipe)
    end
  end

  describe "POST #create" do

    before :each do 
      @new_recipe = {recipe: {name: "pizza",description: "Easy italian dish", instructions: "Make the dough, add some cheese and bake fo 45 minutes",category_id: 1, user_id:1,avatar_file_name: "avatar",avatar_content_type:"avatar",avatar_file_size:1}}
      post :create, @new_recipe
    end
  end

  # context "when valid params are passed" do
  #     it 'creates a new Recipe' do
  #       expect(assigns(:recipe)).to be_a(Recipe)
  #      end
  #   end


end
