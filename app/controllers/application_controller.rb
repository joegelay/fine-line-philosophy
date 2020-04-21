class ApplicationController < ActionController::API
    def authenticate 
        begin
        auth_header = request.headers['Authorization']
        token = auth_header.split(' ')[1]
        secret = Rails.application.secret_key_base
        payload = JWT.decode(token, secret)[0]
        rescue 
            render json: { message: "Authentication could not complete" }
        end 
        
        user_id = payload["user_id"]
    
        @user = User.find_by(id: user_id)
    
        if !@user
            render status: :unauthorized
        end 
    end 

    def admin_authenticate 
        begin
        auth_header = request.headers['Authorization']
        token = auth_header.split(' ')[1]
        secret = Rails.application.secret_key_base
        payload = JWT.decode(token, secret)[0]
        rescue 
            render json: { message: "Authentication could not complete" }
        end 
        
        user_id = payload["user_id"]
    
        @user = User.find_by(id: user_id)
    
        if !@user == User.find_by(id: 1)
            render status: :unauthorized
        end 
    end 

end
