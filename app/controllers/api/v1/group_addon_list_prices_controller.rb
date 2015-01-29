module Api
  module V1
    class GroupAddonListPricesController < ApplicationController
      before_action :set_group_addon_list_price, only: [:show, :edit, :update, :destroy]

      def index
        @group_addon_list_prices = GroupAddonListPrice.all
        respond_to do |format|
          format.json {render :json => @group_addon_list_prices.to_json }
        end
      end

      # GET /group_addon_list_prices/1
      # GET /group_addon_list_prices/1.json
      def show
        respond_to do |format|
          format.json {render :json => @group_addon_list_price.to_json }
        end
      end

      # GET /group_addon_list_prices/new
      def new
        @group_addon_list_price = GroupAddonListPrice.new
        respond_to do |format|
          format.json {render :json => @group_addon_list_price.to_json }
        end
      end

      # GET /group_addon_list_prices/1/edit
      def edit
      end

      # POST /group_addon_list_prices
      # POST /group_addon_list_prices.json
      def create
        @group_addon_list_price = GroupAddonListPrice.new(group_addon_list_price_params)

        respond_to do |format|
          if @group_addon_list_price.save
            format.json { render :show, status: :created, location: @group_addon_list_price }
          else
            format.json { render json: @group_addon_list_price.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /group_addon_list_prices/1
      # PATCH/PUT /group_addon_list_prices/1.json
      def update
        respond_to do |format|
          if @group_addon_list_price.update(group_addon_list_price_params)
            format.json { render :show, status: :ok, location: @group_addon_list_price }
          else
            format.json { render json: @group_addon_list_price.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /group_addon_list_prices/1
      # DELETE /group_addon_list_prices/1.json
      def destroy
        @group_addon_list_price.destroy
        respond_to do |format|
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_group_addon_list_price
        @group_addon_list_price = GroupAddonListPrice.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def group_addon_list_price_params
        params.require(:group_addon_list_price).permit(:cost, :prices, :enabled, :deleted, :group_id, :group_addon_list_id, :addon_id, :category_size_id, :user_id)
      end
    end

  end
end
