class MatchHistoryApi < BaseApi

  def get_match_history(for_id:)
    client[for_id].get
  end

  def default_url
    'api/lol/na/v2.2/match/'
  end
end