class UsersController < ApplicationController
    #Prohibits users that do not have accounts to access these pages
    before_action :authenticate_user!
    
    def show
        @user = User.find(params[:id])
    end
    
    def index
        @users = User.all
    end
end