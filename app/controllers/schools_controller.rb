class SchoolsController < ApplicationController
  def index
    render json: SchoolSerializer.new(School.order(:order_number))
  end
end
