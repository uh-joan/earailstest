module Api
  module V1
    class ProductCategoriesController < ApplicationController
      respond_to :json

      def index
        # @productCategories = Category.all
        # @productCategorySizes = @productCategorySizes.all
        
        respond_with Category.all.to_json
        # render json: Category.all
      end

    end
  end
end