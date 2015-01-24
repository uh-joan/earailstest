class AddonListsController < ApplicationController
  before_action :set_product_add_on_list, only: [:show, :edit, :update, :destroy]

  # GET /addon_lists
  # GET /addon_lists.json
  def index
    @addon_lists = AddonList.all
  end

  # GET /addon_lists/1
  # GET /addon_lists/1.json
  def show
  end

  # GET /addon_lists/new
  def new
    @addon_list = AddonList.new
  end

  # GET /addon_lists/1/edit
  def edit
  end

  # POST /addon_lists
  # POST /addon_lists.json
  def create
    @addon_list = AddonList.new(product_add_on_list_params)

    respond_to do |format|
      if @addon_list.save
        format.html { redirect_to @addon_list, notice: 'Product add on list was successfully created.' }
        format.json { render :show, status: :created, location: @addon_list }
      else
        format.html { render :new }
        format.json { render json: @addon_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addon_lists/1
  # PATCH/PUT /addon_lists/1.json
  def update
    respond_to do |format|
      if @addon_list.update(product_add_on_list_params)
        format.html { redirect_to @addon_list, notice: 'Product add on list was successfully updated.' }
        format.json { render :show, status: :ok, location: @addon_list }
      else
        format.html { render :edit }
        format.json { render json: @addon_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addon_lists/1
  # DELETE /addon_lists/1.json
  def destroy
    @addon_list.destroy
    respond_to do |format|
      format.html { redirect_to addon_lists_url, notice: 'Product add on list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_add_on_list
      @addon_list = AddonList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_add_on_list_params
      params.require(:addon_list).permit(:name, :onlineViewLabel, :posViewLabel, :sortListByIndex, :sortListByName, :multipleSelection, :enabled, :user_id)
    end
end
