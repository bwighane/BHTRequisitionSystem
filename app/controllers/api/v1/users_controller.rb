
module Api 
    module V1
        class UsersController < ApplicationController
            def update 
                user = User.find(params[:id])
                if user.update_attributes(user_params)
                   render json: user
                else
                    render json: {status: 'ERROR', message: 'User Not Updated', data:user.errors}, status: :uprocessable_entity      
                end
            end 

            private  
                def user_params 
                    params.permit(:firstname, :lastname, :email, :department_id, :role_id, :uid)
                end
        end
    end
end


    

