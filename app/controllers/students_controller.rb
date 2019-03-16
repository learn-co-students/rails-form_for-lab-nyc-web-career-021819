class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end


  def create
    @student = Student.create(params_permit)
	  redirect_to student_path(@student)
	end

  def update
    @student = Student.find(params[:id])
    @student.update(params_permit)
    redirect_to student_path(@student)
  end

  private
#strong params
#white list specific attributes
  def params_permit
    params.require(:student).permit(:first_name, :last_name)
  end

end
