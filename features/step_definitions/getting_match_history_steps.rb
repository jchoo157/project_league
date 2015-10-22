When /^I type in a summoner name$/ do
  @home_page.search_for_summoner('mrapplebeans')
  @match_history_page = MatchHistoryPage.new(@browser)
end

Then /^I should see the summoners match history page$/ do
  @match_history_page.wait_until do
    expect(@match_history_page.champ_icon?).to be true
  end
end
