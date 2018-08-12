class StudentsController < ApplicationController
    def index
        @students = Student.all
    end
    
    def show
        @student = Student.find(params[:id])
    end

    def new

    end

    def create
        new_student = Student.create(params[:student])
        redirect_to(student_path(new_student))
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        student = Student.find(params[:id])
        student.update(params[:student][:first_name], params[:student][:last_name])
        redirect_to(student_path(student))
    end
end