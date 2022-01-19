require "test_helper"

class AuthenticateUserTest < ActiveSupport::TestCase
  setup do
    @password = "testpassword"
    @user = users(:one)
    @service = Authentication::AuthenticateUser.new(@user)
  end

  test "should return an token and expiration date with a correct password " do
    token, expiration_time = @service.authenticate_and_get_token_and_expiration_time(@password)
    assert token
    assert expiration_time
  end

  test "should return an expiration date valid for the hours especified with a correct password " do
    time_in_hour = 22
    service = Authentication::AuthenticateUser.new(@user, time_in_hour)
    freeze_time do
      expected_expiration_time = Time.now + time_in_hour.hours.to_i
      token, expiration_time = service.authenticate_and_get_token_and_expiration_time(@password)
      assert_equal expiration_time, expected_expiration_time
    end
  end

  test "should return nil with an incorrect password " do
    token, expiration_time = @service.authenticate_and_get_token_and_expiration_time("incorrect_password")
    assert_nil token
  end
end
