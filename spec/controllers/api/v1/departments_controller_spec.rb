require 'rails_helper'
module Api 
    module V1 
        RSpec.describe DepartmentsController, type: :controller do
            before(:each) do
                @department = create(:department)
            end
            it 'should be able to fetch all departments' do
                departments = create_list(:department, 10)
                get :index
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body.size).to eq(11)
            end
            it 'should be able to create a department' do
                post :create, params: { name: 'Human Resources' }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq('Human Resources')
            end
            it 'should be able to view a department' do
                get :show, params: { id: @department.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['name']).to eq(@department.name)
            end
            it 'should be able to update a department' do
                patch :update, params: { id: @department.id, name: 'Research & Development' }
                body = JSON.parse(response.body)
                expect(body['name']).to eq('Research & Development')
            end
            it 'should be able to delete a department' do
                delete :destroy, params: { id: @department.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['void']).to eq(1)
            end
        end
    end
end