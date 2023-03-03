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
      [201,project.to_json]
      rescue => e 
        [422,{
          error:"An error occured while creating a new project"
        }.to_json]
      end
    end

    post '/skills/create' do 
      data = JSON.parse(request.body.read)
      begin
        skill = Skill.create(data)
        [201,skill.to_json]
      rescue => e 
        [422,{
        error:"An error occured while creating a new skill"
        }.to_json]
      end
    end

    get '/projects' do
      project = Project.all 
      [200,project.to_json]
    end
  
  end
  