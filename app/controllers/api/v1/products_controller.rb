module Api
  module V1
    class ProductsController < ApplicationController
      respond_to :json

      def index
        # railscasts.com/episodes/320-jbuilder?view=asciicast
        # @pcs = ProductCategorySize.all
        # respond_to do |format|
        #   format.json {
        #     render json: @pcs.
        #   }
        # end

        # @pcs = ProductCategorySize.all
        respond_with ProductCategorySizeSerializer.new(ProductCategorySize.first).as_json

        # ProductCategorySizeSerializer.new(ProductCategorySize.first).as_json
        # render json: Category.all
      end

    end
  end
end