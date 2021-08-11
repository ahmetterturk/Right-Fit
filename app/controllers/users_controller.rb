class UsersController < ApplicationController

    # query all programs that belong to the user under programs_to_coach relationship and eager load results to improve speed and performance
    # query all programs that belong to the user under programs_to_attend relationship and eager load results to improve speed and performance
    def self_page
        @bmi = calculated_bmi
        @coached_programs = current_user.programs_to_coach.all.includes(:category, image_attachment: :blob)
        @attended_programs = current_user.programs_to_attend.all.includes(:category, image_attachment: :blob)
        if !current_user.profile.nil?
            @client_age = Time.now.year - current_user.profile.age.year
        end
    end

    # determine the program from the params
    # set a coach variable to be passed into the view and determine the id from the program-coach relationship
    # find all programs that belongs to the user through the programs_to_coach relationship and eager load results
    def coach_page
        @program = Program.find(params[:id])
        coach_id = @program.coach.id
        @coach = User.find(coach_id)
        @coached_programs = @coach.programs_to_coach.all.includes(:category, image_attachment: :blob)
    end

    private
    # if the user has an existing profile, calculated the bmi of the profile values
    def calculated_bmi
        user_profile = current_user.profile
        if !user_profile.nil?
            height = user_profile.height 
            weight = user_profile.weight 
            bmi = (weight / ((height / 100) ** 2))
        end
    end
end
