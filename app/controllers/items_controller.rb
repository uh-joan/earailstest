class ItemsController < ApplicationController
  before_action :set_product_item, only: [:show, :edit, :update, :destroy]

  # respond_to :html

  def index
    @items = Item.all
    # respond_with(@items)
  end

  def show
    # respond_with(@item)
  end

  def new
    @item = Item.new
    # respond_with(@item)
  end

  def edit
  end

  def create
    @item = Item.new(product_item_params)
    # @item.save
    # respond_with(@item)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Product item was successfully created.' }
        format.json { render :show, status: :created, location: @item}
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    # @item.update(product_item_params)
    # respond_with(@item)

    respond_to do |format|
      if @item.update(product_item_params)
        format.html { redirect_to @item, notice: 'Product item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    # @item.destroy
    # respond_with(@item)

    @item.destroy
    respond_to do |format|
      format.html { redirect_to item_url, notice: 'Product item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_product_item
      @item = Item.find(params[:id])
    end

    def product_item_params
      params.require(:item).permit(:name, :enabled, :deleted, :user_id, :group_id, :item_type_id )
    end
end
