require 'rails_helper'
module Api 
    module V1 
        RSpec.describe UsersController, type: :controller do
            before(:each) do
                @user = create(:user)
            end
            context 'Updating a user' do
                it 'should respond with status 200' do
                    patch :update, params: { id: @user.id, firstname: @user.firstname }
                    should respond_with 200
                end
                it 'should update the user\'s name' do
                    patch :update, params: { id: @user.id, firstname: 'Lipnip' }
                    body = JSON.parse(response.body)
                    expect(body['firstname']).to eq('Lipnip')
                end
            end
            it 'should return the concerned user' do
                get :show, params: { id: @user.id }
                should respond_with 200
                #expect(body['id']).to eq(@user.id)
            end
        end
    end
end

