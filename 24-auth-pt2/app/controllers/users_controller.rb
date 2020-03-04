class UsersController < ApplicationController
skip_before_action :authorized, only[:new, :create]

def new
    @user = User.new
end

def create
    @user = User.create(user_params)

    redirect_to @user
end 

def show
    
    @user = User.find(params[:id])
end 

def destroy
    @user = User.find(session[:user_id])
    @user.destroy
    redirect_to new_user_path
end 


private 
def user_params
    params.require(:user).permit(:username, :password)
end 

end
