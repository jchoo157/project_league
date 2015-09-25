module MatchesHelper

  attr_reader :level

  def list_of_champions
    @list ||= JSON.parse(ChampionApi.new.get_list_of_champions, symbolize_names: true)
  end

  def get_champion_name(id:)
    list_of_champions[:data].select { |_, info| info[:id] == id }.first.first.to_s
  end

  def item_img_url
    'http://ddragon.leagueoflegends.com/cdn/5.2.1/img/item/'
  end

  def champ_icon_url
    'http://ddragon.leagueoflegends.com/cdn/5.2.1/img/champion/'
  end

  def player_stats
  player_stats = participant[:stats]
    player_stats
  end

end



