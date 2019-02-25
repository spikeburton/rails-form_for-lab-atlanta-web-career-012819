class StudentsController < ApplicationController
  def new
  end

  def create
    @student = Student.create(params.require(:student))
    redirect_to @student
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to @student
  end
end
