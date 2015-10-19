class HomePage
  include PageObject

  URL = 'http://localhost:3000/'

  text_field(:username, id: 'summoner_name')

  link(:click, href: '/match/new')
  button(:search_history, type: 'submit')

  def open_home_page
    @browser.goto URL
  end

  def summoner(input)
    self.username = input
    search_history
  end

  def wait_until(timeout = 30, message = nil, &block)

  end
end