class SchoolClassesController < ApplicationController 

    def index
        @school_classes = SchoolClass.all

        render :index
    end

    def new
        @school_class = SchoolClass.new
        render :new

    end

    def create
        # byebug
        @school_class = SchoolClass.create(school_class_params)
        redirect_to @school_class

    end

    def show
        @school_class = SchoolClass.find_by(params[:id])
        # byebug

        render :show

    end

    def edit
        @school_class = SchoolClass.find_by(params[:id])
        render :edit

    end

    def update
        @school_class = SchoolClass.update(school_class_params)

        redirect_to @school_class

    end

    private

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end

end