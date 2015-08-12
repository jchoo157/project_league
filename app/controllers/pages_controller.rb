class PagesController < ApplicationController
  def home
  end


  def stats
    @stats = JSON.parse(RestClient.get"https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/#{params[:summoner][:name]}?api_key=45ff6a4c-f994-420d-a018-189db4cb494e")
  end

  def id
    @id = stats[params[:summoner][:name]]['id']
  end

  def masteries
    @masteries = JSON.parse(RestClient.get"https://na.api.pvp.net/api/lol/na/v1.4/summoner/#{id}/masteries?api_key=45ff6a4c-f994-420d-a018-189db4cb494e")
  end

  def match_history
    @match_history =  JSON.parse(RestClient.get"https://na.api.pvp.net/api/lol/na/v1.3/game/by-summoner/#{id}/recent?api_key=45ff6a4c-f994-420d-a018-189db4cb494e")
  end

  def champion_id
    @champion_id = match_history['games'][0]['championId']
  end

  def champ_dir
    @champ_dir = JSON.parse(RestClient.get"https://global.api.pvp.net/api/lol/static-data/na/v1.2/champion/#{champion_id}?api_key=45ff6a4c-f994-420d-a018-189db4cb494e")
  end

  def game_stats
    @game_stats = match_history['games'][0]['stats']
  end

  def champ_icon
    @champ_icon = champ_dir['key']
  end

  def summoner_stats
    @masteries_id = masteries[id.to_s]['summonerId']
    @champ_image_icon = champ_icon
    @level = game_stats['level']
    @name = @stats.keys.first
    @game_type = match_history['games'][0]['subType']

    #@match_info = @match_history['matches']
    #@participants =@match_info[0]['participants'][0]
    #@game_stats = @participants['stats']

  end

  def help
  end

  def about
  end
end
