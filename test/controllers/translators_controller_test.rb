require 'test_helper'

class TranslatorsControllerTest < ActionController::TestCase
  setup do
    @translator = translators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:translators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create translator" do
    assert_difference('Translator.count') do
      post :create, translator: { cc#: @translator.cc#, cc_expiration: @translator.cc_expiration, created_at: @translator.created_at, cvv2: @translator.cvv2, email: @translator.email, encrypted_password: @translator.encrypted_password, first_name: @translator.first_name, last_name: @translator.last_name, other_qualifications: @translator.other_qualifications, overall_rating: @translator.overall_rating, phone_number: @translator.phone_number, profession: @translator.profession, rate_per_minute: @translator.rate_per_minute, salt: @translator.salt, screen_name: @translator.screen_name, total_transactions: @translator.total_transactions, updated_at: @translator.updated_at, zipcode: @translator.zipcode }
    end

    assert_redirected_to translator_path(assigns(:translator))
  end

  test "should show translator" do
    get :show, id: @translator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @translator
    assert_response :success
  end

  test "should update translator" do
    patch :update, id: @translator, translator: { cc#: @translator.cc#, cc_expiration: @translator.cc_expiration, created_at: @translator.created_at, cvv2: @translator.cvv2, email: @translator.email, encrypted_password: @translator.encrypted_password, first_name: @translator.first_name, last_name: @translator.last_name, other_qualifications: @translator.other_qualifications, overall_rating: @translator.overall_rating, phone_number: @translator.phone_number, profession: @translator.profession, rate_per_minute: @translator.rate_per_minute, salt: @translator.salt, screen_name: @translator.screen_name, total_transactions: @translator.total_transactions, updated_at: @translator.updated_at, zipcode: @translator.zipcode }
    assert_redirected_to translator_path(assigns(:translator))
  end

  test "should destroy translator" do
    assert_difference('Translator.count', -1) do
      delete :destroy, id: @translator
    end

    assert_redirected_to translators_path
  end
end
