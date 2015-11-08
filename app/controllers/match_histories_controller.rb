class MatchHistoriesController < ApplicationController
  respond_to :html, :js

  def new
  end

  # def create
  #   @user = User.new(user_params)
  #   redirect_to match_histories_url(@user)
  # end

  def show
    @user = User.new(user_params)
  end

  private

  def user_params
    params.require(:summoner).permit(:username)
  end
end
