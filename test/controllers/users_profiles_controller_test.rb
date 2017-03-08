require 'test_helper'

class UsersProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_profile = users_profiles(:one)
  end

  test "should get index" do
    get users_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_users_profile_url
    assert_response :success
  end

  test "should create users_profile" do
    assert_difference('UsersProfile.count') do
      post users_profiles_url, params: { users_profile: { profile_id: @users_profile.profile_id, user_id: @users_profile.user_id } }
    end

    assert_redirected_to users_profile_url(UsersProfile.last)
  end

  test "should show users_profile" do
    get users_profile_url(@users_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_profile_url(@users_profile)
    assert_response :success
  end

  test "should update users_profile" do
    patch users_profile_url(@users_profile), params: { users_profile: { profile_id: @users_profile.profile_id, user_id: @users_profile.user_id } }
    assert_redirected_to users_profile_url(@users_profile)
  end

  test "should destroy users_profile" do
    assert_difference('UsersProfile.count', -1) do
      delete users_profile_url(@users_profile)
    end

    assert_redirected_to users_profiles_url
  end
end
