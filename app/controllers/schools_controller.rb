class SchoolsController < ApplicationController

  def index
    @schools = School.all
    render :index
  end

  def new
    @school = School.new
    render :new
  end

  def create
    School.create(school_params)
    redirect_to schools_path
  end

  def show
    @school = School.find(params[:id])
    render :show
  end
  #
  def edit
    @school = School.find(params[:id])
    render :edit
  end


  def update
    @school = School.find(params[:id])
    @school.update(school_params)
    redirect_to schools_path
  end

  private

  def school_params
    params.require(:school).permit(:title, :roon_number)
  end

end
