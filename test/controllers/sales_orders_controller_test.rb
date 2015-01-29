require 'test_helper'

class SalesOrdersControllerTest < ActionController::TestCase
  setup do
    @order = sales_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { deleted: @order.deleted, discount: @order.discount, enabled: @order.enabled, name: @order.name, sales_order_source_id: @order.sales_order_source_id, sales_order_status_id: @order.sales_order_status_id, sales_order_type_id: @order.sales_order_type_id, subtotal: @order.subtotal, surcharge: @order.surcharge, total: @order.total, user_id: @order.user_id }
    end

    assert_redirected_to sales_order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { deleted: @order.deleted, discount: @order.discount, enabled: @order.enabled, name: @order.name, sales_order_source_id: @order.sales_order_source_id, sales_order_status_id: @order.sales_order_status_id, sales_order_type_id: @order.sales_order_type_id, subtotal: @order.subtotal, surcharge: @order.surcharge, total: @order.total, user_id: @order.user_id }
    assert_redirected_to sales_order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to sales_orders_path
  end
end
