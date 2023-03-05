class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    post "/login" do
      request.body.rewind
      data = JSON.parse(request.body.read)
      user = User.find_by(email:data["email"],password:data["password"])
      if user
        {success: true,user_id:user.id,user_name:user.full_name}.to_json
      else
        { success: false }.to_json
      end
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

    get '/skills' do 
      skill = Skill.all 
      [200,skill.to_json]
    end

    get '/users' do 
      user = User.all 
      [200,user.to_json]
    end

    put '/projects/update/:id' do
      begin
      data = JSON.parse(request.body.read)
      project_id = params[:id].to_i
      project=Project.find(project_id)
      project.update(data)
      {message:"project updated successfully"}.to_json
      rescue => e
        [422,{error:e.message}.to_json]
      end
    end

    put '/skills/update/:id' do
      begin
      data = JSON.parse(request.body.read)
      skill_id = params[:id].to_i
      skill=Skill.find(skill_id)
      skill.update(data)
      {message:"skill updated successfully"}.to_json
      rescue => e
        [422,{error:e.message}.to_json]
      end
    end
 
    delete '/skills/destroy/:id' do
      begin
      skill_id = params[:id].to_i
      skill=Skill.find(skill_id)
      skill.destroy
      {message:"skill deleted successfully"}.to_json
      rescue => e
        [422,{error:e.message}.to_json]
      end
    end

    delete '/projects/destroy/:id' do
      begin
      project_id = params[:id].to_i
      project=Project.find(project_id)
      project.destroy
      {message:"Project deleted successfully"}.to_json
      rescue => e
        [422,{error:e.message}.to_json]
      end
    end


  
  
end
  