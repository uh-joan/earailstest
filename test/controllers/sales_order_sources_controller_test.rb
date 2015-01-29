require 'test_helper'

class SalesOrderSourcesControllerTest < ActionController::TestCase
  setup do
    @order_source = sales_order_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_source" do
    assert_difference('OrderSource.count') do
      post :create, order_source: { name: @order_source.name, user_id: @order_source.user_id }
    end

    assert_redirected_to sales_order_source_path(assigns(:order_source))
  end

  test "should show order_source" do
    get :show, id: @order_source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_source
    assert_response :success
  end

  test "should update order_source" do
    patch :update, id: @order_source, order_source: { name: @order_source.name, user_id: @order_source.user_id }
    assert_redirected_to sales_order_source_path(assigns(:order_source))
  end

  test "should destroy order_source" do
    assert_difference('OrderSource.count', -1) do
      delete :destroy, id: @order_source
    end

    assert_redirected_to sales_order_sources_path
  end
end
