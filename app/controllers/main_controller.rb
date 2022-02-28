class MainController < ApplicationController
    def index
        flash[:notice] = "logged in successfully"
        flash[:alert] = "Log in unsuccessful"
    end
end