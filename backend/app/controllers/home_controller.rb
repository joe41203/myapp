class HomeController < ApplicationController
  def index
    render json: {
      users: [
        {
          name: "taro",
          prefecture: "okinawa",
        },
        {
          name: "jiro",
          prefecture: "tokyo",
        },
        {
          name: "saburo",
          prefecture: "fukuoka",
        }
      ]
    }.to_json
  end
end
