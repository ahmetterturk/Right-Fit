class ProgramsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :edit, :update, :delete]
    # before_action :get_program_params


    def index
        @programs = Program.all 
    end

    def show
        @program = Program.find(params[:id])
    end

    def new
        @categories = Category.all
        @program = Program.new
    end

    def create
        # @category = Category.first 
        @categories = Category.all

        @program = Program.new(get_program_params)
        puts "----------------------------"
        puts @program.title
        puts "----------------------------"
        # @program.category_id = @category.id
        @program.coach = current_user
        if @program.save
            redirect_to program_path(@program.id)
        else
            flash.alert = @program.errors.full_messages
            render 'new'
        end
    end

    # def edit
    #     @categories = Category.all
    #     @program = Program.find(params[:id])
    # end

    # def update
    #     @program = Program.find(params[:id])
    #     if @program.update(@program_params)
    #         redirect_to program_path(@program.id)
    #     else
    #         render 'edit'
    #     end
    # end

    # def delete
    #     @program = Program.find(params[:id])
    #     @program.destroy
    #     redirect_to programs_path
    # end


    private
    def get_program_params
        params.require(:program).permit(:title, :description, :duration, :content, :category_id, :coach_id, :image)
        # @program_params = params.permit(:title, :description, :duration, :content, :category_id, :coach_id)
    end

    
end
