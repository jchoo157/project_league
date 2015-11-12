class MatchInfo
  attr_reader :match_list_api, :match_history_api, :summoner_id, :match_history

  def initialize(properties)
    @summoner_id = properties[:summoner_id]
    @match_list_api = MatchListApi.new
    @match_history_api = MatchHistoryApi.new
  end

  def matches
    @matches ||= parse(match_list_api.get_match_list(for_summoner_id: summoner_id))[:matches]
  end

  def match_details(id)
    parse(match_history_api.get_match_history(for_id: id))
  end

  def get_match_history(count = 5)
    @match_history ||= matches[0...count].map do |match|
      match.merge(match_details(match[:matchId]))
    end
  end

  def parse(data)
    JSON.parse(data, symbolize_names: true)
  end
end