class DepartmentsController < ApplicationController
	before_action :set_department, :only => [:edit, :destroy, :update]
  def index
  	@departments=Department.all
  end

  def new
  	@department=Department.new
  end

  def edit
  end

  def update
  	respond_to do |format|
  		if @department.update(department_params)
  			format.html{
  				redirect_to department_url(@department)
  			}
  			format.js
  		else
  		 	format.html{render :edit}
  		 	format.js
  		end
  	end
  end

  def destroy
  	@department.destroy
  	redirect_to departments_path
  end

  def create
  	@department=Department.new(department_params)
  	respond_to do |format|
  		if @department.save
  			format.html{
  				redirect_to departments_path
  			}
  			format.js
  		else
  		 	format.html{render :new}
  		 	format.js
  		end
  	end
  end

# Department.where('name like ?', '%小白%')
  def search
    @departments = Department.where('name like ?', "%#{params[:keywords]}%")
    render :index
  end

  private
  def department_params
  	params.require(:department).permit(:name)
  end

  def set_department
  	@department=Department.find(params[:id])
  end
end
