Given /^I am looking at my match history$/ do
  @match_history_page = MatchHistoryPage.new(@browser)
  @match_history_page.open_match_history_page
end

Then /^I should see my team and the enemy team$/ do
  @match_history_page.wait_until do
  expect(@match_history_page.team1? && @match_history_page.team2).to be true
  end
end