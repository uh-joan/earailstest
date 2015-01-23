class AddonListItemsController < ApplicationController
  before_action :set_product_add_on_list_item, only: [:show, :edit, :update, :destroy]

  # GET /AddonListItems
  # GET /AddonListItems.json
  def index
    @addon_list_items = AddonListItem.all
  end

  # GET /AddonListItems/1
  # GET /AddonListItems/1.json
  def show
  end

  # GET /AddonListItems/new
  def new
    @addon_list_item = AddonListItem.new
  end

  # GET /AddonListItems/1/edit
  def edit
  end

  # POST /AddonListItems
  # POST /AddonListItems.json
  def create
    @addon_list_item = AddonListItem.new(product_add_on_list_item_params)

    respond_to do |format|
      if @addon_list_item.save
        format.html { redirect_to @addon_list_item, notice: 'Product add on list item was successfully created.' }
        format.json { render :show, status: :created, location: @addon_list_item }
      else
        format.html { render :new }
        format.json { render json: @addon_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /AddonListItems/1
  # PATCH/PUT /AddonListItems/1.json
  def update
    respond_to do |format|
      if @addon_list_item.update(product_add_on_list_item_params)
        format.html { redirect_to @addon_list_item, notice: 'Product add on list item was successfully updated.' }
        format.json { render :show, status: :ok, location: @addon_list_item }
      else
        format.html { render :edit }
        format.json { render json: @addon_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /AddonListItems/1
  # DELETE /AddonListItems/1.json
  def destroy
    @addon_list_item.destroy
    respond_to do |format|
      format.html { redirect_to product_add_on_list_items_url, notice: 'Product add on list item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_add_on_list_item
      @addon_list_item = AddonListItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_add_on_list_item_params
      params.require(:addon_list_item).permit(:user_id, :product_add_on_list_id, :product_add_on_id)
    end
end
