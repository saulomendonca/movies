require "test_helper"

class RolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
    @role = roles(:one)
  end

  test "should get index" do
    get movie_roles_url(@movie), as: :json
    assert_response :success
  end

  test "should show role" do
    get movie_role_url(@movie, @role), as: :json
    assert_response :success

    json_response = JSON.parse(response.body)
    person = people(:one)

    assert_equal @role.id, json_response["id"]
    assert_equal "director", json_response["role_type"]
    assert_equal person.id, json_response["person"]["id"]
  end

  test "should create role" do
    assert_difference("Role.count") do
      post movie_roles_url(@movie), params: { role: { movie_id: @role.movie_id, person_id: @role.person_id, role_type: @role.role_type } }, as: :json
    end

    assert_response :created
  end

  test "should update role" do
    patch movie_role_url(@movie, @role), params: { role: { movie_id: @role.movie_id, person_id: @role.person_id, role_type: @role.role_type } }, as: :json
    assert_response :success
  end

  test "should destroy role" do
    assert_difference("Role.count", -1) do
      delete movie_role_url(@movie,@role), as: :json
    end

    assert_response :no_content
  end
end
