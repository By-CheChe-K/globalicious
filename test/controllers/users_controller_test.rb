require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { avatar: @user.avatar, email: @user.email, followers: @user.followers, following: @user.following, language: @user.language, menu: @user.menu, name: @user.name, password: @user.password, planner: @user.planner, points: @user.points, recipes: @user.recipes, shoplist: @user.shoplist, translated: @user.translated } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { avatar: @user.avatar, email: @user.email, followers: @user.followers, following: @user.following, language: @user.language, menu: @user.menu, name: @user.name, password: @user.password, planner: @user.planner, points: @user.points, recipes: @user.recipes, shoplist: @user.shoplist, translated: @user.translated } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
