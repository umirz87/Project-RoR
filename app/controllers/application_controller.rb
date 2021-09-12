class ApplicationController < ActionController::Base
    include Pundit
    private
    def authenticate_user!
        if user_signed_in?
            super
        else
            redirect_to "/users/sign_in"
        end
    end
end
