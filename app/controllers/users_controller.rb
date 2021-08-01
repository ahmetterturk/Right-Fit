class UsersController < ApplicationController

    def self_page
        @bmi = calculated_bmi
        @coached_programs = current_user.programs_to_coach.all
        @attended_programs = current_user.programs_to_attend.all
    end

    def coach_page
        @program = Program.find(params[:id])
        coach_id = @program.coach.id
        @coach = User.find(coach_id)
        @coached_programs = @coach.programs_to_coach.all
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
