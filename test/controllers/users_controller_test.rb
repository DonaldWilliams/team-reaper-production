require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

   # Test add by Angel
  test "should get user new" do
    get users_new_url
    assert_response :success
  end

  # Test Case added by Donald
  test "visiting Roles index" do
    visit roles_url
    assert_selector "h1", text: "Roles"
  end

end
