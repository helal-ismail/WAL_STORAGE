require 'test_helper'

class SharedMomentsControllerTest < ActionController::TestCase
  setup do
    @shared_moment = shared_moments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shared_moments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shared_moment" do
    assert_difference('SharedMoment.count') do
      post :create, shared_moment: { global_state: @shared_moment.global_state, moment_hash: @shared_moment.moment_hash }
    end

    assert_redirected_to shared_moment_path(assigns(:shared_moment))
  end

  test "should show shared_moment" do
    get :show, id: @shared_moment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shared_moment
    assert_response :success
  end

  test "should update shared_moment" do
    patch :update, id: @shared_moment, shared_moment: { global_state: @shared_moment.global_state, moment_hash: @shared_moment.moment_hash }
    assert_redirected_to shared_moment_path(assigns(:shared_moment))
  end

  test "should destroy shared_moment" do
    assert_difference('SharedMoment.count', -1) do
      delete :destroy, id: @shared_moment
    end

    assert_redirected_to shared_moments_path
  end
end
