class DeviceController < ApplicationController
  before_action :set_categories, only: [:index]

  def index
    @results = Device.all

    if params[:search].present?
      search_term = "%#{params[:search]}%"
      @results = @results.where("brand LIKE ? OR model LIKE ?", search_term, search_term)
    end

    if params[:category].present?
      @results = @results.joins(:category).where("categories.id = ?", params[:category])
    end

    @results = @results.page(params[:page]).per(10)
  end


  def show
    @device = Device.find(params[:id])
  end

  private

  def set_categories
    @category_options = category_options
  end

  def category_options
    categories = [["All Categories", ""]]
    Category.all.each do |category|
      options = [category.name, category.id]
      category.subcategories.each do |subcategory|
        options << ["#{'-' * subcategory.depth} #{subcategory.name}", subcategory.id]
      end
      categories << options
    end
    categories
  end
end
