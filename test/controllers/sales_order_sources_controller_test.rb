require 'test_helper'

class SalesOrderSourcesControllerTest < ActionController::TestCase
  setup do
    @sales_order_source = sales_order_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_order_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_order_source" do
    assert_difference('SalesOrderSource.count') do
      post :create, sales_order_source: { name: @sales_order_source.name, user_id: @sales_order_source.user_id }
    end

    assert_redirected_to sales_order_source_path(assigns(:sales_order_source))
  end

  test "should show sales_order_source" do
    get :show, id: @sales_order_source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_order_source
    assert_response :success
  end

  test "should update sales_order_source" do
    patch :update, id: @sales_order_source, sales_order_source: { name: @sales_order_source.name, user_id: @sales_order_source.user_id }
    assert_redirected_to sales_order_source_path(assigns(:sales_order_source))
  end

  test "should destroy sales_order_source" do
    assert_difference('SalesOrderSource.count', -1) do
      delete :destroy, id: @sales_order_source
    end

    assert_redirected_to sales_order_sources_path
  end
end
