class User
  attr_reader :api, :name, :id, :match_history, :champion_id, :game_stats, :champ_name

  def initialize(username)
    @api = LeagueApi.new
    @name = username
    response_summoner_info = api.get_summoner_info(name)
    @id = response_summoner_info[name]['id']
    response_match_history = api.get_match_history(id)
    @champion_id = response_match_history['games'][0]['championId']
    @game_stats = response_match_history['games'][0]['stats']
    response_champ_dir = api.get_champ_dir(champion_id)
    @champ_name = response_champ_dir['key']

  end

  def summoner_info
    @summoner_info ||= api.get_summoner_info name
  end

  def match_history
    @match_history ||= api.get_match_history id
  end

  def masteries
    @masteries ||= api.get_masteries id
  end

  def champ_dir
    @champ_dir ||= api.get_champ_dir champion_id
  end


end