require 'rails_helper'
module Api 
    module V1 
        RSpec.describe ItemsController, type: :controller do
            before(:each) do
                @item = create(:item)
            end
            it 'should be able to fetch all items' do
                items = create_list(:item, 10)
                get :index
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body.size).to eq(11)
            end
            it 'should be able to create a item' do
                post :create, params: { name: 'Mandasi' }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq('Mandasi')
            end
            it 'should be able to view a item' do
                get :show, params: { id: @item.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq(@item.name)
            end
            it 'should be able to update a item' do
                patch :update, params: { id: @item.id, name: 'Cheula' }
                body = JSON.parse(response.body)
                expect(body['name']).to eq('Cheula')
            end
            it 'should be able to delete a item' do
                delete :destroy, params: { id: @item.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['void']).to eq(1)
            end
        end
    end
end