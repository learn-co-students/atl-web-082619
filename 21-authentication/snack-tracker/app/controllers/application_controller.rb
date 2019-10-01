class ApplicationController < ActionController::Base

  helper_method :logged_in_user
  # https://stackoverflow.com/questions/36102575/restrict-access-in-rails-app-only-for-users-logged-in


  # memoization 
  def logged_in_user
      if @logged_in_user
        @logged_in_user.try(:username)
      else
          @logged_in_user = User.find_by(id: session[:user_id])
          @logged_in_user.try(:username)
      end
  end

end
