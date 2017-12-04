require 'test_helper'

class MatchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get matches_index_url
    assert_response :success
  end

  test "should get show" do
    get matches_show_url
    assert_response :success
  end

  # Test Case added by Donald
  test "visiting Matches index" do
    visit matches_url
    assert_selector "h1", text: "Matches"
  end

end
