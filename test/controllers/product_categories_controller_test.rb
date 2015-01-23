require 'test_helper'

class ProductCategoriesControllerTest < ActionController::TestCase
  setup do
    @top_category = product_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:TopCategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create top_category" do
    assert_difference('TopCategory.count') do
      post :create, top_category: { deleted: @top_category.deleted, enabled: @top_category.enabled, name: @top_category.name, shortDescription: @top_category.shortDescription, user_id: @top_category.user_id }
    end

    assert_redirected_to product_category_path(assigns(:top_category))
  end

  test "should show top_category" do
    get :show, id: @top_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @top_category
    assert_response :success
  end

  test "should update top_category" do
    patch :update, id: @top_category, top_category: { deleted: @top_category.deleted, enabled: @top_category.enabled, name: @top_category.name, shortDescription: @top_category.shortDescription, user_id: @top_category.user_id }
    assert_redirected_to product_category_path(assigns(:top_category))
  end

  test "should destroy top_category" do
    assert_difference('TopCategory.count', -1) do
      delete :destroy, id: @top_category
    end

    assert_redirected_to product_categories_path
  end
end
