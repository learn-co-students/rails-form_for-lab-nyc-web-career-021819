require "byebug"

class StudentsController < ApplicationController

  def index
    @student = Student.all
   render :index
  end

  def new
    @student = Student.new
    render :new
  end

  def create
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
    render :show
  end

  def edit
    @student = Student.find(params[:id])
    render :edit
  end

  def update
    @student = Student.find(params[:id])
    @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end

  def delete
    @student = Student.find(params[:id])
    redirect_to students_path(@student)
  end

end
