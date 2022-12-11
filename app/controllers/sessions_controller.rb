class SessionsController < ApplicationController
  def new
   
  end

  def create
       user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  # 現在のユーザーをログアウトする
  def log_out
    session.delete(:user_id)
    @current_user = nil
end
  def destroy
      log_out
      redirect_to root_path
  end
  # 渡されたユーザーでログインする
  def log_in(user)
      session[:user_id] = user.id
  end
  
  
end
