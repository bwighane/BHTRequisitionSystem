require 'rails_helper'
module Api 
    module V1 
        RSpec.describe SitesController, type: :controller do
            before(:each) do
                @site = create(:site)
            end
            it 'should be able to fetch all sites' do
                site = create_list(:site, 10)
                get :index
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body.size).to eq(11)
            end
            it 'should be able to create a site' do
                post :create, params: { name: 'NRB' }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq('NRB')
            end
            it 'should be able to view a site' do
                get :show, params: { id: @site.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq(@site.name)
            end
            it 'should be able to update a site' do
                patch :update, params: { id: @site.id, name: 'KTU' }
                body = JSON.parse(response.body)
                expect(body['name']).to eq('KTU')
            end
            it 'should be able to delete a site' do
                delete :destroy, params: { id: @site.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['void']).to eq(1)
            end
        end
    end
end