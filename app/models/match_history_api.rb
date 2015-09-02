class MatchHistoryApi < BaseApi

  def get_match_history(for_id:)
    client[for_id].get
  end

  def default_url
    'v2.2/matchhistory/'
  end
end