class UsersController < ApplicationController

  load_and_authorize_resource


  def dashboard
    @background = 'corkboard.jpg'
  end


  def new
    @user = User.new
     render :new
  end

  def index
    @users = User.where("role = 'user'")
    @admins = User.where("role = 'admin'")
    @background = 'corkboard.jpg'
    render :index
  end

  def create
    @user = User.new(params[:user])
    @user.role = 'user'
    if @user.save
      session[:user_id] ||= @user.id
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
      redirect_to root_url, notice: 'Successfully updated!'
    else
      render 'edit'
    end
   end

end
