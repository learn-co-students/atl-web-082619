class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to snacks_path
    else 
        flash[:error] = "No user found with that name and password combination"
        render :new
    end
  end

  def logout
    session.clear
    redirect_to login_path
  end

end
