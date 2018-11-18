
module Api 
  module V1
    class DonorsController < ApplicationController
      def index
        begin
          donors = Donor.all
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: donors
      end

      def create
        begin
          donor = Donor.new(donor_params)
          donor.save
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: donor
      end

      def show
        begin
          donor = Donor.find(params[:id])
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: donor
      end

      def update
        begin
          donor = Donor.find(params[:id])
          donor.update_attributes(donor_params)
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: donor
      end

      def destroy
        begin
          donor = Donor.find(params[:id])
          donor.update(void: 1)
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: donor
      end

      private  
        def donor_params 
          #white listing donor parameters
          params.permit(:name)
        end
    end
  end
end


  

