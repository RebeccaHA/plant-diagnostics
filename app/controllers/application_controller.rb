class ApplicationController < ActionController::Base
    protect_from_forgery
    helper_method :current_user

   def verfied_user
    !!current_user
   end
   
    def current_user
        @user = User.find_by(id: session[:user_id])
    end
end
