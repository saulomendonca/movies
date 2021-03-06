require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
    @headers = auth_token_for_user()
  end

  test "should get index" do
    get people_url, as: :json
    assert_response :success
  end

  test "should create person" do
    assert_difference("Person.count") do
      post people_url, params: { person: { 
        aliases: @person.aliases, first_name: @person.first_name, last_name: @person.last_name } 
        }, as: :json, headers: @headers
    end

    assert_response :created
  end

  test "should show person" do
    get person_url(@person), as: :json
    assert_response :success

    json_response = JSON.parse(response.body)
    movie = movies(:one)

    assert_equal @person.id, json_response["id"]
    assert_equal movie.id, json_response["movies"][0]["movie"]["id"]
    assert_equal "director", json_response["movies"][0]["role"]
  end

  test "should update person" do
    patch person_url(@person), params: { person: { 
      aliases: @person.aliases, first_name: @person.first_name, last_name: @person.last_name } 
      }, as: :json, headers: @headers
    assert_response :success
  end

  test "should destroy person" do
    assert_difference("Person.count", -1) do
      delete person_url(@person), as: :json, headers: @headers
    end

    assert_response :no_content
  end
end
