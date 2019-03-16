class SchoolClassesController < ApplicationController
    def new 
        @school = School.new
    end 

    def create 
        @school = School.create(school_params)
        redirect_to school_path(@school)
    end 

    def edit 
        @school = School.find(pramas[:id])
    end 

    def update 
        @school = School.find(pramas[:id])
        @school.update(school_params)
        redirect_to school_path(@school)
    end 

    def show 
        @school = School.find(pramas[:id])
    end 

private
    def school_params
        
        params.require(:school).permit(:title,:room_number)
        
    end 
end
