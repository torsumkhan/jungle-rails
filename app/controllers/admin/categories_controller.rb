class Admin::CategoriesController < ApplicationController

    def index
        @categories = Category.order(name: :asc).all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category.params)

    end

    private

    def category_params
        params.require(:category).permit(
            :name
        )
    end
end