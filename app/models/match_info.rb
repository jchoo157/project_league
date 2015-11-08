class MatchInfo
  attr_reader :match_list_api, :match_history_api, :summoner_id

  def initialize(properties)
    @summoner_id = properties[:summoner_id]
    @match_list_api = MatchListApi.new
    @match_history_api = MatchHistoryApi.new
  end

  def match_ids
    matches = get_match_list[:matches]

    matches.map { |match| match[:matchId] }
  end

  def get_match_history(count = 5)
    match_ids[0...count].map do |id|
      parse(match_history_api.get_match_history(for_id: id))
    end
  end

  def get_match_list
    parse match_list_api.get_match_list(for_summoner_id: summoner_id)
  end

  def parse(data)
    JSON.parse(data, symbolize_names: true)
  end
end