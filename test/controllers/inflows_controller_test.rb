require 'test_helper'

class InflowsControllerTest < ActionController::TestCase
  setup do
    @inflow = inflows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inflows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inflow" do
    assert_difference('Inflow.count') do
      post :create, inflow: { name: @inflow.name, start_time: @inflow.start_time, value: @inflow.value }
    end

    assert_redirected_to inflow_path(assigns(:inflow))
  end

  test "should show inflow" do
    get :show, id: @inflow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inflow
    assert_response :success
  end

  test "should update inflow" do
    patch :update, id: @inflow, inflow: { name: @inflow.name, start_time: @inflow.start_time, value: @inflow.value }
    assert_redirected_to inflow_path(assigns(:inflow))
  end

  test "should destroy inflow" do
    assert_difference('Inflow.count', -1) do
      delete :destroy, id: @inflow
    end

    assert_redirected_to inflows_path
  end
end
