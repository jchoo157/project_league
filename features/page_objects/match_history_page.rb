class MatchHistoryPage < EveryPage
  include PageObject

  URL = 'http://localhost:3000/match?utf8=%E2%9C%93&summoner%5Bname%5D=mrapplebeans&commit=Match+History'

  image(:champ_icon, src: %r{/http://ddragon.leagueoflegends.com/cdn/5.20.1/img/champion/})
  image(:item_icon, src: %r{http://ddragon.leagueoflegends.com/cdn/5.20.1/img/item/})
  image(:no_item_icon, src: %r{http://www.probuilds.net/resources/img/items/28/})

  table(:team1, id: 'team1')
  table(:team2, id: 'team2')

  def open_match_history_page
    @browser.goto URL
  end

end