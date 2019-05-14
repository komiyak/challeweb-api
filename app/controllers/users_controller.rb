class UsersController < ApplicationController
  def index
    render json: UserSerializer.new(User.order(id: :desc))
  end
end
