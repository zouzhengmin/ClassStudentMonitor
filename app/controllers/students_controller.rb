class StudentsController < ApplicationController

  before_action :find_student, only: [:edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
    @myclass = Myclass.all
  end

  def create
    # binding.pry
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @student.update(student_params)
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def destroy
    @student.delete
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:name, :number, :myclass_id)
  end

  def find_student
    @student = Student.find(params[:id])
  end

end
