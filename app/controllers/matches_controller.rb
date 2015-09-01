class MatchesController < ApplicationController
  respond_to :html, :js

  def new
  end

  def show
    user_params[:name]
    raise
  end

  private

  def user_params
    params.require(:summoner).permit(:name)
  end
end
