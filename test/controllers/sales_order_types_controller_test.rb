require 'test_helper'

class SalesOrderTypesControllerTest < ActionController::TestCase
  setup do
    @sales_order_type = sales_order_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_order_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_order_type" do
    assert_difference('SalesOrderType.count') do
      post :create, sales_order_type: { name: @sales_order_type.name, user_id: @sales_order_type.user_id }
    end

    assert_redirected_to sales_order_type_path(assigns(:sales_order_type))
  end

  test "should show sales_order_type" do
    get :show, id: @sales_order_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_order_type
    assert_response :success
  end

  test "should update sales_order_type" do
    patch :update, id: @sales_order_type, sales_order_type: { name: @sales_order_type.name, user_id: @sales_order_type.user_id }
    assert_redirected_to sales_order_type_path(assigns(:sales_order_type))
  end

  test "should destroy sales_order_type" do
    assert_difference('SalesOrderType.count', -1) do
      delete :destroy, id: @sales_order_type
    end

    assert_redirected_to sales_order_types_path
  end
end
