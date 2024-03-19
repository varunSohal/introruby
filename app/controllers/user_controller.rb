class UserController < ApplicationController
  def index
    if params[:search]
      @users = User.where("name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
    else
      @users = User.page(params[:page]).per(10)
    end
  end

  def show
    @user = User.find(params[:id])
    @product = @user.products.first
  end
end
