class ApplicationController < ActionController::API
    def authenticate 
        auth_header = request.headers['Authorization']
        token = auth_header.split(' ')[1]
        secret = Rails.application.secret_key_base
        payload = JWT.decode(token, secret)[0]
        user_id = payload["user_id"]
    
        @user = User.find_by(id: user_id)
    
        if !@user
            render status: :unauthorized
        end 
    end 
end
