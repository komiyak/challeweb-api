class UsersController < ApplicationController
  def index
    users = User.order(id: :desc).page(params[:page]).per(params[:per_page])

    render json: UserSerializer.new(
      users,
      { meta: get_paging_structure(users) }
    )
  end
end
