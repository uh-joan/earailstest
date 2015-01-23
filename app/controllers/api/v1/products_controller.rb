module Api
  module V1
    class ProductsController < ApplicationController
      respond_to :json

      def index
        # railscasts.com/episodes/320-jbuilder?view=asciicast
        # @pcs = CategorySize.all
        # respond_to do |format|
        #   format.json {
        #     render json: @pcs.
        #   }
        # end

        # @pcs = CategorySize.all
        respond_with ProductCategorySizeSerializer.new(CategorySize.first).as_json

        # ProductCategorySizeSerializer.new(CategorySize.first).as_json
        # render json: TopCategory.all
      end

    end
  end
end