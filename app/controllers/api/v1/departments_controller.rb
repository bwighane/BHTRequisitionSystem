
module Api 
  module V1
    class DepartmentsController < ApplicationController
      def index
        begin
          departments = Department.all
          render json: departments
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def create
        begin
          department = Department.new(department_params)
          department.save
          render json: department
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def show
        begin
          department = Department.find(params[:id])
          render json: department
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def update
        begin
          department = Department.find(params[:id])
          department.update_attributes(department_params)
          render json: department
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def destroy
        begin
          department = Department.find(params[:id])
          department.update(void: 1)
          render json: department
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      private  
        def department_params 
          #white listing department parameters
          params.permit(:name)
        end
    end
  end
end


  

