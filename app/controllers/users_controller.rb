class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  
  def index
      @users = User.all
      
      render json: UserSerializer.new(@users)
  end

  
  def show
      render json: UserSerializer.new(@user)
  end


private
  
  def set_user
      @user = User.find(params[:id])
  end


  def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
  
end
