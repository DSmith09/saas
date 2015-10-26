class ProfilesController < ApplicationController
    def new
        # Form where a user can fill out their OWN profile
        @user = User.find(params[:user_id])
        @profile = @user.build_profile
    end
end