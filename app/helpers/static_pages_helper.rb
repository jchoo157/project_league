module StaticPagesHelper
  def each_champion
    JSON.parse(ChampionApi.new.get_list_of_champions, symbolize_names: true)
  end

  def champ_icon_url
    'http://ddragon.leagueoflegends.com/cdn/5.20.1/img/champion/'
  end
end
