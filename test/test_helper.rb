ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def auth_token_for_user
    user = users(:one)
    password = "testpassword"
    post auth_login_url, params: { email: user.email, password: password}, as: :json

    json_response = JSON.parse(response.body)

    { Authorization: json_response["token"] }
  end
end
