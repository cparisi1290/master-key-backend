class ApplicationController < ActionController::API 

    def current_user
        # hardcode user
        User.first
    end

    def logged_in?
        # mock current user
        !!current_user
    end
end
