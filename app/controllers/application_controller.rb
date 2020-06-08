class ApplicationController < ActionController::Base
    protect_from_forgery
    helper_method :current_user

   def require_login
    redirect_to '/plants' unless verified_user
   end
   
    def verified_user
    !!current_user
   end
   
    def current_user
        @user = User.find_by(id: session[:user_id])
    end

   
end
