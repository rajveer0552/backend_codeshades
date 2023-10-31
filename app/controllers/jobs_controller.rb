class JobsController < ApplicationController
  def index
    @jobsets = Jobset.all
  end

  def new
    @jobset = Jobset.new
  end

  def create
    @jobset = Jobset.new(jobset_params)
    if @jobset.save
      redirect_to jobs_path, notice: 'Job listing was successfully created.'
    else
      render :new
    end
  end

  private

  def jobset_params
    params.require(:jobset).permit(:name, :qualification, :designation, :resume)
  end
end
