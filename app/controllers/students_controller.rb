class StudentsController < ApplicationController
  def index
    @students = Student.all
    render :index
  end

  def new
    @student = Student.new
    render :new
  end

  def create
    student_params = params.require(:student).permit(:name, :age)
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
    render :show
  end

  def edit
    @student = Student.find(params[:id])
    render :edit
  end

  def update
    student_params = params.require(:student).permit(:name, :age)
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end
end
