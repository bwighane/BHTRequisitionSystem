
module Api 
  module V1
    class ItemsController < ApplicationController
      def index
        begin
          items = Item.all
          render json: items
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def create
        begin
          item = Item.new(item_params)
          item.save
          render json: item
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def show
        begin
          item = Item.find(params[:id])
          render json: item
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def update
        begin
          item = Item.find(params[:id])
          item.update_attributes(item_params)
          render json: item
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def destroy
        begin
          item = Item.find(params[:id])
          item.update(void: 1)
          render json: item
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      private  
        def item_params 
          #white listing item parameters
          params.permit(:name, :cost)
        end
    end
  end
end


  

