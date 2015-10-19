When /^I only fill in the (\w+) field$/ do |field|
  if field == 'email'
    @login_page.email = 'what@what.what'
  else
    @login_page.password = 'whatwhat'
  end
end

When /^I enter my email and password$/ do
  @login_page.email = 'what@what.what'
  @login_page.password = 'whatwhat'
  @login_page.login
end

Then /^I should be signed in$/ do
  expect(@login_page.sign_out?).to be true
end

Then /^I should not be able to log in$/ do
  expect(@login_page.login?).to be true
end

