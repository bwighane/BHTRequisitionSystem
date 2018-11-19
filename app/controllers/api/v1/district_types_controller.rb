
module Api 
  module V1
    class DistrictTypesController < ApplicationController
      def index
        begin
          district_types = DistrictType.all
          render json: district_types
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def create
        begin
          district_type = DistrictType.new(district_type_params)
          district_type.save
          render json: district_type
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def show
        begin
          district_type = DistrictType.find(params[:id])
          render json: district_type
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def update
        begin
          district_type = DistrictType.find(params[:id])
          district_type.update_attributes(district_type_params)
          render json: district_type
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def destroy
        begin
          district_type = DistrictType.find(params[:id])
          district_type.update(void: 1)
          render json: district_type
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      private  
        def district_type_params 
          #white listing district_type parameters
          params.permit(:name)
        end
    end
  end
end


  

