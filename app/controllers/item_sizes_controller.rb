class ItemSizesController < ApplicationController
  before_action :set_product_item_size, only: [:show, :edit, :update, :destroy]

  # respond_to :html

  def index
    @item_sizes = ItemSize.all
    # respond_with(@item_sizes)
  end

  def show
    # respond_with(@item_size)
  end

  def new
    @item_size = ItemSize.new
    # respond_with(@item_size)
  end

  def edit
  end

  def create
    @item_size = ItemSize.new(product_item_size_params)
    # @item_size.save
    # respond_with(@item_size)

    respond_to do |format|
      if @item_size.save
        format.html { redirect_to @item_size, notice: 'Product item size was successfully created.' }
        format.json { render :show, status: :created, location: @item_size}
      else
        format.html { render :new }
        format.json { render json: @item_size.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @item_size.update(product_item_size_params)
    # respond_with(@item_size)

    respond_to do |format|
      if @item_size.update(product_item_size_params)
        format.html { redirect_to @item_size, notice: 'Product item size was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_size }
      else
        format.html { render :edit }
        format.json { render json: @item_size.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item_size.destroy
    # respond_with(@item_size)

    respond_to do |format|
      format.html { redirect_to item_sizes_url, notice: 'Product item size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_product_item_size
      @item_size = ItemSize.find(params[:id])
    end

    def product_item_size_params
      params.require(:item_size).permit(:name, :item_id, :user_id)
    end
end
