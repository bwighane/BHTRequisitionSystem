
module Api 
  module V1
    class NotificationsController < ApplicationController
      def index
        begin
          notifications = Notification.all
          render json: notifications
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def create
        begin
          notification = Notification.new(notification_params)
          notification.save
          render json: notification
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def show
        begin
          notification = Notification.find(params[:id])
          render json: notification
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def update
        begin
          notification = Notification.find(params[:id])
          notification.update_attributes(notification_params)
          render json: notification
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      def destroy
        begin
          notification = Notification.find(params[:id])
          notification.update(void: 1)
          render json: notification
        rescue Exception => e
          render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
        end
      end

      private  
        def notification_params 
          #white listing notification parameters
          params.permit(:body, :path)
        end
    end
  end
end


  

