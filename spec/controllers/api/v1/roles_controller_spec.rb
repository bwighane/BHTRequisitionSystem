require 'rails_helper'
module Api 
    module V1 
        RSpec.describe RolesController, type: :controller do
            before(:each) do
                @role = create(:role)
            end
            it 'should be able to fetch all roles' do
                roles = create_list(:role, 10)
                get :index
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body.size).to eq(11)
            end
            it 'should be able to create a role' do
                post :create, params: { name: 'Manager' }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq('Manager')
            end
            it 'should be able to view a role' do
                get :show, params: { id: @role.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq(@role.name)
            end
            it 'should be able to update a role' do
                patch :update, params: { id: @role.id, name: 'Truck Driver' }
                body = JSON.parse(response.body)
                expect(body['name']).to eq('Truck Driver')
            end
            it 'should be able to delete a role' do
                delete :destroy, params: { id: @role.id }
                should respond_with 200
            end
        end
    end
end