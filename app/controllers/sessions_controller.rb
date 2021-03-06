class SessionsController < ApplicationController
  def new
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Goodbye.'
  end

  def create
    user = User.find_by_email(params[:email])
    if user
      session[:user_id] = user.id
      redirect_to root_url, notice: 'logged in!'
    else
      flash.now.alert = 'invalid login credentials!'
      render 'new'
    end
  end
end
