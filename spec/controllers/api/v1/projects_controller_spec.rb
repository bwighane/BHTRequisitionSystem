require 'rails_helper'
module Api 
    module V1 
        RSpec.describe ProjectsController, type: :controller do
            before(:each) do
                @project = create(:project)
            end
            it 'should be able to fetch all projects' do
                projects = create_list(:project, 10)
                get :index
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body.size).to eq(11)
            end
            it 'should be able to create a project' do
                post :create, params: { name: 'TB' }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq('TB')
            end
            it 'should be able to view a project' do
                get :show, params: { id: @project.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq(@project.name)
            end
            it 'should be able to update a project' do
                patch :update, params: { id: @project.id, name: 'Global' }
                body = JSON.parse(response.body)
                expect(body['name']).to eq('Global')
            end
            it 'should be able to delete a project' do
                delete :destroy, params: { id: @project.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['void']).to eq(1)
            end
        end
    end
end