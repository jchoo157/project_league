class User
  attr_reader :username, :api, :match_info

  def initialize(properties)
    @username = properties[:username]
    @api = SummonerApi.new
    @match_info = MatchInfo.new(summoner_id: id)
  end

  def id
    @id ||= get_id
  end

  def match_history
    @match_history ||= match_info.get_match_history
  end

  private

  def parse(data)
    JSON.parse(data, symbolize_names: true)
  end

  def get_id
    info = parse api.get_summoner_info(by_name: username)
    info[username.to_sym][:id]
  end

end

