class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  
  get "/employees" do
    employees = Employee.all.order(:created_at)
    employees.to_json
  end

  post "/employees" do
    employee = Employee.create(salary: params[:salary], username: params[:username],image: params[:image], position: params[:position])
    employee.to_json
  end

  patch "/employees/:id" do
    employee = Employee.find(params[:id])
    employee.update(salary: params[:salary], username: params[:username], image: params[:image], position: params[:position])
    employee.to_json
  end

  delete "/employees/:id" do
    employee = Employee.find(params[:id])
    employee.destroy
    employee.to_json
  end

end
