require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { cc#: @user.cc#, cc_expiration: @user.cc_expiration, created_at: @user.created_at, cvv2: @user.cvv2, email: @user.email, encrypted_password: @user.encrypted_password, first_name: @user.first_name, languages_id: @user.languages_id, last_name: @user.last_name, phone_number: @user.phone_number, salt: @user.salt, screen_name: @user.screen_name, updated_at: @user.updated_at, zipcode: @user.zipcode }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { cc#: @user.cc#, cc_expiration: @user.cc_expiration, created_at: @user.created_at, cvv2: @user.cvv2, email: @user.email, encrypted_password: @user.encrypted_password, first_name: @user.first_name, languages_id: @user.languages_id, last_name: @user.last_name, phone_number: @user.phone_number, salt: @user.salt, screen_name: @user.screen_name, updated_at: @user.updated_at, zipcode: @user.zipcode }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
