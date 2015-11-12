module MatchesHelper
  def get_champion_name(id:)
    list_of_champions[:data].select { |_, info| info[:id] == id }.first.first.to_s
  end

  def item_img_url
    'http://ddragon.leagueoflegends.com/cdn/5.20.1/img/item/'
  end

  def champ_icon_url
    'http://ddragon.leagueoflegends.com/cdn/5.20.1/img/champion/'
  end

  def summoner_icon_url
    'http://ddragon.leagueoflegends.com/cdn/5.20.1/img/spell/'
  end

  def game_type(match_queue)
    match_queue.gsub('_', ' ')
  end

  def result(boolean)
    if boolean == 'true'
      'Win'
    else
      'Loss'
    end
  end

  def teams(participants)
    participants.partition do |participant|
      participant[:teamId] == 100
    end
  end
end




