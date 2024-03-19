class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(:products)
   end

  def show
    @category = Category.find(params[:id])
    @products = @category.products
  end
end
