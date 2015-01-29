module Api
  module V1
    class ItemsController < ApplicationController
      before_action :set_item, only: [:show, :edit, :update, :destroy]

      def index
        @items = Item.all
        respond_to do |format|
          format.json {render :json => @items.to_json }
        end
      end

      # GET /items/1
      # GET /items/1.json
      def show
        respond_to do |format|
          format.json {render :json => @item.to_json }
        end
      end

      # GET /items/new
      def new
        @item = Item.new
        respond_to do |format|
          format.json {render :json => @item.to_json }
        end
      end

      # GET /items/1/edit
      def edit
      end

      # POST /items
      # POST /items.json
      def create
        @item = Item.new(item_params)

        respond_to do |format|
          if @item.save
            format.json { render :show, status: :created, location: @item }
          else
            format.json { render json: @item.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /items/1
      # PATCH/PUT /items/1.json
      def update
        respond_to do |format|
          if @item.update(item_params)
            format.json { render :show, status: :ok, location: @item }
          else
            format.json { render json: @item.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /items/1
      # DELETE /items/1.json
      def destroy
        @item.destroy
        respond_to do |format|
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_item
        @item = Item.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def item_params
        params.require(:item).permit(:name, :description, :onlineViewLabel, :posViewLabel, :posViewLabel, :headerImagePath, :displayIndex, :visibleOnline, :visibleOnPos, :enabled, :deleted, :user_id, :top_category_id)
      end
    end

  end
end
