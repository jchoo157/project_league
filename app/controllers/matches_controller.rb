class MatchesController < ApplicationController
  respond_to :html, :js

  def new
  end

  def show
   @user = User.new(username: user_params[:name])
  end

  private

  def user_params
    params.require(:summoner).permit(:name)
  end
end
