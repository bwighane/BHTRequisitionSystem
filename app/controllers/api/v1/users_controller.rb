
module Api 
    module V1
        class UsersController < ApplicationController
            def update 
                user = User.find(params[:id])
                if user.update_attributes(user_params)
                   render json: {status: 'SUCCESS', message: 'User Updated', data:user}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'User Not Updated', data:user.errors}, status: :uprocessable_entity
                    
                end
            end 

            private  
                def user_params 
                    #white listing user parameters
                    params.permit(:firstname, :lastname, :email, :department_id, :password, :password_confirmation)
                end

            
        end
    end
end


    

