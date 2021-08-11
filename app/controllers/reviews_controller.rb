class ReviewsController < ApplicationController
    # run actions to be performed before the specified methods
    before_action :authenticate_user!
    before_action :set_program, only: [:create, :destroy]

    # create a new review object
    # assign current user as the owner ow the comment
    # assign the program defined in the private set_program method as the program that the review belongs to
    def create
        @review = Review.new(review_params)
        @review.user = current_user
        @review.program = @program
        @review.save
        redirect_to program_path(@program)
        flash[:alert] = "Review content can't be blank!" if @review.errors.full_messages.any?
    end

    # determine the review that exists in the program's reviews_to_receive relation by the id param and destroy that review
    def destroy
        @review = @program.reviews_to_receive.find(params[:id])
        @review.destroy
        redirect_to program_path(@program)
    end

    private
    # allow paramaters passed in through the forms to be saved into the database
    def review_params
        params.require(:review).permit(:content, :title, :rating)
    end

    # define the program object as the current program
    def set_program
        @program = Program.find(params[:program_id])
    end
end
