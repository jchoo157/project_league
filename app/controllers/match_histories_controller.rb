class MatchHistoriesController < ApplicationController
  respond_to :html, :js

  def new
  end

  def show
    @user = User.new(user_params)
  end

  private

  def user_params
    params.require(:summoner).permit(:username)
  end
end
