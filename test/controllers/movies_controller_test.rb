require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
    @headers = auth_token_for_user()
  end

  test "should get index" do
    get movies_url, as: :json
    assert_response :success
  end

  test "should create movie" do
    assert_difference("Movie.count") do
      post movies_url, params: { 
        movie: { release_year: @movie.release_year, title: @movie.title } 
        }, as: :json, headers: @headers
    end

    assert_response :created
  end

  test "should show movie" do
    get movie_url(@movie), as: :json
    assert_response :success
    
    json_response = JSON.parse(response.body)
    person = people(:one)
    assert_equal @movie.id, json_response["id"]
    assert_equal person.id, json_response["people"][0]["person"]["id"]
    assert_equal "director", json_response["people"][0]["role"]
  end

  test "should update movie" do
    patch movie_url(@movie), params: { 
      movie: { release_year: @movie.release_year, title: @movie.title } 
      }, as: :json, headers: @headers
    assert_response :success
  end

  test "should destroy movie" do
    assert_difference("Movie.count", -1) do
      delete movie_url(@movie), as: :json, headers: @headers
    end

    assert_response :no_content
  end
end
