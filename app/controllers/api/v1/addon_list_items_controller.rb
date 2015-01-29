module Api
  module V1
    class AddonListItemsController < ApplicationController
      before_action :set_addon_list_item, only: [:show, :edit, :update, :destroy]

      def index
        @addon_list_items = AddonListItem.all
        respond_to do |format|
          format.json {render :json => @addon_list_items.to_json }
        end
      end

      # GET /addon_list_items/1
      # GET /addon_list_items/1.json
      def show
        respond_to do |format|
          format.json {render :json => @addon_list_item.to_json }
        end
      end

      # GET /addon_list_items/new
      def new
        @addon_list_item = AddonListItem.new
        respond_to do |format|
          format.json {render :json => @addon_list_item.to_json }
        end
      end

      # GET /addon_list_items/1/edit
      def edit
      end

      # POST /addon_list_items
      # POST /addon_list_items.json
      def create
        @addon_list_item = AddonListItem.new(addon_params)

        respond_to do |format|
          if @addon_list_item.save
            format.json { render :show, status: :created, location: @addon_list_item }
          else
            format.json { render json: @addon_list_item.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /addon_list_items/1
      # PATCH/PUT /addon_list_items/1.json
      def update
        respond_to do |format|
          if @addon_list_item.update(addon_params)
            format.json { render :show, status: :ok, location: @addon_list_item }
          else
            format.json { render json: @addon_list_item.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /addon_list_items/1
      # DELETE /addon_list_items/1.json
      def destroy
        @addon_list_item.destroy
        respond_to do |format|
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_addon
        @addon_list_item = AddonListItem.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def addon_params
        params.require(:addon_list_item_item).permit(:name, :user_id, :addon_list_id, :addon_id)
      end
    end

  end
end
