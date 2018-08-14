class SchoolClasses < ApplicationController

  def index
    @school_classes = SchoolClasses.all
  end

  def show
    @school_class = SchoolClasses.find(params[:id])
  end

  def create
    @school_class
  end

  def update
  end

  def edit
  end

end
