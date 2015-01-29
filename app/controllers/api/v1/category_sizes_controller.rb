module Api
  module V1
    class CategorySizesController < ApplicationController
      before_action :set_product_category_size, only: [:show, :edit, :update, :destroy]

      # GET /category_sizes
      # GET /category_sizes.json
      def index
        @category_sizes = CategorySize.all
        respond_to do |format|
          format.json {render :json => @category_sizes.to_json }
        end
      end

      # GET /category_sizes/1
      # GET /category_sizes/1.json
      def show
        respond_to do |format|
          format.json {render :json => @category_size.to_json }
        end
      end

      # GET /category_sizes/new
      def new
        @category_size = CategorySize.new
        respond_to do |format|
          format.json {render :json => @category_size.to_json }
        end
      end

      # GET /category_sizes/1/edit
      def edit
      end

      # POST /category_sizes
      # POST /category_sizes.json
      def create
        @category_size = CategorySize.new(product_category_size_params)

        respond_to do |format|
          if @category_size.save
            format.json {render :show, status: :created, location: @category_size}
          else
            format.json {render json: @category_size.errors, status: :unprocessable_entity}
          end
        end

      end

      # PATCH/PUT /category_sizes/1
      # PATCH/PUT /category_sizes/1.json
      def update
        respond_to do |format|
          if @category_size.update(product_category_size_params)
            format.json { render :show, status: :ok, location: @category_size }
          else
            format.json { render json: @category_size.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /category_sizes/1
      # DELETE /category_sizes/1.json
      def destroy
        @category_size.destroy
        respond_to do |format|
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_product_category_size
        @category_size = CategorySize.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def product_category_size_params
        params.require(:category_size).permit(:prefixLabelOnline, :prefixLabelPrint, :prefixLabelPos, :postfixLabelOnline, :postfixLabelPrint, :postfixLabelPos, :group_id, :user_id)
      end
    end

  end
end
