class ApplicationController < ActionController::API
    def welcome
        render json: {greeting:'Hello World'}
    end 
    
    def name
        render json: {greeting: "Hello #{params[:name]}"}
    end 
end
