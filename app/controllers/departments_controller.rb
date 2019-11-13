class DepartmentsController < ApplicationController
  
  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(params.require(:department).permit(:name))

    if @department.save
      redirect_to departments_path
    else
      render :new
    end

  end

  def edit
  end

end
