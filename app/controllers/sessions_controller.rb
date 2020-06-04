class SessionsController < ApplicationController
    def new

    end

    def create
        user = User.find_by(name: params[:user][:name])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            render :new
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to '/login'
    end

    def google_oauth2
        @user = User.find_or_create_by(name: auth['name']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
        end

        if @user.persisted?
          session[:user_id] = @user.id
          redirect_to user_path(@user)
        else
          flash[:error] = 'There was a problem signing you in through Google. Please register or try signing in later.'
          render :new
        end 
    end
 
    def auth
     request.env['omniauth.auth']
    end


end
