class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def ok
    render json: {user: "lol"}
  end
end
