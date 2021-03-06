class GroupAddonListsController < ApplicationController
  before_action :group_add_on_list_price_params, only: [:show, :edit, :update, :destroy]

  # GET /group_addon_lists
  # GET /group_addon_lists.json
  def index
    @group_addon_lists = GroupAddonList.all
  end

  # GET /group_addon_lists/1
  # GET /group_addon_lists/1.json
  def show
  end

  # GET /group_addon_lists/new
  def new
    @group_addon_list = GroupAddonList.new
  end

  # GET /group_addon_lists/1/edit
  def edit
  end

  # POST /group_addon_lists
  # POST /group_addon_lists.json
  def create
    @group_addon_list = GroupAddonList.new(group_add_on_list_params)

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

  # PATCH/PUT /group_addon_lists/1
  # PATCH/PUT /group_addon_lists/1.json
  def update
    respond_to do |format|
      if @group_addon_list.update(group_add_on_list_params)
        format.html { redirect_to @group_addon_list, notice: 'Group add on list was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_addon_list }
      else
        format.html { render :edit }
        format.json { render json: @group_addon_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_addon_lists/1
  # DELETE /group_addon_lists/1.json
  def destroy
    @group_addon_list.destroy
    respond_to do |format|
      format.html { redirect_to group_addon_lists_url, notice: 'Group add on list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def group_add_on_list_price_params
      @group_addon_list = GroupAddonList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_add_on_list_params
      params.require(:group_addon_list).permit(:name, :displayIndex, :logicIndex, :required, :group_id, :user_id)
    end
end
