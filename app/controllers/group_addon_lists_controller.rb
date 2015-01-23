class GroupAddonListsController < ApplicationController
  before_action :set_product_group_add_on_list, only: [:show, :edit, :update, :destroy]

  # GET /GroupAddonLists
  # GET /GroupAddonLists.json
  def index
    @group_addon_lists = GroupAddonList.all
  end

  # GET /GroupAddonLists/1
  # GET /GroupAddonLists/1.json
  def show
  end

  # GET /GroupAddonLists/new
  def new
    @group_addon_list = GroupAddonList.new
  end

  # GET /GroupAddonLists/1/edit
  def edit
  end

  # POST /GroupAddonLists
  # POST /GroupAddonLists.json
  def create
    @group_addon_list = GroupAddonList.new(product_group_add_on_list_params)

    respond_to do |format|
      if @group_addon_list.save
        format.html { redirect_to @group_addon_list, notice: 'Product group add on list was successfully created.' }
        format.json { render :show, status: :created, location: @group_addon_list }
      else
        format.html { render :new }
        format.json { render json: @group_addon_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /GroupAddonLists/1
  # PATCH/PUT /GroupAddonLists/1.json
  def update
    respond_to do |format|
      if @group_addon_list.update(product_group_add_on_list_params)
        format.html { redirect_to @group_addon_list, notice: 'Product group add on list was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_addon_list }
      else
        format.html { render :edit }
        format.json { render json: @group_addon_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /GroupAddonLists/1
  # DELETE /GroupAddonLists/1.json
  def destroy
    @group_addon_list.destroy
    respond_to do |format|
      format.html { redirect_to product_group_add_on_lists_url, notice: 'Product group add on list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_group_add_on_list
      @group_addon_list = GroupAddonList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_group_add_on_list_params
      params.require(:group_addon_list).permit(:name, :displayIndex, :logicIndex, :required, :product_group_id, :user_id)
    end
end
