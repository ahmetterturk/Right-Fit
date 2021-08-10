class ReviewsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_program, only: [:create, :destroy]

    def create
        @review = Review.new(review_params)
        @review.user = current_user
        @review.program = @program
        @review.save
        redirect_to program_path(@program)
        flash[:alert] = "Review content can't be blank!" if @review.errors.full_messages.any?
    end

    def destroy
        @review = @program.reviews_to_receive.find(params[:id])
        @review.destroy
        redirect_to program_path(@program)
    end

    private
    def review_params
        params.require(:review).permit(:content, :title, :rating)
    end

    def set_program
        @program = Program.find(params[:program_id])
    end
end
