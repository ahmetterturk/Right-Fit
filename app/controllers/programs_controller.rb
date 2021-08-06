class ProgramsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :edit, :update, :delete]
    before_action :set_program, only: [:show, :edit, :update, :destroy]
    before_action :set_categories, only: [:new, :create, :edit]

    def index
        @q = Program.ransack(params[:q])
        @programs = @q.result(distinct: true)
    end

    def show
    end

    def new
        @program = Program.new
    end

    def create
        @program = Program.new(get_program_params)
        @program.coach = current_user
        if @program.save
            redirect_to program_path(@program.id)
        else
            # flash.alert = @program.errors.full_messages.first
            flash.alert = @program.errors.full_messages
            redirect_to new_program_path 
        end
    end

    def edit
    end

    def update
        if @program.update(get_program_params)
            redirect_to program_path(@program.id)
        else
            # flash.alert = @program.errors.full_messages.first
            flash.alert = @program.errors.full_messages
            redirect_to edit_program_path
        end
    end

    def destroy
        @program.destroy
        redirect_to programs_path
    end

    private
    def get_program_params
        params.require(:program).permit(:title, :description, :duration, :content, :price, :category_id, :coach_id, :image)
    end

    def set_program
        @program = Program.find(params[:id])
    end 

    def set_categories
        @categories = Category.all
    end 
end
