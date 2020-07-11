class ReviewsController < ApplicationController

    def create
        @review = Review.new(review_params)
        @organisation = Organisation.find(params[:organisation_id])
        @review.user_id = current_user.id
        @review.organisation = @organisation
        if @review.save
          redirect_to organisation_path(@organisation)
        else
          flash[:alert] = "Something went wrong."
          render :new
        end
      end
    
     private
    
      def review_params
        params.require(:review).permit(:content)
      end

end
