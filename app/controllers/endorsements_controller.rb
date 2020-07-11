class EndorsementsController < ApplicationController

    def create
        @endorsement = Endorsement.new(endorsement_params)
        @user = User.find(params[:user_id])
        @endorsement.user_id = current_user.id
        @endorsement.user = @user
        if @endorsement.save
          redirect_to user_path(@user)
        else
          flash[:alert] = "Something went wrong."
          render :new
        end
      end
    
     private
    
      def endorsement_params
        params.require(:endorsement).permit(:endorsement)
      end
    end

end
