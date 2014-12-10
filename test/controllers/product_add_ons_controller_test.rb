require 'test_helper'

class ProductAddOnsControllerTest < ActionController::TestCase
  setup do
    @product_add_on = product_add_ons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_add_ons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_add_on" do
    assert_difference('ProductAddOn.count') do
      post :create, product_add_on: { displayIndex: @product_add_on.displayIndex, name: @product_add_on.name, onlineViewLabel: @product_add_on.onlineViewLabel, posViewLabel: @product_add_on.posViewLabel, printViewLabel: @product_add_on.printViewLabel, user_id: @product_add_on.user_id, visibleOnline: @product_add_on.visibleOnline, visiblePos: @product_add_on.visiblePos }
    end

    assert_redirected_to product_add_on_path(assigns(:product_add_on))
  end

  test "should show product_add_on" do
    get :show, id: @product_add_on
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_add_on
    assert_response :success
  end

  test "should update product_add_on" do
    patch :update, id: @product_add_on, product_add_on: { displayIndex: @product_add_on.displayIndex, name: @product_add_on.name, onlineViewLabel: @product_add_on.onlineViewLabel, posViewLabel: @product_add_on.posViewLabel, printViewLabel: @product_add_on.printViewLabel, user_id: @product_add_on.user_id, visibleOnline: @product_add_on.visibleOnline, visiblePos: @product_add_on.visiblePos }
    assert_redirected_to product_add_on_path(assigns(:product_add_on))
  end

  test "should destroy product_add_on" do
    assert_difference('ProductAddOn.count', -1) do
      delete :destroy, id: @product_add_on
    end

    assert_redirected_to product_add_ons_path
  end
end
