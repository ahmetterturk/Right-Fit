class ProfilesController < ApplicationController
    before_action :set_profile, only: [:edit, :update, :delete]

    def index
    end

    def show
    end

    def new
        @profile = Profile.new
    end 

    def create
        @profile = Profile.new(get_program_params)
        @profile.user = current_user
        if @profile.save 
            redirect_to user_page_path(current_user)
        else
            flash.alert = @profile.errors.full_messages.join(', ')
            redirect_to new_profile_path 
        end
    end

    def edit
    end

    def update
        if @profile.update(get_program_params)
            redirect_to profile_path(current_user)
        else
            flash.alert = @profile.errors.full_messages.join(', ')
            redirect_to edit_profile_path 
        end
    end

    def delete
        @profile.destroy
        redirect_to user_page_path(current_user)
    end

    private
    def get_program_params
        params.require(:profile).permit(:age, :height, :weight, :body_fat_percentage)
    end

    def set_profile
        @profile = current_user.profile 
    end
end
