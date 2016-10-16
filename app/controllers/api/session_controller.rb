class Api::SessionController < ApiController
  def create
    user_password = params[:password]
    user_email = params[:email]
    user = User.find_by(email: user_email)

    if user.present? && user.valid_password?(user_password)
      sign_in user, store: false
      user.generate_auth_token!
      user.save
      render json: user, status: 200
    else
      render json: {errors: ["Invalid email or password"]}, status: 422 
    end
  end
end



