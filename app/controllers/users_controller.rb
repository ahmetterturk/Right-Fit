class UsersController < ApplicationController
    # include BMI 


    def page
        @bmi = calculated_bmi
        @coached_programs = current_user.programs_to_coach.all
        @attended_programs = current_user.programs_to_attend.all
    end


    private 
    def calculated_bmi
        user_profile = current_user.profile
        if !user_profile.nil?
            height = user_profile.height 
            weight = user_profile.weight 
            bmi = (weight / ((height / 100) ** 2))
        end
    end
end
