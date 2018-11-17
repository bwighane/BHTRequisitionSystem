require 'rails_helper'
module Api 
    module V1 
        RSpec.describe UsersController, type: :controller do
            before(:each) do
                @user = create(:user)
            end

            it 'should be able to fetch all users' do
                users = create_list(:user, 10)
                get :index
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body.size).to eq(11)
            end

            it 'should update the user\'s name' do
                patch :update, params: { id: @user.id, firstname: 'Lipnip' }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['firstname']).to eq('Lipnip')
            end

            it 'should return the concerned user' do
                get :show, params: { id: @user.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['id']).to eq(@user.id)
            end

            it 'should delete a user' do
                delete :destroy, params: { id: @user.id }
                should respond_with 200
                body = JSON.parse(response.body)
                expect(body['void']).to eq(1)
            end
        end
    end
end

