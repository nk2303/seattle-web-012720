class SessionsController < ApplicationController
    def create 
        @user = User.find_by(username:params[:username])

        byebug
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to @user
        else 
            flash[:notice] = 'wrong'
            redirect_to login_path
        end 
        
    end
end
