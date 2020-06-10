class EnrollmentsController < ApplicationController

    def index
        render :index
    end

    def show
        render :show
    end

    def new
        @enrollment = Enrollment.new
        @students = Student.all
        @courses = Course.all
        render :new
    end

    def create
       enroll_params = params.require(:enrollment).permit(:student_id, :course_id) 
       @enrollment = Enrollment.create(enroll_params)
       redirect_to student_path(@enrollment.student_id)
    end


end
