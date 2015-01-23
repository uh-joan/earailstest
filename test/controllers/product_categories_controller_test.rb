require 'test_helper'

class ProductCategoriesControllerTest < ActionController::TestCase
  setup do
    @category = product_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:Categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count') do
      post :create, category: { deleted: @category.deleted, enabled: @category.enabled, name: @category.name, shortDescription: @category.shortDescription, user_id: @category.user_id }
    end

    assert_redirected_to product_category_path(assigns(:category))
  end

  test "should show category" do
    get :show, id: @category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category
    assert_response :success
  end

  test "should update category" do
    patch :update, id: @category, category: { deleted: @category.deleted, enabled: @category.enabled, name: @category.name, shortDescription: @category.shortDescription, user_id: @category.user_id }
    assert_redirected_to product_category_path(assigns(:category))
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete :destroy, id: @category
    end

    assert_redirected_to product_categories_path
  end
end
