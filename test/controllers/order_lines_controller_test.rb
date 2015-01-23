require 'test_helper'

class OrderLinesControllerTest < ActionController::TestCase
  setup do
    @order_line = order_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_line" do
    assert_difference('OrderLine.count') do
      post :create, order_line: { addonCost: @order_line.addonCost, customerNote: @order_line.customerNote, dealText: @order_line.dealText, deleted: @order_line.deleted, discount: @order_line.discount, order_id: @order_line.order_id, price: @order_line.price, quantity: @order_line.quantity, text: @order_line.text, total: @order_line.total, user_id: @order_line.user_id }
    end

    assert_redirected_to order_line_path(assigns(:order_line))
  end

  test "should show order_line" do
    get :show, id: @order_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_line
    assert_response :success
  end

  test "should update order_line" do
    patch :update, id: @order_line, order_line: { addonCost: @order_line.addonCost, customerNote: @order_line.customerNote, dealText: @order_line.dealText, deleted: @order_line.deleted, discount: @order_line.discount, order_id: @order_line.order_id, price: @order_line.price, quantity: @order_line.quantity, text: @order_line.text, total: @order_line.total, user_id: @order_line.user_id }
    assert_redirected_to order_line_path(assigns(:order_line))
  end

  test "should destroy order_line" do
    assert_difference('OrderLine.count', -1) do
      delete :destroy, id: @order_line
    end

    assert_redirected_to order_lines_path
  end
end
