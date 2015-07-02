class EmployeesController < ApplicationController
  before_action :set_employee, :only => [:edit, :destroy, :update]
  def index
  	@employees=Employee.all
  end

  def new
  	@employee=Employee.new
  end

  def edit
  end

  def update
  	respond_to do |format|
  		if @employee.update(employee_params)
  			format.html{
  				redirect_to employee_url(@employee)
  			}
  			format.js
  		else
  		 	format.html{render :edit}
  		 	format.js
  		end
  	end
  end

  def destroy
  	@employee.destroy
  	redirect_to employees_path
  end

  def create
  	@employee=Employee.new(employee_params)
  	respond_to do |format|
  		if @employee.save
  			format.html{
  				redirect_to employees_url
  			}
  			format.js
  		else
  		 	format.html{render :new}
  		 	format.js
  		end
  	end
  end

  private
  def employee_params
  	params.require(:employee).permit(:name, :department_id, :position_id, :sex, :phone, :telephone, :englishname, :qq, :email, :birthday)
  end

  def set_employee
  	@employee=Employee.find(params[:id])
  end
end
