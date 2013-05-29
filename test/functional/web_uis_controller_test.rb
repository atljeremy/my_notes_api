require 'test_helper'

class WebUisControllerTest < ActionController::TestCase
  setup do
    @web_ui = web_uis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_uis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_ui" do
    assert_difference('WebUi.count') do
      post :create, web_ui: {  }
    end

    assert_redirected_to web_ui_path(assigns(:web_ui))
  end

  test "should show web_ui" do
    get :show, id: @web_ui
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_ui
    assert_response :success
  end

  test "should update web_ui" do
    put :update, id: @web_ui, web_ui: {  }
    assert_redirected_to web_ui_path(assigns(:web_ui))
  end

  test "should destroy web_ui" do
    assert_difference('WebUi.count', -1) do
      delete :destroy, id: @web_ui
    end

    assert_redirected_to web_uis_path
  end
end
