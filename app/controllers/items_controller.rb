class ItemsController < ApplicationController
  before_action :set_product_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @items = Item.all
    respond_with(@items)
  end

  def show
    respond_with(@item)
  end

  def new
    @item = Item.new
    respond_with(@item)
  end

  def edit
  end

  def create
    @item = Item.new(product_item_params)
    @item.save
    respond_with(@item)
  end

  def update
    @item.update(product_item_params)
    respond_with(@item)
  end

  def destroy
    @item.destroy
    respond_with(@item)
  end

  private
    def set_product_item
      @item = Item.find(params[:id])
    end

    def product_item_params
      params.require(:item).permit(:name, :enabled, :deleted, :user_id, :product_group_id, :product_item_type_id )
    end
end
