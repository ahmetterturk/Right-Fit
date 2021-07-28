class ProfilesController < ApplicationController

    def index
        # @profiles = Profile.all
    end

    def show 
        # @profile = Profile.find(params[:id])
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
            render 'new'
        end
    end

    def edit 
        @profile = current_user.profile 
    end

    def update 
        @profile = current_user.profile 
        if @profile.update(get_program_params)
            # redirect_to user_page_path(current_user)
            redirect_to profile_path(current_user)
        else
            render 'edit'
        end
    end

    # did not test this yet
    def delete 
        @profile = current_user.profile 
        @profile.destroy
        redirect_to user_page_path(current_user)
    end

    private
    def get_program_params
        params.require(:profile).permit(:age, :height, :weight, :body_fat_percentage)
    end
end
