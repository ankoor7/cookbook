class UsersController < ApplicationController
  def new
    @user = User.new
     render :new
  end

  def index
    @users = User.all
    render :index
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
   end
end