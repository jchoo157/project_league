module MatchesHelper

  def list_of_champions
    @list ||= JSON.parse(ChampionApi.new.get_list_of_champions, symbolize_names: true)
  end

  def get_champion_name(id:)
    list_of_champions[:data].select { |_, info| info[:id] == id }.first.first.to_s
  end

end
