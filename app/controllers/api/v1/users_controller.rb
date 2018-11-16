
module Api 
    module V1
        class UsersController < ApplicationController
            def update 
                #updating user, OK
                user = User.find(params[:id])
                if user.update_attributes(user_params)
                   render json: user 
                else
                    render json: {status: 'ERROR', message: 'User Not Updated', data:user.errors}, status: :uprocessable_entity      
                end
            end
            
            def show 
                #returning concerned user
                user = User.find(params[:id])
                render json: user
            end

            private  
                def user_params 
                    #white listing user parameters
                    params.permit(:firstname, :lastname, :email, :department_id, :role_id, :password, :password_confirmation)
                end
        end
    end
end


    

