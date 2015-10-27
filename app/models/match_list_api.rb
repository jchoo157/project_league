class MatchListApi < BaseApi

  def get_match_list(for_summoner_id:)
    client[for_summoner_id].get
  end

  def default_url
    'api/lol/na/v2.2/matchlist/by-summoner/'
  end
end