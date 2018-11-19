require 'rails_helper'
module Api 
    module V1 
        RSpec.describe NotificationsController, type: :controller do
            before(:each) do
                @notification = create(:notification)
            end
            it 'should be able to fetch all notifications' do
                notifications = create_list(:notification, 10)
                get :index
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body.size).to eq(11)
            end
            it 'should be able to create a notification' do
                post :create, params: { body: 'Ligma', path: '/auth/lulz' }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['body']).to eq('Ligma')
            end
            it 'should be able to view a notification' do
                get :show, params: { id: @notification.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['body']).to eq(@notification.body)
            end
            it 'should be able to update a notification' do
                patch :update, params: { id: @notification.id, path: '/auth/lolz' }
                body = JSON.parse(response.body)
                expect(body['path']).to eq('/auth/lolz')
            end
            it 'should be able to delete a notification' do
                delete :destroy, params: { id: @notification.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['void']).to eq(1)
            end
        end
    end
end