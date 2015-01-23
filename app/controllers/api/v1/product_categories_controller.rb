module Api
  module V1
    class ProductCategoriesController < ApplicationController
      respond_to :json

      def index
        # @productCategories = TopCategory.all
        # @productCategorySizes = @productCategorySizes.all
        
        respond_with TopCategory.all.to_json
        # render json: TopCategory.all
      end

    end
  end
end