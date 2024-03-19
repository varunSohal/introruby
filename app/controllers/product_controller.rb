class ProductController < ApplicationController
  def index
    if params[:search]
      @products = Product.where("name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
    else
      @products = Product.page(params[:page]).per(10)
    end
  end

  def show
    @product = Product.find(params[:id])
    @category = @product.category
  end
end
