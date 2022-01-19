class AuthenticationController < ApplicationController
  # POST /auth/login
  def login
    @user = User.find_by_email(params[:email])
    token, expiration_time = Authentication::AuthenticateUser.new(@user).authenticate_and_get_token_and_expiration_time(params[:password])
    if token
      render json: { token: token, exp: expiration_time.strftime("%m-%d-%Y %H:%M"),
                     username: @user.email }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end