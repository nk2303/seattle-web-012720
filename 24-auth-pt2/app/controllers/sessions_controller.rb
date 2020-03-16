class SessionsController < ApplicationController
    skip_before_action :authorized, only[:new, :create]

    

    def create 
        @user = User.find_by(username:params[:username])

        
        if @user && @user.authenticate(params[:password])
            # session[:user_id] = @user.id
            login_user(@user)
            redirect_to @user
        else 
            flash[:notice] = 'wrong'
            redirect_to login_path
        end 
        
    end
    
    def destroy
        session.delete(:user_id)
        flash[:notice] = "Logedout Sucessful"
        byebug
        redirect_to login_path
    end 
end
