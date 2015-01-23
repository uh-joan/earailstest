require 'test_helper'

class ProductItemTypesControllerTest < ActionController::TestCase
  setup do
    @item_type = product_item_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ItemTypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_type" do
    assert_difference('ItemType.count') do
      post :create, item_type: { name: @item_type.name, user_id: @item_type.user_id }
    end

    assert_redirected_to product_item_type_path(assigns(:item_type))
  end

  test "should show item_type" do
    get :show, id: @item_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_type
    assert_response :success
  end

  test "should update item_type" do
    patch :update, id: @item_type, item_type: { name: @item_type.name, user_id: @item_type.user_id }
    assert_redirected_to product_item_type_path(assigns(:item_type))
  end

  test "should destroy item_type" do
    assert_difference('ItemType.count', -1) do
      delete :destroy, id: @item_type
    end

    assert_redirected_to product_item_types_path
  end
end
