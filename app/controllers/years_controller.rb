class YearsController < ApplicationController
  def index
    render json: YearSerializer.new(Year.order(:order_number))
  end
end
