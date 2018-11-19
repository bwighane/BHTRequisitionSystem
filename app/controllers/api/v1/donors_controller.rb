
module Api 
  module V1
    class DonorsController < ApplicationController
      def index
        begin
          donors = Donor.all
          render json: donors
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def create
        begin
          donor = Donor.new(donor_params)
          donor.save
          render json: donor
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def show
        begin
          donor = Donor.find(params[:id])
          render json: donor
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def update
        begin
          donor = Donor.find(params[:id])
          donor.update_attributes(donor_params)
          render json: donor
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def destroy
        begin
          donor = Donor.find(params[:id])
          donor.update(void: 1)
          render json: donor
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      private  
        def donor_params 
          #white listing donor parameters
          params.permit(:name)
        end
    end
  end
end


  

