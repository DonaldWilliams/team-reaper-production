require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { clean: @profile.clean, drink: @profile.drink, kind_of_clean: @profile.kind_of_clean, messy: @profile.messy, party: @profile.party, pet: @profile.pet, pet_type: @profile.pet_type, quiet: @profile.quiet, smoke: @profile.smoke, users_id: @profile.users_id } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { clean: @profile.clean, drink: @profile.drink, kind_of_clean: @profile.kind_of_clean, messy: @profile.messy, party: @profile.party, pet: @profile.pet, pet_type: @profile.pet_type, quiet: @profile.quiet, smoke: @profile.smoke, users_id: @profile.users_id } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end

   # Test add by Angel
  test "should not save profile without attributes" do
    profile = Profile.new
    assert_not profile.save
  end
end
