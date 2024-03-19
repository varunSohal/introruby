class DogsController < ApplicationController
  def index
    if params[:search]
      @dogs = Dog.where("name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
    else
      @dogs = Dog.page(params[:page]).per(10)
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end
end
