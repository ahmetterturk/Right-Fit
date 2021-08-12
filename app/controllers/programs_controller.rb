class ProgramsController < ApplicationController
    # run actions to be performed before the specified methods
    before_action :authenticate_user!, only: [:new, :edit, :update, :delete]
    before_action :set_program, only: [:show, :edit, :update, :destroy]
    before_action :set_categories, only: [:new, :create, :edit]

    # define an object that with the ransack gem methods and apply filter according to the params passed in through the search form
    def index
        @q = Program.ransack(params[:q])
        # display all programs in the database, if there are search paramaters passed in through the search form, display the filtered results
        # category and images are eager-loaded to improve performance and speed and resolve the N+1 issue
        @programs = @q.result(distinct: true).includes(:category, image_attachment: :blob)
    end

    # display program in the show view that is defined in the set_program private method
    # query all reviews that belong to the program and eager load users and programs 
    def show
        @reviews = @program.reviews_to_receive.all.includes(:user, :program)
    end

    # define new program model to be passed in to the new form view
    def new
        @program = Program.new
    end

    # create a new program object with the params rendered through the new program form
    # assign the current user to the created program as the coach
    # if any errors encountered dure to validation issues, redirect to the same form displaying error messages
    def create
        @program = Program.new(get_program_params)
        @program.coach = current_user
        if @program.save
            redirect_to program_path(@program.id)
        else
            flash.alert = @program.errors.full_messages.join(', ')
            redirect_to new_program_path 
        end
    end

    # retreive the existing program that is defined in the set_program private method
    def edit
    end

    # update an existing program object with the params rendered through the edit program form
    # redirect to the program show page and display updated program values
    # if any errors encountered dure to validation issues, redirect to the same form displaying error messages
    def update
        if @program.update(get_program_params)
            redirect_to program_path(@program.id)
        else
            flash.alert = @program.errors.full_messages.join(', ')
            redirect_to edit_program_path
        end
    end

    # destroy the program object retrieved from the private set_program method and redirect to the index page
    def destroy
        @program.destroy
        redirect_to programs_path
    end

    private
    # allow paramaters passed in through the forms to be saved into the database
    def get_program_params
        params.require(:program).permit(:title, :description, :duration, :content, :price, :category_id, :coach_id, :image)
    end

    # define the program object as the current program
    def set_program
        @program = Program.find(params[:id])
    end 

    # retreive all categories
    def set_categories
        @categories = Category.all
    end 
end
