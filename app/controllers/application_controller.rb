class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/" do
      { message: "Good luck with your project!" }.to_json
    end

    post '/projects/create' do
      data = JSON.parse(request.body.read)
      begin
      project = Project.create(data)
      project.to_json
      rescue => e 
        {
          error:"An error occured while creating a new project"
        }
      end
    end
  
  end
  