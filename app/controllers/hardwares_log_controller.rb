class HardwaresLogController < ApplicationController
  def index
    @hardwares_log = Hardwares_log.all
  end
end
