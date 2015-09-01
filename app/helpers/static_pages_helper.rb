module StaticPagesHelper
  def summoner_id(summoner_name)
    stats = JSON.parse(RestClient.get"https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/#{summoner_name}?api_key=45ff6a4c-f994-420d-a018-189db4cb494e")
    stats[summoner_name]['id']
  end


end
