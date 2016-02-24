require 'test_helper'

class MomentAttributesControllerTest < ActionController::TestCase
  setup do
    @moment_attribute = moment_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moment_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moment_attribute" do
    assert_difference('MomentAttribute.count') do
      post :create, moment_attribute: { action: @moment_attribute.action, attribute_id: @moment_attribute.attribute_id, moment_id: @moment_attribute.moment_id, type: @moment_attribute.type, value: @moment_attribute.value }
    end

    assert_redirected_to moment_attribute_path(assigns(:moment_attribute))
  end

  test "should show moment_attribute" do
    get :show, id: @moment_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moment_attribute
    assert_response :success
  end

  test "should update moment_attribute" do
    patch :update, id: @moment_attribute, moment_attribute: { action: @moment_attribute.action, attribute_id: @moment_attribute.attribute_id, moment_id: @moment_attribute.moment_id, type: @moment_attribute.type, value: @moment_attribute.value }
    assert_redirected_to moment_attribute_path(assigns(:moment_attribute))
  end

  test "should destroy moment_attribute" do
    assert_difference('MomentAttribute.count', -1) do
      delete :destroy, id: @moment_attribute
    end

    assert_redirected_to moment_attributes_path
  end
end
