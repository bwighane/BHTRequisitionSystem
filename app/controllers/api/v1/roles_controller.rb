
module Api 
  module V1
    class RolesController < ApplicationController
      def create 
        role = Role.new(role_params)
          if role.save 
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


  

