require 'rails_helper'

 describe RecipesController do 
  let(:recipe){Recipe.create!(name: "pizza",description: "Easy italian dish", instructions: "Make the dough, add some cheese and bake fo 45 minutes",ingredients:"bla",)}


  describe "GET #new" do
    it 'creates a new recipe as @recipe' do
      get :new
      expect(assigns(:recipe)).to be_a(Recipe)
    end
  end

  describe "POST #create" do


    context "when valid params are passed" do
        it 'creates a new Recipe' do
          FactoryGirl.create(:recipe).should be_valid
      end
    end

end
