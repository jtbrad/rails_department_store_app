class ItemsController < ApplicationController
  def index
    @department = Department.find(params[:department_id])
    @items = @department.items
  end

  def show
  end

  def new
  end

  def edit
  end

  private

    def get_department
    
    end

end