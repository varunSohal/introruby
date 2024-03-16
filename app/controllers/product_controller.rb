class ProductController < ApplicationController

  def index
    @products = Product.page(params[:page]).per(10)
  end
  def about

  end
end
