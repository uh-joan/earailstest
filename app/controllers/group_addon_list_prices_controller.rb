class GroupAddonListPricesController < ApplicationController
  before_action :set_product_group_add_on_list_price, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @group_addon_list_prices = GroupAddonListPrice.all
    respond_with(@group_addon_list_prices)
  end

  def show
    respond_with(@group_addon_list_price)
  end

  def new
    @group_addon_list_price = GroupAddonListPrice.new
    respond_with(@group_addon_list_price)
  end

  def edit
  end

  def create
    @group_addon_list_price = GroupAddonListPrice.new(product_group_add_on_list_price_params)
    @group_addon_list_price.save
    respond_with(@group_addon_list_price)
  end

  def update
    @group_addon_list_price.update(product_group_add_on_list_price_params)
    respond_with(@group_addon_list_price)
  end

  def destroy
    @group_addon_list_price.destroy
    respond_with(@group_addon_list_price)
  end

  private
    def set_product_group_add_on_list_price
      @group_addon_list_price = GroupAddonListPrice.find(params[:id])
    end

    def product_group_add_on_list_price_params
      params.require(:group_addon_list_price).permit(:cost, :prices, :enabled, :deleted, :product_group_id, :pr_gr_adon_li_id, :product_add_on_id, :pr_cat_size_id, :user_id)
    end
end
