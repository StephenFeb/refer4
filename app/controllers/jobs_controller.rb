class JobsController < ApplicationController
    before_action :find_job, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

def index
    @job = Job.all
end

def new
    @job = Job.new
end

def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to job_path(@job)
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
end

def edit
end

def destroy
  @job = Job.find(params[:id])
  @job.destroy
  redirect_to job_path, notice: 'Job was successfully deleted'
end

private

def job_params
    params.require(:job).permit(:title, :organisation, :company_id, :location, :salary, :description)
      
      
end
