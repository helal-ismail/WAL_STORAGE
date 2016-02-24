require 'test_helper'

class Api::V1::ElementAttributesControllerTest < ActionController::TestCase
  setup do
    @api_v1_element_attribute = api_v1_element_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_element_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_element_attribute" do
    assert_difference('Api::V1::ElementAttribute.count') do
      post :create, api_v1_element_attribute: {  }
    end

    assert_redirected_to api_v1_element_attribute_path(assigns(:api_v1_element_attribute))
  end

  test "should show api_v1_element_attribute" do
    get :show, id: @api_v1_element_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_element_attribute
    assert_response :success
  end

  test "should update api_v1_element_attribute" do
    patch :update, id: @api_v1_element_attribute, api_v1_element_attribute: {  }
    assert_redirected_to api_v1_element_attribute_path(assigns(:api_v1_element_attribute))
  end

  test "should destroy api_v1_element_attribute" do
    assert_difference('Api::V1::ElementAttribute.count', -1) do
      delete :destroy, id: @api_v1_element_attribute
    end

    assert_redirected_to api_v1_element_attributes_path
  end
end
