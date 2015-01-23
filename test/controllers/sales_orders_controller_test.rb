require 'test_helper'

class SalesOrdersControllerTest < ActionController::TestCase
  setup do
    @sales_order = sales_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_order" do
    assert_difference('SalesOrder.count') do
      post :create, sales_order: { deleted: @sales_order.deleted, discount: @sales_order.discount, enabled: @sales_order.enabled, name: @sales_order.name, sales_order_source_id: @sales_order.sales_order_source_id, sales_order_status_id: @sales_order.sales_order_status_id, sales_order_type_id: @sales_order.sales_order_type_id, subtotal: @sales_order.subtotal, surcharge: @sales_order.surcharge, total: @sales_order.total, user_id: @sales_order.user_id }
    end

    assert_redirected_to sales_order_path(assigns(:sales_order))
  end

  test "should show sales_order" do
    get :show, id: @sales_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_order
    assert_response :success
  end

  test "should update sales_order" do
    patch :update, id: @sales_order, sales_order: { deleted: @sales_order.deleted, discount: @sales_order.discount, enabled: @sales_order.enabled, name: @sales_order.name, sales_order_source_id: @sales_order.sales_order_source_id, sales_order_status_id: @sales_order.sales_order_status_id, sales_order_type_id: @sales_order.sales_order_type_id, subtotal: @sales_order.subtotal, surcharge: @sales_order.surcharge, total: @sales_order.total, user_id: @sales_order.user_id }
    assert_redirected_to sales_order_path(assigns(:sales_order))
  end

  test "should destroy sales_order" do
    assert_difference('SalesOrder.count', -1) do
      delete :destroy, id: @sales_order
    end

    assert_redirected_to sales_orders_path
  end
end
