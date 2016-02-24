require 'test_helper'

class Api::V1::ElementsControllerTest < ActionController::TestCase
  setup do
    @api_v1_element = api_v1_elements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_elements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_element" do
    assert_difference('Api::V1::Element.count') do
      post :create, api_v1_element: {  }
    end

    assert_redirected_to api_v1_element_path(assigns(:api_v1_element))
  end

  test "should show api_v1_element" do
    get :show, id: @api_v1_element
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_element
    assert_response :success
  end

  test "should update api_v1_element" do
    patch :update, id: @api_v1_element, api_v1_element: {  }
    assert_redirected_to api_v1_element_path(assigns(:api_v1_element))
  end

  test "should destroy api_v1_element" do
    assert_difference('Api::V1::Element.count', -1) do
      delete :destroy, id: @api_v1_element
    end

    assert_redirected_to api_v1_elements_path
  end
end
