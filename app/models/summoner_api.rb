class SummonerApi < BaseApi

  def get_summoner_info(by_name:)
    client[by_name].get
  end

  def default_url
    'api/lol/na/v1.4/summoner/by-name/'
  end

end