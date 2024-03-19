class DeviceController < ApplicationController
  def index
    @device = Device.page(params[:page]).per(10)
  end
  def show
    @device = Device.find(params[:id])
  end
end
