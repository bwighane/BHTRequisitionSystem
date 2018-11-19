module Api 
    module V1
      class ProjectsController < ApplicationController

        def index
            begin
              projects = Project.all
              render json: projects
            rescue Exception => e
              render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
            end
            
        end
    
        def create
            begin
                project = Project.new(project_params)
                project.save
                render json: project
            rescue Exception => e
                render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
            end    
        end
    
        def show
            begin
                project = Project.find(params[:id])
                render json: project
            rescue Exception => e
                render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
            end   
        end
    
        def update
            begin
                project = Project.find(params[:id])
                project.update_attributes(project_params)
                render json: project
            rescue Exception => e
                render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
            end   
        end
    
        def destroy
            begin
                project = Project.find(params[:id])
                project.update(void: 1)
                render json: project
            rescue Exception => e
                render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
            end
            
        end
    
        private  
        def project_params 
            #white listing department parameters
            params.permit(:name)
        end

      end
    end
end  