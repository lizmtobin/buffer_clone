class PasswordResetsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(email: params[:email])
        if @user.present?
            #send email
            redirect_to root_path, notice: "If an account with that email account exists we will send you a reset link"
        end
        
    end
    
end