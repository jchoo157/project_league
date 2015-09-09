class MatchesController < ApplicationController
  respond_to :html, :js

  def new
  end

  def show
   @user = User.new(username: user_params[:name])
      @user.match_history.map do |match|
      @game_type = match[:matchType]
      @game_time = match[:matchDuration]
      match[:participants].each do |peeps|
        @champ_id = peeps[:championId]
        @stats = peeps[:stats]
      end
    end
  end

  private

  def user_params
    params.require(:summoner).permit(:name)
  end
end
