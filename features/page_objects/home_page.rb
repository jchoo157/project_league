class HomePage
  include PageObject

  URL = 'http://localhost:3000/'

  text_field(:username, id: 'summoner_name')

  button(:search_match_history, type: 'submit')

  def open_home_page
    @browser.goto URL
  end

  def search_for_summoner(input)
    self.username = input
    search_match_history
  end



end