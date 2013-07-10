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
    @user.role = 'user'
    if @user.save
      redirect_to root_url, notice: 'Successfully registered!'
    else
      render 'new'
    end
   end

  def edit
    @user = current_user
     render :edit
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to root_url, notice: 'Successfully registered!'
    else
      render 'edit'
    end
   end

end
