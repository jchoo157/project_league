class User
  attr_reader :username, :id, :match_history

  def initialize(username:)
    @username = username
    @id = get_id(api: SummonerApi.new)
    @match_history = get_match_histories(api: MatchHistoryApi.new)
  end

  private

  def get_all_match_ids(api:)
    info = parse api.get_match_list(for_summoner_id: id)
    data = info[:matches]
    data.map { |match| match[:matchId] }
  end

  def get_match_histories(api:, count: 3)
    ids = get_all_match_ids(api: MatchListApi.new)
    data = []
    ids[0...count].each { |id| data << parse(api.get_match_history(for_id: id)) }
    data
  end

  def get_id(api:)
    info = parse api.get_summoner_info(by_name: username)
    info[username.to_sym][:id]
  end

  def parse(data)
    JSON.parse(data, symbolize_names: true)
  end

end

