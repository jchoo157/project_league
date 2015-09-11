class User
  attr_reader :username, :id, :champion_id, :match_history, :champion

  def initialize(username:)
    @username = username
    @id = get_id(api: SummonerApi.new)
    @match_history = get_match_history(api: MatchHistoryApi.new)
  end

  private

  def get_match_history(api:)
    data = parse api.get_match_history(for_id: id)
    @match_history = data[:matches]
  end

  def get_id(api:)
    info = parse api.get_summoner_info(by_name: username)
    info[username.to_sym][:id]
  end

  def parse(data)
    JSON.parse(data, symbolize_names: true)
  end

end