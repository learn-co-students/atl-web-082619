class ApplicationController < ActionController::Base

    helper_method :current_user

    def current_user
        # memoization
        if @current_user
            return @current_user
        elsif cookies[:user_id] != ""   
            @current_user = User.find(cookies[:user_id])
        else
            return nil
        end
    end
end
