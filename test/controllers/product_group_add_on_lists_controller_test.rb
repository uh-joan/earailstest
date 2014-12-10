require 'test_helper'

class ProductGroupAddOnListsControllerTest < ActionController::TestCase
  setup do
    @product_group_add_on_list = product_group_add_on_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_group_add_on_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_group_add_on_list" do
    assert_difference('ProductGroupAddOnList.count') do
      post :create, product_group_add_on_list: { displayIndex: @product_group_add_on_list.displayIndex, logicIndex: @product_group_add_on_list.logicIndex, name: @product_group_add_on_list.name, product_group_id: @product_group_add_on_list.product_group_id, required: @product_group_add_on_list.required, user_id: @product_group_add_on_list.user_id }
    end

    assert_redirected_to product_group_add_on_list_path(assigns(:product_group_add_on_list))
  end

  test "should show product_group_add_on_list" do
    get :show, id: @product_group_add_on_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_group_add_on_list
    assert_response :success
  end

  test "should update product_group_add_on_list" do
    patch :update, id: @product_group_add_on_list, product_group_add_on_list: { displayIndex: @product_group_add_on_list.displayIndex, logicIndex: @product_group_add_on_list.logicIndex, name: @product_group_add_on_list.name, product_group_id: @product_group_add_on_list.product_group_id, required: @product_group_add_on_list.required, user_id: @product_group_add_on_list.user_id }
    assert_redirected_to product_group_add_on_list_path(assigns(:product_group_add_on_list))
  end

  test "should destroy product_group_add_on_list" do
    assert_difference('ProductGroupAddOnList.count', -1) do
      delete :destroy, id: @product_group_add_on_list
    end

    assert_redirected_to product_group_add_on_lists_path
  end
end
