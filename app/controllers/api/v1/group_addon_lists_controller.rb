module Api
  module V1
    class GroupAddonListsController < ApplicationController
      before_action :set_group_addon_list, only: [:show, :edit, :update, :destroy]

      def index
        @group_addon_lists = GroupAddonList.all
        respond_to do |format|
          format.json {render :json => @group_addon_lists.to_json }
        end
      end

      # GET /group_addon_lists/1
      # GET /group_addon_lists/1.json
      def show
        respond_to do |format|
          format.json {render :json => @group_addon_list.to_json }
        end
      end

      # GET /group_addon_lists/new
      def new
        @group_addon_list = GroupAddonList.new
        respond_to do |format|
          format.json {render :json => @group_addon_list.to_json }
        end
      end

      # GET /group_addon_lists/1/edit
      def edit
      end

      # POST /group_addon_lists
      # POST /group_addon_lists.json
      def create
        @group_addon_list = GroupAddonList.new(group_addon_list_params)

        respond_to do |format|
          if @group_addon_list.save
            format.json { render :show, status: :created, location: @group_addon_list }
          else
            format.json { render json: @group_addon_list.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /group_addon_lists/1
      # PATCH/PUT /group_addon_lists/1.json
      def update
        respond_to do |format|
          if @group_addon_list.update(group_addon_list_params)
            format.json { render :show, status: :ok, location: @group_addon_list }
          else
            format.json { render json: @group_addon_list.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /group_addon_lists/1
      # DELETE /group_addon_lists/1.json
      def destroy
        @group_addon_list.destroy
        respond_to do |format|
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_group_addon_list
        @group_addon_list = GroupAddonList.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def group_addon_list_params
        params.require(:group_addon_list).permit(:name, :displayIndex, :logicIndex, :required, :group_id, :user_id)
      end
    end

  end
end
