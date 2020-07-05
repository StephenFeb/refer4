class OrganisationsController < ApplicationController

def index
    @organisation = Organisation.all
end


    
    private

    def organisation_params
        params.require(:organisation).permit(:name, :sector, :description, :culture)
end
