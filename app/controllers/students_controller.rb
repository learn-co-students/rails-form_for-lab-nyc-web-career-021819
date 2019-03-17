class StudentsController < ApplicationController
  def index
   @students = Student.all
   render :index
 end

 def new
   @student = Student.new
   render :new
 end

 def create
   @student = Student.create(student_class_params)
   redirect_to student_path(@student)
 end

 def show
   @student = Student.find(params[:id])
 end

 def edit
   @student = Student.find(params[:id])
 end

 def update
   @student = Student.find(params[:id])
   @student.update(student_class_params)
   redirect_to student_path(@student)
 end

 private
 def student_class_params
   params.require(:student).permit(:first_name, :last_name)
 end


end
