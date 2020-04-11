class HomeController < ApplicationController
  def index
    render json: {
      user: {
        name: "taro",
        prefecture: "okinawa",
      }
    }.to_json
  end
end
