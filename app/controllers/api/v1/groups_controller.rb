module Api
  module V1
    class GroupsController < ApplicationController
      before_action :set_group, only: [:show, :edit, :update, :destroy]

      def index
        @groups = Group.all
        respond_to do |format|
          format.json {render :json => @groups.to_json }
        end
      end

      # GET /groups/1
      # GET /groups/1.json
      def show
        respond_to do |format|
          format.json {render :json => @group.to_json }
        end
      end

      # GET /groups/new
      def new
        @group = Group.new
        respond_to do |format|
          format.json {render :json => @group.to_json }
        end
      end

      # GET /groups/1/edit
      def edit
      end

      # POST /groups
      # POST /groups.json
      def create
        @group = Group.new(group_params)

        respond_to do |format|
          if @group.save
            format.json { render :show, status: :created, location: @group }
          else
            format.json { render json: @group.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /groups/1
      # PATCH/PUT /groups/1.json
      def update
        respond_to do |format|
          if @group.update(group_params)
            format.json { render :show, status: :ok, location: @group }
          else
            format.json { render json: @group.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /groups/1
      # DELETE /groups/1.json
      def destroy
        @group.destroy
        respond_to do |format|
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_group
        @group = Group.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def group_params
        params.require(:group).permit(:name, :description, :onlineViewLabel, :posViewLabel, :posViewLabel, :headerImagePath, :displayIndex, :visibleOnline, :visibleOnPos, :enabled, :deleted, :user_id)
      end
    end

  end
end
