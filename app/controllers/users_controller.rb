class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
    # render json: {
    #         message: 'Hello There!'
    #     }, status: 200
  end
end
