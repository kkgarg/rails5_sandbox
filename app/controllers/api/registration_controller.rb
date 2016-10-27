class Api::RegistrationController < ApiController
  def create
    user_password = params[:password]
    user_email = params[:email]
    user = User.find_by(email: user_email)
    if user.present?
      render json: {errors: ["Email address is already registered."]}, status: 401
    else
      user = User.create!(email: user_email, password: user_password, password_confirmation: user_password)
      sign_in user, store: false
      user.generate_auth_token!
      user.save
      render json: user, status: 200
    end
  end

end
