
module Api 
    module V1
        class UsersController < ApplicationController
            def index
                begin
                    users = User.all
                    render json: users
                rescue Exception => e
                    render json: { error: e.to_s, message: 'An internal server error occured' }, status: 500
                end
            end

            def show 
                begin
                    user = User.find(params[:id])
                    render json: user
                rescue Exception => e
                    render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
                end
            end

            def update
                begin
                    user = User.find(params[:id])
                    user.update_attributes(user_params)
                    render json: user
                rescue Exception => e
                    render json: { error: e.to_s, message: 'An internal server error occured.'}, status: 500
                end
            end
            
            def destroy
                begin
                    user = User.find(params[:id])
                    user.update(void: 1)
                    render json: user 
                rescue Exception => e
                    render json: { error: e.to_s, message: 'An internal server error occured.' }, status: 500
                end
                
            end

            private  
                def user_params 
                    #white listing user parameters
                    params.permit(:firstname, :lastname, :email, :department_id, :role_id, :password, :password_confirmation)
                end
        end
    end
end


    

