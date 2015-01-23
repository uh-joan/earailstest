require 'test_helper'

class SalesOrderStatusesControllerTest < ActionController::TestCase
  setup do
    @order_status = sales_order_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:OrderStatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_status" do
    assert_difference('OrderStatus.count') do
      post :create, order_status: { name: @order_status.name, user_id: @order_status.user_id }
    end

    assert_redirected_to sales_order_status_path(assigns(:order_status))
  end

  test "should show order_status" do
    get :show, id: @order_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_status
    assert_response :success
  end

  test "should update order_status" do
    patch :update, id: @order_status, order_status: { name: @order_status.name, user_id: @order_status.user_id }
    assert_redirected_to sales_order_status_path(assigns(:order_status))
  end

  test "should destroy order_status" do
    assert_difference('OrderStatus.count', -1) do
      delete :destroy, id: @order_status
    end

    assert_redirected_to sales_order_statuses_path
  end
end
