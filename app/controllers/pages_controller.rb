class PagesController < ApplicationController

  def home
  end

  def summoner_stats
    @user = User.new(params[:summoner][:name])
    @match_history = @user.match_history
    @id = @user.id
    @champion_id = @user.champion_id
    @game_stats = @user.game_stats
    @champ_name = @user.champ_name


    # @masteries_id = masteries[id.to_s]['summonerId']
    # @champ_image_icon = champ_icon
    # @level = game_stats['level']
    # @name = @stats.keys.first
    # @game_type = match_history['games'][0]['subType']


    #@match_info = @match_history['matches']
    #@participants =@match_info[0]['participants'][0]
    #@game_stats = @participants['stats']

  end

  def help
  end

  def about
  end
end
