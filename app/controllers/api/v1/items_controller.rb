
module Api 
  module V1
    class ItemsController < ApplicationController
      def index
        begin
          items = Item.all
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: items
      end

      def create
        begin
          item = Item.new(item_params)
          item.save
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: item
      end

      def show
        begin
          item = Item.find(params[:id])
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: item
      end

      def update
        begin
          item = Item.find(params[:id])
          item.update_attributes(item_params)
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: item
      end

      def destroy
        begin
          item = Item.find(params[:id])
          item.update(void: 1)
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
        render json: item
      end

      private  
        def item_params 
          #white listing item parameters
          params.permit(:name, :cost)
        end
    end
  end
end


  

