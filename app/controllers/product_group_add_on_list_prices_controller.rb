class ProductGroupAddOnListPricesController < ApplicationController
  before_action :set_product_group_add_on_list_price, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @product_group_add_on_list_prices = ProductGroupAddOnListPrice.all
    respond_with(@product_group_add_on_list_prices)
  end

  def show
    respond_with(@product_group_add_on_list_price)
  end

  def new
    @product_group_add_on_list_price = ProductGroupAddOnListPrice.new
    respond_with(@product_group_add_on_list_price)
  end

  def edit
  end

  def create
    @product_group_add_on_list_price = ProductGroupAddOnListPrice.new(product_group_add_on_list_price_params)
    @product_group_add_on_list_price.save
    respond_with(@product_group_add_on_list_price)
  end

  def update
    @product_group_add_on_list_price.update(product_group_add_on_list_price_params)
    respond_with(@product_group_add_on_list_price)
  end

  def destroy
    @product_group_add_on_list_price.destroy
    respond_with(@product_group_add_on_list_price)
  end

  private
    def set_product_group_add_on_list_price
      @product_group_add_on_list_price = ProductGroupAddOnListPrice.find(params[:id])
    end

    def product_group_add_on_list_price_params
      params.require(:product_group_add_on_list_price).permit(:cost, :prices, :enabled, :deleted, :product_group_id, :pr_gr_adon_li_id, :product_add_on_id, :pr_cat_size_id, :user_id)
    end
end
