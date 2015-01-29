class GroupAddonListPricesController < ApplicationController
  before_action :set_group_add_on_list_price, only: [:show, :edit, :update, :destroy]

  def index
    @group_addon_list_prices = GroupAddonListPrice.all
    # respond_with(@group_addon_list_prices)
  end

  def show
    # respond_with(@group_addon_list_price)
  end

  def new
    @group_addon_list_price = GroupAddonListPrice.new
    # respond_with(@group_addon_list_price)
  end

  def edit
  end

  def create
    @group_addon_list_price = GroupAddonListPrice.new(group_add_on_list_price_params)
    # @group_addon_list_price.save
    # respond_with(@group_addon_list_price)

    respond_to do |format|
      if @group_addon_list_price.save
        format.html { redirect_to @group_addon_list_price, notice: 'Group add on list price was successfully created.' }
        format.json { render :show, status: :created, location: @group_addon_list_price }
      else
        format.html { render :new }
        format.json { render json: @group_addon_list_price.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    # @group_addon_list_price.update(group_add_on_list_price_params)
    # respond_with(@group_addon_list_price)

    respond_to do |format|
      if @group_addon_list_price.update(group_add_on_list_price_params)
        format.html { redirect_to @group_addon_list_price, notice: 'Group add on list price was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_addon_list_price }
      else
        format.html { render :edit }
        format.json { render json: @group_addon_list_price.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @group_addon_list_price.destroy
    # respond_with(@group_addon_list_price)
    respond_to do |format|
      format.html { redirect_to group_addon_list_prices_url, notice: 'Group add on list price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_group_add_on_list_price
      @group_addon_list_price = GroupAddonListPrice.find(params[:id])
    end

    def group_add_on_list_price_params
      params.require(:group_addon_list_price).permit(:cost, :prices, :enabled, :deleted, :group_id, :group_addon_list_id, :addon_id, :category_size_id, :user_id)
    end
end
