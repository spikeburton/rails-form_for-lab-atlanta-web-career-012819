class SchoolClassesController < ApplicationController
  def new
  end

  def create
    # binding.pry
    @school_class = SchoolClass.create(params.require(:school_class))
    redirect_to @school_class
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @student_class = SchoolClass.find(params[:id])
    @student_class.update(params.require(:school_class))
    redirect_to @student_class
  end
end
