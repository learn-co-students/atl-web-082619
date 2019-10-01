class ApplicationController < ActionController::Base

    helper_method :current_user

    def current_user
        # memoization
        if @current_user
            return @current_user
        elsif !session[:user_id].nil?  
            @current_user = User.find(session[:user_id])
        else # not logged in
            return nil
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        redirect_to login_path unless logged_in?
    end

    def admin?
        current_user[:admin]
    end

    def authorized_admin
        redirect_to login_path unless admin?
    end
end
