require "test_helper"

class AuthenticationControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @password = "testpassword"
  end

  test "should login with a valid user" do
    post auth_login_url, params: { email: @user.email, password: @password}, as: :json
    assert_response :success

    json_response = JSON.parse(response.body)

    assert_equal @user.email, json_response["username"]
    assert_includes json_response, "token"
  end

  test "should not login with an invalid password" do
    post auth_login_url, params: { email: @user.email, password: "invalid_password"}, as: :json
    assert_response :unauthorized
  end

end
