class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params.require(:student).permit(:stu_name , :rollno ,:course ,:phone)) 
    if @student.save
      flash[:notice] = "Successfully created student."
      redirect_to @student
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
      @student = Student.find(params[:id])
      if @student.update(params.require(:student).permit(:stu_name ,:rollno ,:course ,:phone))
        flash[:notice] = "Student updated successfully."
        redirect_to @student
      else
        render 'edit'
      end
  end
  
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    flash[:notice] = "Student deleted successfully."
    redirect_to students_path
  end
end
