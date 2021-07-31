class ClientProgramsController < ApplicationController
    before_action :authenticate_user!

    def create 
        program = Program.find(params[:program])
        if !current_user.programs_to_attend.include?(program)
            @client_programs = ClientsProgram.create(user: current_user, program: program)
            redirect_to user_page_path(current_user)
        else
            redirect_to programs_path
        end
    end

    def leave_program
        program = Program.find(params[:id])
        current_user.programs_to_attend.delete(program) if current_user.programs_to_attend.include?(program)
        redirect_to user_page_path
    end


    private
    # def purchased? 
    #     program = Program.find(params[:id])
    #     current_user.programs_to_attend.include?(program)
    # end

    # def program
    #     Program.find(params[:program])
    # end
end
