
module Api 
  module V1
    class DistrictsController < ApplicationController
      def index
        begin
          districts = District.all
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: districts
      end

      def create
        begin
          district = District.new(district_params)
          district.save
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: district
      end

      def show
        begin
          district = District.find(params[:id])
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: district
      end

      def update
        begin
          district = District.find(params[:id])
          district.update_attributes(district_params)
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: district
      end

      def destroy
        begin
          district = District.find(params[:id])
          district.update(void: 1)
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: district
      end

      private  
        def district_params 
          #white listing district parameters
          params.permit(:name, :district_type_id)
        end
    end
  end
end


  

