module MatchesHelper

  attr_reader :level

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

  def time(seconds)
    minutes = 0
    while seconds >= 60
      seconds -= 60
      minutes += 1
    end
    if seconds < 10
      seconds_s = '0' + seconds.to_s
    else
      seconds_s = seconds.to_s
    end
    return minutes.to_s + ':' + seconds_s
  end

  def gold(amount)
    k = 0
    while amount >= 1000
      amount -= 1000
      k += 1
    end
    d = 0
    while amount >= 100
      amount -= 100
      d += 1
    end
    return k.to_s + '.' + d.to_s + 'k'
  end

  def game_type(game_mode)
    if game_mode == 'MATCHED_GAME'
      'Ranked Game'
    else
      game_mode
    end
  end

  def team_id(id)
    if id == 100
    else
    end
  end

  def result(boolean)
    if boolean == 'true'
      'Win'
    else
      'Loss'
    end
  end
end




