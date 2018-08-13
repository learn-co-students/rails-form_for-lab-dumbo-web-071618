class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create first_name: params[:student][:first_name],last_name: params[:student][:last_name]
    redirect_to student_path @student
  end

  def show
    set_student
  end

  def edit
    set_student
  end

  def update
    @student = Student.find params[:id]
    @student.update(params.require(:student))
    redirect_to student_path @student
  end

  private
    def set_student
      @student = Student.find params[:id]
    end
end
