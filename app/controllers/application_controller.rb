class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  
  get "/attendants" do
    attendants = Attendant.all.order(:created_at)
    attendants.to_json
  end

  post "/attendants" do
    attendant = Attendant.create(salary: params[:salary], username: params[:username],image: params[:image], job: params[:job])
    attendant.to_json
  end

  patch "/attendants/:id" do
    attendant = Attendant.find(params[:id])
    attendant.update(salary: params[:salary], username: params[:username], image: params[:image], job: params[:job])
    attendant.to_json
  end

  delete "/attendants/:id" do
    attendant = Attendant.find(params[:id])
    attendant.destroy
    attendant.to_json
  end

end
