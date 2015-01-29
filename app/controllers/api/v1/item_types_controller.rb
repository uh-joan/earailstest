module Api
  module V1
    class ItemTypesController < ApplicationController
      before_action :set_item_type, only: [:show, :edit, :update, :destroy]

      def index
        @item_types = ItemType.all
        respond_to do |format|
          format.json {render :json => @item_types.to_json }
        end
      end

      # GET /item_types/1
      # GET /item_types/1.json
      def show
        respond_to do |format|
          format.json {render :json => @item_type.to_json }
        end
      end

      # GET /item_types/new
      def new
        @item_type = ItemType.new
        respond_to do |format|
          format.json {render :json => @item_type.to_json }
        end
      end

      # GET /item_types/1/edit
      def edit
      end

      # POST /item_types
      # POST /item_types.json
      def create
        @item_type = ItemType.new(item_type_params)

        respond_to do |format|
          if @item_type.save
            format.json { render :show, status: :created, location: @item_type }
          else
            format.json { render json: @item_type.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /item_types/1
      # PATCH/PUT /item_types/1.json
      def update
        respond_to do |format|
          if @item_type.update(item_type_params)
            format.json { render :show, status: :ok, location: @item_type }
          else
            format.json { render json: @item_type.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /item_types/1
      # DELETE /item_types/1.json
      def destroy
        @item_type.destroy
        respond_to do |format|
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_item_type
        @item_type = ItemType.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def item_type_params
        params.require(:item_type).permit(:name, :user_id)
      end
    end

  end
end
