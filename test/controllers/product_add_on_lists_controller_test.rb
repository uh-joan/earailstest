require 'test_helper'

class ProductAddOnListsControllerTest < ActionController::TestCase
  setup do
    @product_add_on_list = product_add_on_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_add_on_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_add_on_list" do
    assert_difference('ProductAddOnList.count') do
      post :create, product_add_on_list: { enabled: @product_add_on_list.enabled, multipleSelection: @product_add_on_list.multipleSelection, name: @product_add_on_list.name, onlineViewLabel: @product_add_on_list.onlineViewLabel, posViewLabel: @product_add_on_list.posViewLabel, sortListByIndex: @product_add_on_list.sortListByIndex, sortListByName: @product_add_on_list.sortListByName, user_id: @product_add_on_list.user_id }
    end

    assert_redirected_to product_add_on_list_path(assigns(:product_add_on_list))
  end

  test "should show product_add_on_list" do
    get :show, id: @product_add_on_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_add_on_list
    assert_response :success
  end

  test "should update product_add_on_list" do
    patch :update, id: @product_add_on_list, product_add_on_list: { enabled: @product_add_on_list.enabled, multipleSelection: @product_add_on_list.multipleSelection, name: @product_add_on_list.name, onlineViewLabel: @product_add_on_list.onlineViewLabel, posViewLabel: @product_add_on_list.posViewLabel, sortListByIndex: @product_add_on_list.sortListByIndex, sortListByName: @product_add_on_list.sortListByName, user_id: @product_add_on_list.user_id }
    assert_redirected_to product_add_on_list_path(assigns(:product_add_on_list))
  end

  test "should destroy product_add_on_list" do
    assert_difference('ProductAddOnList.count', -1) do
      delete :destroy, id: @product_add_on_list
    end

    assert_redirected_to product_add_on_lists_path
  end
end
