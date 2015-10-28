module StaticPagesHelper


  def champ_icon_url
    'http://ddragon.leagueoflegends.com/cdn/5.20.1/img/champion/'
  end

  def champ_picture_url
    'http://ddragon.leagueoflegends.com/cdn/img/champion/loading/'
  end

  def champion_info_url
    'http://ddragon.leagueoflegends.com/cdn/5.21.1/data/en_US/champion.json'
  end

  def all_champion_data
    JSON.parse(ChampionInfoApi.new.get_all_champion_info, symbolize_names: true)
  end

  def get_champion_data
    all_champion_data[:data][:"#{params[:champion]}"]
  end
end
