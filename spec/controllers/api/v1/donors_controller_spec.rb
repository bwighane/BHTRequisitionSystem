require 'rails_helper'
module Api 
    module V1 
        RSpec.describe DonorsController, type: :controller do
            before(:each) do
                @donor = create(:donor)
            end
            it 'should be able to fetch all donors' do
                donors = create_list(:donor, 10)
                get :index
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body.size).to eq(11)
            end
            it 'should be able to create a donor' do
                post :create, params: { name: 'CDC' }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq('CDC')
            end
            it 'should be able to view a donor' do
                get :show, params: { id: @donor.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq(@donor.name)
            end
            it 'should be able to update a donor' do
                patch :update, params: { id: @donor.id, name: 'Global Fund' }
                body = JSON.parse(response.body)
                expect(body['name']).to eq('Global Fund')
            end
            it 'should be able to delete a donor' do
                delete :destroy, params: { id: @donor.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['void']).to eq(1)
            end
        end
    end
end