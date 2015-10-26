Given /^I am looking at '(.*)' match history$/ do |summoner|
  steps %{
    Given I am on the home page
    When I look up the summoner '#{summoner}'
    Then I should see the summoners match history page
  }
end

When /^I look up the summoner '(.*)'$/ do |summoner|
  @page.search_for_summoner(summoner)
  @match_history_page = MatchHistoryPage.new(@browser)
end



Then /^I should see the summoners match history page$/ do
  @match_history_page.wait_until do
    expect(@match_history_page.title?).to be true
  end
end

Then /^I should see a table with the following data:$/ do |table|
  expect(@match_history_page.kills?).to be true
  expect(@match_history_page.deaths?).to be true
  expect(@match_history_page.assists?).to be true
  expect(@match_history_page.gold?).to be true
  expect(@match_history_page.minion_kills?).to be true
end
