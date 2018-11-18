require 'rails_helper'
module Api 
    module V1 
        RSpec.describe DistrictsController, type: :controller do
            before(:each) do
                @district = create(:district)
            end
            it 'should be able to fetch all districts' do
                districts = create_list(:district, 10)
                get :index
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body.size).to eq(11)
            end
            it 'should be able to create a district' do
                post :create, params: { name: 'Mzimba' }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq('Mzimba')
            end
            it 'should be able to view a district' do
                get :show, params: { id: @district.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq(@district.name)
            end
            it 'should be able to update a district' do
                patch :update, params: { id: @district.id, name: 'Ntcheu' }
                body = JSON.parse(response.body)
                expect(body['name']).to eq('Ntcheu')
            end
            it 'should be able to delete a district' do
                delete :destroy, params: { id: @district.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['void']).to eq(1)
            end
        end
    end
end