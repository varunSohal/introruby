class DeviceController < ApplicationController
  def index
    @device = Device.page(params[:page]).per(10)
  end

end
