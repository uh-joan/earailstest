module Api
  module V1
    class AddonsController < ApplicationController
      before_action :set_addon, only: [:show, :edit, :update, :destroy]

      def index
        @addons = Addon.all
        respond_to do |format|
          format.json {render :json => @addons.to_json }
        end
      end

      # GET /addons/1
      # GET /addons/1.json
      def show
        respond_to do |format|
          format.json {render :json => @addon.to_json }
        end
      end

      # GET /addons/new
      def new
        @addon = Addon.new
        respond_to do |format|
          format.json {render :json => @addon.to_json }
        end
      end

      # GET /addons/1/edit
      def edit
      end

      # POST /addons
      # POST /addons.json
      def create
        @addon = Addon.new(addon_params)

        respond_to do |format|
          if @addon.save
            format.json { render :show, status: :created, location: @addon }
          else
            format.json { render json: @addon.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /addons/1
      # PATCH/PUT /addons/1.json
      def update
        respond_to do |format|
          if @addon.update(addon_params)
            format.json { render :show, status: :ok, location: @addon }
          else
            format.json { render json: @addon.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /addons/1
      # DELETE /addons/1.json
      def destroy
        @addon.destroy
        respond_to do |format|
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_addon
        @addon = Addon.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def addon_params
        params.require(:addon).permit(:name, :onlineViewLabel, :printViewLabel, :posViewLabel, :displayIndex, :visibleOnline, :visiblePos, :user_id)
      end
    end

  end
end
