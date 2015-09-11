class ChampionApi < BaseApi

  def get_champion(champ_id:)
    client[champ_id].get
  end

  def get_list_of_champions
    client.get
  end

  def default_url
    'api/lol/static-data/na/v1.2/champion/'
  end

end