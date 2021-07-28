class UsersController < ApplicationController
    def page
        @coached_programs = current_user.programs_to_coach.all
        @attended_programs = current_user.programs_to_attend.all
    end



end
