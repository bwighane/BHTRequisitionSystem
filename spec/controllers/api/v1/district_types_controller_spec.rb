require 'rails_helper'
module Api 
    module V1 
        RSpec.describe DistrictTypesController, type: :controller do
            before(:each) do
                @district_type = create(:district_type)
            end
            it 'should be able to fetch all district_types' do
                district_types = create_list(:district_type, 10)
                get :index
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body.size).to eq(11)
            end
            it 'should be able to create a district_type' do
                post :create, params: { name: 'City' }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq('City')
            end
            it 'should be able to view a district_type' do
                get :show, params: { id: @district_type.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq(@district_type.name)
            end
            it 'should be able to update a district_type' do
                patch :update, params: { id: @district_type.id, name: 'Slum' }
                body = JSON.parse(response.body)
                expect(body['name']).to eq('Slum')
            end
            it 'should be able to delete a district_type' do
                delete :destroy, params: { id: @district_type.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['void']).to eq(1)
            end
        end
    end
end