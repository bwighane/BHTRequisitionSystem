
module Api 
  module V1
    class RolesController < ApplicationController

      #fetch all roles
      def index
         roles = Role.order('created_at DESC')
         render json: roles
      end

      #Create new role
      def create 
        role = Role.new(role_params)
          if role.save 
            render json: role 
          end
        end

      #update role
      def update 
        role = Role.find(params[:id])
        if role.update_attributes(role_params)
            render json: role    
        end
      end

      private 
        def role_params 
          #white list role params
          params.permit(:name)
        end  
    end
  end
end


  

