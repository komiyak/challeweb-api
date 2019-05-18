class UsersController < ApplicationController
  # noinspection RailsChecklist01
  def index
    users = if params[:year_id]
              User.joins(:user_years).where(user_years: { year_id: params[:year_id] }).order(id: :desc)
            else
              User.order(id: :desc)
            end
    users = users.page(params[:page]).per(params[:per_page])

    render json: UserSerializer.new(
      users,
      { meta: get_paging_structure(users) }
    )
  end
end
