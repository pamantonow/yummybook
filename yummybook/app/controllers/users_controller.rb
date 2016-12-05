class UsersController < ApplicationController

  def new
    @user = User.new
    render :'users/new'
  end

  def create
    @user = User.new(users_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      @errors = @user.errors.full_messages
      render :'users/new'
    end
  end

  def show
    # @recipes= Recipe.search(params[:name]) 
    @user = User.find(current_user)
    @categories = Category.all
    render :'users/show'
  end

  private

  def users_params
    params.require(:user).permit(:username,:email,:password)
  end

end
