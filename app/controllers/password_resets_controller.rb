class PasswordResetsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(email: params[:email])
        if @user.present?
            #send email
            PasswordMailer.with(user: @user).reset.deliver_later
            redirect_to root_path, notice: "If an account with that email account exists we will send you a reset link"
        end
        
    end

    def edit
        @user = User.find_signed(params[:token], purpose:"reset_reset")
    end
    
end