require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  # Test add by Angel
  test "should get home" do
    get root_url
    assert_response :success
  end

end
