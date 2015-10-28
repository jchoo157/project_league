module ApplicationHelper
  def list_of_champions
    @list ||= JSON.parse(ChampionApi.new.get_list_of_champions, symbolize_names: true)
  end
end
