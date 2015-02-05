class AddonListItemsController < ApplicationController
  before_action :set_product_add_on_list_item, only: [:show, :edit, :update, :destroy]

  # GET /addon_list_items
  # GET /addon_list_items.json
  def index
    @addon_list_items = AddonListItem.all
  end

  # GET /addon_list_items/1
  # GET /addon_list_items/1.json
  def show
  end

  # GET /addon_list_items/new
  def new
    @addon_list_item = AddonListItem.new
  end

  # GET /addon_list_items/1/edit
  def edit
  end

  # POST /addon_list_items
  # POST /addon_list_items.json
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

  # PATCH/PUT /addon_list_items/1
  # PATCH/PUT /addon_list_items/1.json
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

  # DELETE /addon_list_items/1
  # DELETE /addon_list_items/1.json
  def destroy
    @addon_list_item.destroy
    respond_to do |format|
      format.html { redirect_to addon_list_items_url, notice: 'Product add on list item was successfully destroyed.' }
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
      params.require(:addon_list_item).permit(:name, :user_id, :displayIndex, :addon_list_id, :addon_id)
    end
end
