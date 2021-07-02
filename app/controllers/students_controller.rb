class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params_sub)
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params_sub)
    redirect_to student_path(@student)
  end

  private
  def params_sub
    params.require(:student).permit(:first_name, :last_name)
  end
end
