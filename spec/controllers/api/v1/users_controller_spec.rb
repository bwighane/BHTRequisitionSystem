require 'rails_helper'
module Api 
    module V1 
        RSpec.describe UsersController, type: :controller do
            before(:each) do
                @user = create(:user)
            end
            context 'Updating a user' do
                before(:each) do
                    patch :update, params: { id: @user.id, user: @user }, format: :json
                end
                it { should respond_with 200 }
                it 'should update the user\'s name' do
                    @user.name = 'Joseph Eli Lipnip'
                    body = JSON.parse(response.body)
                    expect(body['name']).to eq('Joseph Eli Lipnip')
                end
            end
        end
    end
end

