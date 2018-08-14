class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def index
    @students = Student.all 
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def student_params
    params.require(:post).permit(:first_name, :last_name, :title, :room_number)
  end

end
