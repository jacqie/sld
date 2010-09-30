require 'test_helper'

class SignLanguagesControllerTest < ActionController::TestCase
  setup do
    @sign_language = sign_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sign_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sign_language" do
    assert_difference('SignLanguage.count') do
      post :create, :sign_language => @sign_language.attributes
    end

    assert_redirected_to sign_language_path(assigns(:sign_language))
  end

  test "should show sign_language" do
    get :show, :id => @sign_language.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sign_language.to_param
    assert_response :success
  end

  test "should update sign_language" do
    put :update, :id => @sign_language.to_param, :sign_language => @sign_language.attributes
    assert_redirected_to sign_language_path(assigns(:sign_language))
  end

  test "should destroy sign_language" do
    assert_difference('SignLanguage.count', -1) do
      delete :destroy, :id => @sign_language.to_param
    end

    assert_redirected_to sign_languages_path
  end
end
