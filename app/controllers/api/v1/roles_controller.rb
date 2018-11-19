
module Api 
  module V1
    class RolesController < ApplicationController

      def index
        begin
          roles = Role.all
        render json: roles
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def create 
        begin
          role = Role.new(role_params)
          role.save
          render json: role
        rescue Exception => e
            render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end 
      end

      def show 
        begin
          role = Role.find(params[:id])
          render json: role
        rescue Exception => e
            render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def update 
        begin
          role = Role.find(params[:id])
          role.update_attributes(role_params)
          render json: role
        rescue Exception => e
            render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end 
      end

      def destroy
        begin
          role = Role.find(params[:id])
          role.update(void: 1)
          render json: role 
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
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


  

