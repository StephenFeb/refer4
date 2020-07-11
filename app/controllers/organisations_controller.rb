class OrganisationsController < ApplicationController

def index
    @organisation = Organisation.all
end

def show
    @organisation = Organisation.find(params[I:id])
end

def new
    @organisation = Organisation.new
end

def create
    @organisation = Organisation.new(organisation_params)

    if @organisation.save
      redirect_to organisation_path(@organisation)
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
end

def edit
    @organisation = Organisation.find(params[:id])
end

def update
end


def destroy
    @organisation = Organisation.find(params[:id])
    @organisation.destroy
    redirect_to organisation_path, notice: 'Organisation was successfully deleted'
  end

    
    private

    def organisation_params
        params.require(:organisation).permit(:name, :sector, :description, :culture)
end
