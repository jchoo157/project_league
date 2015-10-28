class ChampionInfoApi
  attr_reader :base_url, :client

  def initialize
    @base_url = 'http://ddragon.leagueoflegends.com/cdn/5.21.1/data/en_US/champion.json'
    @client = RestClient::Resource.new(base_url)
  end

  def get_champion_info(champion_name)
    client[champion_name].get
  end

  def get_all_champion_info
    client.get
  end
end