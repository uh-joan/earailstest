module Api
  module V1
    class AddonListsController < ApplicationController
      before_action :set_addon, only: [:show, :edit, :update, :destroy]

      def index
        @addon_lists = AddonList.all
        respond_to do |format|
          format.json {render :json => @addon_lists.to_json }
        end
      end

      # GET /addon_lists/1
      # GET /addon_lists/1.json
      def show
        respond_to do |format|
          format.json {render :json => @addon_list.to_json }
        end
      end

      # GET /addon_lists/new
      def new
        @addon_list = AddonList.new
        respond_to do |format|
          format.json {render :json => @addon_list.to_json }
        end
      end

      # GET /addon_lists/1/edit
      def edit
      end

      # POST /addon_lists
      # POST /addon_lists.json
      def create
        @addon_list = AddonList.new(addon_params)

        respond_to do |format|
          if @addon_list.save
            format.json { render :show, status: :created, location: @addon_list }
          else
            format.json { render json: @addon_list.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /addon_lists/1
      # PATCH/PUT /addon_lists/1.json
      def update
        respond_to do |format|
          if @addon_list.update(addon_params)
            format.json { render :show, status: :ok, location: @addon_list }
          else
            format.json { render json: @addon_list.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /addon_lists/1
      # DELETE /addon_lists/1.json
      def destroy
        @addon_list.destroy
        respond_to do |format|
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_addon
        @addon_list = AddonList.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def addon_params
        params.require(:addon_list).permit(:name, :onlineViewLabel, :posViewLabel, :sortListByIndex, :sortListByName, :multipleSelection, :enabled, :user_id)
      end
    end

  end
end
