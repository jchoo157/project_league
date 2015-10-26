When /^I only fill in the (\w+) field$/ do |field|
  if field == 'email'
    @page.email = 'what@what.what'
  else
    @page.password = 'whatwhat'
  end
end

When /^I log in as '(.*)'$/ do |email|
  @page.login_with(email, 'whatwhat')
end

Then /^I should not be able to log in$/ do
  expect(@page.login?).to be true
end

