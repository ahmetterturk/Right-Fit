class ProfilesController < ApplicationController
    # run the set_profile private method before listed methods
    before_action :set_profile, only: [:edit, :update, :delete]

    def index
    end

    def show
    end

    # define new profile object to be passed into the form
    def new
        @profile = Profile.new
    end 


    # create a new profile object with the params rendered through the new profile form
    # assign the created profile to the current user and set up a one-to-one database relationship between user and profile
    # if any errors encountered dure to validation issues, redirect to the same form displaying error messages
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

    # retreive the existing profile that is defined in the set_profile private method
    def edit
    end

    # update an existing profile object with the params rendered through the edit profile form
    # redirect to the user's profile page and display new profile values
    # if any errors encountered dure to validation issues, redirect to the same form displaying error messages
    def update
        if @profile.update(get_program_params)
            redirect_to profile_path(current_user)
        else
            flash.alert = @profile.errors.full_messages.join(', ')
            redirect_to edit_profile_path 
        end
    end

    # delete the profile object retrieved from the private set_profile method and redirect to the user's page
    def delete
        @profile.destroy
        redirect_to user_page_path(current_user)
    end

    private
    # allow paramaters passed in through the forms to be saved into the database
    def get_program_params
        params.require(:profile).permit(:age, :height, :weight, :body_fat_percentage)
    end

    # define the profile object as the current user's profile
    def set_profile
        @profile = current_user.profile 
    end
end
