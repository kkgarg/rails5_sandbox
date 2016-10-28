class Api::UsersController < ApiController
  
  def dashboard
    auth_token = request.headers['Authorization']
    user = User.find_by(auth_token: auth_token) if auth_token.present?
  
    if user.present?
      render json: { user: user }, status: 200
    else
      render json: { message: "Not Authenticated!" }, status: 401
    end
  end

end

