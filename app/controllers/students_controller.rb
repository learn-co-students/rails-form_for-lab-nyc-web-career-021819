class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def new
        @student = Student.new

    end

    def create
        @student = Student.create(student_params)
        redirect_to @student
    end

    def show
        @student = Student.find_by(params[:id])
    end

    def edit
        @student = Student.find_by(params[:id])
    end

    def update
        @student = Student.update(student_params)
        redirect_to @student
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

end