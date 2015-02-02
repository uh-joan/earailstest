class ItemAddonsController < ApplicationController
  before_action :set_item_addon, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @item_addons = ItemAddon.all
    respond_with(@item_addons)
  end

  def show
    respond_with(@item_addon)
  end

  def new
    @item_addon = ItemAddon.new
    respond_with(@item_addon)
  end

  def edit
  end

  def create
    @item_addon = ItemAddon.new(item_addon_params)
    @item_addon.save
    respond_with(@item_addon)
  end

  def update
    @item_addon.update(item_addon_params)
    respond_with(@item_addon)
  end

  def destroy
    @item_addon.destroy
    respond_with(@item_addon)
  end

  private
    def set_item_addon
      @item_addon = ItemAddon.find(params[:id])
    end

    def item_addon_params
      params.require(:item_addon).permit(:item_id, :addon_id, :included, :default)
    end
end
