class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    student = Student.create(student_params)
    redirect_to new_student_path
  end

end
