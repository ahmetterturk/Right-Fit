# class ClientProgramsController < ApplicationController
#     before_action :authenticate_user!

    # def create 
    #     program = program(params[:program])
    #     if !purchased?(program)
    #         @client_programs = ClientsProgram.create(user: current_user, program: program)
    #         redirect_to user_page_path(current_user)
    #     else
    #         redirect_to programs_path
    #     end
    # end

    # def leave_program
    #     program = program(params[:id])
    #     current_user.programs_to_attend.delete(program) if purchased?(program)
    #     redirect_to user_page_path
    # end

#     private
#     def purchased?(program)
#         current_user.programs_to_attend.include?(program)
#     end

#     def program(params)
#         Program.find(params)
#     end
# end
