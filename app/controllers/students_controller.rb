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
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name] )
    redirect_to students_path
  end

  def to_s
    self.first_name + " " + self.last_name
  end

end
