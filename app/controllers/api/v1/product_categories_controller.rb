module Api
  module V1
    class ProductCategoriesController < ApplicationController
      respond_to :json

      def index
        # @productCategories = ProductCategory.all
        # @productCategorySizes = @productCategorySizes.all
        
        respond_with ProductCategory.all.to_json
        # render json: ProductCategory.all
      end

    end
  end
end