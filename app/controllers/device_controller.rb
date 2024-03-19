class DeviceController < ApplicationController

  def index
    @results = Device.all
  end

end
