class ReviewsController < ApplicationController
    before_action :authenticate_user!

    def create
        @program = Program.find(params[:program_id])
        @review = Review.new(review_params)
        @review.user = current_user
        @review.program = @program
        @review.save
        redirect_to program_path(@program)
    end

    # def show 
    # end

    # def update 
    #     program = Program.find(params[:program_id])
    #     @review = Review.find_by(user: current_user, program: program )
    #     @review.update(review_params)
    # end

    def destroy
        @program = Program.find(params[:program_id])
        @review = @program.reviews_to_receive.find(params[:id])
        @review.destroy
        redirect_to program_path(@program)
    end

    private
    def review_params
        params.require(:review).permit(:content, :title, :rating)
    end
end
