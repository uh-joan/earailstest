module Api
  module V1
    class TopCategoriesController < ApplicationController
      before_action :set_top_category, only: [:show, :edit, :update, :destroy]

      def index
        @top_categories = TopCategory.all
        respond_to do |format|
          format.json {render :json => @top_categories.to_json }
        end
      end

      # GET /category_sizes/1
      # GET /category_sizes/1.json
      def show
        respond_to do |format|
          format.json {render :json => @top_category.to_json }
        end
      end

      # GET /category_sizes/new
      def new
        @top_category = TopCategory.new
        respond_to do |format|
          format.json {render :json => @top_category.to_json }
        end
      end

      # GET /category_sizes/1/edit
      def edit
      end

      # POST /category_sizes
      # POST /category_sizes.json
      def create
        @top_category = TopCategory.new(top_category_params)

        respond_to do |format|
          if @top_category.save
            format.json { render :show, status: :created, location: @top_category }
          else
            format.json { render json: @top_category.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /category_sizes/1
      # PATCH/PUT /category_sizes/1.json
      def update
        respond_to do |format|
          if @top_category.update(top_category_params)
            format.json { render :show, status: :ok, location: @top_category }
          else
            format.json { render json: @top_category.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /category_sizes/1
      # DELETE /category_sizes/1.json
      def destroy
        @top_category.destroy
        respond_to do |format|
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_top_category
        @top_category = TopCategory.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def top_category_params
        params.require(:top_category).permit(:name, :shortDescription, :enabled, :deleted, :user_id)
      end
    end

  end
end
