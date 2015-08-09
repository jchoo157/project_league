class PagesController < ApplicationController
  def home
  end

  def id
    @stats = JSON.parse(RestClient.get"https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/#{params[:summoner][:name]}?api_key=45ff6a4c-f994-420d-a018-189db4cb494e")
    @id = @stats[params[:summoner][:name]]['id']
  end

  def stats
    @stats = JSON.parse(RestClient.get"https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/#{params[:summoner][:name]}?api_key=45ff6a4c-f994-420d-a018-189db4cb494e")
  end

  def masteries
    id
    @masteries = JSON.parse(RestClient.get"https://na.api.pvp.net/api/lol/na/v1.4/summoner/#{@id}/masteries?api_key=45ff6a4c-f994-420d-a018-189db4cb494e")
  end

  def match_history
    id
    @match_history = JSON.parse(RestClient.get"https://na.api.pvp.net/api/lol/na/v2.2/matchhistory/#{@id}?api_key=45ff6a4c-f994-420d-a018-189db4cb494e")
  end

  def champ_dir
    @champ_dir = JSON.parse(RestClient.get"https://global.api.pvp.net/api/lol/static-data/na/v1.2/champion?api_key=45ff6a4c-f994-420d-a018-189db4cb494e")
    @champ_image = @champ_dir['data']
  end

  def summoner_stats
    masteries
    match_history
    @name = @stats.keys.first
    @match_info = @match_history['matches']
    @participants =@match_info[0]['participants'][0]
    @game_stats = @participants['stats']

  end

  def help
  end

  def about
  end
end
