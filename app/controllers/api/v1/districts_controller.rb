
module Api 
  module V1
    class DistrictsController < ApplicationController
      def index
        begin
          districts = District.all
          render json: districts
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def create
        begin
          district = District.new(district_params)
          district.save
          render json: district
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def show
        begin
          district = District.find(params[:id])
          render json: district
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def update
        begin
          district = District.find(params[:id])
          district.update_attributes(district_params)
          render json: district
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def destroy
        begin
          district = District.find(params[:id])
          district.update(void: 1)
          render json: district
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      private  
        def district_params 
          #white listing district parameters
          params.permit(:name, :district_type_id)
        end
    end
  end
end


  

