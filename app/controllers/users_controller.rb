class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        if user.valid?
          render json: user, status: :created
        else
         
        end
      end
      def show 
        user = User.find(params[:id])
        render json: user, status: :created
      end
    
      private
    
      def user_params
        params.permit(:username, :password, :password_confirmation)
      end
end
