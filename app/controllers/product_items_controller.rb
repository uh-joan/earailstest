class ProductItemsController < ApplicationController
  before_action :set_product_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @product_items = ProductItem.all
    respond_with(@product_items)
  end

  def show
    respond_with(@product_item)
  end

  def new
    @product_item = ProductItem.new
    respond_with(@product_item)
  end

  def edit
  end

  def create
    @product_item = ProductItem.new(product_item_params)
    @product_item.save
    respond_with(@product_item)
  end

  def update
    @product_item.update(product_item_params)
    respond_with(@product_item)
  end

  def destroy
    @product_item.destroy
    respond_with(@product_item)
  end

  private
    def set_product_item
      @product_item = ProductItem.find(params[:id])
    end

    def product_item_params
      params.require(:product_item).permit(:name, :enabled, :deleted, :user_id, :product_group_id, :product_item_type_id )
    end
end
