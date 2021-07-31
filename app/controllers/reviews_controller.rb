class ReviewsController < ApplicationController

    def create
        @review = Review.new(review_params)
        @review.user = current_user 
        @review.program = Program.find(params[:id])
        if @review.save 
            redirect_to program_path(@program)
        else 
            render plain: "Oops, comment could not be made"
        end
    end 


    def delete
        program = Program.find(params[:id])
        @review = Review.find_by(user: current_user, program: program )
        @review.destroy
    end

    private 
    def review_params
        params.require(:review).permit(:content, :title, :rating)
    end

end
