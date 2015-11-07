class User
  attr_reader :username, :api, :match_info

  def initialize(properties)
    @username = properties[:username]
    @api = SummonerApi.new
    @match_info = MatchInfo.new(summoner_id: id)
    # @id = get_id(api: SummonerApi.new)
    # @match_history = get_match_histories(api: MatchHistoryApi.new)
  end

  def id
    @id ||= get_id
  end

  def match_history
    match_info.get_match_history
  end

  private

  def parse(data)
    JSON.parse(data, symbolize_names: true)
  end
  # def get_all_match_ids(api:)
  #   info = parse api.get_match_list(for_summoner_id: id)
  #   data = info[:matches]
  #   data.map { |match| match[:matchId] }
  # end
  #
  # def get_match_histories(api:, count: 5)
  #   ids = get_all_match_ids(api: MatchListApi.new)
  #   data = []
  #   ids[0...count].each { |id| data << parse(api.get_match_history(for_id: id)) }
  #   data
  # end
  #
  def get_id
    info = parse api.get_summoner_info(by_name: username)
    info[username.to_sym][:id]
  end

end

