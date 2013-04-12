class EmployeesController < ApplicationController

	def index
		@employees = Employee.all
	end

	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(params[:employee])

		if @employee.save
			redirect_to employee_url(@employee)
		else
			render :new
		end
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def edit
		@employee = Employee.find(params[:id])
	end

	def update
		@employee = Employee.find(params[:id])

		if @employee.update_attributes(params[:employee])
			redirect_to employee_url(@employee)
		else
			render :edit
		end
	end
end
