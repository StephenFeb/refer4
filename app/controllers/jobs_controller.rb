class JobsController < ApplicationController
    before_action :find_job, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

def index
    @job = Job.all
end

def new
    @job = Job.new
end

private

def job_params
    params.require(:job).permit(:title, :organisation, :company_id, :location, :salary, :description)
      
      
end
