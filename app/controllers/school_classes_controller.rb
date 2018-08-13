class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create title: params[:school_class][:title],room_number: params[:school_class][:room_number]
    redirect_to school_class_path @school_class
  end

  def show
    set_school_class
  end

  def edit
    set_school_class
  end

  def update
    @school_class = SchoolClass.find params[:id]
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path @school_class
  end

  private
    def set_school_class
      @school_class = SchoolClass.find params[:id]
    end
end
