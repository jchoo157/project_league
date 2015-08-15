class LeagueApi
  attr_reader :client, :api_key

  def initialize
    base_url = 'https://na.api.pvp.net/api/lol/'
    api_file = YAML.load_file('/Users/user/Projects/project_league/config/api.yml')
    @api_key = api_file['api_key']
    @client = RestClient::Resource.new base_url
  end

  def get_summoner_info(name)
    JSON.parse(client["na/v1.4/summoner/by-name/#{name}?api_key=#{api_key}"].get)
  end

  def get_match_history(id)
    JSON.parse(client["na/v1.3/game/by-summoner/#{id}/recent?api_key=#{api_key}"].get)
  end

  def get_masteries(id)
    JSON.parse(client["na/v1.4/summoner/#{id}/masteries?api_key=#{api_key}"].get)
  end

  def get_champ_dir(champion_id)
    JSON.parse(client["static-data/na/v1.2/champion/#{champion_id}?api_key=#{api_key}"].get)
  end
end

