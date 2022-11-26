class ApplicationController < ActionController::Base
    
    private
   
    # ユーザーがログインしていればtrue、その他ならfalseを返す
  def logged_in?
    !current_user.nil?
  end
  # ログイン済みユーザーかどうか確認
  def logged_in_user
    unless logged_in?
      redirect_to login_url
    end
  end
   #受け取ったユーザーがログイン中のユーザーと一致すればtrueを返す
   def current_user?(user)
    user == current_user
  end
  #現在のユーザーを示す
  def current_user
    if session[:user_id]
    #@current_user = @current_user || User.find_by(id: session[:user_id])と同じ意味
       @current_user ||= User.find_by(id: session[:user_id])
    end
  end
end
