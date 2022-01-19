class Authentication::AuthenticateUser
  def initialize(user, expiration_in_hours = 24)
    @user = user
    @expiration_in_hours = expiration_in_hours
  end

  def authenticate_and_get_token_and_expiration_time(password)
    return if !@user&.authenticate(password)
    
    token = Authentication::JsonWebToken.encode(user_id: @user.id)
    time = Time.now + @expiration_in_hours.hours.to_i

    [token, time]
  end
end