module Api 
    module V1
      class SitesController < ApplicationController

        def index
            begin
              sites = Site.all
              render json: sites
            rescue Exception => e
              render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
            end
            
        end
    
        def create
            begin
                site = Site.new(site_params)
                site.save
                render json: site
            rescue Exception => e
                render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
            end
            
        end
    
        def show
            begin
                site = Site.find(params[:id])
                render json: site
            rescue Exception => e
                render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
            end
            
        end
    
        def update
            begin
                site = Site.find(params[:id])
                site.update_attributes(site_params)
                render json: site
            rescue Exception => e
                render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
            end
            
        end
    
        def destroy
            begin
                site = Site.find(params[:id])
                site.update(void: 1)
                render json: site
            rescue Exception => e
                render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
            end
            
        end
    
        private  
        def site_params 
            #white listing department parameters
            params.permit(:name)
        end

      end
    end
end  