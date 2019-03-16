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
    @school_class = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
    render :show
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
    render :edit
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path(@school_class)
  end

  def delete
    @school_class = SchoolClass.find(params[:id])
    redirect_to school_classes_path
  end

end
