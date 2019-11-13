class DepartmentsController < ApplicationController
  before_action :get_department, only: [:show, :edit]
  
  def index
    @departments = Department.all
  end

  def show
    
  end

  def new
    @department = Department.new
    render partial: "form"
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
    render partial: "form"
  end

  private
    
    def get_department
      @department = Department.find(params[:id])
    end

end
