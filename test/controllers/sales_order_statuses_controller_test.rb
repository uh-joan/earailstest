require 'test_helper'

class SalesOrderStatusesControllerTest < ActionController::TestCase
  setup do
    @sales_order_status = sales_order_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_order_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_order_status" do
    assert_difference('SalesOrderStatus.count') do
      post :create, sales_order_status: { name: @sales_order_status.name, user_id: @sales_order_status.user_id }
    end

    assert_redirected_to sales_order_status_path(assigns(:sales_order_status))
  end

  test "should show sales_order_status" do
    get :show, id: @sales_order_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_order_status
    assert_response :success
  end

  test "should update sales_order_status" do
    patch :update, id: @sales_order_status, sales_order_status: { name: @sales_order_status.name, user_id: @sales_order_status.user_id }
    assert_redirected_to sales_order_status_path(assigns(:sales_order_status))
  end

  test "should destroy sales_order_status" do
    assert_difference('SalesOrderStatus.count', -1) do
      delete :destroy, id: @sales_order_status
    end

    assert_redirected_to sales_order_statuses_path
  end
end
