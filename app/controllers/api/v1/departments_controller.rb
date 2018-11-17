
module Api 
  module V1
    class DepartmentsController < ApplicationController
      def index
        begin
          departments = Department.all
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: departments
      end

      def create
        begin
          department = Department.new(department_params)
          department.save
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: department
      end

      def show
        begin
          department = Department.find(params[:id])
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: department
      end

      def update
        begin
          department = Department.find(params[:id])
          department.update_attributes(department_params)
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: department
      end

      def destroy
        begin
          department = Department.find(params[:id])
          department.update(void: 1)
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: department
      end

      private  
        def department_params 
          #white listing department parameters
          params.permit(:name)
        end
    end
  end
end


  

